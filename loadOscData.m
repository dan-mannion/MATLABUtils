function output = loadOscData(fname)
%%LOADOSCDATA (fname)
% Loads CSV file produced by oscilloscope in 9th floor osc.

tmp = csvread(fname, 21, 0);
tmp = tmp(:,1:4);
output.time = tmp(:,1);
output.ch1 = tmp(:,2);
output.ch2 = tmp(:,3);
output.ch3 = tmp(:,4);

end


