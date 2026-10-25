module EsParBit (esParBit) where

import Data.Bits

esParBit :: Int -> Bool
esParBit n =
    if (n .&. 1) == 0 then True
    else False