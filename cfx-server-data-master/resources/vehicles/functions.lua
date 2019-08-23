function notify(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(true,false)
end

function spawnCar(car)
	local car = GetHashKey(car)
	RequestModel(car)
	while not HasModelLoaded(car) do
		RequestModel(car)
		Citizen.Wait(0)
	end
	local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
	local vehicle = CreateVehicle(car, x, y + 5, z + 1, 0.0, true, false)
	SetEntityAsMissionEntity(vehicle, true, true)
end