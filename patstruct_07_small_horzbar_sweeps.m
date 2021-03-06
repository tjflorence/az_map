%{
    
    Make master struct for presentations of visual stimuli
    in central cx mapping experiment
   
    struct is of the form

    stim.name
    stim.num
    stim.pat_id
    stim.xpos_vec
    stim.ypos_vec
    stim.type = 'motion' or 'pos'
    stim.time
    
%}
prestim_time    = 3;
poststim_time   = 2;
motion_stim_time = 10;

%% horz off bar slow 
stim(40).name = 'smallbar_horz_off_30_dps';
stim(40).num = 40;
stim(40).pat_id = 16;
stim(40).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 28, 6, 1)))...
                        9*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        17*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        25*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        33*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        41*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        49*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        57*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        65*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        73*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        81*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        89*ones(1,  length(create_posvec(1, 28, 6, 1)))...                      
                        nan(1, prestim_time*50)];
                                        
stim(40).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 28, 6, 1)... 
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        nan(1, prestim_time*50)];
                    
stim(40).type = 'position';
stim(40).time = length(stim(40).xpos_vec)/50;

%% horz off bar medium 
stim(41).name = 'smallbar_horz_off_60_dps';
stim(41).num = 41;
stim(41).pat_id = 16;
stim(41).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 28, 3, 1)))...
                        9*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        17*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        25*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        33*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        41*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        49*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        57*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        65*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        73*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        81*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        89*ones(1,  length(create_posvec(1, 28, 3, 1)))...                      
                        nan(1, prestim_time*50)];
                                        
stim(41).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        nan(1, prestim_time*50)];
                    
stim(41).type = 'position';
stim(41).time = length(stim(41).xpos_vec)/50;

%% horz off bar fast 
stim(42).name = 'smallbar_horz_off_180_dps';
stim(42).num = 42;
stim(42).pat_id = 16;
stim(42).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 28, 1, 1)))...
                        9*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        17*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        25*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        33*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        41*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        49*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        57*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        65*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        73*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        81*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        89*ones(1,  length(create_posvec(1, 28, 1, 1)))...                      
                        nan(1, prestim_time*50)];
                                        
stim(42).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 28, 1, 1)... 
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        nan(1, prestim_time*50)];
                    
stim(42).type = 'position';
stim(42).time = length(stim(42).xpos_vec)/50;

%% horz on bar slow 
stim(43).name = 'smallbar_horz_on_30_dps';
stim(43).num = 43;
stim(43).pat_id = 17;
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 28, 6, 1)))...
                        9*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        17*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        25*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        33*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        41*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        49*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        57*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        65*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        73*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        81*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        89*ones(1,  length(create_posvec(1, 28, 6, 1)))...                      
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 28, 6, 1)... 
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% horz on bar medium 
stim(44).name = 'smallbar_horz_on_60_dps';
stim(44).num = 44;
stim(44).pat_id = 17;
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 28, 3, 1)))...
                        9*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        17*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        25*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        33*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        41*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        49*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        57*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        65*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        73*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        81*ones(1,  length(create_posvec(1, 28, 3, 1)))...
                        89*ones(1,  length(create_posvec(1, 28, 3, 1)))...                      
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 28, 3, 1)... 
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        create_posvec(1, 28, 3, 1)...
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% horz on bar fast 
stim(45).name = 'smallbar_horz_on_180_dps';
stim(45).num = 45;
stim(45).pat_id = 17;
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 28, 1, 1)))...
                        9*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        17*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        25*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        33*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        41*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        49*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        57*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        65*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        73*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        81*ones(1,  length(create_posvec(1, 28, 1, 1)))...
                        89*ones(1,  length(create_posvec(1, 28, 1, 1)))...                      
                        nan(1, prestim_time*50)];
                                        
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 28, 1, 1)... 
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        create_posvec(1, 28, 1, 1)...
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(45).xpos_vec)/50;



