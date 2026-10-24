
{-
Función: cetes
Descripción: Recibe un monto inicial y dependiendo el plazo en dias o meses, devuelve un monto final
Uso: cetes 100 (Dias 28) = 100.47366
UsoDos: cetes 100 (Meses 1) = 100.47366
-}

data Plazo = Dias Int | Meses Int deriving Eq

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
    else x

