local M = {}

-- p5.1 - Write a function that receives an arbitrary number of strings and returns all of them concatenated together
---[[ 
function M.p5_1(...)
  local s = ""
  for i, v in ipairs{...} do
    s = s..v
  end
  return s
end
--]] 
--end p5_1

-- p5.2 - Write a function that receives an array and prints all elements in that array.
--        Consider the pros and cons of using table.unpack in this function
---[[
function M.p5_2()
  
end
--]]
--end p5_2

return M