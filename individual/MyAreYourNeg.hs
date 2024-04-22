myAreYouNeg :: Int -> Bool
myAreYouNeg n = n < 0

-- Fonction principale
main :: IO ()
main = do
    let neg = myAreYouNeg (-5)
    let pos = myAreYouNeg 9

    -- Affichage du résultat
    print neg
    print pos