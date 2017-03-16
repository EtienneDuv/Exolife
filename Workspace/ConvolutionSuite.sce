//function img_out = ConvolutionSuite(filename)

//1.Load image
img_in = readpbm("C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Images sources\Earth.pbm");

//2.création d'un tableau
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
R = input("=== Entrez le rayon de convolution ===  ")
img_out = zeros(sizeX, sizeY);
total = 0;

//3.boucle for 
for i = (1+R):(sizeX-R)
    for j= (1+R):(sizeY-R)
        X = R
        Y = R
        //SOMME VALEURS AUTOUR DU CENTRE DU FILTRE
        for X = -R:R
            for Y = -R:R
                total = total + img_in(X,Y)
       end
       end
    end        
end
        moyenne = round((total)/(R*R);
        
        img_out(i,j) = moyenne;

//4. Display
display_gray(img_out);

//endfunction
