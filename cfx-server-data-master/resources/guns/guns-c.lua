RegisterCommand("clear_weapons", function()
	RemoveAllPedWeapons(GetPlayerPed(-1), true)
	notify("~y~All weapons removed.")
end)

Citizen.CreateThread(function()
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
end)