function DrawBackground(Monitor, SizeX, SizeY)
    Background = window.create(Monitor, 1, 1, SizeX, SizeY)
    Background.setBackgroundColour(colours.white)
    Background.clear()
    return Background
end

return DrawBackground