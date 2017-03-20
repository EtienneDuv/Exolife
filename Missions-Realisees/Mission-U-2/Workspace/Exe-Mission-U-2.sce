
//1. load
getd  ("Mission-U-2\Script");
path = "Mission-U-2\Image\U2_surface.pbm";
img_in = readpbm(path);


hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
img_nor = normalisation(img_in, n_min, n_max);
img_sobel = filtreSobel(img_nor);
img_out = seuillageInter(img_sobel, 90, 200);

//2.display
figure;
display_gray(img_in);
figure;
display_gray(img_nor);
figure;
display_gray(img_sobel);
figure;
display_gray(img_out);

//3.write
writepbm(img_out, Mission-U-2\Image\U2_surface_travaillee.pbm);

