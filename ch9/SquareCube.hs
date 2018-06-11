module SquareCube where

mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

one = [(x,y) | x <- mySqr, y <- myCube]

two = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]

three = length two

