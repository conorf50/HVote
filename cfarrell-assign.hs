-- Functional Programming: Assignment
-- Student Name : Conor Farrell
-- Course: IoT Year 4

-- Voting calculator based on the Single Transferable Vote system

-- some sample votes for our candidates A,B,C,D and E
votes = [
    ['A','B','C', 'D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['C','D','E', 'A', 'B'],
    ['A','B','C', 'D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['C','D','E', 'A', 'B'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','B','C', 'D', 'E'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','B','C', 'D', 'E'],
    ['A','B','C', 'D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['C','D','E', 'A', 'B'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','B','C', 'D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['C','D','E', 'A', 'B'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','B','C', 'D', 'E'],
    ['A','B','C', 'D', 'E'],
    ['A','B','C', 'D', 'E'],
    ['B','C','D', 'E', 'A'],
    ['C','D','E', 'A', 'B'],
    ['D','E','A', 'B', 'C'],
    ['E','A','B', 'C', 'D'],
    ['A','B','C', 'D', 'E']
    ]

--printf "There are %d votes cast" count votes

-- countAllVotes :: [[Char]] -> Int
-- countAllVotes [] = 0
-- countAllVotes [[]] = 0
-- countAllVotes [[x]] = count x

countAllVotes :: Int
countAllVotes = length votes

getVoterPreferences :: [[Char]] -> [Char]
getVoterPreferences = undefined



main = print (countAllVotes)