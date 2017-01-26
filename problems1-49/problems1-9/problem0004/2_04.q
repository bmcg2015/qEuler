//
// A palindromic number reads the same both ways. The largest palindrome made from the
// product of two 2-digit numbers is 9009 = 91 × 99.
//
// Find the largest palindrome made from the product of two 3-digit numbers.
//

max l where {(string x)~reverse string x} each l:prd[flip t cross t:100+til 900]

/
Explanation

One line solution for problem 4

Generates all products of 3 digit numbers
Iterates through each to determine if palindrome
Returns max palindromic product
