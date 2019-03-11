nub xs = nubStep xs []
nubStep [] ys =  ys
nubStep (x:xs) ys | elem x ys = nubStep xs ys
		          | otherwise = nubStep xs (ys++[x])