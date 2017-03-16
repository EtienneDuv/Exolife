// fonction de soustraction

// chargement des images

// for d'analyse de pixels, soustraction
function preleve = soustraction(matriceA,matriceB)
    
    img_in1 = matriceA;
    img_in2 = matriceB;
    
    SizeX1 = size(matriceA,1);
    SizeY1 = size(matriceA,2);
    
    SizeX2 = size(matriceB,1);
    SizeY2 = size(matriceB,2);
    
        img_out = zeros(SizeX1,SizeY1);
    
    for i = 1:SizeX1
        for j = 1:SizeY1
                if j > SizeY2 | i > SizeX2 then
                    img_out(i,j) = img_in1(i,j);
                else
                difference = img_in1(i,j)-img_in2(i,j);
                     if difference < 0 then
                          img_out(i,j) = 255;
                     else
                          img_out(i,j) = difference;
                     end,
                end,
        end;    
    end;
    
    display_gray(img_out);
endfunction