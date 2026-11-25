clc;
clear;
close all;

% ==========================================
% CONFIGURACOES
% ==========================================

caminhoImagem = 'imagens/Blade.png';

% TAMANHO FINAL DESEJADO DA IMAGEM
larguraFinal = 1920;
alturaFinal = 1080;

% QUANTIDADE DE CORES POR CANAL RGB
coresPorCanal = 10;

% RESOLUCAO REDUZIDA
% Quanto maior, mais detalhes serao preservados.
larguraPixelArt = 160;

% ==========================================
% CALCULAR RESOLUCAO E ESCALA
% ==========================================

novaAltura = round( ...
    larguraPixelArt * alturaFinal / larguraFinal);

escalaX = larguraFinal / larguraPixelArt;
escalaY = alturaFinal / novaAltura;

% Verificar se a escala permite ampliacao inteira
if escalaX ~= escalaY || escalaX ~= round(escalaX)
    error(['Configuracao invalida! Ajuste a larguraPixelArt ', ...
           'para permitir uma escala inteira.']);
endif

escala = escalaX;

% ==========================================
% 1 - CARREGAR IMAGEM
% ==========================================

imagem = carregarImagem(caminhoImagem);

[alturaOriginal, larguraOriginal, canais] = size(imagem);

fprintf('Imagem original: %d x %d\n', ...
    larguraOriginal, alturaOriginal);

% ==========================================
% 2 - REDUZIR RESOLUCAO
% ==========================================

imagemReduzida = reduzirResolucao( ...
    imagem, larguraPixelArt, novaAltura);

% ==========================================
% 3 - QUANTIZAR CORES
% ==========================================

imagemCores = quantizarCores( ...
    imagemReduzida, coresPorCanal);

% ==========================================
% 4 - AMPLIAR IMAGEM
% ==========================================

imagemFinal = ampliarImagem(imagemCores, escala);

% ==========================================
% 5 - MOSTRAR RESULTADOS
% ==========================================

figure;

subplot(1, 3, 1);
image(imagem);
axis image off;
title('Original');

subplot(1, 3, 2);
image(imagemReduzida);
axis image off;
title('Resolucao reduzida');

subplot(1, 3, 3);
image(imagemFinal);
axis image off;
title('Pixel Art');

% ==========================================
% 6 - SALVAR RESULTADO
% ==========================================

if ~exist('resultados', 'dir')
    mkdir('resultados');
endif

contador = 1;

while exist(sprintf('resultados/pixel_art_%d.png', contador), 'file')
    contador = contador + 1;
endwhile

nomeArquivo = sprintf('resultados/pixel_art_%d.png', contador);

imwrite(uint8(round(imagemFinal * 255)), nomeArquivo);

% ==========================================
% 7 - INFORMACOES FINAIS
% ==========================================

fprintf('\nPixel Art criada com sucesso!\n');

fprintf('Resolucao reduzida: %d x %d\n', ...
    larguraPixelArt, novaAltura);

fprintf('Escala: %d\n', escala);

fprintf('Cores por canal: %d\n', coresPorCanal);

fprintf('Resolucao final: %d x %d\n', ...
    size(imagemFinal, 2), size(imagemFinal, 1));

fprintf('Imagem salva em: %s\n', nomeArquivo);

