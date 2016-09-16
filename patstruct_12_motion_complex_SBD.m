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

slow_vec_L    = repmat(create_posvec(1,96,6, 0), [1 100]);
med_vec_L     = repmat(create_posvec(1,96,3, 0), [1 100]);
fast_vec_L    = repmat(create_posvec(1,96,1, 0), [1 100]);

slow_vec_R    = repmat(fliplr(create_posvec(1,96,6, 0)), [1 100]);
med_vec_R     = repmat(fliplr(create_posvec(1,96,3, 0)), [1 100]);
fast_vec_R    = repmat(fliplr(create_posvec(1,96,1, 0)), [1 100]);

%% SBD,  slow L motion
stim(43).name = 'motion_SBD_L_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% SBD, medium L motion
stim(44).name = 'motion_SBD_L_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% SBD, fast L motion
stim(45).name = 'motion_SBD_L_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;

%% SBD,  slow R motion
stim(43).name = 'motion_SBD_R_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% SBD, medium R motion
stim(44).name = 'motion_SBD_R_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% SBD, fast R motion
stim(45).name = 'motion_SBD_R_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;


%% SBD flipped,  slow L motion
stim(43).name = 'motion_SBD_flipped_L_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% SBD flipped, medium L motion
stim(44).name = 'motion_SBD_flipped_L_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% SBD flipped, fast L motion
stim(45).name = 'motion_SBD_flipped_L_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;

%% SBD,  slow R motion
stim(43).name = 'motion_SBD_flipped_R_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% SBD, medium R motion
stim(44).name = 'motion_SBD_flipped_R_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% SBD, fast R motion
stim(45).name = 'motion_SBD_flipped_R_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;
