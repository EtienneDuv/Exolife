function histoCumul(img_in);
    
//1.création d'un tableau
hist = zeros(256,1);
histCumul = zeros(256,1)

sizeX= size(img_in, 1);
sizeY= size(img_in, 2);

//2.boucle for - Histogramme
for i = 1:sizeX
    for j= 1:sizeY
        pixelValue = img_in(i,j);
        hist(pixelValue+1) = hist(pixelValue+1) +1;
    end        
end

//3. Boucle for - Hustogramme cumulé

histCumul(1,1) = hist (1,1);
for i = 2:256
        histCumul(i,1) = histCumul (i-1, 1) + hist (i, 1);
end

figure;
plot(histCumul);
endfunction
