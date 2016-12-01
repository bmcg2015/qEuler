// Problem 1 description:
//
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6
// and 9. The sum of these multiples is 23.
//
// Find the sum of all the multiples of 3 or 5 below 1000.
//

// low memory usage:
multiples: {
   [ x; y ]
   $[ ( 0 = y mod 3 ) or 0 = y mod 5; x + y; x ]
   };
// call with:
// multiples/[0;til 1000]

// cpu efficient (faster)
multiples2:{
   a: 0 = ( til 1000 ) mod 3;
   b: 0 = ( til 1000 ) mod 5;
   sum where any ( a; b )
   }

// using arithmetic progression to sum the series:
multiples3:{
   n:1000 - 1;
   a:0.5*( floor n%3 ) * 3 + 3*floor n%3;
   b:0.5*( floor n%5 ) * 5 + 5*floor n%5;
   c:0.5*( floor n%15 ) * 15 + 15*floor n%15;
   a+b-c
   }
