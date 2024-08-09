module Moto(quadrado) where
import Graphics.Gloss  
data Coordenadas = Norte | Sul | Leste | Oeste 

corMotoJogador :: Color 
corMotoJogador = makeColorI 8 241 249 182

area :: Float
area = 18.0

-- O quadrado inicial que será a moto é desenhado por essa funçaõ que recebe 3 Floats--
--Também mudaremos a cor da moto para a corMotoJogador--
desenhaQ :: Float -> Picture
desenhaQ area1 = color corMotoJogador $ rectangleSolid area1 area1

-- A função quadrado pega o resultado de desnhaQ e coloca em pictures 
-- que tem uma assinatura [Picture] -> Picture
quadrado :: Picture
quadrado = pictures [desenhaQ area]

 




