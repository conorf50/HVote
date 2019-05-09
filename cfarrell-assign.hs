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
cntVotes :: Char -> Int
cntVotes c = countLetters (concatBallots ballots) c


main :: IO()
main = do
    -- call other stuff here

    -- print without new line
    putStr "Total amount of ballots cast: "
    print(totalBallots)

    --print(cntVotes ([ x | x <- ['A'.. 'F']]))


    putStr "Total amount of votes for candidate 'A': "
    print(cntVotes 'A')

    putStr "Total amount of votes for candidate 'B': "
    print(cntVotes 'B')

    putStr "Total amount of votes for candidate 'C': "
    print(cntVotes 'C')

    putStr "Total amount of votes for candidate 'D': "
    print(cntVotes 'D')

    putStr "Total amount of votes for candidate 'E': "
    print(cntVotes 'E')



    
