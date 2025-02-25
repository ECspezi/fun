local drawBackground = require("visuals.drawBackground")
local ProgressBar = require("visuals.ProgressBar")
local Title = require("visuals.TextCard")
local TextCard = require("visuals.TextCard")

while true do
    
    drawBackground()
    ProgressBar()
    Title()
    TextCard()


    sleep(1)

end