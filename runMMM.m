clc 
clear all 

number_of_points = 100; 
range = 100; 
route = []; 

points = generatePoints( number_of_points, range );
plotResults(points, route)

[ Sl, Sr, St, Sb ] = getPartitons(points);

plotResults(Sl, route);
plotResults(Sr, route);
plotResults(St, route);
plotResults(Sb, route);


[ average_x, average_y ] = getAverage( points ) ;

