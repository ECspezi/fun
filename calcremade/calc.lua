local basalt = require("basalt")

basalt.setTheme({
    BaseFrameBG = colors.black,
    ButtonBG = colors.gray,
    ButtonText = colors.white,
    LabelText = colors.white
})

local main = basalt.createFrame()

local input = "0"
local lastOperation = ""
local lastNumber = 0
local lastResult = nil

local inputLabel = main:addLabel()
    :setPosition(2, 2)
    :setText(input)

local function clearCalculator()
    input = "0"
    lastOperation = ""
    lastNumber = 0
    inputLabel:setText(input)
    lastResult = nil
end

function checkLastResult()
    if lastResult ~= nil then 
        input = lastResult
        lastResult = nil
    end
end

local function calculate() -- calculates final results

    if lastResult then
        lastNumber = lastResult
    end

    if lastOperation == "+" then
        lastResult = lastNumber + tonumber(input)
    elseif lastOperation == "-" then
        lastResult = lastNumber - tonumber(input)
    elseif lastOperation == "*" then
        lastResult = lastNumber * tonumber(input)
    elseif lastOperation == "/" then
        lastResult = lastNumber / tonumber(input)
    end
    inputLabel:setText(tostring(lastResult))
    
end

-- creating 1-9 numpad

local startX, startY = 2, 12
for i = 1, 9 do
    if i > 3 and i <= 6 then startY = 8 end
    if i > 6 then startY = 4 end
    local button = main:addButton() -- <--- here
    
    button:setText(tostring(i))
        :setSize(5, 3)
        :setPosition(startX, startY)
        :onClick(function()
            checkLastResult()
            button:setBackground(colors.white) -- this works because button initialised up there and i call it again in next string (for some reason its only way it worked)
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

-- creates operators buttons and actions

local operatorsStartY = 4
local operators = {"+", "-", "*", "/"}
for i, operator in pairs(operators) do 
    local button = main:addButton()
    
    button:setText(operator)
        :setSize(5, 3)
        :setPosition(20, operatorsStartY)
        :setBackground(colors.orange)
        :onClick(function()
            
            if lastNumber ~= 0 then -- if lastNumber is not 0, then it will replace lastNumber with the result of the last operation
                lastNumber = calculate()
            end
            if lastResult then
                input = lastResult
                lastResult = nil
            end

            button:setBackground(colors.white)
            lastOperation = operator
            lastNumber = tonumber(input)
            
            input = "0"
            inputLabel:setText(tostring(lastNumber))
        end)
        :onRelease(function()
            button:setBackground(colors.orange)
        end)
    operatorsStartY = operatorsStartY + 4
end

local button0 = main:addButton() -- button zero
    
    button0:setText("0")
    :setSize(5, 3)
    :setPosition(8, 16)
    :setBackground(colors.gray)
    :onClick(function()
        checkLastResult()
        button0:setBackground(colors.white)
        if input == "0" then
        else input = input .. "0" end
        inputLabel:setText(input)
    end)
    :onRelease(function()
        button0:setBackground(colors.gray)
    end)
    
local buttonC = main:addButton() -- button erase
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

local buttonEquals = main:addButton() -- button equals
buttonEquals:setText("=")
        :setSize(5, 3)
        :setPosition(14, 16)
        :setBackground(colors.lightGray)
        :onClick(function()
            buttonEquals:setBackground(colors.white)
            calculate()
        end)
        :onRelease(function()
            buttonEquals:setBackground(colors.lightGray)
        end)

basalt.autoUpdate()