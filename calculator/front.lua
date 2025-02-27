local basalt = require("basalt")

local main = basalt.createFrame()
    :setBackground(colors.black)

local button1 = main:addButton()
    :setText("1")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(2, 8)

local button2 = main:addButton()
    :setText("2")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(8, 8)

local button3 = main:addButton()
    :setText("3")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(14, 8)

local button4 = main:addButton()
    :setText("4")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(2, 12)

local button5 = main:addButton()
    :setText("5")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(8, 12)

local button6 = main:addButton()
    :setText("6")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(14, 12)

local button7 = main:addButton()
    :setText("7")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(2, 16)

local button8 = main:addButton()
    :setText("8")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(8, 16)

local button9 = main:addButton()
    :setText("9")
    :setSize(5, 3)
    :setBackground(colors.gray)
    :setForeground(colors.white)
    :setPosition(14, 16)

local inputLabel = main:addLabel()
    :setText("Input")
    :setFontSize(1)
    :setForeground(colors.white)
    :setPosition(2, 2)

basalt.autoUpdate()