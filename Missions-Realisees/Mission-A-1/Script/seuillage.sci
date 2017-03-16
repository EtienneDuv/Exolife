
function img_out = seuillage(img_in)

//2. Initialisation
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
//3. création d'une matrice out de zéro
img_out = zeros(sizeX, sizeY);

//3. pour chaque pixel on compare son niveau de gris par rapport au seuil indiqué
for i = 1:sizeX
    for j= 1:sizeY
        if img_in(i, j) < 190 then 
            img_out(i, j) = 0;
        else img_out(i, j) = 255;
        end,            
    end        
end

endfunction
