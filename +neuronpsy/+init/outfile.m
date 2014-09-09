function out_file = outfile()
% Generate output filename
% ====
% Input >>
% String: file directory path
% Struct: handles of user data, here we use the session and session_no info
% ====
% Output >>
% String: file name of output file
% ====
% Last md: 2013-6-21, WY
global handles EXP
out_dir = EXP.dir;

if ~exist(out_dir,'dir')
    e=MException('EXP:FILE:nodir','Directory %s not exist',out_dir);
    throw(e);
else
mon_id=Cus_Get_current_mon_id(handles);
% set the session num as user input
file_index=str2num(get(handles.session_no,'string'));
while true
    out_file=strcat(out_dir,'\',mon_id,'_',handles.exp_name,'_',datestr(now,'yymmdd-HHMMSS'),'_',get(handles.session,'string'),'_',num2str(file_index),'.nev');
    if exist(out_file,'file')
        % exist same name file
        file_index=file_index+1;
    else
        % new file name
        break;
    end
end
% update the file name
set(handles.session_no,'String',num2str(file_index));
set(handles.filename,'String',out_file);

end

end

