local basalt = require("basalt")
local Front = require("front")

local buttons = {Front()}

local function numberButtonOnClick(button)
    button:setBackground(colors.lightGray)
end

for _, button in ipairs(buttons) do
    button:onClick(function() numberButtonOnClick(button) end)
end

basalt.autoUpdate()
