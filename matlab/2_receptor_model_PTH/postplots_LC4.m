tau_on = [0.17,0.5,1,2,4,8,16,24]*3600;
tau_off =[0.17,0.5,1,2,4,8,16,24]*3600;

%
% read model input parameters
%
model_para = load('input_parameters.dat');

R_T = model_para(10); % total # of receptors


for i=1:length(tau_on)
    for j=1:length(tau_off)
    pi_1{j+(i-1)*length(tau_on)}  =  (Ra_loadcase{j+(i-1)*length(tau_on)} + Ca_loadcase{j+(i-1)*length(tau_on)}) ./ R_T;
    pi_2{j+(i-1)*length(tau_on)}  =  (Ca_loadcase{j+(i-1)*length(tau_on)}) ./ R_T;
    end
end


for i=1:length(tau_on)
    for j=1:length(tau_off)
    pi_mean_1(i,j)=mean(pi_1{j+(i-1)*length(tau_on)});
    pi_mean_2(i,j)=mean(pi_2{j+(i-1)*length(tau_on)});
    PTH_mean(i,j)=mean(c_PTH_mean{j+(i-1)*length(tau_on)});
    end
end



%
% plot mean PTH
%
PTH_mean_1j  = [PTH_mean(1,1) PTH_mean(1,2) PTH_mean(1,3) PTH_mean(1,4) PTH_mean(1,5) PTH_mean(1,6) PTH_mean(1,7) PTH_mean(1,8)];
PTH_mean_2j  = [PTH_mean(2,1) PTH_mean(2,2) PTH_mean(2,3) PTH_mean(2,4) PTH_mean(2,5) PTH_mean(2,6) PTH_mean(2,7) PTH_mean(2,8)];
PTH_mean_3j  = [PTH_mean(3,1) PTH_mean(3,2) PTH_mean(3,3) PTH_mean(3,4) PTH_mean(3,5) PTH_mean(3,6) PTH_mean(3,7) PTH_mean(3,8)];
PTH_mean_4j  = [PTH_mean(4,1) PTH_mean(4,2) PTH_mean(4,3) PTH_mean(4,4) PTH_mean(4,5) PTH_mean(4,6) PTH_mean(4,7) PTH_mean(4,8)];
PTH_mean_5j  = [PTH_mean(5,1) PTH_mean(5,2) PTH_mean(5,3) PTH_mean(5,4) PTH_mean(5,5) PTH_mean(5,6) PTH_mean(5,7) PTH_mean(5,8)];
PTH_mean_6j  = [PTH_mean(6,1) PTH_mean(6,2) PTH_mean(6,3) PTH_mean(6,4) PTH_mean(6,5) PTH_mean(6,6) PTH_mean(6,7) PTH_mean(6,8)];
PTH_mean_7j  = [PTH_mean(7,1) PTH_mean(7,2) PTH_mean(7,3) PTH_mean(7,4) PTH_mean(7,5) PTH_mean(7,6) PTH_mean(7,7) PTH_mean(7,8)];
PTH_mean_8j  = [PTH_mean(8,1) PTH_mean(8,2) PTH_mean(8,3) PTH_mean(8,4) PTH_mean(8,5) PTH_mean(8,6) PTH_mean(8,7) PTH_mean(8,8)];

pi_mean_1_1j = [pi_mean_1(1,1) pi_mean_1(1,2) pi_mean_1(1,3) pi_mean_1(1,4) pi_mean_1(1,5) pi_mean_1(1,6) ...
                pi_mean_1(1,7) pi_mean_1(1,8)]; 
pi_mean_1_2j = [pi_mean_1(2,1) pi_mean_1(2,2) pi_mean_1(2,3) pi_mean_1(2,4) pi_mean_1(2,5) pi_mean_1(2,6) ...
                pi_mean_1(2,7) pi_mean_1(2,8)];            
pi_mean_1_3j = [pi_mean_1(3,1) pi_mean_1(3,2) pi_mean_1(3,3) pi_mean_1(3,4) pi_mean_1(3,5) pi_mean_1(3,6) ...
                pi_mean_1(3,7) pi_mean_1(3,8)];                 
pi_mean_1_4j = [pi_mean_1(4,1) pi_mean_1(4,2) pi_mean_1(4,3) pi_mean_1(4,4) pi_mean_1(4,5) pi_mean_1(4,6) ...
                pi_mean_1(4,7) pi_mean_1(4,8)]; 
pi_mean_1_5j = [pi_mean_1(5,1) pi_mean_1(5,2) pi_mean_1(5,3) pi_mean_1(5,4) pi_mean_1(5,5) pi_mean_1(5,6) ...
                pi_mean_1(5,7) pi_mean_1(5,8)];             
pi_mean_1_6j = [pi_mean_1(6,1) pi_mean_1(6,2) pi_mean_1(6,3) pi_mean_1(6,4) pi_mean_1(6,5) pi_mean_1(6,6) ...
                pi_mean_1(6,7) pi_mean_1(6,8)];                 
pi_mean_1_7j = [pi_mean_1(7,1) pi_mean_1(7,2) pi_mean_1(7,3) pi_mean_1(7,4) pi_mean_1(7,5) pi_mean_1(7,6) ...
                pi_mean_1(7,7) pi_mean_1(7,8)];                 
pi_mean_1_8j = [pi_mean_1(8,1) pi_mean_1(8,2) pi_mean_1(8,3) pi_mean_1(8,4) pi_mean_1(8,5) pi_mean_1(8,6) ...
                pi_mean_1(8,7) pi_mean_1(8,8)];                 
                               
pi_mean_2_1j = [pi_mean_2(1,1) pi_mean_2(1,2) pi_mean_2(1,3) pi_mean_2(1,4) pi_mean_2(1,5) pi_mean_2(1,6) ...
                pi_mean_2(1,7) pi_mean_2(1,8)]; 
pi_mean_2_2j = [pi_mean_2(2,1) pi_mean_2(2,2) pi_mean_2(2,3) pi_mean_2(2,4) pi_mean_2(2,5) pi_mean_2(2,6) ...
                pi_mean_2(2,7) pi_mean_2(2,8)]; 
pi_mean_2_3j = [pi_mean_2(3,1) pi_mean_2(3,2) pi_mean_2(3,3) pi_mean_2(3,4) pi_mean_2(3,5) pi_mean_2(3,6) ...
                pi_mean_2(3,7) pi_mean_2(3,8)]; 
pi_mean_2_4j = [pi_mean_2(4,1) pi_mean_2(4,2) pi_mean_2(4,3) pi_mean_2(4,4) pi_mean_2(4,5) pi_mean_2(4,6) ...
                pi_mean_2(4,7) pi_mean_2(4,8)]; 
pi_mean_2_5j = [pi_mean_2(5,1) pi_mean_2(5,2) pi_mean_2(5,3) pi_mean_2(5,4) pi_mean_2(5,5) pi_mean_2(5,6) ...
                pi_mean_2(5,7) pi_mean_2(5,8)];            
pi_mean_2_6j = [pi_mean_2(6,1) pi_mean_2(6,2) pi_mean_2(6,3) pi_mean_2(6,4) pi_mean_2(6,5) pi_mean_2(6,6) ...
                pi_mean_2(6,7) pi_mean_2(6,8)];                 
pi_mean_2_7j = [pi_mean_2(7,1) pi_mean_2(7,2) pi_mean_2(7,3) pi_mean_2(7,4) pi_mean_2(7,5) pi_mean_2(7,6) ...
                pi_mean_2(7,7) pi_mean_2(7,8)];           
pi_mean_2_8j = [pi_mean_2(8,1) pi_mean_2(8,2) pi_mean_2(8,3) pi_mean_2(8,4) pi_mean_2(8,5) pi_mean_2(8,6) ...
                pi_mean_2(8,7) pi_mean_2(8,8)];                 
                
                
                
                
                
subplot(3,1,1); plot(tau_on/3600, PTH_mean_1j,'-o'), xlabel('\tau_{off}'), ylabel('mean PTH')
hold on
subplot(3,1,1); plot(tau_on/3600, PTH_mean_2j,'-+')
subplot(3,1,1); plot(tau_on/3600, PTH_mean_3j,'-*')
subplot(3,1,1); plot(tau_on/3600, PTH_mean_4j,'-.')
subplot(3,1,1); plot(tau_on/3600, PTH_mean_5j,'-x')
subplot(3,1,1); plot(tau_on/3600, PTH_mean_6j,'-s')
subplot(3,1,1); plot(tau_on/3600, PTH_mean_7j,'-d')
subplot(3,1,1); plot(tau_on/3600, PTH_mean_8j,'-^')
%
subplot(3,1,2); plot(tau_on/3600,pi_mean_1_1j,'-o'), xlabel('\tau_{off}'), ylabel('\pi_1=(R_a+C_a)/R_T')
hold on
subplot(3,1,2); plot(tau_on/3600,pi_mean_1_2j,'-+')
subplot(3,1,2); plot(tau_on/3600,pi_mean_1_3j,'-*')
subplot(3,1,2); plot(tau_on/3600,pi_mean_1_4j,'-.')
subplot(3,1,2); plot(tau_on/3600,pi_mean_1_5j,'-x')
subplot(3,1,2); plot(tau_on/3600,pi_mean_1_6j,'-s')
subplot(3,1,2); plot(tau_on/3600,pi_mean_1_7j,'-d')
subplot(3,1,2); plot(tau_on/3600,pi_mean_1_8j,'-^')
%
subplot(3,1,3); plot(tau_on/3600,pi_mean_2_1j,'-o'), xlabel('\tau_{off}'), ylabel('\pi_2=C_a/R_T')
hold on
subplot(3,1,3); plot(tau_on/3600,pi_mean_2_2j,'-+')
subplot(3,1,3); plot(tau_on/3600,pi_mean_2_3j,'-*')
subplot(3,1,3); plot(tau_on/3600,pi_mean_2_4j,'-.')
subplot(3,1,3); plot(tau_on/3600,pi_mean_2_5j,'-x')
subplot(3,1,3); plot(tau_on/3600,pi_mean_2_6j,'-s')
subplot(3,1,3); plot(tau_on/3600,pi_mean_2_7j,'-d')
subplot(3,1,3); plot(tau_on/3600,pi_mean_2_8j,'-^')
pause
hold off


%
% cases tau_on = tau_off
plot([1 2 3 4 5 6 7 8], [PTH_mean(1,1) PTH_mean(2,2) PTH_mean(3,3) PTH_mean(4,4) PTH_mean(5,5) PTH_mean(6,6) PTH_mean(7,7) PTH_mean(8,8)])

for i=1:length(tau_on)
  for j=1:length(tau_off)
    if (i==j) 
      plot(t_loadcase{j+(i-1)*length(tau_on)},c_PTH_loadcase{j+(i-1)*length(tau_on)})   
      hold on
    end
  end
end
pause
hold off




for i=1:length(tau_on)
  for j=1:length(tau_off)


      
%   
% write out to data files which can then be read in again
%    


if (i==1) & (j ==1)       
    
t_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_11_t.dat')
c_PTH_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_11_c_PTH.dat')
Ra_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_11_Ra.dat')
Ri_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_11_Ri.dat')
Ca_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_11_Ca.dat')
Ci_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_11_Ci.dat')
c_PTH_mean{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_11_c_PTH_mean.dat')

elseif (i==1) & (j ==2)
    
t_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_12_t.dat')
c_PTH_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_12_c_PTH.dat')
Ra_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_12_Ra.dat')
Ri_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_12_Ri.dat')
Ca_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_12_Ca.dat')
Ci_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_12_Ci.dat')
c_PTH_mean{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_12_c_PTH_mean.dat')   
    
elseif (i==1) & (j ==3)
    
t_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_13_t.dat')
c_PTH_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_13_c_PTH.dat')
Ra_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_13_Ra.dat')
Ri_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_13_Ri.dat')
Ca_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_13_Ca.dat')
Ci_loadcase{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_13_Ci.dat')
c_PTH_mean{j+(i-1)*length(tau_on)}= dlmread('LC4-results\ij_13_c_PTH_mean.dat')

elseif (i==1) & (j ==4)
    
dlmread('LC4-results\ij_14_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_14_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_14_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_14_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_14_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_14_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_14_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==1) & (j ==5)
    
dlmread('LC4-results\ij_15_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_15_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_15_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_15_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_15_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_15_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_15_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==1) & (j ==6)
    
dlmread('LC4-results\ij_16_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_16_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_16_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_16_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_16_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_16_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_16_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)


elseif (i==1) & (j ==7)
    
dlmread('LC4-results\ij_17_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_17_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_17_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_17_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_17_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_17_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_17_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==1)
    
dlmread('LC4-results\ij_21_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_21_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_21_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_21_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_21_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_21_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_21_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==2)
    
dlmread('LC4-results\ij_22_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_22_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_22_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_22_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_22_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_22_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_22_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==3)
    
dlmread('LC4-results\ij_23_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_23_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_23_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_23_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_23_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_23_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_23_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==4)
    
dlmread('LC4-results\ij_24_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_24_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_24_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_24_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_24_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_24_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_24_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==5)
    
dlmread('LC4-results\ij_25_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_25_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_25_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_25_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_25_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_25_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_25_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==6)
    
dlmread('LC4-results\ij_26_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_26_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_26_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_26_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_26_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_26_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_26_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==2) & (j ==7)
    
dlmread('LC4-results\ij_27_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_27_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_27_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_27_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_27_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_27_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_27_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==1)
    
dlmread('LC4-results\ij_31_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_31_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_31_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_31_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_31_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_31_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_31_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==2)
    
dlmread('LC4-results\ij_32_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_32_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_32_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_32_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_32_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_32_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_32_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==3)
    
dlmread('LC4-results\ij_33_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_33_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_33_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_33_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_33_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_33_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_33_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==4)
    
dlmread('LC4-results\ij_34_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_34_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_34_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_34_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_34_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_34_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_34_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==5)
    
dlmread('LC4-results\ij_35_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_35_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_35_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_35_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_35_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_35_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_35_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==3) & (j ==6)
    
dlmread('LC4-results\ij_36_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_36_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_36_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_36_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_36_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_36_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_36_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==1)
    
dlmread('LC4-results\ij_41_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_41_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_41_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_41_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_41_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_41_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_41_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==2)
    
dlmread('LC4-results\ij_42_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_42_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_42_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_42_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_42_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_42_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_42_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==3)
    
dlmread('LC4-results\ij_43_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_43_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_43_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_43_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_43_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_43_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_43_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==4)
    
dlmread('LC4-results\ij_44_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_44_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_44_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_44_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_44_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_44_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_44_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==5)
    
dlmread('LC4-results\ij_45_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_45_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_45_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_45_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_45_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_45_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_45_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==6)
    
dlmread('LC4-results\ij_46_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_46_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_46_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_46_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_46_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_46_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_46_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==4) & (j ==7)
    
dlmread('LC4-results\ij_47_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_47_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_47_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_47_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_47_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_47_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_47_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==1)
    
dlmread('LC4-results\ij_51_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_51_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_51_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_51_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_51_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_51_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_51_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==2)
    
dlmread('LC4-results\ij_52_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_52_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_52_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_52_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_52_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_52_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_52_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==3)
    
dlmread('LC4-results\ij_53_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_53_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_53_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_53_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_53_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_53_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_53_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==4)
    
dlmread('LC4-results\ij_54_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_54_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_54_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_54_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_54_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_54_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_54_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==5)
    
dlmread('LC4-results\ij_55_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_55_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_55_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_55_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_55_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_55_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_55_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==6)
    
dlmread('LC4-results\ij_56_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_56_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_56_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_56_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_56_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_56_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_56_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==5) & (j ==7)
    
dlmread('LC4-results\ij_57_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_57_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_57_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_57_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_57_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_57_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_57_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==1)
    
dlmread('LC4-results\ij_61_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_61_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_61_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_61_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_61_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_61_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_61_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==2)
    
dlmread('LC4-results\ij_62_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_62_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_62_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_62_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_62_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_62_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_62_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==3)
    
dlmread('LC4-results\ij_63_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_63_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_63_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_63_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_63_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_63_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_63_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==4)
    
dlmread('LC4-results\ij_64_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_64_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_64_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_64_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_64_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_64_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_64_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==5)
    
dlmread('LC4-results\ij_65_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_65_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_65_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_65_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_65_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_65_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_65_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==6)
    
dlmread('LC4-results\ij_66_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_66_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_66_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_66_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_66_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_66_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_66_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==6) & (j ==7)
    
dlmread('LC4-results\ij_67_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_67_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_67_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_67_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_67_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_67_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_67_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==1)
    
dlmread('LC4-results\ij_71_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_71_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_71_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_71_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_71_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_71_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_71_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==2)
    
dlmread('LC4-results\ij_72_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_72_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_72_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_72_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_72_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_72_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_72_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==3)
    
dlmread('LC4-results\ij_73_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_73_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_73_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_73_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_73_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_73_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_73_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==4)
    
dlmread('LC4-results\ij_74_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_74_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_74_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_74_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_74_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_74_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_74_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==5)
    
dlmread('LC4-results\ij_75_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_75_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_75_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_75_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_75_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_75_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_75_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==6)
    
dlmread('LC4-results\ij_76_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_76_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_76_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_76_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_76_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_76_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_76_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

elseif (i==7) & (j ==7)
    
dlmread('LC4-results\ij_77_t.dat',t_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_77_c_PTH.dat',c_PTH_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_77_Ra.dat',Ra_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_77_Ri.dat',Ri_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_77_Ca.dat',Ca_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_77_Ci.dat',Ci_loadcase{j+(i-1)*length(tau_on)},'precision',14)
dlmread('LC4-results\ij_77_c_PTH_mean.dat',c_PTH_mean{j+(i-1)*length(tau_on)},'precision',14)

end  % if statement


  end % end j loop
end % end i loop




%
% create plots
%

%
% PTH - time plots
%
i = 1 
j = 1
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ra_loadcase{j+(i-1)*length(tau_on)},'-'), xlabel('t'), ylabel('concentration receptors')
hold on
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ri_loadcase{j+(i-1)*length(tau_on)},'--')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ca_loadcase{j+(i-1)*length(tau_on)}*1.0e+2,'.')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ci_loadcase{j+(i-1)*length(tau_on)},'-.')
h = legend('R_a','R_i','C_a*100','C_i',1);
pause
hold off


for i=1:length(tau_on)
  for j=1:length(tau_off)
   

%
% PTH - time plots
%
      
      
      
      
%
% Plot receptor states
%
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ra_loadcase{j+(i-1)*length(tau_on)},'-'), xlabel('t'), ylabel('concentration receptors')
hold on
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ri_loadcase{j+(i-1)*length(tau_on)},'--')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ca_loadcase{j+(i-1)*length(tau_on)}*1.0e+2,'.')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ci_loadcase{j+(i-1)*length(tau_on)},'-.')
h = legend('R_a','R_i','C_a*100','C_i',1);
pause
hold off
%
% plot PTH concentration
% mean and deviation
%
hl1 = line(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'Color','r');
ax1 = gca;
set(ax1,'XColor','r','YColor','r')
%xlabel('t [hours]'), ylabel('PTH concnetration')
ax2 = axes('Position',get(ax1,'Position'),...
           'XAxisLocation','bottom',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
%ylabel('C_a concentration')
hl2 = line(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ca_loadcase{j+(i-1)*length(tau_on)},'Color','k','Parent',ax2);
pause 
hold off

hl1 = plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'Color','r'), xlabel('t [hours]'), ylabel('PTH concnetration');
ax1 = gca;
set(ax1,'XColor','r','YColor','r')
%xlabel('t [hours]'), ylabel('PTH concnetration')
ax2 = axes('Position',get(ax1,'Position'),...
           'XAxisLocation','bottom',...
           'YAxisLocation','right',...
           'Color','none',...
           'XColor','k','YColor','k');
hl2 = plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ca_loadcase{j+(i-1)*length(tau_on)},'Color','k','Parent',ax2), ylabel('C_a concentration');
pause 
hold off



plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
hold on
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_mean{j+(i-1)*length(tau_on)},'-.'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_tilde{j+(i-1)*length(tau_on)},'.'), xlabel('t [hours]'), ylabel('PTH concentration [pM]')
pause
hold off
%
% plot total concentration of receptor 
%
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,R_tot{j+(i-1)*length(tau_on)},'-'), xlabel('t [hours]'), ylabel('total receptor #')
pause
hold off
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

  end
end