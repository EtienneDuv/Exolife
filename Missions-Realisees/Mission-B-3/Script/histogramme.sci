
function hist_out = histogramme(img_in)  ;
    
//1.création d'un out
hist_out = zeros(256,1);

//2.création d'un tableau
hist = zeros(256,1);
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);

//3.boucle for remplissage
for i = 1:sizeX
    for j= 1:sizeY
        pixelValue = round (img_in(i,j));
        hist_out(pixelValue+1) = hist_out(pixelValue+1) +1;
    end        
end

figure;
plot(hist_out);

endfunction
