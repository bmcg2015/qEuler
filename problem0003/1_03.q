/ 
Problem 3 Description

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

\

largestprimes:{[a] 
 last primes[vars:1 + til first where (prds primes:where {x mod y}[a;til floor sqrt(a)]=0)=a]
 }


/ call function to return required result
largestprimes[600851475143]
