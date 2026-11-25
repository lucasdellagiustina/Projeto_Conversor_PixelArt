function reduzida = reduzirResolucao(imagem, novaLargura, novaAltura)

    [altura, largura, canais] = size(imagem);

    reduzida = zeros(novaAltura, novaLargura, canais);

    for y = 1:novaAltura
        for x = 1:novaLargura

            origemX = round(x * largura / novaLargura);
            origemY = round(y * altura / novaAltura);

            origemX = min(max(origemX, 1), largura);
            origemY = min(max(origemY, 1), altura);

            for c = 1:canais
                reduzida(y, x, c) = imagem(origemY, origemX, c);
            endfor

        endfor
    endfor

endfunction

