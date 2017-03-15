//0.getd "C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Scripts"
path = "C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Images sources\Earth.pbm"
//1.load une image
img_in=readpbm(path);

//2.exécution d'un script sur  une image
//hist_out = histogramme(img_in);
//n_max = max_hist(hist_out);
//n_min = min_hist(hist_out);
//image_out = normalisation(img_in, n_min, n_max);
//figure;
//display_gray(image_out);

//3.éxécution du script Histogramme cumulé
histCumul_out = histoCumul(img_in);
figure;
display_gray(histCumul_out);

//3.Write
//writepbm (img_in,"C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Workspace\Earth_Mission_Test.pbm");
