module Main (main) where

import Graphics.Gloss
import Tela
import Moto 

--Combina a moto do jogador com a tela quadriculada--
combinaElementos :: Picture
combinaElementos = pictures [quadrado,centraliza]

main :: IO()
main = display janela backgroundC combinaElementos
