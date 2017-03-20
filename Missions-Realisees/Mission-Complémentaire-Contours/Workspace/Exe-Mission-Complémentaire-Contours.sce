//1.Load image
getd ("Mission-Complémentaire-Contours\Script");
img_in = readpbm("Mission-Complémentaire-Contours\Image\Contours.pbm");

///2.création d'un tableau
sizeX= size(img_in, 1);
sizeY= size(img_in, 2);
img_out = zeros(sizeX, sizeY);

//3. Filtre sobel
img_out = filtreSobel(img_2);


//4. Display
display_gray(img_out);

//5. Save
writepbm(img_out, "Mission-Complémentaire-Contours\Image\Contours-Visibles.pbm")
