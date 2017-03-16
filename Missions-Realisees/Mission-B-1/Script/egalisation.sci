function img_out = egalisation(matrice, histCumul_in)
    
//1. Création tableau
    SizeX = size(matrice, 1);
    SizeY = size(matrice, 2);
    pixel_nb = SizeX*SizeY;
    disp(pixel_nb);
   
//2. Calcul du coefficient directeur
    coef = pixel_nb/255;
    disp(coef);
    table = zeros(1:256);

//3. 
    for index = 1:256
        table(index)=round(histCumul_in(index)/coef);
    end
    disp(table);
    
    img_out = zeros(SizeX, SizeY);
    
    for i = 1:SizeX
        for j = 1:SizeY,
            value_pixel = matrice(i,j);
            img_out(i,j) = table(value_pixel+1);
        end
    end

endfunction
