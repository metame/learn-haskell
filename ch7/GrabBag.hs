module GrabBag where

-- 1
-- all equivalent

-- 2 d
-- 3 
lam3a = \n -> n + 1
lam3b = \x -> \y -> (if x > y then y else x) + 5
lam3c f x y = f y x
