# TELEMEDICINA 2016.1
 * Projeto para AB2 da materia Telemedicina

# Grupo: 
  * Elivelton Cristiano
  * Fellipe Pereira.
  
#Professor: 
  * Marcelo Costa Oliveira
 
# Objetivo:
 * Extração de atributos de imagens contendos nodulos pulmonares.
   * Imagem Tomografia de Computadorizada
   * Nódulo de Câncer de Pulmão
   * Nódulo foi Segmentado Manualmente
   * Fomato: PNG
   * Disponível em:
      * https://dl.dropboxusercontent.com/u/11507361/noduloSegmentado.tar

# Ferramenta:
 Fizemos uso da ferramenta FIJI em conjunto com o plugin Trainable Weka Segmentation.
  * Fiji pode ser obtido atraves:
   * http://fiji.sc/#download
 
# Passs-a-passo:
  * 1º - Iniciamos o programa.
  * 2º - Abrimos o plugin Trainable Weka Segmentation, atrves do menu Plugins>Segmentação.





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
