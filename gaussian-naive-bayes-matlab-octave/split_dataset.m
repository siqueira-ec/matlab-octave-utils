function [trainSet, copy] = split_dataset(dataset, split_ratio)

	trainSize = uint8(size(dataset,1)*split_ratio);
	trainSet = [];
	copy = dataset;
	while size(trainSet, 1) < trainSize

		index = randi([size(copy, 1)], 1, 1);
		trainSet = [trainSet; copy(index,:)];
		copy(index, :) = [];
	
	endwhile;

endfunction;
