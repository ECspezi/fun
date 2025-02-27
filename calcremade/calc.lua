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

local inputLabel = main:addLabel()
    :setPosition(2, 2)
    :setText(input)

local startX, startY = 2, 4
for i = 1, 9 do
    if i > 3 and i <= 6 then startY = 8 end
    if i > 6 then startY = 12 end
    local button = main:addButton("numberButton" .. i)
    
    button:setText(tostring(i))
        :setSize(5, 3)
        :setPosition(startX, startY)
        :onClick(function() 
            button:setBackground(colors.white)
            input = input .. tostring(i)
            inputLabel:setText(input)
        end)
        :onRelease(function()
            button:setBackground(colors.gray)
        end)
    
    startX = startX + 6
    if startX > 14 then startX = 2 end
end

basalt.autoUpdate()