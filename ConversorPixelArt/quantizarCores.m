function resultado = quantizarCores(imagem, quantidadeCores)

    resultado = zeros(size(imagem));

    niveis = quantidadeCores - 1;

    for c = 1:3

        canal = imagem(:,:,c);

        canal = round(canal * niveis) / niveis;

        resultado(:,:,c) = canal;

    endfor

endfunction

