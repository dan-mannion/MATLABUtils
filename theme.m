function theme(fh)
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

%Apply axes themes
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
    cols = ["black","red","blue","orange"];
    for j = 1:length(faxes(i).Children)
        temp = faxes(i).Children(j);
        switch class(temp)
            case  'matlab.graphics.chart.primitive.Line'
                temp.Color = char(cols(j));
                temp.LineWidth = 1.2;
            case 'matlab.graphics.chart.primitive.Histogram'
                h=faxes(i).Children(j);
                h.FaceColor = char(cols(j));
                
            case 'matlab.graphics.primitive.Text'
                %Font sizes
                temp(i).FontSize = 11;
                % faxes.FontWeight = 'bold';
                temp(i).FontName = FONT;
        end
    end
    
end

%Apply theme to legends
for i = 1:length(flegends)
    flegend(i).Interpreter = 'latex';
end
drawnow;
end