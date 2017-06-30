function [probability] = calculateProbability(x, mean, stdev)
	exponent = exp(-((x-mean)^2)/(2*stdev^2));
	probability = (1/(sqrt(2*pi)*stdev))*exponent;
endfunction
