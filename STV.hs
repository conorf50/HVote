module STV (
    concatBallots,
    countLetters,
    cntVotes,
    droopQuota,
    winner,
    elim,
    rank,
    rmempty,
    count,
    rmdups,
    result
)
where
import Ballots
import Data.List


-- convert the lists of votes into one long String (based on examples from notes)
concatBallots :: [[a]] -> [a]
concatBallots xss = [x | xs <- xss, x <- xs]

-- count how many votes each candidate got
-- source: https://stackoverflow.com/questions/19297059/count-number-of-instances-of-char-in-a-given-string-haskell
countLetters :: String -> Char -> Int
countLetters str c = length $ filter (== c) str

-- for each of of our candidates, count their votes
-- find occurances matcing the character c
-- cntVotes :: Char -> Int
-- cntVotes c = countLetters (concatBallots ballots) c

-- cntVotes :: [Char] -> [Int]
-- cntVotes [] = [0]
-- cntVotes (x:xs) = [countLetters (concatBallots ballots) x] ++ cntVotes xs


cntVotes :: [Char] -> [(Char,Int)]
cntVotes [] = [('-',0)]
cntVotes (x:xs) = zip [x][countLetters (concatBallots ballots) x] ++ cntVotes xs



-- based on code found here
votesPerCandidate :: [(Char,Integer)] -> (Char, Integer)
votesPerCandidate x  = ('B', 110)

-- calculate the quota based on the 'droop quota' method
-- also floors the values too
highestVoter :: Int -> Int -> Int
highestVoter 0 0 = 0
highestVoter x c = x`div`(c+1)+1




-- following code based on code from Graham Hutton
rmempty :: Eq a => [[a]] -> [[a]]
rmempty = filter (/= [])

elim :: Eq a => a -> [[a]] -> [[a]]
elim x = map (filter (/= x))

rank :: Ord a => [[a]] -> [a]
rank = map snd . result . map head

winner :: Ord a => [[a]] -> a
winner bs = case rank (rmempty bs) of
                [c]    -> c
                (c:cs) -> winner (elim c bs)

                
count :: Eq a => a -> [a] -> Int
count x = length . filter (== x)
                
rmdups :: Eq a => [a] -> [a]
rmdups []     = []
rmdups (x:xs) = x : filter (/= x) (rmdups xs)
                
result :: Ord a => [a] -> [(Int, a)]
result vs = sort [(count v vs, v) | v <- rmdups vs]                