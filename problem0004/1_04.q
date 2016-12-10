//
// A palindromic number reads the same both ways. The largest palindrome made from the
// product of two 2-digit numbers is 9009 = 91 × 99.
//
// Find the largest palindrome made from the product of two 3-digit numbers.
//

factors: 100 + til 900;
products: desc distinct raze factors */: factors

numFound: 0b;
c: 0;
while[
   not numFound;
   c+:1;
   v: 10 vs products[ c ];
   mid: floor 0.5 * count v;
   if[ all ( mid#v ) = reverse ( neg mid )#v; show products[ c ]; numFound: 1b; ]
   ]


// solution without while loop:
//max products where not null {
   //[ x ]
   //v: 10 vs x;
   //num: count v;
   //all { [ x; y; z ] x[ z ]=x[ ( count x ) - z + 1 ] }[ v; num ] each til floor 0.5 * num
   //mid: floor 0.5 * count v;
   //if[ all ( mid#v ) = reverse ( neg mid )#v; :1b; :0b ]
   //}each products
