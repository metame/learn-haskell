module TypeArguments where

import Control.Exception (assert)

check = assert True
checkAll l = all check l

--1 :t f x where :t f :: a -> a -> a -> a and :t x :: Char
-- Char -> Char -> Char

--2 :t g 0 'c' "woot" where :t g :: a -> b -> c -> b
-- Char

--3 :t h 1.0 2 where :t h :: (Num a, Num b) => a -> b -> b
-- Num b => b

--4 :t h 1 (5.5 :: Double) where h :: (Num a, Num b) => a -> b -> b
-- Double

--5 :t jackal "keyboard" "has the word jackal in it" where jackal :: (Ord a, Eq b) => a -> b -> a
-- [Char]

--6 jackal "keyboard" where jackal :: (Ord a, Eq b) => a -> b -> a
-- Eq b => b -> [Char]

-- 7 kessel 1 2 where kessel :: (Ord a, Num b) => a -> b -> a
-- (Num a, Ord a) => a

-- 8 :t kessel 1 (2 :: Integer) 
-- (Num a, Ord a) => a

-- 9 :t kessel (1 :: Integer) 2
-- Integer

