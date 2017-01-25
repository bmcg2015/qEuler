/ breaks up a number and squares its digits, then sums them
n:{"j"$sum (10 vs x) xexp 2}

/ returns x if it is 1 or 89, else it will call n on it
f:{$[x in 89 1; x; n[x]]}

l:1 + til 10000000

/ Will go through for each number in l and find its endpoint. 
s:{(f/) x} each l

(count each group s) 89
