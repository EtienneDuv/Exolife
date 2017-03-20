//1. Initialisation
getd  ("Mission-B-3\Script");
path = "Mission-B-3\Image\HD215497.pbm";
img_in = readpbm(path);

//2.Création du seuillage multiple
img_out = seuillageMulti(path);

//3. Affichage
figure;
display_gray (img_out);

//4. Sauvegarde
writepbm(img_out, "Mission-B-3\Image\4 zones.pbm")
