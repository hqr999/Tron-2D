module Tela(janela,backgroundC,drawGrid,centraliza) where


import Graphics.Gloss


--Fazendo a tela inicial do jogo
janela :: Display
janela = InWindow "Tron 2D" (640,480) (10,10)

backgroundC :: Color
backgroundC = makeColorI 13 13 98 240

cellWidth :: Float
cellWidth = fromIntegral 640 / fromIntegral n


cellHeight :: Float
cellHeight = fromIntegral 480 / fromIntegral n

n :: Int
n = 15
-- Função para desenhar as linhas da grade
drawGrid :: Picture
drawGrid =pictures
  $ concatMap (\i -> [ line [ (i * cellWidth, 0.0)
                             , (i * cellWidth, fromIntegral 480)
                             ]
                      , line [ (0.0,           i * cellHeight)
                             , (fromIntegral 640, i * cellHeight)
                             ]
                      ])
  [0.0 .. fromIntegral n]

  -- Função para centralizarmos a área da grade no meio da tela --
  -- É nessa área onde as motos irão correr --

centraliza :: Picture
centraliza = translate (fromIntegral 640 * (-0.5)) (fromIntegral 480 * (-0.5)) $ drawGrid
