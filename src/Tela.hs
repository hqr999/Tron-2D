module Tela(janela,backgroundC,drawGrid,centraliza) where


import Graphics.Gloss


--Fazendo a tela inicial do jogo--
janela :: Display
janela = InWindow "Tron 2D" (810,810) (10,10)

backgroundC :: Color
backgroundC = makeColorI 13 13 98 240

cellWidth :: Float
cellWidth = fromIntegral 810 / fromIntegral n


cellHeight :: Float
cellHeight = fromIntegral 810 / fromIntegral n

n :: Int
n = 15

-- Função para desenhar as linhas da grade--
drawGrid :: Picture
drawGrid = pictures
  $ concatMap (\i -> [ line [ (i * cellWidth, 0.0)
                             , (i * cellWidth, fromIntegral 810)
                             ]
                      , line [ (0.0,           i * cellHeight)
                             , (fromIntegral 810, i * cellHeight)
                             ]
                      ])
  [0.0 .. fromIntegral n]

  -- Função para centralizarmos a área da grade no meio da tela --
  -- É nessa área onde as motos irão correr --

centraliza :: Picture
centraliza = translate (fromIntegral 810 * (-0.5)) (fromIntegral 810 * (-0.5)) $ drawGrid
