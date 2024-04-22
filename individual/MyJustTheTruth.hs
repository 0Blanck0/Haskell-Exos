myJustTheTruth :: (a -> Bool) -> [a] -> [a]
myJustTheTruth _ [] = []
myJustTheTruth f (x:xs)
    | f x = x : myJustTheTruth f xs
    | otherwise = myJustTheTruth f xs

myBool :: Int -> Bool
myBool a 
    | a >= 1 = True
    | otherwise = False

-- Fonction principale
main :: IO ()
main = do
    let res = myJustTheTruth myBool [-7, 28, -9, 5, -7]

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res