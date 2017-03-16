// Convolution spatiale : Filtre Moyenneur 3 par 3

function img_out = filtreMoyenneur(matrice)
    SizeX = size(matrice, 1);
    SizeY = size(matrice, 2);
    img_out = zeros(SizeX, SizeY);
    
    for i = 2 : SizeX-1
        for j = 2 : SizeY-1
            img_out(i, j) = round((matrice(i-1, j-1)+matrice(i, j-1)+matrice(i+1, j-1)+matrice(i-1, j)+matrice(i, j)+matrice(i+1, j)+matrice(i-1, j+1)+matrice(i, j+1)+matrice(i+1, j+1))/9);
        end
    end
    
endfunction
