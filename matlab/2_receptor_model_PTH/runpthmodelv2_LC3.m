%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% runpthmodel
% addpath('D:\FEMLAB\femlab-peter\bone models\model - 2')
%
% (1) definition of variables:
%
% P   = x(1);   % PTH concentration
% Ra  = x(2);   % active PTHr
% Ca  = x(3);   % active PTH complex
% Ci  = x(4);   % inactive PTH complex
% Ri  = RT- x(2)-x(3)-x(4);   % inactive PTHr 

% (2) definition of loadcases
% 
%  x0 = [Ra;Ri;Ca;Ci]     []    ... initial value of receptor state
%  t_init                 [s]   ... start of PTH loading
%  t_end                  [s]   ... end PTH loading 
%  time = [t_init t_end]  [s]   ... time intervall
%  tau_on = [1.0*(3600)]; [s]   ... PTH loaidng: on time
%  tau_off= [0.0*(3600)]; [s]   ... PTH loading: off time
%  DPTH = 7.5;            [pM/s]... PTH loading rate 
%
% L1 ... low dosage PTH loading
% L2 ... high dosage PTH loading
% L3 ... 
% L4
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


LC = 1;

if  (LC==1) 
  x0 = [3;16.9;4.0e-4;0.05];
  tau_on = [1.0*(3600)]; % in sec 
  tau_off= [0.0*(3600)]; % in sec 
  t_init = 0;          
  t_end  = (tau_on+tau_off)*4;     
  time = [t_init t_end];
  DPTH = 7.5; 
elseif (LC==2)
  x0 = [1500;4.3;0.05;7.4];
  tau_on = [1.0*(3600)];  
  tau_off= [0.0*(3600)];  
  t_init = 0;
  t_end  = (tau_on+tau_off)*4;
  time = [t_init t_end];
  DPTH = 0.015; 
elseif (LC==3) 
  x0 = [3;16.9;4.0e-4;0.05]; 
  tau_on = 3*[0.5]*3600;
  tau_off= 1*[0.5]*3600;
  t_init = 0;
  t_end  = (tau_on+tau_off)*4;
  time = [t_init t_end];
  DPTH = [1.0e-1];
  % DPTH = [1.5e-2 1.0e-1 5.0e-1 1 ];  % index l 
elseif (LC==4)
  x0 = [3;16.9;4.0e-4;0.05];    
  tau_on = [0.17,0.5,1,2,4,8,16,24]*3600;
  tau_off =[0.17,0.5,1,2,4,8,16,24]*3600;
%  tau_on = [0.17,0.5,1]*3600;
%  tau_off =[0.17,0.5,1]*3600;
  for i=1:length(tau_on)
    for j=1:length(tau_off)
     t_end(i,j)  = (tau_on(i)+tau_off(j))*4;
     t_init(i,j) = 0;
    end
  end
  DPTH = 7.5; 
elseif (LC==5)
  x0 = [3;16.9;4.0e-4;0.05];  
  tau_on = [1/6,1,4,16]*3600;
  tau_off =[1/6,1,4,16]*3600;
%  tau_on = [0.17,0.5,1]*3600;
%  tau_off =[0.17,0.5,1]*3600;
  for i=1:length(tau_on)
    for j=1:length(tau_off)
     t_end(i,j)  = (tau_on(i)+tau_off(j))*4;
     t_init(i,j) = 0;
    end
  end
  DPTH_max=[0.3,7.5,37.5,150];
  DPTH = 7.5; 
end


%[t,x] = ode15s('PTHMODEL',[0 2*3600],x0) % stiff solver



for l=1:length(DPTH)
 for i=1:length(tau_on)
  for j=1:length(tau_off)
 
      
setappdata(0, 'tau_on',tau_on(i)); 
setappdata(0, 'tau_off',tau_off(j));
setappdata(0, 'DPTH',DPTH);

%dlmwrite('loadcase_tau_on.dat',tau_on(i))%  ,'-append')
%dlmwrite('loadcase_tau_off.dat',tau_off(j))% ,'-append')
%dlmwrite('loadcase_DPTH.dat',DPTH)% ,'-append')
      
%[t,x] = ode45('PTHMODEL',[t_init t_end],x0) % non stiff solver
[t,x] = ode45('PTHMODELv2',[t_init(i,j) t_end(i,j)],x0); % non stiff solver

%
% read model input parameters
%
model_para = load('input_parameters.dat');

R_T = model_para(10); % total # of receptors
%
% save solution vectors
t_loadcase{j+(i-1)*length(tau_on)}     = t;
c_PTH_loadcase{j+(i-1)*length(tau_on)} = x(:,1);
Ra_loadcase{j+(i-1)*length(tau_on)}    = x(:,2);
Ri_loadcase{j+(i-1)*length(tau_on)}    = R_T - x(:,2) - x(:,3) -x(:,4);
Ca_loadcase{j+(i-1)*length(tau_on)}    = x(:,3);
Ci_loadcase{j+(i-1)*length(tau_on)}    = x(:,4);

pi_1{j+(i-1)*length(tau_on)}  =  (x(:,2) + x(:,3)) / R_T;
pi_2{j+(i-1)*length(tau_on)}  =  (x(:,3))/R_T;
%
% compute mean values
c_PTH_mean{j+(i-1)*length(tau_on)}  = mean(x(:,1));
c_PTH_tilde{j+(i-1)*length(tau_on)} = x(:,1) - mean(x(:,1));


%
% save loading function
%for k=1:length(t)

%t_ratio=t(k)/(tau_on(i)+tau_off(j));
%l=  floor(t_ratio)+1;
%if (t(k) >=(l-1)*(tau_on(i)+tau_off(j))) & (t(k) <= l*tau_on(i)+(l-1)*tau_off(j))
%   DPTH_t(k) = DPTH;   
%elseif (t(k) >= l*tau_on(i) + (l-1)*tau_off(j)) & (t(k) <= l*(tau_on(i)+ tau_off(j)))
%   DPTH_t(k) = 0.00;
%else
%   DPTH(k) = 'error'
%   stop
%end 

%end % k loop
%DPTH_loadcase{j+(i-1)*length(tau_on)} = DPTH_t;


  end  % j loop 
 end   % i loop
end    % l loop

%
% here begins postprocessing
%

% write loadcase to file
% write out to data files which can then be read in again

for i=1:length(tau_on)
  for j=1:length(tau_off)
  
%
% Plot receptor states
%
subplot(4,1,1), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ra_loadcase{j+(i-1)*length(tau_on)},'-'), xlabel('t'), ylabel('concentration receptors')
hold on
subplot(4,1,1), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ri_loadcase{j+(i-1)*length(tau_on)},'--')
subplot(4,1,1), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ca_loadcase{j+(i-1)*length(tau_on)},'.')
subplot(4,1,1), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ci_loadcase{j+(i-1)*length(tau_on)},'-.')
h = legend('R_a','R_i','C_a','C_i',1);
%
% plot PTH concentration
% mean and deviation
%
subplot(4,1,2), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
hold on
subplot(4,1,2), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_mean{j+(i-1)*length(tau_on)},'-.')
%plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_tilde{j+(i-1)*length(ta
%u_on)},'.'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
%
% fraction of receptors in active state 
%
%pi_1 = (Ra_loadcase{j+(i-1)*j} + Ca_loadcase{j+(i-1)*j}) ./ R_tot;
subplot(4,1,3), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_1{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('\pi_1=(C_a+R_a)/R_T')
hold on
subplot(4,1,3), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,mean(pi_1{j+(i-1)*length(tau_on)}),'-') 
subplot(4,1,4), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_2{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('\pi_2=C_a/R_T')
hold on
subplot(4,1,4), plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,mean(pi_2{j+(i-1)*length(tau_on)}),'-')
pause
hold off
      
  end
end

