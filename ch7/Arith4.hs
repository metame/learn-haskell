module Arith4 where 

-- id :: a -> a
-- id x = x
roundTrip :: (Show a, Read a) => a -> a 
roundTrip a = read (show a)

pfRt :: (Show a, Read a) => a -> a
pfRt = read . show

newRt :: (Show a, Read b) => a -> b
newRt = read . show

main = do
  print (roundTrip 4)
  print (pfRt 4)
  print (id 4)
  print (newRt 4 :: Int)
