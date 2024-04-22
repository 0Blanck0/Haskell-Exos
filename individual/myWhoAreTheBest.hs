myWhoAreTheBest :: (Int, Int) -> Int
myWhoAreTheBest (a, b) = if a > b then a else b

-- Fonction principale
main :: IO ()
main = do
    let neg = myWhoAreTheBest (-5, -9)
    let pos = myWhoAreTheBest (9, 5)

    -- Affichage du résultat
    print neg
    print pos