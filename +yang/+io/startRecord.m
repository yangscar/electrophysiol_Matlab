function startRecord(file_name)
% Open cbmex interface and start record 
% ====
% Input >> 
% String: file_name
% ====
% Last md: 2013-6-24, WY
try
    cbmex('open');
    cbmex('fileconfig',file_name,'',0);
    pause(0.5);
    cbmex('fileconfig',file_name,'',0);
    cbmex('fileconfig',file_name,'',1);
catch err
    msgbox('Please open Central. @Cus_Start_record');
end

pause(0.5); % wait the GUI to response. (very slow)
end

