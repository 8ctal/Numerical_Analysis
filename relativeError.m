function [error] = relativeError(d,D)
if d == 0
    error('Dividing by cero');
    error=0;
else
    error=abs(d,D)/d;
end
end