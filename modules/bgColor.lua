function bgColor(window, color)
    window.clear()

    -- Construct the dynamic access to colours
    local colorValue = _G["colours"][color] -- Accessing the colours global table safely

    if colorValue then
        window.setBackgroundColour(colorValue)
    else
        print("Error: Invalid color name '" .. tostring(color) .. "'")
        return
    end

    window.clear()
end

return bgColor