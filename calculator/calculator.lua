local basalt = require("basalt")
local Buttons = require("buttons")
local buttonClick = require("buttonClick")
local buttonRelease = require("buttonRelease")

local main = basalt.createFrame()
    :setBackground(colors.black)

local input = ""
local inputLabel = main:addLabel()
    :setText(input)
    :setFontSize(1)
    :setForeground(colors.white)
    :setPosition(2, 2)

local buttons = Buttons(main)

for key, button in pairs(buttons) do
    button:onClick(function()
        buttonClick(button)
        if button:getText() == "C" then 
            input = ""
            inputLabel:setText(input)
        else
        input = input .. buttonClick(button)
        inputLabel:setText(input)
        end
    end)
end

for key, button in pairs(buttons) do
    button:onRelease(function() 
        buttonRelease(button)
    end)
end

basalt.autoUpdate()
