/
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
\

// Slight hack to get an answer. This conditional checks if the values x, y and c make up a Pythagorean triplet
// If they do then checks if its = 1000 and if so returns the product
// Otherwise, it returns nothing - therefore, you have to call it with a large enough number so it catches the
// values that add up to 1000 (as in pyth'[til 400]'[til 400]). 
// Alternative call x:(1+til 400) cross 1+til 400; pyth'[x[;0];x[;1]]

pyth:{
	$[("i"$c)=c:sqrt(x xexp 2)+(y xexp 2);
		if[1000=sum(c;x;y); show `long$(c*x*y);exit 1];
			]
 }


