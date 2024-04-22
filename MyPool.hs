import Data.List (sortBy)

myNext :: Int -> Int
myNext 0 = 1
myNext n = n + 1

myAreYouNeg :: Int -> Bool
myAreYouNeg n = n < 0

myMakeMeAbs :: Int -> Int
myMakeMeAbs n = if n < 0 then n * (-1) else n

myWhoAreTheLittle :: Int -> Int -> Int
myWhoAreTheLittle a b = if a < b then a else b

myWhoAreTheBest :: Int -> Int -> Int
myWhoAreTheBest a b = if a > b then a else b

myGroupMe :: a -> b -> (a, b)
myGroupMe a b = (a, b)

myGroupMeMore :: a -> b -> c -> (a, b, c)
myGroupMeMore a b c = (a, b, c)

myPrems :: (a, b) -> a
myPrems (a, b) = a

myScd :: (a, b) -> b
myScd (a, b) = b

myChangeMe :: (a, b) -> (b, a)
myChangeMe (a, b) = (b, a)

myBigBrain :: [a] -> a
myBigBrain [] = error "Erreur list vide"
myBigBrain (x:_) = x

myCutHead :: [a] -> [a]
myCutHead [] = error "Erreur list vide"
myCutHead (_:xs) = xs

myCountMe :: [a] -> Int
myCountMe [] = 0
myCountMe (_:xs) = 1 + myCountMe xs

myGetElementAtIndex :: [a] -> Int -> a
myGetElementAtIndex (x:_) 0 = x 
myGetElementAtIndex (_:xs) n = myGetElementAtIndex xs (n - 1)

myAtIndex :: [a] -> Int -> a
myAtIndex [] _ = error "Index out of range..."
myAtIndex a x =
    if myCountMe a < x || x < 0
    then error "Index out of range..."
    else myGetElementAtIndex a x

mySlice :: Int -> [a] -> [a]
mySlice n _ | n < 0 = error "Index out of range..."
mySlice _ [] = []
mySlice n a | n > myCountMe a = a
mySlice n (x:xs) 
    | n == 1 = [x]
    | otherwise = x : mySlice (n - 1) xs

myLetMeGo :: Int -> [a] -> [a]
myLetMeGo n _ | n < 0 = error "Index out of range..."
myLetMeGo _ [] = []
myLetMeGo n a | n > myCountMe a = []
myLetMeGo n (_:xs) 
    | n == 1 = xs
    | otherwise = myLetMeGo (n - 1) xs

myAddMe :: [a] -> [a] -> [a]
myAddMe a b = concat [a, b]

myUpsideDown :: [a] -> [a]
myUpsideDown [] = []
myUpsideDown (x:xs) = myUpsideDown xs ++ [x]

myWithoutMe :: [a] -> [a]
myWithoutMe [] = error "Array empty..."
myWithoutMe a | length a == 1 = []
myWithoutMe (x:xs)
    | length xs == 1 = [x]
    | otherwise = x : myWithoutMe xs

myEnd :: [a] -> a
myEnd [] = error "Array empty..."
myEnd a | length a == 1 = head a
myEnd a = a !! (length a - 1)

myListZipper :: [a] -> [b] -> [(a, b)]
myListZipper _ [] = []
myListZipper [] _ = []
myListZipper (x:xs) (y:ys) = (x, y) : myListZipper xs ys

myApplyEvery :: (a -> b) -> [a] -> [b]
myApplyEvery _ [] = []
myApplyEvery f (x:xs) = f x : myApplyEvery f xs

myJustTheTruth :: (a -> Bool) -> [a] -> [a]
myJustTheTruth _ [] = []
myJustTheTruth f (x:xs)
    | f x = x : myJustTheTruth f xs
    | otherwise = myJustTheTruth f xs

myBeautifulSort :: (a -> a -> Bool) -> [a] -> [a]
myBeautifulSort _ [] = []
myBeautifulSort f xs = sortBy (\a b -> if f a b then GT else LT) xs
