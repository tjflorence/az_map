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

%% L vert bar wf,  slow 
stim(64).name = 'motion_wf_vert_L_0.5_hz';
stim(64).num = 64;
stim(64).pat_id = 19;
stim(64).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(64).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(64).type = 'position';
stim(64).time = length(stim(64).xpos_vec)/50;

%% L vert bar wf,  medium 
stim(65).name = 'motion_wf_vert_L_1_hz';
stim(65).num = 65;
stim(65).pat_id = 19;
stim(65).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(65).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(65).type = 'position';
stim(65).time = length(stim(65).xpos_vec)/50;

%% L vert bar wf, fast 
stim(66).name = 'motion_wf_vert_L_3_hz';
stim(66).num = 66;
stim(66).pat_id = 19;
stim(66).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(66).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(66).type = 'position';
stim(66).time = length(stim(66).xpos_vec)/50;

%% R vert bar wf, slow 
stim(67).name = 'motion_wf_vert_R_0.5_hz';
stim(67).num = 67;
stim(67).pat_id = 19;
stim(67).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(67).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(67).type = 'position';
stim(67).time = length(stim(67).xpos_vec)/50;

%% R vert bar wf,  medium 
stim(68).name = 'motion_wf_vert_R_1_hz';
stim(68).num = 68;
stim(68).pat_id = 19;
stim(68).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(68).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(68).type = 'position';
stim(68).time = length(stim(68).xpos_vec)/50;

%% R vert bar wf, fast 
stim(69).name = 'motion_wf_vert_R_3_hz';
stim(69).num = 69;
stim(69).pat_id = 19;
stim(69).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(69).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(69).type = 'position';
stim(69).time = length(stim(69).xpos_vec)/50;

%% L vert bar L side, slow left motion
stim(70).name = 'motion_Rside_vert_L_0.5_hz';
stim(70).num = 70;
stim(70).pat_id = 29;
stim(70).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(70).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(70).type = 'position';
stim(70).time = length(stim(70).xpos_vec)/50;

%% L vert bar L side, medium left motion
stim(71).name = 'motion_Rside_vert_L_1_hz';
stim(71).num = 71;
stim(71).pat_id = 29;
stim(71).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(71).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(71).type = 'position';
stim(71).time = length(stim(71).xpos_vec)/50;

%% L vert bar L side, fast left motion
stim(72).name = 'motion_Rside_vert_L_3_hz';
stim(72).num = 72;
stim(72).pat_id = 29;
stim(72).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(72).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(72).type = 'position';
stim(72).time = length(stim(72).xpos_vec)/50;

%% vert bar L side, slow, right motion
stim(73).name = 'motion_Rside_vert_R_0.5_hz';
stim(73).num = 73;
stim(73).pat_id = 29;
stim(73).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(73).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(73).type = 'position';
stim(73).time = length(stim(73).xpos_vec)/50;

%% L vert bar medium, right motion
stim(74).name = 'motion_Rside_vert_R_1_hz';
stim(74).num = 74;
stim(74).pat_id = 29;
stim(74).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(74).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(74).type = 'position';
stim(74).time = length(stim(74).xpos_vec)/50;

%% L vert bar fast, right motion
stim(75).name = 'motion_Rside_vert_R_3_hz';
stim(75).num = 75;
stim(75).pat_id = 29;
stim(75).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(75).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(75).type = 'position';
stim(75).time = length(stim(75).xpos_vec)/50;


%% vert bar R side, slow left motion
stim(76).name = 'motion_Lside_vert_L_0.5_hz';
stim(76).num = 76;
stim(76).pat_id = 28;
stim(76).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(76).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(76).type = 'position';
stim(76).time = length(stim(76).xpos_vec)/50;

%% vert bar R side, medium left motion
stim(77).name = 'motion_Lside_vert_L_1_hz';
stim(77).num = 77;
stim(77).pat_id = 28;
stim(77).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(77).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(77).type = 'position';
stim(77).time = length(stim(77).xpos_vec)/50;

%% vert bar R side, fast left motion
stim(78).name = 'motion_Lside_vert_L_3_hz';
stim(78).num = 78;
stim(78).pat_id = 28;
stim(78).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(78).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(78).type = 'position';
stim(78).time = length(stim(78).xpos_vec)/50;

%% vert bar R side, slow, right motion
stim(79).name = 'motion_Lside_vert_R_0.5_hz';
stim(79).num = 79;
stim(79).pat_id = 28;
stim(79).xpos_vec = [nan(1, prestim_time*50)...
                       21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(79).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(79).type = 'position';
stim(79).time = length(stim(79).xpos_vec)/50;

%% vert bar R side mediu right motion
stim(80).name = 'motion_Lside_vert_R_1_hz';
stim(80).num = 80;
stim(80).pat_id = 28;
stim(80).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(80).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(80).type = 'position';
stim(80).time = length(stim(80).xpos_vec)/50;

%% vert bar R side, fast right motion
stim(81).name = 'motion_Lside_vert_R_3_hz';
stim(81).num = 81;
stim(81).pat_id = 28;
stim(81).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(81).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(81).type = 'position';
stim(81).time = length(stim(81).xpos_vec)/50;



