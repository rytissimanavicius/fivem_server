RegisterCommand("weapon", function(source, args)
    local i = 1
	if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_" .. args[1]), false) then
		notify("~y~Already in inventory.")
	else 
		Citizen.CreateThread(function()
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
				Citizen.Wait(0)
			end
		end)
	end
end)

RegisterCommand("rweapons", function()
	removeWeapons()
	notify("~y~All weapons removed.")
end)

RegisterCommand("rweapon", function(source, args)
	if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("weapon_" .. args[1]), false) then
		removeWeapon(args[1])
		notify("~r~Weapon removed.")
	else
		notify("~y~Not in inventory.")
	end
end)

toggle = false
RegisterCommand("ammo", function(source, args)
	if args[2] == "infinite" then
		if toggle == false then
			toggle = true
			infiniteAmmo(toggle, args[1])
			notify("~g~Infinite ammo added.")
		elseif toggle == true then
			toggle = false
			infiniteAmmo(toggle, args[1])
			notify("~r~Infinite ammo removed.")
		end
	else
		ammoAmount = tonumber(args[2])
		if ammoAmount == nil or ammoAmount <= 0 then
			notify("~y~Incorrect amount.")
		else
			if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("weapon_" .. args[1]), false) then
				addAmmo(args[1], ammoAmount)
				notify("~g~Ammunition added.")
			else
				notify("~y~Weapon not found.")
			end
		end
	end
end)