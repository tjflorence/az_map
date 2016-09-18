%{
    make diag back L side only
%}

pattern.xpix = 96;
pattern.ypix = 32;

pattern.x_num       = 96;        % There are 96 pixel around the display (12x8) 
pattern.y_num       = 16;       % two frames of Y, at 2 different spatial frequencies
pattern.num_panels  = 48;       % This is the number of unique Panel IDs required.
pattern.gs_val      = 1;        % This pattern will use 8 intensity levels
pattern.row_compression = 0;

Pats = zeros(pattern.ypix, pattern.xpix, pattern.x_num, pattern.y_num);

Pat_frame = zeros(pattern.ypix, pattern.xpix);
single_per = [zeros(8, 96); ones(8, 96)];
Pat_frame = repmat(single_per, [2 1]);
for ii = 2:96
    Pat_frame(:,ii) = circshift(Pat_frame(:,ii), [ii-1 0]);
end
Pat_frame = flipud(Pat_frame);
Pat_frame(:,1:52) = 0;

for i = 1:pattern.x_num

    for j = 1:pattern.y_num

        c_frame     = circshift(Pat_frame, [j-1 i-1]);

        Pats(:,:,i,j) = c_frame;

    end
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
str = [pwd '/patterns/Pattern_005_diag_fwd_R'];
save(str, 'pattern');
