

RegisterServerEvent('yatzzz:infinity:player:ready')
AddEventHandler('yatzzz:infinity:player:ready', function()
    local sexinthetube = GetEntityCoords(GetPlayerPed(source))
    
    TriggerClientEvent('yatzzz:infinity:player:coords', -1, sexinthetube)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(30000)
        local sexinthetube = GetEntityCoords(source)

        TriggerClientEvent('yatzzz:infinity:player:coords', -1, sexinthetube)
        TriggerEvent("yatzzz-core:updatecoords", sexinthetube.x, sexinthetube.y, sexinthetube.z)
        print("[^2yatzzz-infinity^0]^3 Sync Successful.^0")
    end
end)