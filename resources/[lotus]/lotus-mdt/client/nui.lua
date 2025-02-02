mdt = {}
local Tunnel = module('vrp', 'lib/Tunnel')
local Proxy = module('vrp', 'lib/Proxy')
vRP = Proxy.getInterface('vRP')
Tunnel.bindInterface(GetCurrentResourceName(), mdt)
vSERVER = Tunnel.getInterface(GetCurrentResourceName())
visible = false
routes = {
    ['close'] = function(data)
        vSERVER.refreshMode()
        return mdt.visibility()
    end,
    ['pressCode'] = function(data)
        return print(json.encode(data))
    end,
    ['consult'] = function(data)
        return vSERVER.manageCachedData({action = data.type, data = data})
    end,
    ['requestAccept'] = function(data)
        return vSERVER.handleRequest(data, 'accept')
    end,
    ['requestRefuse'] = function(data)
        return vSERVER.handleRequest(data, 'refuse')
    end,
    ['report'] = function(data)
        return vSERVER.manageCachedData({action = 'add_fine', data = data})
    end,
    ['applyPunish'] = function(data)
        return vSERVER.manageCachedData({action = 'set_arrested', data = data})
    end,
    ['nameRegistered'] = function(data)
        local uData = vSERVER.getUserData(data.value)
        if (not uData) then
            return SendNUIMessage({action = 'updateInviteName',name = 'Player inexistente'})
        end
        return SendNUIMessage({action = 'updateInviteName',name = uData.name})
    end,
    ['confirmExonerate'] = function(data)
        return vSERVER.manageCachedData({ action = 'rem_employee', data = data })
    end,
    ['confirmInvite'] = function(data)
        return vSERVER.manageCachedData({action = 'add_employee', data = data})
    end,
    ['demote'] = function(data)
        return vSERVER.manageCachedData({action = 'demote', data = {}})
    end,
    ['addfine'] = function(data)
        return vSERVER.manageCachedData({action = 'add_fine', data = data})
    end,
}

registerRoutes = function()
    for k, v in pairs(routes) do
        RegisterNUICallback(k, function(data, cb)
            local res = v(data)
            if cb then
                cb(res)
            end
        end)
    end
end
mdt.visibility = function()
    visible = not visible
    if (visible) then
        local payload = vSERVER.manageCachedData({action = 'open'})
        print(json.encode(payload))
        TransitionToBlurred(0)
        SetNuiFocus(visible, visible)
        SendNUIMessage(payload)
    else
        TransitionFromBlurred(0)
        SetNuiFocus(visible, visible)
        SendNUIMessage({action = 'close'})
    end
end

CreateThread(registerRoutes)