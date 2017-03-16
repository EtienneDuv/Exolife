//1. load
path = "C:\Users\alexis\Documents\GitHub\Exolife_2017\Images sources\missionA1\Encelade.pbm";
img_in = readpbm(path);

//2. Initialisation
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
img_out = zeros(sizeX, sizeY);

//3. for loop
for i = 1:sizeX
    for j= 1:sizeY
        if img_in(i, j) < 130 then 
            img_out(i, j) = 0;
        else img_out(i, j) = 255;
        end,            
    end        
end

//3. Display
display_gray(img_out);

//4. save
writepbm (img_out, "C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Workspace\Seuillage V1");
