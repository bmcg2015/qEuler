//generator function gives primes below 1000000
p:{2_(til x) except distinct raze 2_'(1_1+fl)*til each -1_ceiling x%2+fl:til x} 1000000

//takes only those primes where they are less than 100000, this is all we need to sum
s:p where p<100000

//sums the primes in a sliding window of increasing size, 
//547 is chosen since there are no primes below 1 million after this point
a:{{sum z#(y)_x}[s;;x] each til count s} each til 547

//gets all primes created by the previous function
t:{p inter x} each a

//the last one in this list matches the criteria of the question
last raze t

