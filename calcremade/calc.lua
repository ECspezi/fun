local basalt = require("basalt")

basalt.setTheme({
    BaseFrameBG = colors.black,
    ButtonBG = colors.gray,
    ButtonText = colors.white,
    LabelText = colors.white
})

local main = basalt.createFrame()

local input = ""
local lastOperation = ""
local lastNumber = 0

local function clearCalculator()
    input = ""
    lastOperation = ""
    lastNumber = 0
end

local startX, startY = 2, 8
for i = 1, 9 do
    local startX, startY = 2, 8
    if i >= 3 and i < 6 then startY = 12 end
    if i >= 6 then startY = 16 end
    main:addButton("numberButton" .. i)
        :setText(tostring(i))
        :setSize(5, 3)
        :setPosition(startX, startY)
        :setText(tostring(i))
        :onClick(function()
            basalt.debug("Button " .. i .. " clicked")
        end)
    startX = startX + 5
    if startX > 14 then startX = 2 end
end

basalt.autoUpdate()