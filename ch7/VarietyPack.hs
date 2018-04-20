module VarietyPack where

k :: (a, b) -> a
k (x, y) = x


k1 = k ((4-1), 10)

k2 :: [Char]
k2 = k ("three", (1 + 2))

k3 = k (3, True)

-- 1
-- a k :: (a, b) -> a
-- b no all different types, string
-- c k1 & k3

-- 2
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, _, c) (d, _, f') = ((a, d), (c, f'))

