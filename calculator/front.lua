local basalt = require("basalt")

local main = basalt.createFrame()
    :setBackground(colors.black)

local button1 = main:addButton()
    :setText("1")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setPosition(2, 6)

local button2 = main:addButton()
    :setText("1")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setPosition(7, 6)

local button3 = main:addButton()
    :setText("1")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setPosition(12, 6)