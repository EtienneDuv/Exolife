//1. load
getd  ("Mission-A-3\Script");
path = "Mission-A-3\Image\europa_surface.pbm";
img_in = readpbm(path);

//2. Utilisation de la fonction Seuillage
img_out = seuillage(img_in);

//3. Uilisation du filtre dérivé
img_derive = filtreDerive(img_out);

//4. Display gray
display_gray(img_derive);

//5. Write
writepbm(img_derive, "Mission-A-3\Image\europa_reseau_eau_chaude.pbm");
