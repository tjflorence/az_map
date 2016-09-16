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

%% vert off bar slow 
stim(22).name = 'diag_fwd_off_bar_30_dps';
stim(22).num = 22;
stim(22).pat_id = ????
stim(22).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 6, 1)...
                        nan(1, prestim_time*50)];
stim(22).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 6, 1)))...
                        nan(1, prestim_time*50)];
stim(22).type = 'position';
stim(22).time = length(stim(22).xpos_vec)/50;

%% vert off bar medium 
stim(23).name = 'diag_fwd_off_bar_60_dps';
stim(23).num = 23;
stim(23).pat_id = ????
stim(23).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 3, 1)...
                        nan(1, prestim_time*50)];
stim(23).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 3, 1)))...
                        nan(1, prestim_time*50)];
stim(23).type = 'position';
stim(23).time = length(stim(23).xpos_vec)/50;

%% vert off bar fast 
stim(24).name = 'diag_fwd_off_bar_180_dps';
stim(24).num = 24;
stim(24).pat_id = ????
stim(24).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 1, 1)...
                        nan(1, prestim_time*50)];
stim(24).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 1, 1)))...
                        nan(1, prestim_time*50)];
stim(24).type = 'position';
stim(24).time = length(stim(24).xpos_vec)/50;

%% vert on bar slow 
stim(25).name = 'diag_fwd_on_bar_30_dps';
stim(25).num = 25;
stim(25).pat_id = ????
stim(25).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 6, 1)...
                        nan(1, prestim_time*50)];
stim(25).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 6, 1)))...
                        nan(1, prestim_time*50)];
stim(25).type = 'position';
stim(25).time = length(stim(25).xpos_vec)/50;

%% vert on bar medium 
stim(26).name = 'diag_fwd_on_bar_60_dps';
stim(26).num = 26;
stim(26).pat_id = ????
stim(26).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 3, 1)...
                        nan(1, prestim_time*50)];
stim(26).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 3, 1)))...
                        nan(1, prestim_time*50)];
stim(26).type = 'position';
stim(26).time = length(stim(26).xpos_vec)/50;

%% vert on bar fast 
stim(27).name = 'diag_fwd_on_bar_180_dps';
stim(27).num = 27;
stim(27).pat_id = ????
stim(27).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 1, 1)...
                        nan(1, prestim_time*50)];
stim(27).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 1, 1)))...
                        nan(1, prestim_time*50)];
stim(27).type = 'position';
stim(27).time = length(stim(27).xpos_vec)/50;

