module Function where

-- 1
i :: a -> a
i x = x

-- 2 
c :: a -> b -> a
c x y = x

-- 3
c'' :: b -> a -> b
c'' = c

-- 4
c' :: a -> b -> b
c' x y = y

-- 5
r :: [a] -> [a]
r x = reverse x
r2 = i

-- 6
co :: (b -> c) -> (a -> b) -> a -> c
co f g x = f $ g x



