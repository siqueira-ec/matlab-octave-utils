function [probabilities] = calculateClassProbabilities(summaries, inputVector)
	probabilities = struct;
	for i=1:numel(fieldnames(summaries))
		if (!isfield(summaries, num2str(i-1)))
			probabilities.(num2str(i-1)) = [];
		endif

		probabilities.(num2str(i-1)) = 1;
		for j=1:size(summaries.(num2str(i-1)), 1)
			mean = summaries.(num2str(i-1))(j,1);
			stdev = summaries.(num2str(i-1))(j,2);
			x = inputVector(j);
			probabilities.(num2str(i-1)) *= calculateProbability(x, mean, stdev);
		endfor
	endfor
endfunction
