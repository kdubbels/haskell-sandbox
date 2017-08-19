sum' :: (Num a) => [a] -> a
sum' xs = foldl(\acc x -> acc + x) 0 xs

scum' :: (Num a) => [a] -> a
scum' = foldl (+) 0

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldr (\x acc -> if x == y then True else acc) False ys

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []


