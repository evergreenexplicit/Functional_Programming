fibbStep :: (Integer,Integer) -> (Integer,Integer)
fibbStep (u,v) = (v,u+v)

fibbPair :: Integer -> (Integer,Integer)

fibbPair n | n == 0 = (0,1)
		  | otherwise = fibbStep  (fibbPair (n-1))