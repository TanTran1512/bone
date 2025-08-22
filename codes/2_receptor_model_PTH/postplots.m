tau_on = [0.17,0.5,1,2,4,8,16,24]*3600;
tau_off =[0.17,0.5,1,2,4,8,16,24]*3600;

%
% PTH - time plots
%
i = 1; % tau_on index
j = 1; % tau_off index
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'-'), xlabel('tine [hours]'), ylabel('PTH concentration')
hold on
i = 2; 
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'--')
i=3;
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'.')
i=4;
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_loadcase{j+(i-1)*length(tau_on)},'-.')
h = legend('\tau_{on}/\tau_{off}=1','2','3','4',1);
pause
hold off


i = 1; % tau_on index
j = 1; % tau_off index
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_mean{j+(i-1)*length(tau_on)},'-'), xlabel('time [hours]'), ylabel('mean PTH concentration')
hold on
i = 2; 
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_mean{j+(i-1)*length(tau_on)},'--')
i=3;
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_mean{j+(i-1)*length(tau_on)},'.')
i=4;
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,c_PTH_mean{j+(i-1)*length(tau_on)},'-.')
h = legend('\tau_{on}/\tau_{off}=1','2','3','4',1);
pause
hold off

%
% print PTH mean values
i = 1; % tau_on index
j = 1; % tau_off index
a11 = c_PTH_mean{j+(i-1)*length(tau_on)}(1);
j=2;
a12 = c_PTH_mean{j+(i-1)*length(tau_on)}(1);
j=3;
a13 = c_PTH_mean{j+(i-1)*length(tau_on)}(1);
j=4;
a14 = c_PTH_mean{j+(i-1)*length(tau_on)}(1);
j=5;
a15 = c_PTH_mean{j+(i-1)*length(tau_on)}(1);
j=6;
a16 = c_PTH_mean{j+(i-1)*length(tau_on)}(1);
j=7;
a17 = c_PTH_mean{j+(i-1)*length(tau_on)}(1);
j=8;
a18 = c_PTH_mean{j+(i-1)*length(tau_on)}(1);
a = [a11 a12 a13 a14 a15 a16 a17 a18]

pause


plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ri_loadcase{j+(i-1)*length(tau_on)},'--')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ca_loadcase{j+(i-1)*length(tau_on)}*1.0e+2,'.')
plot(t_loadcase{j+(i-1)*length(tau_on)}/3600,Ci_loadcase{j+(i-1)*length(tau_on)},'-.')
h = legend('R_a','R_i','C_a*100','C_i',1);
pause
hold off



for i=1:4
  for j=1:7
   
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