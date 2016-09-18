%{

    accepts pattern stim struct
    outputs gif in realtime
    
%}
home_dir = '/Users/florencet/Documents/matlab_root/az_map';

gif_fps = 25;

pat_dir = '/Users/florencet/Documents/matlab_root/az_map/patterns/master_pattern_list/';
cd(pat_dir);
pat_files = dir('Pattern*');

cd(home_dir);

patstruct_01_flicker_stim_struct
patstruct_02_bigbar_vert_stim_struct
patstruct_03_bigbar_diag_back_stim_struct
patstruct_04_bigbar_diag_fwd_stim_struct
patstruct_05_bigbar_horz_stim_struct
patstruct_06_small_vertbar_sweeps
patstruct_07_small_horzbar_sweeps
patstruct_08_motion_horz
patstruct_09_motion_vert
patstruct_10_motion_diag_fwd
patstruct_11_motion_diag_back
patstruct_12_motion_complex_SBD
patstruct_13_motion_component
patstruct_14_loom

for aa = 112:length(stim)
    
    pat_num = stim(aa).pat_id;
    
    load([pat_dir  pat_files(pat_num).name ])
    pat_data = pattern.Pats;



    stim_name = stim(aa).name;
    stim_num = stim(aa).num;
    
    stim_xpos_vec = stim(aa).xpos_vec;
    stim_ypos_vec = stim(aa).ypos_vec;
                                      
    gif_name = stim(aa).name;

    max_pixval = max(max(max(max(pat_data))));
    cMap = [zeros(max_pixval+1, 1),  linspace(0, 1, max_pixval+1)' zeros(max_pixval+1, 1),];

    mkdir('frames')
    cd('frames')

    fnum = 0;
    for ii = 1:2:(length(stim_xpos_vec)-150)
    
        fnum = fnum+1;
        close all;
        f1 = figure('visible', 'off', ...
                    'units', 'normalized',...
                    'Position', [0.0506 0.5752 0.2637 0.3229],... 
                    'color', 'none');
    
    
                c_xpos = stim_xpos_vec(ii);
                c_ypos = stim_ypos_vec(ii);
    
                if isnan(c_xpos)
                    c_frame = zeros(32, 96);
                else
                    c_frame = pat_data(:,:,c_xpos, c_ypos);
                    c_frame = c_frame(:, :);
                end
    
    imagesc(c_frame); caxis([0 max_pixval]); axis equal off tight;
    colormap(cMap); drawnow;
    
    set(f1, 'Units', 'Inches')
    pos = get(f1, 'position');
    set(f1, 'PaperPositionMode','Auto',...
        'PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

    print(f1, ['frame_'  num2str(fnum, '%05d') '.bmp'], '-dbmp', '-r50', '-opengl');
    
end

    success = system(['ffmpeg -framerate 25 -i frame_%05d.bmp -c:v libx264 -r 30 -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" ../stim_movies/stim_movie_' num2str(aa, '%03d') '_' gif_name '.mp4']);
    if success ~=0 
        path1 = getenv('PATH');
        path1 = [path1 ':/usr/local/bin'];
        setenv('PATH', path1);
        success = system(['ffmpeg -framerate 25 -i frame_%05d.bmp -c:v libx264 -r 30 -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" ../stim_movies/stim_movie_' num2str(aa, '%03d') '_' gif_name '.mp4']);
    end
    
    cd('..')
    rmdir('frames', 's')
    
end
    
