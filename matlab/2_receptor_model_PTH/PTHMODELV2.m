function xdot = PTHMODELV2(t,x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% addpath('D:\FEMLAB\femlab-peter\bone models\model - pth receptor')
%
% Dynamic Modeling of interaction between PTH and PTH receptor 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% initialize xdot
%
xdot = zeros(4,1);

%
% define your variables
%
P   = x(1);   % PTH concentration
Ra  = x(2);   % active PTHr
Ca  = x(3);   % active PTH complex
Ci  = x(4);   % inactive PTH complex
% Ri  = RT- x(2)-x(3)-x(4);   % inactive PTHr - dependent variable
%
% read model input parameters
%
model_para = load('input_parameters.dat');

be = model_para(1);  % conformational selectivity 
k1D = model_para(2); % equilibrium dissociation constant 
k2D = k1D/be;        % equilibrium dissociation constant

k1r = model_para(3); % Ca dissociation
k1f = k1r/k1D;       % PTH binding to Ra

k2r = model_para(4); % Ci dissociation
k2f = k2r/k2D;       % PTH binding to Ri

k3r = model_para(5); % conversion Ra->Ri
k3f = model_para(6); % conversion Ri->Ra

k4r = model_para(7); % conversion rate for Ca->Ci
k4f = model_para(8); % conversion rate for Ci->Ca

kcl = model_para(9); % clearance rate for PTH

R_T = model_para(10); % total # of receptors

%
% Define PTH loading functions DPTH  
%
% LC=1 ... continuous loading: from initially high concentration 
%                             to low concentration  
% LC=2 ... continuous loading: from initially low concentration 
%                             to high concentration  
% LC=3 ... pulsatile loading:  heavy side function
%
% LC=4 ... similar as LC=3 with variation of ON and OFF times
%

% LC=4 ... pulsatile loading: linear loading function
%

tau_on = getappdata(0, 'tau_on');
tau_off = getappdata(0, 'tau_off');
DPTH_set = getappdata(0, 'DPTH');

%tau_on =  load('loadcase_tau_on.dat');
%tau_off = load('loadcase_tau_off.dat');
%DPTH_set    = load('loadcase_DPTH.dat');

t_ratio=t./(tau_on+tau_off);
j=  floor(t_ratio)+1;
if (t >=(j-1)*(tau_on+tau_off)) & (t <= j*tau_on+(j-1)*tau_off)
   DPTH = DPTH_set;   
elseif (t >= j*tau_on + (j-1)*tau_off) & (t <= j*(tau_on+ tau_off))
   DPTH = 0.00;
else
   DPTH = 'error'
   stop
  end 

%LC = 1;

%if  (LC==1)
%  load_case = load('input_parameters.dat');  
%  tau_on =1.0*(3600);  % on time
%  tau_off=0.0*(3600);  % off time
%  t_ratio=t./(tau_on+tau_off);
%  j=  floor(t_ratio)+1;
%  if (t >=(j-1)*(tau_on+tau_off)) & (t <= j*tau_on+(j-1)*tau_off)
%   DPTH = 7.5;   
%  elseif (t >= j*tau_on + (j-1)*tau_off) & (t <= j*(tau_on+ tau_off))
%   DPTH = 0.00;
%  else
%   DPTH = 'error'
%   stop
%  end   
%elseif (LC==2)
%  tau_on =1.0*(3600);  % on time
%  tau_off=0.0*(3600);  % off time
%  t_ratio=t./(tau_on+tau_off);
%  j=  floor(t_ratio)+1;
%  if (t >=(j-1)*(tau_on+tau_off)) & (t <= j*tau_on+(j-1)*tau_off)
%   DPTH = 0.015;   
%  elseif (t >= j*tau_on + (j-1)*tau_off) & (t <= j*(tau_on+ tau_off))
%   DPTH = 0.00;
%  else
%   DPTH = 'error'
%   stop
%end   
%elseif (LC==3) 
%  tau_on =0.5*(3600);  % on time
%  tau_off=0.5*(3600);  % off time
%  t_ratio=t./(tau_on+tau_off);
%  j=  floor(t_ratio)+1;
%  if (t >=(j-1)*(tau_on+tau_off)) & (t <= j*tau_on+(j-1)*tau_off)
%   DPTH = 7.5; %  0.015;  
%  elseif (t >= j*tau_on + (j-1)*tau_off) & (t <= j*(tau_on+ tau_off))
%   DPTH = 0.00;
%  else
%   DPTH = 'error'
%   stop
%  end 
%elseif (LC==4)
% tau_on   
%    
%elseif (LC==5) 
%  tau_on =0.1*(3600);  % on time
%  tau_off=0.1*(3600);  % off time
%  t_ratio=t./(tau_on+tau_off);
%  j=  floor(t_ratio)+1;
%  if (t >=(j-1)*(tau_on+tau_off)) & (t <= j*tau_on+(j-1)*tau_off)
%   DPTH = 0.0001*(t-((j-1)*(tau_on+tau_off))); %  0.015;  
%  elseif (t >= j*tau_on + (j-1)*tau_off) & (t <= j*(tau_on+ tau_off))
 %  DPTH = 0.00;
 % else
%   DPTH = 'error'
%   stop
%  end  
%elseif (LC==5) 
%  tau_on =0.1*(3600);  % on time
%  tau_off=0.1*(3600);  % off time
%  t_ratio=t./(tau_on+tau_off);
%  j=  floor(t_ratio)+1;
%  if (t >=(j-1)*(tau_on+tau_off)) & (t <= j*tau_on+(j-1)*tau_off)
%   DPTH = 0.0001*(t-((j-1)*(tau_on+tau_off))); %  0.015;  
%  elseif (t >= j*tau_on + (j-1)*tau_off) & (t <= j*(tau_on+ tau_off))
%   DPTH = 0.00;
%  else
%   DPTH = 'error'
%   stop
%  end    
%end


%
% Govering Differential Equation System
%
OBa = 1 ;
OBp = 1 ;

dPdt  = (k1r*Ca + k2r*Ci - k1f*Ra*P - k2f*(R_T-Ra-Ca-Ci)*P)*(OBa+OBp) - kcl*P+ DPTH;
dRadt = k1r*Ca + k3f*(R_T-Ra-Ca-Ci) - k1f*Ra*P - k3r*Ra;
%dRidt = k2r*Ci + k3r*Ra - k2f*Ri*P - k3f*;
dCadt = k1f*Ra*P + k4f*Ci - k1r*Ca - k4r*Ca;
dCidt = k2f*(R_T-Ra-Ca-Ci)*P + k4r*Ca - k2r*Ci - k4f*Ci;


% now create column vector of state derivatives

xdot = [dPdt;dRadt;dCadt;dCidt];