module EqInstances where

-- 1
data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn integer) (TisAn integer') =
    integer == integer'


-- 2
data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two int int') (Two int'' int''') = 
    int == int'' && int' == int'''


-- 3
data StringOrInt = TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt int) (TisAnInt int') =
    int == int'
  (==) (TisAString str) (TisAString str') =
    str == str'
  (==) (TisAnInt _) (TisAString _) =
    False
  (==) (TisAString _) (TisAnInt _) = False


-- 4
data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair a1 a2) (Pair a3 a4) =
     a1 == a3 && a2 == a4


-- 5
data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple x' y') =
     x == x' && y == y'


-- 6
data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') =
    a == a'
  (==) (ThatOne a) (ThatOne a') =
    a == a'
  (==) _ _ = False


-- 7
data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') =
    a == a'
  (==) (Goodbye b) (Goodbye b') = 
    b == b'
  (==) _ _ = False
