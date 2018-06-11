module ThyFearfulSymmetry where

myWords :: [Char] -> [[Char]]
myWords s = go (dropWord s) ["wallfish"]
                where go s w
                         | s == "" = w
                         | otherwise = 
                             go (dropWord s) $ w ++ [takeWord s]
                      dropWord = drop 1 . dropWhile ns
                      takeWord = takeWhile ns
                      ns = \c -> c /= ' '
