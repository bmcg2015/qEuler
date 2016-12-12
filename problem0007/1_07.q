//
// Problem 7:
// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th
// prime is 13.
//
// What is the 10 001st prime number?
//

// brute force answer:
// this can probably be done quicker with an incremental sieve method.
list: ( ( 2; 3 ); 5 );
primes: {
   [ x ]
   $[
      all 0 <> x[1] mod x 0;
      [ x[0],: x 1; x ];
      [ x[1]+:2; x ]
      ]
   }/[ { 10001 > count x 0 }; list ]

show last primes[0];
