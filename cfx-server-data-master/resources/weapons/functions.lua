function notify(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(true, false)
end

function giveWeapon(hash)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 500, false, false)
end

function removeWeapons()                                                          --remove ALL weapons
	RemoveAllPedWeapons(GetPlayerPed(-1), true)
end

function removeWeapon(hash)
	RemoveWeaponFromPed(GetPlayerPed(-1), "weapon_" .. hash)                      --remove ONE selected weapon
end

function addAmmo(hash, ammo)
	AddAmmoToPed(GetPlayerPed(-1), GetHashKey("weapon_" .. hash), ammo)
end

function infiniteAmmo(toggle, hash)
	SetPedInfiniteAmmo(GetPlayerPed(-1), toggle, "weapon_" .. hash)
end