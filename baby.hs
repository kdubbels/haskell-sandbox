doubleMe x = x + x 

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2

conanO'Brien = "It's a-me, Conan O'Brien!"

removeNonUppercase :: [Char] -> [Char]  
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']] 

addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z  

factorial :: Integer -> Integer  
factorial n = product [1..n] 

circumference :: Float -> Float  
circumference r = 2 * pi * r 