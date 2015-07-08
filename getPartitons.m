function [ Sl, Sr, St, Sb ] = getPartitons(points)
%Summary of this function goes here
%   Detailed explanation goes here

Sl = [];
Sr = [];
St = [];
Sb = []; 

Sx = nestedSortStruct(points, 'x', 'y'); 
Sy = nestedSortStruct(points, 'y', 'x'); 

points_number = length(points); 

if mod(points_number, 2) == 0 
    n = points_number / 2;
else 
    n = points_number / 2 + 0.5; 
end 


for i = 1 : n
    Sl = [Sl, Sx(i)];
    Sb = [Sb, Sy(i)]; 
end

for j =  n+1 : points_number
    Sr = [Sr, Sx(j)];
    St = [St, Sy(j)]; 
end

