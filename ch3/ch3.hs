module Ch3 where

import Control.Exception (assert)
check = assert True
checkAll l = all check l

-- Reading Syntax

-- 1
-- a concat[[1,2,3], [4,5,6]]
a1 = concat [[1,2,3], [4,5,6]]

-- b ++ [1,2,3] [4,5,6]
b1 = (++) [1,2,3] [4,5,6]

-- c 
c1 = (++) "hello" " world"

-- d ["hello" ++ " world]"
d1 = "hello" ++ " world"

-- e 4 !! "hello"
e1 = "hello" !! 4

-- f 
f1 = (!!) "hello" 4

-- g take "4 lovely"
g1 = take 4 "lovely"

-- h
h1 = take 3 "awesome"


-- 2

a2 = concat [[1*6], [2*6], [3*6]] == [6,12,18] -- d
b2 = "rain" ++ drop 2 "elbow" == "rainbow" -- c
c2 = 10 * head [1,2,3] == 10 -- e
d2 = (take 3 "Julie") ++ (tail "yes") == "Jules" -- a
e2 = concat [tail [1,2,3],
             tail [4,5,6],
             tail [7,8,9]]
     == [2,3,5,6,8,9] -- b


-- Building Functions

-- 1
bf1a = (++) "Curry is awesome" "!" == "Curry is awesome!"
bf1b = (!!) "Curry is awesome!" 4 == 'y'
bf1c = drop 9 "Curry is awesome!" == "awesome!"
checkbf1 = all check [bf1a, bf1b, bf1c]

-- 2
bf2a = (++)
bf2b l = (!!) l 4
bf2c l = drop 9 l
bf2 = [bf2a "Curry is awesome" "!" == "Curry is awesome!",
       bf2b "Curry is Awesome!" == 'y',
       bf2c "Curry is awesome!" == "awesome!"] 

-- 3
thirdLetter :: String -> Char
thirdLetter l = (!!) l 2
bf3 = thirdLetter "Curry" == 'r'

-- 4 
letterIndex :: Int -> Char
letterIndex i = (!!) "Curry is awesome!" i
bf4 = letterIndex 2 == 'r'

-- 5
revrs :: String -> String
revrs s = drop 9 s ++ take 4 (drop 5 s) ++ take 5 s
bf5 = revrs "Curry is awesome" == "awesome is Curry"

-- 6 is in rvrs.hs
