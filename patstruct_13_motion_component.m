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

%% 

% STRIPES

%%%

%% stripes component,  slow L motion
stim(130).name = 'motion_component_S_L_0.5_hz';
stim(130).num = 130;
stim(130).pat_id = 34;
stim(130).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(130).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(130).type = 'position';
stim(130).time = length(stim(130).xpos_vec)/50;

%% stripes component, , medium L motion
stim(131).name = 'motion_component_S_L_1_hz';
stim(131).num = 131;
stim(131).pat_id = 34;
stim(131).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(131).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(131).type = 'position';
stim(131).time = length(stim(131).xpos_vec)/50;

%% stripes component, fast L motion
stim(132).name = 'motion_component_S_L_3_hz';
stim(132).num = 132;
stim(132).pat_id = 34;
stim(132).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(132).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(132).type = 'position';
stim(132).time = length(stim(132).xpos_vec)/50;

%% stripes component,  slow R motion
stim(133).name = 'motion_component_S_R_0.5_hz';
stim(133).num = 133;
stim(133).pat_id = 34;
stim(133).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(133).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(133).type = 'position';
stim(133).time = length(stim(133).xpos_vec)/50;

%% stripes component, medium R motion
stim(134).name = 'motion_component_S_R_1_hz';
stim(134).num = 134;
stim(134).pat_id = 34;
stim(134).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(134).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(134).type = 'position';
stim(134).time = length(stim(134).xpos_vec)/50;

%% stripes component, fast R motion
stim(135).name = 'motion_component_S_R_3_hz';
stim(135).num = 135;
stim(135).pat_id = 34;
stim(135).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(135).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(135).type = 'position';
stim(135).time = length(stim(135).xpos_vec)/50;



%% 

% BARS

%%%

%% bars component,  slow L motion
stim(136).name = 'motion_component_B_L_0.5_hz';
stim(136).num = 136;
stim(136).pat_id = 35;
stim(136).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(136).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(136).type = 'position';
stim(136).time = length(stim(136).xpos_vec)/50;

%% bars component, , medium L motion
stim(137).name = 'motion_component_B_L_1_hz';
stim(137).num = 137;
stim(137).pat_id = 35;
stim(137).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(137).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(137).type = 'position';
stim(137).time = length(stim(137).xpos_vec)/50;

%% bars component, fast L motion
stim(138).name = 'motion_component_B_L_3_hz';
stim(138).num = 138;
stim(138).pat_id = 35;
stim(138).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(138).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(138).type = 'position';
stim(138).time = length(stim(138).xpos_vec)/50;

%% bars component,  slow R motion
stim(139).name = 'motion_component_B_R_0.5_hz';
stim(139).num = 139;
stim(139).pat_id = 35;
stim(139).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(139).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(139).type = 'position';
stim(139).time = length(stim(139).xpos_vec)/50;

%% bars component, medium R motion
stim(140).name = 'motion_component_B_R_1_hz';
stim(140).num = 140;
stim(140).pat_id = 35;
stim(140).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(140).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(140).type = 'position';
stim(140).time = length(stim(140).xpos_vec)/50;

%% bars component, fast R motion
stim(141).name = 'motion_component_B_R_3_hz';
stim(141).num = 141;
stim(141).pat_id = 35;
stim(141).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(141).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(141).type = 'position';
stim(141).time = length(stim(138).xpos_vec)/50;

%% 

% DIAG FWD

%%%

%% diag fwd component,  slow L motion
stim(142).name = 'motion_component_D_fwd_L_0.5_hz';
stim(142).num = 139;
stim(142).pat_id = 33;
stim(142).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(142).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(142).type = 'position';
stim(142).time = length(stim(142).xpos_vec)/50;

%% diag fwd  component, , medium L motion
stim(143).name = 'motion_component_D_fwd_L_1_hz';
stim(143).num = 143;
stim(143).pat_id = 33;
stim(143).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(143).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(143).type = 'position';
stim(143).time = length(stim(143).xpos_vec)/50;

%% diag fwd  component, fast L motion
stim(144).name = 'motion_component_D_fwd_L_3_hz';
stim(144).num = 144;
stim(144).pat_id = 33;
stim(144).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(144).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(144).type = 'position';
stim(144).time = length(stim(144).xpos_vec)/50;

%% diag fwd  component,  slow R motion
stim(145).name = 'motion_component_D_fwd_R_0.5_hz';
stim(145).num = 145;
stim(145).pat_id = 33;
stim(145).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(145).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(145).type = 'position';
stim(145).time = length(stim(142).xpos_vec)/50;

%% diag fwd  component, medium R motion
stim(146).name = 'motion_component_D_fwd_R_1_hz';
stim(146).num = 146;
stim(146).pat_id = 33;
stim(146).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(146).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(146).type = 'position';
stim(146).time = length(stim(143).xpos_vec)/50;

%% diag fwd  component, fast R motion
stim(147).name = 'motion_component_D_fwd_R_3_hz';
stim(147).num = 147;
stim(147).pat_id = 33;
stim(147).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(147).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(147).type = 'position';
stim(147).time = length(stim(147).xpos_vec)/50;

%% 

% DIAG BACK

%%%

%% diag back component,  slow L motion
stim(148).name = 'motion_component_D_back_L_0.5_hz';
stim(148).num = 148;
stim(148).pat_id = 32;
stim(148).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(148).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(148).type = 'position';
stim(148).time = length(stim(148).xpos_vec)/50;

%% diag back  component, , medium L motion
stim(149).name = 'motion_component_D_back_L_1_hz';
stim(149).num = 149;
stim(149).pat_id = 32;
stim(149).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(149).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(149).type = 'position';
stim(149).time = length(stim(149).xpos_vec)/50;

%% diag back  component, fast L motion
stim(150).name = 'motion_component_D_back_L_3_hz';
stim(150).num = 150;
stim(150).pat_id = 32;
stim(150).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_L(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(150).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(150).type = 'position';
stim(150).time = length(stim(150).xpos_vec)/50;

%% diag back  component,  slow R motion
stim(151).name = 'motion_component_D_back_R_0.5_hz';
stim(151).num = 151;
stim(151).pat_id = 32;
stim(151).xpos_vec = [nan(1, prestim_time*50)...
                        slow_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(151).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(151).type = 'position';
stim(151).time = length(stim(151).xpos_vec)/50;

%% diag back  component, medium R motion
stim(152).name = 'motion_component_D_back_R_1_hz';
stim(152).num = 152;
stim(152).pat_id = 32;
stim(152).xpos_vec = [nan(1, prestim_time*50)...
                        med_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(152).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(152).type = 'position';
stim(152).time = length(stim(152).xpos_vec)/50;

%% diag back  component, fast R motion
stim(153).name = 'motion_component_D_back_R_3_hz';
stim(153).num = 153;
stim(153).pat_id = 32;
stim(153).xpos_vec = [nan(1, prestim_time*50)...
                        fast_vec_R(1:50*motion_stim_time)...
                        nan(1, prestim_time*50)];
                                        
stim(153).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, 50*motion_stim_time)...                    
                        nan(1, prestim_time*50)];
                    
stim(153).type = 'position';
stim(153).time = length(stim(153).xpos_vec)/50;









