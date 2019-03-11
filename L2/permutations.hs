permutStep (b:[]) (xs) | elem b xs = []
				       | otherwise = [[b] ++ xs] 
permutStep (b:bs) (xs) | elem b xs =  permutStep bs xs
				       | otherwise = [[b] ++ xs] ++ permutStep bs xs

permutations (bs) (x:[])  = permutStep bs x
permutations (bs) (x:xs)  = permutStep bs x ++ permutations bs xs

permutationsAll xs = permutationsTmp (xs) ([[]]) (length xs)

permutationsTmp xs ys 1 = permutations xs ys
permutationsTmp xs ys n = permutations xs (permutationsTmp xs ys (n-1))