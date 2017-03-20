//1. Initialisation
getd  ("Mission-B-1\Script");
path = "Mission-B-1\Image\gliese.pbm";
img_in = readpbm(path);

//2. génération de l'histogramme
cumul = histCumul(img_in);

//3. Normalisation
img_out = egalisation(img_in, cumul);

//4. Affichage de l'image finale
figure;
display_gray (img_out);

//5. Sauvegarde
writepbm (img_out, "Mission-B-1\Image\Atmosphère.pbm");
    
