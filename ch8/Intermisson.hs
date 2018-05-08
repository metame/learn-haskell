module Intermission where

applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f (applyTimes (n-1) f b)

-- Write out evaluation of the following
result = applyTimes 5 (+1) 5

nonrec = (+1) 
           ((+1) 
              ((+1)
                ((+1)
                  ((+1) 5))))
    

test = result == nonrec
