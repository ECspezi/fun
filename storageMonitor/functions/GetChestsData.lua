function GetChestsData()
    
    local Storages = { peripheral.find("inventory") }

    local TotalVolume, TotalBusy = 0, 0

    for _, inventory in pairs(Storages) do
        TotalVolume = TotalVolume + inventory.size()
        for _, _ in pairs(inventory.list()) do TotalBusy = TotalBusy + 1 end
    end

    local Percent = math.ceil((TotalBusy / TotalVolume) * 100)

    return TotalVolume, TotalBusy, Percent

end

return GetChestsData