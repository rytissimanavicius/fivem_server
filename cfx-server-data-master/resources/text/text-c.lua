local colour = {
	r = 247,
	b = 223,
	g = 88,
	a = 255
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		SetTextFont(1) 
		SetTextScale(0.9, 0.9) 
		SetTextColour(colour.r, colour.b, colour.g, colour.a)
		SetTextEntry("STRING")
		AddTextComponentString("I'm gay.")
		DrawText(0.17, 0.922)
		
		--DrawRect(150, 100, 3.2, 0.05, 66, 134, 244, 50)
	end
end)