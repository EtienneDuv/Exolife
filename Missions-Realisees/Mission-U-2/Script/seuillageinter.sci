
function img_out = seuillageInter(img_in, rmin, rmax)

//2. Initialisation
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
//3. création d'une matrice out de zéro
img_out = img_in

//3. pour chaque pixel on compare son niveau de gris par rapport au seuil indiqué
for i = 1:sizeX
    for j= 1:sizeY
       pix = img_in(i,j)
        if pix > rmin & pix < rmax then
                img_out(i,j) = pix
            else
                img_out(i,j) = 0
        end,            
    end        
end

endfunction
