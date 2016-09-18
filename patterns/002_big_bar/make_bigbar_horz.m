%{
    make vert bigbar pattern
%}

pattern.xpix = 96;
pattern.ypix = 32;

pattern.x_num = 1;         % There are 96 pixel around the display (12x8) 
pattern.y_num = 32;          % two frames of Y, at 2 different spatial frequencies
pattern.num_panels = 48; 	% This is the number of unique Panel IDs required.
pattern.gs_val = 1;         % This pattern will use 8 intensity levels
pattern.row_compression = 0;

Pats = zeros(pattern.ypix, pattern.xpix, pattern.x_num, pattern.y_num);

Pat_frame = ones(pattern.ypix, pattern.xpix);
Pat_frame(:, 1:8) = 0; 

Pats(:,:,1,1) = Pat_frame;


for j = 2:pattern.y_num
    
    Pat_frame     = circshift(Pat_frame, [0 1]);

    Pats(:,:,1,j) = Pat_frame;

end

pattern.Pats        = Pats;
pattern.Panel_map   = [12 8 4 11 7 3 10 6 2  9 5 1;...
                        24 20 16 23 19 15 22 18 14 21 17 13;...
                        36 32 28 35 31 27 34 30 26 33 29 25;...
                        48 44 40 47 43 39 46 42 38 45 41 37];
                 
directory_name = 'C:\matlab_root\az_map\patterns\002_big_bar\pattern_files';
pattern.BitMapIndex = process_panel_map(pattern);
pattern.data = Make_pattern_vector(pattern);

% directory_name = 'c:\matlabroot\Panels\Patterns';
str = [directory_name '\Pattern_002_bigbar_horz'];
save(str, 'pattern');
