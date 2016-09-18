%{
    
    Make master struct for presentations of visual stimuli
    in central cx mapping experiment
   
    struct is of the form

    stim.name
    stim.num
    stim.pat_id
    stim.xpos_vec
    stim.ypos_vec
    stim.type = 'motion' or 'pos' or 'loom'
    stim.time
    
%}
prestim_time    = 3;
poststim_time   = 2;
motion_stim_time = 10;


%%

% ON LOOM , FWD POSITION

%%%

%% loom ON, fwd position, slow
stim(154).name = 'loomON_0deg_slow';
stim(154).num = 154;
stim(154).pat_id = 36;
stim(154).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 100, 6, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(154).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 6, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(154).type = 'position';
stim(154).time = length(stim(154).xpos_vec)/50;

%% loom ON, fwd position, medium
stim(155).name = 'loomON_0deg_medium';
stim(155).num = 155;
stim(155).pat_id = 36;
stim(155).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 100, 3, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(155).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 3, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(155).type = 'position';
stim(155).time = length(stim(155).xpos_vec)/50;

%% loom ON, fwd position, fast
stim(156).name = 'loomON_0deg_fast';
stim(156).num = 156;
stim(156).pat_id = 36;
stim(156).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 100, 1, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(156).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 1, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(156).type = 'position';
stim(156).time = length(stim(156).xpos_vec)/50;

%%

% OFF LOOM , FWD POSITION

%%%


%% loom OFF, fwd position, slow
stim(157).name = 'loomOFF_0deg_slow';
stim(157).num = 157;
stim(157).pat_id = 37;
stim(157).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 100, 6, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(157).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 6, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(157).type = 'position';
stim(157).time = length(stim(157).xpos_vec)/50;

%% loom OFF, fwd position, medium
stim(158).name = 'loomOFF_0deg_medium';
stim(158).num = 158;
stim(158).pat_id = 37;
stim(158).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 100, 3, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(158).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 3, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(158).type = 'position';
stim(158).time = length(stim(158).xpos_vec)/50;

%% loom OFF, fwd position, fast
stim(159).name = 'loomOFF_0deg_fast';
stim(159).num = 159;
stim(159).pat_id = 37;
stim(159).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 100, 1, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(159).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 1, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(159).type = 'position';
stim(159).time = length(stim(159).xpos_vec)/50;

%%

% ON LOOM , R SIDE POSITION

%%%

%% loom ON, fwd position, slow
stim(160).name = 'loomON_45deg_slow';
stim(160).num = 160;
stim(160).pat_id = 36;
stim(160).xpos_vec = [nan(1, prestim_time*50)...
                        12*ones(1, length(create_posvec(1, 100, 6, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(160).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 6, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(160).type = 'position';
stim(160).time = length(stim(160).xpos_vec)/50;

%% loom ON, fwd position, medium
stim(161).name = 'loomON_45deg_medium';
stim(161).num = 161;
stim(161).pat_id = 36;
stim(161).xpos_vec = [nan(1, prestim_time*50)...
                        12*ones(1, length(create_posvec(1, 100, 3, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(161).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 3, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(161).type = 'position';
stim(161).time = length(stim(161).xpos_vec)/50;

%% loom ON, fwd position, fast
stim(162).name = 'loomON_45deg_fast';
stim(162).num = 162;
stim(162).pat_id = 36;
stim(162).xpos_vec = [nan(1, prestim_time*50)...
                        12*ones(1, length(create_posvec(1, 100, 1, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(162).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 1, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(162).type = 'position';
stim(162).time = length(stim(162).xpos_vec)/50;

%%

% OFF LOOM , RIGHT POSITION

%%%


%% loom OFF, fwd position, slow
stim(163).name = 'loomOFF_45deg_slow';
stim(163).num = 163;
stim(163).pat_id = 37;
stim(163).xpos_vec = [nan(1, prestim_time*50)...
                        12*ones(1, length(create_posvec(1, 100, 6, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(163).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 6, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(163).type = 'position';
stim(163).time = length(stim(163).xpos_vec)/50;

%% loom OFF, fwd position, medium
stim(164).name = 'loomOFF_45deg_medium';
stim(164).num = 164;
stim(164).pat_id = 37;
stim(164).xpos_vec = [nan(1, prestim_time*50)...
                        12*ones(1, length(create_posvec(1, 100, 3, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(164).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 3, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(164).type = 'position';
stim(164).time = length(stim(164).xpos_vec)/50;

%% loom OFF, fwd position, fast
stim(165).name = 'loomOFF_45deg_fast';
stim(165).num = 165;
stim(165).pat_id = 37;
stim(165).xpos_vec = [nan(1, prestim_time*50)...
                        12*ones(1, length(create_posvec(1, 100, 1, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(165).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 1, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(165).type = 'position';
stim(165).time = length(stim(165).xpos_vec)/50;

%%

% ON LOOM , L SIDE POSITION

%%%

%% loom ON, fwd position, slow
stim(166).name = 'loomON_315deg_slow';
stim(166).num = 166;
stim(166).pat_id = 36;
stim(166).xpos_vec = [nan(1, prestim_time*50)...
                        84*ones(1, length(create_posvec(1, 100, 6, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(166).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 6, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(166).type = 'position';
stim(166).time = length(stim(166).xpos_vec)/50;

%% loom ON, fwd position, medium
stim(167).name = 'loomON_315deg_medium';
stim(167).num = 167;
stim(167).pat_id = 36;
stim(167).xpos_vec = [nan(1, prestim_time*50)...
                        84*ones(1, length(create_posvec(1, 100, 3, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(167).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 3, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(167).type = 'position';
stim(167).time = length(stim(167).xpos_vec)/50;

%% loom ON, fwd position, fast
stim(168).name = 'loomON_315deg_fast';
stim(168).num = 168;
stim(168).pat_id = 36;
stim(168).xpos_vec = [nan(1, prestim_time*50)...
                        84*ones(1, length(create_posvec(1, 100, 1, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(168).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 1, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(168).type = 'position';
stim(168).time = length(stim(168).xpos_vec)/50;

%%

% OFF LOOM , RIGHT POSITION

%%%


%% loom OFF, fwd position, slow
stim(169).name = 'loomOFF_315deg_slow';
stim(169).num = 169;
stim(169).pat_id = 37;
stim(169).xpos_vec = [nan(1, prestim_time*50)...
                        84*ones(1, length(create_posvec(1, 100, 6, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(169).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 6, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(169).type = 'position';
stim(169).time = length(stim(169).xpos_vec)/50;

%% loom OFF, fwd position, medium
stim(170).name = 'loomOFF_315deg_medium';
stim(170).num = 170;
stim(170).pat_id = 37;
stim(170).xpos_vec = [nan(1, prestim_time*50)...
                        84*ones(1, length(create_posvec(1, 100, 3, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(170).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 3, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(170).type = 'position';
stim(170).time = length(stim(170).xpos_vec)/50;

%% loom OFF, fwd position, fast
stim(171).name = 'loomOFF_315deg_fast';
stim(171).num = 171;
stim(171).pat_id = 37;
stim(171).xpos_vec = [nan(1, prestim_time*50)...
                        84*ones(1, length(create_posvec(1, 100, 1, 0)))...                  
                        nan(1, prestim_time*50)];
                                        
stim(171).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 100, 1, 0)...                  
                        nan(1, prestim_time*50)];
                    
stim(171).type = 'position';
stim(171).time = length(stim(171).xpos_vec)/50;











