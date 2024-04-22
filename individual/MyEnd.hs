myEnd :: [a] -> a
myEnd [] = error "Array empty..."
myEnd a | length a == 1 = head a
myEnd a = a !! (length a - 1)


-- Fonction principale
main :: IO ()
main = do
    let res = myEnd "wwlWvJqAFQnSBSUFbRYLVMcjKlEVTiDQqYfvDXUs"

    -- Affichage du résultat
    putStrLn $ "Result : " ++ show res