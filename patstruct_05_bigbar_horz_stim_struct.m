%{

    VERTICAL BIGBAR POSITION MAPPING

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


%% horz off bar slow 
stim(28).name = 'horz_off_bar_30_dps';
stim(28).num = 28;
stim(28).pat_id = 12;
stim(28).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 24, 6, 1)))...
                        nan(1, prestim_time*50)];
stim(28).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 24, 6, 1)...
                        nan(1, prestim_time*50)];
stim(28).type = 'position';
stim(28).time = length(stim(28).xpos_vec)/50;

%% horz off bar medium 
stim(29).name = 'horz_off_bar_60_dps';
stim(29).num = 29;
stim(29).pat_id = 12;
stim(29).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 24, 3, 1)))...
                        nan(1, prestim_time*50)];
stim(29).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 24, 3, 1)...
                        nan(1, prestim_time*50)];
stim(29).type = 'position';
stim(29).time = length(stim(29).xpos_vec)/50;

%% horz off bar fast 
stim(30).name = 'horz_off_bar_180_dps';
stim(30).num = 30;
stim(30).pat_id = 12;
stim(30).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 24, 1, 1)))...
                        nan(1, prestim_time*50)];
stim(30).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 24, 1, 1)...
                        nan(1, prestim_time*50)];
stim(30).type = 'position';
stim(30).time = length(stim(30).xpos_vec)/50;

%% horz on bar slow 
stim(31).name = 'horz_on_bar_30_dps';
stim(31).num = 31;
stim(31).pat_id = 13;
stim(31).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 24, 6, 1)))...
                        nan(1, prestim_time*50)];
stim(31).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 24, 6, 1)...
                        nan(1, prestim_time*50)];
stim(31).type = 'position';
stim(31).time = length(stim(31).xpos_vec)/50;

%% horz on bar medium 
stim(32).name = 'horz_on_bar_60_dps';
stim(32).num = 32;
stim(32).pat_id = 13;
stim(32).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 24, 3, 1)))...
                        nan(1, prestim_time*50)];
stim(32).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 24, 3, 1)...
                        nan(1, prestim_time*50)];
stim(32).type = 'position';
stim(32).time = length(stim(32).xpos_vec)/50;

%% horz on bar fast 
stim(33).name = 'horz_on_bar_180_dps';
stim(33).num = 33;
stim(33).pat_id = 13;
stim(33).xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 24, 1, 1)))...
                        nan(1, prestim_time*50)];
stim(33).ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 24, 1, 1)...
                        nan(1, prestim_time*50)];
stim(33).type = 'position';
stim(33).time = length(stim(33).xpos_vec)/50;

