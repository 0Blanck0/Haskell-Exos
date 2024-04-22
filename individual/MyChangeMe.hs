myChangeMe :: (a, b) -> (b, a)
myChangeMe (a, b) = (b, a)

-- Fonction principale
main :: IO ()
main = do
    let res = myChangeMe (1, 2)

    -- Affichage du résultat
    print res