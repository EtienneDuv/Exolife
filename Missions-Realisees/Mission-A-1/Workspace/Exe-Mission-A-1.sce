getd "Mission-A-1\Script"

//1. load
getd  ("Mission-A-1\Script");
path = "Mission-A-1\Image\encelade.pbm";
img_in = readpbm(path);

//2. utilisation de la fonction Seuillage
hist = histogramme(img_in);
figure;
img_out = seuillage(img_in);

//3. Display
display_gray(img_out);

//4. save
writepbm (img_out, "Mission-A-1\Image\ZoneAtterissage.pbm");
