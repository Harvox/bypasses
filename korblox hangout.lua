for _, v in next, getgc(false) do 
if typeof(v) == 'function' and debug.info(v, "n"):find("Detect") then 
hookfunction(v, function(...) return coroutine.yield() end)
end
end
