module Zipping where

zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' xs ys = [(head xs, head ys)] ++ zip' (tail xs) (tail ys)

zip'' :: (Eq a, Eq b) => [a] -> [b] -> [(a, b)]
zip'' xs ys
        | xs == [] || ys == [] = []
        | otherwise = (heads xs ys) : zip'' (tail xs) (tail ys)
      where heads xs' ys' = (head xs', head ys')

zipWith'' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith'' _ [] _ = []
zipWith'' _ _ [] = []
zipWith'' f xs ys = (f (head xs) $ head ys) : zipWith'' f (tail xs) (tail ys)

-- why does this require Eq?
zipWith' :: (Eq a, Eq b) => (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f xs ys
            | xs == [] || ys == [] = []
            | otherwise = (f (head xs) $ head ys) 
                            : zipWith' f (tail xs) (tail ys)

zip''' :: [a] -> [b] -> [(a, b)]
zip''' = zipWith'' tup
            where tup x y = (x, y)
