import EsParBit

{-
Función: cetes
Descripción: Recibe un monto inicial y devuelve un monto final dependiendo del plazo en dias o meses. 
Uso: cetes 100 (Dias 28) = 100.47366
UsoDos: cetes 100 (Meses 1) = 100.47366
-}

data Plazo = Dias Int | Meses Int deriving (Eq, Show)

cetes :: Float -> Plazo -> Float
cetes x y = 
    if y == (Dias 28)
        then x * (1 + (6.09 / 100) * (28 / 360))
    else if y == (Dias 182)
        then x * (1 + (6.91 / 100) * (182 / 360)) 
    else if y == (Dias 364)
        then x * (1 + (7.44 / 100) * (364 / 360))

    else if y == (Meses 1)
        then x * (1 + (6.09 / 100) * (28 / 360))
    else if y == (Meses 6)
        then x * (1 + (6.91 / 100) * (182 / 360))
    else if y == (Meses 12) 
        then x * (1 + (7.44 / 100) * (364 / 360))
    else 0


{-
Función: mensajeCetes
Descripción: Pide ingresar monto y un plazo, posteriormente devuelve el plazo, el rendimiento bruto obtenido y el monto total.
Uso: mensajeCetes 100 (Dias 182) = 
"Despues de 182 dias, obtuve 3.4933891 de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de 103.49339."

UsoDos: mensajeCetes 100 (Meses 6) = 
"Despues de 6 meses, obtuve 3.4933891 de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de 103.49339."    
-}


mensajeCetes :: Float -> Plazo -> String
mensajeCetes x (Dias n) =
    if n == 28 || n == 182 || n == 364
    then
        "Despues de " ++ show n ++ " dias, obtuve " ++
        show (x * (if n == 28 then (6.09 / 100) * (28 / 360) else if n == 182 then (6.91 / 100) * (182 / 360) else (7.44 / 100) * (364 / 360))) ++
        " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++
        show (x + (x * (if n == 28 then (6.09 / 100) * (28 / 360) else if n == 182 then (6.91 / 100) * (182 / 360) else (7.44 / 100) * (364 / 360)))) ++ "."
    else "El plazo que ingresaste no es valido."

mensajeCetes x (Meses m) =
    if m == 1 || m == 6 || m == 12
    then
        "Despues de " ++ show m ++ " meses, obtuve " ++
        show (x * (if m == 1 then (6.09 / 100) * (28 / 360) else if m == 6 then (6.91 / 100) * (182 / 360) else (7.44 / 100) * (364 / 360))) ++
        " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++
        show (x + (x * (if m == 1 then (6.09 / 100) * (28 / 360) else if m == 6 then (6.91 / 100) * (182 / 360) else (7.44 / 100) * (364 / 360)))) ++ "."
    else "El plazo que ingresaste no es valido."



{-
Función: negativos
Descripción: Cuenta los números negativos de una lista
Uso: negativos [1,2,-3,5 2,-6] = 2
-}

negativos :: [Int] -> Int
negativos xs = length [ x | x <- xs, x < 0]

{-
Función: soloPares
Descripción: Recibe una lista y devuelve otra con los números que sean par
Uso: soloPares [1..20] = [2,4,6,8,10,12,14,16,18,20]
-}

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBit x]

{-
Función: primos
Descripción: Devuelve los números de la lista que son primos
Uso: primos [1..20] = [2,3,5,7,11,13,17,19]
-}

primos :: [Int] -> [Int]
primos xs = [x | x <- xs, length [n | n <- [1..x], mod x n == 0] == 2 ]

{-
Función: coprimos
Descripción: Recibe un entero y devuelve una lista con los coprimos del entero
Uso: coprimos 20 = [1,3,7,9,11,13,17,19]
-}

coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n], length [y | y <- [1..x], mod x y == 0, mod n y == 0] == 1]


