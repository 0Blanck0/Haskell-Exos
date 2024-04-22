myAddMe :: [a] -> [a] -> [a]
myAddMe a b = concat [a, b]

-- Fonction principale
main :: IO ()
main = do
    let res = myAddMe [2] [1, 2, 3, 4, 5]

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res
