clc; 
clear all; 
close all; 

syms aa bb cc

mengerCurv = sqrt((aa+bb+cc)*(-aa+bb+cc)*(aa-bb+cc)*(aa+bb-cc))/(aa*bb*cc); 

f_curv = matlabFunction(mengerCurv); 

f_da = matlabFunction(simplify(diff(mengerCurv,aa))); 
f_db = matlabFunction(simplify(diff(mengerCurv,bb))); 
f_dc = matlabFunction(simplify(diff(mengerCurv,cc))); 

%the curve 
t = 0:0.01:0.5;
a = 2;
b = 10; 
xc = (a*t.*cos(b*t))'; 
yc = (a*t.*sin(b*t))';
% xc = a*sin(b*t)'; 
% yc = t'; 

 
xc_original = xc; 
yc_original = yc;

figure(1); 
plot(xc_original,yc_original);
axis manual; 
s = 1.5;
axis([-s s -s s]); 
 hold on; 

 dt = 2e-5; 
% 
 for iter = 1:1000 
    disp(iter); 
    for ii = 2:length(t)-1 
%     disp(ii) 
        
    x = [xc(ii-1:ii+1,:) yc(ii-1:ii+1,:)]; 
    d = pdist2(x,x); 
    a=d(1,2); 
    b=d(2,3); 
    c=d(1,3); 

    curv = f_curv(a,b,c);
    
    da = f_da(a,b,c); 
    db = f_db(a,b,c); 
    dc = f_dc(a,b,c); 
    
    dx1_a = (1/a)*(x(1,:)-x(2,:))*da; 
    dx1_c = (1/c)*(x(1,:)-x(3,:))*dc;
    dx1 = dx1_a + dx1_c; 
    
    dx2_a = (1/a)*(x(2,:)-x(1,:))*da; 
    dx2_b = (1/b)*(x(2,:)-x(3,:))*db;
    dx2 = dx2_a + dx2_b; 
    
    dx3_b = (1/b)*(x(3,:)-x(2,:))*db; 
    dx3_c = (1/c)*(x(3,:)-x(1,:))*dc;
    dx3 = dx3_b + dx3_c; 
    
    %update
    x = x - (dt/(5+curv))*[dx1;dx2;dx3];
    xc(ii-1:ii+1,:) = x(:,1); 
    yc(ii-1:ii+1,:) = x(:,2); 
    
    end
    
%     plot(xc,yc,'r-'); 
    drawnow; 
%     axis([-a a -a a]); 
%    axis([-1.5*a 1.5*a -1.5*a 1.5*a]); 
%     pause(0.01); 
 end 

  plot(xc,yc,'r-'); 
  quiver(xc_original,yc_original,xc-xc_original,yc-yc_original); 


