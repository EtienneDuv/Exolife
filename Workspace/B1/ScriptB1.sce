//1. Initialisation
clear;
getd "C:\Users\alexis\Documents\GitHub\Exolife_2017\Scripts"
img_in = readpbm ("C:\Users\alexis\Documents\GitHub\Exolife_2017\Images sources\B1.pbm");


hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
img_out = normalisation(img_in, n_min, n_max);
// Affichage de l'image finale
figure;
display_gray (img_out);
