local M = {}

-- p1.1 - Run the factorial example.
--        What happens to your program if you enter a negative number?
--        Modify the example to avoid this problem.
---[[
function M.p1_1(n)
  if (n < 0) then error("invalid input") end
  if (n == 0) then 
    return 1
  else
    return n*M.p1_1(n-1)
  end
end
---]]
-- end p1_1

-- p1.5 - Write a simple script that prints its own name without knowing it in advance
---[[
function M.p1_5()
return arg[0]
end
---]]
-- end p1_5

return M