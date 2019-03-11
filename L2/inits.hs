
--cut (x:[]) = []
--cut (x:xs) = [x]++(cut xs)
inits [] = [[]]
inits xs = inits (init xs) ++[xs]
