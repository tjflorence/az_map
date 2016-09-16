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
stim(16).name = 'diag_back_off_bar_30_dps';
stim(16).num = 16;
stim(16).pat_id = ????
stim(16).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 6, 1)...
                        nan(1, prestim_time*50)];
stim(16).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 6, 1)))...
                        nan(1, prestim_time*50)];
stim(16).type = 'position';
stim(16).time = length(stim(16).xpos_vec)/50;

%% vert off bar medium 
stim(17).name = 'diag_back_off_bar_60_dps';
stim(17).num = 17;
stim(17).pat_id = ????
stim(17).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 3, 1)...
                        nan(1, prestim_time*50)];
stim(17).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 3, 1)))...
                        nan(1, prestim_time*50)];
stim(17).type = 'position';
stim(17).time = length(stim(17).xpos_vec)/50;

%% vert off bar fast 
stim(18).name = 'diag_back_off_bar_180_dps';
stim(18).num = 18;
stim(18).pat_id = ????
stim(18).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 1, 1)...
                        nan(1, prestim_time*50)];
stim(18).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 1, 1)))...
                        nan(1, prestim_time*50)];
stim(18).type = 'position';
stim(18).time = length(stim(18).xpos_vec)/50;

%% vert on bar slow 
stim(19).name = 'diag_back_on_bar_30_dps';
stim(19).num = 19;
stim(19).pat_id = ????
stim(19).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 6, 1)...
                        nan(1, prestim_time*50)];
stim(19).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 6, 1)))...
                        nan(1, prestim_time*50)];
stim(19).type = 'position';
stim(19).time = length(stim(19).xpos_vec)/50;

%% vert on bar medium 
stim(20).name = 'diag_back_on_bar_60_dps';
stim(20).num = 20;
stim(20).pat_id = ????
stim(20).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 3, 1)...
                        nan(1, prestim_time*50)];
stim(20).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 3, 1)))...
                        nan(1, prestim_time*50)];
stim(20).type = 'position';
stim(20).time = length(stim(20).xpos_vec)/50;

%% vert on bar fast 
stim(21).name = 'diag_back_on_bar_180_dps';
stim(21).num = 21;
stim(21).pat_id = ????
stim(21).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 1, 1)...
                        nan(1, prestim_time*50)];
stim(21).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 1, 1)))...
                        nan(1, prestim_time*50)];
stim(21).type = 'position';
stim(21).time = length(stim(21).xpos_vec)/50;

