{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_github_api (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
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
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\jason\\workspace\\Software-Engineering\\github API\\.stack-work\\install\\52080d55\\bin"
libdir     = "C:\\Users\\jason\\workspace\\Software-Engineering\\github API\\.stack-work\\install\\52080d55\\lib\\x86_64-windows-ghc-8.8.4\\github-api-0.1.0.0-BKEmP2FsPs1ISJiCLMdW5Q-github-api-exe"
dynlibdir  = "C:\\Users\\jason\\workspace\\Software-Engineering\\github API\\.stack-work\\install\\52080d55\\lib\\x86_64-windows-ghc-8.8.4"
datadir    = "C:\\Users\\jason\\workspace\\Software-Engineering\\github API\\.stack-work\\install\\52080d55\\share\\x86_64-windows-ghc-8.8.4\\github-api-0.1.0.0"
libexecdir = "C:\\Users\\jason\\workspace\\Software-Engineering\\github API\\.stack-work\\install\\52080d55\\libexec\\x86_64-windows-ghc-8.8.4\\github-api-0.1.0.0"
sysconfdir = "C:\\Users\\jason\\workspace\\Software-Engineering\\github API\\.stack-work\\install\\52080d55\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "github_api_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "github_api_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "github_api_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "github_api_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "github_api_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "github_api_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
