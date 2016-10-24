# Fundamentos em Informática Médica e Telemedicina
 * Prof. Dr. Marcelo Costa Oliveira

# Grupo: 
  * Elivelton Cristiano;
  * Davis Fellipe.

# Objetivo:
 * Extração de atributos de imagens contendos nodulos pulmonares.
   * Imagem Tomografia de Computadorizada
   * Nódulo de Câncer de Pulmão
   * Nódulo foi Segmentado Manualmente
   * Fomato: PNG

# Ferramenta:
 Fizemos uso da ferramenta FIJI em conjunto com o plugin Trainable Weka Segmentation.
   * http://fiji.sc/#download

# Atributos Obtidos:
  * Entropia;
  * Variância;
  * Média;
  * Mediana;
  * Hessiana;
  * Projeção da Membrana;
  * Gaussian Blur.

# Metodologia:

  * Iniciamos o FIji;
  * Abrimos uma fatia central do nódulo ([nodulo20.png](https://github.com/EliveltonCristiano/Telemedicina/blob/master/nodulo20.png));
  * Abrimos o plugin Trainable Weka Segmentation;
  * Refazemos a segmentação, é necessario para obter os atributos através do plugin;
    * Classe 1 representa o nódulo;
    * Classe 2 representa o background;
    * Configuramos os atributos que desejamos visualizar em "Settings";
    * Clicamos em 'Train Classifier' para concluir a segmentação;
    * Salvamos o arquivo.
    ![alt tag](https://github.com/EliveltonCristiano/Telemedicina/blob/master/01-segmentacao.png)
  * Abrimos o Weka explorer, carregamos arquivo .arff salvo anteriormente e temos acesso aos atributos;
  
# Código 
Podemos automatizar a obtenção desses atributos através da criação de macros.
  * Obs.: Em algumaspartes do código contem diretórios locais, caso for rodar o código, alterar para diretórios de sua preferencia

# FONTES: 

  * http://imagej.net/Trainable_Weka_Segmentation#Introduction
