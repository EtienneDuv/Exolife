//1 initialisation
clear;
getd "Mission-U-2\Script";
img_in = readpbm ("Mission-U-2\Image\U2_surface.pbm");

//Traitement multiple
hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);

img = normalisation(img_in, n_min, n_max);
img1 = filtreSobel(img);
img_out = seuillageInter(img1, 90, 200);

//Display
display_gray(img_out)

//Save
writepbm(img_out, "\Mission-U-2\Image\Tardis.pbm");
