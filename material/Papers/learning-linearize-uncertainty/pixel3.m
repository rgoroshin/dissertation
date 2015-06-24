clc; 
clear all; 
close all; 

wt = 30; 
ht = 3; 
I = zeros(ht,wt);  
x = -1+1/wt:2/wt:1-1/wt; 
var1 = 0.25; 

dt = -1:0.01:1;
seq = zeros(length(dt),3); 

i = 1; 
for dt = -10:0.01:10
    f = exp((-(x-dt).^2)/var1); 
    seq(i,1) = sum(f(1:wt/3));
    seq(i,2) = sum(f(wt/3+1:wt*2/3)); 
    seq(i,3) = sum(f(wt*2/3+1:end)); 
    i = i + 1;
end
plot3(seq(:,1),seq(:,2),seq(:,3),'LineWidth',2);
title('Three-Pixel Video') 
hold on; 

axis tight
grid on; 
set(gca,'XTickLabel','')
set(gca,'YTickLabel','')
set(gca,'ZTickLabel','')

xlabel('x-Intensity'); 
ylabel('y-Intensity'); 
zlabel('z-Intensity'); 

arrow([0,0,0],[2.5,0,0]); 
arrow([7.2,5.2,0.2],[6.2,6.2,0.4]); 
arrow([0.42,6.42,6.1],[0.2,5.0,7.37]); 
arrow([0.0,0.06,3.12],[0.0,0.01,1.27]); 