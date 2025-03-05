local lastValue = -1

CreateThread(function()
    while true do
        Wait(1000)
        local newValue = GetProfileSetting(221)
        if newValue ~= lastValue then
            lastValue = newValue
            if newValue == 1 then
                SetRadarBigmapEnabled(true, false)
            else
                SetRadarBigmapEnabled(false, false)
            end
        end
    end
end)
