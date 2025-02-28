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

local inputLabel = main:addLabel()
    :setPosition(2, 2)
    :setText(input)

local function clearCalculator()
    input = "0"
    lastOperation = ""
    lastNumber = 0
    inputLabel:setText(input)
end

-- creating 1-9 numpad

local startX, startY = 2, 4
for i = 1, 9 do
    if i > 3 and i <= 6 then startY = 8 end
    if i > 6 then startY = 12 end
    local button = main:addButton("numberButton" .. i) -- <--- here
    
    button:setText(tostring(i))
        :setSize(5, 3)
        :setPosition(startX, startY)
        :onClick(function()
            button:setBackground(colors.white) -- this works because button initialised up there
            if input == "0" then input = tostring(i)
            else input = input .. tostring(i) end
            inputLabel:setText(input)
        end)
        :onRelease(function()
            button:setBackground(colors.gray)
        end)
    
    startX = startX + 6
    if startX > 14 then startX = 2 end
end

local button0 = main:addButton("numberButton0")
    
    button0:setText("0")
    :setSize(5, 3)
    :setPosition(8, 16)
    :setBackground(colors.gray)
    :onClick(function()
        button0:setBackground(colors.white)
        if input == "0" then
        else input = input .. "0" end
        inputLabel:setText(input)
    end)
    :onRelease(function()
        button0:setBackground(colors.gray)
    end)
    
local buttonC = main:addButton("ButtonC")
buttonC:setText("C")
    :setSize(5, 3)
    :setPosition(2, 16)
    :setBackground(colors.lightGray)
    :onClick(function()
        buttonC:setBackground(colors.white)
        clearCalculator()
    end)
    :onRelease(function()
        buttonC:setBackground(colors.lightGray)
    end)

local buttonEquals = main:addButton("ButtonEquals")
buttonEquals:setText("=")
        :setSize(5, 3)
        :setPosition(14, 16)
        :setBackground(colors.lightGray)
        :onClick(function()
            -- make logic for equals button
        end)
        :onRelease(function()
            buttonEquals:setBackground(colors.lightGray)
        end)

basalt.autoUpdate()