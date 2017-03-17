//1 initialisation
clear;
getd "C:\Users\alexis\Documents\GitHub\Exolife_2017\Scripts"
img_in = readpbm ("C:\Users\alexis\Documents\GitHub\Exolife_2017\Images sources\missionU2\U2_surface.pbm");


hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
img = normalisation(img_in, n_min, n_max);
img1 = filtreSobel(img);
img_out = seuillageInter(img1, 90, 200);

//Display
display_gray(img_out)
