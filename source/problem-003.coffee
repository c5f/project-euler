###
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?

- - -

Dear reader,

Today I know nothing about prime number sieves. However, today is as good a day 
as any to learn, right? Wrong. Sieves put me head first into a research rabbit 
hole, and I wanted to spend more time using CoffeeScript and less time finding
big-O-golf answers.

The fastest most human solution I saw was a prime factorization machine. I
immediately realized that the largest prime factor would be a multiple of the 
smallest prime factor. Normally I wouldn't put it past Project Euler to do 
something one of my professors would do and provide a prime, so starting from 
the smallest prime and climbing up until we find one that divides this 
ludicrously large value is a safe bet.

I then thought some more about building a "small" list of primes using my newly 
acquired sieve knowledge. This worked OK, but I want to change it to accept 
user input to keep the machine from hanging on very large sieve start values.
###

ludicrouslyLargeProjectEulerValue = 600851475143

smallPrimes = [2..10000]
p = 2

while p < smallPrimes.slice -1
    smallPrimes = (number for number in smallPrimes when number <= p or number % p != 0)
    if smallPrimes.indexOf p == smallPrimes.length - 1
        break
    else
        p = smallPrimes[smallPrimes.indexOf(p) + 1]

# Now that we have a list of small primes, let's find a factor!
value = ludicrouslyLargeProjectEulerValue

for smallPrime in smallPrimes
    
    # If we are left with a prime, we're done!
    if value in smallPrimes
        console.log "Hooray! The largest prime factor of 
            #{ludicrouslyLargeProjectEulerValue} is #{value}!"
        return

    # Factor factor.
    while value % smallPrime == 0
        value /= smallPrime

console.log "This is a bad solution because it only considers a small set 
    of prime numbers... :("
