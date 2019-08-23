function msg(text)
	TriggerEvent("chatMessage", "[SERVER]", {255,0,0}, text)
end

function alert(msg)
	SetTextComponentFormat("STRING")
	AddTextComponentString(msg)
	DisplayHelpTextFromStringLabel(0,0,1,-1)
end

