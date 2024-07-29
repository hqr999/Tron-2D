module Moto(qudrado) where
import Grpahics.Gloss  
data Coordenadas = Norte | Sul | Leste | Oeste 

quadrado :: Picture
quadrado = pictures [line[(0),(7)],line [(7),(0)],line[(0)(0)],line[(7),(7)]]



