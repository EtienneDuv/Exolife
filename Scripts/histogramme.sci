

//1.Charger l'image
//img_in=readpbm("C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Images sources\Gliese 667Cc_surface.pbm");
//2.Création de L'histogramme
//histo = histplot();

function histogramme(img_in)  ;
//2.création d'un tableau
hist = zeros(256,1);

sizeX= size(img_in, 1);
sizeY= size(img_in, 2);

//3.boucle for 
for i = 1:sizeX
    for j= 1:sizeY
        pixelValue = img_in(i,j);
        hist(pixelValue+1) = hist(pixelValue+1) +1;
    end        
end

figure;
plot(hist);
endfunction;
