euler1 :: Integer
euler1 = sum(dividedBy [3,5] [1..999])
  where
    dividedBy divisors range = [ x | x <- [1..999], any(\d -> x `mod` d == 0) divisors ]


main :: IO ()  
main = print euler1

