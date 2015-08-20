doubleMe x = x + x 

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2

conanO'Brien = "It's a-me, Conan O'Brien!"

fizzBuzz xs = [ if x `mod` 3 == 0 then "FIZZ!" else if x `mod` 5 == 0 then "BUZZ!" else show x | x <- xs]