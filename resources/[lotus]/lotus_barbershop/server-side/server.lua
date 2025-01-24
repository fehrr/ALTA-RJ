-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface("lotus_barbearia",src)
vCLIENT = Tunnel.getInterface("lotus_barbearia")

-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESKIN
-----------------------------------------------------------------------------------------------------------------------------------------
function src.updateSkin(custom)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.tryFullPayment(user_id, 500) then
			vRP.updateUserApparence(user_id, "rosto", custom)
			vRP.execute("apparence/rosto",{ user_id = user_id, rosto = json.encode(custom) })
			
			TriggerClientEvent("Notify",source,"sucesso","Você pagou <b>$"..vRP.format(500).." </b> ",5)
			return true
		else
			TriggerClientEvent("Notify",source,"negado","Você não tem dinheiro suficiente",5)
			return false
		end
	end
end

RegisterCommand('debug_rosto', function(source,args)
	local user_id = vRP.getUserId(source)
	local data = vRP.getUserApparence(user_id)
	if user_id then
		print(json.encode(data.rosto, { indent = true }))

		local canStartThread,canUpdate = vCLIENT.isRunning(source)
		print(canStartThread,canUpdate)
		print("USER_ID: "..user_id)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN CHARACTER
-----------------------------------------------------------------------------------------------------------------------------------------

AddEventHandler("barbershop:init", function(user_id)
	local source = vRP.getUserSource(user_id)
	if source then
		local data = vRP.getUserApparence(user_id)
		if user_id then
			if data.rosto then
				vCLIENT._setCharacter(source, data.rosto)
			end
		end
	end
end)