function moyenne_out = moyenne(img_in);


//1. Charger l'image
sizeX= size(img_in, 1)
sizeY= size(img_in, 2)
somme = 0;

//Histo
cumul = histogramme(img_in);

for i = 1:256
    somme = somme + (cumul(i)*i-1);
end
moyenne_out = round((somme / (sizeX*sizeY))/255*100);



//2. Display
disp(moyenne_out);

endfunction
