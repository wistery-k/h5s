module ConfigFile where

import Control.Applicative ((<$>))

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy.Char8 as B
import qualified Data.Maybe as M

import qualified Data.HashMap.Strict as HashMap

load :: A.FromJSON a => a -> IO a
load defaultValue =
    M.fromMaybe defaultValue <$> A.decode <$> B.readFile "config/config.json"