%  loadcasepara=fu_m1_loadcase(LC,Fcn)
 function loadcasepara=fu_m1_loadcase(LC,t_1,t_2,t)
%
% This function defines the model parameters 
% used for cell population dynamics model 
% 
%
% modelpara  ... model parameters
%
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

pd_OBa = 0;
pd_OBp = 0;
pd_OCa = 0;
I_RANKL=0;
I_OPG=0; 
I_PTH=0; 


if (LC==1)      
      if (t >= t1_PTH) & (t <= t2_PTH)
         I_PTH   = 1.0e+3;
      end
      
      if (t >= t1_DOBu) & (t <= t2_DOBu)
         D_OBu   = 7.0e-4;
      end   
      
      if (t >= t1_pdOBP) & (t <= t2_pdOBP)
         pd_OBp  = 1.0e-4;
      end
      
end     


loadcasepara(1) = pd_OBp;
loadcasepara(2) = pd_OBa;
loadcasepara(3) = pd_OCa;
loadcasepara(4) = I_RANKL;
loadcasepara(5) = I_OPG; 
loadcasepara(6) = I_PTH; 
