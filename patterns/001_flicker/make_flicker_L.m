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

Pat_on(:, 1:44)     = 7;
Pat_off(:, 1:44)    = 0;

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
% A = 1:48;
% pattern.Panel_map = flipud(reshape(A, 4, 12));
% %     4     8    12    16    20    24    28    32    36    40    44    48
% %     3     7    11    15    19    23    27    31    35    39    43    47
% %     2     6    10    14    18    22    26    30    34    38    42    46
% %     1     5     9    13    17    21    25    29    33    37    41    45
directory_name = '/Users/florencet/Documents/matlab_root/az_map/patterns/001_flicker';
pattern.BitMapIndex = process_panel_map(pattern);
pattern.data = Make_pattern_vector(pattern);

% directory_name = 'c:\matlabroot\Panels\Patterns';
str = [pwd '/pattern_files' '/Pattern_002_L_flicker'];
save(str, 'pattern');
