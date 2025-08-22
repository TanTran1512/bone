%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% runpthmodel
% addpath('D:\FEMLAB\femlab-peter\bone models\model - 2')
%
% (1) definition of variables:
%
% P   = x(1);   % PTH concentration
% Ra  = x(2);   % active PTHr
% Ri  = x(3);   % inactive PTHr
% Ca  = x(4);   % active PTH complex
% Ci  = x(5);   % inactive PTH complex
%
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


LC = 4;

if  (LC==1) 
  x0 = [3;16.9;1.7;4.0e-4;0.05]; 
  t_init = 0;          
  t_end  = 4*3600;     
  time = [t_init t_end];
  tau_on = [1.0*(3600)];  
  tau_off= [0.0*(3600)];  
  DPTH = 7.5; 
elseif (LC==2)
  x0 = [1500;4.3;6.8;0.05;7.4]; 
  t_init = 0;
  t_end  = 4*3600;
  time = [t_init t_end];
  tau_on = [1.0*(3600)];  
  tau_off= [0.0*(3600)]; 
  DPTH = 0.015; 
elseif (LC==3) 
  x0 = [3;16.9;1.7;4.0e-4;0.05]; 
  t_init = 0;
  t_end  = 4*3600;
  time = [t_init t_end];
  tau_on =0.5*(3600); 
  tau_off=0.5*(3600);  
  DPTH = 7.5; 
elseif (LC==4)
  x0 = [3;16.9;1.7;4.0e-4;0.05];    
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
  x0 = [3;16.9;1.7;4.0e-4;0.05];    
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

for i=1:length(tau_on)
  for j=1:length(tau_off)
 
      
setappdata(0, 'tau_on',tau_on(i)); 
setappdata(0, 'tau_off',tau_off(j));
setappdata(0, 'DPTH',DPTH);

%dlmwrite('loadcase_tau_on.dat',tau_on(i))%  ,'-append')
%dlmwrite('loadcase_tau_off.dat',tau_off(j))% ,'-append')
%dlmwrite('loadcase_DPTH.dat',DPTH)% ,'-append')
      
%[t,x] = ode45('PTHMODEL',[t_init t_end],x0) % non stiff solver
[t,x] = ode45('PTHMODELv1',[t_init(i,j) t_end(i,j)],x0); % non stiff solver

%
% save solution vectors
t_loadcase{j+(i-1)*length(tau_on)}     = t;
c_PTH_loadcase{j+(i-1)*length(tau_on)} = x(:,1);
Ra_loadcase{j+(i-1)*length(tau_on)}    = x(:,2);
Ri_loadcase{j+(i-1)*length(tau_on)}    = x(:,3);
Ca_loadcase{j+(i-1)*length(tau_on)}    = x(:,4);
Ci_loadcase{j+(i-1)*length(tau_on)}    = x(:,5);


R_tot{j+(i-1)*length(tau_on)} =  (x(:,2) + x(:,3) +  x(:,4)+ x(:,5));
pi_1{j+(i-1)*length(tau_on)}  =  (x(:,2) + x(:,4)) ./ (x(:,2) + x(:,3) +  x(:,4)+ x(:,5));
pi_2{j+(i-1)*length(tau_on)}  =  (x(:,4)) ./ (x(:,2) + x(:,3) +  x(:,4)+ x(:,5));
%
% compute mean values
c_PTH_mean{j+(i-1)*length(tau_on)}  = mean(x(:,1));
c_PTH_tilde{j+(i-1)*length(tau_on)} = x(:,1) - mean(x(:,1));

  end  % j loop 
end    % i loop




% write loadcase to file
% write out to data files which can then be read in again

if (LC==1)

for i=1:length(tau_on)
  for j=1:length(tau_off)
   
%
% Plot receptor states
%
plot(t_loadcase{j+(i-1)*length(tau_on)},Ra_loadcase{j+(i-1)*length(tau_on)},'-'), xlabel('t'), ylabel('concentration receptors')
hold on
plot(t_loadcase{j+(i-1)*length(tau_on)},Ri_loadcase{j+(i-1)*length(tau_on)},'--')
plot(t_loadcase{j+(i-1)*length(tau_on)},Ca_loadcase{j+(i-1)*length(tau_on)},'.')
plot(t_loadcase{j+(i-1)*length(tau_on)},Ci_loadcase{j+(i-1)*length(tau_on)},'-.')
h = legend('R_a','R_i','C_a','C_i',1);
pause
hold off
%
% plot PTH concentration
% mean and deviation
%
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
hold on
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_mean{j+(i-1)*length(tau_on)},'-.'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_tilde{j+(i-1)*length(tau_on)},'.'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
pause
hold off
%
% plot total concentration of receptor 
%
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,R_tot{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('total receptor #')
pause
hold off
%
% fraction of receptors in active state 
%
%pi_1 = (Ra_loadcase{j+(i-1)*j} + Ca_loadcase{j+(i-1)*j}) ./ R_tot;
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_1{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('active receptor fraction')
pause
hold off
%
% receptor occupancy
%
%pi_2 = (Ca_loadcase{j+(i-1)*j}) ./ R_tot;
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_2{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('receptor occupancy \pi_{PTH}')
pause
hold off
      
      
  end
end

elseif(LC==4)

    
for i=1:length(tau_on)
  for j=1:length(tau_off)
   rho_pi_1(i,j) = mean(pi_1{j+(i-1)*length(tau_on)});
   rho_pi_2(i,j) = mean(pi_2{j+(i-1)*length(tau_on)});  
  end
end

%
% contour plots
surfc(tau_on/3600,tau_off/3600,rho_pi_1.')
pause
hold off
stem3(tau_on/3600,tau_off/3600,rho_pi_1.','fill')

% plot PTH concentration
% mean and deviation
%
plot(t_loadcase{1}/3600,pi_1{1},'-'), xlabel('t [hours]'), ylabel('\pi_1')
hold on
plot(t_loadcase{2}/3600,pi_1{2},'-.'), xlabel('t [hours]'), ylabel('\pi_1')
plot(t_loadcase{3}/3600,pi_1{3},'.'), xlabel('t [hours]'), ylabel('\pi_1')
pause
hold off
%

%plot3(tau_on,tau_off,rho)
end


%for i=1:4
%  for j=1:4
%   j+(i-1)*4
%  end
%end