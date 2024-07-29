module Moto(qudrado,Ponto) where
import Graphics.Gloss  
data Coordenadas = Norte | Sul | Leste | Oeste 
data Ponto = Point Float Float deriving(Show)

quadrado :: Float -> Ponto -> Picture
quadrado area (Point x y) = RectangleSolid ((x - area/2) (y - area/2)) (area area)



