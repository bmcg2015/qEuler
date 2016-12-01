euler:{
 / get Fibonacci sequence until a value exceeds 4 mil using iterate (/) with an end condition
 / use 0 1 as starting numbers
 / x,sum -2#x adds last two numbers in sequence and appends result on the end
 / -1_ to get rid of last value (i.e. the one which is > 4 mil
 l:(-1_{x,sum -2#x}/[{4000000 > last x}; 0 1])
 / add all the terms with no remainder when divided by 2 i.e. the even terms
 sum l where not mod[l;2]
  }
