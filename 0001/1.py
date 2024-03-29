# Problem 1.    

# https://projecteuler.net/problem=1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
#
#  Answer: 233168

def multipleOf(divisors, inRange):
  return [ i for i in  inRange if any(i % d == 0 for d in divisors)] 

print(sum(multipleOf([3,5] , range(1000))))
