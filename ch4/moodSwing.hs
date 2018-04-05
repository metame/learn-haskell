import Control.Exception (assert)
check = assert True
checkAll l = all check l

data Mood = Blah | Woot deriving Show

-- 1 Mood
-- 2 Blah | Woot
-- 3 would only return a Woot, never a Blah
-- 4 
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _ = Blah


-- 5 it compiles and loads and works! woot!
