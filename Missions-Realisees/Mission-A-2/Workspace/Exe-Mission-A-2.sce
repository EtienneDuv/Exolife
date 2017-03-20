
//1. load
getd  ("Mission-A-2\Script");
path = "Mission-A-2\Image\mars.pbm";
img_in = readpbm(path);

//2. Utilisation de la fonction Moyenne
moy = moyenne(img_in);

//3. Disp
disp(moy);

