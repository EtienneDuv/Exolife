function img_out = seuillageMulti(path)

//1. load
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
                img_out(i,j) = 70;
        elseif img_in(i, j) < 192 then
                img_out(i,j) = 120;
        else 
                img_out(i, j) = 255;
        end,            
    end        
end

endfunction
