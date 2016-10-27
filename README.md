# Fundamentos em Informática Médica e Telemedicina
 * Prof. Dr. Marcelo Costa Oliveira

## Grupo: 
  * Elivelton Cristiano;
  * Davis Fellipe.

## Objetivo:
 * Extração de atributos de imagens contendos nódulos pulmonares.
   * Imagem Tomografia de Computadorizada
   * Nódulo de Câncer de Pulmão
   * Nódulo foi Segmentado Manualmente
   * Fomato: PNG

## Ferramenta:
Fizemos uso da ferramenta FIJI em conjunto com o plugin Trainable Weka Segmentation.
  * http://fiji.sc/#download

## Atributos Obtidos:
  * Hessiana;
  * Gaussian Blur;
  * Variância;
  * Mediana;
  * Entropia;
  * Média;
  * Projeção da Membrana;

  * Difusão Anisotrópica (*);
  * Filtro Sobel (*);
  * Filtro de Kuwahara (*);
  * Função Lipschitz (*);
  * Diferenças de Glaussians (*);

(*) - Novos atributos.
A descrição de cada atributo pode ser encontrado na documentação do plugin (link nas referências).

## Metodologia:
  * Iniciamos o Fiji;
  * Abrimos uma fatia central do nódulo: ([nodulo20.png](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/nodulo20.png));
  * Abrimos o plugin Trainable Weka Segmentation;
  * Treinamos os classificadores para obter os atributos do nódulo;
    * Utilizamos o classificador FastRandomForest, que é o padrão para o plugin;
    * Configuramos os atributos que desejamos visualizar em "Settings";
    * Clicamos em 'Train Classifier' para concluir;
    * Salvamos o classificador [classifier.model] e os dados dessa instância ([nodulo.arff](https://github.com/EliveltonCristiano/Telemedicina/blob/master/nodulo.arff)).
    ![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/imagens/01-segmentacao.png)
    
  * Abrimos o Weka explorer, carregamos arquivo .arff salvo anteriormente e temos acesso aos atributos.
  
## Código 
Podemos automatizar a obtenção desses atributos através da criação de macros.  
[noduloMacro.ijm](https://github.com/EliveltonCristiano/Telemedicina/blob/master/noduloMacro.ijm)
  
  * Obs.: Em algumas partes do código contem diretórios locais, caso for rodar o código, alterar para diretórios de sua preferência.

## Resultados
Abaixo estão os resultados obtidos para cada atributo, não conseguimos automatizar a obtenção destes, porém o Weka explorer oferece uma interface relativamente amigável para sua visualização.

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

