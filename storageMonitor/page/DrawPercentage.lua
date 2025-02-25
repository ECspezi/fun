function DrawPercentage(Background, SizeX, MonitorCenterY, Percent)

    local progressText = window.create(Background, 2, MonitorCenterY - 1, SizeX - 2, 1)
    progressText.setBackgroundColour(colours.white)
    progressText.setTextColour(colours.black)
    progressText.clear()
    if Percent ~= Percent then progressText.write("No chests found")
    else progressText.write("Filled: " .. Percent .. "%") end
    

end

return DrawPercentage