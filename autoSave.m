%Auto save
data = [];
fdir = 'Test';
if(~exist(fdir,'dir'))
   mkdir(fdir); 
end

fname = sprintf('%s\\%04d', fdir, 0);
