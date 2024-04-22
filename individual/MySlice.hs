mySlice :: Int -> [a] -> [a]
mySlice n _ | n < 0 = error "Index out of range..."
mySlice _ [] = []
mySlice n a | n > length a = a
mySlice n (x:xs) 
    | n == 1 = [x]
    | otherwise = x : mySlice (n - 1) xs

-- Fonction principale
main :: IO ()
main = do
    let res = mySlice 4 ""

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res