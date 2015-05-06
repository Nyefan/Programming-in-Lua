local Ch_1 = require "Ch_1"
local Ch_2 = require "Ch_2"
local Ch_3 = require "Ch_3"
local Ch_4 = require "Ch_4"
local Ch_5 = require "Ch_5"

local function main()
  five = {5}
  arr = {'one', 'two', 3, '4', five}
  print(Ch_5.p5_3(table.unpack(arr)))
  
end
main()
