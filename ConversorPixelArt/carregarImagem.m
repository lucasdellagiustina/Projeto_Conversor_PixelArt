function imagem = carregarImagem(caminho)

    if ~exist(caminho, 'file')
        error('Imagem nao encontrada!');
    endif

    original = imread(caminho);

    % Remove canal alpha, se existir
    if size(original, 3) == 4
        original = original(:,:,1:3);
    endif

    % Converte escala de cinza para RGB
    if size(original, 3) == 1
        original = cat(3, original, original, original);
    endif

    % Normaliza os valores entre 0 e 1
    if isa(original, 'uint8')
        imagem = double(original) / 255;

    elseif isa(original, 'uint16')
        imagem = double(original) / 65535;

    else
        imagem = double(original);

        if max(imagem(:)) > 1
            imagem = imagem / max(imagem(:));
        endif
    endif

endfunction


