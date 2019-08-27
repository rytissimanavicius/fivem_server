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