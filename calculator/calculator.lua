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
        if input ~= "" then
            if text == "C" then 
                input = ""
                firstNumber = 0
            elseif text == "+" then
                firstNumber = firstNumber + tonumber(input)
                input = ""
                operation = "plus"
                inputLabel:setText(firstNumber)
                inputLabel:setForeground(colours.lightGrey)
            elseif text == "-" then
                firstNumber = firstNumber + tonumber(input)
                input = ""
                operation = "minus"
                inputLabel:setText(firstNumber)
                inputLabel:setForeground(colours.lightGrey)
            elseif text == "*" then
                firstNumber = firstNumber + tonumber(input)
                input = ""
                operation = "multiply"
                inputLabel:setText(firstNumber)
                inputLabel:setForeground(colours.lightGrey)
            elseif text == "/" then
                firstNumber = firstNumber + tonumber(input)
                input = ""
                operation = "divide"
                inputLabel:setText(firstNumber)
                inputLabel:setForeground(colours.lightGrey)
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
            else
            input = input .. buttonClick(button)
            inputLabel:setText(input)
            end
        else input = input .. buttonClick(button)
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
