myBigBrain :: [a] -> a
myBigBrain [] = error "Erreur list vide"
myBigBrain (x:_) = x

-- Fonction principale
main :: IO ()
main = do
    let res = myBigBrain [1, 2, 3]

    -- Affichage du résultat
    print res