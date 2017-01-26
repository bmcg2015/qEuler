//
// Problem 5:
// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10
// without any remainder.
//
// What is the smallest positive number that is evenly divisible by all of the numbers from
// 1 to 20?
//

// In the documentation in this code, integer is used in the mathematical sense (i.e. an
// element of the set of all integers) rather than an int data type in kdb (which will be
// referred to as int).

//
// Given an integer, creates a list of prime numbers less than or equal to that value.
//
// param xP:   The integer to find all prime numbers less than or equal to.
//
// returns:    If x is less than 2, returns an empty list. If x is equal to 2, returns the
//             integer 2 enlisted. Otherwise returns a list of all the primes less than or
//             equal to x. Throws `typ error if xP is not an integer.
//
getPrimes:{
   [ xP ]
   if[ -7 <> type xP; '`typ ];
   primeNums: enlist 2;
   if[ xP < 2; "j"$() ];
   if[ xP = 2; :primeNums ];
   otherPrime: 1_1+2*til "j"$xP%2;
   primeNums, { [x; y] $[ any 0=y mod ( x?y )#x; ((x?y)#x),(1+x?y)_x; x ] }/[otherPrime; otherPrime]
   }

// 
// Given a list of integers, returns the maximum multiplicity for the prime factors amongst
// all the elements of the list. E.g. given 2 3 4 5 6, returns 2^2, 3^1, 5^1.
//
// param intList: The list of integers to find the prime factors and multiplicity for.
// 
// returns:       A dictionary with the prime numbers as keys and the maximum multiplicity
//                of the primes as values. If any of the integers in the input list are less
//                than 2, then an error is thrown.
// 
primeFactors:{
   [ intList ]
   primes: getPrimes[ max intList ];
   if[ any intList < 2; [ show "All elements of the list should be > 1"; '`err ] ];
   primes!{
      [ y1; z1 ]
      {
         [ x0; y0; z0 ]
         $[any 0 = x0 mod "j"$y0 xexp z0+1; z0+1; z0] 
         }[y1;z1]/[ 0 ]
      }[ intList; ]each primes
   }


maxFactor: 20;
factors: 2 + til maxFactor - 1;
pF: primeFactors[ factors ];
show prd "j"$( key pF ) xexp value pF;




// brute force answer:
//maxFactor: 20;
//factors: 3 + til maxFactor - 3;
//startInt: maxFactor * last factors;
//{
   //[ x ]
   //$[
      //all 0 = x mod factors;
      //x;
      //x+:maxFactor
      //]
   //}/[ startInt ]





