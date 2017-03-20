
//1. load
getd  ("Mission-A-4\Script");
path = "Mission-A-4\Image\jupiter2.pbm";
img_in = readpbm(path);

//2. Utilisation de la fonction Seuillage
img_out = filtreMedian(img_in);

//4. Display gray
display_gray(img_in);
figure;
display_gray(img_out);

//5. Write
writepbm(img_out, "Mission-A-4\Image\jupiter_clear.pbm");
