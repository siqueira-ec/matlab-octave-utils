function [accuracy] = getAccuracy(testSet, predictions)
	correct = 0;
	for x=1:size(testSet,1)
		if (testSet(x, :)(end) == predictions(x, :))
			correct += 1;
		endif
	endfor
	
	accuracy = (correct/size(testSet,1))*100.0;
endfunction
