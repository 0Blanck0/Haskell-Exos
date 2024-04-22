myLetMeGo :: Int -> [a] -> [a]
myLetMeGo n _ | n < 0 = error "Index out of range..."
myLetMeGo _ [] = []
myLetMeGo n a | n > length a = []
myLetMeGo n (_:xs) 
    | n == 1 = xs
    | otherwise = myLetMeGo (n - 1) xs

-- Fonction principale
main :: IO ()
main = do
    let res = myLetMeGo 2 [1, 2, 3, 4, 5]

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res