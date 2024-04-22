myWhoAreTheLittle :: (Int, Int) -> Int
myWhoAreTheLittle (a, b) = if a < b then a else b

-- Fonction principale
main :: IO ()
main = do
    let neg = myWhoAreTheLittle (-5, -9)
    let pos = myWhoAreTheLittle (9, 5)

    -- Affichage du résultat
    print neg
    print pos