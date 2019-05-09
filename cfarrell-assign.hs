-- Functional Programming: Assignment
-- Student Name : Conor Farrell
-- Course: IoT Year 4

-- Voting calculator based on the Single Transferable Vote system (also calculates first past the post)

-- some sample votes for our candidates A,B,C,D and E
-- imported from Ballots.hs module
import Ballots

totalBallots :: Int
totalBallots = length ballots

getVoterPreferences :: [[String]] -> [Char]
getVoterPreferences = undefined



-- convert the lists of votes into one long String (based on examples from notes)
concatBallots :: [[a]] -> [a]
concatBallots xss = [x | xs <- xss, x <- xs]

-- count how many votes each candidate got
-- source: https://stackoverflow.com/questions/19297059/count-number-of-instances-of-char-in-a-given-string-haskell
countLetters :: String -> Char -> Int
countLetters str c = length $ filter (== c) str

-- for each of of our candidates, rank their votes
-- find occurances matcing the character c
getVoteOccurances :: [Char] -> Int
getVoteOccurances c = countLetters (concatBallots ballots) (head(c))


main :: IO()
main = do
    -- call other stuff here

    -- print without new line
    putStr "Total amount of ballots cast: "
    print(totalBallots)

    putStr "Total amount of votes per candidate: "
    print(getVoteOccurances ([ x | x <- ['A'.. 'F']]))


    
