myGroupMe :: a -> b -> (a, b)
myGroupMe a b = (a, b)

-- Fonction principale
main :: IO ()
main = do
    let result = myGroupMe (-5) 7

    -- Affichage du résultat
    print result