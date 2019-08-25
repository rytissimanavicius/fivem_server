RegisterCommand("weapon", function(source, args)
    i = 1
	if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_" .. args[1]), false) then
		notify("~y~Already in inventory.")
	else 
		while true do
			if id[i] == args[1] then
				giveWeapon("weapon_" .. id[i])
				notify("~g~Spawned " .. name[i] .. ".")
				break
			elseif id[i] == "stop" then
				notify("~y~Weapon not found.")
				break
			end
			i = i + 1
		end
	end
end)

RegisterCommand("rweapons", function()
	removeWeapons()
	notify("~y~All weapons removed.")
end)

RegisterCommand("rweapon", function(source, args)
	if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_" .. args[1]), false) then
		removeWeapon(args[1])
		notify("~r~Weapon removed.")
	else
		notify("~y~Not in inventory.")
	end
end)

--[[Citizen.CreateThread(function()
	local h_key = 74
	while true do
		Citizen.Wait(1)
		if IsControlJustReleased(1, h_key) then
			giveWeapon("weapon_carbinerifle")
				giveComponent("weapon_carbinerifle", "COMPONENT_CARBINERIFLE_CLIP_03")
				giveComponent("weapon_carbinerifle", "COMPONENT_AT_AR_SUPP")
			infiniteAmmo("weapon_carbinerifle")
		end
	end
end)]]--