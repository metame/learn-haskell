module WordNumber where

import Data.List (intersperse)

numWords = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

-- would be safer to use a case or explicit mapping between each int
-- but since we know words is a given constant above we can be pretty safe here
-- unless someone came and added more words or took some away 
digitToWord :: Int -> String
digitToWord n 
    | n >= 0 && n < (length numWords) = numWords!!n
    | otherwise = ""


digits :: Int -> [Int]
digits num = go [] num
  where go l n
          | n == 0 = l
          | otherwise = go (ap l $ mod n 10) $ div n 10
        ap l' x = x:[] ++ l'

wordNumber :: Int -> String
wordNumber = concat . intersperse "-" . map digitToWord . digits


