
function img_out = transformeDeFourier(img_in)
    load("Mission-X-1\Image\Asellus.dat");
    img_out = ifft(imgT);
endfunction
