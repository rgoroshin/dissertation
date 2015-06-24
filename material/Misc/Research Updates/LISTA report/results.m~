% code regression 

code_error0 = [0.0027025571639836, 0.0018699511797354, 0.0016041349561885, 0.0014422563895956, 0.0013297723434865];
code_error1 = [0.0019155458468944, 0.0011755478936806, 0.0009862085826322, 0.00088921646222472, 0.00082937551252544]; 
code_error5 = [0.0009496602522023, 0.00057794179132208, 0.0005057609951403, 0.00046070454861969, 0.00042823891878128];

figure(1); 
subplot(2,1,1) 
hold on; 
plot(code_error0, 'r.-'); 
plot(code_error1, 'g.-'); 
plot(code_error5, 'b.-'); 
title('Code Prediction Error') 
legend('LISTA 0-loop (ReLU)', 'LISTA 1-loop', 'LISTA 5-loop');
xlabel('Epoch') 
ylabel('MSE Error') 

code_loss0=[0.063410609040777,0.037474662838578,0.034715618917942, 0.03368178407982,0.033246323463172];
code_loss1=[0.044258350366671,0.033330249536037,0.033363387078792,0.033653425467014,0.033921913549155];
code_loss5=[0.035485753018819,0.032360345237702,0.031390308413953,0.03061008093223,0.03003955071196];
fista_loss = [0.024768773522675, 0.024768773522675, 0.024768773522675, 0.024768773522675, 0.024768773522675]; 
 
subplot(2,1,2) 
hold on; 
plot(code_loss0, 'r.-'); 
plot(code_loss1, 'g.-'); 
plot(code_loss5, 'b.-'); 
plot(fista_loss, 'r--'); 
legend('LISTA 0-loop (ReLU)', 'LISTA 1-loop', 'LISTA 5-loop', 'FISTA Loss');
title('Loss Corresponding to Predicted Codes') 
xlabel('Epoch') 
ylabel('Loss') 

loss0 = [0.030264448780306,0.028234619421065,0.028048597552329,0.028009015676528,0.028003538450599];	
loss1 = [0.02829521877557,0.027310243961215,0.027113472636491,0.026984095314145,0.026884404773414];	
loss5 = [0.026695613428503,0.025820545143783,0.025500343058556,0.025345708229691,0.025275252195746];	

figure(2); hold on; 
plot(loss0, 'r.-'); 
plot(loss1, 'g.-'); 
plot(loss5, 'b.-'); 
plot(fista_loss, 'r--'); 
legend('LISTA 0-loop (ReLU)', 'LISTA 1-loop', 'LISTA 5-loop', 'FISTA Loss');
title('Training LISTA to Minimize Loss') 
xlabel('Epoch') 
ylabel('Loss') 

%w11=1; w21=1; w12=1; w22=-1; x1=2;x2=1; F = (z1*w11+z2*w12 -x1)^2 + (z1*w21+z2*w22 -x2)^2; hold on; imagesc(F); axis xy; contour(F,[0,0],'r*')