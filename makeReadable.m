function makeReadable(fh)
FONT='Trebuchet';
INTERPRETER='tex';
faxes = [];
flegends = [];
ftexts = [];
for i =1:length(fh.Children)
    ftemp = fh.Children(i);
    switch class(ftemp)
        case  'matlab.graphics.axis.Axes'
            faxes = [faxes, ftemp];
        case 'matlab.graphics.GraphicsPlaceholder'
            flegends = [flegends, ftemp];
        otherwise
            
    end
end


for i = 1:length(faxes)
 %Font sizes
    faxes(i).FontSize = 13;
    % faxes.FontWeight = 'bold';

    faxes(i).Title.FontSize = 18;
    faxes(i).XLabel.Interpreter = INTERPRETER;
    faxes(i).YLabel.Interpreter = INTERPRETER;
    faxes(i).Title.Interpreter = INTERPRETER;
    faxes(i).FontName = FONT;
    grid on;
end
end