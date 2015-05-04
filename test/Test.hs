import Data.Array.Accelerate as A
import Data.Array.Accelerate.Array.Sugar as A
import Numeric.AD as AD
--import Data.Array.Accelerate.Repa as Backend
import Data.Array.Accelerate.Interpreter as Backend

--func :: Num a => a -> a
func :: Num a => a -> a
func x = x*x

dfunc :: Num a => a -> a
dfunc = AD.diff func

main :: IO ()
main = do
--  let x = A.constant 1
  let v = generate (constant (Z :. (6::Int))) (\n ->
        let (Z :. i) = unlift n
        in A.fromIntegral i :: Exp (Float))
  let funcs = Backend.run (A.map func v) :: Vector (Float)
  let diffs = Backend.run (A.map dfunc v) :: Vector (Float)
  putStrLn $ show funcs
  putStrLn $ show diffs
  putStrLn "Ed balls"
