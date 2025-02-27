function buttonRelease(button)
    local text = button:getText()
    if text == "1" then
        button:setBackground(colors.gray)
    elseif text == "2" then
        button:setBackground(colors.gray)
    elseif text == "3" then
        button:setBackground(colors.gray)
    elseif text == "4" then
        button:setBackground(colors.gray)
    elseif text == "5" then
        button:setBackground(colors.gray)
    elseif text == "6" then
        button:setBackground(colors.gray)
    elseif text == "7" then
        button:setBackground(colors.gray)
    elseif text == "8" then
        button:setBackground(colors.gray)
    elseif text == "9" then
        button:setBackground(colors.gray)
    elseif text == "0" then
        button:setBackground(colors.lightGray)
    elseif text == "+" then
        button:setBackground(colors.orange)
    elseif text == "-" then
        button:setBackground(colors.orange)
    elseif text == "*" then
        button:setBackground(colors.orange)
    elseif text == "/" then
        button:setBackground(colors.orange)
    elseif text == "=" then
        button:setBackground(colors.lightGray)
    elseif text == "C" then
        button:setBackground(colors.lightGray)
    end
end

return buttonRelease