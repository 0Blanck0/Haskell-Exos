myCutHead :: [a] -> [a]
myCutHead [] = error "Erreur list vide"
myCutHead (_:xs) = xs

-- Fonction principale
main :: IO ()
main = do
    let res = myCutHead [1, 2, 3]

    -- Affichage du résultat
    print res