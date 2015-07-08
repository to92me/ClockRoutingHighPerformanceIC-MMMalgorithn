function plotResults( points, route )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    cla;
    hold on;
    
    % prikaz u 100x100
	xlim([0,100]);
	ylim([0,100]);
    
    % spaja pocetne i krajnje tacke iz "route" plavom linijom
    for i = 1 : length(route)
        plot([route(i).x0, route(i).x1], [route(i).y0, route(i).y1], '-bs', 'LineWidth', 0.5 );
    end
    
    % crveni kruzici predstavljaju tacke polaznog problema
    for i = 1 : length(points)-1
        plot([points(i).x, points(i+1).x], [points(i).y, points(i+1).y], 'o', 'Marker', 'o', 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'b');
    end
    
	hold off
	drawnow; pause(.5)

end

