clc; 
clear all; 
close all; 

wt = 3; 
ht = 3; 
I = zeros(wt,ht);  
I(1,:)=1; 


xshift=0.235;  %Since shift is finer than sampling, sub-pixel shifting is required.
xdata=[1 wt];
ydata=[1 ht];
T=maketform('affine',[1 0 0; 0 1 0; xshift yshift 1]);
Is=imtransform(data,T,'bilinear','XData',xdata,'YData',ydata);

imagesc(Is); 