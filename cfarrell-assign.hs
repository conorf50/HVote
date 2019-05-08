-- Functional Programming: Assignment
-- Student Name : Conor Farrell
-- Course: IoT Year 4

-- Voting calculator based on the Single Transferable Vote system

-- some sample votes for our candidates A,B,C,D and E
ballots :: [[Char]]
ballots = [
    ['A','B','D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['C','E', 'A', 'B'],
    ['A','B','C', 'D', 'E'],
    ['C','D', 'E', 'A'],
    ['C','D','E', 'A', 'B'],
    ['D','E','A', 'B', 'C'],
    ['E','B', 'C', 'D'],
    ['A','B','C', 'D', 'E'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','B','C', 'D', 'E'],
    ['A'],
    ['B','C','D', 'E', 'A'],
    ['C','D', 'A', 'B'],
    ['D','E','A', 'B', 'C'],
    ['A','B', 'C', 'D'],
    ['A','C', 'D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['E', 'A', 'B'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','B','D', 'E'],
    ['A','B','C', 'D', 'E'],
    ['A','B','C', 'D', 'E'],
    ['B','C','E','A'],
    ['C','D','E', 'B'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['B','C', 'D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['C','D','E', 'A', 'B'],
    ['E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','B','C', 'D', 'E'],
    ['A','B','C', 'D', 'E'],
    ['A','B','D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['C','D','E', 'A', 'B'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','C', 'D']
    ]


totalBallots :: Int
totalBallots = length ballots

getVoterPreferences :: [[Char]] -> [Char]
getVoterPreferences = undefined


getVoteOccurances = undefined

-- convert the lists of votes into one long String (based on examples from notes)
concatBallots :: [[a]] -> [a]
concatBallots xss = [x | xs <- xss, x <- xs]

-- count how many votes each candidate got
-- source: https://stackoverflow.com/questions/19297059/count-number-of-instances-of-char-in-a-given-string-haskell
countLetters :: String -> Char -> Int
countLetters str c = length $ filter (== c) str

main :: IO()
main = do
    -- call other stuff here

    -- print without new line
    putStr "Total amount of ballots cast: "
    print(totalBallots)

    putStr "Total amount of votes per candidate: "

    


    
