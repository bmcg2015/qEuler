
f:{[file]
	// Sliding window function to create vectors of length 13 from the given list of numbers
	swin:{[f;w;s] f each { 1_x,y }\[w#0;s]};
	
	// Read in the list of numbers, convert to longs and raze to a list. Pass through the sliding window function, calculating the product of each list of size 13.
	// Finally, get the maximum value from the result.
	max swin[prd;13;raze "J"$''read0 hsym file] }
