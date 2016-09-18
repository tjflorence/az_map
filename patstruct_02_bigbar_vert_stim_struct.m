%{
    VERTICAL BIG BAR 
    for position mapping 
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
stim(10).name = 'vert_off_bar_30_dps';
stim(10).num = 10;
stim(10).pat_id = 4;
stim(10).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 6, 1)...
                        nan(1, prestim_time*50)];
stim(10).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 6, 1)))...
                        nan(1, prestim_time*50)];
stim(10).type = 'position';
stim(10).time = length(stim(10).xpos_vec)/50;

%% vert off bar medium 
stim(11).name = 'vert_off_bar_60_dps';
stim(11).num = 11;
stim(11).pat_id = 4;
stim(11).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 3, 1)...
                        nan(1, prestim_time*50)];
stim(11).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 3, 1)))...
                        nan(1, prestim_time*50)];
stim(11).type = 'position';
stim(11).time = length(stim(11).xpos_vec)/50;

%% vert off bar fast 
stim(12).name = 'vert_off_bar_180_dps';
stim(12).num = 12;
stim(12).pat_id = 4;
stim(12).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 1, 1)...
                        nan(1, prestim_time*50)];
stim(12).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 1, 1)))...
                        nan(1, prestim_time*50)];
stim(12).type = 'position';
stim(12).time = length(stim(12).xpos_vec)/50;

%% vert on bar slow 
stim(13).name = 'vert_on_bar_30_dps';
stim(13).num = 13;
stim(13).pat_id = 5;
stim(13).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 6, 1)...
                        nan(1, prestim_time*50)];
stim(13).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 6, 1)))...
                        nan(1, prestim_time*50)];
stim(13).type = 'position';
stim(13).time = length(stim(13).xpos_vec)/50;

%% vert on bar medium 
stim(14).name = 'vert_on_bar_60_dps';
stim(14).num = 14;
stim(14).pat_id = 5;
stim(14).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 3, 1)...
                        nan(1, prestim_time*50)];
stim(14).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 3, 1)))...
                        nan(1, prestim_time*50)];
stim(14).type = 'position';
stim(14).time = length(stim(14).xpos_vec)/50;

%% vert on bar fast 
stim(15).name = 'vert_on_bar_180_dps';
stim(15).num = 15;
stim(15).pat_id = 5;
stim(15).xpos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 96, 1, 1)...
                        nan(1, prestim_time*50)];
stim(15).ypos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1,96, 1, 1)))...
                        nan(1, prestim_time*50)];
stim(15).type = 'position';
stim(15).time = length(stim(15).xpos_vec)/50;

