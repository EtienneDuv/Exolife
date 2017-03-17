
function matrice_out=Add(matrice_1, matrice_2)
    
    sizeX = size(matrice_1, 1)
    sizeY = size(matrice_1, 2)
    matrice = zeros(sizeX, sizeY)

    for i=1:sizeX
        for j=1:sizeY
            matrice(i,j) = min((matrice_1(i,j)+matrice_2(i,j)),255)
        end
    end

    matrice_out = matrice
    
endfunction
