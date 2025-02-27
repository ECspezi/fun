local function buttonClick(button)
    local text = button:getText()
    local input = ""
    if text == "1" then
        input = input .. "1"
        button:setBackground(colors.white)
    elseif text == "2" then
        input = input .. "2"
        button:setBackground(colors.white)
    elseif text == "3" then
        input = input .. "3"
        button:setBackground(colors.white)
    elseif text == "4" then
        input = input .. "4"
        button:setBackground(colors.white)
    elseif text == "5" then
        input = input .. "5"
        button:setBackground(colors.white)
    elseif text == "6" then
        input = input .. "6"
        button:setBackground(colors.white)
    elseif text == "7" then
        input = input .. "7"
        button:setBackground(colors.white)
    elseif text == "8" then
        input = input .. "8"
        button:setBackground(colors.white)
    elseif text == "9" then
        input = input .. "9"
        button:setBackground(colors.white)
    elseif text == "0" then
        input = input .. "0"
        button:setBackground(colors.white)
    elseif text == "+" then
        input = input .. "+"
        button:setBackground(colors.white)
    elseif text == "-" then
        input = input .. "-"
        button:setBackground(colors.white)
    elseif text == "*" then
        input = input .. "*"
        button:setBackground(colors.white)
    elseif text == "/" then
        input = input .. "/"
        button:setBackground(colors.white)
    elseif text == "=" then
        button:setBackground(colors.white)
    elseif text == "C" then
        input = ""
        button:setBackground(colors.white)
    end
    return input
end

return buttonClick