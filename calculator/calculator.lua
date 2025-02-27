local basalt = require("basalt")

local main = basalt.createFrame()

local button1 = main:addButton()
    :setText("1")
    :setSize(9, 3)
    :setBackground(colors.white)
    :setPosition(2, 6)
    
local buttonErase = main:addButton()
    :setText("Erase")
    :setSize(9, 3)
    :setBackground(colors.gray)
    :setPosition(42, 6)

function release()
    basalt.debug("Release")
    button1:setBackground(colors.white)
end

button1:onRelease(release)

local inputFrame = main:addFrame()
   :setSize (49, 3)
   :setPosition (2, 2) -- 2321231 fasd
   :setBackground(colors.black)

local input = ""

local inputText = inputFrame:addLabel()
    :setText("Input, please")
    :setFontSize(1)
    :setForeground(colors.gray)
    :setBackground(colors.black)
    :setPosition(2, 2)
    
function click(self, button, x, y)
    basalt.debug("click")
    input = input .. "1"
    inputText:setText(input)
    inputText:setForeground(colors.white)
    buttonErase:setBackground(colors.white)
    button1:setBackground(colors.gray)
end

function erase()
    basalt.debug("erase click")
    input = ""
    inputText:setText("Input, please")
    inputText:setForeground(colors.gray)
    buttonErase:setBackground(colors.gray)
end

button1:onClick(click)
buttonErase:onClick(erase)
    
basalt.autoUpdate()
