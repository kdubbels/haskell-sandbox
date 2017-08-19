add4 a b c d = a+b+c+d

addXto3 x = (\b c d -> add4 x b c d)

addXYto2 x y = (\c d -> add4 x y c d)

mystery = add4 3

anotherMystery = add4 2 3
