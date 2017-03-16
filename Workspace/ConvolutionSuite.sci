function img_out = ConvolutionSuite(filename)

//1.Load image
img_in = readpbm(path);

///2.création d'un tableau
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
R = input("=== Entrez le rayon de convolution ===  ")
img_out = zeros(R, R);

//3.boucle for 
for i = (1+R):(sizeX-R)
    for j= (1+R):(sizeY-R)
        //SOMME VALEURS AUTOUR DU CENTRE DU FILTRE
        
       
       
       
        moyenne = round((total)/(R*R);
        
        img_out(i,j) = moyenne;

    end        
end

//4. Display
display_gray(img_out);

endfunction
