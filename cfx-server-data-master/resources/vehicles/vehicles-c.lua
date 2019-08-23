vehicles = {"Tyrus", "Vacca", "stop"}

RegisterCommand("car", function(source, args)
	i = 1
	while true do
		if vehicles[i] == args[1] then
			spawnCar(args[1])
			notify("~g~Spawned " .. vehicles[i] .. ".")
			break
			--print(PlayerPedId(-1) .. " spawned " .. args[1])
		elseif vehicles[i] == "stop" then
			notify("~y~Vehicle not found.")
			break
		end
		i = i + 1
	end
end)