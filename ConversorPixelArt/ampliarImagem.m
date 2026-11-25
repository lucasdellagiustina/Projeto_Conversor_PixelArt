function ampliada = ampliarImagem(imagem, escala)

    [altura, largura, canais] = size(imagem);

    novaAltura = altura * escala;
    novaLargura = largura * escala;

    ampliada = zeros(novaAltura, novaLargura, canais);

    for y = 1:novaAltura
        for x = 1:novaLargura

            origemY = ceil(y / escala);
            origemX = ceil(x / escala);

            for c = 1:canais

                ampliada(y, x, c) = ...
                    imagem(origemY, origemX, c);

            endfor
        endfor
    endfor

endfunction

