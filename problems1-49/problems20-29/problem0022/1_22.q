/

Problem 22 Description

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?

\

sum (1+til count l)*sum each l:(neg 64) + "i"$asc "," vs first ssr[;"\"";""] each read0 ` sv (first ` vs hsym .z.f),`p022_names.txt

/
Explanation (explained right-to-left):

` sv (first ` vs hsym .z.f),`p022_names.txt
- generates path to p022_names.txt from script path, so script should work run from anywhere

"," vs first ssr[;"\"";""] each read0
- converts to sane list of strings

l:(neg 64) + "i"$asc
- sorts alphabetically, converts characters to integer representation (convert to integer, subtract 64 for ASCII offset)

(1+til count l)*sum each l
- multiplies position (starting from 1) by the sum of the values of each name

sum
- sums everything up to get final answer
