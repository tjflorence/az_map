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
stim(118).name = 'motion_SBD_L_0.5_hz';
stim(118).num = 118;
stim(118).pat_id = 30;
stim(118).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(118).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(118).type = 'position';
stim(118).time = length(stim(115).xpos_vec)/50;

%% SBD, medium L motion
stim(119).name = 'motion_SBD_L_1_hz';
stim(119).num = 119;
stim(119).pat_id = 30;
stim(119).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(119).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(119).type = 'position';
stim(119).time = length(stim(119).xpos_vec)/50;

%% SBD, fast L motion
stim(120).name = 'motion_SBD_L_3_hz';
stim(120).num = 120;
stim(120).pat_id = 30;
stim(120).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(120).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(120).type = 'position';
stim(120).time = length(stim(120).xpos_vec)/50;

%% SBD,  slow R motion
stim(121).name = 'motion_SBD_R_0.5_hz';
stim(121).num = 121;
stim(121).pat_id = 30;
stim(121).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(121).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(121).type = 'position';
stim(121).time = length(stim(121).xpos_vec)/50;

%% SBD, medium R motion
stim(122).name = 'motion_SBD_R_1_hz';
stim(122).num = 122;
stim(122).pat_id = 30;
stim(122).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(122).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(122).type = 'position';
stim(122).time = length(stim(122).xpos_vec)/50;

%% SBD, fast R motion
stim(123).name = 'motion_SBD_R_3_hz';
stim(123).num = 123;
stim(123).pat_id = 30;
stim(123).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(123).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(123).type = 'position';
stim(123).time = length(stim(123).xpos_vec)/50;


%% SBD flipped,  slow L motion
stim(124).name = 'motion_SBD_flipped_L_0.5_hz';
stim(124).num = 124;
stim(124).pat_id = 31;
stim(124).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(124).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(124).type = 'position';
stim(124).time = length(stim(124).xpos_vec)/50;

%% SBD flipped, medium L motion
stim(125).name = 'motion_SBD_flipped_L_1_hz';
stim(125).num = 125;
stim(125).pat_id = 31;
stim(125).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(125).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(125).type = 'position';
stim(125).time = length(stim(125).xpos_vec)/50;

%% SBD flipped, fast L motion
stim(126).name = 'motion_SBD_flipped_L_3_hz';
stim(126).num = 126;
stim(126).pat_id = 31;
stim(126).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(126).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(126).type = 'position';
stim(126).time = length(stim(126).xpos_vec)/50;

%% SBD,  slow R motion
stim(127).name = 'motion_SBD_flipped_R_0.5_hz';
stim(127).num = 127;
stim(127).pat_id = 31;
stim(127).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(127).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(127).type = 'position';
stim(127).time = length(stim(127).xpos_vec)/50;

%% SBD, medium R motion
stim(128).name = 'motion_SBD_flipped_R_1_hz';
stim(128).num = 128;
stim(128).pat_id = 31;
stim(128).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(128).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(128).type = 'position';
stim(128).time = length(stim(128).xpos_vec)/50;

%% SBD, fast R motion
stim(129).name = 'motion_SBD_flipped_R_3_hz';
stim(129).num = 126;
stim(129).pat_id = 31;
stim(129).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(129).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(129).type = 'position';
stim(129).time = length(stim(129).xpos_vec)/50;
