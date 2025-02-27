local basalt = require("basalt")
local Buttons = require("buttons")

local main = basalt.createFrame()
    :setBackground(colors.black)

local inputLabel = main:addLabel()
    :setText("Input")
    :setFontSize(1)
    :setForeground(colors.white)
    :setPosition(2, 2)

local buttons = {Buttons(main)}

local function numberButtonOnClick(button)
    button:setBackground(colors.lightGray)
end

for key, value in pairs(buttons) do
    for key2, value2 in pairs(value) do
        print(key2, value2)
    end
    value:onClick(function() numberButtonOnClick(value) end)
end

basalt.autoUpdate()
