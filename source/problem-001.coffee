###
If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
###

MAX_VAL = 1000

# Find the largest multiples less than MAX_VAL.
largestThree    = (Math.floor (MAX_VAL - 1) / 3) * 3
largestFive     = (Math.floor (MAX_VAL - 1) / 5) * 5
largestFifteen  = (Math.floor (MAX_VAL - 1) / 15) * 15

# Find the number of multiples less than MAX_VAL.
numThrees = largestThree / 3
numFives = largestFive / 5
numFifteens = largestFifteen / 15

# The sum of all the multiples less than MAX_VAL.
sumThrees = (3 + largestThree) * numThrees / 2
sumFives = (5 + largestFive) * numFives / 2
sumFifteens = (15 + largestFifteen) * numFifteens / 2

totalSum = sumThrees + sumFives - sumFifteens

console.log "The sum of all the multiples of 3 or 5 below 1000 is: #{totalSum}"
