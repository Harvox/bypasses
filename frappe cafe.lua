--[[ 
bruh theyre using dev forum env leak detect
]]
if game.PlaceId ~= 5580097107 then return end
function lol() end

local Old; Old = hookfunction(getrenv().getfenv, function(...)
if tostring(getcallingscript()) == "Controller" then 
return {}
end
return Old(...)
end)

for i,v in next, getconnections(game:GetService("ScriptContext").Error) do 
if v.Function then 
hookfunction(v.Function, lol)
print(v)
end
end

for i,v in next, getconnections(game:GetService("LogService").MessageOut) do 
if v.Function then 
hookfunction(v.Function, lol)
print(v)
end
end
