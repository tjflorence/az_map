function loom_frames = make_on_loom()

off_bg = zeros(224, 672);
mid_y = 112;
mid_x = 336;

loom_frames = nan(32, 96, 100);


first_frame = off_bg;
for c_rad = 1:100
    
    c_frame = zeros(224, 672);
    for yy = 1:224
        for xx = 1:672
        
            c_dist = sqrt(  ((yy-mid_y)^2) + ((xx-mid_x)^2) );
            if abs(c_dist) < c_rad
               
                c_frame(yy,xx) = 1;
            
            end
        end
    end
    
    c_frame_ds = imresize(c_frame, 1/7);
    loom_frames(:,:,c_rad) = c_frame_ds;

end

loom_frames = round(loom_frames*7);
loom_frames(loom_frames>7) = 7;
