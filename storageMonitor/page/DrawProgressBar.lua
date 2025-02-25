function DrawProgressBar(Background, SizeX, MonitorCenterY, Percent)

    local progressBarEmpty = window.create(Background, 2, MonitorCenterY, SizeX - 2, 1)
    progressBarEmpty.setBackgroundColour(colours.grey)
    progressBarEmpty.clear()

    local redPixels = math.floor((Percent / 100) * SizeX + 0.5)
    local progressBarFilled = window.create(Background, 2, MonitorCenterY, redPixels - 2, 1)
    progressBarFilled.setBackgroundColour(colours.red)
    progressBarFilled.clear()
    
end

return DrawProgressBar