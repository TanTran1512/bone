function modelpara=fu_m1_model_loadcase_para(LC,t_1,t_2,t)
%
% This function defines the model parameters 
% used for cell population dynamics model 
% 
%
% modelpara  ... model parameters

modelpara(1)  = 5.00e-3; % C_s   ... [pM] value of OC to get half differentiation flux  %
modelpara(2)  = 5.00e-2; % f0    ... [--] fixed proportion 
modelpara(3)  = 7.00e-4; % D_OBu ... [pMday^{-1}] differentiation rate of OB progenitors   %
modelpara(4)  = 7.00e-1; % d_OBp ... [day^{-1}] differentiation rate of responding OB      %
modelpara(5)  = 1.89e-1;  % A_OBa ... [] rate of elimination of active OB                   %
modelpara(6)  = 2.10e-3; % D_OCp ... [pMday^{-1}] differentiation of OC precursors
modelpara(7)  = 7.00e-1; % A_OCa ... [day^{-1}] rate of OC apoptosis caused by TGF-be      %
modelpara(8)  = 0.00e+1; % I_RANKL
modelpara(9)  = 0.00e+1; % I_OPG
modelpara(10) = 0.00e+1; % I_PTH
modelpara(11) = 1.00e+1; % K 
modelpara(12) = 1.00e-2; % k_1
modelpara(13) = 1.00e+1; % k_2
modelpara(14) = 5.80e-4; % k_3 
modelpara(15) = 1.70e-2; % k_4
modelpara(16) = 2.00e-2; % k_5 
modelpara(17) = 3.00e+0; % k_6 
modelpara(18) = 3.00e+6; % K_LP
modelpara(19) = 3.50e-1; % cl_OPG
modelpara(20) = 2.00e+5; % k_OPG 
modelpara(21) = 2.00e+8; % OPG_max 
modelpara(22) = 3.50e-1; % cl_RANKL
modelpara(23) = 1.00e+3; % k_RANKL 
modelpara(24) = 2.00e+8; % RANKL_max 
modelpara(25) = 86;     % k_PTH
modelpara(26) = 250;    % S_PTH
modelpara(27) = 0; % f_K_LP_OBp [%] ... factor for expresion of RANKL on OBp      %
modelpara(28) = 1; % f_K_LP_OBa
modelpara(29) = 1; % f_k_OPG_OBp
modelpara(30) = 0 ;% f_k_OPG_OBa
modelpara(31) = 1.0; % resorption volum in [mu^3/pM of cells]%
modelpara(32) = 1.0; % alpha: content of TGF-be stored in bone matrix in [%]
modelpara(33) = 2; % model version
modelpara(34) = 2; % act/rep model version
modelpara(35) = 1; % n .. Hill coeff
modelpara(36) = 2; % TGF-be model version
modelpara(37) = 3; % RANKL model version
modelpara(38) = 0; % pd_OBp
modelpara(39) = 0; % pd_OBa
modelpara(40) = 0; % pd_OCa



%  drug such as PTH may have different time effects on different 
%  model parameters such as 
%  D_OBu  ... upregulated by PTH
%  pd_OBp ... prolifereation of OBp's (modeled as a source term)
%
%LC    = ; defined load case
%t_1   = ; vector storing initial times of treatment 
%t_2   = ; vector storing end times of treatment


t1_PTH   = t_1(1);
t1_DOBu  = t_1(2);
t1_pdOBp = t_1(3);

t2_PTH   = t_2(1);
t2_DOBu  = t_2(2);
t2_pdOBp = t_2(3);



if (LC==1) 
    % normal state
elseif (LC==2)
      if (t >= t1_PTH) & (t <= t2_PTH)
         I_PTH   = 1.0e+3;
         modelpara(10) = I_PTH;
      end
      
      if (t >= t1_DOBu) & (t <= t2_DOBu)
         D_OBu   =7.0e-4;
         modelpara(3) = D_OBu;
         d_OBp   = 7.0e-1;
         modelpara(4)  = d_OBp; 
      end   
      
      if (t >= t1_pdOBp) & (t <= t2_pdOBp)
         pd_OBp  = 0.0e-3;
         pd_OBa  = 0.0e-3; 
         modelpara(38) = pd_OBp;
         modelpara(39) = pd_OBa;
      end
      
end     



