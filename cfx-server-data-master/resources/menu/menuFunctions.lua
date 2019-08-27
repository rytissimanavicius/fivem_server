function changeSelection(switch)
	checkSelection = elementSelected + switch
	if checkSelection == 0 then
		elementSelected = selectionAmountInMenu[whichMenu + 1]
	elseif checkSelection > selectionAmountInMenu[whichMenu + 1] then
		elementSelected = 1
	elseif checkSelection ~= 0 and checkSelection ~= selectionAmountInMenu[whichMenu + 1] + 1 then
		elementSelected = elementSelected + switch
	end
end

function changeMenu()
	whichMenu = elementSelected
	elementSelected = 1
end

function previousMenu()
	if whichMenu > 1 and elementSelected == selectionAmountInMenu[whichMenu + 1] then
		whichMenu = whichMenu - 1
		elementSelected = 1
	else
		functionActive = false
	end
end