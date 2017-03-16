clear;
getd "C:\Users\alexis\Documents\GitHub\Exolife_2017\Scripts"
img_in = readpbm ("C:\Users\alexis\Documents\GitHub\Exolife_2017\Images sources\B2.pbm");

hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
img_out = normalisation(img_in, n_min, n_max);

figure,
display_gray(img_out);
