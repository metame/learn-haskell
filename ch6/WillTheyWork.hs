module WillTheyWork where

import Control.Exception (assert)

check = assert True

-- 1
a = max (length [1, 2, 3]) (length [8, 9, 10, 11, 12])
aC = check a == 5

-- 2 
b = compare (3 * 4) (3 * 5)
bC = check b == LT

-- 3
-- c = compare "Julie" True
-- doesn't work because can't compare Bool & String

-- 4
d = (5 + 3) > (3 + 6)
dC = d == False


main :: IO ()
main = do 
  print aC
  print bC
  print dC
