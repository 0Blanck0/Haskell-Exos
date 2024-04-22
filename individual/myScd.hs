myScd :: (a, b) -> b
myScd (a, b) = b

-- Fonction principale
main :: IO ()
main = do
    let result = myScd (-5, 7)

    -- Affichage du résultat
    print result