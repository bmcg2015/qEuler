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

// In the documentation in this code, integer is used in the mathematical sense (i.e. an
// element of the set of all integers) rather than an int data type in kdb (which will be
// referred to as int).


//
// Given an integer, creates a list from 1 up to (and including) that integer, then
// calculates the difference between the square of the sum of the list and the sum of the
// squares.
//
// param maxInt:  The integer used to derive the initial list and calculate the difference
//                up to.
//
// returns:       The difference between the square of the sum of the list and the sum of
//                the squares. Returns `typ error if the argument is not an int atom.
//                Returns `neg error if the argument is less than 0.
//
findDifference:{
   [ maxInt ]
   if[ -7 <> type maxInt; '`typ ];
   if[ maxInt < 0; '`neg ];
   "j"$( { [ x ] x*x } 0.5 * maxInt * maxInt + 1 ) - (1%6) * maxInt * ( maxInt + 1 ) * 1 + 2 * maxInt
   }

findDifference[ 100 ]
//\ts:10000 findDifference[ 100 ]
