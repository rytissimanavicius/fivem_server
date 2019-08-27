function drawMenu()
	Citizen.CreateThread(function()
		while true do
			if not menuToggle then
				break
			end      
			
			
			
			rectPos = menuRectPosition[whichMenu]
			textPos = menuTextPosition[whichMenu]
			for i = 1, selectionAmountInMenu[whichMenu], 1 do --todo: jump to correct table elements when menu changes
				rect(0.5, rectPos)
				rectPos = rectPos + 0.045
				if elementSelected == i then
					text(menuSelections[i], menuTextCenters[i], textPos, 0, 255, 255)
				else
					text(menuSelections[i], menuTextCenters[i], textPos, 255, 255, 255)
				end
				textPos = textPos + 0.045
			end
			
			
			
			Citizen.Wait(0)
		end
	end)
end