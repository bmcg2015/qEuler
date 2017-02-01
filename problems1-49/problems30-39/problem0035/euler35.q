/ generates primes
p:{2_(til x) except distinct raze 2_'(1_1+fl)*til each -1_ceiling x%2+fl:til x} 1000000

/ rotates a number and checks that its rotations are prime
isCircular:{a:string x; min {("J"$x rotate y) in z}[;a;p] each til count a}

/ runs isCircular for every prime number then counts the numbers that pass
a:isCircular each p
count p where a
