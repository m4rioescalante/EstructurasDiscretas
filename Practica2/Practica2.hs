

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
Función: esEstafa
Descripción: Determina si el pago y el cambio de un producto representa una estafa al comerciante
Uso: 100 200 100 0 = True
Uso_dos: 100 200 100 100 = False
-}
esEstafa :: Float -> Float -> Float -> Float -> Bool
esEstafa precioProducto billeteGrande billeteJusto cambio = (billeteGrande - precioProducto) > cambio


{-
Función: esDescendente
Descripción: Devuelve un valor booleano si los 4 números ingresados están ordenados descendentemente
Uso: esDescendente 20 10 5 1 = True
Uso_dos: esDescendente 10 9 11 8 = False
-}

esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = (x > y) && (y> z) && (z > w)
  

{-
Función: imc
Descripción: Recibe un primer parametro en kg y un segundo en cm, después devuelve según sea el caso: bajo,  normal, sobrepeso u obesidad
Uso: imc 40 160 = Bajo
Uso_dos: imc 60.5 170 = Normal
Uso_tres: imc 80 172 = Sobrepeso
Uso_cuatro: imc 105.2 180 = Obesidad
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
  

{-
Función: hipotenusa
Descripción: Al ingresar 2 valores b y h de tipo flotante, donde b es base y h es altura. Devuelve el valor de la hipotenusa
Uso: hipotenusa 9.0 12.0 = 15.0
-}


hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt ((b * b) + (h * h))


{-
Función: pendiente
Descripción: Calcula la pendiente de la recta que pasa por dos puntos (x1, y1) y (x2, y2)
Uso: pendiente (3.0, 2.0) (7.0, 8.0) = 1.5
-}

pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)

{-
Función: distanciaPuntos
Descripción: Calcula la distancia entre los puntos (x1, y1) y (x2, y2)
Uso: distanciaPuntos (1.0, 2.0) (4.0, 6.0) = 5.0
-}

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt (((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1)))

