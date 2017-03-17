
//1. load
path = "Mission-B-2\Image\GD61.pbm";
img_in = readpbm(path);

//2. Utilisation de la fonction d'histogramme + de normalisation
hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
img_out = normalisation(img_in, n_min, n_max);

//4. Display gray
figure;
display_gray(img_out);

//5. Write
writepbm(img_out, "Mission-B-2\Image\GD61_visible_Normalisation.pbm");

