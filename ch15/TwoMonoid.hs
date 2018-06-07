{-# LANGUAGE InstanceSigs #-}

module TwoMonoid where

data Two a b = Two a b deriving Show

instance (Monoid a, Monoid b) => Monoid (Two a b) where
  mempty :: Two a b
  mempty = Two mempty mempty

  mappend :: Two a b -> Two a b -> Two a b
  mappend (Two a b) (Two a' b') =
    Two mappend mappend

