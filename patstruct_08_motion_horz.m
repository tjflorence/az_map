%{
    HORIZONTAL BAR MOTION (UP / DOWN)
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

slow_vec_U    = repmat(create_posvec(1,16,6, 0), [1 100]);
med_vec_U    = repmat(create_posvec(1,16,3, 0), [1 100]);
fast_vec_U    = repmat(create_posvec(1,16,1, 0), [1 100]);

slow_vec_D    = repmat(fliplr(create_posvec(1,16,6, 0)), [1 100]);
med_vec_D     = repmat(fliplr(create_posvec(1,16,3, 0)), [1 100]);
fast_vec_D    = repmat(fliplr(create_posvec(1,16,1, 0)), [1 100]);

%%  horz bar wf,  slow up motion
stim(46).name = 'motion_wf_horz_U_0.5_hz';
stim(46).num = 46;
stim(46).pat_id = 18;
stim(46).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(46).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(46).type = 'position';
stim(46).time = length(stim(46).xpos_vec)/50;

%% horz bar wf,  medium up motion
stim(47).name = 'motion_wf_horz_U_1_hz';
stim(47).num = 47;
stim(47).pat_id = 18;
stim(47).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(47).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(47).type = 'position';
stim(47).time = length(stim(47).xpos_vec)/50;

%% horz bar wf, fast up motion
stim(48).name = 'motion_wf_horz_U_3_hz';
stim(48).num = 48;
stim(48).pat_id = 18;
stim(48).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(48).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(48).type = 'position';
stim(48).time = length(stim(48).xpos_vec)/50;

%% horz bar wf, slow down motion
stim(49).name = 'motion_wf_horz_D_0.5_hz';
stim(49).num = 49;
stim(49).pat_id = 18;
stim(49).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(49).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(49).type = 'position';
stim(49).time = length(stim(49).xpos_vec)/50;

%% horz bar wf,  medium down motion
stim(50).name = 'motion_wf_horz_D_1_hz';
stim(50).num = 50;
stim(50).pat_id = 18;
stim(50).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(50).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(50).type = 'position';
stim(50).time = length(stim(50).xpos_vec)/50;

%% horz bar wf, fast down motion
stim(51).name = 'motion_wf_horz_D_3_hz';
stim(51).num = 51;
stim(51).pat_id = 18;
stim(51).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(51).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(51).type = 'position';
stim(51).time = length(stim(51).xpos_vec)/50;

%% horz bars L side, slow up motion
stim(52).name = 'motion_L_horz_U_0.5_hz';
stim(52).num = 52;
stim(52).pat_id = 22;
stim(52).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(52).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(52).type = 'position';
stim(52).time = length(stim(52).xpos_vec)/50;

%% horz bars L side, medium up motion
stim(53).name = 'motion_L_horz_U_1_hz';
stim(53).num = 53;
stim(53).pat_id = 22;
stim(53).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(53).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(53).type = 'position';
stim(53).time = length(stim(53).xpos_vec)/50;

%% horz bars L side, fast up motion
stim(54).name = 'motion_L_horz_U_3_hz';
stim(54).num = 54;
stim(54).pat_id = 22;
stim(54).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(54).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(54).type = 'position';
stim(54).time = length(stim(54).xpos_vec)/50;

%% horz bars L side, slow down motion
stim(55).name = 'motion_L_horz_D_0.5_hz';
stim(55).num = 55;
stim(55).pat_id = 22;
stim(55).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(55).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(55).type = 'position';
stim(55).time = length(stim(55).xpos_vec)/50;

%% horz bars L side, medium down motion
stim(56).name = 'motion_L_horz_D_1_hz';
stim(56).num = 56;
stim(56).pat_id = 22;
stim(56).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(56).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(56).type = 'position';
stim(56).time = length(stim(56).xpos_vec)/50;

%% horz bars L side, fast down motion
stim(57).name = 'motion_L_horz_D_3_hz';
stim(57).num = 57;
stim(57).pat_id = 22;
stim(57).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(57).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(57).type = 'position';
stim(57).time = length(stim(57).xpos_vec)/50;


%% horz bars R side, slow up motion
stim(58).name = 'motion_R_horz_U_0.5_hz';
stim(58).num = 58;
stim(58).pat_id = 23;
stim(58).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(58).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(58).type = 'position';
stim(58).time = length(stim(58).xpos_vec)/50;

%% horz bars R side, medium up motion
stim(59).name = 'motion_R_horz_U_1_hz';
stim(59).num = 59;
stim(59).pat_id = 23;
stim(59).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(59).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(59).type = 'position';
stim(59).time = length(stim(59).xpos_vec)/50;

%% horz bars R side, fast up motion
stim(60).name = 'motion_R_horz_U_3_hz';
stim(60).num = 60;
stim(60).pat_id = 23;
stim(60).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(60).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_U(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(60).type = 'position';
stim(60).time = length(stim(60).xpos_vec)/50;

%% horz bars R side, slow down motion
stim(61).name = 'motion_R_horz_D_0.5_hz';
stim(61).num = 61;
stim(61).pat_id = 23;
stim(61).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(61).ypos_vec = [nan(1, prestim_time*50)...
                        slow_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(61).type = 'position';
stim(61).time = length(stim(61).xpos_vec)/50;

%% horz bars R side, medium down motion
stim(62).name = 'motion_R_horz_D_1_hz';
stim(62).num = 62;
stim(62).pat_id = 23;
stim(62).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                                        
stim(62).ypos_vec = [nan(1, prestim_time*50)...
                        med_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(62).type = 'position';
stim(62).time = length(stim(62).xpos_vec)/50;

%% horz bars R side, fast down motion
stim(63).name = 'motion_R_horz_D_3_hz';
stim(63).num = 63;
stim(63).pat_id = 23;
stim(63).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(63).ypos_vec = [nan(1, prestim_time*50)...
                        fast_vec_D(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                    
stim(63).type = 'position';
stim(63).time = length(stim(63).xpos_vec)/50;



