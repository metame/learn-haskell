-- Exercises: Scope

module Scope where

-- 1: t
-- 2: f
-- 3: f -- d is not in scope in `r = d / 2`

area3 d = pi * (r * r)
r = d / 2

-- 4: t 

area d = pi * (r * r)
  where r = d / 2
