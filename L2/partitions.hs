partitionStep (xs,[]) = [(xs,[])]
partitionStep (xs,(y:ys)) = [(xs,(y:ys))] ++ partitionStep (xs++[y],ys)
partitions xs = partitionStep ([],xs)