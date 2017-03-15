

function n_max = max_hist(matrice)
    
    for index_hist = 1:256,
        if matrice (257-index_hist)>0 then
            break
        end,
    end
    
    n_max = 256-index_hist;
    
endfunction
