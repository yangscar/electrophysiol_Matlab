function comment(comments,type)
% Send comment to .nev file
% ====
% Input >>
% String: max length=127
% Num: comment type (CV.COMMENT_*)
% ====
% String format: '<name>value'
% ====
% Last md, 2013-6-24, WY

% code_type=1; % UTF
code_type=0; % ASCII
cbmex('comment',type,code_type,comments);

