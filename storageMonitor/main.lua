package.path = package.path .. ";./functions/?.lua"
package.path = package.path .. ";./page/?.lua"

local GetMonitors = require("GetMonitors")
local GetChestsData = require("GetChestsData")
local DrawBackground = require("DrawBackground")
local DrawProgressBar = require("DrawProgressBar")
local DrawPercentage = require("DrawPercentage")

while true do

    -- getting all data
    Monitor, SizeX, SizeY, MonitorCenterY = GetMonitors()
    TotalVolume, TotalBusy, Percent = GetChestsData()

    -- drawing on monitor
    Background = DrawBackground(Monitor, SizeX, SizeY)
    -- print(TotalVolume, TotalBusy)
    DrawProgressBar(Background, SizeX, MonitorCenterY, Percent)
    DrawPercentage(Background, SizeX, MonitorCenterY, Percent)

    sleep(1)
end