--[[ 
bruh theyre using dev forum env leak detect
]]

local Old; Old = hookfunction(getrenv().getfenv, function(...)
if tostring(getcallingscript()) == "Controller" then 
return {}
end
return Old(...)
end)
