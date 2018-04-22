
--primos = primos' [2..10]

--primos' (x:xs) = id
primos2 listaInf = filter (  id ) listaInf

esPrimo num = length (filter (==0) (map (mod num) [1..num])) == 2


esPrimo2 (x:xs) | length (filter (==0) (map (mod x) [1..x])) == 2 = x:(esPrimo2 xs)
				| otherwise = (esPrimo2 xs)


esPrimo3 num = ((==2).length.(filter (==0))) (map (mod num) [1..num])


