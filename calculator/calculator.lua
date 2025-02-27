local basalt = require("basalt")
local Front = require("front")

local main = basalt.createFrame()
    :setBackground(colors.black)

local inputLabel = main:addLabel()
    :setText("Input")
    :setFontSize(1)
    :setForeground(colors.white)
    :setPosition(2, 2)

local buttons = {Front(main)}

local function numberButtonOnClick(button)
    button:setBackground(colors.lightGray)
end

for key, value in ipairs(buttons) do
    basalt.debug(key, value)
    value:onClick(function() numberButtonOnClick(value) end)
end

basalt.autoUpdate()
