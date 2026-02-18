local ESX = exports["es_extended"]:getSharedObject()

-- Thread zum Laden der Blips
Citizen.CreateThread(function()
    -- Kurze Verzögerung, damit die Config sicher geladen ist
    Citizen.Wait(500)

    for _, info in pairs(Config.Blips) do
        local blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)

        SetBlipSprite(blip, info.sprite)
        SetBlipScale(blip, info.scale)
        SetBlipColour(blip, info.color)
        SetBlipDisplay(blip, 4)

        -- ShortRange true = Sichtbar auf Weltkarte, verschwindet auf Minimap bei Distanz
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.label)
        EndTextCommandSetBlipName(blip)
    end
    
    print("^2[salkin_blips] " .. #Config.Blips .. " Blips erfolgreich geladen.^7")
end)