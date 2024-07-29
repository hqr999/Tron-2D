module Moto(quadrado) where
import Graphics.Gloss  
data Coordenadas = Norte | Sul | Leste | Oeste 

corMotoJogador :: Color 
corMotoJogador = makeColorI 8 241 249 182


area :: Float
area = 20.0

x ::Float
x = 0.0

y :: Float 
y = 0.0 

-- O quadrado inicial que será a moto é desenhado por essa funçaõ que recebe 3 Floats--
desenhaQ :: Float -> Float -> Float -> Picture
desenhaQ area1 x1 y1  =  rectangleSolid (x1 - area1/2) (y1 - area1/2)

-- A função quadrado pega o resultado de desnhaQ e coloca em pictures 
-- que tem uma assinatura [Picture] -> Picture
quadrado :: Picture
quadrado = pictures [desenhaQ area x y]




