%{
    MOTION DIAG FWDSLASH

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

%% diag fwd bar wf,  slow left motion
stim(82).name = 'motion_wf_diag_fwd_L_0.5_hz';
stim(82).num = 82;
stim(82).pat_id = 20;
stim(82).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(82).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(82).type = 'position';
stim(82).time = length(stim(82).xpos_vec)/50;

%% diag fwd bar wf,  medium left motion
stim(83).name = 'motion_wf_diag_fwd_L_1_hz';
stim(83).num = 83;
stim(83).pat_id = 20;
stim(83).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(83).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(83).type = 'position';
stim(83).time = length(stim(83).xpos_vec)/50;

%% diag fwd bar wf, fast left motion
stim(84).name = 'motion_wf_diag_fwd_L_3_hz';
stim(84).num = 84;
stim(84).pat_id = 20;
stim(84).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(84).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(84).type = 'position';
stim(84).time = length(stim(84).xpos_vec)/50;

%% diag fwd bar wf, slow right motion
stim(85).name = 'motion_wf_diag_fwd_R_0.5_hz';
stim(85).num = 85;
stim(85).pat_id = 20;
stim(85).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(85).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(85).type = 'position';
stim(85).time = length(stim(85).xpos_vec)/50;

%% diag fwd bar wf,  medium right motion
stim(86).name = 'motion_wf_diag_fwd_R_1_hz';
stim(86).num = 86;
stim(86).pat_id = 20;
stim(86).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(86).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(86).type = 'position';
stim(86).time = length(stim(86).xpos_vec)/50;

%% diag fwd bar wf, fast right motion
stim(87).name = 'motion_wf_diag_fwd_R_3_hz';
stim(87).num = 87;
stim(87).pat_id = 20;
stim(87).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(87).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(87).type = 'position';
stim(87).time = length(stim(87).xpos_vec)/50;

%% diag fwd bar L side, slow left motion
stim(88).name = 'motion_Rside_diag_fwd_L_0.5_hz';
stim(88).num = 88;
stim(88).pat_id = 25;
stim(88).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(88).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(88).type = 'position';
stim(88).time = length(stim(88).xpos_vec)/50;

%% diag fwd bar L side, medium left motion
stim(89).name = 'motion_Rside_diag_fwd_L_1_hz';
stim(89).num = 89;
stim(89).pat_id = 25;
stim(89).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(89).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(89).type = 'position';
stim(89).time = length(stim(89).xpos_vec)/50;

%% diag fwd bar L side, fast left motion
stim(90).name = 'motion_Rside_diag_fwd_L_3_hz';
stim(90).num = 90;
stim(90).pat_id = 25;
stim(90).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(90).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(90).type = 'position';
stim(90).time = length(stim(90).xpos_vec)/50;

%% diag fwd bar L side, slow, right motion
stim(91).name = 'motion_Rside_diag_fwd_R_0.5_hz';
stim(91).num = 91;
stim(91).pat_id = 25;
stim(91).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(91).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(91).type = 'position';
stim(91).time = length(stim(91).xpos_vec)/50;

%% diag fwd bar Left side,  medium right motion
stim(92).name = 'motion_Rside_diag_fwd_R_1_hz';
stim(92).num = 92;
stim(92).pat_id = 25;
stim(92).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(92).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(92).type = 'position';
stim(92).time = length(stim(92).xpos_vec)/50;

%% diag fwd bar left side fast, right motion
stim(93).name = 'motion_Rside_diag_fwd_R_3_hz';
stim(93).num = 93;
stim(93).pat_id = 25;
stim(93).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(93).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(93).type = 'position';
stim(93).time = length(stim(93).xpos_vec)/50;

%% diag fwd bar R side, slow left motion
stim(94).name = 'motion_Lside_diag_fwd_L_0.5_hz';
stim(94).num = 94;
stim(94).pat_id = 27;
stim(94).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(94).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(94).type = 'position';
stim(94).time = length(stim(94).xpos_vec)/50;

%% diag fwd bar R side, medium left motion
stim(95).name = 'motion_Lside_diag_fwd_L_1_hz';
stim(95).num = 95;
stim(95).pat_id = 27;
stim(95).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(95).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(95).type = 'position';
stim(95).time = length(stim(95).xpos_vec)/50;

%% diag fwd bar R side, fast left motion
stim(96).name = 'motion_Lside_diag_fwd_L_3_hz';
stim(96).num = 96;
stim(96).pat_id = 27;
stim(96).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(96).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(96).type = 'position';
stim(96).time = length(stim(96).xpos_vec)/50;

%% diag fwd bar R side, slow, right motion
stim(97).name = 'motion_Lside_diag_fwd_R_0.5_hz';
stim(97).num = 97;
stim(97).pat_id = 27;
stim(97).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(97).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(97).type = 'position';
stim(97).time = length(stim(97).xpos_vec)/50;

%% diag fwd bar R side mediu right motion
stim(98).name = 'motion_Lside_diag_fwd_R_1_hz';
stim(98).num = 98;
stim(98).pat_id = 27;
stim(98).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(98).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(98).type = 'position';
stim(98).time = length(stim(98).xpos_vec)/50;

%% diag fwd bar R side, fast right motion
stim(99).name = 'motion_Lside_diag_fwd_R_3_hz';
stim(99).num = 99;
stim(99).pat_id = 27;
stim(99).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(99).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(99).type = 'position';
stim(99).time = length(stim(99).xpos_vec)/50;



