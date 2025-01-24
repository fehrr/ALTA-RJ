local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface("lotus_login",src)
vRPNserver = Tunnel.getInterface("lotus_login")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
local spawnSalvo = nil
local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		SendNUIMessage({ action = 'open', name = vRPNserver.getPrimaryName() })
	else
		SetNuiFocus(false)
		SendNUIMessage({ action = 'close' })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	print(data)
	if data == "dp" then
		vRP.teleport(-412.14,1172.1,325.79)
	elseif data == "hp" then
		vRP.teleport(-444.34,-363.96,33.46)
	elseif data == "sandy" then
		vRP.teleport(330.22,2621.45,44.48)
	elseif data == "garagem" then
		vRP.teleport(59.11,-866.72,30.55)
	elseif data == "paleto" then
		vRP.teleport(-781.84,5578.71,33.48)
	elseif data == "vermelho" then
		vRP.teleport(-340.49,-876.19,31.07)
	elseif data == "fechar" then
		print("login saved")
	end
	ToggleActionMenu()
	TriggerEvent("ToogleBackCharacter")
end)

-- RegisterCommand("testespawn", function()
-- 	ToggleActionMenu()
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOOGLE LOGIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('vrp:ToogleLoginMenu')
AddEventHandler('vrp:ToogleLoginMenu',function()
	ToggleActionMenu()
end)

RegisterCommand("teste",function(source,args)
	menuactive = true
	if menuactive then
		SetNuiFocus(true,true)
		SendNUIMessage({ action = 'open', name = vRPNserver.getPrimaryName() })
	else
		SetNuiFocus(false)
		SendNUIMessage({ action = 'close' })
	end
end)