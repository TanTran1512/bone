tau_on = [0.17,0.5,1,2,4,8,16,24]*3600;
tau_off =[0.17,0.5,1,2,4,8,16,24]*3600;

for i=1:length(tau_on)
  for j=1:length(tau_off)


      
%   
% write out to data files which can then be read in again
%    


if (i==1) & (j ==1)       
    
dlmwrite('LC4-results\ij_11_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_11_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_11_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_11_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_11_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_11_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_11_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==1) & (j ==2)
    
dlmwrite('LC4-results\ij_12_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_12_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_12_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_12_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_12_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_12_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_12_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)   
    
elseif (i==1) & (j ==3)
    
dlmwrite('LC4-results\ij_13_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_13_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_13_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_13_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_13_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_13_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_13_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==1) & (j ==4)
    
dlmwrite('LC4-results\ij_14_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_14_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_14_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_14_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_14_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_14_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_14_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==1) & (j ==5)
    
dlmwrite('LC4-results\ij_15_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_15_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_15_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_15_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_15_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_15_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_15_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==1) & (j ==6)
    
dlmwrite('LC4-results\ij_16_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_16_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_16_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_16_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_16_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_16_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_16_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)


elseif (i==1) & (j ==7)
    
dlmwrite('LC4-results\ij_17_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_17_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_17_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_17_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_17_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_17_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_17_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==1) & (j ==8)
    
dlmwrite('LC4-results\ij_18_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_18_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_18_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_18_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_18_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_18_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_18_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)


elseif (i==2) & (j ==1)
    
dlmwrite('LC4-results\ij_21_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_21_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_21_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_21_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_21_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_21_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_21_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==2)
    
dlmwrite('LC4-results\ij_22_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_22_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_22_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_22_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_22_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_22_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_22_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==3)
    
dlmwrite('LC4-results\ij_23_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_23_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_23_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_23_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_23_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_23_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_23_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==4)
    
dlmwrite('LC4-results\ij_24_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_24_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_24_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_24_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_24_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_24_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_24_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==5)
    
dlmwrite('LC4-results\ij_25_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_25_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_25_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_25_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_25_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_25_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_25_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==6)
    
dlmwrite('LC4-results\ij_26_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_26_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_26_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_26_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_26_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_26_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_26_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==7)
    
dlmwrite('LC4-results\ij_27_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_27_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_27_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_27_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_27_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_27_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_27_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==8)
    
dlmwrite('LC4-results\ij_28_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_28_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_28_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_28_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_28_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_28_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_28_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==1)
    
dlmwrite('LC4-results\ij_31_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_31_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_31_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_31_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_31_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_31_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_31_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==2)
    
dlmwrite('LC4-results\ij_32_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_32_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_32_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_32_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_32_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_32_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_32_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==3)
    
dlmwrite('LC4-results\ij_33_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_33_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_33_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_33_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_33_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_33_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_33_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==4)
    
dlmwrite('LC4-results\ij_34_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_34_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_34_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_34_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_34_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_34_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_34_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==5)
    
dlmwrite('LC4-results\ij_35_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_35_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_35_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_35_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_35_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_35_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_35_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==6)
    
dlmwrite('LC4-results\ij_36_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_36_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_36_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_36_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_36_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_36_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_36_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==7)
    
dlmwrite('LC4-results\ij_37_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_37_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_37_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_37_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_37_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_37_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_37_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==8)
    
dlmwrite('LC4-results\ij_38_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_38_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_38_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_38_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_38_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_38_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_38_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==1)
    
dlmwrite('LC4-results\ij_41_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_41_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_41_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_41_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_41_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_41_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_41_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==2)
    
dlmwrite('LC4-results\ij_42_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_42_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_42_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_42_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_42_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_42_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_42_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==3)
    
dlmwrite('LC4-results\ij_43_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_43_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_43_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_43_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_43_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_43_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_43_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==4)
    
dlmwrite('LC4-results\ij_44_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_44_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_44_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_44_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_44_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_44_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_44_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==5)
    
dlmwrite('LC4-results\ij_45_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_45_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_45_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_45_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_45_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_45_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_45_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==6)
    
dlmwrite('LC4-results\ij_46_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_46_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_46_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_46_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_46_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_46_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_46_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==7)
    
dlmwrite('LC4-results\ij_47_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_47_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_47_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_47_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_47_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_47_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_47_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==8)
    
dlmwrite('LC4-results\ij_48_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_48_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_48_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_48_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_48_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_48_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_48_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==1)
    
dlmwrite('LC4-results\ij_51_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_51_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_51_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_51_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_51_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_51_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_51_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==2)
    
dlmwrite('LC4-results\ij_52_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_52_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_52_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_52_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_52_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_52_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_52_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==3)
    
dlmwrite('LC4-results\ij_53_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_53_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_53_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_53_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_53_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_53_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_53_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==4)
    
dlmwrite('LC4-results\ij_54_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_54_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_54_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_54_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_54_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_54_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_54_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==5)
    
dlmwrite('LC4-results\ij_55_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_55_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_55_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_55_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_55_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_55_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_55_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==6)
    
dlmwrite('LC4-results\ij_56_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_56_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_56_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_56_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_56_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_56_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_56_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==7)
    
dlmwrite('LC4-results\ij_57_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_57_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_57_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_57_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_57_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_57_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_57_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==8)
    
dlmwrite('LC4-results\ij_58_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_58_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_58_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_58_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_58_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_58_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_58_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==1)
    
dlmwrite('LC4-results\ij_61_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_61_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_61_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_61_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_61_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_61_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_61_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==2)
    
dlmwrite('LC4-results\ij_62_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_62_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_62_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_62_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_62_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_62_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_62_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==3)
    
dlmwrite('LC4-results\ij_63_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_63_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_63_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_63_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_63_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_63_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_63_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==4)
    
dlmwrite('LC4-results\ij_64_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_64_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_64_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_64_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_64_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_64_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_64_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==5)
    
dlmwrite('LC4-results\ij_65_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_65_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_65_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_65_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_65_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_65_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_65_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==6)
    
dlmwrite('LC4-results\ij_66_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_66_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_66_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_66_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_66_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_66_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_66_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==7)
    
dlmwrite('LC4-results\ij_67_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_67_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_67_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_67_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_67_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_67_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_67_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==8)
    
dlmwrite('LC4-results\ij_68_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_68_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_68_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_68_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_68_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_68_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_68_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==1)
    
dlmwrite('LC4-results\ij_71_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_71_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_71_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_71_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_71_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_71_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_71_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==2)
    
dlmwrite('LC4-results\ij_72_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_72_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_72_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_72_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_72_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_72_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_72_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==3)
    
dlmwrite('LC4-results\ij_73_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_73_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_73_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_73_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_73_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_73_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_73_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==4)
    
dlmwrite('LC4-results\ij_74_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_74_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_74_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_74_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_74_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_74_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_74_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==5)
    
dlmwrite('LC4-results\ij_75_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_75_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_75_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_75_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_75_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_75_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_75_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==6)
    
dlmwrite('LC4-results\ij_76_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_76_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_76_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_76_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_76_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_76_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_76_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==7)
    
dlmwrite('LC4-results\ij_77_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_77_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_77_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_77_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_77_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_77_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_77_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==8)
    
dlmwrite('LC4-results\ij_78_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_78_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_78_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_78_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_78_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_78_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_78_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==8) & (j ==1)
    
dlmwrite('LC4-results\ij_81_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_81_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_81_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_81_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_81_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_81_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_81_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==8) & (j ==2)
    
dlmwrite('LC4-results\ij_82_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_82_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_82_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_82_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_82_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_82_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_82_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==8) & (j ==3)
    
dlmwrite('LC4-results\ij_83_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_83_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_83_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_83_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_83_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_83_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_83_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==8) & (j ==4)
    
dlmwrite('LC4-results\ij_84t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_84_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_84_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_84_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_84_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_84_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_84_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==8) & (j ==5)
    
dlmwrite('LC4-results\ij_85_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_85_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_85_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_85_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_85_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_85_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_85_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==8) & (j ==6)
    
dlmwrite('LC4-results\ij_86_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_86_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_86_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_86_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_86_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_86_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_86_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==8) & (j ==7)
    
dlmwrite('LC4-results\ij_87_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_87_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_87_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_87_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_87_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_87_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_87_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==8) & (j ==8)
    
dlmwrite('LC4-results\ij_88_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_88_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_88_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_88_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_88_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_88_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmwrite('LC4-results\ij_88_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

end  % if statement


  end % end j loop
end % end i loop