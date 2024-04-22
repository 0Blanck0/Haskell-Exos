myApplyEvery :: (a -> b) -> [a] -> [b]
myApplyEvery _ [] = []
myApplyEvery f (x:xs) = f x : myApplyEvery f xs

-- Fonction principale
main :: IO ()
main = do
    let res = myApplyEvery (+1) [7, 28, 9, 5, 7]

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res