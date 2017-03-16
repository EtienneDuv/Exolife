//1. load
path = "Mission-A-1\Image\encelade.pbm";
img_in = readpbm(path);

//2. utilisation de la fonction Seuillage
img_out = seuillage(img_in);

//3. Display
display_gray(img_out);

//4. save
writepbm (img_out, "Mission-A-1\Image\ZoneAtterissage.pbm");
