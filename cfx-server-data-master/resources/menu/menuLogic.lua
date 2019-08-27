function changeSelection(switch)
	local checkSelection = elementSelected + switch
	if whichMenu == 1 then
		if checkSelection ~= 0 and checkSelection ~= 6 then --todo: automate this functions
			elementSelected = elementSelected + switch
		end
	end
end

function changeMenu()

end

