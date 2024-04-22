myPrems :: (a, b) -> a
myPrems (a, b) = a

-- Fonction principale
main :: IO ()
main = do
    let result = myPrems (-5, 7)

    -- Affichage du résultat
    print result