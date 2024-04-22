myCountMe :: [a] -> Int
myCountMe [] = 0
myCountMe (_:xs) = 1 + myCountMe xs

-- Fonction principale
main :: IO ()
main = do
    let res = myCountMe [1, 2, 3]

    -- Affichage du résultat
    print res