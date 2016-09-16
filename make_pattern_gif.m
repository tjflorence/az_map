%{

    accepts pattern stim struct
    outputs gif in realtime
    
%}
pat_dir = '/Users/florencet/Documents/matlab_root/az_map/patterns/003_small_bar/pattern_files';
pat_file = 'Pattern_003_smallbar_horz_off.mat';

load([pat_dir '/' pat_file ])
pat_data = pattern.Pats;

prestim_time = 3;
poststim_time = 2;

stim.name = 'smallbar_horz_off_30_dps';
stim.num = 34;
stim.xpos_vec = [nan(1, prestim_time*50)...
                        ones(1, length(create_posvec(1, 28, 6, 1)))...
                        9*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        17*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        25*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        33*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        41*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        49*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        57*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        65*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        73*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        81*ones(1,  length(create_posvec(1, 28, 6, 1)))...
                        89*ones(1,  length(create_posvec(1, 28, 6, 1)))...                      
                        nan(1, prestim_time*50)];
                                        
stim.ypos_vec = [nan(1, prestim_time*50)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        create_posvec(1, 28, 6, 1)...
                        nan(1, prestim_time*50)];
                    
stim.type = 'position';


gif_name = stim.name;
gif_fps = 25;

max_pixval = max(max(max(max(pat_data))));
cMap = [zeros(max_pixval+1, 1),  linspace(0, 1, max_pixval+1)' zeros(max_pixval+1, 1),];

mkdir('frames')
cd('frames')

fnum = 0;
for ii = 1:2:(length(stim.xpos_vec)-150)
    
    fnum = fnum+1;
    close all;
    f1 = figure('visible', 'off', ...
                    'units', 'normalized',...
                    'Position', [0.0506 0.5752 0.2637 0.3229],... 
                    'color', 'none');
    
    c_xpos = stim.xpos_vec(ii);
    c_ypos = stim.ypos_vec(ii);
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

    success = system(['ffmpeg -framerate 25 -i frame_%05d.bmp -c:v libx264 -r 30 -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" ../stim_movie_' stim.name '.mp4']);
    if success ~=0 
        path1 = getenv('PATH');
        path1 = [path1 ':/usr/local/bin'];
        setenv('PATH', path1);
        success = system(['ffmpeg -framerate 25 -i frame_%05d.bmp -c:v libx264 -r 30 -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" ../stim_movie_' stim.name '.mp4']);
    end
    
    cd('..')
    rmdir('frames', 's')
    