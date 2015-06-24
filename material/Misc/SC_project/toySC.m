clc; 
clear all; 
close all; 

npoints = 200;
nbasis = 2; 

x = [-1:1/npoints:1; -1:1/npoints:1]';
x(end,:)=[]; 

% x1 = 0.2*rand(npoints, 2)+0.5*ones(npoints,2); 
% x2 = 0.2*rand(npoints, 2)-0.5*ones(npoints,2);


x = x + 0.1*(rand(2*npoints,2) - 0.5* ones(2*npoints,2)); 

figure(1); 
% plot(x1(:,1),x1(:,2),'.'); 
% hold on;
plot(x(:,1),x(:,2),'.'); 
axis([-1 1 -1 1]); 
grid on; 
hold on; 


w = rand(2, nbasis); 
w = w - 0.5 * ones(size(w));

quiver(zeros(1,nbasis), zeros(1,nbasis), w(1,:), w(2,:), 'LineWidth', 3); 