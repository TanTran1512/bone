%
%
%
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

R_T = model_para(10); % total # receptors 

%
% One state receptor model
k_5 = 2.0e-2;  % k_5 ... [pM^{-1}day^{-1}] rate of PTH binding to its receptor %
k_6 = 3.0e+0;  % k_6 ... [day^{-1}] rate of PTH unbinding with its receptor    %

%k1f = k_5;
%k1r = k_6;

D0=5;
D(1)=5;
for i=1:500
 D(i+1)=D(i)+D0;
end




for i=1:length(D)

Kr = k1r/k1f;
Kd = k2r/k2f;
K1 = k3r/k3f;


%
% steady states
% 
% define A matrix
a11 = k1r-k3f;
a12 = -k3f;
a13 = -(k1f*D(i)+k3r+k3f);
a21 = -(k1r+k4r);
a22 = k4f;
a23 = k1f*D(i);
a31 = k4r-k2f*D(i);
a32 = -(k2r+k4f+k2f*D(i));
a33 = -k2f*D(i);
f1 = -k3f*R_T;
f2 = 0;
f3 = -k2f*R_T*D(i); 
%
% define F and A
A = [a11 a12 a13;a21 a22 a23;a31 a32 a33];
F = [f1; f2; f3];
%
% solve equation
%
x=inv(A)*F;

%
% assign values
%
Ca(i) = x(1);
Ci(i) = x(2);
Ra(i) = x(3);
Ri(i) = R_T - Ca(i) - Ci(i) - Ra(i);

end

subplot(2,2,1); plot(D,Ca),xlabel('PTH'), ylabel('C_a')
subplot(2,2,2); plot(D,Ci), xlabel('PTH'),ylabel('C_i')
subplot(2,2,3); plot(D,Ra), xlabel('PTH'),ylabel('R_a')
subplot(2,2,4); plot(D,Ri), xlabel('PTH'),ylabel('R_i')
pause
hold off

rho1 = (Ra+Ca)/R_T;
rho2 = (Ca)/R_T;

subplot(2,1,1); plot(D,rho1),xlabel('PTH'), ylabel('\rho_1')
subplot(2,1,2); plot(D,rho2),xlabel('PTH'), ylabel('\rho_2')
pause
hold off

%
% solution from other paper!
%

r0 = 1/((Kd+D)/(K1*Kd)+(Kr+D)/Kr)
x0 = D*r0/Kr
y0 = D*(1-(Kr+D)/Kr*r0)/(Kd+D)
d0 = 1- r0 - x0 - y0

Ra_x = r0*R_T
Ri_x = d0*R_T
Ca_x = x0*R_T
Ci_x = y0*R_T

