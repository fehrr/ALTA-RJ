-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())
vSKIN = Tunnel.getInterface("vrp_roupas")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
cO = {}
Tunnel.bindInterface(GetCurrentResourceName(),cO)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIÁVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("saveClothes","INSERT IGNORE INTO clothes(name,permiss,service,custom,sexo) VALUES(@name,@permiss,@service,@custom,@sexo)")
vRP._prepare("updateClothes","UPDATE clothes SET custom = @custom WHERE name = @name AND permiss = @permiss")
vRP._prepare("deleteClothes","DELETE FROM clothes WHERE name = @name")
vRP._prepare("selectClothesT","SELECT * FROM clothes WHERE service = @service AND sexo = @sexo")
vRP._prepare("selectClothesW","SELECT * FROM clothes WHERE name = @name AND sexo = @sexo")
vRP._prepare("selectClothes","SELECT * FROM clothes WHERE name = @name AND permiss = @permiss")

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEFAULTCOMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
local maxServices = {
    ["POLICIA"] = {50},
    ["HOSPITAL"] = {50},
    ["POLICIACIVIL"] = {50},
    ["MECANICA"] = {50},
    ["POLICIACOT"] = {50},
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEFAULTCOMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("sysClothes:applyPreset")
AddEventHandler("sysClothes:applyPreset",function(perm)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then

        local sexo
        if GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_m_freemode_01") then 
            sexo = "mp_m_freemode_01"
        elseif GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_f_freemode_01") then 
            sexo = "mp_f_freemode_01"
        end

        if perm == "apply" then 
            local permiss = string.upper(vRP.getUserGroupOrg(user_id))
            if permiss == "" then permiss = "Nenhum" end
            TriggerClientEvent("dynamic:closeSystem2", source)
            local clothes = vRP.prompt(source, "Insira o nome do uniforme", "")
            if clothes and clothes ~= "" and clothes ~= nil and maxServices[permiss] then
                local myClothes = vRPC.getCustomization(source)
                if myClothes then 
                    local maxconsult = vRP.query("selectClothesT",{ service = permiss })
                    if parseInt(#maxconsult) >= maxServices[permiss][1] then 
                        TriggerClientEvent("Notify",source,"negado","Você atingiu o número máximo de uniformes, delete algum para prosseguir.",6000)
                        return false 
                    end

                    vRP.execute("saveClothes",{ name = clothes, service = permiss, permiss = permiss, custom = json.encode(myClothes), sexo = sexo })
                    TriggerClientEvent("Notify",source,"importante","Preset salvo com sucesso",6000)
                end
            end

        elseif perm == "delete" then 
            local permiss = vRP.getUserGroupOrg(user_id)
            if permiss == "" then permiss = "Nenhum" end
            print(permiss)
            TriggerClientEvent("dynamic:closeSystem2", source)
            local clothes = vRP.prompt(source, "Insira o nome do uniforme que deseja deletar.", "")
            if clothes then 
                print(clothes)
                local consult = vRP.query("selectClothes",{ permiss = permiss, name = clothes })
                if consult[1] then 
                    print(consult[1])
                    vRP.execute("deleteClothes",{ name = clothes })
                    TriggerClientEvent("Notify",source,"importante","Uniforme deletado",6000)  
                end
            end

        elseif perm == "sairPtr" then
            vRP.removePatrulhamento(user_id)
            vRPC.giveWeapons(source, {}, true)
            limparItems(user_id)
            TriggerEvent('eblips:remove',source)
            TriggerClientEvent("Notify",source,"negado","Você saiu de patrulhamento..",6000)  
        end

        local consult = vRP.query("selectClothesW",{ name = perm, sexo = sexo })
        local myClothes = vRPC.getCustomization(source)
        if consult[1] and consult[1].custom then
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if perm == "Coronel" and vRP.hasGroup(user_id, "Coronel") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Tenente Coronel" and vRP.hasGroup(user_id, "Tenente Coronel") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Major" and vRP.hasGroup(user_id, "Major") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Comando Cot" and vRP.hasGroup(user_id, "Comando Cot") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Comando Speed" and vRP.hasGroup(user_id, "Comando Speed") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Comando Rocam" and vRP.hasGroup(user_id, "Comando Rocam") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Comando Grpae" and vRP.hasGroup(user_id, "Comando Grpae") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Comando Choque" and vRP.hasGroup(user_id, "Comando Choque") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Speed" and vRP.hasGroup(user_id, "Speed") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Rocam" and vRP.hasGroup(user_id, "Rocam") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Grpae" and vRP.hasGroup(user_id, "Grpae") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Choque" and vRP.hasGroup(user_id, "Choque") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Capitao" and vRP.hasGroup(user_id, "Capitao") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Cot" and vRP.hasGroup(user_id, "Cot") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)

        elseif perm == "Primeiro Tenente" and vRP.hasGroup(user_id, "Primeiro Tenente") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1}, ["WEAPON_CARBINERIFLE_MK2"] = {ammo=250} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Segundo Tenente" and vRP.hasGroup(user_id, "Segundo Tenente") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1}, ["WEAPON_CARBINERIFLE_MK2"] = {ammo=250} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Sub Tenente" and vRP.hasGroup(user_id, "Sub Tenente") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1}, ["WEAPON_CARBINERIFLE_MK2"] = {ammo=250} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Primeiro Sargento" and vRP.hasGroup(user_id, "Primeiro Sargento") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1}, ["WEAPON_CARBINERIFLE_MK2"] = {ammo=250} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Segundo Sargento" and vRP.hasGroup(user_id, "Segundo Sargento") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1}  }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Terceiro Sargento" and vRP.hasGroup(user_id, "Terceiro Sargento") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1}  }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Cabo" and vRP.hasGroup(user_id, "Cabo") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1}  }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Soldado" and vRP.hasGroup(user_id, "Soldado") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "Aluno" and vRP.hasGroup(user_id, "Aluno") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        -- TATICA
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        elseif perm == "ComandoTatica" and vRP.hasGroup(user_id, "ComandoTatica") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)

        elseif perm == "SubComandoTatica" and vRP.hasGroup(user_id, "SubComandoTatica") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)

        elseif perm == "SupervisorTatica" and vRP.hasGroup(user_id, "SupervisorTatica") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)

        elseif perm == "EliteTatica" and vRP.hasGroup(user_id, "EliteTatica") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)

        elseif perm == "EstagiarioTatica" and vRP.hasGroup(user_id, "EstagiarioTatica") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)

        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        -- POLICIA CIVIL
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        elseif perm == "DelegadoGeral" and vRP.hasGroup(user_id, "DelegadoGeral") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 
            
        elseif perm == "ComandanteCore" and vRP.hasGroup(user_id, "ComandanteCore") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "SubComandanteCore" and vRP.hasGroup(user_id, "SubComandanteCore") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "Core" and vRP.hasGroup(user_id, "Core") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true) limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "Delegado" and vRP.hasGroup(user_id, "Delegado") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_SPECIALCARBINE"] = {ammo= 250}, ["WEAPON_PISTOL_MK2"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "Perito" and vRP.hasGroup(user_id, "Perito") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "Escrivao" and vRP.hasGroup(user_id, "Escrivao") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "Investigador" and vRP.hasGroup(user_id, "Investigador") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPDW"] = {ammo= 250}, ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250}, ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "Agente" and vRP.hasGroup(user_id, "Agente") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

        elseif perm == "Recruta" and vRP.hasGroup(user_id, "Recruta") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.setPatrulhamento(user_id)
            vRPC._giveWeapons(source, { ["WEAPON_COMBATPISTOL"] = {ammo= 250}, ["WEAPON_STUNGUN"] = {ammo=1}, ["WEAPON_FLASHLIGHT"] = {ammo=1}, ["WEAPON_NIGHTSTICK"] = {ammo=1} }, true)
            limparItems(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerEvent('eblips:add',{ name = "PolicialCivil", src = source, color = 3 })
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000) 

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- HOSPITAL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        elseif perm == "Diretor" and vRP.hasGroup(user_id, "Diretor") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Vice Diretor" and vRP.hasGroup(user_id, "Vice Diretor") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Gestao" and vRP.hasGroup(user_id, "Gestao") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Psiquiatra" and vRP.hasGroup(user_id, "Medico Psiquiatra") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Medico" and vRP.hasGroup(user_id, "Medico") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Enfermeiro" and vRP.hasGroup(user_id, "Enfermeiro") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Psicologo" and vRP.hasGroup(user_id, "Psicologo") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Socorrista" and vRP.hasGroup(user_id, "Socorrista") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Segurança" and vRP.hasGroup(user_id, "Segurança") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            vRP.setPatrulhamento(user_id)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Unizk",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MECANICA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        elseif perm == "Lider [Mecanica]" and vRP.hasGroup(user_id, "Lider [Mecanica]") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.setPatrulhamento(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Mecanica",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Sub-Lider [Mecanica]" and vRP.hasGroup(user_id, "Sub-Lider [Mecanica]") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.setPatrulhamento(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Mecanica",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Gerente [Mecanica]" and vRP.hasGroup(user_id, "Gerente [Mecanica]") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            vRPC.giveWeapons(source, { ["WEAPON_STUNGUN"] = {ammo=1} }, true)
            vRP.setPatrulhamento(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Mecanica",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Membro [Mecanica]" and vRP.hasGroup(user_id, "Membro [Mecanica]") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)

            vRP.setPatrulhamento(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Mecanica",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

        elseif perm == "Novato [Mecanica]" and vRP.hasGroup(user_id, "Novato [Mecanica]") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)

            vRP.setPatrulhamento(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Mecanica",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BENNYS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        elseif perm == "Lider [BENNYS]" and vRP.hasGroup(user_id, "Lider [BENNYS]") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)
            
            vRP.setPatrulhamento(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Bennys",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)

        elseif perm == "Lider [BENNYS]" and vRP.hasGroup(user_id, "Lider [BENNYS]") then
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            limparItems(user_id)

            vRP.setPatrulhamento(user_id)
            vRP.giveInventoryItem(user_id, "radio", 1, true)
            TriggerClientEvent("vrp_blipsystem:serviceEnter",source,"Bennys",26)
            TriggerClientEvent("Notify",source,"sucesso","Você pegou seus equipamentos.",6000)  
            
        else
            TriggerClientEvent("Notify",source,"negado","Você não possui permissao.",6000)  
        end
    end
end
end)

cO.requestClothes = function(sv,perm)
local source = source 
local user_id = vRP.getUserId(source)
if user_id then 
    if vRP.hasPermission(user_id, perm) then 
        local sexo
        if GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_m_freemode_01") then 
            sexo = "mp_m_freemode_01"
        elseif GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_f_freemode_01") then 
            sexo = "mp_f_freemode_01"
        end

        local consult = vRP.query("selectClothesT",{ service = sv, sexo = sexo })
        if consult[1] then 
            return consult
        end

        return false
    end
end
end

cO.requestPermission = function(perm,perm2)
local source = source 
local user_id = vRP.getUserId(source)
if user_id then 
    return vRP.hasPermission(user_id, perm),vRP.hasPermission(user_id, perm2)
end
end
   
function limparItems(id)
vRP.tryGetInventoryItem(id, "chave_algemas", vRP.getInventoryItemAmount(id, "chave_algemas"), true)
vRP.tryGetInventoryItem(id, "radio", vRP.getInventoryItemAmount(id, "radio"), true)
end