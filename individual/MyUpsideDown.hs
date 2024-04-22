myUpsideDown :: [a] -> [a]
myUpsideDown [] = []
myUpsideDown (x:xs) = myUpsideDown xs ++ [x]

-- Fonction principale
main :: IO ()
main = do
    let res = myUpsideDown [1, 2, 3, 4, 5]

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res