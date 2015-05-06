local M = {}

-- p3.3 - We can represent a polynomial a_n*x^n + a_n-1*x^n-1 + ... + a_1*x + a_0
--        in Lua as a list of its coefficients, such as {a_0, a_1, ..., a_n}.
--
--        Write a function that receives a polynomial (represented as a table) 
--        and a value for x and returns the polynomial value.
---[[
function M.p3_3(polyTable, x)
  local x = x or 1
  local s = 0
  -- this can be made more efficient if there is a map equivalent in Lua
  for i, v in ipairs(polyTable) do
    s = s + v * math.pow(x,i)
  end
  return s
end
---]]
-- end p3_3

local public = { p3_3 = M.p3_3 }

return public