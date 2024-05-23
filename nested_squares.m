function nested_squares(w1, n, step)
    %% parameters ---------------------------------------------------------
    size = w1;                              % Init size of squares
    i = step;                              
    center = [size / 2, size / 2];          % Center of the square
    angle = 0;                              % Init rotation angle
    
    %% init figure --------------------------------------------------------
    close all;
    figure;
    axis equal;
    grid on;
    hold on;
    xlim([0, size]);
    ylim([0, size])
    
    %% draw squares -------------------------------------------------------
    for j = 1:n
        draw_square(center, size, angle);   %% Callback function
        
        % calculate size of next square 
        new_i = size * i;
        new_size = sqrt(new_i^2 + (size - new_i)^2);
        rotation_amount = atan(new_i / (size - new_i));
  
        % update next square parameters
        size = new_size;
        angle = angle + rotation_amount;
    end
    
    hold off;
end