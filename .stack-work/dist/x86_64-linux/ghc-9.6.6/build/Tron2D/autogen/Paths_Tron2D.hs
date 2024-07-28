{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
#if __GLASGOW_HASKELL__ >= 810
{-# OPTIONS_GHC -Wno-prepositive-qualified-module #-}
#endif
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_Tron2D (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath




bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/home/henriqueqr/Documentos/Codigos/Haskell/Tron2D/.stack-work/install/x86_64-linux/fd56c3894fd06ba9fff1152b18a9da36aa414d70e3d174d17f5bdb8b0bbc77bd/9.6.6/bin"
libdir     = "/home/henriqueqr/Documentos/Codigos/Haskell/Tron2D/.stack-work/install/x86_64-linux/fd56c3894fd06ba9fff1152b18a9da36aa414d70e3d174d17f5bdb8b0bbc77bd/9.6.6/lib/x86_64-linux-ghc-9.6.6/Tron2D-0.1.0.0-9fCf7rGBF991pl7fnpTiIC-Tron2D"
dynlibdir  = "/home/henriqueqr/Documentos/Codigos/Haskell/Tron2D/.stack-work/install/x86_64-linux/fd56c3894fd06ba9fff1152b18a9da36aa414d70e3d174d17f5bdb8b0bbc77bd/9.6.6/lib/x86_64-linux-ghc-9.6.6"
datadir    = "/home/henriqueqr/Documentos/Codigos/Haskell/Tron2D/.stack-work/install/x86_64-linux/fd56c3894fd06ba9fff1152b18a9da36aa414d70e3d174d17f5bdb8b0bbc77bd/9.6.6/share/x86_64-linux-ghc-9.6.6/Tron2D-0.1.0.0"
libexecdir = "/home/henriqueqr/Documentos/Codigos/Haskell/Tron2D/.stack-work/install/x86_64-linux/fd56c3894fd06ba9fff1152b18a9da36aa414d70e3d174d17f5bdb8b0bbc77bd/9.6.6/libexec/x86_64-linux-ghc-9.6.6/Tron2D-0.1.0.0"
sysconfdir = "/home/henriqueqr/Documentos/Codigos/Haskell/Tron2D/.stack-work/install/x86_64-linux/fd56c3894fd06ba9fff1152b18a9da36aa414d70e3d174d17f5bdb8b0bbc77bd/9.6.6/etc"

getBinDir     = catchIO (getEnv "Tron2D_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "Tron2D_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "Tron2D_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "Tron2D_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Tron2D_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Tron2D_sysconfdir") (\_ -> return sysconfdir)



joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'
