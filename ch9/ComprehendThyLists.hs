module ComprehendThyLists where

mySqr = [x^2 | x <- [1..10]]

one = [x | x <- mySqr, rem x 2 == 0]
      == [4, 16, 36, 64, 100]

twoG = [(x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50]
two = (head twoG == (1, 64)) && (last twoG == (49, 100))

threeG = take 5 twoG
three = threeG == [(1, 64), (1, 81), (1, 100), (4, 64), (4, 81)]

main :: IO()
main = print $ "1)" ++ show one ++ " 2)" ++ show two ++ " 3)" ++ show three
