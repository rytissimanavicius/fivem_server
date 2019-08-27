function drawMenu()
	Citizen.CreateThread(function()
		while true do
			if not menuToggle then
				break
			end  
			chooseMenu = 0
			for i = 1, whichMenu, 1 do
				chooseMenu = chooseMenu + selectionAmountInMenu[i]
			end
			local rectPos = menuRectPosition[whichMenu + 1]
			local textPos = menuTextPosition[whichMenu + 1]
			for i = 1, selectionAmountInMenu[whichMenu + 1], 1 do
				rect(0.5, rectPos)
				rectPos = rectPos + 0.05
				if elementSelected == i then
					text(menuSelections[i + chooseMenu], 0.5, textPos, 0, 255, 255)
				else
					text(menuSelections[i + chooseMenu], 0.5, textPos, 255, 255, 255)
				end
				textPos = textPos + 0.05
			end
			Citizen.Wait(0)
		end
	end)
end