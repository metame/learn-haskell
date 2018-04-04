module SyntaxErrors where

-- 1
-- os1 =  ++ [1, 2, 3] [4, 5, 6]
s1 = (++) [1, 2, 3] [4, 5, 6]

-- 2
-- os2 = '<3' ++ ' Haskell'
s2 = "<3" ++ " Haskell"

-- 3 -- compiles
os3 = concat ["<3", " Haskell"]
