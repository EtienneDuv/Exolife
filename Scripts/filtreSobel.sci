// Convolution spatiale avec le filtre Sobel

function img_out = filtreSobel(matrice)
    SizeX = size(matrice, 1);
    SizeY = size(matrice, 2);
    img_out = zeros(SizeX, SizeY);
    
    for i = 2 : SizeX-1,
        for j = 2 : SizeY-1,
            // Utilisation de la formule sqrt(Ii²+Ij²) et avec les pixels Ii et Ij obtenus à l'aide de la matrice de Sobel.
            
            //Application du filtre de Sobel pour le pixel en i
            nouveau_Pixel_i = round((-matrice(i-1, j-1)+matrice(i+1, j-1)-2*matrice(i-1, j)+2*matrice(i+1, j)-matrice(i-1, j+1)+matrice(i+1, j+1))/6);
            // Application du filtre de Sobel pour le pixel en j
            nouveau_Pixel_j = round((-matrice(i-1, j-1)+matrice(i+1, j-1)-2*matrice(i, j-1)+2*matrice(i, j+1)-matrice(i+1, j-1)+matrice(i+1, j+1))/6);
            img_out(i, j) = round(sqrt( nouveau_Pixel_i*nouveau_Pixel_i + nouveau_Pixel_j*nouveau_Pixel_j ));
        end
    end
    
endfunction

