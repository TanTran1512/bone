function modelpara=fu_m1_modelpara()

% This function defines the model parameters 
% used for cell population dynamics model 

% modelpara  ... model parameters

modelpara(1)  = 5.00e-3; % Good     C_s   ... [pM] value of OC to get half differentiation flux  
modelpara(2)  = 5.00e-2; % Good     f0    ... [--] fixed proportion 
modelpara(3)  = 7.00e-4; % Good     D_OBu ... [pMday^{-1}] differentiation rate of OB progenitors  
modelpara(4)  = 7.00e-1; % Good     d_OBp ... [day^{-1}] differentiation rate of responding OB      
modelpara(5)  = 1.89e-1; % Good     A_OBa ... [] rate of elimination of active OB                   
modelpara(6)  = 2.10e-3; % Good     D_OCp ... [pMday^{-1}] differentiation of OC precursors
modelpara(7)  = 7.00e-1; % Good     A_OCa ... [day^{-1}] rate of OC apoptosis caused by TGF-be      
modelpara(8)  = 0.00e+1; % Good     I_RANKL (0 to 10^-6)
modelpara(9)  = 0.00e+1; % Good     I_OPG   (0 to 10^-6)
modelpara(10) = 0.00e+1; % Good     I_PTH   (0 to 10^-6)
modelpara(11) = 1.00e+1; % Good     K ... RANK receptors
modelpara(12) = 1.00e-2; % Good     k_1
modelpara(13) = 1.00e+1; % Good     k_2
modelpara(14) = 5.80e-4; % Good     k_3 
modelpara(15) = 1.70e-2; % Good     k_4
modelpara(16) = 2.00e-2; % Good     k_5 
modelpara(17) = 3.00e+0; % Good     k_6 
modelpara(18) = 3.00e+6; % Good     K_LP ... max RANKL  receptors
modelpara(19) = 3.50e-1; % Good     cl_OPG ... elimination rate of OPG
modelpara(20) = 2.00e+5; % Good     k_OPG ... Min production rate of OPG
modelpara(21) = 2.00e+8; %          OPG_max ... max OPG concentration; 
modelpara(22) = 1.00e+3; % Good     r_RANKL  ... RANKL Rate of production and elimination
modelpara(23) = 2.00e+8; %          RANKL_max 
modelpara(24) = 86;      % Good     k_PTH    Rate of PTH elimination
modelpara(25) = 250;     % Good     S_PTH    Rate Synthesis of systemic PTH

% Parameter Order 
% C_s
% f0
% D_OBu
% d_OBp     
% A_OBa                 
% D_OCp
% A_OCa  
% I_RANKL
% I_OPG 
% I_PTH
% K
% k_1
% k_2
% k_3 
% k_4
% k_5 
% k_6 
% K_LP
% cl_OPG
% k_OPG 
% OPG_max 
% r_RANKL
% RANKL_max 
% k_PTH
% S_PTH  