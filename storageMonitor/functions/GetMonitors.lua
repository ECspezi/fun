function GetMonitors()

    Monitor = peripheral.find("monitor")
    if not Monitor then
        print("Error: monitor not found")
    else
    SizeX, SizeY = Monitor.getSize()
    MonitorCenterY = math.ceil(SizeY / 2)
    end
    return Monitor, SizeX, SizeY, MonitorCenterY
    -- print(SizeX, SizeY)
end

return GetMonitors