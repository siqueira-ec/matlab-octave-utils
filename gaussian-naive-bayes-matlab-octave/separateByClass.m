function [separated] = separateByClass(dataset)
	separated = struct;
	for i = 1:size(dataset,1)
		vector = dataset(i,:);
		if (!isfield(separated, num2str(vector(end))))
			separated.(num2str(vector(end))) = [];
		endif
		separated.(num2str(vector(end))) = [separated.(num2str(vector(end))); vector];
	endfor
endfunction
