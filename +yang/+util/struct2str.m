function new_struct = struct2str(old_struct)
% Convert the fields of struct to string.
names = fieldnames(old_struct);
for n = 1:length(names)
    new_struct.(names{n}) = num2str(old_struct.(names{n}));
end

