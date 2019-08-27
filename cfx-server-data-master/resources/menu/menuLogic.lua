function changeSelection(switch)
	checkSelection = elementSelected + switch
	if checkSelection ~= 0 and checkSelection ~= selectionAmountInMenu[whichMenu + 1] + 1 then
		elementSelected = elementSelected + switch
	end
end

function changeMenu()
	whichMenu = elementSelected
	elementSelected = 1
end

