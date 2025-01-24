----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PREPARES
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare('bm_module/orgs/GetDataTable', " SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' ")
vRP.prepare('bm_module/orgs/CreateOrgIfNotExist', " INSERT IGNORE INTO bm_orgs(org) VALUES (@org) ")
vRP.prepare('bm_module/orgs/GetOrgsInfo', " SELECT bank,description,pix FROM bm_orgs WHERE org = @org ")

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local ORGS = {
    List = {
        --["Lider [MAFIA02]"] = "Mafia 02" @params group(string), @params groupType(string)
    },

    Member = {
        --[1] = { @params user_id(integer)
        --  group = "Lider [MAFIA02]" @params group(string)
        --  groupType = "MAFIA02" @params groupType(string)
        --}
    },

    MembersList = {
        --["Mafia 02"] = { @params group(string)
        -- [1] = true @params user_id(int)
        --}
    },
}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ORGS:AddUserGroup(user_id, v)
    self.Member[user_id] = v
    
    if not self.MembersList[v.groupType] then
        self.MembersList[v.groupType] = {}
    end

    self.MembersList[v.groupType][user_id] = true
end

function ORGS:RemUserGroup(user_id)
    local groupType = self.Member[user_id] and (self.Member[user_id].groupType or false)
    if not groupType then print("Houve um problema no RemUserGroup do USER_ID: "..user_id) return end

    if self.MembersList[groupType] then
        self.MembersList[groupType][user_id] = nil
    end

    self.Member[user_id] = nil
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RegisterTunnel.RequestOrg()
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local user = ORGS.Member[user_id]
    if not user then print("Você não faz parte de nenhuma organização!") return end
    -- print(("Abrindo o Painel da Organização: %s"):format(user.groupType))

    if not ORGS.MembersList[user.groupType] then print("Ops, houve um problema contate um administrador.") return end

    local query = vRP.query("bm_module/orgs/GetOrgsInfo", { org = user.groupType  })
    if #query == 0 then print("Ops, houve um problema ao consultar no banco de dados.") return end

    local FormatMembers = {}
    local MembersActive = 0
    for ply_id in pairs(ORGS.MembersList[user.groupType]) do
        local nidentity = vRP.getUserIdentity(ply_id)
        if not nidentity then print("Problemas ao carregar identidade.") goto skip end

        local hasActive = (vRP.getUserSource(ply_id) ~= nil)
        if hasActive then MembersActive = (MembersActive + 1) end

        local nuser = ORGS.Member[ply_id]
        if not nuser then print("Problemas ao carregar organizacao.") goto skip end

        FormatMembers[#FormatMembers + 1] = {
            name = nidentity.nome.. " "..nidentity.sobrenome,
            user_id = ply_id,
            online = hasActive,
            groupPrefix = orgsConfig.List[nuser.groupType] and orgsConfig.List[nuser.groupType].groups[nuser.group].prefix or "Indefinido"
        }

        :: skip ::
    end

    return { 
        Organization = user.groupType,
        Members = FormatMembers,
        TotalMembers = #FormatMembers,  
        TotalMembersActive = MembersActive,
        BankValue = query[1].bank and (query[1].bank or 0),
        Description = (query[1].description ~= "") and (query[1].description or "")
    }
end

function RegisterTunnel.requestPlayerName(ply_id)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local org = ORGS.Member[user_id]
    if not org then
        print(([[%s Tentou Injetar o Tunnel requestPlayerName]]):format(user_id))
        return
    end

    local identity = vRP.getUserIdentity(ply_id)
    if not identity then return end

    return ([[%s %s (%d)]]):format(identity.nome, identity.sobrenome, ply_id),org.groupType
end

function RegisterTunnel.requestPromovePlayer(ply_id)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local org = ORGS.Member[user_id]
    if not org then
        print(([[%s Tentou Injetar o Tunnel requestPromovePlayer]]):format(user_id))
        return
    end

    return org.groupType
end

function RegisterTunnel.promovePlayer(ply_id, orgInvited, group)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local org = ORGS.Member[user_id]
    if not org then
        print(([[%s Tentou Injetar o Tunnel promovePlayer]]):format(user_id))
        return
    end

    if org.groupType ~= orgInvited or ORGS.List[group] ~= org.groupType then
        print(([[%s Tentou Injetar o Tunnel promovePlayer]]):format(user_id))
        return
    end

    local Permission = orgsConfig.List[org.groupType] and (orgsConfig.List[org.groupType].groups[org.group].permissions.promove or false)
    if not Permission then
        TriggerClientEvent("Notify",source,"negado","Você não possui permissão para promover.", 5)
        return
    end

    if not ORGS.Member[ply_id] then
        TriggerClientEvent("Notify",source,"negado","Este jogador não se encontra em nenhuma organização.", 5)
        return
    end

    local ply_src = vRP.getUserSource(ply_id)
    if ply_src then
        TriggerClientEvent("Notify",ply_src,"importante","Você foi promovido/rebaixado.", 5)
        vRP.addUserGroup(ply_id, group)
    else
        local datatable = json.decode(vRP.getUData(ply_id, "vRP:datatable")) or {}
        datatable.groups[group] = true
        vRP.setUData(ply_id, "vRP:datatable", json.encode(datatable))

        ORGS:AddUserGroup(ply_id, {
            group = group,
            groupType = ORGS.List[group]
        })
    end

    TriggerClientEvent("Notify",source,"sucesso","Você promoveu/rebaixou esse jogador com sucesso.", 5)
    return true
end

function RegisterTunnel.invitePlayer(ply_id, orgInvited, group)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local org = ORGS.Member[user_id]
    if not org then
        print(([[%s Tentou Injetar o Tunnel invitePlayer]]):format(user_id))
        return
    end

    if org.groupType ~= orgInvited or ORGS.List[group] ~= org.groupType then
        print(([[%s Tentou Injetar o Tunnel invitePlayer]]):format(user_id))
        return
    end

    local Permission = orgsConfig.List[org.groupType] and (orgsConfig.List[org.groupType].groups[org.group].permissions.invite or false)
    if not Permission then
        TriggerClientEvent("Notify",source,"negado","Você não possui permissão para convidar.", 5)
        return
    end

    local ply_src = vRP.getUserSource(ply_id)
    if not ply_src then
        TriggerClientEvent("Notify",source,"negado","O Jogador não se encontra na cidade no momento.", 5)
        return
    end

    if ORGS.Member[ply_id] then
        TriggerClientEvent("Notify",source,"negado","Este jogador já está em uma organização.", 5)
        return
    end

    local request = vRP.request(ply_src, "Estão te convidando para a organização "..org.groupType.." deseja aceitar?", 30)
    if not request then
        TriggerClientEvent("Notify",source,"negado","O Jogador recusou seu convite.", 5)
        return
    end

    TriggerClientEvent("Notify",source,"sucesso","O Jogador aceitou seu convite.", 5)
    vRP.addUserGroup(ply_id, group)
    vRP.sendLog("https://discord.com/api/webhooks/1080956983819116584/EsgLW8z87a4wcuNUHgN5QHP03Kf_3D7jT1FGc6_OVQKB0683vgdo5tSFmOMmZFFvA9jv", "O ID "..user_id.." INVITOU O "..ply_id.." PARA A ORGANIZAÇÃO: "..group)
    return true
end

function RegisterTunnel.leaveOrg(orgInvited)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local org = ORGS.Member[user_id]
    if not org then
        print(([[%s Tentou Injetar o Tunnel invitePlayer]]):format(user_id))
        return
    end
    
    if org.groupType ~= orgInvited then
        print(([[%s Tentou Injetar o Tunnel invitePlayer]]):format(user_id))
        return
    end

    print("Leave org => ", org.groupType)

    if org.groupType == "Mecanica" or org.groupType == "Hospital" or org.groupType == "Policia" or org.groupType == "Cot" or org.groupType == "PoliciaCivil" then
        vRPclient._giveWeapons(source, {} ,true) 
    end

    vRP.removeUserGroup(user_id, org.group) -- Caso der problema ( filtrar pelo getUserGroupByType )
    TriggerClientEvent("Notify",source,"sucesso","Você saiu da sua organização.", 5)
end

function RegisterTunnel.demotePlayer(ply_id, orgInvited)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end

    local org = ORGS.Member[user_id]
    if not org then
        print(([[%s Tentou Injetar o Tunnel demotePlayer]]):format(user_id))
        return
    end

    if org.groupType ~= orgInvited  then
        print(([[%s Tentou Injetar o Tunnel demotePlayer]]):format(user_id))
        return
    end

    local Permission = orgsConfig.List[org.groupType] and (orgsConfig.List[org.groupType].groups[org.group].permissions.demote or false)
    if not Permission then
        TriggerClientEvent("Notify",source,"negado","Você não possui permissão para demitir.", 5)
        return
    end

    if not ORGS.Member[ply_id] then
        TriggerClientEvent("Notify",source,"negado","Este não se encontra em nenhuma organização.", 5)
        return
    end

    local ply_src = vRP.getUserSource(ply_id)
    if ply_src then
        TriggerClientEvent("Notify",ply_src,"negado","Você foi demitido de sua Organização.", 5)
        vRP.removeUserGroup(ply_id, ORGS.Member[ply_id].group) -- Caso der problema ( filtrar pelo getUserGroupByType )

        if org.groupType == "Mecanica" or org.groupType == "Hospital" or org.groupType == "Policia" or org.groupType == "Cot" or org.groupType == "PoliciaCivil" then
            vRPclient._giveWeapons(ply_src, {} ,true) 
        end
        vRP.sendLog("https://discord.com/api/webhooks/1080956983819116584/EsgLW8z87a4wcuNUHgN5QHP03Kf_3D7jT1FGc6_OVQKB0683vgdo5tSFmOMmZFFvA9jv", "O ID "..user_id.." DEMITIU O "..ply_id.." DA ORGANIZAÇÃO: "..org.groupType)

        print("** ONLINE ** O ID "..user_id.." DEMITIU O "..ply_id.." DA ORGANIZAÇÃO: "..org.groupType)
    else
        local datatable = json.decode(vRP.getUData(ply_id, "vRP:datatable")) or {}
        datatable.groups[ORGS.Member[ply_id].group] = nil
        vRP.setUData(ply_id, "vRP:datatable", json.encode(datatable))

        ORGS:RemUserGroup(ply_id)
        vRP.sendLog("https://discord.com/api/webhooks/1080956983819116584/EsgLW8z87a4wcuNUHgN5QHP03Kf_3D7jT1FGc6_OVQKB0683vgdo5tSFmOMmZFFvA9jv", "O ID "..user_id.." DEMITIU O "..ply_id.." DA ORGANIZAÇÃO: "..org.groupType)

        print("** OFFLINE ** O ID "..user_id.." DEMITIU O "..ply_id.." DA ORGANIZAÇÃO: "..org.groupType)
    end

    TriggerClientEvent("Notify",source,"sucesso","Você demitiu esse jogador de sua organização.", 5)
    return true
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local groups_mdt = {
    ['Policia'] = true,
    ['PolicialCivil'] = true,
    ['Cot'] = true
}
RegisterCommand('org', function(source,args)
    local user_id = vRP.getUserId(source)
    if not user_id then return end
    for k,v in pairs(groups_mdt) do 
        if vRP.hasGroup(user_id, v) then 
            return exports['lotus-mdt']:open(src)
        end
    end
    local user = ORGS.Member[user_id]
    if not user then  TriggerClientEvent("Notify",source,"negado","Você não faz parte de nenhuma organização!", 5) return end

    vTunnel._OpenOrg(source)
end)

RegisterCommand('orgadm', function(source,args)
    local user_id = vRP.getUserId(source)
    if not user_id then return end
     
    if not vRP.hasPermission(user_id, "admin.permissao") then return end

    local orgName = args[1]
    if not orgName or orgName == "" then
        return
    end
    
    if not orgsConfig.List[orgName] then
        return
    end

    local bestTier = 0
    local bestGroup = ""
    for group,v in pairs(orgsConfig.List[orgName].groups) do
        local tier = v.tier
        if tier > bestTier then
            bestTier = tier
            bestGroup = group
        end
    end

    vRP.addUserGroup(user_id, bestGroup)
    vTunnel._OpenOrg(source)
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RECIVE HANDLERS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('vRP:playerJoinGroup', function(user_id,group)
    if ORGS.List[group] then
        ORGS:AddUserGroup(user_id, {
            group = group,
            groupType = ORGS.List[group]
        })
    end
end)

AddEventHandler('vRP:playerLeaveGroup', function(user_id,group)
    if ORGS.List[group] then
        ORGS:RemUserGroup(user_id)
    end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CACHE FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ORGS:FormatConfig()
    for orgName in pairs(orgsConfig.List) do
        for Group in pairs(orgsConfig.List[orgName].groups) do
            self.List[Group] = orgName

            if (orgsConfig.main.createAutomatic) then
                exports["oxmysql"]:executeSync([[INSERT IGNORE INTO bm_orgs(org) VALUES(?)]], { orgName })
            end
        end
    end 
    
    ORGS:GenerateCache()
    ORGS:VerifyPlayers()
end

function ORGS:GenerateCache()
    local time = os.time()
    print('^1[BM_MODULE] ^0Iniciando Cache dos jogadores.')

    local query = vRP.query('bm_module/orgs/GetDataTable')
    local FormatUser = {}
    for i = 1, #query do
        local ply = query[i]
        local plyData = json.decode(ply.dvalue) or {}

        FormatUser[ply.user_id] = (plyData.groups or {})
    end

    for user_id, groups in pairs(FormatUser) do
        for groupName in pairs(groups) do
            if self.List[groupName] then
                self:AddUserGroup(user_id, {
                    group = groupName,
                    groupType = self.List[groupName]
                })
            end
        end
    end

    print(('^1[BM_MODULE] ^0Cache dos jogadores gerados com sucesso tempo %s segundo(s).'):format(os.time() - time))

    FormatUser = {} -- Limpando Variavel para Poupar Memoria
end

-- Verificar jogadores online caso houver algum ensure e não estiver salvo no banco de dados. ( CASO O MODULO SEJA ENSURADO )
function ORGS:VerifyPlayers()
    local users = vRP.getUsers()
    for user_id,source in pairs(users) do
        local plyGroups = vRP.getUserGroups(user_id)
        for group in pairs(plyGroups) do

            if ORGS.Member[user_id] then -- VERIFICAR SE O JOGADOR ESTIVER ONLINE COM O GRUPO NO BANCO DE DADOS E SEM O GRUPO NO JOGO ( REMOVER DO CACHE ) ( CASO ENSURE )
                if ORGS.List[ORGS.Member[user_id].group] then
                    if not vRP.hasGroup(user_id, ORGS.Member[user_id].group) then
                        ORGS:RemUserGroup(user_id)
                    end
                end
            end
            
            if ORGS.List[group] then
                ORGS:AddUserGroup(user_id, {
                    group = group,
                    groupType = ORGS.List[group]
                })
            end
        end
    end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- THREADS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    ORGS:FormatConfig()
end)