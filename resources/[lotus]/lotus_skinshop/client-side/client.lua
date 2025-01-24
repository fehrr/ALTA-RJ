-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("vrp_roupas",cRP)
vSERVER = Tunnel.getInterface("vrp_roupas")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local cam = -1
local skinData = {}
local oldData = {}

local previousSkinData = {}
local customCamLocation = nil
local creatingCharacter = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINDATA
-----------------------------------------------------------------------------------------------------------------------------------------
local skinData = {
	["pants"] = { item = 0, texture = 0 },
	["arms"] = { item = 0, texture = 0 },
	["tshirt"] = { item = 1, texture = 0 },
	["torso"] = { item = 0, texture = 0 },
	["vest"] = { item = 0, texture = 0 },
	["backpack"] = { item = 0, texture = 0 },
	["shoes"] = { item = 1, texture = 0 },
	["mask"] = { item = 0, texture = 0 },
	["hat"] = { item = -1, texture = 0 },
	["glass"] = { item = 0, texture = 0 },
	["ear"] = { item = -1, texture = 0 },
	["watch"] = { item = -1, texture = 0 },
	["bracelet"] = { item = -1, texture = 0 },
	["accessory"] = { item = 0, texture = 0 },
	["decals"] = { item = 0, texture = 0 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVESKIN 3
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_clothes:skinData")
AddEventHandler("vrp_clothes:skinData",function(status)
	if status ~= "clean" then
		vRP.setClothes(status)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATETATTOO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:updateTattoo")
AddEventHandler("skinshop:updateTattoo",function()
	resetClothing(skinData)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCATESHOPS
-----------------------------------------------------------------------------------------------------------------------------------------
local locateShops = {
	{ 75.51,-1393.17,29.37, true },
	{ -709.40,-153.66,37.41, true },
	{ -163.20,-302.03,39.73, true },
	{ 425.58,-806.23,29.49, true },
	{ -822.34,-1073.49,11.32, true },
	{ -1193.81,-768.49,17.31, true },
	{ -1450.85,-238.15,49.81, true },
	{ 4.90,6512.47,31.87, true },
	{ 1693.95,4822.67,42.06, true },
	{ 126.05,-223.10,54.55, true },
	{ 614.26,2761.91,42.08, true },

	{ -2034.13,-452.59,15.96, false }, 
	{ -1601.97,-971.59,13.13, false }, 
	{ -1671.95,-964.61,7.78, false }, 
	
	

	
	
	

	
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- CRIAR BLIP
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = {}

Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	criarblips()
end)

function criarblips()
	for k,v in pairs(locateShops) do
		if v[4] then
			blips[k] = AddBlipForCoord(v[1],v[2],v[3])
			SetBlipSprite(blips[k], 73)
			SetBlipColour(blips[k], 13)
			SetBlipScale(blips[k], 0.5)
			SetBlipAsShortRange(blips[k], true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Loja de Roupas")
			EndTextCommandSetBlipName(blips[k])
		end
	end
end



-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)

	while true do
		local timeDistance = 999
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) and not creatingCharacter then
			local coords = GetEntityCoords(ped)

			for k,v in pairs(locateShops) do
				local distance = #(coords - vector3(v[1],v[2],v[3]))
				if distance <= 5 then
					DrawText3D(v[1],v[2],v[3],"Pressione ~g~E~w~ para abrir")
					if distance <= 2 then
						timeDistance = 1

						if IsControlJustPressed(0,38) then 
							TriggerEvent('chat:close', true)

							customCamLocation = nil
							oldData = vRP.getCustomization()
							TriggerEvent('chat:close', true)
							openMenu({
								{ menu = "character", label = "Roupas", selected = true },
								{ menu = "accessoires", label = "Utilidades", selected = false }
							})
							--vSERVER._updateBucket(true)
						end
					end
				end
			end
		end

		Citizen.Wait(timeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINSHOP:OPENSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:openShop")
AddEventHandler("skinshop:openShop",function()
	if not creatingCharacter then
		customCamLocation = nil
		TriggerEvent('chat:close', true)
		openMenu({
			{ menu = "character", label = "Roupas", selected = true },
			{ menu = "accessoires", label = "Utilidades", selected = false }
		})
	end
end)

RegisterCommand("lojaderoupas", function()
	if GetEntityHealth(PlayerPedId()) <= 105 then return end
	  if not creatingCharacter and vSERVER.checkPermission() then
		  customCamLocation = nil
		  TriggerEvent('chat:close', true)
		  openMenu({
			  { menu = "character", label = "Roupas", selected = true },
			  { menu = "accessoires", label = "Utilidades", selected = false }
		  })
	  end
  end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RESETOUTFIT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("resetOutfit",function()
	vRP.setCustomization(oldData)

	TriggerEvent('chat:close', false)
	SetNuiFocus(false,false)
	DestroyCam(cam,false)
	ClearPedTasks(PlayerPedId())
	skinData = json.decode(previousSkinData)
	previousSkinData = {}
	creatingCharacter = false

	RenderScriptCams(false,true,250,1,0)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATERIGHT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("rotateRight",function()
	local ped = PlayerPedId()
	local heading = GetEntityHeading(ped)
	SetEntityHeading(ped,heading + 30)
end)
RegisterNUICallback("rotateLeft",function()
	local ped = PlayerPedId()
	local heading = GetEntityHeading(ped)
	SetEntityHeading(ped,heading - 30)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATION
-----------------------------------------------------------------------------------------------------------------------------------------
function f(n)
	n = n + 0.00000
	return n
end

RegisterNUICallback('rotation', function(data, cb)
	local ped = PlayerPedId()
	SetEntityHeading(PlayerPedId(), f(data.camRotation))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOTHINGCATEGORYS
-----------------------------------------------------------------------------------------------------------------------------------------
local clothingCategorys = {
	["arms"] = { type = "variation", id = 3 },
	["tshirt"] = { type = "variation", id = 8 },
	["torso"] = { type = "variation", id = 11 },
	["pants"] = { type = "variation", id = 4 },
	["vest"] = { type = "variation", id = 9 },
	["backpack"] = { type = "variation", id = 5 },
	["shoes"] = { type = "variation", id = 6 },
	["mask"] = { type = "mask", id = 1 },
	["hat"] = { type = "prop", id = 0 },
	["glass"] = { type = "prop", id = 1 },
	["ear"] = { type = "prop", id = 2 },
	["watch"] = { type = "prop", id = 6 },
	["bracelet"] = { type = "prop", id = 7 },
	["accessory"] = { type = "variation", id = 7 },
	["decals"] = { type = "variation", id = 10 }
}

RegisterNetEvent("changeClothes")
AddEventHandler("changeClothes",function(index,color,type_clothe)
    local ped = PlayerPedId()
    if GetEntityHealth(ped) > 101 then
        local v = clothingCategorys[type_clothe]
        if v then 
			ClearPedTasks(ped)
            if index == nil then
                SetPedComponentVariation(ped,v.id,0,0,2)
				skinData[type_clothe]["texture"] = 0
				skinData[type_clothe]["item"] = 0
			else
				if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") or GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
					if v.type == "prop" then
						SetPedPropIndex(ped,v.id,parseInt(index),parseInt(color),2)
					else
						SetPedComponentVariation(ped,v.id,parseInt(index),parseInt(color),2)
					end
					skinData[type_clothe]["texture"] = parseInt(color)
					skinData[type_clothe]["item"] = parseInt(index)
				end
            end
			vSERVER._updateClothes(vRP.getCustomization())
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETMAXVALUES
-----------------------------------------------------------------------------------------------------------------------------------------
function GetMaxValues()
	maxModelValues = {
		["arms"] = { type = "character", item = 0, texture = 0, id = 3 },
		["tshirt"] = { type = "character", item = 0, texture = 0, id = 8  },
		["torso"] = { type = "character", item = 0, texture = 0, id = 11 },
		["pants"] = { type = "character", item = 0, texture = 0, id = 4 },
		["shoes"] = { type = "character", item = 0, texture = 0, id = 6 },
		["vest"] = { type = "character", item = 0, texture = 0, id = 9 },
		["backpack"] = { type = "character", item = 0, texture = 0, id = 5 },
		["accessory"] = { type = "character", item = 0, texture = 0, id = 7 },
		["decals"] = { type = "character", item = 0, texture = 0, id = 10 },
		["mask"] = { type = "accessoires", item = 0, texture = 0, id = 1 },
		["hat"] = { type = "accessoires", item = 0, texture = 0, id = "p0" },
		["glass"] = { type = "accessoires", item = 0, texture = 0, id = "p1" },
		["ear"] = { type = "accessoires", item = 0, texture = 0, id = "p2"},
		["watch"] = { type = "accessoires", item = 0, texture = 0, id = "p6" },
		["bracelet"] = { type = "accessoires", item = 0, texture = 0, id = "p7" }
	}

	local ped = PlayerPedId()
	for k,v in pairs(clothingCategorys) do
		if v["type"] == "variation" then
			maxModelValues[k]["item"] = GetNumberOfPedDrawableVariations(ped,v["id"]) - 1
			maxModelValues[k]["texture"] = GetNumberOfPedTextureVariations(ped,v["id"],GetPedDrawableVariation(ped,v["id"])) - 1
			
			if maxModelValues[k]["texture"] <= 0 then
				maxModelValues[k]["texture"] = 0
			end
		end

		if v["type"] == "mask" then
			maxModelValues[k]["item"] = GetNumberOfPedDrawableVariations(ped,v["id"]) - 1
			maxModelValues[k]["texture"] = GetNumberOfPedTextureVariations(ped,v["id"],GetPedDrawableVariation(ped,v["id"])) - 1

			if maxModelValues[k]["texture"] <= 0 then
				maxModelValues[k]["texture"] = 0
			end
		end

		if v["type"] == "prop" then
			maxModelValues[k]["item"] = GetNumberOfPedPropDrawableVariations(ped,v["id"]) - 1
			maxModelValues[k]["texture"] = GetNumberOfPedPropTextureVariations(ped,v["id"],GetPedPropIndex(ped,v["id"])) - 1

			if maxModelValues[k]["texture"] <= 0 then
				maxModelValues[k]["texture"] = 0
			end
		end
	end

	SendNUIMessage({ action = "updateMax", maxValues = maxModelValues })
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENMENU
-----------------------------------------------------------------------------------------------------------------------------------------
function openMenu(allowedMenus)
	local currentGender = ""
	creatingCharacter = true
	previousSkinData = json.encode(skinData)

	GetMaxValues()
	SetEntityHeading(PlayerPedId(), 0)
	
	if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") then 
		currentGender = "Male"
	elseif GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
		currentGender = "Female"
	end

	SendNUIMessage({ action = "open", menus = allowedMenus, currentClothing = skinData, currentGender = currentGender })

	SetNuiFocus(true,true)
	SetCursorLocation(0.9,0.25)

	enableCam()

	vRP.playAnim(false,{{"mp_sleep","bind_pose_180"}},true)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENABLECAM
-----------------------------------------------------------------------------------------------------------------------------------------
function enableCam()
	local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,2.0,0)
	RenderScriptCams(false,false,0,1,0)
	DestroyCam(cam,false)

	if not DoesCamExist(cam) then
		cam = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
		SetCamActive(cam,true)
		RenderScriptCams(true,false,0,true,true)
		SetCamCoord(cam,coords["x"],coords["y"],coords["z"] + 0.5)
		SetCamRot(cam,0.0,0.0,GetEntityHeading(PlayerPedId()) + 180)
	end

	if customCamLocation ~= nil then
		SetCamCoord(cam,customCamLocation["x"],customCamLocation["y"],customCamLocation["z"])
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATECAM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("rotateCam",function(data)
	local ped = PlayerPedId()
	local rotType = data["type"]
	local coords = GetOffsetFromEntityInWorldCoords(ped,0,2.0,0)

	if rotType == "left" then
		SetEntityHeading(ped,GetEntityHeading(ped) - 10)
		SetCamCoord(cam,coords["x"],coords["y"],coords["z"] + 0.5)
		SetCamRot(cam,0.0,0.0,GetEntityHeading(ped) + 180)
	else
		SetEntityHeading(ped,GetEntityHeading(ped) + 10)
		SetCamCoord(cam,coords["x"],coords["y"],coords["z"] + 0.5)
		SetCamRot(cam,0.0,0.0,GetEntityHeading(ped) + 180)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETUPCAM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("setupCam",function(data)
	local value = data["value"]

	if value == 1 then
		local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,0.75,0)
		SetCamCoord(cam,coords["x"],coords["y"],coords["z"] + 0.6)
	elseif value == 2 then
		local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,1.0,0)
		SetCamCoord(cam,coords["x"],coords["y"],coords["z"] + 0.2)
	elseif value == 3 then
		local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,1.0,0)
		SetCamCoord(cam,coords["x"],coords["y"],coords["z"] - 0.5)
	else
		local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,2.0,0)
		SetCamCoord(cam,coords["x"],coords["y"],coords["z"] + 0.5)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSEMENU
-----------------------------------------------------------------------------------------------------------------------------------------
function closeMenu()
	SendNUIMessage({ action = "close" })
	oldData = {}
	RenderScriptCams(false,true,250,1,0)
	DestroyCam(cam,false)
	--vSERVER._updateBucket(false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- RESETCLOTHING
-----------------------------------------------------------------------------------------------------------------------------------------
function resetClothing(data)
	local ped = PlayerPedId()

	if data["backpack"] == nil then
		data["backpack"] = {}
		data["backpack"]["item"] = 0
		data["backpack"]["texture"] = 0
	end

	SetPedComponentVariation(ped,4,data["pants"]["item"],data["pants"]["texture"],1)
	SetPedComponentVariation(ped,3,data["arms"]["item"],data["arms"]["texture"],1)
	SetPedComponentVariation(ped,5,data["backpack"]["item"],data["backpack"]["texture"],1)
	SetPedComponentVariation(ped,8,data["tshirt"]["item"],data["tshirt"]["texture"],1)
	SetPedComponentVariation(ped,9,data["vest"]["item"],data["vest"]["texture"],1)
	SetPedComponentVariation(ped,11,data["torso"]["item"],data["torso"]["texture"],1)
	SetPedComponentVariation(ped,6,data["shoes"]["item"],data["shoes"]["texture"],1)
	SetPedComponentVariation(ped,1,data["mask"]["item"],data["mask"]["texture"],1)
	SetPedComponentVariation(ped,10,data["decals"]["item"],data["decals"]["texture"],1)
	SetPedComponentVariation(ped,7,data["accessory"]["item"],data["accessory"]["texture"],1)

	if data["hat"]["item"] ~= -1 and data["hat"]["item"] ~= 0 then
		SetPedPropIndex(ped,0,data["hat"]["item"],data["hat"]["texture"],1)
	else
		ClearPedProp(ped,0)
	end

	if data["glass"]["item"] ~= -1 and data["glass"]["item"] ~= 0 then
		SetPedPropIndex(ped,1,data["glass"]["item"],data["glass"]["texture"],1)
	else
		ClearPedProp(ped,1)
	end

	if data["ear"]["item"] ~= -1 and data["ear"]["item"] ~= 0 then
		SetPedPropIndex(ped,2,data["ear"]["item"],data["ear"]["texture"],1)
	else
		ClearPedProp(ped,2)
	end

	if data["watch"]["item"] ~= -1 and data["watch"]["item"] ~= 0 then
		SetPedPropIndex(ped,6,data["watch"]["item"],data["watch"]["texture"],1)
	else
		ClearPedProp(ped,6)
	end

	if data["bracelet"]["item"] ~= -1 and data["bracelet"]["item"] ~= 0 then
		SetPedPropIndex(ped,7,data["bracelet"]["item"],data["bracelet"]["texture"],1)
	else
		ClearPedProp(ped,7)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function()
	TriggerEvent('chat:close', false)

	RenderScriptCams(false,true,250,1,0)
	creatingCharacter = false
	SetNuiFocus(false,false)
	DestroyCam(cam,false)
	TriggerEvent('chat:close', false)
	ClearPedTasks(PlayerPedId())
	--vSERVER._updateBucket(false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESKIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSkin",function(data,cb)
	ChangeVariation(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESKINONINPUT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSkinOnInput",function(data)
	ChangeVariation(data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHANGEVARIATION
-----------------------------------------------------------------------------------------------------------------------------------------
function ChangeVariation(data)
	local ped = PlayerPedId()
	local types = data["type"]
	local item = data["articleNumber"]
	local category = data["clothingType"]

	if category == "pants" then
		if types == "item" then
			SetPedComponentVariation(ped,4,item,0,1)
			skinData["pants"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,4,GetPedDrawableVariation(ped,4),item,1)
			skinData["pants"]["texture"] = item
		end
	elseif category == "arms" then
		if types == "item" then
			SetPedComponentVariation(ped,3,item,0,1)
			skinData["arms"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,3,GetPedDrawableVariation(ped,3),item,1)
			skinData["arms"]["texture"] = item
		end
	elseif category == "tshirt" then
		if types == "item" then
			SetPedComponentVariation(ped,8,item,0,1)
			skinData["tshirt"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,8,GetPedDrawableVariation(ped,8),item,1)
			skinData["tshirt"]["texture"] = item
		end
	elseif category == "vest" then
		if types == "item" then
			SetPedComponentVariation(ped,9,item,0,1)
			skinData["vest"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,9,skinData["vest"]["item"],item,1)
			skinData["vest"]["texture"] = item
		end
	elseif category == "backpack" then
		if types == "item" then
			SetPedComponentVariation(ped,5,item,0,1)
			skinData["backpack"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,5,skinData["backpack"]["item"],item,1)
			skinData["backpack"]["texture"] = item
		end
	elseif category == "decals" then
		if types == "item" then
			SetPedComponentVariation(ped,10,item,0,1)
			skinData["decals"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,10,skinData["decals"]["item"],item,1)
			skinData["decals"]["texture"] = item
		end
	elseif category == "accessory" then
		if types == "item" then
			SetPedComponentVariation(ped,7,item,0,1)
			skinData["accessory"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,7,skinData["accessory"]["item"],item,1)
			skinData["accessory"]["texture"] = item
		end
	elseif category == "torso" then
		if types == "item" then
			SetPedComponentVariation(ped,11,item,0,1)
			skinData["torso"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,11,GetPedDrawableVariation(ped,11),item,1)
			skinData["torso"]["texture"] = item
		end
	elseif category == "shoes" then
		if types == "item" then
			SetPedComponentVariation(ped,6,item,0,1)
			skinData["shoes"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,6,GetPedDrawableVariation(ped,6),item,1)
			skinData["shoes"]["texture"] = item
		end
	elseif category == "mask" then
		if types == "item" then
			SetPedComponentVariation(ped,1,item,0,1)
			skinData["mask"]["item"] = item
		elseif types == "texture" then
			SetPedComponentVariation(ped,1,GetPedDrawableVariation(ped,1),item,1)
			skinData["mask"]["texture"] = item
		end
	elseif category == "hat" then
		if types == "item" then
			if item ~= -1 then
				SetPedPropIndex(ped,0,item,skinData["hat"]["texture"],1)
			else
				ClearPedProp(ped,0)
			end

			skinData["hat"]["item"] = item
		elseif types == "texture" then
			SetPedPropIndex(ped,0,skinData["hat"]["item"],item,1)
			skinData["hat"]["texture"] = item
		end
	elseif category == "glass" then
		if types == "item" then
			if item ~= -1 then
				SetPedPropIndex(ped,1,item,skinData["glass"]["texture"],1)
				skinData["glass"]["item"] = item
			else
				ClearPedProp(ped,1)
			end
		elseif types == "texture" then
			SetPedPropIndex(ped,1,skinData["glass"]["item"],item,1)
			skinData["glass"]["texture"] = item
		end
	elseif category == "ear" then
		if types == "item" then
			if item ~= -1 then
				SetPedPropIndex(ped,2,item,skinData["ear"]["texture"],1)
			else
				ClearPedProp(ped,2)
			end

			skinData["ear"]["item"] = item
		elseif types == "texture" then
			SetPedPropIndex(ped,2,skinData["ear"]["item"],item,1)
			skinData["ear"]["texture"] = item
		end
	elseif category == "watch" then
		if types == "item" then
			if item ~= -1 then
				SetPedPropIndex(ped,6,item,skinData["watch"]["texture"],1)
			else
				ClearPedProp(ped,6)
			end

			skinData["watch"]["item"] = item
		elseif types == "texture" then
			SetPedPropIndex(ped,6,skinData["watch"]["item"],item,1)
			skinData["watch"]["texture"] = item
		end
	elseif category == "bracelet" then
		if types == "item" then
			if item ~= -1 then
				SetPedPropIndex(ped,7,item,skinData["bracelet"]["texture"],1)
			else
				ClearPedProp(ped,7)
			end

			skinData["bracelet"]["item"] = item
		elseif types == "texture" then
			SetPedPropIndex(ped,7,skinData["bracelet"]["item"],item,1)
			skinData["bracelet"]["texture"] = item
		end
	end

	GetMaxValues()
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVESKIN
-----------------------------------------------------------------------------------------------------------------------------------------
function getCustomization()
	local ped = PlayerPedId()
	local custom = {}

	for i = 0,20 do
		if i ~= 2 then 
			custom[i] = { GetPedDrawableVariation(ped,i),GetPedTextureVariation(ped,i),GetPedPaletteVariation(ped,i) }
		end
	end

	for i = 0,10 do
		custom["p"..i] = { GetPedPropIndex(ped,i),math.max(GetPedPropTextureIndex(ped,i),0) }
	end

	return custom
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVECLOTHING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("saveClothing",function(data)
	SaveSkin()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVESKIN
-----------------------------------------------------------------------------------------------------------------------------------------
function SaveSkin()
	oldData = {}
	vSERVER.updateClothes(vRP.getCustomization())
end
-------------------------------------------------------------------------------------------------------------------------------------------
---- SAVESKIN 2
-------------------------------------------------------------------------------------------------------------------------------------------
function cRP.updateClothes()
	vSERVER.updateClothes(vRP.getCustomization())
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVESKIN 3
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_clothes:updateClothes")
AddEventHandler("vrp_clothes:updateClothes", function()
	vSERVER.updateClothes(vRP.getCustomization())
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETMASK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:setMask")
AddEventHandler("skinshop:setMask",function()
	if GetPedDrawableVariation(PlayerPedId(),1) == skinData["mask"]["item"] then
		vRP.playAnim(true,{"missfbi4","takeoff_mask"},true)
		Citizen.Wait(900)
		SetPedComponentVariation(PlayerPedId(),1,0,0,1)
	else
		vRP.playAnim(true,{"mp_masks@on_foot","put_on_mask"},true)
		Citizen.Wait(700)
		SetPedComponentVariation(PlayerPedId(),1,skinData["mask"]["item"],skinData["mask"]["texture"],1)
	end

	vRP.DeletarObjeto("one")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETHAT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:setHat")
AddEventHandler("skinshop:setHat",function()
	vRP.playAnim(true,{"mp_masks@standard_car@ds@","put_on_mask"},true)

	Citizen.Wait(900)

	if GetPedPropIndex(PlayerPedId(),0) == skinData["hat"]["item"] then
		ClearPedProp(PlayerPedId(),0)
	else
		SetPedPropIndex(PlayerPedId(),0,skinData["hat"]["item"],skinData["hat"]["texture"],1)
	end

	vRP.DeletarObjeto("one")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETGLASSES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:setGlasses")
AddEventHandler("skinshop:setGlasses",function()
	vRP.playAnim(true,{"clothingspecs","take_off"},true)

	Citizen.Wait(1000)

	if GetPedPropIndex(PlayerPedId(),1) == skinData["glass"]["item"] then
		ClearPedProp(PlayerPedId(),1)
	else
		SetPedPropIndex(PlayerPedId(),1,skinData["glass"]["item"],skinData["glass"]["texture"],2)
	end

	vRP.DeletarObjeto("one")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETARMS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:setArms")
AddEventHandler("skinshop:setArms", function()
	if GetPedDrawableVariation(PlayerPedId(),3) == skinData["arms"]["item"] then
		SetPedComponentVariation(PlayerPedId(),3,15,0,1)
	else
		SetPedComponentVariation(PlayerPedId(),3,skinData["arms"]["item"],skinData["arms"]["texture"],1)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETCUSTOMIZATION
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.getCustomization()
	return skinData
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE ITENS
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.updateClothes(tipo,item,textura)
	local ped = PlayerPedId()

	if textura == nil then
		textura = 0
	end
	
	if tipo == "oculos" then
		SetPedPropIndex(ped, 1, item,textura,2)
	elseif tipo == "chapeu" then
		SetPedPropIndex(ped, 0, item,textura,2)
	elseif tipo == "colete" then
		SetPedComponentVariation(ped, 9,item,textura,2)
	elseif tipo == "acessorio" then
		SetPedComponentVariation(ped, 7,item,textura,2)
	elseif tipo == "sapato" then
		SetPedComponentVariation(ped, 6,item,textura,2)
	elseif tipo == "mochila" then
		SetPedComponentVariation(ped, 5,item,textura,2)
	elseif tipo == "mascara" then
		SetPedComponentVariation(ped, 1,item,textura,2)
	elseif tipo == "jaqueta" then
		SetPedComponentVariation(ped, 11,item,textura,2)
	elseif tipo == "mao" then
		SetPedComponentVariation(ped, 3,item,textura,2)
	elseif tipo == "calca" then
		SetPedComponentVariation(ped, 4,item,textura,2)
	elseif tipo == "blusa" then
		SetPedComponentVariation(ped, 8,item,textura,2)
	elseif tipo == "mochila" then
		SetPedComponentVariation(ped, 5,item,textura,2)
	end
	
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,100)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 400
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,100)
end



-----------------------------------------------------------------------------------------------------------------------------------------
-- /MASCARA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("mascara")
AddEventHandler("mascara",function(index,color)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 then
		if index == nil then
			vRP._playAnim(true,{{"missfbi4","takeoff_mask"}},false)
			Wait(700)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,1,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") or GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"mp_masks@standard_car@ds@","put_on_mask"}},false)
			Wait(1500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,1,parseInt(index),parseInt(color),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /blusa
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("blusa")
AddEventHandler("blusa",function(index,color)
	local ped = PlayerPedId()
		if GetEntityHealth(ped) > 101 then
		if index == nil then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,8,15,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,8,parseInt(index),parseInt(color),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,8,parseInt(index),parseInt(color),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /jaqueta
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("jaqueta")
AddEventHandler("jaqueta",function(index,color)
	local ped = PlayerPedId()
		if GetEntityHealth(ped) > 101 then
		if index == nil then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			SetPedComponentVariation(ped,11,15,0,2)
			ClearPedTasks(ped)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,11,parseInt(index),parseInt(color),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			SetPedComponentVariation(ped,11,parseInt(index),parseInt(color),2)
			ClearPedTasks(ped)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /colete
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setcolete')
AddEventHandler('setcolete',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 then
		if not modelo then
			SetPedComponentVariation(ped,9,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			SetPedComponentVariation(ped,9,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			SetPedComponentVariation(ped,9,parseInt(modelo),parseInt(cor),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /calca
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("calca")
AddEventHandler("calca",function(index,color)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 then
		if index == nil then
			if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
				vRP._playAnim(true,{{"clothingtrousers","try_trousers_neutral_c"}},false)
				Wait(3000)
				ClearPedTasks(ped)
				SetPedComponentVariation(ped,4,18,0,2)
			elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
				SetPedComponentVariation(ped,4,15,0,2)
			end
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingtrousers","try_trousers_neutral_c"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,4,parseInt(index),parseInt(color),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingtrousers","try_trousers_neutral_c"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,4,parseInt(index),parseInt(color),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /maos
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("maos")
AddEventHandler("maos",function(index,color)
	local ped = PlayerPedId()
		if GetEntityHealth(ped) > 101 then
		if index == nil then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,3,15,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,3,parseInt(index),parseInt(color),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			Wait(3000)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,3,parseInt(index),parseInt(color),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /acess
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("acessorios")
AddEventHandler("acessorios",function(index,color)
	local ped = PlayerPedId()
		if GetEntityHealth(ped) > 101 then
		if index == nil then
			SetPedComponentVariation(ped,7,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			SetPedComponentVariation(ped,7,parseInt(index),parseInt(color),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			SetPedComponentVariation(ped,7,parseInt(index),parseInt(color),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /mochila
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("mochila")
AddEventHandler("mochila",function(index,color)
	local ped = PlayerPedId()
		if GetEntityHealth(ped) > 101 then
		if index == nil then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			SetPedComponentVariation(ped,5,42,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			SetPedComponentVariation(ped,5,parseInt(index),parseInt(color),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(true,{{"clothingshirt","try_shirt_positive_d"}},false)
			SetPedComponentVariation(ped,5,parseInt(index),parseInt(color),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /sapatos
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("sapatos")
AddEventHandler("sapatos",function(index,color)
	local ped = PlayerPedId()
		if GetEntityHealth(ped) > 101 then
		if index == nil then
			vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)
			if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)
			Wait(3000)
			ClearPedTasks(ped)
				SetPedComponentVariation(ped,6,34,0,2)
			elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)	
			Wait(3000)
			ClearPedTasks(ped)
				SetPedComponentVariation(ped,6,35,0,2)
			end
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
		vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)		
		Wait(3000)
		ClearPedTasks(ped)
			SetPedComponentVariation(ped,6,parseInt(index),parseInt(color),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
		vRP._playAnim(false,{{"clothingshoes","try_shoes_positive_d"}},false)	
		Wait(3000)
		ClearPedTasks(ped)	
			SetPedComponentVariation(ped,6,parseInt(index),parseInt(color),2)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /CHAPEU
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("chapeu")
AddEventHandler("chapeu",function(index,color)
	local ped = PlayerPedId()
	if index == nil then
		vRP.playAnim(true,{{"veh@common@fp_helmet@","take_off_helmet_stand",1}},false)
		Wait(700)
		ClearPedProp(ped,0)
		return
	end
	if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
		vRP.playAnim(true,{{"veh@common@fp_helmet@","put_on_helmet",1}},false)
		Wait(1700)
		SetPedPropIndex(ped,0,parseInt(index),parseInt(color),2)
	elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
		vRP.playAnim(true,{{"veh@common@fp_helmet@","put_on_helmet",1}},false)
		Wait(1700)
		SetPedPropIndex(ped,0,parseInt(index),parseInt(color),2)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /OCULOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("oculos")
AddEventHandler("oculos",function(index,color)
	local ped = PlayerPedId()
	if index == nil then
		vRP._playAnim(true,{"mini@ears_defenders","takeoff_earsdefenders_idle"},false)
		Wait(400)
		ClearPedTasks(ped)
		ClearPedProp(ped,1)
		return
	end
	if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
		vRP._playAnim(true,{"mp_masks@standard_car@ds@","put_on_mask"},false)
		Wait(800)
		ClearPedTasks(ped)
		SetPedPropIndex(ped,1,parseInt(index),parseInt(color),2)
	elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
		vRP._playAnim(true,{"mp_masks@standard_car@ds@","put_on_mask"},false)
		Wait(800)
		ClearPedTasks(ped)
		SetPedPropIndex(ped,1,parseInt(index),parseInt(color),2)
	end
end)

RegisterNetEvent("orelhas")
AddEventHandler("orelhas",function(index,color)
	local ped = PlayerPedId()
		if GetEntityHealth(ped) > 101 then
		if index == nil then
			vRP.playAnim(true,{"misscommon@std_take_off_masks","take_off_mask_ps",1},false)
			Wait(400)
			ClearPedTasks(ped)
			ClearPedProp(ped,1)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP.playAnim(true,{"misscommon@van_put_on_masks","put_on_mask_ps",1},false)
			Wait(800)
			ClearPedTasks(ped)
			SetPedPropIndex(ped,2,parseInt(index),parseInt(color),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(true,{"misscommon@van_put_on_masks","put_on_mask_ps",1},false)
			Wait(800)
			ClearPedTasks(ped)
			SetPedPropIndex(ped,2,parseInt(index),parseInt(color),2)
		end
	end
end)