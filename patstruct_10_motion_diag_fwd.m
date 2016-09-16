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

slow_vec_L    = repmat(create_posvec(1,16,6, 0), [1 100]);
med_vec_L     = repmat(create_posvec(1,16,3, 0), [1 100]);
fast_vec_L    = repmat(create_posvec(1,16,1, 0), [1 100]);

slow_vec_R    = repmat(fliplr(create_posvec(1,16,6, 0)), [1 100]);
med_vec_R     = repmat(fliplr(create_posvec(1,16,3, 0)), [1 100]);
fast_vec_R    = repmat(fliplr(create_posvec(1,16,1, 0)), [1 100]);

%% L diag fwd bar wf,  slow 
stim(43).name = 'motion_wf_diag_fwd_L_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% L diag fwd bar wf,  medium 
stim(44).name = 'motion_wf_diag_fwd_L_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% L diag fwd bar wf, fast 
stim(45).name = 'motion_wf_diag_fwd_L_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;

%% R diag fwd bar wf, slow 
stim(43).name = 'motion_wf_diag_fwd_R_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% R diag fwd bar wf,  medium 
stim(44).name = 'motion_wf_diag_fwd_R_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% R diag fwd bar wf, fast 
stim(45).name = 'motion_wf_diag_fwd_R_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;

%% L diag fwd bar L side, slow left motion
stim(43).name = 'motion_L_diag_fwd_L_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% L diag fwd bar L side, medium left motion
stim(44).name = 'motion_L_diag_fwd_L_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% L diag fwd bar L side, fast left motion
stim(45).name = 'motion_L_diag_fwd_L_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;

%% R diag fwd bar L side, slow, right motion
stim(43).name = 'motion_L_diag_fwd_R_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% L diag fwd bar medium, right motion
stim(44).name = 'motion_L_diag_fwd_R_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% L diag fwd bar fast, right motion
stim(45).name = 'motion_L_diag_fwd_R_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;


%% diag fwd bar R side, slow left motion
stim(43).name = 'motion_R_diag_fwd_L_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% diag fwd bar R side, medium left motion
stim(44).name = 'motion_R_diag_fwd_L_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% diag fwd bar R side, fast left motion
stim(45).name = 'motion_R_diag_fwd_L_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;

%% diag fwd bar R side, slow, right motion
stim(43).name = 'motion_R_diag_fwd_R_0.5_hz';
stim(43).num = 43;
stim(43).pat_id = ????
stim(43).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(43).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(43).type = 'position';
stim(43).time = length(stim(43).xpos_vec)/50;

%% diag fwd bar R side mediu right motion
stim(44).name = 'motion_R_diag_fwd_R_1_hz';
stim(44).num = 44;
stim(44).pat_id = ????
stim(44).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(44).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(44).type = 'position';
stim(44).time = length(stim(44).xpos_vec)/50;

%% diag fwd bar R side, fast right motion
stim(45).name = 'motion_R_diag_fwd_R_3_hz';
stim(45).num = 44;
stim(45).pat_id = ????
stim(45).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(45).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(45).type = 'position';
stim(45).time = length(stim(44).xpos_vec)/50;



