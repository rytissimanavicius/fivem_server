RegisterCommand("suicide", function()
	SetEntityHealth(PlayerPedId(), 0)
	notify("~r~You died.")
end)