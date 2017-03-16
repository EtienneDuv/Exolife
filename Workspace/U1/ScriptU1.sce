clear;
getd "C:\Users\alexis\Documents\GitHub\Exolife_2017\Scripts"
img_in = readpbm ("C:\Users\alexis\Documents\GitHub\Exolife_2017\Images sources\missionU1\U1_surface.pbm");

hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
img1 = normalisation(img_in, n_min, n_max);
img_out = filtreDerive(img1)

display_gray(img_out);
