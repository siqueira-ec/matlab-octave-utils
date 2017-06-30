load pima-indians-diabetes.txt;

splitRate = 0.66;
[ds_treino, ds_teste] = splitDataset(pima-indians-diabetes, splitRate);
sumarios = summarizeByClass(ds_treino);
predicao = str2double(getPredictions(sumarios, ds_teste));
acuracia = getAccuracy(teste, predicao);
