// Convolution spatiale : le filtre gradient

function img_out = filtreDerive(matrice)
    SizeX = size(matrice, 1);
    SizeY = size(matrice, 2);
    
    img_out = zeros(SizeX, SizeY);
    
    for i = 2 : SizeX-1,
        for j = 2 : SizeY-1,
            // Utilisation de la formule sqrt(Ii²+Ij²) et avec les pixels Ii et Ij obtenus à l'aide de la matrice de dérivé.
            
            img_out(i, j) = round(sqrt( round(.5*(-matrice(i-1, j)+matrice(i+1, j)))*round(.5*(-matrice(i-1, j)+matrice(i+1, j))) + round(.5*(-matrice(i, j-1)+matrice(i, j+1)))*round(.5*(-matrice(i, j-1)+matrice(i, j+1)))));
        end
    end
    
endfunction
