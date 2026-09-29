

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
Función: cashback_monto
Descripción: Convierte los puntos acumulados a su equivalente en dinero, donde cada punto vale $0.10
Uso: cashback_monto 234 = 23.4
-}

cashback_monto :: Int -> Float
cashback_monto x = fromIntegral x * 0.1

