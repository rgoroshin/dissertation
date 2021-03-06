clc; 
clear all; 
close all; 

gsc = [28.3000   47.1500   61.1200; %0.5
       19.8725   47.2300   65.9400; %1.0
       34.8375   48.1900   70.9600; %1.5 
       30.2150   48.4200   75.8100; %2.0
       26.7975   50.0200   76.9300; %2.5 
       27.3450   51.3400   73.4700]; %3.0  

% sf =  [34.9250   53.1800   69.5100;
%        21.8800   50.8600   68.4500;
%        35.2650   47.1000   58.4200;
%        30.0325   48.8300   77.2200;
%        35.2750   47.5100   70.9000;
%        31.3400   47.0800   73.2200]; 

sf =  [35.2750   47.5100   70.9000; %2.0_1.0 
       34.9250   53.1800   69.5100; %0.0_2.0 
       35.2650   47.1000   58.4200; %1.0_2.0 
       31.3400   47.0800   73.2200; %2.0_2.0
       21.8800   50.8600   68.4500; %0.5_3.0  
       30.0325   48.8300   77.2200]; %1.0_3.0     
   
% gsc = sortrows(gsc,3); 
% 
% sf = sortrows(sf,3); 

plot(gsc, '.-'); 
hold on; 

rt = mean([75.71, 80.07, 81.96, 71.53, 71.24, 70.26, 71.01, 68.12, 75.12, 81.75]);
plot([rt rt rt rt rt rt], 'r--', 'LineWidth', 2);  
plot(sf, 'o-'); 

xlabel('model number (sorted by reg after pooling)') 
set(gca,'xtick',0:6)

AX=legend('GSC train %Error', 'GSC val %Error' , 'GSC test %Error', 'Ave Rand Init');
LEG = findobj(AX,'type','text');

set(LEG,'FontSize',8)