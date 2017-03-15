
function n_min = min_hist(matrice)
    
    for index_hist = 1:256,
        if matrice(index_hist)>0 then
            break
        end,
    end
    n_min = index_hist-1;
    
endfunction
