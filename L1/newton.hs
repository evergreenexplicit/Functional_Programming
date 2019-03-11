
binomial n k | k == 1 = n
			 | k == 0 = 1
             | otherwise = (n/k) * binomial (n - 1) (k - 1)