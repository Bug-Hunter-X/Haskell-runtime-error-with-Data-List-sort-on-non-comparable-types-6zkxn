# Haskell Runtime Error with Data.List.sort

This repository demonstrates a common runtime error in Haskell when using `Data.List.sort` with lists containing elements of non-comparable types. The issue arises because `sort` requires an `Ord` instance for the elements being sorted.  If the list contains elements without a consistent ordering,  a runtime exception will occur.

The `bug.hs` file contains code that triggers the error. The `bugSolution.hs` file shows how to address this issue using type constraints and error handling.
