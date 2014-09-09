% sample file to design a experiment

% Setting the global by default
neuronpsy.init.global;

% Setting the experiment parameters
% you may use the gui 
Example.init.gui;
% or not 
Example.init.parameters;

% run experiment

for block = 1:EXP.block
    
    try 
        Example.trial();
        % check the break command trial by trial
        neuronpsy.procedure.checkEscape();
        neuronpsy.procedure.checkBreak();
        
        % step1 show fixation alone
        neuronpsy.io.send.mark();
        neuronpsy.stim.fixation();
        
        % step2 show heading
        neuronpsy.io.send.mark();
        neuronpsy.stim.heading(); % or your Example.stim.XX()
        
        % step3 show choice
        neuronpsy.io.send.mark();
        neuronpsy.stim.choice(); % or your Example.stim.XX()
        neuronpsy.procedure.checkResponse();
        
        % step4 give reward
        neuronpsy.io.reward();
        
        % then record data
        neuronpsy.procedure.checkTrial();
        neuronpsy.io.write.trialInfo();
        neuronpsy.procedure.trialRest();
        
    catch trialException
        if neuronpsy.exception.handle(trialException)
            
        elseif Example.exception.handle(trialException)
            
        else
            
        end
    end
        Example.procedure.blockRest();
end

neuronpsy.procedure.endExperiment(); 

