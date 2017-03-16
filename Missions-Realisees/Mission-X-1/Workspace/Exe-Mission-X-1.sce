
//1. load
//path = "Mission-X-1\Image\Asellus.dat";
//img_in = readpbm(path);

//2. Utilisation de la fonction inversée de transformé de fourrier

    load("Mission-X-1\Image\Asellus.dat");
    img_out = ifft(imgT);
    
//4. Display gray
figure;
display_gray(img_out);
figure;
display_gray(imgT);

//5. Write
writepbm(img_out, "Mission-B-2\Image\Asellus_Fourrier.dat");

