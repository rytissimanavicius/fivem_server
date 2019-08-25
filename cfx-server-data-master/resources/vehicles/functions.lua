function notify(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(true,false)
end

function spawn(veh)
	local veh = GetHashKey(veh)
	RequestModel(veh)
	while not HasModelLoaded(veh) do
		RequestModel(veh)
		Citizen.Wait(0)
	end
	local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
	local vehicle = CreateVehicle(veh, x + 3, y + 3, z + 1, 0.0, true, false)
	SetEntityAsMissionEntity(vehicle, true, true)
end