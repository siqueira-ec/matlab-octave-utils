function [summaries] = summarizeByClass(dataset)
	summaries = struct;
	separated = separateByClass(dataset);
	for i=1:numel(fieldnames(separated))
		if (!isfield(summaries, num2str(i-1)))
			summaries.(num2str(i-1)) = [];
		endif
		summaries.(num2str(i-1)) = [summaries.(num2str(i-1)); summarize(separated.(num2str(i-1)))];
		%for j=1:size(separated.(num2str(i-1)),1)
		%endfor
	endfor
