function [out] = Improving_the_Quadratic_Formula(a,b,c)
if b^2-4*a*c <0
    error('El discriminante es menor a cero, por tanto las raices son reales')
end
if b > 0
    X1 = (-2*c)/(b+sqrt(b^2-4*a*c));
    X2 = Quadratic_Formula(a,b,c);
else
    X1 = Quadratic_Formula(a,b,c);
    X2= (-2*c)/(b-sqrt(b^2-4*a*c));
end
out = [X1 X2];
end