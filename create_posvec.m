function pos_vec = create_posvec(start_pos, end_pos,...
                                    frames_per_update, do_return)

    %{
      quick and dirty way to make position vector                              
    %}

    pos_vec = [];
    for ii = start_pos:end_pos

        pos_vec = [pos_vec ii*ones(1, frames_per_update)];

    end

    if do_return == 1

        pos_vec = [pos_vec fliplr(pos_vec)];

    end


end