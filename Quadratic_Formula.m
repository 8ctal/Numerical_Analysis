function [out] = Quadratic_Formula(a,b,c)
if b^2-4*a*c <0
    error('El discriminante es menor a cero, por tanto las raices son reales')
end

if b > 0
    out = (-b-sqrt(b^2-4*a*c))/(2*a);
else
    out = (-b+sqrt(b^2-4*a*c))/(2*a);
end

end