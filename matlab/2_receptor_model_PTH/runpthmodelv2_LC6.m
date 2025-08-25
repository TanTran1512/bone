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
% LC1 ... sensitized to desensitized state - give high PTH dosage cont.
% LC2 ... densensitzed to sensitized state - give low  PTH dosage cont.
% LC3 ... start from sensitized state - pulse high dose PTH: 1/2h on/off
% LC4 ... start from sensitized state - pulse high dose PTH: different on/off
% LC5 ... 
% LC6 ... start: sensitized - increase PTH dose cont. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


LC = 6;

if  (LC==1) 
  x0 = [3;16.9;4.0e-4;0.05];
  tau_on = [1.0*(3600)]; % in sec 
  tau_off= [0.0*(3600)]; % in sec 
  t_init = 0;          
  t_end  = (tau_on+tau_off)*4;     
  time = [t_init t_end];
  DPTH = 7.5; %7.5; 
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
  tau_on = [0.5]*3600;
  tau_off= [0.5]*3600;
  t_init = 0;
  t_end  = (tau_on+tau_off)*4;
  time = [t_init t_end];
  DPTH = 7.5; 
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
elseif (LC==6)
  x0 = [3;16.9;4.0e-4;0.05];   
  tau_on = [1.0*(3600)]; % in sec 
  tau_off= [0.0*(3600)]; % in sec 
  t_init = 0;          
  t_end  = (tau_on+tau_off)*4;     
  time = [t_init t_end];
  DPTH = [0.015,0.05,0.1,0.2,0.5,1.0,5.0,7.5]; 
end


%[t,x] = ode15s('PTHMODEL',[0 2*3600],x0) % stiff solver


for i=1:length(tau_on)
  for j=1:length(tau_off)
    for l=1:length(DPTH)     
      
setappdata(0, 'tau_on',tau_on(i)); 
setappdata(0, 'tau_off',tau_off(j));
setappdata(0, 'DPTH',DPTH(l));

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
t_loadcase{l,j,i}     = t;
c_PTH_loadcase{l,j,i} = x(:,1);
Ra_loadcase{l,j,i}    = x(:,2);
Ri_loadcase{l,j,i}    = R_T - x(:,2) - x(:,3) -x(:,4);
Ca_loadcase{l,j,i}    = x(:,3);
Ci_loadcase{l,j,i}    = x(:,4);


R_tot{l,j,i}  =  R_T*length(x(:,2));
%
% definition of activation/repression
% 

pi_1{l,j,i}  =  (x(:,2) + x(:,3)) ./ R_T;
pi_2{l,j,i}  =  (x(:,3)) ./ R_T;
pi_3{l,j,i}  =  (x(:,3)) ./ (x(:,2)+ x(:,3)) ;

%
%
%

%
% compute mean values
c_PTH_mean{l,j,i}  = mean(x(:,1));
c_PTH_tilde{l,j,i} = x(:,1) - mean(x(:,1));


%
% save loading function
%for k=1:length(t)
%
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
%DPTH_loadcase{l,j,i} = DPTH_t;

    end % l loop
  end   % j loop 
end     % i loop

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% here begins postprocessing
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
%hold on
%plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_mean{j+(i-1)*length(tau_on)},'-.'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
%plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_tilde{j+(i-1)*length(tau_on)},'.'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
pause
hold off
%
% plot total concentration of receptor 
%
%plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,R_tot{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('total receptor #')
%pause
%hold off
%
% fraction of receptors in active state 
%
%pi_1 = (Ra_loadcase{j+(i-1)*j} + Ca_loadcase{j+(i-1)*j}) ./ R_tot;
%plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_1{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('active receptor fraction')
%pause
%hold off
%
% receptor occupancy
%
%pi_2 = (Ca_loadcase{j+(i-1)*j}) ./ R_tot;
%plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_2{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('receptor occupancy \pi_{PTH}')
%pause
%hold off
      
%
% receptor occupancy
%
%pi_3 = (Ca_loadcase{j+(i-1)*j}) ./ R_tot;
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_1{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('receptor occupancy \pi_{PTH}')
hold on
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_2{j+(i-1)*length(tau_on)},'-.')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_3{j+(i-1)*length(tau_on)},'--')
%plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,pi_PTH*ones(1,length(t_loadcase{j+(i-1)*length(tau_on)})))
pause
%hold off


  end
end


elseif(LC==3)


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

elseif LC==6
 
%    
% Lemaire model
k_5      = 2.0e-2;     % pM^{-1} day^{-1} ... forward binding reac.
k_6      = 3.0e+0;     % day^{-1} ... reverse binding reac.
D_PTH    = k_6/k_5;    % dissociation const
cl_PTH   = 5*86;         % pM/day ... PTH clearance rate
beta_PTH = 0; %250;        % pM/day ... endogenous productionS_PTHpM^{-1} day^{-1}
I_PTH    = 0;          % pM/day ... extrinsic PTH injection
n_exp =1;                  % Hill coeff 

con_PTH = (beta_PTH + I_PTH)/cl_PTH;

I_PTH = DPTH*(3600*24); 

con_PTH = (beta_PTH + I_PTH)/cl_PTH;

pi_PTH_act = con_PTH.^n_exp ./(D_PTH.^n_exp+con_PTH.^n_exp);

n=0;
    
for i=1:length(tau_on)
  for j=1:length(tau_off)
    for l=1:length(DPTH)     
      
      n = n+1;
        
      PTH_ss(n) =    c_PTH_loadcase{l,j,i}(length(c_PTH_loadcase{l,j,i})); 
      pi_1ss(n) =    pi_1{l,j,i}(length(pi_1{l,j,i}));
      pi_2ss(n) =    pi_2{l,j,i}(length(pi_2{l,j,i}));
      pi_3ss(n) =    pi_3{l,j,i}(length(pi_3{l,j,i}));
    end 
  end 
end 

plot(PTH_ss,pi_1ss)
hold on
plot(con_PTH,pi_PTH_act)
%hold on
%plot(PTH_ss,pi_2ss)
%plot(PTH_ss,pi_3ss)

%plot3(tau_on,tau_off,rho)
end


%for i=1:4
%  for j=1:4
%   j+(i-1)*4
%  end
%end