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

local firstNumber = 0
local operation = ""

for key, button in pairs(buttons) do
    button:onClick(function()
        buttonClick(button)
        local text = button:getText()
        if text == "C" then 
            input = ""
        elseif text == "+" then
            firstNumber = firstNumber + tonumber(input)
            input = ""
            operation = "plus"
        elseif text == "-" then
            firstNumber = firstNumber + tonumber(input)
            input = ""
            operation = "minus"
        elseif text == "*" then
            firstNumber = firstNumber + tonumber(input)
            input = ""
            operation = "multiply"
        elseif text == "*" then
            firstNumber = firstNumber + tonumber(input)
            input = ""
            operation = "divide"
        elseif text == "=" then
            if operation == "plus" then
                Result = tonumber(input) + firstNumber
                firstNumber = 0
                input = tostring(Result)
            elseif operation == "minus" then
                Result = firstNumber - tonumber(input)
                firstNumber = 0
                input = tostring(Result)
            elseif operation == "multiply" then
                Result = firstNumber * tonumber(input)
                firstNumber = 0
                input = tostring(Result)
            elseif operation == "divide" then
                Result = firstNumber / tonumber(input)
                firstNumber = 0
                input = tostring(Result)
            end
        input = input .. buttonClick(button)
        end
        inputLabel:setText(input)
    end)
end

for key, button in pairs(buttons) do
    button:onRelease(function() 
        buttonRelease(button)
    end)
end

basalt.autoUpdate()
