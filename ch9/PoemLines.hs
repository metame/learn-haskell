module PoemLines where
firstSen = "Tyger Tyger, burning bright\n" 
secondSen = "In the forests of the night\n" 
thirdSen = "What immortal hand or eye\n" 
fourthSen = "Could frame thy fearful\
           \ symmetry?"

sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen
     -- putStrLn sentences -- should print
     -- Tyger Tyger, burning bright
     -- In the forests of the night
     -- What immortal hand or eye
     -- Could frame thy fearful symmetry?

mySplit :: Char -> String -> [String]
mySplit c s' = go s' []
                where go s l
                         | s == "" = l
                         | otherwise = 
                             go (dropAtChar s) $ l ++ [takeTilChar s]
                      dropAtChar = drop 1 . dropWhile nc
                      takeTilChar = takeWhile nc
                      nc = \c' -> c' /= c

-- Implement this
myLines :: String -> [String] 
myLines s' = go s' []
                where go s l
                         | s == "" = l
                         | otherwise = 
                             go (dropLine s) $ l ++ [takeLine s]
                      dropLine = drop 1 . dropWhile nnl
                      takeLine = takeWhile nnl
                      nnl = \c -> c /= '\n'

myLines' :: String -> [String]
myLines' = mySplit '\n'

myWords :: String -> [String]
myWords = mySplit ' '

-- What we want 'myLines sentences' -- to equal
shouldEqual =
       [ "Tyger Tyger, burning bright"
       , "In the forests of the night"
       , "What immortal hand or eye"
       , "Could frame thy fearful symmetry?"
       ]

-- The main function here is a small test -- to ensure you've written your function -- correctly.
main :: IO ()
main = print $
       "Are they equal? "
       ++ show (myLines sentences == shouldEqual)

