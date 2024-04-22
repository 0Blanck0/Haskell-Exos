myNext :: Int -> Int
myNext 0 = 1
myNext n = n + 1

-- Fonction principale
main :: IO ()
main = do
    let neg = myNext (-5)
    let pos = myNext 9

    -- Affichage du résultat
    print neg
    print pos