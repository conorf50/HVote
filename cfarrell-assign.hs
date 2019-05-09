-- Functional Programming: Assignment
-- Student Name : Conor Farrell
-- Course: IoT Year 4

-- Voting calculator based on the Single Transferable Vote system (also calculates first past the post)

-- some sample votes for our candidates A,B,C,D and E
-- imported from Ballots.hs module
import Ballots
-- vote calculation finctions
import STV


totalBallots :: Int
totalBallots = length ballots



main :: IO()
main = do
    -- how many candidates do we have to elect?
    putStrLn "How many candidates have to be elected?"
    t <- getLine
    -- parse this as an Int
    let toElect = (read t :: Int)

    putStrLn ("Will elect " ++ show(toElect) ++ " candidates")
    -- call other stuff here

    -- print out a seperator
    putStrLn "----------------------------------"
    -- print without new line
    putStr "Total amount of ballots cast: "
    print(totalBallots)

    --print(cntVotes ([ x | x <- ['A'.. 'F']]))

    -- re-do this as recursive function
    putStr "Total amount of votes for all candidates : "
    print(cntVotes ['A'..'E'])
   
    putStrLn "----------------------------------"

    -- hutton example
    -- putStr "Winner is: "
    -- print(winner ballots)
    -- putStrLn "----------------------------------"
    
    putStr ("Calculated quota for "  ++ show(totalBallots) ++ " ballots and "++ show(toElect) ++ " candidates : ")
    print(droopQuota totalBallots toElect)