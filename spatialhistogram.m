function SH = spatialhistogram(L, m, n, numBins)
	%% Calcula o histograma espacial de uma imagem LBP dividida em celulas [m x n].
	[h,w] = size(L);
	py = uint32(floor(h/m));
	px = uint32(floor(w/n));
	% Alocação de memória
	SH = zeros(1,m*n*numBins);
	i = 0;
	for linIdx=1:m
		for colIdx=1:n
			C = L((linIdx-1)*py+1:linIdx*py,(colIdx-1)*px+1:colIdx*px);
			SH(1,(i*numBins+1):((i+1)*numBins)) = hist(C(:), numBins, 1); % Histograma normalizado
			i+=1;
		end
	end
end
