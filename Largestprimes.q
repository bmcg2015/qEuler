largestprimes:{[a] primes[vars:1 + til first where (prds primes:where {x mod y}[a;til floor sqrt(a)]=0)=a]}
largestprimes[600851475143]
