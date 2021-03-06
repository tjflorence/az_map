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

%% diag back bar wf,  slow left motion
stim(100).name = 'motion_wf_diag_back_R_0.5_hz';
stim(100).num = 100;
stim(100).pat_id = 21;
stim(100).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(100).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(100).type = 'position';
stim(100).time = length(stim(100).xpos_vec)/50;

%% diag back bar wf,  medium left motion
stim(101).name = 'motion_wf_diag_back_R_1_hz';
stim(101).num = 101;
stim(101).pat_id = 21;
stim(101).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(101).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(101).type = 'position';
stim(101).time = length(stim(101).xpos_vec)/50;

%% diag back bar wf, fast left motion 
stim(102).name = 'motion_wf_diag_back_R_3_hz';
stim(102).num = 102;
stim(102).pat_id = 21;
stim(102).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(102).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(102).type = 'position';
stim(102).time = length(stim(102).xpos_vec)/50;

%% diag back bar wf, slow right motion
stim(103).name = 'motion_wf_diag_back_L_0.5_hz';
stim(103).num = 103;
stim(103).pat_id = 21;
stim(103).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(103).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(103).type = 'position';
stim(103).time = length(stim(103).xpos_vec)/50;

%% diag back bar wf, medium right motion 
stim(104).name = 'motion_wf_diag_back_L_1_hz';
stim(104).num = 104;
stim(104).pat_id = 21;
stim(104).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(104).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(104).type = 'position';
stim(104).time = length(stim(104).xpos_vec)/50;

%% diag back bar wf, fast right motion
stim(105).name = 'motion_wf_diag_back_L_3_hz';
stim(105).num = 105;
stim(105).pat_id = 21;
stim(105).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(105).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(105).type = 'position';
stim(105).time = length(stim(105).xpos_vec)/50;

%% diag back bar L side, slow left motion
stim(106).name = 'motion_Rside_diag_back_R_0.5_hz';
stim(106).num = 106;
stim(106).pat_id = 24;
stim(106).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(106).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(106).type = 'position';
stim(106).time = length(stim(106).xpos_vec)/50;

%% L diag back bar L side, medium left motion
stim(107).name = 'motion_Rside_diag_back_R_1_hz';
stim(107).num = 107;
stim(107).pat_id = 24;
stim(107).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(107).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(107).type = 'position';
stim(107).time = length(stim(107).xpos_vec)/50;

%% L diag back bar L side, fast left motion
stim(108).name = 'motion_Rside_diag_back_R_3_hz';
stim(108).num = 108;
stim(108).pat_id = 24;
stim(108).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(108).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(108).type = 'position';
stim(108).time = length(stim(108).xpos_vec)/50;

%% R diag back bar L side, slow, right motion
stim(109).name = 'motion_Rside_diag_back_L_0.5_hz';
stim(109).num = 109;
stim(109).pat_id = 26;
stim(109).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(109).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(109).type = 'position';
stim(109).time = length(stim(109).xpos_vec)/50;

%% L diag back bar medium, right motion
stim(110).name = 'motion_Rside_diag_back_L_1_hz';
stim(110).num = 110;
stim(110).pat_id = 26;
stim(110).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(110).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(110).type = 'position';
stim(110).time = length(stim(110).xpos_vec)/50;

%% L diag back bar fast, right motion
stim(111).name = 'motion_Rside_diag_back_L_3_hz';
stim(111).num = 111;
stim(111).pat_id = 26;
stim(111).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(111).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(111).type = 'position';
stim(111).time = length(stim(111).xpos_vec)/50;


%% diag back bar R side, slow left motion
stim(112).name = 'motion_Lside_diag_back_R_0.5_hz';
stim(112).num = 112;
stim(112).pat_id = 26;
stim(112).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(112).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(112).type = 'position';
stim(112).time = length(stim(112).xpos_vec)/50;

%% diag back bar R side, medium left motion
stim(113).name = 'motion_Lside_diag_back_R_1_hz';
stim(113).num = 113;
stim(113).pat_id = 26;
stim(113).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(113).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(113).type = 'position';
stim(113).time = length(stim(113).xpos_vec)/50;

%% diag back bar R side, fast left motion
stim(114).name = 'motion_Lside_diag_back_R_3_hz';
stim(114).num = 114;
stim(114).pat_id = 26;
stim(114).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(114).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(114).type = 'position';
stim(114).time = length(stim(111).xpos_vec)/50;

%% diag back bar R side, slow, right motion
stim(115).name = 'motion_Lside_diag_back_L_0.5_hz';
stim(115).num = 115;
stim(115).pat_id = 26;
stim(115).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(115).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(115).type = 'position';
stim(115).time = length(stim(115).xpos_vec)/50;

%% diag back bar R side medium right motion
stim(116).name = 'motion_Lside_diag_back_L_1_hz';
stim(116).num = 116;
stim(116).pat_id = 26;
stim(116).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(116).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(116).type = 'position';
stim(116).time = length(stim(116).xpos_vec)/50;

%% diag back bar R side, fast right motion
stim(117).name = 'motion_Lside_diag_back_L_3_hz';
stim(117).num = 117;
stim(117).pat_id = 26;
stim(117).xpos_vec = [nan(1, prestim_time*50)...
                        21*ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(117).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(117).type = 'position';
stim(117).time = length(stim(117).xpos_vec)/50;



