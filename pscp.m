function rsp=pscp(from, username, networkDestination, to)
    certPath = 'C:\Users\Daniel\Documents\SSH\pri.ppk';
    
    cmd=sprintf('pscp -r -i "%s" %s %s@%s:%s',certPath, from, username, networkDestination, to);
    rsp=dos(cmd);
end