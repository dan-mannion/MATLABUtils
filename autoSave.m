function autoSave(fdir, name)
%%AUTOSAVE (fdir, data) Saves data with an auto increment
% to the directory fdir. Data should be a char array with the name of
% variable

tmp = name;
eval([name, '=evalin(''base'',name)']);

if(~exist(fdir,'dir'))
   mkdir(fdir); 
end

id = 0;
fname = sprintf('%s\\%04d.mat', fdir, id);
while(exist(fname, 'file'))
id = id+1;
fname = sprintf('%s\\%04d.mat', fdir, id);
end
save(fname, name);
end