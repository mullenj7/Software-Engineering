{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE DeriveAnyClass    #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators     #-}
{-# LANGUAGE DuplicateRecordFields     #-}

module GitHub where 

import           Control.Monad       (mzero)
import           Data.Aeson
import           Data.Proxy
import           Data.Text
import           GHC.Generics
import           Network.HTTP.Client (defaultManagerSettings, newManager)
import           Servant.API
import           Servant.Client

type Username = Text
type UserAgent = Text


data GitHubUser =
  GitHubUser { login :: Text,url :: Text
              } deriving (Generic, FromJSON, Show)
data UserRepo =
  UserRepo { name :: Text,created_at :: Text,updated_at :: Maybe Text
           } deriving (Generic, FromJSON, Show)
            

type GitHubAPI = "users" :> Header "user-agent" UserAgent 
                         :> Capture "username" Username  :> Get '[JSON] GitHubUser
           :<|> "users" :> Header  "user-agent" UserAgent 
                         :> Capture "username" Username  :> "repos" :>  Get '[JSON] [UserRepo]

gitHubAPI :: Proxy GitHubAPI
gitHubAPI = Proxy

displayUserDetails :: Maybe UserAgent -> Username -> ClientM GitHubUser {-should display user login and url-}
displayUserRepos :: Maybe UserAgent -> Username -> ClientM [UserRepo] {-should display list of repos and their creation date
																			+ latest update if applicable-}

displayUserDetails :<|> displayUserRepos = client gitHubAPI
