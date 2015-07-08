function [ average_x, average_y ] = getAverage( points )
% Summary of this function goes here
%   Detailed explanation goes here


x_sum = 0; 
y_sum = 0; 

struct_lenght = length(points);

for i = 1 : struct_lenght
    x_sum = x_sum + points(i).x; 
    y_sum = y_sum + points(i).y; 
end

average_x = x_sum / struct_lenght; 
average_y = y_sum / struct_lenght; 

end

