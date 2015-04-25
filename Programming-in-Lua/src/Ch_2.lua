local M = {}

-- p2.4 - How can you embed the following piece of XML as a string in Lua?
--        Show at least 2 different ways.
--        <![CDATA[
--          Hello world
--        ]]>
---[[
function M.p2_4(boolFlag)
  if boolFlag then 
    return "<![CDATA[\n  Hello world\n]]>"
  else 
    return [=[
<![CDATA[
  Hello world
]]>
    ]=]
  end
end
---]]
-- end p2_4

return M