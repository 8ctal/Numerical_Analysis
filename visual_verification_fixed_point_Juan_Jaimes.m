function visual_verification_fixed_point_Juan_Jaimes(g, a, b, p0, it)

    format long;
   
    x = linspace(a, b, 100); 
    y = g(x);  
    
    figure;
    plot(x, y, 'b-', 'LineWidth', 2);  
    hold on;
    plot(x, x, 'r--', 'LineWidth', 1.5);  
    

    xlabel('x');
    ylabel('g(x)');
    title('Fixed Point Visual Verification');
    grid on;
    
    
    for k = 1:it
        
        p1 = g(p0);  
        plot([p0, p0], [p0, p1], 'k--');  % Línea vertical
        plot([p0, p1], [p1, p1], 'k--');  % Línea horizontal
        
        p0 = p1;
    end
    plot(p0, p0, 'ro', 'MarkerSize', 3, 'MarkerFaceColor', 'green');
    hold off;
end
