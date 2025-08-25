function loadcasepara=fu_m1_loadcase(LC,t_1,t_2,t)
%
% This function defines the load case parameters 
% used for cell population dynamics model 
% 
% simulaton starts at t=0 [days];
% a perturbation to the system is imposed in the interval [t1,t2]
% 
% INPUT
% LC  = 1 ...9; indicates which model parameter is perturbed; 
% t_1;    ... time instant when load case is applied; 
% t_2;    ... time instant when load case is taken off;
%
% external source/injection terms of cells and ligands
%
      pd_OBa = 0;
      pd_OBp = 0;
      pd_OCa = 0;
      I_RANKL=0;
      I_OPG=0; 
      I_PTH=0; 

if (t >= t_1 ) & (t <= t_2)   
 if     (LC==1)
      pd_OBa = 1.0e-4;        % ... external injection of OBa's
 elseif (LC==2)
      pd_OBa = -8.3e-5;       % ... external ...  
 elseif (LC==3) 
      I_PTH   = 1.0e+3;  
 elseif (LC==4)
      pd_OCa = 1.0e-4;
 elseif (LC==5)
      pd_OCa = -2.9e-4;
 elseif (LC==6)
      I_OPG   = 2.0e+6;   
 elseif (LC==7)
      pd_OBp = 1.0e-4;
 elseif (LC==8)
      pd_OBp = -1.2e-4;
elseif (LC==9)
      I_RANKL = 1.0e+5; 
end 
  
end

loadcasepara(1) = pd_OBp;
loadcasepara(2) = pd_OBa;
loadcasepara(3) = pd_OCa;
loadcasepara(4) = I_RANKL;
loadcasepara(5) = I_OPG; 
loadcasepara(6) = I_PTH; 
