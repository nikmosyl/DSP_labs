
function [ gammaImage ] = filtGamma( Image )
%������ �����
    gammaImage = 5000./(255-Image)-15;
    
end