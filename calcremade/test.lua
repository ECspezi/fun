local basalt = require("basalt")
local monitorMain = peripheral.wrap("monitor_6")
local monitorCeil = peripheral.wrap("monitor_3")
local monitorRight = peripheral.wrap("monitor_11")

local allMonitors = { monitorMain, monitorCeil, monitorRight}
for key, value in pairs(allMonitors) do
    local frame = basalt.addMonitor()
    frame:setMonitor(value)
end


basalt.autoUpdate()