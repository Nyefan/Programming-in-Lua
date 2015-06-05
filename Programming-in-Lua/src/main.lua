local Ch_1 = require "Ch_1"
local Ch_2 = require "Ch_2"
local Ch_3 = require "Ch_3"
local Ch_4 = require "Ch_4"
local Ch_5 = require "Ch_5"
local Ch_6 = require "Ch_6"

local function main()
  s = function(x) return math.sin(x) end
  c0 = Ch_6.p6_1(s)
  c = function(b) return -1*c0(0,b)+1 end
  
  print(c(-6.28))
  print(c(-4.71))
  print(c(-3.14))
  print(c(-1.57))
  print(c(0))
  print(c(1.57))
  print(c(3.14))
  print(c(4.71))
  print(c(6.28))
  
end
main()
