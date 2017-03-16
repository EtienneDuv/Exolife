//function img_out = ConvolutionSuite(filename)

//1.Load image
img_in = readpbm("C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Images sources\Earth.pbm");

//2.création d'un tableau
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
R = input("=== Entrez le rayon de convolution ===  ")
img_out = zeros(sizeX, sizeY);

//3.boucle for 
for i = (0+R):(sizeX-R)     //Parcours l'image
    for j= (0+R):(sizeY-R)
        X = R
        Y = R
        total = 0;
        
        //SOMME VALEURS AUTOUR DU CENTRE DU FILTRE
        for X = -R:R
            for Y = -R:R
                total = total + img_in(X,Y);
        end
        end
   
        moy = round((total)/((R*2)+1)*((R*2)+1))
        img_out(i,j) = moy;
   
    end        
end
        

//4. Display
display_gray(img_out);

//endfunction
