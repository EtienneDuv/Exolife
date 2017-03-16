function img_out = Filtrage(img_in)

//1.Load image

hist = histogramme(img_in);
n_min = min_hist(hist);
n_max = max_hist(hist);

//2. Traitement
img = normalisation(img_in, n_min, n_max);
img2 = filtreMedian(img);
img_out = filtreMedian(img2)


endfunction
