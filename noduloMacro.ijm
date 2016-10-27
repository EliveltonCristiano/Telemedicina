//Abre a imagem do nódulo 
open("C:\\Users\\Fellipe\\Documents\\telemedicina\\nodulo20.png");

run("Trainable Weka Segmentation");
selectWindow("Trainable Weka Segmentation v3.2.1");

//Treinando o classificador:
call("trainableSegmentation.Weka_Segmentation.addTrace", "0", "1");
call("trainableSegmentation.Weka_Segmentation.addTrace", "1", "1");

//mudando algumas settings
call("trainableSegmentation.Weka_Segmentation.setFeature", "Variance=true");
call("trainableSegmentation.Weka_Segmentation.setFeature", "Mean=true");
call("trainableSegmentation.Weka_Segmentation.setFeature", "Median=true");
call("trainableSegmentation.Weka_Segmentation.setFeature", "Entropy=true");

//aplicando o treinamento
call("trainableSegmentation.Weka_Segmentation.trainClassifier");

//salvando arquivo
call("trainableSegmentation.Weka_Segmentation.saveData", "C:\\Users\\Fellipe\\Documents\\telemedicina\\nodulo.arff");

//abrindo o Weka explorer
call("trainableSegmentation.Weka_Segmentation.launchWeka");
