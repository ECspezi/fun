function GetChestsData()
    local allChestsConnected = {}
    peripheral.find("inventory", function(name, wrapped) allChestsConnected[name] = wrapped end)

    local totalSize, totalBusy = 0, 0

    for name, chest in pairs(allChestsConnected) do
        totalSize = totalSize + chest.size()
        for _, _ in pairs(chest.list()) do totalBusy = totalBusy + 1 end
    end

    -- doint percentage math magic
    local percent = math.ceil((totalBusy / totalSize) * 100) 
    return percent, totalSize, totalBusy
end

return GetChestsData