

//1. Charger l'image
img_in= readpbm("C:\Users\Adalon\Desktop\Prosit\Projet Exolife\Git\Images sources\A2.pbm");

sizeX= size(img_in, 1)
sizeY= size(img_in, 2)
total = 0

//Histo
cumul = histCumul(img_in);

for i = 1:256
    total = total + ((cumul(i)*i-1)/255);
end
moyenne = round((total / (sizeX*sizeY)));



//2. Display gray
disp(moyenne);

