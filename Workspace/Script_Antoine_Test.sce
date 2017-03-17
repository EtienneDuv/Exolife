//0.getd "C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Scripts"

//
//1.load une image
path = "C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Images sources\missionTest\Earth.pbm"
img_in=readpbm(path);
//Write
//writepbm (img_in,"C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Workspace\Earth_Mission_Test.pbm");

//
//2.exécution du script Histogramme
//hist_out = histogramme(img_in);
//n_max = max_hist(hist_out);
//n_min = min_hist(hist_out);
//image_out = normalisation(img_in, n_min, n_max);
//figure;
//display_gray(image_out);

//
//3.éxécution du script Histogramme cumulé
//histCumul_out = histCumul(img_in);

//
//4.Egalisation
//histCumul_in = histCumul(img_in);
//figure;
//img_out = egalisation(img_in, histCumul_in);
//display_gray(img_out);
//display_gray(histCumul_out);

//
//5.filtreMoyen
//img_out = filtreMoyen(img_in);
//figure;
//display_gray(img_in);
//figure;
//display_gray(img_out);

//
//6.FiltreDerive
//img_out = filtreDerive(img_in);
//figure;
//display_gray(img_in);
//figure;
//display_gray(img_out);

//
//7.filtreSobel
//img_out = filtreSobel(img_in);
//figure;
//display_gray(img_in);
//figure;
//display_gray(img_out);

//
//8.Soustraction - NE MARCHE PAS 
//path2 = "C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Images sources\A4A.pbm"
//path3 = "C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Images sources\A4B.pbm"
//img_in1=readpbm(path2);
//img_in2=readpbm(path3);
//img_out = soustraction(img_in1,img_in2);
//img_out2 = soustraction(img_in1,img_out)
//figure;
//display_gray(img_in1);
//figure;
//display_gray(img_in2);
//figure;
//display_gray(img_out2);

//
//9.filtreGaussien
//img_out = filtreGaussien(img_in);
//figure;
//display_gray(img_in);
//figure;
//display_gray(img_out);

//
//10. filtreMedian
path2 = "C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Images sources\missionA4\jupiter1.pbm"
img_in2=readpbm(path2);
img_out = filtreMedian(img_in2);
figure;
display_gray(img_in2);
figure;
display_gray(img_out);

//
//11.TransformeDeFourier
//img_out = transformeDeFourier(img_in);
//hist_out = histogramme(img_out);
//plot(hist_out);
//display_gray(img_in);
//figure;
//display_gray(img_out);




