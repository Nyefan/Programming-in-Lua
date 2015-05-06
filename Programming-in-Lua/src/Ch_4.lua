local M = {}

-- p4.4 - Rewrite the state machine of Listing 4.2 without using goto.
---[[
function M.p4_4()
  room1 = {}
  room2 = {}
  room3 = {}
  room4 = {}
  
  -- These initializations have to be outside the table constructor because they reference each other
  -- Alternatively, there could be a table of rooms where each room is constructed in the dungeon's constructor
  -- The dungeon is set up like this:
  -- -----------------
  -- |       |       |
  -- | room1 | room2 |
  -- |       |       |
  -- -----------------
  -- |       |       |
  -- | room3 | room4 |
  -- |       |       |
  -- ----------------- 
  room1.south = room3
  room1.east = room2
  room1.message = "Welcome to Room 1"
  room2.south = room4
  room2.west = room1
  room2.message = "Welcome to Room 2"
  room3.north = room1
  room3.east = room4
  room3.message = "Welcome to Room 3"
  room4.victoryFlag = true
  room4.message = "Congratulations, you win!"
  
  victoryFlag = nil
  currentRoom = room1
  errorMessage = "That is not a valid move from this room.\nPlease try again\n"
  while not victoryFlag do -- note that not nil evaluates to true
    print(currentRoom.message)
    next = currentRoom[io.read()] -- note that table["stringVal"] returns table.stringVal
    -- This has huge code injection vulnerabilities, don't use it in real code
    -- Alternatives include: write a separate parser that handles all valid inputs
    --                       add a section of code here that purges unacceptable inputs (bad 
    --                         practice, easily bugged)
    --                       rewrite the rooms so that only acceptable inputs can be reached 
    --                         without using a getThis() function, and have the next line be 
    --                         "if next and type(x)=='table' then".  Even better would be to
    --                         change the __type variable in each room table or create a 
    --                         generic room object.
    if next then 
      currentRoom = next
      victoryFlag = currentRoom.victoryFlag -- will return nil for all rooms except room4
    else 
      print(errorMessage)
    end
  end
  print(currentRoom.message)  
  
end
---]]
-- end p4_4

local public = { p4_4 = M.p4_4 }

return public