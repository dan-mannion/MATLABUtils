function sendEmail(subject, message, to, attach)
%SENDEMAIL (recipiant, subject, message) Sends a email via desktoip Outlook
%application. Uses the default profile. If no recipiant set then sends to daniel.mannion.13 by default. 
if(~ispc())%Quit if not pc
    disp("WARNING: Email not sent as detected machine is not PC. This funcion only tested for PC.");
    return
end
if~exist('to','var')
    to = 'daniel.mannion.13@ucl.ac.uk';
end
h = actxserver('outlook.Application');

mail = h.CreateItem('olMail');
mail.Subject = subject;
mail.To = to;
mail.Body = message;
if exist('attach','var')
   mail.Attachments.Add(char(strcat(pwd,'\',attach))); 
end

mail.Send;
h.release;
end