
tau_on  = [1,2];
tau_off = [10,20];
dept    = [100,200,300,400];

LC=1;

%
%
% dual counter
if LC ==1 

for i=1:length(tau_on)
  for j=1:length(tau_off)
      
      
          j+(i-1)*length(tau_on)
          
     % test{k+(j-1)*length(tau_on)+(i-1)*length(tau_on)}
      
      
  end 
end 

elseif LC ==2
    
for i=1:length(tau_on)
  for j=1:length(tau_off)
      for k=1:length(dept)
      
          k+(j-1)*length(tau_on)+(i-1)*length(tau_on)
          
     % test{k+(j-1)*length(tau_on)+(i-1)*length(tau_on)}
      
      end 
  end 
end 

end 