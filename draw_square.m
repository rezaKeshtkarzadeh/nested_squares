function draw_square(center, size, angle)
    % For calculating corners relative to square center
    half_size = size / 2;
   
    x = [-half_size, half_size, half_size, -half_size, -half_size];
    y = [-half_size, -half_size, half_size, half_size, -half_size];
    
    rotation_matrix = [
        cos(angle), -sin(angle);
        sin(angle), cos(angle)
    ];
    
    rotated_points = rotation_matrix * [x; y];
    
    % Transfer square to first 1/4
    translated_x = rotated_points(1, :) + center(1);
    translated_y = rotated_points(2, :) + center(2);
    
    plot(translated_x, translated_y, 'Color', 'red');
end
