% run BONEREMODELING
%
% runboneremodeling
% orignial Lemaire et al 2004 model; 
%
% Peter Pivonka 2006
%
% description of algorithm:
% INPUT: model parameters, load case (LC)
% OUTPUT: bone cell numbers,concentrations of ligands 
%
% 1: Solve for steady-state solution: 
%    use Newton algorithm to compute ss-cell numbers; 
%    this depends on model parameters chosen; does not depend on load case
% 2: Solve time dependent problem: 
%    use MATLAB ODE solvers to find cell numbers; 
%    a particular load case (LC) is chosen which mimics biochemical changes
% 3: Postprocessing:
%    plot cell numbers; regualtory functions (Pi); concentration of ligands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%

clear 
close all
clc

%-------------------------------------------------------------------%
%                                                                   %
% Parameters used for bone remodeling model                         %
%                                                                   %
%-------------------------------------------------------------------%
% C_s ... [pM] value of OC to get half differentiation flux         %
% A_OCa ... [day^{-1}] rate of OC apoptosis caused by TGF-be        %
% d_OBp ... [day^{-1}] differentiation rate of responding OB        %
% D_OCp ... [pMday^{-1}] differentiation of OC precursors           %
% D_OBu ... [pMday^{-1}] differentiation rate of OB progenitors     %
% f0  ... [--] fixed proportion                                     %
% I_RANKL ... [pMday^{-1}] external injection RANKL                 %
% I_OPG ... [pMday^{-1}] external injection OPG                     %
% I_PTH ... [pMday^{-1}] external injection PTH                     %
% K   ... [pM] fixed concentration of RANK                          %
% k_1 ... [] rate of OPG-RANKL binding                              %
% k_2 ... [] rate of OPG-RANKL unbinding                            %
% k_3 ... [] rate of RANK-RANKL binding                             %
% k_4 ... [] rate of RANK-RANKL unbinding                           %
% k_5 ... [] rate of PTH binding with its receptor                  %
% k_6 ... [] rate of PTH unbinding with its receptor                %
% A_Oba ... [] rate of elimination of active OB                     %
% K_LP... [] max number of RANKL attached on each cell surface      %
% cl_OPG ... [] rate of elimination of OPG                          %
% k_OPG... [] min rate of production of OPG per cell                %
% k_PTH ... [] rate of elimination of PTH                           %
% r_RANKL ... [] rate of RANKL production and elimination           %
% S_PTH ... [] rate of synthesis of systemic PTH                    %
%-------------------------------------------------------------------%

%% Defining parameter values
% Time
time_h = 0; %time to reach homeostasis
t_initial = 0;
t_end = 140+time_h; % days
t_1 = 20+time_h; % time start of load case  
t_2 = 80+time_h; % time finish of load case

% read model input parameters
%model_para = load('input_parameters_v1.dat');
model_para=fu_m1_modelpara(); 

C_s =  model_para(1);
f0  =  model_para(2);
D_OBu =  model_para(3);
d_OBp =  model_para(4); %had a multiplier of f0
A_OBa =  model_para(5);
D_OCp =  model_para(6);
A_OCa =  model_para(7);
I_RANKL =  model_para(8);
I_OPG =  model_para(9);
I_PTH =  model_para(10);
K   =  model_para(11); 
k_1 =  model_para(12);
k_2 =  model_para(13);
k_3 =  model_para(14);
k_4 =  model_para(15);
k_5 =  model_para(16);
k_6 =  model_para(17);
K_LP =  model_para(18);
cl_OPG =  model_para(19);
k_OPG = model_para(20);
OPG_max =  model_para(21);
r_RANKL =  model_para(22);
RANKL_max =  model_para(23);
k_PTH = model_para(24); % k_form
S_PTH = model_para(25); % k_res

% store in variables
setappdata(0, 'C_s',C_s);
setappdata(0, 'f0',f0 );
setappdata(0, 'D_OBu',D_OBu);
setappdata(0, 'd_OBp',d_OBp);
setappdata(0, 'A_OBa',A_OBa);
setappdata(0, 'D_OCp',D_OCp);
setappdata(0, 'A_OCa',A_OCa);
setappdata(0, 'I_RANKL',I_RANKL);
setappdata(0, 'I_OPG',I_OPG);
setappdata(0, 'I_PTH',I_PTH);
setappdata(0, 'K',K);
setappdata(0, 'k_1',k_1);
setappdata(0, 'k_2',k_2);
setappdata(0, 'k_3',k_3);
setappdata(0, 'k_4',k_4);
setappdata(0, 'k_5',k_5);
setappdata(0, 'k_6',k_6);
setappdata(0, 'K_LP',K_LP);
setappdata(0, 'cl_OPG',cl_OPG);
setappdata(0, 'k_OPG', k_OPG);
setappdata(0, 'OPG_max',OPG_max);
setappdata(0, 'r_RANKL',r_RANKL);
setappdata(0, 'RANKL_max',RANKL_max);
setappdata(0, 'k_PTH',k_PTH);
setappdata(0, 'S_PTH',S_PTH);
setappdata(0, 't_end',t_end);
setappdata(0, 't_1',t_1);
setappdata(0, 't_2',t_2);

   
%% Define loadcases 
% 9 load cases (see paper Lemaire)
% (see boneremodellingv1)

% loadcase 0 (Steady-state)
  LC=9; % LC can vary from 0 (?) and 1 to 9 loadcases
  setappdata(0,'LC',LC); 


%% Get steady state solution
% programmed in two versions
% v1 ... uses a 1D iteration procedure
% v2 ... uses a 3D iteration procedure

steady_state_version = 2;

if steady_state_version == 1
 
    OCa_0 = 0.9e-03;           % Make a starting guess at the solution
    %options=optimset('Display','iter','TolFun',1e-14,'TolX',1e-14);   % Option to display output
    options=optimset('TolFun',1e-14,'TolX',1e-14);   % Option tolerances
    
    [OCa_t0] = fsolve(@steadystatefuv1,OCa_0,options);
    
    pi_TGFbe = (OCa_t0 + f0*C_s)/(OCa_t0 + C_s);
    
    OBp_t0 = (D_OBu/d_OBp)*pi_TGFbe^2;
    OBa_t0 = (D_OBu/A_OBa)*pi_TGFbe;
    % BV_t0  = 0;
    
    % compute resortpion/formation ratio 
    k_form = 0.0030; % arbitrary value
    k_res  = k_form*OBa_t0/OCa_t0;
    
elseif steady_state_version == 2
    
    %cells_0 = [1,1,1];
    cells_0 = [0.7734e-3,0.7282e-3,0.9127e-3]; % OBp, OBa, OCa
    %options=optimset('Display','iter','TolFun',1e-14,'TolX',1e-14);   % Option to display output
    options=optimset('TolFun',1e-14,'TolX',1e-14);   % Option tolerances
    %[OCa,fval] = fsolve(@steadystatefu,OCa_0,options);  % Call optimizer

    [cells_t0] = fsolve(@steadystatefuv2,cells_0,options);
    disp(cells_t0);


    OBp_t0 = cells_t0(1);
    OBa_t0 = cells_t0(2);
    OCa_t0 = cells_t0(3);
    % BV_t0  = 0;
    
    
    % compute resortpion/formation ratio 
    k_form = 0.30; % arbitrary value
    k_res  = k_form*OBa_t0/OCa_t0;
    % resorption/formation rate from original parameter set
    % k_form = 0.30;
    % k_res  = 0.241; 
end

% provide steady-state parameters for 
% boneremodeling subroutine
setappdata(0, 'OBa_t0',OBa_t0);
setappdata(0, 'OCa_t0',OCa_t0);
setappdata(0, 'k_form',k_form);
setappdata(0, 'k_res',k_res);

%% Solve global problem

TimeInitial = t_initial;
TimeEnd = t_end;
x_t0 = [OBp_t0;OBa_t0;OCa_t0]; % will have to add bone volume in for loading (;BV_t0)
error = 1e-6;
options = odeset('RelTol',error,'AbsTol',error);
[t,x] = ode45('boneremodelingv1',[TimeInitial TimeEnd],x_t0,options);


%% Post-Processing
% 
% figure
% subplot(3,1,1),plot(t,x(:,1),'k'), xlabel('t'), ylabel('ROB')
% subplot(3,1,2),plot(t,x(:,2),'k'), xlabel('t'), ylabel('AOB')
% subplot(3,1,3),plot(t,x(:,3),'k'), xlabel('t'), ylabel('AOC')

figure
set(gcf,'Color','w');
plot(t,x(:,1),'.b','LineWidth',2); hold on
plot(t,x(:,2),'--b','LineWidth',2); hold on
plot(t,x(:,3),'-r','LineWidth',2); hold on
xlabel('t [days]'), ylabel('bone cells [pM]') 
legend('OB_p','OB_a','OC_a');


% calculate bone mass ballance
% figure
%  plot(t,x(:,4),'-','LineWidth',2), xlabel('t [days]'), ylabel('bone volume [%]')
% pause

% plot overall bone formation/resorption vs. time
% equals ratio of active OC to active OB
% set value for bone homeostasis = OC(t=0)/OB(t=0)  =1.25
figure()
set(gcf,'Color','w');
plot(t,x(:,3)./x(:,2),'k'), xlabel('t'), ylabel('OC/OB ratio')


