function comment_str=str2comment(name,value)
% Generate the string of comment by name and value 
% ====
% Input >>
% String: name of this parameter
% String/Num: value of this parameter
% ====
% Output >>
% String: the formated string
% ====
% Last md: 2013-6-24, WY

if ~ischar(value)
    value=num2str(value);
    n_rows = size(value,1);
	if n_rows>1
        new_val = value(1,:);
        for i = 2:n_rows
            new_val = strcat(new_val,';',value(i,:));
        end
        value = new_val;
	end
    %value=sprintf('%0.4f',value);
end

comment_str=strcat('<',name,'>',value);
end

