function [predictions] = getPredictions(summaries, testSet)
	predictions = [];
	for i=1:size(testSet,1)
		result = predict(summaries, testSet(i,:));
		predictions = [predictions; result];
	endfor
endfunction
