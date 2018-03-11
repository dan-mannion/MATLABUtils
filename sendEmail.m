function sendEmail(subject, message, to)
%SENDEMAIL (recipiant, subject, message) Sends a email via desktoip Outlook
%application. Uses the default profile. If no recipiant set then sends to daniel.mannion.13 by default. 
if~exist('to','var')
    to = 'daniel.mannion.13@ucl.ac.uk';
end
h = actxserver('outlook.Application');

mail = h.CreateItem('olMail');
mail.Subject = subject;
mail.To = to;
mail.Body = message;

mail.Send
h.release;
end