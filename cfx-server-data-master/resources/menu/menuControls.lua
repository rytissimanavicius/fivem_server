Citizen.CreateThread(function()
	menuToggle = false
	whichMenu = 1
	elementSelected = 1
	while true do
		if IsControlJustReleased(1, 74) then
			if not menuToggle then
				menuToggle = true
				drawMenu()
				notification("~g~MENU ON.")
			else
				menuToggle = false
				drawMenu()
				notification("~r~MENU OFF.")
			end
		end
		if menuToggle then
			if IsControlJustReleased(1, 172) then
				changeSelection(-1)
			end
			if IsControlJustReleased(1, 173) then
				changeSelection(1)
			end
		end
		Citizen.Wait(0)
	end
end)