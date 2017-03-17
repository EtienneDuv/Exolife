
function img_out = filtreMedian(matrice)
    
    SizeX = size(matrice, 1);
    SizeY = size(matrice, 2);
    img_out = zeros(SizeX, SizeY);
    
    for i = 2 : SizeX-1,
        for j = 2 : SizeY-1,
            median_values = [matrice(i,j),matrice(i-1,j-1),matrice(i,j-1),matrice(i+1,j-1),matrice(i-1,j),matrice(i+1,j),matrice(i-1,j+1),matrice(i,j+1),matrice(i+1,j+1)];
            median_trie=gsort(median_values,'g','i');
            img_out(i,j)=median_trie(5);
        end
    end
    
endfunction
