function notification(message)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(true, false)
end

function rect(x, y)
	DrawRect(x, y, 0.10, 0.04, 0, 0, 0, 150)
end

function text(text, x, y, r, g, b)
	SetTextFont(0) 
	SetTextScale(0.4, 0.4) 
	SetTextColour(r, g, b, 255)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end

function drawMenu()
	Citizen.CreateThread(function()
		while true do
			if not menuToggle then
				break
			end
			if whichMenu == 1 then
				rect(0.5, 0.41)
				rect(0.5, 0.455)
				rect(0.5, 0.5)
				rect(0.5, 0.545)
				rect(0.5, 0.59)
				if elementSelected == 1 then
					text("PLAYER", 0.476, 0.396, 0, 255, 255)
				else
					text("PLAYER", 0.476, 0.396, 255, 255, 255)
				end
				if elementSelected == 2 then
					text("WEAPONS", 0.469, 0.441, 0, 255, 255)
				else
					text("WEAPONS", 0.469, 0.441, 255, 255, 255)
				end
				if elementSelected == 3 then
					text("VEHICLES", 0.4705, 0.486, 0, 255, 255)
				else
					text("VEHICLES", 0.4705, 0.486, 255, 255, 255)
				end
				if elementSelected == 4 then
					text("WORLD", 0.4775, 0.531, 0, 255, 255)
				else
					text("WORLD", 0.4775, 0.531, 255, 255, 255)
				end
				if elementSelected == 5 then
					text("OTHER", 0.479, 0.576, 0, 255, 255)
				else
					text("OTHER", 0.479, 0.576, 255, 255, 255)
				end
			end
			Citizen.Wait(0)
		end
	end)
end

function changeSelection(switch)
	local checkSelection = elementSelected + switch
	if whichMenu == 1 then
		if checkSelection ~= 0 and checkSelection ~= 6 then
			elementSelected = elementSelected + switch
		end
	end
end

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