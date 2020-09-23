{-# LANGUAGE ForeignFunctionInterface #-}
module Main where

import Foreign.C.Types

foreign import ccall "callme" ats_callme :: CInt -> IO CInt

callme :: Int -> IO Int
callme = fmap fromIntegral . ats_callme . fromIntegral

main :: IO ()
main = do
  putStrLn "I'm about to call ATS!"
  x <- callme 22
  print x
  putStrLn "Bye!"
