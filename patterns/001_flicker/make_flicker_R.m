%{
    make L flicker pattern
%}

pattern.xpix = 96;
pattern.ypix = 32;

pattern.x_num = 96;         % There are 96 pixel around the display (12x8) 
pattern.y_num = 3;          % two frames of Y, at 2 different spatial frequencies
pattern.num_panels = 48; 	% This is the number of unique Panel IDs required.
pattern.gs_val = 3;         % This pattern will use 8 intensity levels
pattern.row_compression = 1;

Pats = zeros(pattern.ypix, pattern.xpix, pattern.x_num, pattern.y_num);
Pat_middle = 4*ones(pattern.ypix, pattern.xpix);
Pat_on = 4*ones(pattern.ypix, pattern.xpix);
Pat_off = 4*ones(pattern.ypix, pattern.xpix);

Pat_on(:, 1:21)     = 7;
Pat_off(:, 1:21)    = 0;

Pat_on = rot90(Pat_on, 2);
Pat_off = rot90(Pat_off, 2);

Pats(:,:,1,1) = Pat_off;
Pats(:,:,1,2) = Pat_middle;
Pats(:,:,1,3) = Pat_on;

for j = 2:96
    
    Pat_off     = circshift(Pat_off, [0 1]);
    Pat_middle  = circshift(Pat_middle, [0 1]);
    Pat_on      = circshift(Pat_on, [0 1]);

    Pats(:,:,j,1) = Pat_off;
    Pats(:,:,j,2) = Pat_middle;
    Pats(:,:,j,3) = Pat_on;

end

pattern.Pats        = Pats;
pattern.Panel_map   = [12 8 4 11 7 3 10 6 2  9 5 1;...
                        24 20 16 23 19 15 22 18 14 21 17 13;...
                        36 32 28 35 31 27 34 30 26 33 29 25;...
                        48 44 40 47 43 39 46 42 38 45 41 37];
                 
directory_name = 'C:\matlab_root\az_map\patterns\001_flicker\pat_files';
pattern.BitMapIndex = process_panel_map(pattern);
pattern.data = Make_pattern_vector(pattern);

% directory_name = 'c:\matlabroot\Panels\Patterns';
str = [directory_name '\Pattern_003_R_flicker'];
save(str, 'pattern');
