clc; 
clear all; 
close all;

addpath toolbox_general; 
addpath toolbox_graph; 
addpath toolbox_signal; 

%% The Manifold
n = 2000;
x = rand(2,n);
X  = zeros(3,n);

%Swiss Roll
v = 2*pi/2 * (.1 + 2*x(1,:));
X(2,:) = 1 * x(2,:);
X(1,:) = - cos( v ) .* v;
X(3,:) = sin( v ) .* v;

%Parabaloid 
% v = sqrt(x(1,:).^2+x(2,:).^2); 
% X(1,:) = x(1,:); 
% X(2,:) = x(2,:); 
% X(3,:) = x(1,:).^2 + x(2,:).^2; 

%Uniformly Sampled Plane (debug) 
% [x y] = meshgrid(1:sqrt(n), 1:sqrt(n)); 
% X(1,:) = x(:); 
% X(2,:) = y(:);
% v = X(1,:); 


%% Create the dataset for DrLIM 
%the points and colors 
data = X';
data = (data - repmat(min(data), [size(data,1), 1]))./(repmat(range(data),[size(data,1), 1])); 
data = uint8(256*data); 
%Point colors 
v = 50*((v-min(v))/range(v)); 
labels = uint8(v'); 

X = double(data'); 

%Display Parameters
ms = 20;
lw = 1.0;
v1 = -15; v2 = 20;

%Plot
% clf;
% % scatter3(X(1,:),X(2,:),X(3,:),ms,v, 'filled');
% colormap jet(256);
% view(v1,v2); axis('equal'); axis('off');

%Compute Euclidean Distances 
D1 = repmat(sum(X.^2,1),n,1);
D1 = sqrt(D1 + D1' - 2*(X'*X));

% Nearst Neighbors 
k = 5;
[DNN,NN] = sort(D1);
NN = NN(2:k+1,:);
DNN = DNN(2:k+1,:);

%Similar pairs 
B = repmat(1:n, [k 1]);
pairs = [B(:), NN(:)]; 
%Change to zero index for lush 
pairs = pairs - 1; 

% pairs(:,2) = [randperm(5000) randperm(5000) randperm(5000) randperm(5000) randperm(5000)]';

dlmwrite('data.txt', data, 'delimiter', ' ');
dlmwrite('labels.txt', labels, 'delimiter', ' ');
dlmwrite('pairs.txt', pairs, 'delimiter', ' ');
%% 

A = sparse(B(:), NN(:), ones(k*n,1));

%Metric on the graph 
W = sparse(B(:), NN(:), DNN(:));

options.lw = lw;
options.ps = 0.01;
options.col = 'r-'; 
clf; hold on;
scatter3(data(:,1),data(:,2),data(:,3),ms,v, 'filled');
% plot_graph(A, X, options);
colormap jet(256);
view(v1,v2); axis('equal'); %axis('off');
zoom(.8);
set(gcf,'Color',[0,0,0])

% %Compute geodesic
% D = full(W);
% D = (D+D')/2;
% %Initialize distance matrix
% D(D==0) = Inf;
% %Add connection between self 
% D = D - diag(diag(D));
% 
% farthestPreviousHop = 1:n;
% farthestNextHop = 1:n; 
% 
% %% Find a good starting and end point 
% % Start point 
% s = [0; 12; 0]; 
% ds = X - repmat(s,[1,n]); 
% [~ , src] = min(diag(ds'*ds)); 
% %End point
% d = [0; 12; 8]; 
% dd = X - repmat(d,[1,n]);
% [~ , dst] = min(diag(dd'*dd)); 
% %%
% 
% [path, totalCost, farthestPreviousHop, farthestNextHop] =...
%     dijkstra(n, D, src, dst, farthestPreviousHop, farthestNextHop);
% 
%Plot
% clf;
% scatter3(X(1,:),X(2,:),X(3,:),ms,v, 'filled');
% colormap hot(256);
% view(v1,v2); axis('equal'); axis('off');
% set(gcf,'Color',[1,1,1])
% hold on; 

% seg(:,1) = X(:,src); 
% seg(:,2) = X(:,dst); 

% plot3(X(1,path),X(2,path),X(3,path),'b','MarkerSize',5 , 'LineWidth', 5)

% plot3(seg(1,:),seg(2,:),seg(3,:),'g','MarkerSize',5 , 'LineWidth', 5)

plot_graph(A, X, options);

axis on;