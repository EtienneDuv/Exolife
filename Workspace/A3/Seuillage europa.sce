//1. load
img_in=readpbm("C:\Users\alexis\Documents\GitHub\Exolife_2017\Images sources\A3.pbm");

//2. Initialisation
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
img_out = zeros(sizeX, sizeY);

//3. for loop
for i = 1:sizeX
    for j= 1:sizeY
        if img_in(i, j) < 220 then 
            img_out(i, j) = 0;
        else img_out(i, j) = 255;
        end,            
    end        
end

//3. Display
display_gray(img_out);

//4. save
writepbm (img_out, "C:\Users\alexis\Desktop\Prosit\Projet Exolife\Git\Workspace\Seuillage_Europa V2");
