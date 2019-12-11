-- Problem 1.    

-- https://projecteuler.net/problem=1
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.
--
--  Answer: 233168

euler1 :: Integer
euler1 = sum(dividedBy [3,5] [1..999])
  where
    dividedBy divisors range = [ x | x <- [1..999], any(\d -> x `mod` d == 0) divisors ]


main :: IO ()  
main = print euler1

