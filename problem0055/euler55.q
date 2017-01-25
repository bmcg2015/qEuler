/ will reverse a number
reversenum:{"J"$reverse string x}

/ checks if a number is a palindrome
ispalindrome:{x = reversenum x}

/ recursively add the numbers and their reverse, stops once it finds a palindrome or reaches 50 iterations
lychrel:{x:x + reversenum x; $[(y = 50)|ispalindrome x; x; .z.s[x;y+1]]}

/nulls are lychrel numbers
10000-count (lychrel[ ; 0] each 1 + til 10000) except 0N
