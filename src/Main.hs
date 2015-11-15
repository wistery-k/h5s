module Main where

import qualified ConfigFile as C
import qualified Data.Aeson as A

data Config = Config {
} deriving Show

instance A.FromJSON Config where
    parseJSON (A.Object v) = return $ Config

main :: IO ()
main = do
    conf <- C.load Config
    putStrLn (show conf)
