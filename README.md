# 🎨 Conversor de Imagens para Pixel Art

Projeto desenvolvido em **GNU Octave** com o objetivo de transformar imagens digitais em imagens com aparência de Pixel Art, utilizando conceitos de **Processamento Digital de Imagens (PDI)**.

O programa realiza a redução da resolução da imagem, a quantização de cores e a ampliação por meio do método Nearest Neighbor, preservando os blocos de pixels característicos desse estilo artístico.

## 🛠️ Tecnologias utilizadas

- GNU Octave
- Processamento Digital de Imagens (PDI)
- Manipulação de matrizes e pixels
- Amostragem e quantização de imagens

## 📂 Estrutura do projeto

```text
ConversorPixelArt/
│
├── principal.m
├── carregarImagem.m
├── reduzirResolucao.m
├── quantizarCores.m
├── ampliarImagem.m
│
├── imagens/
│   └── Blade.png
│
└── resultados/
```

### Pastas do projeto

- **imagens/**: coloque nesta pasta as imagens originais que deseja transformar.
- **resultados/**: pasta destinada ao armazenamento das imagens geradas pelo conversor.

Os arquivos de imagem utilizados como entrada devem ser colocados em `imagens/`. Os resultados do processamento devem ser salvos em `resultados/`.

## ⚙️ Como funciona

O processamento é dividido em quatro etapas principais:

**1. Carregamento da imagem**

O programa carrega a imagem escolhida, verifica sua existência, trata possíveis canais de transparência e converte os valores dos pixels para uma escala normalizada entre 0 e 1.

**2. Redução da resolução (Amostragem)**

A imagem original tem sua quantidade de pixels reduzida. Essa etapa diminui o nível de detalhes e cria a estrutura de blocos que será utilizada na Pixel Art.

**3. Quantização de cores**

A quantidade de níveis de cores disponíveis em cada canal RGB é reduzida. Isso limita a variedade de cores da imagem e contribui para a aparência característica da Pixel Art.

**4. Ampliação da imagem**

A imagem processada é ampliada utilizando o método **Nearest Neighbor**, que replica os pixels existentes para aumentar suas dimensões sem criar cores intermediárias.

## 📚 Conceitos de PDI aplicados

| Conceito | Aplicação no projeto |
|---|---|
| Amostragem | Redução da resolução espacial da imagem. |
| Quantização | Redução dos níveis de intensidade dos canais RGB. |
| Interpolação | Ampliação utilizando o método Nearest Neighbor. |
| Espaço de cores RGB | Representação das cores por meio dos canais vermelho, verde e azul. |

## ▶️ Como executar

1. Instale o [GNU Octave](https://octave.org/).
2. Baixe ou clone este repositório.
3. Abra o projeto no GNU Octave.
4. Coloque a imagem que deseja transformar dentro da pasta `imagens/`.
5. Abra o arquivo `principal.m`.
6. Configure o nome e o caminho da imagem de entrada, além dos parâmetros de processamento.
7. Execute o arquivo `principal.m`.
8. Verifique a imagem gerada na pasta `resultados/`.

## 🔧 Personalização

O projeto permite modificar os parâmetros de processamento para obter diferentes resultados.

É possível ajustar:

- **Resolução reduzida:** controla o nível de pixelização da imagem.
- **Quantidade de cores:** controla a variedade de cores utilizada.
- **Dimensões finais:** define a largura e a altura da imagem gerada.

Quanto menor a resolução utilizada na etapa de redução, maiores serão os blocos de pixels na imagem final.

Da mesma forma, diminuir a quantidade de níveis de cores por canal RGB torna a paleta de cores mais limitada.

## 🖼️ Resultados

As imagens processadas devem ser armazenadas na pasta `resultados/`.

É possível comparar a imagem original com a imagem gerada para observar os efeitos da redução de resolução e da quantização de cores.

## 🎯 Objetivo acadêmico

Este projeto foi desenvolvido com o propósito de aplicar, na prática, conceitos de Processamento Digital de Imagens, explorando como operações de amostragem, quantização e ampliação podem modificar a aparência de uma imagem digital.

Além de seu resultado visual, o projeto busca demonstrar o funcionamento dessas operações por meio de funções implementadas separadamente em GNU Octave.
