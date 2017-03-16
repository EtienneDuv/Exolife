//1 initialisation
clear;
getd "C:\Users\alexis\Documents\GitHub\Exolife_2017\Scripts"
img_in = readpbm ("C:\Users\alexis\Documents\GitHub\Exolife_2017\Images sources\X2.pbm");

img_out = Convolution9(img_in)

//Display
display_gray(img_out)
