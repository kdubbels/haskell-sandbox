addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a,b,c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

head' :: [a] -> a
head' [] = error "Can't call head on an empty list"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

bmiTell :: Double -> Double -> String
bmiTell height weight
    | bmi <= 18.5 = "You're underweight"
    | bmi <= 25.0 = "Looking good"
    | bmi <= 30.0 = "Fat fat fat"
    | otherwise = "Obese af"
    where bmi = weight/ height ^ 2

max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b = b
    | otherwise = a

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a == b = EQ
    | a <= b = LT
    | otherwise = GT

badGreeting :: String
badGreeting = "Oh. It's you"

niceGreeting :: String
niceGreeting = "Hello!"

greet :: String -> String
greet "Juan" = niceGreeting ++ " Juan!"
greet "Fernando" = niceGreeting ++ " Fernando!"
greet name = badGreeting ++ " " ++ name

cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in  sideArea + 2 * topArea

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w /h ^ 2]
