import Data.Map

class (Ord c) =>  IdEntity c a where
  entt  :: c -> a
  code  :: a -> c






main :: IO()
main =
  putStrLn("It has Begun!")
