myGroupMeMore :: a -> b -> c -> (a, b, c)
myGroupMeMore a b c = (a, b, c)

-- Fonction principale
main :: IO ()
main = do
    let result = myGroupMeMore (-5) 7 6

    -- Affichage du résultat
    print result