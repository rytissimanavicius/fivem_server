RegisterCommand("weapon", function(source, args) --spawn selected weapon: /weapon <id>
    spawnWeapon(args[1])
end)

RegisterCommand("rweapons", function() --remove all weapons: /rweapons
	removeAllWeapons()
end)

RegisterCommand("rweapon", function(source, args) --remove selected weapon: /rweapon <id>
	removeWeapon(args[1])
end)

RegisterCommand("ammo", function(source, args) --give ammunition for selected weapon: /ammo <id> <amount>
	spawnAmmo(args[1], args[2])
end)

RegisterCommand("iammo", function() --enables infinite ammunition: /iammo
	giveInfiniteAmmo()
end)