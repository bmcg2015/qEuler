/
It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.
\

/calulates where all *2,3,4,5,6 have the same count, then checks their digits are equal.


nums:(1 +where ({(sum 1_deltas count each string x)<1} each ({x * 1 2 3 4 5 6} each 1 + til 1000000)))
nums[where {all {all x in y}[string x] each string x * 2 3 4 5 6} each nums]
