function [ contrastImage ] = filtContrast( Image )
%фильтр контраста
    contrastImage = (-(127.5*70/(-127.5+70))/70)*Image+(127.5*70/(-127.5+70));
  
end