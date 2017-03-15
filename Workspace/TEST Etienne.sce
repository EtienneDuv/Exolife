//1. load
path = "C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Images sources\A4A.pbm";
img_in = readpbm(path);

//2. Initialisation
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
img_out = zeros(sizeX, sizeY);

//3. for loop
for i = 1:sizeX
    for j= 1:sizeY
        if img_in(i, j) < 64 then 
            img_out(i, j) = 0;
        elseif img_in(i, j) < 128 then
                img_out(i,j) = 85;
        elseif img_in(i, j) < 192 then
                img_out(i,j) = 170;
        else 
                img_out(i, j) = 255;
        end,            
    end        
end

//3. Display
display_gray(img_out);

//4. save
//writepbm (img_out, "C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Workspace\Test Etienne.pbm");
