function Fct_seuil=readpbm(filename)  
//1. load
//filename = "C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Images sources\Earth.pbm";
img_in = readpbm(filename);

//2. Initialisation
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
img_out = zeros(sizeX, sizeY);
S = input("===== Entrez le SEUIL =====  ");


//3. for loop
for i = 1:sizeX
    for j= 1:sizeY
        if img_in(i, j) < S then  //SEUIL
            img_out(i, j) = 0;
        else img_out(i, j) = 255;
        end,            
    end        
end

//4. Display
display_gray(img_out);

//5. save
writepbm (img_out, "C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Workspace\Seuillage TRAITE.pbm");     // DESTINATION SORTIE


//endfunction
