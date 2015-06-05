local M = {}

math.sign = math.sign or function(x) return x<0 and -1 or x>0 and 1 or 0 end
math.signSafe = math.signSafe or function(x) return x<0 and -1 or 1 end

-- p6.1 - Write a function "integral" that receives a function "f" and returns
--        an approximation of its integral
---[[
function M.integral(f, delta)
  delta = delta or 1e-4
  return function(a, b)
           returnValue = 0
           for x = a, b, delta*math.signSafe(b-a) do -- if b == a, the changing of delta to 0 makes it run forever
             returnValue = returnValue + (f(x+delta)+f(x))*delta/2
           end
           return returnValue*math.signSafe(b-a)
         end
end
---]]
-- end p6_1

local public = { p6_1 = M.integral }

return public