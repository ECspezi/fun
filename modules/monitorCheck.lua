function monitorCheck()
    local monitor = peripheral.find("monitor")
    local sizeX, sizeY = monitor.getSize()
    local monitorCenterY = math.floor(sizeY / 2)
    print(monitor.getSize())
    return monitor, sizeX, sizeY, monitorCenterY
end

return monitorCheck