phi n = phiRec n 1
    where phiRec n tmp | (n - 1) == tmp = 1
                       | gcd n tmp == 1 = 1 + phiRec n (tmp+1)
                       | otherwise = 0 + phiRec n (tmp+1)
					  