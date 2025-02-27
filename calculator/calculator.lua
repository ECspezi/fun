local basalt = require("basalt")
local Buttons = require("buttons")

local main = basalt.createFrame()
    :setBackground(colors.black)

local inputLabel = main:addLabel()
    :setText("Input")
    :setFontSize(1)
    :setForeground(colors.white)
    :setPosition(2, 2)

local buttons = Buttons(main)

local input = ""

local function buttonClick(button)
    local text = button:getText()
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
        -- Add logic for equals button
        button:setBackground(colors.white)
    elseif text == "AC" then
        input = ""
        button:setBackground(colors.white)
    end
end

local function buttonRelease(button)
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
    elseif text == "AC" then
        button:setBackground(colors.lightGray)
    end
end

for key, button in pairs(buttons) do
    button:onClick(function() 
        buttonClick(button) 
    end)
end

for key, button in pairs(buttons) do
    button:onRelease(function() 
        buttonRelease(button) 
    end)
end

basalt.autoUpdate()
