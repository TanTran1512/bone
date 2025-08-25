function xdot = boneremodelingv1(t,x)

% Bone remodeling model: orignial Lemaire model
% solves three differential equations


% initialize xdot

xdot = zeros(4,1);

%   OBp   [pM] ... responding OB
%   OBa   [pM] ... active OB
%   OCa   [pM] ... active OC
%   BV/TV  [-] ... bone volume 

OBp = x(1);
OBa = x(2);
OCa = x(3);
% BV  = x(4);

%-------------------------------------------------------------------%
%                                                                   %
% Parameters used for bone remodeling model                         %
%                                                                   %
%-------------------------------------------------------------------%
% C_s ... [pM] value of OC to get half differentiation flux         %
% D_A ... [day^{-1}] rate of OC apoptosis caused by TGF-be          %
% d_B ... [day^{-1}] differentiation rate of responding OB          %
% D_C ... [pMday^{-1}] differentiation of OC precursors             %
% D_R ... [pMday^{-1}] differentiation rate of OB progenitors       %
% f0  ... [--] fixed proportion                                     %
% I_L ... [pMday^{-1}] external injection RANKL                     %
% I_O ... [pMday^{-1}] external injection OPG                       %
% I_P ... [pMday^{-1}] external injection PTH                       %
% K   ... [pM] fixed concentration of RANK                          %
% k_1 ... [] rate of OPG-RANKL binding                              %
% k_2 ... [] rate of OPG-RANKL unbinding                            %
% k_3 ... [] rate of RANK-RANKL binding                             %
% k_4 ... [] rate of RANK-RANKL unbinding                           %
% k_5 ... [] rate of PTH binding with its receptor                  %
% k_6 ... [] rate of PTH unbinding with its receptor                %
% k_B ... [] rate of elimination of active OB                       %
% K_LP... [] max number of RANKL attached on each cell surface      %
% k_O ... [] rate of elimination of OPG                             %
% K_OP... [] min rate of production of OPG per cell                 %
% k_P ... [] rate of elimination of PTH                             %
% r_L ... [] rate of RANKL production and elimination               %
% S_P ... [] rate of synthesis of systemic PTH                      %
%-------------------------------------------------------------------%

% read model input parameters
model_para=fu_m1_modelpara();

C_s         = model_para(1);
f0          = model_para(2);
D_OBu       = model_para(3);
D_OBp       = model_para(4)*f0;
A_OBa       = model_para(5);
D_OCp       = model_para(6);
A_OCa       = model_para(7);
I_L         = model_para(8);
I_O         = model_para(9);
I_P         = model_para(10);
K_RANK      = model_para(11);
k_1         = model_para(12);
k_2         = model_para(13);
k_3         = model_para(14);
k_4         = model_para(15);
k_5         = model_para(16);
k_6         = model_para(17);
K_LP        = model_para(18);
cl_OPG      = model_para(19);
k_OPG       = model_para(20);
OPG_max     = model_para(21);
r_RANKL    = model_para(22);
RANKL_max   = model_para(23);
k_PTH       = model_para(24);
S_P       = model_para(25);

% parameters to calculate change in bone volume 
OBa_t0 = getappdata(0, 'OBa_t0');
OCa_t0 = getappdata(0, 'OCa_t0');
k_form = getappdata(0, 'k_form');
k_res  = getappdata(0, 'k_res');
t_1 = getappdata(0, 't_1');
t_2  = getappdata(0, 't_2');

% production/destruction term (pd) of various cell types 
% pd_OBp ... production/destruction responding OB
% pd_OBa ... production/destruction active OB
% pd_OCa ... production/destruction active OC
   
   
% define 9 loadcases (see paper Lemaire)

LC = getappdata(0, 'LC');

if (t < t_1 )
  if     (LC==1)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L  = 0; 
      I_O  = 0;   
      I_P  = 0;  
  elseif (LC==2)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L  = 0; 
      I_O  = 0;   
      I_P  = 0;  
  elseif (LC==3)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==4)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0; 
      I_O = 0.0;   
      I_P = 0.0;  
  elseif (LC==5)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==6)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==7)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==8)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==9)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==10)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0; 
  elseif (LC==0)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L  = 0; 
      I_O  = 0;   
      I_P  = 0;  
  end       
elseif (t_1 <= t) && (t <= t_2 )
  if     (LC==1)
      pd_OBp = 0;
      pd_OBa = 1.0e-4;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==2)
      pd_OBp = 0;
      pd_OBa = -8.3e-5;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==3)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 1.0e+3;  
  elseif (LC==4)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 1.0e-4;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==5)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = -2.9e-4;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==6)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 2.0e+5;   
      I_P = 0.0e+3;  
  elseif (LC==7)
      pd_OBp = 1.0e-4;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==8)
      pd_OBp = -1.2e-4;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==9)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 1.0e+4; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==10)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 1.0e+3*(t-20)/(20);
      if (I_P > 1.0e+3)
         I_P = 1.0e+3; 
      end
   elseif (LC==0)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L  = 0; 
      I_O  = 0;   
      I_P  = 0;     
  end   
else 
  if     (LC==1)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==2)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==3)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==4)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==5)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==6)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0;  
  elseif (LC==7)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==8)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0.0e+1; 
      I_O = 0.0e+2;   
      I_P = 0.0e+3;  
  elseif (LC==9)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 1e4; 
      I_O = 9.0e+4;   
      I_P = 0; 
  elseif (LC==10)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L = 0; 
      I_O = 0;   
      I_P = 0; %1.0e+3*(t-20)/(20); 
  elseif (LC==0)
      pd_OBp = 0;
      pd_OBa = 0;
      pd_OCa = 0;
      I_L  = 0; 
      I_O  = 0;   
      I_P  = 0; 
  end   
end  

% functional values required by
% main progam below
P_bar = I_P/k_PTH;
P_tot = (S_P+I_P)/k_PTH;
P_0 = S_P/k_PTH;
P_s = k_6/k_5;
pi_PTH   = (P_tot)/(P_bar + P_s);
pi_TGFbe = (OCa + f0*C_s)/(OCa + C_s);


% functional values used to
% check production/destruction rates
% assuming quasi steady-states the concentrations of 
% OPG, RANKL, RANK are proportional to the number of bone cells

OPG =   (k_OPG*OBp)/(cl_OPG*pi_PTH); %+(I_O/cl_OPG); 
p_OPG = ((k_OPG * OBp) / pi_PTH); %+I_O; 
d_OPG = cl_OPG *OPG;
RANK1 = K_RANK ; % constant
% original
RANKL = (K_LP*pi_PTH* OBa) / (1+k_3/k_4*RANK1+k_1/k_2*OPG);

OPG_RANKL = (k_1/k_2) * OPG * RANKL;
RANKL_RANK = (k_3/k_4) * RANKL * RANK1; 
pd_RANKL = r_RANKL*(1-(RANKL+OPG_RANKL+RANKL_RANK)/(K_LP*pi_PTH*OBa)); 
%
% RANK-RANKL receptor occupancy
pi_RANK  = k_3/k_4 * (K_LP*pi_PTH*OBa)/ ...
       (1+k_3/k_4 *RANK1 + k_1/k_2/cl_OPG*(k_OPG/pi_PTH*OBp+I_O))*...
       (1+I_L/r_RANKL); 



%
% Print out: for quick check
% disp(sprintf('pi_P=%d', pi_P));
%
% write out to data files which can then be read in again
% 
%dlmwrite('data_c_PTH.dat',P_tot,'-append')
%dlmwrite('data_c_OPG.dat',OPG,'-append')
%dlmwrite('data_c_RANK1.dat',RANK1,'-append')
%dlmwrite('data_c_RANKL.dat',RANKL,'-append')
%dlmwrite('data_Pi_PTH.dat',pi_PTH,'-append')
%dlmwrite('data_Pi_TGFbe.dat',pi_TGFbe,'-append')
%dlmwrite('data_Pi_RANK.dat',pi_RANK,'-append')
%dlmwrite('data_p_OPG.dat',p_OPG,'-append')
%dlmwrite('data_d_OPG.dat',d_OPG,'-append')
%dlmwrite('data_pd_RANKL.dat',pd_RANKL,'-append')
%dlmwrite('data_time.dat',t,'-append')

% if OBa > OBa_t0                   <---
%  OBa_hat = OBa - OBa_t0;              | 
% else                                  | 
%  OBa_hat = 0;                         |
% end                                   |   All relevant to the Bone Volume Calculations
% if OCa > OCa_t0                       |
%  OCa_hat = OCa - OCa_t0;              |
% else                                  |
%  OCa_hat = 0;                         |
% end                                   |

% 
% Governing Differntial Equation System 
% cell population dynamics model
dOBpdt = D_OBu*pi_TGFbe - (D_OBp*OBp)/pi_TGFbe  + pd_OBp;
dOBadt = (D_OBp/pi_TGFbe)*OBp - A_OBa*OBa       + pd_OBa;
dOCadt = D_OCp*pi_RANK - A_OCa*pi_TGFbe*OCa   + pd_OCa;
% dBVdt  = k_form*OBa_hat - k_res*OCa_hat;   % Bone Volume value-uneccessary in SS calculations

% now create column vector of state derivatives

xdot = [dOBpdt;dOBadt;dOCadt];  % ;dBVdt % Bone Volume value-uneccessary in SS calculations

ParameterWrite = 0; 

if ParameterWrite == 1

xdot   =   [PTH_tot; ... % 1 PTH concentration
                OPG; ... % 2 OPG concentration
              RANK1; ... % 3 RANK concentration
          RANKL_eff; ... % 5
          RANKL_tot; ... % 6 
              RANKL; ... % 7
         RANKL_RANK; ... % 8  
         Pi_PTH_actpi_PTH; ... % 9
         Pi_PTH_rep; ... % 10
 Pi_TGFbeta_OBu_act; ... % 11
 Pi_TGFbeta_OCa_act; ... % 12 
 Pi_TGFbeta_OBp_rep; ... % 13
        Pi_RANK_act; ... % 14
        Pi_MCSF_act; ... % 15
          sig_macro; ... % 16
            SED_bm0; ... % 17
             SED_bm; ... % 18 
             Pi_eps; ... % 19
        P_eps_RANKL; ... % 20
             sv_OBa; ... % 21
               fvas; ... % 22
              Time];     % 23
              
end


%end of file

