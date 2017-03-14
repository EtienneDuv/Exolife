//0.getd "C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Scripts"
//1.load une image
img_in=readpbm("C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Images sources\Earth.pbm");
//2.exécution d'un script sur  une image
display_gray (img_in);
//3.Write
writepbm (img_in,"C:\Users\antoi\OneDrive\Documents\Exia\Exolife_2017\Workspace\Earth_Mission_Test.pbm");
