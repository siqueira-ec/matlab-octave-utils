function [summaries] = summarize(dataset)
	summaries = [];
	vector = [];
	for i=[dataset]
		for j=1:size(i,1)
			vector = [vector, i(j)];
		endfor
		summaries = [summaries; mean(vector) std(vector)];
		vector = [];
	endfor
	summaries(size(dataset,2), :) = [];
endfunction
