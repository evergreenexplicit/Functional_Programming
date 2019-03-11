perfect n | perfectTmp n 1 == n = n
          | otherwise = 0
    where perfectTmp n d | n == d = 0
	                     | mod n d == 0 = d + perfectTmp n (d+1)
	                     | otherwise = perfectTmp n (d+1)
						 
lookFor n xs | n < 10000 && perfect n > 0 = lookFor (n+1) (n:xs)
             | n < 10000 = lookFor (n+1) xs
             | n == 10000 = xs
			 
-- to jest tragiczne, ale po jakiejs minucie zwraca dobry  wynik
-- czyli wszystko po staremu