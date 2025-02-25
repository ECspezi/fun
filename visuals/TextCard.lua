package.path = package.path .. ";../modules/?.lua"

local monitorCheck = require("modules.monitorCheck")
local bgColor = require("modules.bgColor")
local GetChestsData = require("modules.getChestsData")
local drawBackground = require("drawBackground")

function TextCard()
    
    local totalSize, totalBusy = GetChestsData()
    local background = drawBackground()
    local monitor, sizeX, sizeY, monitorCenterY = monitorCheck()

    local iTextPosX1 = 2
    local infoText1 = window.create(background, iTextPosX1, monitorCenterY + 2, math.floor((sizeX / 2) - 2), 3)
    bgColor(infoText1, "lightGrey")

    local itX1, itY1 = infoText1.getSize()
    local textInInfoText1 = window.create(infoText1, 2, 2, itX1 - 2, itY1 - 2)

    bgColor(textInInfoText1, "lightGrey")
    textInInfoText1.setTextColour(colours.black)
    textInInfoText1.write("Volume: " .. totalSize)

    local iTextPosX2 = iTextPosX1 + math.floor((sizeX / 2) - 2) + 2
    local infoText2 = window.create(background, iTextPosX2, monitorCenterY + 2, math.floor((sizeX / 2) - 2), 3)
    bgColor(infoText2, "lightGrey")

    local itX2, itY2 = infoText2.getSize()
    local textInInfoText2 = window.create(infoText2, 2, 2, itX2 - 2, itY2 - 2)

    bgColor(textInInfoText2, "lightGrey")
    textInInfoText2.setTextColour(colours.black)
    textInInfoText2.write("Busy: " .. totalBusy)

end

return TextCard