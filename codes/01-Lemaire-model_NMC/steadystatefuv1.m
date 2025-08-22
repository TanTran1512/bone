function F = steadystatefuv1(OCa)


% read model input parameters

C_s   =  getappdata(0, 'C_s');
f0    =  getappdata(0, 'f0');
D_OBu =  getappdata(0, 'D_OBu');
d_OBp =  getappdata(0, 'D_OBp');
A_OBa =  getappdata(0, 'A_OBa');
D_OCp =  getappdata(0, 'D_OCp');
A_OCa =  getappdata(0, 'A_OCa');
I_RANKL =  getappdata(0, 'I_RANKL');
I_OPG   =  getappdata(0, 'I_OPG');
I_PTH   =  getappdata(0, 'I_PTH');
K     =  getappdata(0, 'K');
k_1   =  getappdata(0, 'k_1');
k_2   =  getappdata(0, 'k_2');
k_3   =  getappdata(0, 'k_3');
k_4   =  getappdata(0, 'k_4');
k_5   =  getappdata(0, 'k_5');
k_6   =  getappdata(0, 'k_6');
K_LP  =  getappdata(0, 'K_LP');
cl_OPG  =  getappdata(0, 'cl_OPG');
k_OPG   =  getappdata(0, 'k_OPG');
OPG_max = getappdata(0,'OPG_max');
r_RANKL =  getappdata(0, 'r_RANKL');
RANKL_max = getappdata(0,'RANKL_max');
k_PTH  =  getappdata(0, 'k_PTH');
S_PTH  =  getappdata(0, 'S_PTH');

f_K_LP_OBp  = getappdata(0, 'f_K_LP_OBp');
f_K_LP_OBa  = getappdata(0, 'f_K_LP_OBa');
f_k_OPG_OBp = getappdata(0, 'f_k_OPG_OBp');
f_k_OPG_OBa = getappdata(0, 'f_k_OPG_OBa');


% functional values required by
% main progam below
PTH_bar = I_PTH/k_PTH;
PTH_tot = (S_PTH+I_PTH)/k_PTH;
PTH_0 = S_PTH/k_PTH;
PTH_s = k_6/k_5;
pi_PTH   = (PTH_tot)/(PTH_tot + PTH_s);


% compute activator/repressor functions
pi_PTH_act = pi_PTH;
pi_PTH_rep = 1/pi_PTH_act;

OCa0 = f0*C_s;
OCas = C_s;

pi_TGFbe = (OCa + f0*C_s)/(OCa + C_s);

OBp = D_OBu/d_OBp*pi_TGFbe^2;
OBa = D_OBu/A_OBa*pi_TGFbe;

% functional values used to
% check production/destruction rates
% assuming quasi steady-states the concentrations of 
% OPG, RANKL, RANK are proportional to the number of bone cells
OPG = ((k_OPG*OBp)*pi_PTH_rep + I_OPG)/(cl_OPG); 
p_OPG = (k_OPG * OBp)*pi_PTH_rep + I_OPG; 
d_OPG = cl_OPG *OPG;
RANK1 = K ; % constant


RANKL = (K_LP*OBa)*pi_PTH_act ./ (1+k_3/k_4*RANK1+k_1/k_2*OPG);
OPG_RANKL = k_1/k_2 * OPG * RANKL;
RANKL_RANK = k_3/k_4 * RANKL * RANK1; 
pd_RANKL = r_RANKL*(1-(RANKL+OPG_RANKL+RANKL_RANK)/((K_LP*OBa)*pi_PTH_act));

pi_RANK = RANKL_RANK/RANK1 ;





       
       
F = [D_OCp*pi_RANK - A_OCa*pi_TGFbe*OCa];

% END