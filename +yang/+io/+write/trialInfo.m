function trialInfo(iTrial,nBlock,behavior)
% Write trialInfo in the NEV, including the event
global CV FLAG
yang.io.write.comment(yang.util.str2comment('error_type',FLAG.error_type),...
    CV.COMMENT_ERROR_TYPE);

yang.io.write.comment(yang.util.str2comment('i_trial',iTrial),...
    CV.COMMENT_INDEX);
yang.io.write.comment(yang.util.str2comment('n_block',nBlock),...
    CV.COMMENT_INDEX);


names = fieldnames(behavior);
for i=1:length(names)
    name = names{i};
    yang.io.write.comment(yang.util.str2comment(name,behavior.(name)),...
        CV.COMMENT_BEHAVIOR);
end
end

