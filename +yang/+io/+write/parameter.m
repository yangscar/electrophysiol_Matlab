function parameter(global_setting,this_exp_setting,cond_header,cond_index)
% Write the header in the NEV, include the main parameters
% ====
% Input >>
% Struct: basic setting
% Struct: parameters for this experiment
% ====
% Last md: 2013-6-24, WY
% TODO >>
global CV
fields_global_setting=fieldnames(global_setting);
fields_this_exp_setting=fieldnames(this_exp_setting);
%pause(0.1);

% write the global setting
for i=1:length(fields_global_setting)
    name=fields_global_setting{i};
    str=yang.util.str2comment(name,global_setting.(name));
    yang.io.write.comment(str,CV.COMMENT_HEADER);
    
end

% write this exp setting
for i=1:length(fields_this_exp_setting)
    name=fields_this_exp_setting{i};
    str=yang.util.str2comment(name,this_exp_setting.(name));
    yang.io.write.comment(str,CV.COMMENT_HEADER);
end

% write condition header list
write_condition_header(cond_header);
% write the condition table
write_condition_table(cond_index);

end

function write_condition_header(cond_header)
% Write the header list of condition table in the NEV
% ====
% Input >>
% String Cell: condition header list
% ====
% Author: Wang Yang
% 2013-6-28
% TODO >>
global CV
n_header=length(cond_header);
for i=1:n_header
    name=num2str(i);
    yang.io.write.comment(yang.util.str2comment(name,cond_header{i}),...
        CV.COMMENT_CONDITION_HEADER);
end
end

function write_condition_table(cond_index)
% Write the header in the NEV, include the main parameters
% ====
% Input >>
% Num: condition index table
%      ROW: different combination
%      Column: different condition
% ====
% Last md: 2013-6-24, WY
% TODO >>
global CV
for i=1:length(cond_index(:,1))
    name=num2str(i);
    yang.io.write.comment(yang.util.str2comment(name,cond_index(i,:)),...
        CV.COMMENT_CONDITION_TABLE);
end
end





