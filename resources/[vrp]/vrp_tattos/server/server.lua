-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("vrp_tattos",src)
Proxy.addInterface("vrp_tattos",src)

vCLIENT = Tunnel.getInterface("vrp_tattos")

-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE TATTO
-----------------------------------------------------------------------------------------------------------------------------------------
function src.updateTattoo(status)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        vRP.updateUserApparence(user_id, "tattos", status)
		vRP.execute("apparence/tattos",{ user_id = user_id, tattos = json.encode(status) })
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SETINSTANCE
-----------------------------------------------------------------------------------------------------------------------------------------
function src.setInstance(status)
    local source = source 
    local user_id = vRP.getUserId(source)
    if user_id then 
        if status then 
	        SetPlayerRoutingBucket(source, parseInt(user_id))
        else
	        SetPlayerRoutingBucket(source,0)
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- HANDLER
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("tattos:init", function(user_id)
	local source = vRP.getUserSource(user_id)
	if source then
		local data = vRP.getUserApparence(user_id)
		if user_id then
			vCLIENT._setTattos(source, data.tattos)
		end
	end
end)