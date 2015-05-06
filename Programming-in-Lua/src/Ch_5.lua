local M = {}

-- p5.1 - Write a function that receives an arbitrary number of strings and returns all 
--        of them concatenated together
---[[ 
function M.p5_1(...)
  local str = ""
  for i, v in ipairs{...} do
    str = str..v
  end
  return str
end
---]]
-- end p5_1

-- p5.2 - Write a function that receives an array and prints all elements in that array.
--        Consider the pros and cons of using table.unpack in this function
---[[
function M.p5_2(arr)
  for i, v in ipairs(arr) do
    print(v)
  end
end
---]]
-- end p5_2

-- p5.3 - Write a function that receives an arbitrary number of values and returns all 
--        of them, except the first one.
---[[
function M.p5_3(...)
  return table.unpack({...},2) -- assumes no arguments are nil; if arguments could be nil, use table.pack(...) over {...}
end
--]]

-- p5.4 - Write a function that receives an array and prints all combinations of the
--        elements in that array. (Hind: you can use the recursive formula for 
--        combination: C(n, m) = C(n-1, m-1) + C(n-1, m).  To generate all C(n,m) 
--        combinations of n elements in groups of size m, you first add the first element 
--        to the result and then generate all C(n-1, m-1) combinations of the remaining 
--        elements in the remaining slots; then you remove the first element from the 
--        result and then generate all C(n-1, m) combinations of the remaining elements
--        in the free slots.  When n is smaller than m, there are no combinations. When m
--        is zero, there is only one combination, which uses no elements.)
---[[
function M.p5_4(arr)

end
--]]

local public = { p5_1 = M.p5_1,
                 p5_2 = M.p5_2,
                 p5_3 = M.p5_3, 
                 p5_4 = M.p5_4 }
return public