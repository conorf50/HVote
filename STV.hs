module STV (
    concatBallots,
    countLetters,
    cntVotes,
    droopQuota
)
where
import Ballots


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

cntVotes :: [Char] -> [Int]
cntVotes [] = [0]
cntVotes (x:xs) = [countLetters (concatBallots ballots) x] ++ cntVotes xs



-- calculate the quota based on the 'droop quota' method
-- also floors the values too
droopQuota :: Int -> Int -> Int
droopQuota 0 0 = 0
droopQuota x c = x`div`(c+1)+1
