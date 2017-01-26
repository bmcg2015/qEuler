/
Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

1634 = 14 + 64 + 34 + 44
8208 = 84 + 24 + 04 + 84
9474 = 94 + 44 + 74 + 44
As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
\

sum where {(sum {("I"$x) xexp 5} each x)="F"$x} each string 2 + til 500000

// Updated answer 26.01.2017. Slower but significantly less memory usage
sum where {x=sum (10 vs x) xexp 5} each 2 + til 500000
