import Data.List (sortBy)

myBeautifulSort :: (a -> a -> Bool) -> [a] -> [a]
myBeautifulSort _ [] = []
myBeautifulSort f xs = sortBy (\a b -> if f a b then GT else LT) xs

myBool :: Int -> Int -> Bool
myBool a b
    | a > b = True
    | otherwise = False

-- Fonction principale
main :: IO ()
main = do
    let res = myBeautifulSort myBool [-7, 28, -9, 5, -7, -128, 128, 4]

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res