/ function to find the factors and the check if it is an abundant number
fac:{l:1+til x;x < sum -1_l where 0= x mod l}

l:1 + til 28123

/ gets all the abundant numbers between 1 and 28123
b: l where fac each l

/ generates all two number sums of the abundant numbers
a:{{x[y] + x[z]}[x;y;] each y + til (neg y)+count x}[b;] each til count b

a: distinct raze a

/ finds the numbers that aren't in a and sums them.
sum l except a
