

//1. Charger l'image
img_in= readpbm("C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Images sources\A2.pbm");

sizeX= size(img_in, 1)
sizeY= size(img_in, 2)
somme = 0;

//Histo
cumul = histogramme(img_in);

for i = 1:256
    somme = somme + (cumul(i)*i-1);
end
moyenne = round((somme / (sizeX*sizeY))/255*100);



//2. Display gray
disp(moyenne);

