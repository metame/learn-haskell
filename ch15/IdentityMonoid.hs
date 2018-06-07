{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE ScopedTypeVariables #-}


module IdentityMonoid where

newtype Identity a =
    Identity a
    deriving (Eq, Show)

-- cardinality is determined by what identity is
--
instance Monoid a => Monoid (Identity a) where
  mempty :: Identity a
  mempty = Identity mempty

  mappend :: Identity a -> Identity a -> Identity a
  mappend (Identity x) (Identity y) =
    Identity (mappend x y)
