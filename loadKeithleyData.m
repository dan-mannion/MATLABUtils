function data = loadKeithleyData(fname, sheet, range)
if nargin == 1
    sheet = 'Data';
    range = 'A:B';
end
data = xlsread(fname, sheet,range);
end