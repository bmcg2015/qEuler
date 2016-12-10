//
// Problem 0003:
//
// The prime factors of 13195 are 5, 7, 13 and 29.
//
// What is the largest prime factor of the number 600851475143?
//


//
// Checks if one integer is a multiple of the other.
//
// param x: A 2 element integer list to check if x[1] if a factor of x[0] (i.e. x[0] is a
//          multiple of x[1]).
//
// returns: if x[1] is a factor of x[0], then returns x with x[0] divided by x[1], otherwise
//          returns x with x[1] +: 2.
//
checkMultiple:{
   [ x ]
   $[
      0 = x[0] mod x[1];
      [ x[0]: "j"$x[0] % x[1]; x ];
      [ x[1] +: 2; x ]
      ]
   };

//
// Finds the largest prime number for an integer.
//
// param num:  A 2 element integer list; the first element is the integer to find the
//             largest prime for, the second element is the odd prime number to start from.
//
// returns:    The largest prime factor of the integer passed in number.
//
findLargestPrime:{
   [ num ]
   last checkMultiple/[ { x[0] <> 1 }; num ]
   }

// function call to give answer:
//number: ( 600851475143; 3 );
//findLargestPrime[ number ]

// check time to run and memory usage:
//\ts findLargestPrime[ number ]
//\ts checkMultiple/[ { x[0] <> 1 }; number ];

