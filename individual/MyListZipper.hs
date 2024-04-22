myListZipper :: [a] -> [b] -> [(a, b)]
myListZipper _ [] = []
myListZipper [] _ = []
myListZipper (x:xs) (y:ys) = (x, y) : myListZipper xs ys

-- Fonction principale
main :: IO ()
main = do
    let res = myListZipper [1, 1, 2, 7, 8] [7, 28, 9, 5, 7]

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res