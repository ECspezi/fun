package.path = package.path .. ";../modules/?.lua"

local bgColor = require("modules.bgColor")
local monitorCheck = require("modules.monitorCheck")

function drawBackground()
    local monitor, sizeX, sizeY, monitorCenterY = monitorCheck()
    local background = window.create(monitor, 1, 1, sizeX, sizeY)
    bgColor(background, "white")

    return background
    
end

return drawBackground