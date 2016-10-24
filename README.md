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
  * Abrimos uma fatia central do nódulo (nodulo20.png);
  * Abrimos o plugin Trainable Weka Segmentation;
  * Refazemos a segmentação, é necessario para obter os atributos através do plugin;
    * Classe 1 representa o nódulo;
    * Classe 2 representa o background;
    * Configuramos os atributos que desejamos visualizar em "Settings";
    * Clicamos em 'Train Classifier' para concluir a segmentação;
    * Salvamos o arquivo.
  * 



# MACRO PARA OBTENÇÂO DOS PROCEDIMENTOS 

run("Trainable Weka Segmentation");selectWindow("Trainable Weka Segmentation v3.2.1");

selectWindow("Trainable Weka Segmentation v3.2.1");
call("trainableSegmentation.Weka_Segmentation.addTrace", "0", "1");
call("trainableSegmentation.Weka_Segmentation.addTrace", "0", "1");
call("trainableSegmentation.Weka_Segmentation.addTrace", "1", "1");
call("trainableSegmentation.Weka_Segmentation.addTrace", "1", "1");
call("trainableSegmentation.Weka_Segmentation.trainClassifier");
call("trainableSegmentation.Weka_Segmentation.setFeature", "Variance=true");
call("trainableSegmentation.Weka_Segmentation.setFeature", "Mean=true");
call("trainableSegmentation.Weka_Segmentation.setFeature", "Maximum=true");
call("trainableSegmentation.Weka_Segmentation.setFeature", "Median=true");
call("trainableSegmentation.Weka_Segmentation.setFeature", "Neighbors=true");
call("trainableSegmentation.Weka_Segmentation.saveData", "C:\\Users\\Elivelton\\Desktop\\53454cc3e4b05911cd6db50049929\\data1.arff");
call("trainableSegmentation.Weka_Segmentation.launchWeka");


# FONTES: 

  * http://imagej.net/Trainable_Weka_Segmentation#Introduction
