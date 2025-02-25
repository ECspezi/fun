package.path = package.path .. ";../modules/?.lua"

local monitorCheck = require("modules.monitorCheck")
local bgColor = require("modules.bgColor")
local GetChestsData = require("modules.getChestsData")
local drawBackground = require("modules.drawBackground")

function Title()

    local background = drawBackground()
    local percent = GetChestsData()
    local monitor, sizeX, sizeY, monitorCenterY = monitorCheck()

    local progressText = window.create(background, 2, monitorCenterY - 1, sizeX - 2, 1)
    bgColor(progressText, "white")
    progressText.setTextColour(colours.black)
    progressText.write("Filled: " .. percent .. "%")
end

return Title