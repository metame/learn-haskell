module Ch6 where

import Control.Exception (assert)
import Data.List (sort)

check :: Bool -> Bool
check = assert True

-- Multiple Choice
-- 1 The Eq class: c) makes equality tests possible
-- 2 The typeclass Ord: b) is a subclass of Eq
-- 3 What is the type of > in terms of Ord?: a) Ord a => a -> a -> Bool
-- 4 In x = divMod 16 12: c) the type of x is a tuple
-- 5 The typeclass Integral includes: a) Int and Integer numbers


-- Does it typecheck?
-- 1 - no, does not have instance of Show
data Person = Person Bool deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- 2
data Mood = Blah
          | Woot deriving (Show, Eq)

settleDown :: Mood -> Mood
settleDown x = if x == Woot then Blah else x

-- 3 
-- a) Blah | Woot b/c Ea is only defined for comparing Mood to Mood
-- b) Error b/c ^
-- c) It's not deriving Ord

-- 4 no b/c s1 does not provide all values to data constructor
-- ok so it does since the data constructor is a fn
-- e.g. s1 :: Object -> Sentence
type Subject = String
type Verb = String 
type Object = String

data Sentence = Sentence Subject Verb Object
  deriving (Eq, Show)

s1 :: Object -> Sentence
s1 = Sentence "dogs" "drool"
s2 :: Sentence
s2 = Sentence "Julie" "loves" "dogs"


-- Given a datatype declaration, what can we do?
data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- 1 does not type-check b/c values "chases" & True are not the types expected by Papu data constructor
-- phew = Papu "chases" True
-- can be fixed like:
phew :: Papu
phew = Papu (Rocks "chases") (Yeah True)

-- 2 yes compiles
truth :: Papu
truth = Papu (Rocks "chomskydoz") (Yeah True)

-- 3 yes, compiles
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- 4 does not compile, would need to derive or implement Ord
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'


-- Math the types
-- 1
match1a :: Num a => a
match1a = 1

-- doesn't work because 1 is a value and must be constrained
-- match1b :: a
-- match1b = 1

-- 2 
match2a :: Float
match2a = 1.0

-- doesn't work b/c 1.0 is Fractional which is more constrained than Num
-- match2b :: Num a => a
-- match2b = 1.0

-- 3
match3a :: Float
match3a = 1.0

match3b :: Fractional a => a
match3b = 1.0

-- 4
match4a :: Float
match4a = 1.0

match4b :: RealFrac a => a
match4b = 1.0

--5
match5a :: a -> a
match5a x = x

match5b :: Ord a => a -> a
match5b x = x

-- 6
match6a :: a -> a
match6a x = x

match6b :: Int -> Int
match6b x = x

--7 
myX7 = 1 :: Int
match7a :: Int -> Int
match7a x = myX7

-- does not typecheck as the output type must be Int
-- match7b :: a -> a
-- match7b x = myX7

-- 8
myX8 = 1 :: Int
match8a :: Int -> Int
match8a x = myX8

-- does not typecheck because myX8 is already declared as Int
-- match8b :: Num a => a -> a
-- match8b x = myX8

-- 9
match9a :: Ord a => [a] -> a
match9a xs = head (sort xs)

match9b :: [Int] -> Int
match9b xs = head (sort xs)

-- 10
match10a :: [Char] -> Char
match10a xs = head (sort xs)

match10b :: Ord a => [a] -> a
match10b xs = head (sort xs)

-- 11
mySort :: [Char] -> [Char]
mySort = sort

match11a :: [Char] -> Char
match11a xs = head (mySort xs)

-- does not typecheck because mySort is constrained to [Char]
-- match11b :: Ord a => [a] -> a


-- Type-Kwon-Do Two
-- 1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = (==) b $ f a

-- 2
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i x = fromInteger(i) * (f x)



