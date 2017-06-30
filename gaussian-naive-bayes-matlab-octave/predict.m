function [bestLabel] = predict(summaries, inputVector)
	probabilities = calculateClassProbabilities(summaries, inputVector);
	bestLabel = '';
	bestProbe = -1;
	
	for i=1:numel(fieldnames(probabilities))
		if ((bestLabel == '') || (probabilities.(num2str(i-1)) > bestProbe))
			bestProbe = probabilities.(num2str(i-1));
			bestLabel = num2str(i-1);
		endif
	endfor
endfunction
