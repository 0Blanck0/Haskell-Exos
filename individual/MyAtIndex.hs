myGetElementAtIndex :: [a] -> Int -> a
myGetElementAtIndex (x:_) 0 = x 
myGetElementAtIndex (_:xs) n = myGetElementAtIndex xs (n - 1)

myAtIndex :: [a] -> Int -> a
myAtIndex [] _ = error "Index out of range..."
myAtIndex a x =
    if length a < x || x < 0
    then error "Index out of range..."
    else myGetElementAtIndex a x

-- Fonction principale
main :: IO ()
main = do
    let test1 = myAtIndex [1, 2, 3] 1
    let test2 = myAtIndex "subject.html is waiting for you :-)" 2

    -- Affichage du résultat
    putStrLn $ "Test 1 : " ++ show test1
    putStrLn $ "Test 2 : " ++ show test2