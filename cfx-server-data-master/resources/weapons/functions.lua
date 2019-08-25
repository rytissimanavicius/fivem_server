function notification(message)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(true, false)
end

function spawnWeapon(weaponId) 
	local i = 1
	if HasPedGotWeapon(GetPlayerPed(), GetHashKey("weapon_" .. weaponId), false) then
		notification("~y~Already in inventory.")
	else 
		Citizen.CreateThread(function()
			while true do
				if idList[i] == weaponId then
					GiveWeaponToPed(GetPlayerPed(), GetHashKey("weapon_" .. weaponId), 999, false, false)
					notification("~g~Spawned " .. nameList[i] .. ".")
					break
				elseif idList[i] == "stop" then
					notification("~y~Weapon not found.")
					break
				end
				i = i + 1
				Citizen.Wait(0)
			end
		end)
	end
end

function removeAllWeapons()
	RemoveAllPedWeapons(GetPlayerPed(), true)
	notification("~r~All weapons removed.")
end

function removeWeapon(weaponId)
	if HasPedGotWeapon(GetPlayerPed(), GetHashKey("weapon_" .. weaponId), false) then
		RemoveWeaponFromPed(GetPlayerPed(), "weapon_" .. weaponId)
		notification("~r~Weapon removed.")
	else
		notification("~y~Not in inventory.")
	end               
end

function spawnAmmo(weaponId, ammoAmount)
	local ammoAmount = tonumber(ammoAmount)
	if ammoAmount == nil or ammoAmount <= 0 then
		notification("~y~Incorrect amount.")
	else
		if HasPedGotWeapon(GetPlayerPed(), GetHashKey("weapon_" .. weaponId), false) then
			AddAmmoToPed(GetPlayerPed(), GetHashKey("weapon_" .. weaponId), ammoAmount)
			notification("~g~Ammunition added.")
		else
			notification("~y~Weapon not found.")
		end
	end
end

function giveInfiniteAmmo()
	local i = 1
	Citizen.CreateThread(function()
		while true do
			if idList[i] == "stop" then
				break
			elseif HasPedGotWeapon(GetPlayerPed(), GetHashKey("weapon_" .. idList[i]), false) then
				SetPedInfiniteAmmo(GetPlayerPed(), true, GetHashKey("weapon_" .. idList[i]))
			end
			i = i + 1
			Citizen.Wait(0)
		end
	end)
	notification("~g~Infinite ammunition enabled.")
end