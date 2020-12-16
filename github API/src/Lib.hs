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
import Network.HTTP.Client (newManager)
import Network.HTTP.Client.TLS (tlsManagerSettings)
import Data.Text hiding (map,intercalate, groupBy, concat)
import Data.List (intercalate, groupBy, sortBy)
import Data.Either
import System.Environment (getArgs)
import Servant.API (BasicAuthData (..))
import Data.ByteString.UTF8 (fromString)

someFunc :: IO ()
someFunc = do
   (userName:uname:token:_) <- getArgs
   
   let auth = BasicAuthData (fromString uname) (fromString token)
   
   testGitHubCall auth $ pack userName



testGitHubCall :: BasicAuthData ->Text -> IO ()
testGitHubCall auth name = 
  (SC.runClientM (GH.displayUserDetails (Just "haskell-app") auth name) =<< env) >>= \case

    Left err -> do
      putStrLn $ "Error displaying user details" ++ show err
    Right res -> do
      putStrLn $ "User details are: " ++ show res
      
      -- now lets get the users repositories
      (SC.runClientM (GH.displayUserRepos (Just "haskell-app") auth name) =<< env) >>= \case
        Left err -> do
          putStrLn $ "Error displaying repo details" ++ show err
        Right repos -> do
          putStrLn $ "User repo details are: " ++
            intercalate ", " (map (\(GH.UserRepo n created_at updated_at ) -> unpack created_at) repos)
		

 
              
  where env :: IO SC.ClientEnv
        env = do
          manager <- newManager tlsManagerSettings
          return $ SC.mkClientEnv manager (SC.BaseUrl SC.Http "api.github.com" 80 "")

      
         
