//
// Problem 6:
// The sum of the squares of the first ten natural numbers is,
//
// 1^2 + 2^2 + ... + 10^2 = 385
// The square of the sum of the first ten natural numbers is,
//
// (1 + 2 + ... + 10)^2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and
// the square of the sum is 3025 − 385 = 2640.
//
// Find the difference between the sum of the squares of the first one hundred natural
// numbers and the square of the sum.
//

// In the documentation in this code, integer is used in the mathematical sense (i.e. an
// element of the set of all integers) rather than an int data type in kdb (which will be
// referred to as int).

//
// Given an integer, creates a list from 1 up to that integer, then calculates the
// difference between the square of the sum of the list and the sum of the squares.
//
// param maxInt:  The integer used to derive the initial list and calculate the difference
//                up to.
//
// returns:       The difference between the square of the sum of the list and the sum of
//                the squares.
//
findDifference:{
   [ maxInt ]
   a: 1 + til maxInt;
   ( { [x] x*x }sum a ) - sum a * a
   }

\ts:10000 findDifference[ 100 ]
