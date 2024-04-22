myMakeMeAbs :: Int -> Int
myMakeMeAbs n = if n < 0 then n * (-1) else n

-- Fonction principale
main :: IO ()
main = do
    let neg = myMakeMeAbs (-5)
    let pos = myMakeMeAbs 9

    -- Affichage du résultat
    print neg
    print pos