--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local coords = vec3(159.57,-1008.6,29.55)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- THREAD
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    while true do
        local SLEEP_TIME = 1000
        local plyCoords = GetEntityCoords(PlayerPedId())

        local dist = #(plyCoords - coords)
        if dist <= 10 then
            SLEEP_TIME = 0
            DrawMarker(25, coords.x,coords.y,coords.z-0.95,0,0,0,0,0,0,1.0,1.0,1.0, 230,0,0,80, 0,0,0,1)

            if dist <= 3 then
                drawTxt("PRESSIONE  ~r~E~w~  PARA ABRIR A LOJA E APROVEITEM O NOSSO CUPOM",4,0.5,0.93,0.50,255,255,255,180)
                if IsControlJustPressed(0,38) then
                    OpenNuiVip()
                end
            end
        end
        
        Wait( SLEEP_TIME )
    end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OpenNuiVip()
    SendNUIMessage({ action = "vipsystem" })
end

function drawTxt(text, font, x, y, scale, r, g, b, a)
	SetTextFont(font)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end
