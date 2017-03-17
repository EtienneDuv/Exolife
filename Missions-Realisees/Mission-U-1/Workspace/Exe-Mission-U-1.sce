//1. load
path = "Mission-U-1\Image\U1_surface.pbm";
img_in = readpbm(path);

//2. utilisation de la fonction de Normalisation
hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
//3. utilisation de la fonction de Normalisation
img_nor = normalisation(img_in, n_min, n_max);

//4. utilisation de la fonction filtre de Sobel
img_out = filtreSobel(img_nor);

//5. Display
figure;
display_gray(img_in);
figure;
display_gray(img_nor);
figure;
display_gray(img_out);

//6. save
writepbm (img_nor, "Mission-U-1\Image\U1_surface_Normalisee.pbm");

writepbm (img_out, "Mission-U-1\Image\U1_surface_Sobel.pbm");

