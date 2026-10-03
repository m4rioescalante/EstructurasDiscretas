

{-
Función: reconversion
Descripción: Quita tres ceros al valor ingresado
Uso: reconversion 1000 = 1.00
-}

reconversion :: Float -> Float
reconversion x = x / 1000

{-
Función: cashback
Descripción: Devuelve el 10% de puntos del valor ingresado
Uso: cashback 2500 = 250
-}

cashback :: Int -> Int
cashback x = div x 10

{-
Función: cashbackMonto
Descripción: Convierte los puntos acumulados a su equivalente en dinero, donde cada punto vale $0.10
Uso: cashbackMonto 234 = 23.4
-}

cashbackMonto :: Float -> Float
cashbackMonto x =  x * 0.1

{-
Función: minutosHoras
Descripción: Convierte los minutos a horas
Uso: minutosHoras 123 = 2 horas y 3 minutos
-}

minutosHoras :: Int -> IO()
minutosHoras x = putStrLn (show (div x 60) ++ " Horas y " ++ show (mod x 60) ++ " minutos")


{-
Función: esDescendente
Descripción: Devuelve un valor booleano si los 4 números ingresados están ordenados descendentemente
Uso: esDescendente 20 10 5 1 = True
-}

esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = (x > y) && (y> z) && (z > w)
  

{-
Función: imc
Descripción: Recibe un primer parametro en kg y un segundo en cm, después devuelve según sea el caso: bajo,  normal, sobrepeso u obesidad
Uso: imc 76 187 = Normal
-}

imc :: Float -> Float -> IO()
imc x y =
    if (x / ((y / 100) * (y / 100))) < 18.5
        then putStrLn ("Bajo")
    else if (x / ((y / 100) * (y / 100))) < 25
        then putStrLn ("Normal")
    else if (x / ((y / 100) * (y / 100))) < 30
        then putStrLn ("Sobrepeso")
    else putStrLn ("Obesidad")
  

