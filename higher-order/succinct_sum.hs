module Main where

    sum' :: (Num a) => [a] -> a
    sum' = foldl (+) 0
