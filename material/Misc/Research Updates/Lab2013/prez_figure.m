I = zeros(100,100); 
I(40:60,40:60)=1; 
colormap gray; 

Ifs = zeros(100,100,1,25); 

cntr = 1; 
for i = -2:2 
    for j = -2:2 
        
        Ifs(:,:,1,cntr) = circshift(I,[i*15,j*15]);   
        subplot(5,5,cntr); 
        imagesc(Ifs(:,:,1,cntr)); 
        axis off; 
        cntr = cntr + 1;
        
    end
end
colormap gray; 


figure(2); 

cntr = 1; 
nseq = 5; 
nframe = 10; 

for i = 1:nseq
    dx = round(2*(rand-0.5)); 
    dy = round(2*(rand-0.5));
    Is = circshift(I,[dx*15, dy*15]); 
    
    for j = 1:nframe
        dx = 2*round(10*(rand-0.5)); 
        dy = 2*round(10*(rand-0.5)); 
        subplot(nseq,nframe,cntr,'align') 
        Is = circshift(Is, [dx,dy]); 
        imagesc(Is);
        axis off; 
        axis square; 
        cntr = cntr + 1; 
    end 
end 

colormap gray;
