//1. Initialisation
path = "Mission-B-1\Image\gliese.pbm";
img_in = readpbm(path);

//2. génération de l'histogramme
hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);

//3. Normalisation
img_out = normalisation(img_in, n_min, n_max);

//4. Affichage de l'image finale
figure;
display_gray (img_out);

//5. Sauvegarde
writepbm (img_out, "Mission-B-1\Image\Atmosphère.pbm");
    