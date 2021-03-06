clc; 
clear all; 
close all; 

% N = 500; 
% X = rand(2, N) - 0.5; 
% 
% 
% X(2,:) = (2*X(1,:)).^3+X(2,:); 

% A = [0.2498    0.9548;
%      0.9588    0.6618];

% A = [0.2028    0.6854;
%      0.8349    0.7192]; 
% 
% A = rand(2,2);  
% %  
% Xt = A*X; 
% c = 0.26; 
% 
% ica = fastica(Xt); 
% plot(c*ica(1,:),c*ica(2,:),'mo'); 
% hold on; 
% % 
% % [V,D] = eigs(Xt*Xt'); 
% % 
% % figure(1); 
% plot(Xt(1,:), Xt(2,:), 'b.');
% axis([-1,1,-1,1]); 
% axis off; 
% 
% figure(2); 
% hold on; 
% axis([-1,1,-1,1]); 
% axis off; 
% plot(Xt(1,:), Xt(2,:), 'r.');
% quiver([0,0],[0,0], V(1,:), V(2,:)); 
% Xr = Xt'*V;  
% plot(Xr(:,1), Xr(:,2), 'mo'); 


% figure(1); 
% hold on; 
% axis([-1,1,-1,1]); 
% axis off; 
% Xr = Xt'*V*sqrt(inv(D))*3.5;  %#ok<MINV>
% plot(Xr(:,1), Xr(:,2), 'mo'); 

% [x y] = meshgrid(-1.5:0.05:1.5, -1.5:0.05:1.5); 
% 
% F = x.^4 + y.^4; 
% H = x.^2 + y.^2 - 1;   
% 
% figure(1); 
% contour(F,50); 
% hold on; 
% contourcmap('bone'); 
% contour(H,[0 0], 'r', 'linewidth',2); 
% 
% axis equal; 
% axis off; 

[x y] = meshgrid(-1.5:0.05:1.5, -1.5:0.05:1.5); 

F = abs(x) + abs(y);    

figure(1); 
contour(F,15, 'linewidth', 2); 
hold on; 
axis xy; 
contourcmap('bone'); 

t = -50:0.05:50;
plot(t, -3*(t-20) + 75, 'r', 'linewidth', 2); 

axis equal; 
axis off; 


