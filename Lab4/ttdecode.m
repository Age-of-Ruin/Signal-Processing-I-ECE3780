function [ digits, xdiv ] = ttdecode( x )
N = 2048;
xdiv = zeros(7,10000);
j = 1;
for i = 1:7
    
    k = 1;
    if x(j+1) == 0 && x(j) == 0   
        for m = 1:100
            j = j + 1;
        end
    end
    while (x(j+1) == 0 && x(j) == 0 )
        j = j + 1;
    end
    xdiv(i,k) = x(j);
    k = k + 1;
    j = j + 1;
    if x(j+1) ~= 0    
        for m = 1:100
            
            xdiv(i,k) = x(j);
            k = k + 1;
            j= j + 1;
        end 
    end
    while ((x(j) ~= 0 || x(j-1) ~= 0) && j < length(x))
        xdiv(i,k) = x(j);
        k = k + 1;
        j = j + 1;
    end
       
end    
digits = zeros(1,7);
rowfreq = [175,194,214,236];
colfreq = [303,335,370];
digitmatrix = [1 2 3; 4 5 6; 7 8 9; 0 0 0];
for j = 1:7
    fftx = abs(fft(xdiv(j,:),N));
    nrgrow = zeros(1,4);
    nrgcol = zeros(1,3);
    for i = 1:4
        nrgrow(i) = fftx(rowfreq(i))^2;
    end
    for i = 1:3
        nrgcol(i) = fftx(colfreq(i))^2;
    end
    [~,rowI] = max(nrgrow);
    [~,colI] = max(nrgcol);
    digits(j) = digitmatrix(rowI,colI);
end

end

