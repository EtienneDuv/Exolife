

function image_out = normalisation (matrice, n_min, n_max)
    sizeX = size(matrice, 1);
    sizeY = size(matrice, 2);
    image_out = zeros(sizeX,sizeY);
    
    for i = 1:sizeX,
        for j = 1:sizeY
            pixel_value = matrice(i,j);
            image_out(i,j) = ((pixel_value-n_min)*255)/(n_max-n_min);
        end
    end
endfunction
