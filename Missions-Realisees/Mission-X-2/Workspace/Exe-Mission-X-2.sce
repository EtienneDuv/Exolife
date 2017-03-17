//1. Initialisation
path = "Mission-X-2\Image\Gliese.pbm";
img_in = readpbm(path);

//2. Création d'image
img_out = Filtrage(img_in)

//3. Affichage
figure;
display_gray(img_out);

//4. Sauvegarde
writepbm(img_out, "Mission-X-2\Image\Vegetation.pbm");
