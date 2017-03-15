function img_out = Convolution9(filename)

//1.Load image
img_in = readpbm(path);

///2.création d'un tableau
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
img_out = zeros(sizeX, sizeY);

//3.boucle for 
for i = 2:(sizeX-1)
    for j= 2:(sizeY-1)
        //SOMME VALEURS AUTOUR DU CENTRE DU FILTRE
        total = img_in(i-1,j-1) + img_in(i,j-1) + img_in(i+1,j-1) + img_in(i-1,j) + img_in(i+1,j) + img_in(i-1,j+1) + img_in(i,j+1) + img_in(i+1,j+1) + img_in(i,j)
        moyenne = round((total)/9);
        
        img_out(i,j) = moyenne;

    end        
end

//4. Display
display_gray(img_out);

endfunction
