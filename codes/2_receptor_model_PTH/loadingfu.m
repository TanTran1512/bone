t0=0.1
t(1)=0
for k=1:99
    t(k+1)=t(k)+t0;
end    


DPTH_set = 7.5;
tau_on = 0.5;
tau_off = 0.5;


for k=1:100

t_ratio=t(k)/(tau_on+tau_off);
j=  floor(t_ratio)+1;
if (t(k) >=(j-1)*(tau_on+tau_off)) & (t(k) <= j*tau_on+(j-1)*tau_off)
   DPTH(k) = DPTH_set;   
elseif (t(k) >= j*tau_on + (j-1)*tau_off) & (t(k) <= j*(tau_on+ tau_off))
   DPTH(k) = 0.00;
%else
%   DPTH(k) = 'error'
%   stop
end 

end

plot(t,DPTH)