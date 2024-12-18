```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys

-- Example with non-comparable types (causes error)
main2 :: IO ()
main2 = do
  let xs = [1, "a", 3]
  -- let ys = sort xs  -- This line will cause a runtime error
  print "Error: Cannot sort a list with mixed types."

--Example using a type constraint to avoid the error
sortComparable :: (Ord a) => [a] -> [a]
sortComparable xs = sort xs

main3 :: IO ()
main3 = do
  let xs = [1,2,3]
  print $ sortComparable xs
```