//1.Load image
img_in = readpbm("C:\Users\alexis\Documents\GitHub\Exolife_2017\Images sources\missionX2\GlieseV2.pbm");

hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);
img = normalisation(img_in, n_min, n_max);
img2 = filtreMedian(img);
img_out = filtreMedian(img2)

//4. Display
display_gray(img_out);

