/
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

				[Grid not shown]

How many such routes are there through a 20×20 grid?
\

/- I've used the combinatin formula which is detailed here https://betterexplained.com/articles/navigate-a-grid-using-combinations-and-permutations/
/- We can move right (r) or down (d) to get to the end point. I've used approach 1 from
/- the link above. The easiest way to get from A to B is moving 20 r and 20 d. 
/- If we start with 40 r then we can make 20 d moves at any point and still reach the goal
/- This means we have 40 choices of r to change, then 39, 38, 37... 20 possibilities (40!)

/- We then have 20! left. This can be written 40!/20!
/- We also need to remove redundancies - converting move #1#2#3#4 is the same as
/- converting #4#3#2#1 etc. This can be written as 20! so the equation  becomes:

/

		(40!/20!)/20!
		= ((40*39*38*...*20*19*...*2*1)/20*19*18*...*2*1)/20! // Cancel like terms
		= (40*39*38*...*21)/20! 

\

/- We can't calculate this directly due to limits on the size of floats/longs in kdb
/- I split up the factorial calculation to reduce the size of values being calculated
/- By square rooting the denominator, we can split the numerator into two values
/- and calculate the result

f:{
	`long$((prd 21+til 10)%v)*((prd 31+til 10)%v:sqrt prd 1+til 20)
 }
