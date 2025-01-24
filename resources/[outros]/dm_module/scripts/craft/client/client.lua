---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Locations = {
    Tables = {},
    Storages = {},
    NearestTable = {},
    NearestStorage = {}
}

local Craft = {
    Open = nil
}

local DelayTimer = GetGameTimer()

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS LOCATIONS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Locations:SearchNextTable()
    CreateThread(function()
        while true do
            local pedCoords = GetEntityCoords(PlayerPedId())

            for i in pairs(self.NearestTable) do
                local Index,Coords = self.NearestTable[i].index,self.NearestTable[i].coords
                if not Index or not Coords then goto next_table end
                SLEEP_TIME = (#(Coords - pedCoords) <= 10.0) and 0 or 1000

                
                DrawText3D(Coords[1],Coords[2],Coords[3], "Pressione ~g~ E ~w~ para abrir a bancada.")
                if (#(Coords - pedCoords) <= 1.5) then
                    if IsControlJustPressed(0, 38) and (DelayTimer - GetGameTimer()) <= 0 then
                        DelayTimer = (GetGameTimer() + 5000)
                        Craft:OpenCraft(Index)
                    end
                end

                :: next_table ::
            end

            Wait( SLEEP_TIME or 1000 )
        end
    end)
end

function Locations:SearchNextStorage()
    CreateThread(function()
        while true do
            local pedCoords = GetEntityCoords(PlayerPedId())

            for i in pairs(self.NearestStorage) do
                local Index,Coords = self.NearestStorage[i].index,self.NearestStorage[i].coords
                if not Index or not Coords then goto next_table end
                SLEEP_TIME = (#(Coords - pedCoords) <= 5.0) and 0 or 1000

                DrawText3D(Coords[1],Coords[2],Coords[3], "[~b~ARMAZEM~w~] ~g~ E ~w~ para ver ~g~ G ~w~ para guardar.")
                if (#(Coords - pedCoords) <= 1.5) then

                    -- VER STORAGE
                    if IsControlJustPressed(0, 38) and (DelayTimer - GetGameTimer()) <= 0 then
                        DelayTimer = (GetGameTimer() + 5000)

                        vTunnel._storageList(Index)
                    end

                    -- STORE ITENS
                    if IsControlJustPressed(0, 47) and (DelayTimer - GetGameTimer()) <= 0 then
                        DelayTimer = (GetGameTimer() + 5000)

                        vTunnel._storageStore(Index)
                    end

                end

                :: next_table ::
            end

            Wait( SLEEP_TIME or 1000 )
        end
    end)
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS CRAFT
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Craft:OpenCraft(id)
    local Response = vTunnel.checkOpenCraft(id)
    if not Response then
        return
    end
    
    self.Open = id

    SetNuiFocus(true, true)
    SendNUIMessage({ "SHOW_NUI", "domcraft" })
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RegisterTunnel.BlockAnims(status, anim)
    ClearPedTasks(PlayerPedId())
    in_status = status

    if in_status then
        anim1 = anim[1]
        anim2 = anim[2]
        getCoords = GetEntityCoords(PlayerPedId())
        getHeading = GetEntityHeading(PlayerPedId())

        CreateThread(function()
            while in_status do
                local time = 1000
                
                if in_status then
                    if not IsEntityPlayingAnim(PlayerPedId(), anim1, anim2,3) then
                        SetEntityHeading(PlayerPedId(), getHeading)
                        SetEntityCoords(PlayerPedId(), getCoords.x, getCoords.y, getCoords.z - 0.7)
                        vRP.playAnim(false,{{anim[1], anim[2]}},true)
                    end
                end

                Citizen.Wait(time)
            end
        end)
    end

end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS CRAFT
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('requestCraft', function(data,cb)
    local Items,Storage = vTunnel.requestCraft(Craft.Open)
    if not Items or not Storage then return end

    cb({ items = Items, storage = Storage })
end)

RegisterNUICallback('startProduction', function(data,cb)
    cb(vTunnel.startProduction(Craft.Open, data.index, data.amount))
end)

RegisterNUICallback('closeCraft', function(data, cb)
    SendNUIMessage({'CLOSE_NUI'})
    cb({})
end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- THREADS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    -- GERANDO CACHE DAS BANCADAS
    for i in pairs(CraftConfig.Tables) do
        Locations.Tables[i] = CraftConfig.Tables[i].Config.location
    end

    -- GERANDO CACHE DOS ARMAZENS
    for i in pairs(CraftConfig.Storage) do
        Locations.Storages[i] = CraftConfig.Storage[i].Config.location
    end

    Locations:StartNearestTable()
    Locations:StartNearestStorage()
    Locations:SearchNextTable()
    Locations:SearchNextStorage()
end)

function Locations:StartNearestTable()
    CreateThread(function()
        while true do
            local SLEEP_TIME = 1000
            local pedCoords = GetEntityCoords(PlayerPedId())
    
            for i in pairs(Locations.Tables) do
                if #(Locations.Tables[i] - pedCoords) <= 10.0 then
                    self.NearestTable[i] = { index = i, coords = Locations.Tables[i] }
                elseif self.NearestTable[i] then
                    self.NearestTable[i] = nil
                end
            end
    
            Wait( SLEEP_TIME )
        end
    end)
end

function Locations:StartNearestStorage()
    CreateThread(function()
        while true do
            local SLEEP_TIME = 1000
            local pedCoords = GetEntityCoords(PlayerPedId())
    
            for i in pairs(Locations.Storages) do
                if #(Locations.Storages[i] - pedCoords) <= 10.0 then
                    self.NearestStorage[i] = { index = i, coords = Locations.Storages[i] }
                elseif self.NearestStorage[i] then
                    self.NearestStorage[i] = nil
                end
            end
            
            Wait( SLEEP_TIME )
        end
    end)
end

exports('GetSelectStorage', function(org)
    return vTunnel.storageItens(org)
end)