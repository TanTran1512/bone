function F = steadystatefuv2(x)

%
%
%
OBp = x(1);
OBa = x(2);
OCa = x(3);


% read model input parameters
%model_para=fu_m1_modelpara();

t=0;
t_1 = [0;0;0];
t_2 = [1;1;1];

model_para= fu_m1_modelpara();

C_s         = model_para(1);
f0          = model_para(2);
D_OBu       = model_para(3);
d_OBp       = model_para(4)*f0; %had a multiplier of f0 (equation in paper)
A_OBa       = model_para(5);
D_OCp       = model_para(6);
A_OCa       = model_para(7);
I_RANKL     = model_para(8);
I_OPG       = model_para(9);
I_PTH       = model_para(10);
K           = model_para(11);
k_1         = model_para(12);
k_2         = model_para(13);
k_3         = model_para(14);
k_4         = model_para(15);
k_5         = model_para(16);
k_6         = model_para(17);
K_LP        = model_para(18);
cl_OPG      = model_para(19); 
k_OPG       = model_para(20) ; 
OPG_max     = model_para(21); 
r_RANKL     = model_para(22); % cl_RANKL
RANKL_max   = model_para(23); % k_RANKL 
k_PTH       = model_para(24);     
S_PTH       = model_para(25);  


%Used to initiate load cases 
%set to zero for Steady-State
%pd_OBp = model_para(38); % pd_OBp
%pd_OBa = model_para(39); % pd_OBa
%pd_OCa = model_para(40); % pd_OCa

pd_OBp = 0;
pd_OBa = 0;
pd_OCa = 0;



% functional values required by
% main progam below

% Compute PTH concentration
PTH_bar = I_PTH/k_PTH;
PTH_tot = (S_PTH+I_PTH)/k_PTH;
PTH_s =  k_6/k_5;

% compute activator/repressor functions
pi_PTH_act = (PTH_tot)/(PTH_s + PTH_bar);
pi_PTH_rep = 1/pi_PTH_act;

pi_TGFbe_act = (OCa + f0*C_s)/(OCa + C_s);
pi_TGFbe_rep = 1/pi_TGFbe_act;
RANK1 = K ;

OBp = (D_OBu/d_OBp)*pi_TGFbe_act^2;
OBa = (D_OBu/A_OBa)*pi_TGFbe_act;


% functional values used to check production/destruction rates
% assuming quasi steady-states the concentrations of OPG, RANKL, RANK are proportional to the number of bone cells
% general OPG function includes Lemaire's version as special case 
OPG = ((k_OPG*OBp)/(pi_PTH_act*cl_OPG)) + I_OPG/cl_OPG; 
p_OPG = (k_OPG * OBp)*pi_PTH_rep + I_OPG; 
d_OPG = cl_OPG *OPG;
 % constant

RANKL = ((K_LP*OBa)*pi_PTH_act / (1+((k_3/k_4)*RANK1)+((k_1/k_2)*OPG)))*(1+(I_RANKL/r_RANKL));
OPG_RANKL = k_1/k_2 * OPG * RANKL;
RANKL_RANK = k_3/k_4 * RANKL * RANK1; 
pd_RANKL = r_RANKL*(1-(RANKL+OPG_RANKL+RANKL_RANK)/((K_LP*OBa)*pi_PTH_act))+I_RANKL;

pi_RANK_act = RANKL_RANK/RANK1 ;

% Governing Differntial Equation System 
% cell population dynamics model

F1 = D_OBu*pi_TGFbe_act - d_OBp*OBp*pi_TGFbe_rep  + pd_OBp;
F2 = d_OBp*OBp*pi_TGFbe_rep - A_OBa*OBa           + pd_OBa;
F3 = D_OCp*pi_RANK_act - A_OCa*OCa*pi_TGFbe_act   + pd_OCa;


F = [F1;F2;F3];

% END