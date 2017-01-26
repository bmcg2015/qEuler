/ finds the factorial of a number
fact:{prd 1 + til x}

/ finds the factorial sum of the digits of a number and checks if it is equal to the starting number
digfact:{x = sum fact each 10 vs x}

l: 1 + til 100000

/ finds all the number that satisfy the conditions of the question
a:l where digfact each l

/ subtracts 3 as 1 and 2 should not count
a: -3 + sum a
