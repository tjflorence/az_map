%{
    FLICKER STIMULI

    series of master structs for presentations of visual stimuli
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

%% flicker WF 1/2 hz
stim(1).name    = 'flicker_WF_0.5_hz';
stim(1).num     = 1;
stim(1).pat_id  = 1;
stim(1).xpos_vec = [nan(1, prestim_time*50)...
                    ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(1).ypos_vec = [nan(1, prestim_time*50)...
                    repmat([ones(1,50) 2*ones(1,50)], [1 5])...
                    nan(1, poststim_time*50)];
stim(1).type = 'flicker';
stim(1).time = stim(1).xpos_vec/50;

%% flicker WF 1 hz
stim(2).name    = 'flicker_WF_1_hz';
stim(2).num     = 2;
stim(2).pat_id  = 1;
stim(2).xpos_vec = [nan(1, prestim_time*50)...
                    21*ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(2).ypos_vec = [nan(1, prestim_time*50)...
                    repmat([ones(1,25) 2*ones(1,25)], [1 10])...
                    nan(1, poststim_time*50)];
stim(2).type = 'flicker';
stim(2).time = stim(2).xpos_vec/50;

%% flicker WF 3 hz
stim(3).name    = 'flicker_WF_10_hz';
stim(3).num     = 3;
stim(3).pat_id  = 1;
stim(3).xpos_vec = [nan(1, prestim_time*50)...
                    21*ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(3).ypos_vec =  [nan(1, prestim_time*50)...
                    repmat([ones(1,5) 2*ones(1,5)], [1 50])...
                    nan(1, poststim_time*50)];
stim(3).type = 'flicker';
stim(3).time = stim(3).xpos_vec/50;

%% flicker L 1/2 hz
stim(4).name    = 'flicker_L_0.5_hz';
stim(4).num     = 4;
stim(4).pat_id  = 2;
stim(4).xpos_vec = [nan(1, prestim_time*50)...
                    21*ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(4).ypos_vec = [nan(1, prestim_time*50)...
                    repmat([ones(1,50) 3*ones(1,50)], [1 5])...
                    nan(1, poststim_time*50)];
stim(4).type = 'flicker';
stim(4).time = stim(4).xpos_vec/50;

%% flicker L 1 hz
stim(5).name    = 'flicker_L_1_hz';
stim(5).num     = 5;
stim(5).pat_id  = 2;
stim(5).xpos_vec = [nan(1, prestim_time*50)...
                    21*ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(5).ypos_vec = [nan(1, prestim_time*50)...
                    repmat([ones(1,25) 3*ones(1,25)], [1 10])...
                    nan(1, poststim_time*50)];
stim(5).type = 'motion';
stim(5).time = stim(5).xpos_vec/50;

%% flicker L 3 hz
stim(6).name    = 'flicker_L_10_hz';
stim(6).num     = 6;
stim(6).pat_id  = 2;
stim(6).xpos_vec = [nan(1, prestim_time*50)...
                    21*ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(6).ypos_vec =  [nan(1, prestim_time*50)...
                    repmat([ones(1,5) 3*ones(1,5)], [1 50])...
                    nan(1, poststim_time*50)];
stim(6).type = 'motion';
stim(6).time = stim(6).xpos_vec/50;

%% flicker R 1/2 hz
stim(7).name    = 'flicker_R_0.5_hz';
stim(7).num     = 7;
stim(7).pat_id  = 3;
stim(7).xpos_vec = [nan(1, prestim_time*50)...
                    21*ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(7).ypos_vec = [nan(1, prestim_time*50)...
                    repmat([ones(1,50) 3*ones(1,50)], [1 5])...
                    nan(1, poststim_time*50)];
stim(7).type = 'motion';
stim(7).time = stim(7).xpos_vec/50;

%% flicker L 1 hz
stim(8).name    = 'flicker_R_1_hz';
stim(8).num     = 8;
stim(8).pat_id  = 3;
stim(8).xpos_vec = [nan(1, prestim_time*50)...
                    21*ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(8).ypos_vec = [nan(1, prestim_time*50)...
                    repmat([ones(1,25) 3*ones(1,25)], [1 10])...
                    nan(1, poststim_time*50)];
stim(8).type = 'motion';
stim(8).time = stim(8).xpos_vec/50;

%% flicker L 3 hz
stim(9).name    = 'flicker_R_10_hz';
stim(9).num     = 9;
stim(9).pat_id  = 3;
stim(9).xpos_vec = [nan(1, prestim_time*50)...
                    21*ones(1, motion_stim_time*50)...
                    nan(1, poststim_time*50)];
stim(9).ypos_vec = [nan(1, prestim_time*50)...
                    repmat([ones(1,5) 3*ones(1,5)], [1 50])...
                    nan(1, poststim_time*50)];
stim(9).type = 'motion';
stim(9).time = stim(9).xpos_vec/50;











