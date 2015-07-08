function points  = generatePoints( number_of_points, range )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

points = struct('x', randi(range), 'y', randi(range));

for i = 1 : number_of_points - 1 
    duplicates = true; 
    
    while duplicates
        duplicates = false;
        new_point = struct('x', randi(range), 'y', randi(range));
        for j = 1 : length(points)
            if points(j).x == new_point.x && points(j).y == new_point.y
                duplicates = true; 
            end 
        end
    end
    points = [points, new_point]; 
end 
    



end

