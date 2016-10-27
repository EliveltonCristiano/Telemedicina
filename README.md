# Fundamentos em Informática Médica e Telemedicina
 * Prof. Dr. Marcelo Costa Oliveira

## Grupo: 
  * Elivelton Cristiano;
  * Davis Fellipe.

## Objetivo:
 * Extração de atributos de imagens contendos nodulos pulmonares.
   * Imagem Tomografia de Computadorizada
   * Nódulo de Câncer de Pulmão
   * Nódulo foi Segmentado Manualmente
   * Fomato: PNG

## Ferramenta:
Fizemos uso da ferramenta FIJI em conjunto com o plugin Trainable Weka Segmentation.
  * http://fiji.sc/#download

## Atributos Obtidos:
  * Entropia;
  * Variância;
  * Média;
  * Mediana;
  * Hessiana;
  * Projeção da Membrana;
  * Gaussian Blur.

## Metodologia:
  * Iniciamos o Fiji;
  * Abrimos uma fatia central do nódulo ([nodulo20.png](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/nodulo20.png));
  * Abrimos o plugin Trainable Weka Segmentation;
  * Refazemos a segmentação, é necessario para obter os atributos através do plugin;
    * Configuramos os atributos que desejamos visualizar em "Settings";
    * Clicamos em 'Train Classifier' para concluir a segmentação;
    * Salvamos o arquivo. ([nodulo.arff](https://github.com/EliveltonCristiano/Telemedicina/blob/master/nodulo.arff))
    ![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/01-segmentacao.png)
    
    ![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/result.png)
    
  * Abrimos o Weka explorer, carregamos arquivo .arff salvo anteriormente e temos acesso aos atributos;
  
## Código 
Podemos automatizar a obtenção desses atributos através da criação de macros.  
[noduloMacro.ijm](https://github.com/EliveltonCristiano/Telemedicina/blob/master/noduloMacro.ijm)
  
  * Obs.: Em algumas partes do código contem diretórios locais, caso for rodar o código, alterar para diretórios de sua preferência.

## Resultados
Abaixo estão os resultados obtidos para cada atributo, não conseguimos automatizar a obtenção destes, porém o Weka explorer oferece uma interface relativamente amigável para sua visualização.

A cor azul representa a classe 1 (Nódulo), a cor vermelha representa a classe 2 (Background)
 * Hessiana:
![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/02resulthessian.png)

 * Gaussian Blur:
![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/03resultgaussian.png)

 * Variância:
![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/04resultvariance.png)

 * Mediana:
![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/05medianresult.png)

 * Entropia:
![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/06entropyresult.png)

 * Média:
![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/07meanresult.png)

 * Projeção da Membrana:
![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/08membraneprojresult.png)

## FONTES: 
  * http://imagej.net/Introduction_into_Macro_Programming
  * http://imagej.net/Trainable_Weka_Segmentation

