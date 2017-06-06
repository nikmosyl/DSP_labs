
function [ gammaImage ] = filtGamma( Image )
%фильтр гаммы
    gammaImage = 5000./(255-Image)-15;
    
end