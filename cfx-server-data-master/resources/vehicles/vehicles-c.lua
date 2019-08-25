RegisterCommand("vehicle", function(source, args)
	i = 1
	while true do
		if id[i] == args[1] then
			spawn(args[1])
			notify("~g~Spawned " .. name[i] .. ".")
			break
		elseif id[i] == "stop" then
			notify("~y~Vehicle not found.")
			break
		end
		i = i + 1
	end
end)