function endRecord(file_name)
% End record and close cbmex 
% ====
% Input >> 
% String: file_name
% ====
% Last md: 2013-6-24, WY

cbmex('fileconfig',file_name,'',0);
cbmex('close');
end

