{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE DeriveAnyClass       #-}
{-# LANGUAGE DeriveGeneric        #-}
{-# LANGUAGE FlexibleContexts     #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE OverloadedStrings    #-}
{-# LANGUAGE StandaloneDeriving   #-}
{-# LANGUAGE TemplateHaskell      #-}
{-# LANGUAGE TypeOperators        #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE DuplicateRecordFields     #-}

module Lib
    ( someFunc
    ) where

import qualified GitHub as GH
import qualified Servant.Client               as SC
import           Network.HTTP.Client          (newManager)
import           Network.HTTP.Client.TLS      (tlsManagerSettings)
import           System.Environment           (getArgs)
import Data.Text hiding (map,intercalate, groupBy, concat)
import Data.List (intercalate, groupBy, sortBy)
import Data.Either
import           Servant.API                (BasicAuthData (..))
import Data.ByteString.UTF8 (fromString)

someFunc :: IO ()
someFunc = do
   (rName:user:token:_) <- getArgs
   
   let auth = BasicAuthData (fromString user) (fromString token)
   
   testGitHubCall auth $ pack rName



testGitHubCall :: BasicAuthData ->Text -> IO ()
testGitHubCall auth name = 
  (SC.runClientM (GH.displayUserDetails (Just "haskell-app") auth name) =<< env) >>= \case --displays user details

    Left err -> do
      putStrLn $ "Error displaying user details" ++ show err
    Right res -> do
      putStrLn $ "User details are: " ++ show res
      
      (SC.runClientM (GH.displayUserRepos (Just "haskell-app") auth name) =<< env) >>= \case --displays user repo details
        Left err -> do
          putStrLn $ "Error displaying repo details" ++ show err
        Right repos -> do
          putStrLn $ "User repo details are: " ++ show repos
 
              
  where env :: IO SC.ClientEnv
        env = do
          manager <- newManager tlsManagerSettings
          return $ SC.mkClientEnv manager (SC.BaseUrl SC.Http "api.github.com" 80 "")
					
