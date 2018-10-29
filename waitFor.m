%%waitFor (delay)
%Waits for 'delay' minutes. Gives output to console indicating time left
%must be integer
function waitFor(delay)

for m = 0:floor(delay)-1
    if(mod(m, 5)==0)
      fprintf('\nWaiting:\t%d/%d mins\n',m, floor(delay));
    end
   pause(60);   
   fprintf('#',m, floor(delay));
end
fprintf('\n');
end