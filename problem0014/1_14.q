/
Problem 2 Description:

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

\

collatz:{
 / use scan (\) with an end condition of 1< to generate Collatz seq
 / each 1+til 999998 generates all numbers below 1 mil to use as starting values
 / count each sequence
 l:count each {$[0<x mod 2;1+3*x;x%2]}\[1<;] each til 1000000;
 / return the position where l is max, +1 for starting index being 1
 l?max l
 }
