local user_id
RegisterNetEvent('openDiscordNui', function(plyId)
    user_id = plyId

    SetNuiFocus(true, true)
    SendNUIMessage({ action = "login" })
end)


RegisterNUICallback('requestId', function(data,cb)
    cb({ user_id = user_id })
end)

RegisterNUICallback('checkWhitelist', function(data,cb)
    cb(vTunnel.requestAllowed())
end)

RegisterNUICallback('closeLogin', function(data,cb)
    SetNuiFocus(false, false)
end)

RegisterCommand('mirtineaprendiz', function(source,args)
    user_id = 2
    SetNuiFocus(true, true)
    SendNUIMessage({ action = "login" })
end)


-- Citizen.CreateThread(function()
--     Wait(2000)
--     TriggerEvent('openDiscordNui', 26)
-- end)