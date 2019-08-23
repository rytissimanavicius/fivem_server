function notify(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(true,false)
end

function giveWeapon(hash)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 500, false, false)
end

function infiniteAmmo(hash)
	SetPedInfiniteAmmo(GetPlayerPed(-1), true, GetHashKey(hash))
end

function giveComponent(weaponHash, componentHash)
	if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(weaponHash), false) then
		GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(weaponHash), GetHashKey(componentHash))
	end
end


