# TELEMEDICINA 2016.1
Projeto para AB2 da materia Telemedicina

# Grupo: 
  *Elivelton Cristiano,
   *Fellipe Pereira.









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
