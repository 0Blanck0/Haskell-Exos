myWithoutMe :: [a] -> [a]
myWithoutMe [] = error "Array empty..."
myWithoutMe a | length a == 1 = []
myWithoutMe (x:xs)
    | length xs == 1 = [x]
    | otherwise = x : myWithoutMe xs

-- Fonction principale
main :: IO ()
main = do
    let res = myWithoutMe "wwlWvJqAFQnSBSUFbRYLVMcjKlEVTiDQqYfvDXUs"

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res