function [B,O] = Verification_fixed_point_function_Juan_Jaimes(g,p0,a,b)
format long
    max_iter = 100;
    B=true;
    O= my_fixed_point_function_Michael_Aponte(g,p0,max_iter);
    if isnan(O)
        "diverge"
        B=false;
    elseif a<=O && O<=b
        "dentro del rango"
    end
end