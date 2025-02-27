local basalt = require("basalt")
local Buttons = require("buttons")
local buttonClick = require("buttonClick")
local buttonRelease = require("buttonRelease")

local main = basalt.createFrame()
    :setBackground(colors.black)

local inputLabel = main:addLabel()
    :setText("Input")
    :setFontSize(1)
    :setForeground(colors.white)
    :setPosition(2, 2)

local buttons = Buttons(main)


local input = ""

for key, button in pairs(buttons) do
    button:onClick(function() 
        buttonClick(button) 
    end)
end

for key, button in pairs(buttons) do
    button:onRelease(function() 
        input = input + buttonRelease(button)
    end)
end

basalt.autoUpdate()
