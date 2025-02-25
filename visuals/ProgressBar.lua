package.path = package.path .. ";../modules/?.lua"

local monitorCheck = require("modules.monitorCheck")
local bgColor = require("modules.bgColor")
local GetChestsData = require("modules.getChestsData")
local drawBackground = require("visuals.drawBackground")

function ProgressBar()
    
    local percent = GetChestsData()
    local monitor, sizeX, sizeY, monitorCenterY = monitorCheck()
    local background = drawBackground()
    -- gray empty progressbar
    local progressBarEmpty = window.create(background, 2, monitorCenterY, sizeX - 2, 1)
    bgColor(progressBarEmpty, "grey")

    -- red filled progressbar

    local redPixels = math.floor((percent / 100) * sizeX + 0.5)
    local progressBarFilled = window.create(background, 2, monitorCenterY, redPixels - 2, 1)
    bgColor(progressBarFilled, "red")

end

return ProgressBar