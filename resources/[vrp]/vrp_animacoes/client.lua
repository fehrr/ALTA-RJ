local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
src = {}
Tunnel.bindInterface("animacoes",src)
vSERVER = Tunnel.getInterface("animacoes")
local fov_min = 5.0
local fov_max = 70.0
local binoculos = false
local camera = false
local fov = (fov_max+fov_min)*0.5

local animacoes = {
	{ nome = "lanalight1" , dict = "lunyx@mic@p10" , anim = "mic@p10" , andar = true , loop = true, flag = 49, hand = 28422},
	{ nome = "lanalight2" , dict = "lunyx@mic@p3" , anim = "mic@p3" , andar = true , loop = true, flag = 49, hand = 28422},
	{ nome = "lanalight3" , dict = "lunyx@mic@p9" , anim = "mic@p9" , andar = true , loop = true, flag = 49, hand = 28422},
	{ nome = "lanalight4" , dict = "lunyx@mic@p4" , anim = "mic@p4" , andar = true , loop = true, flag = 49, hand = 28422},
	{ nome = "radio2" , prop = "prop_boombox_01" , flag = 50 , hand = 57005 , pos1 = 0.30 , pos2 = 0 , pos3 = 0 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "bolsa" , prop = "prop_ld_case_01" , flag = 50 , hand = 57005 , pos1 = 0.16 , pos2 = 0 , pos3 = 0 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "bolsa2" , prop = "prop_ld_case_01_s" , flag = 50 , hand = 57005 , pos1 = 0.16 , pos2 = 0 , pos3 = 0 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "bolsa3" , prop = "prop_security_case_01" , flag = 50 , hand = 57005 , pos1 = 0.16 , pos2 = 0 , pos3 = -0.01 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "bolsa4" , prop = "w_am_case" , flag = 50 , hand = 57005 , pos1 = 0.08 , pos2 = 0 , pos3 = 0 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "bolsa5" , prop = "prop_ld_suitcase_01" , flag = 50 , hand = 57005 , pos1 = 0.39 , pos2 = 0 , pos3 = 0 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "bolsa6" , prop = "xm_prop_x17_bag_med_01a" , flag = 50 , hand = 57005 , pos1 = 0.39 , pos2 = 0 , pos3 = 0 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "caixa2" , prop = "prop_tool_box_04" , flag = 50 , hand = 57005 , pos1 = 0.45 , pos2 = 0 , pos3 = 0.05 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "lixo" , prop = "prop_cs_rub_binbag_01" , flag = 50 , hand = 57005 , pos1 = 0.11 , pos2 = 0 , pos3 = 0.0 , pos4 = 0 , pos5 = 260.0 , pos6 = 60.0 },
	{ nome = "mic" , prop = "prop_microphone_02" , flag = 50 , hand = 60309 , pos1 = 0.08 , pos2 = 0.03 , pos3 = 0.0 , pos4 = 240.0 , pos5 = 0.0 , pos6 = 0.0 },
	{ nome = "mic2" , prop = "p_ing_microphonel_01" , flag = 50 , hand = 60309 , pos1 = 0.08 , pos2 = 0.03 , pos3 = 0.0 , pos4 = 240.0 , pos5 = 0.0 , pos6 = 0.0 },
	{ nome = "mic3" , dict = "missfra1" , anim = "mcs2_crew_idle_m_boom" , prop = "prop_v_bmike_01" , flag = 50 , hand = 28422 },
	{ nome = "buque" , prop = "prop_snow_flower_02" , flag = 50 , hand = 60309 , pos1 = 0.0 , pos2 = 0.0 , pos3 = 0.0 , pos4 = 300.0 , pos5 = 0.0 , pos6 = 0.0 },
	{ nome = "rosa" , prop = "prop_single_rose" , flag = 50 , hand = 60309 , pos1 = 0.055 , pos2 = 0.05 , pos3 = 0.0 , pos4 = 240.0 , pos5 = 0.0 , pos6 = 0.0 },
	{ nome = "prebeber" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "prop_fib_coffee" , flag = 49 , hand = 28422 },
	{ nome = "prebeber" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "prop_fib_coffee" , flag = 49 , hand = 28422 },
	{ nome = "prebeber2" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "prop_ld_flow_bottle" , flag = 49 , hand = 28422 },
	{ nome = "prebeber3" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "prop_cs_bs_cup" , flag = 49 , hand = 28422 },
	{ nome = "verificar" , dict = "amb@medic@standing@tendtodead@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "mexer" , dict = "amb@prop_human_parking_meter@female@idle_a" , anim = "idle_a_female" , andar = true , loop = true },
	{ nome = "cuidar" , dict = "mini@cpr@char_a@cpr_str" , anim = "cpr_pumpchest" , andar = true , loop = true },
	{ nome = "cuidar2" , dict = "mini@cpr@char_a@cpr_str" , anim = "cpr_kol" , andar = true , loop = true },
	{ nome = "cuidar3" , dict = "mini@cpr@char_a@cpr_str" , anim = "cpr_kol_idle" , andar = true , loop = true },
	{ nome = "cansado" , dict = "rcmbarry" , anim = "idle_d" , andar = false , loop = true },
	{ nome = "meleca" , dict = "anim@mp_player_intuppernose_pick" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "bora" , dict = "missfam4" , anim = "say_hurry_up_a_trevor" , andar = true , loop = false },
	{ nome = "limpar" , dict = "missfbi3_camcrew" , anim = "final_loop_guy" , andar = true , loop = false },
	{ nome = "galinha" , dict = "random@peyote@chicken" , anim = "wakeup" , andar = true , loop = true },
	{ nome = "amem" , dict = "rcmepsilonism8" , anim = "worship_base" , andar = true , loop = true },
	{ nome = "nervoso" , dict = "rcmme_tracey1" , anim = "nervous_loop" , andar = true , loop = true },
	{ nome = "morrer" , dict = "misslamar1dead_body" , anim = "dead_idle" , andar = false , loop = true },
	{ nome = "ajoelhar", dict = "amb@medic@standing@kneel@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "sinalizar" , dict = "amb@world_human_car_park_attendant@male@base" , anim = "base" , prop = "prop_parking_wand_01" , flag = 49 , hand = 28422 },
	{ nome = "placa" , dict = "amb@world_human_bum_freeway@male@base" , anim = "base" , prop = "prop_beggers_sign_01" , flag = 49 , hand = 28422 },
	{ nome = "placa2" , dict = "amb@world_human_bum_freeway@male@base" , anim = "base" , prop = "prop_beggers_sign_03" , flag = 49 , hand = 28422 },
	{ nome = "placa3" , dict = "amb@world_human_bum_freeway@male@base" , anim = "base" , prop = "prop_beggers_sign_04" , flag = 49 , hand = 28422 },
	{ nome = "abanar" , dict = "timetable@amanda@facemask@base" , anim = "base" , andar = true , loop = true },
	{ nome = "cocada" , dict = "mp_player_int_upperarse_pick" , anim = "mp_player_int_arse_pick" , andar = true , loop = true },
	{ nome = "cocada2" , dict = "mp_player_int_uppergrab_crotch" , anim = "mp_player_int_grab_crotch" , andar = true , loop = true },
	{ nome = "lero" , dict = "anim@mp_player_intselfiejazz_hands" , anim = "idle_a" , andar = true , loop = false },
	{ nome = "dj2" , dict = "anim@mp_player_intupperair_synth" , anim = "idle_a_fp" , andar = false , loop = true },
	{ nome = "beijo" , dict = "anim@mp_player_intselfieblow_kiss" , anim = "exit" , andar = true , loop = false },
	{ nome = "malicia" , dict = "anim@mp_player_intupperdock" , anim = "idle_a" , andar = true , loop = false },
	{ nome = "ligar" , dict = "cellphone@" , anim = "cellphone_call_in" , prop = "prop_amb_phone" , flag = 50 , hand = 28422 },
	{ nome = "radio" , dict = "cellphone@" , anim = "cellphone_call_in" , prop = "prop_cs_hand_radio" , flag = 50 , hand = 28422 },
	{ nome = "cafe" , dict = "amb@world_human_aa_coffee@base" , anim = "base" , prop = "prop_fib_coffee" , flag = 50 , hand = 28422 },
	{ nome = "cafe2" , dict = "amb@world_human_aa_coffee@idle_a" , anim = "idle_a" , prop = "prop_fib_coffee" , flag = 49 , hand = 28422 },
	{ nome = "caixa" , dict = "anim@heists@box_carry@" , anim = "idle" , prop = "hei_prop_heist_box" , flag = 50 , hand = 28422 },
	-- { nome = "balao" , dict = "amb@world_human_drinking@coffee@male@base" , anim = "base" , prop = "balloonnos" , flag = 50 , hand = 28422, item = "pipibalao" },
	{ nome = "chuva" , dict = "amb@world_human_drinking@coffee@male@base" , anim = "base" , prop = "p_amb_brolly_01" , flag = 50 , hand = 28422 },

	-- { nome = "xuxa" , dict = "amb@world_human_drinking@coffee@male@idle_a" , anim = "idle_c" , prop = "placaxuxa" , flag = 50 , hand = 28422 },
	-- { nome = "xuxa2" , dict = "amb@world_human_drinking@coffee@male@idle_a" , anim = "idle_c" , prop = "placaxuxa1" , flag = 50 , hand = 28422 },
	-- { nome = "xuxa3" , dict = "amb@world_human_drinking@coffee@male@idle_a" , anim = "idle_c" , prop = "placaxuxa2" , flag = 50 , hand = 28422 },

	{ nome = "chuva2" , dict = "amb@world_human_drinking@coffee@male@base" , anim = "base" , prop = "p_amb_brolly_01_s" , flag = 50 , hand = 28422 },
	{ nome = "comer" , dict = "amb@code_human_wander_eating_donut@male@idle_a" , anim = "idle_c" , prop = "prop_cs_burger_01" , flag = 49 , hand = 28422 },
	{ nome = "comer2" , dict = "amb@code_human_wander_eating_donut@male@idle_a" , anim = "idle_c" , prop = "prop_cs_hotdog_01" , flag = 49 , hand = 28422 },
	{ nome = "comer3" , dict = "amb@code_human_wander_eating_donut@male@idle_a" , anim = "idle_c" , prop = "prop_amb_donut" , flag = 49 , hand = 28422 },
	{ nome = "beber" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "p_cs_bottle_01" , flag = 49 , hand = 28422 },
	{ nome = "beber2" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "prop_energy_drink" , flag = 49 , hand = 28422 },
	{ nome = "beber3" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "prop_amb_beer_bottle" , flag = 49 , hand = 28422 },
	{ nome = "beber4" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "p_whiskey_notop" , flag = 49 , hand = 28422 },
	{ nome = "beber5" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "prop_beer_logopen" , flag = 49 , hand = 28422 },
	{ nome = "beber6" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "prop_beer_blr" , flag = 49 , hand = 28422 },
	{ nome = "beber7" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "prop_ld_flow_bottle" , flag = 49 , hand = 28422 },
	{ nome = "digitar" , dict = "anim@heists@prison_heistig1_p1_guard_checks_bus" , anim = "loop" , andar = false , loop = true },
	{ nome = "continencia" , dict = "mp_player_int_uppersalute" , anim = "mp_player_int_salute" , andar = true , loop = true },
	{ nome = "continencia2" , dict = "genesismods@salute" , anim = "salute" , andar = false , loop = false },
	{ nome = "naruto" , dict = "missfbi1" , anim = "ledge_loop" , andar = true , loop = true },
	{ nome = "naruto2" , dict = "missfam5_yoga" , anim = "a2_pose" , andar = true , loop = true },
	{ nome = "rebolar" , dict = "switch@trevor@mocks_lapdance" , anim = "001443_01_trvs_28_idle_stripper" , andar = false , loop = true },
	{ nome = "celebrar" , dict = "rcmfanatic1celebrate" , anim = "celebrate" , andar = false , loop = false },
	{ nome = "tablet" , dict = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a" , anim = "idle_b" , prop = "prop_cs_tablet" , flag = 49 , hand = 60309 , item = "tablet" },
	{ nome = "gas" , dict = "anim@heists@box_carry@" , anim = "idle" , prop = "prop_gascyl_01a" , flag = 50 , mao = 28422 },
	{ nome = "atm" , dict = "amb@prop_human_atm@male@idle_a" , anim = "idle_a" , andar = false , loop = false },
	{ nome = "nao" , dict = "mp_player_int_upper_nod" , anim = "mp_player_int_nod_no" , andar = true , loop = true },
	{ nome = "nao2" , dict = "anim@heists@ornate_bank@chat_manager", anim = "fail", andar = true, loop = false },
	{ nome = "palmas" , dict = "anim@mp_player_intcelebrationfemale@slow_clap" , anim = "slow_clap" , andar = true , loop = false },
	{ nome = "palmas2" , dict = "amb@world_human_cheering@male_b" , anim = "base" , andar = true , loop = true },
	{ nome = "palmas3" , dict = "amb@world_human_cheering@male_d" , anim = "base" , andar = true , loop = true },
	{ nome = "palmas4" , dict = "amb@world_human_cheering@male_e" , anim = "base" , andar = true , loop = true },
	{ nome = "palmas5" , dict = "anim@arena@celeb@flat@solo@no_props@" , anim = "angry_clap_a_player_a" , andar = false , loop = true },
	{ nome = "palmas6" , dict = "anim@mp_player_intupperslow_clap" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "palmas7" , dict = "amb@world_human_strip_watch_stand@male_c@idle_a", anim = "idle_b", andar = false, loop = true },
	{ nome = "postura" , dict = "anim@heists@prison_heiststation@cop_reactions" , anim = "cop_a_idle" , andar = true , loop = true },
	{ nome = "postura2" , dict = "amb@world_human_cop_idles@female@base" , anim = "base" , andar = true , loop = true },
	{ nome = "postura3" , dict = "mini@strip_club@idles@bouncer@base" , anim = "base" , andar = true , loop = true },
	{ nome = "dedos" , dict = "anim@mp_player_intupperfinger" , anim = "idle_a_fp" , andar = true , loop = true },
	{ nome = "varrer" , dict = "amb@world_human_janitor@male@idle_a" , anim = "idle_a" , prop = "prop_tool_broom" , flag = 49 , hand = 28422, item ="vassoura" },
	{ nome = "musica" , dict = "amb@world_human_musician@guitar@male@base" , anim = "base" , prop = "prop_el_guitar_01" , flag = 49 , hand = 60309 },
	{ nome = "musica2" , dict = "amb@world_human_musician@guitar@male@base" , anim = "base" , prop = "prop_el_guitar_02" , flag = 49 , hand = 60309 },
	{ nome = "musica3" , dict = "amb@world_human_musician@guitar@male@base" , anim = "base" , prop = "prop_el_guitar_03" , flag = 49 , hand = 60309 },
	{ nome = "musica4" , dict = "amb@world_human_musician@guitar@male@base" , anim = "base" , prop = "prop_acc_guitar_01" , flag = 49 , hand = 60309 },
	{ nome = "camera" , dict = "amb@world_human_paparazzi@male@base" , anim = "base" , prop = "prop_pap_camera_01" , flag = 49 , hand = 28422 },
	{ nome = "camera2" , dict = "missfinale_c2mcs_1" , anim = "fin_c2_mcs_1_camman" , prop = "prop_v_cam_01" , flag = 49 , hand = 28422 },
	{ nome = "prancheta" , dict = "amb@world_human_clipboard@male@base" , anim = "base" , prop = "p_amb_clipboard_01" , flag = 50 , hand = 60309, item = "prancheta" },
	{ nome = "mapa" , dict = "amb@world_human_clipboard@male@base" , anim = "base" , prop = "prop_tourist_map_01" , flag = 50 , hand = 60309 },
	{ nome = "anotar" , dict = "amb@medic@standing@timeofdeath@base" , anim = "base" , prop = "prop_notepad_01" , flag = 49 , hand = 60309 }, -- prop_police_phone
	{ nome = "anotar2" , dict = "cellphone@" , anim = "cellphone_text_in" , prop = "prop_police_phone" , flag = 50 , hand = 28422 }, -- prop_police_phone
	{ nome = "peace" , dict = "mp_player_int_upperpeace_sign" , anim = "mp_player_int_peace_sign" , andar = true , loop = true },
	{ nome = "peace2" , dict ="anim@mp_player_intupperpeace" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "w" , dict = "anim@mp_player_intcelebrationmale@bang_bang" , anim = "bang_bang" , andar = true , loop = false },
	{ nome = "w2" , dict = "anim@mp_player_intcelebrationmale@air_drums" , anim = "air_drums" , andar = true , loop = false },
	{ nome = "w3" , dict = "anim@mp_player_intcelebrationmale@call_me" , anim = "call_me" , andar = true , loop = false },
	{ nome = "w4" , dict = "anim@mp_player_intcelebrationmale@coin_roll_and_toss" , anim = "coin_roll_and_toss" , andar = true , loop = false },
	{ nome = "w5" , dict = "anim@mp_player_intcelebrationmale@mind_blown" , anim = "mind_blown" , andar = true , loop = false },
	{ nome = "w6" , dict = "anim@mp_player_intcelebrationmale@respect" , anim = "respect" , andar = true , loop = false },
	{ nome = "w7" , dict = "anim@amb@casino@hangout@ped_male@stand@01a@base" , anim = "base" , andar = true , loop = true },
	{ nome = "w8" , dict = "anim@amb@casino@hangout@ped_male@stand@01b@enter" , anim = "enter" , andar = true , loop = false },
	{ nome = "w9" , dict = "anim@amb@casino@hangout@ped_male@stand@01b@exit" , anim = "exit" , andar = true , loop = false },
	{ nome = "tossir" , dict = "timetable@gardener@smoking_joint" , anim = "idle_cough" , andar = true , loop = false },
	{ nome = "joia3" , dict = "anim@mp_player_intupperthumbs_up", anim = "idle_a", andar = true, loop = false },
	{ nome = "lavarmao" , dict = "missheist_agency3aig_23", anim = "urinal_sink_loop", andar = false, loop = true },
	{ nome = "checkout" , dict = "anim@amb@carmeet@checkout_car@male_a@idles", anim = "idle_b", andar = false, loop = false },
	{ nome = "checkout2" , dict = "anim@amb@carmeet@checkout_car@male_c@idles", anim = "idle_a", andar = false, loop = true },
	{ nome = "noway" , dict = "oddjobs@towingpleadingbase", anim = "base", andar = false, loop = false },
	{ nome = "noway2" , dict = "gestures@m@car@std@casual@ds", anim = "gesture_no_way", andar = false, loop = false },
	{ nome = "why" , dict = "random@shop_robbery_reactions@", anim = "is_this_it", andar = false, loop = false },
	{ nome = "explicar" , dict = "random@shop_robbery_reactions@", anim = "shock", andar = false, loop = false },
	{ nome = "bonzinho" , dict = "missclothing", anim = "good_choice_storeclerk", andar = false, loop = false },
	{ nome = "sunbathem" , dict = "amb@world_human_sunbathe@male@back@idle_a", anim = "idle_c", andar = false, loop = true },


	--[[ { nome = "deitar" , dict = "anim@gangops@morgue@table@" , anim = "body_search" , andar = false , loop = true , extra = function()
		local ped = PlayerPedId()
		local x,y,z = table.unpack(GetEntityCoords(ped))
		for k,v in pairs(beds) do
			local object = GetClosestObjectOfType(x,y,z,0.9,v[1],0,0,0)
			if DoesEntityExist(object) then
				local x2,y2,z2 = table.unpack(GetEntityCoords(object))

				SetEntityCoords(ped,x2,y2,z2+v[2])
				SetEntityHeading(ped,GetEntityHeading(object)+v[3]-180.0)
			end
		end
	end }, ]]

	{ nome = "deitar2" , dict = "amb@world_human_sunbathe@female@front@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "deitar3" , dict = "amb@world_human_sunbathe@male@back@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "deitar4" , dict = "amb@world_human_sunbathe@male@front@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "deitar5" , dict = "mini@cpr@char_b@cpr_str" , anim = "cpr_kol_idle" , andar = false , loop = true },
	{ nome = "deitar6" , dict = "switch@trevor@scares_tramp" , anim = "trev_scares_tramp_idle_tramp" , andar = false , loop = true },
	{ nome = "deitar7" , dict = "switch@trevor@annoys_sunbathers" , anim = "trev_annoys_sunbathers_loop_girl" , andar = false , loop = true },		
	{ nome = "deitar8" , dict = "switch@trevor@annoys_sunbathers" , anim = "trev_annoys_sunbathers_loop_guy" , andar = false , loop = true },

	
	{ nome = "dildo" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "prop_cs_dildo_01" , flag = 49 , hand = 28422 },
	{ nome = "dildo2" , prop = "prop_cs_dildo_01" , flag = 50 , hand = 60309 , pos1 = 0.055 , pos2 = 0.05 , pos3 = 0.0 , pos4 = 240.0 , pos5 = 0.0 , pos6 = 0.0 },
	{ nome = "dildo3" , prop = "v_res_d_dildo_f" , flag = 50 , hand = 60309 , pos1 = 0.055 , pos2 = 0.05 , pos3 = 0.0 , pos4 = 240.0 , pos5 = 0.0 , pos6 = 0.0 },
	{ nome = "dildo4" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "v_res_d_dildo_f" , flag = 49 , hand = 28422 },
	{ nome = "dildo5" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "v_res_d_dildo_b" , flag = 49 , hand = 28422 },
	{ nome = "dildo6" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "v_res_d_dildo_c" , flag = 49 , hand = 28422 },
	{ nome = "dildo7" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "v_res_d_dildo_a" , flag = 49 , hand = 28422 },
	{ nome = "dildo8" , prop = "v_res_d_dildo_a" , flag = 50 , hand = 60309 , pos1 = 0.055 , pos2 = 0.05 , pos3 = 0.0 , pos4 = 240.0 , pos5 = 0.0 , pos6 = 0.0 },

	{ nome = "vela" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "v_res_fa_candle04" , flag = 49 , hand = 28422 },
	{ nome = "vela2" , dict = "amb@code_human_wander_drinking@beer@male@base" , anim = "static" , prop = "v_res_fa_candle01" , flag = 49 , hand = 28422 },

	{ nome = "debrucar" , dict = "amb@prop_human_bum_shopping_cart@male@base" , anim = "base" , andar = false , loop = true },
	{ nome = "tchau" , dict =  "anim@mp_player_intupperwave" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "debochar", anim = "WORLD_HUMAN_HANG_OUT_STREET", ProibidoArmado = true  },
	{ nome = "seguranca", anim = "WORLD_HUMAN_GUARD_STAND", ProibidoArmado = true  },
	{ nome = "assaltar" , dict = "random@countryside_gang_fight" , anim = "biker_02_stickup_loop" , andar = false , loop = true },
	{ nome = "rendido" , dict = "missminuteman_1ig_2" , anim = "handsup_base" , andar = false , loop = true },
	{ nome = "mano" , dict = "mp_ped_interaction" , anim = "hugs_guy_b" , andar = false , loop = true },
	{ nome = "baixo" , dict = "gestures@f@standing@casual" , anim = "gesture_hand_down" , andar = true , loop = false },
	{ nome = "espreguicar" , dict = "amb@world_human_jog_standing@female@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "toctoc" , dict = "missheistfbi3b_ig7" , anim = "lift_fibagent_loop" , andar = false , loop = true },



	-- ########################
	-- ######## danças ########
	-- ########################

	{ nome = "dancar" , dict = "rcmnigel1bnmt_1b" , anim = "dance_loop_tyler" , andar = false , loop = true },
	{ nome = "dancar2" , dict = "mp_safehouse" , anim = "lap_dance_girl" , andar = false , loop = true },
	{ nome = "dancar3" , dict = "misschinese2_crystalmazemcs1_cs" , anim = "dance_loop_tao" , andar = false , loop = true },
	{ nome = "dancar4" , dict = "mini@strip_club@private_dance@part1" , anim = "priv_dance_p1" , andar = false , loop = true },
	{ nome = "dancar5" , dict = "mini@strip_club@private_dance@part2" , anim = "priv_dance_p2" , andar = false , loop = true },
	{ nome = "dancar6" , dict = "mini@strip_club@private_dance@part3" , anim = "priv_dance_p3" , andar = false , loop = true },
	{ nome = "dancar7" , dict = "special_ped@mountain_dancer@monologue_2@monologue_2a" , anim = "mnt_dnc_angel" , andar = false , loop = true },
	{ nome = "dancar8" , dict = "special_ped@mountain_dancer@monologue_3@monologue_3a" , anim = "mnt_dnc_buttwag" , andar = false , loop = true },
	{ nome = "dancar9" , dict = "missfbi3_sniping" , anim = "dance_m_default" , andar = false , loop = true },
	{ nome = "dancar10" , dict = "anim@amb@nightclub@dancers@black_madonna_entourage@" , anim = "hi_dance_facedj_09_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar11" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar12" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar13" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar14" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar15" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar16" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar17" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar18" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar19" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar20" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar21" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar22" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar23" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar24" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar25" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar26" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar27" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar28" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar29" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar30" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar31" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar32" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar33" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar34" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_09_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar35" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar36" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar37" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar38" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar39" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar40" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar41" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar42" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar43" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar44" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar45" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar46" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar47" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar48" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar49" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar50" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar51" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar52" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar53" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar54" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar55" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar56" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar57" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar58" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_11_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar59" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar60" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar61" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar62" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar63" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar64" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar65" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar66" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar67" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar68" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar69" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar70" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar71" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar72" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar73" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar74" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar75" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar76" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar77" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar78" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar79" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar80" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar81" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar82" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_13_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar83" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar84" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar85" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar86" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar87" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar88" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar89" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar90" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar91" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar92" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar93" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar94" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar95" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar96" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar97" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar98" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar99" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar100" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar101" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar102" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar103" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar104" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar105" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar106" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_15_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar107" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar108" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar109" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar110" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar111" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar112" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar113" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar114" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar115" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar116" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar117" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar118" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar119" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar120" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar121" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar122" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar123" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar124" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar125" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar126" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar127" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar128" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar129" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar130" , dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , anim = "hi_dance_facedj_17_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar131" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar132" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar133" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar134" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar135" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar136" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar137" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar138" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar139" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar140" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar141" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar142" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar143" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar144" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar145" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar146" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar147" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar148" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar149" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar150" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar151" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar152" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar153" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar154" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_09_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar155" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar156" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar157" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar158" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar159" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar160" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar161" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar162" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar163" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar164" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar165" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar166" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_11_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar167" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar168" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar169" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar170" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar171" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar172" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar173" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar174" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar175" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar176" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar177" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar178" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_13_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar179" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar180" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar181" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar182" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar183" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar184" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar185" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar186" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar187" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar188" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar189" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar190" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar191" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar192" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar193" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar194" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar195" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar196" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar197" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar198" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar199" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar200" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar201" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar202" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_15_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar203" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar204" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_female^2" , andar = false , loop = true },
	{ nome = "dancar205" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_female^3" , andar = false , loop = true },
	{ nome = "dancar206" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_female^4" , andar = false , loop = true },
	{ nome = "dancar207" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_female^5" , andar = false , loop = true },
	{ nome = "dancar208" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_female^6" , andar = false , loop = true },
	{ nome = "dancar209" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_male^1" , andar = false , loop = true },
	{ nome = "dancar210" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_male^2" , andar = false , loop = true },
	{ nome = "dancar211" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_male^3" , andar = false , loop = true },
	{ nome = "dancar212" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_male^4" , andar = false , loop = true },
	{ nome = "dancar213" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_male^5" , andar = false , loop = true },
	{ nome = "dancar214" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v1_male^6" , andar = false , loop = true },
	{ nome = "dancar215" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_female^1" , andar = false , loop = true },
	{ nome = "dancar216" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_female^2" , andar = false , loop = true },
	{ nome = "dancar217" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_female^3" , andar = false , loop = true },
	{ nome = "dancar218" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_female^4" , andar = false , loop = true },
	{ nome = "dancar219" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_female^5" , andar = false , loop = true },
	{ nome = "dancar220" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_female^6" , andar = false , loop = true },
	{ nome = "dancar221" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_male^1" , andar = false , loop = true },
	{ nome = "dancar222" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_male^2" , andar = false , loop = true },
	{ nome = "dancar223" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_male^3" , andar = false , loop = true },
	{ nome = "dancar224" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_male^4" , andar = false , loop = true },
	{ nome = "dancar225" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar226" , dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , anim = "hi_dance_crowd_17_v2_male^6" , andar = false , loop = true },
	{ nome = "dancar227" , dict = "anim@amb@nightclub@lazlow@hi_podium@" , anim = "danceidle_hi_11_buttwiggle_b_laz" , andar = false , loop = true },
	{ nome = "dancar228" , dict = "timetable@tracy@ig_5@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "dancar229" , dict = "anim@mp_player_intupperfind_the_fish" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "dancar230" , dict = "anim@amb@nightclub@dancers@podium_dancers@" , anim = "hi_dance_facedj_17_v2_male^5" , andar = false , loop = true },
	{ nome = "dancar231" , dict = "anim@amb@nightclub@dancers@solomun_entourage@" , anim = "mi_dance_facedj_17_v1_female^1" , andar = false , loop = true },
	{ nome = "dancar232" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_center" , andar = false , loop = true },
	{ nome = "dancar233" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_center_down" , andar = false , loop = true },
	{ nome = "dancar234" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_center_up" , andar = false , loop = true },
	{ nome = "dancar235" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_left" , andar = false , loop = true },
	{ nome = "dancar236" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_left_down" , andar = false , loop = true },
	{ nome = "dancar237" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_left_up" , andar = false , loop = true },
	{ nome = "dancar238" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_right" , andar = false , loop = true },
	{ nome = "dancar239" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_right_down" , andar = false , loop = true },
	{ nome = "dancar240" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "high_right_up" , andar = false , loop = true },
	{ nome = "dancar241" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_center" , andar = false , loop = true },
	{ nome = "dancar242" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_center_down" , andar = false , loop = true },
	{ nome = "dancar243" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_center_up" , andar = false , loop = true },
	{ nome = "dancar244" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_left" , andar = false , loop = true },
	{ nome = "dancar245" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_left_down" , andar = false , loop = true },
	{ nome = "dancar246" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_left_up" , andar = false , loop = true },
	{ nome = "dancar247" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_right" , andar = false , loop = true },
	{ nome = "dancar248" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_right_down" , andar = false , loop = true },
	{ nome = "dancar249" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "low_right_up" , andar = false , loop = true },
	{ nome = "dancar250" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_center" , andar = false , loop = true },
	{ nome = "dancar251" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_center_down" , andar = false , loop = true },
	{ nome = "dancar252" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_center_up" , andar = false , loop = true },
	{ nome = "dancar253" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_left" , andar = false , loop = true },
	{ nome = "dancar254" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_left_down" , andar = false , loop = true },
	{ nome = "dancar255" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_left_up" , andar = false , loop = true },
	{ nome = "dancar256" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_right" , andar = false , loop = true },
	{ nome = "dancar257" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_right_down" , andar = false , loop = true },
	{ nome = "dancar258" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , anim = "med_right_up" , andar = false , loop = true },
	{ nome = "dancar259" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_center" , andar = false , loop = true },
	{ nome = "dancar260" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_center_down" , andar = false , loop = true },
	{ nome = "dancar261" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_center_up" , andar = false , loop = true },
	{ nome = "dancar262" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_left" , andar = false , loop = true },
	{ nome = "dancar263" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_left_down" , andar = false , loop = true },
	{ nome = "dancar264" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_left_up" , andar = false , loop = true },
	{ nome = "dancar265" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_right" , andar = false , loop = true },
	{ nome = "dancar266" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_right_down" , andar = false , loop = true },
	{ nome = "dancar267" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "high_right_up" , andar = false , loop = true },
	{ nome = "dancar268" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_center" , andar = false , loop = true },
	{ nome = "dancar269" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_center_down" , andar = false , loop = true },
	{ nome = "dancar270" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_center_up" , andar = false , loop = true },
	{ nome = "dancar271" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_left" , andar = false , loop = true },
	{ nome = "dancar272" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_left_down" , andar = false , loop = true },
	{ nome = "dancar273" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_left_up" , andar = false , loop = true },
	{ nome = "dancar274" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_right" , andar = false , loop = true },
	{ nome = "dancar275" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_right_down" , andar = false , loop = true },
	{ nome = "dancar276" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "low_right_up" , andar = false , loop = true },
	{ nome = "dancar277" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_center" , andar = false , loop = true },
	{ nome = "dancar278" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_center_down" , andar = false , loop = true },
	{ nome = "dancar279" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_center_up" , andar = false , loop = true },
	{ nome = "dancar280" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_left" , andar = false , loop = true },
	{ nome = "dancar281" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_left_down" , andar = false , loop = true },
	{ nome = "dancar282" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_left_up" , andar = false , loop = true },
	{ nome = "dancar283" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_right" , andar = false , loop = true },
	{ nome = "dancar284" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_right_down" , andar = false , loop = true },
	{ nome = "dancar285" , dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , anim = "med_right_up" , andar = false , loop = true },
	{ nome = "dancar286" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_center" , andar = false , loop = true },
	{ nome = "dancar287" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_center_down" , andar = false , loop = true },
	{ nome = "dancar288" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_center_up" , andar = false , loop = true },
	{ nome = "dancar289" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_left" , andar = false , loop = true },
	{ nome = "dancar290" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_left_down" , andar = false , loop = true },
	{ nome = "dancar291" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_left_up" , andar = false , loop = true },
	{ nome = "dancar292" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_right" , andar = false , loop = true },
	{ nome = "dancar293" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_right_down" , andar = false , loop = true },
	{ nome = "dancar294" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "high_right_up" , andar = false , loop = true },
	{ nome = "dancar295" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_center" , andar = false , loop = true },
	{ nome = "dancar296" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_center_down" , andar = false , loop = true },
	{ nome = "dancar297" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_center_up" , andar = false , loop = true },
	{ nome = "dancar298" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_left" , andar = false , loop = true },
	{ nome = "dancar299" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_left_down" , andar = false , loop = true },
	{ nome = "dancar300" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_left_up" , andar = false , loop = true },
	{ nome = "dancar301" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_right" , andar = false , loop = true },
	{ nome = "dancar302" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_right_down" , andar = false , loop = true },
	{ nome = "dancar303" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "low_right_up" , andar = false , loop = true },
	{ nome = "dancar304" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_center" , andar = false , loop = true },
	{ nome = "dancar305" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_center_down" , andar = false , loop = true },
	{ nome = "dancar306" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_center_up" , andar = false , loop = true },
	{ nome = "dancar307" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_left" , andar = false , loop = true },
	{ nome = "dancar308" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_left_down" , andar = false , loop = true },
	{ nome = "dancar309" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_left_up" , andar = false , loop = true },
	{ nome = "dancar310" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_right" , andar = false , loop = true },
	{ nome = "dancar311" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_right_down" , andar = false , loop = true },
	{ nome = "dancar312" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , anim = "med_right_up" , andar = false , loop = true },
	{ nome = "dancar313" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_center" , andar = false , loop = true },
	{ nome = "dancar314" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_center_down" , andar = false , loop = true },
	{ nome = "dancar315" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_center_up" , andar = false , loop = true },
	{ nome = "dancar316" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_left" , andar = false , loop = true },
	{ nome = "dancar317" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_left_down" , andar = false , loop = true },
	{ nome = "dancar318" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_left_up" , andar = false , loop = true },
	{ nome = "dancar319" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_right" , andar = false , loop = true },
	{ nome = "dancar320" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_right_down" , andar = false , loop = true },
	{ nome = "dancar321" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "high_right_up" , andar = false , loop = true },
	{ nome = "dancar322" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_center" , andar = false , loop = true },
	{ nome = "dancar323" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_center_down" , andar = false , loop = true },
	{ nome = "dancar324" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_center_up" , andar = false , loop = true },
	{ nome = "dancar325" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_left" , andar = false , loop = true },
	{ nome = "dancar326" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_left_down" , andar = false , loop = true },
	{ nome = "dancar327" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_left_up" , andar = false , loop = true },
	{ nome = "dancar328" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_right" , andar = false , loop = true },
	{ nome = "dancar329" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_right_down" , andar = false , loop = true },
	{ nome = "dancar330" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "low_right_up" , andar = false , loop = true },
	{ nome = "dancar331" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_center" , andar = false , loop = true },
	{ nome = "dancar332" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_center_down" , andar = false , loop = true },
	{ nome = "dancar333" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_center_up" , andar = false , loop = true },
	{ nome = "dancar334" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_left" , andar = false , loop = true },
	{ nome = "dancar335" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_left_down" , andar = false , loop = true },
	{ nome = "dancar336" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_left_up" , andar = false , loop = true },
	{ nome = "dancar337" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_right" , andar = false , loop = true },
	{ nome = "dancar338" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_right_down" , andar = false , loop = true },
	{ nome = "dancar339" , dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , anim = "med_right_up" , andar = false , loop = true },
	{ nome = "dancar340" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_center" , andar = false , loop = true },
	{ nome = "dancar341" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_center_down" , andar = false , loop = true },
	{ nome = "dancar342" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_center_up" , andar = false , loop = true },
	{ nome = "dancar343" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_left" , andar = false , loop = true },
	{ nome = "dancar344" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_left_down" , andar = false , loop = true },
	{ nome = "dancar345" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_left_up" , andar = false , loop = true },
	{ nome = "dancar346" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_right" , andar = false , loop = true },
	{ nome = "dancar347" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_right_down" , andar = false , loop = true },
	{ nome = "dancar348" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "high_right_up" , andar = false , loop = true },
	{ nome = "dancar349" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_center" , andar = false , loop = true },
	{ nome = "dancar350" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_center_down" , andar = false , loop = true },
	{ nome = "dancar351" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_center_up" , andar = false , loop = true },
	{ nome = "dancar352" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_left" , andar = false , loop = true },
	{ nome = "dancar353" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_left_down" , andar = false , loop = true },
	{ nome = "dancar354" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_left_up" , andar = false , loop = true },
	{ nome = "dancar355" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_right" , andar = false , loop = true },
	{ nome = "dancar356" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_right_down" , andar = false , loop = true },
	{ nome = "dancar357" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "low_right_up" , andar = false , loop = true },
	{ nome = "dancar358" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_center" , andar = false , loop = true },
	{ nome = "dancar359" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_center_down" , andar = false , loop = true },
	{ nome = "dancar360" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_center_up" , andar = false , loop = true },
	{ nome = "dancar361" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_left" , andar = false , loop = true },
	{ nome = "dancar362" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_left_down" , andar = false , loop = true },
	{ nome = "dancar363" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_left_up" , andar = false , loop = true },
	{ nome = "dancar364" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_right" , andar = false , loop = true },
	{ nome = "dancar365" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_right_down" , andar = false , loop = true },
	{ nome = "dancar366" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , anim = "med_right_up" , andar = false , loop = true },
	{ nome = "dancar367" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_center" , andar = false , loop = true },	
	{ nome = "dancar368" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_center_down" , andar = false , loop = true },	
	{ nome = "dancar369" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_center_up" , andar = false , loop = true },	
	{ nome = "dancar370" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_left" , andar = false , loop = true },	
	{ nome = "dancar371" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_left_down" , andar = false , loop = true },	
	{ nome = "dancar372" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_left_up" , andar = false , loop = true },	
	{ nome = "dancar373" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_right" , andar = false , loop = true },	
	{ nome = "dancar374" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_right_down" , andar = false , loop = true },	
	{ nome = "dancar375" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "high_right_up" , andar = false , loop = true },	
	{ nome = "dancar376" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_center" , andar = false , loop = true },	
	{ nome = "dancar377" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_center_down" , andar = false , loop = true },	
	{ nome = "dancar378" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_center_up" , andar = false , loop = true },	
	{ nome = "dancar379" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_left" , andar = false , loop = true },	
	{ nome = "dancar380" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_left_down" , andar = false , loop = true },	
	{ nome = "dancar381" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_left_up" , andar = false , loop = true },	
	{ nome = "dancar382" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_right" , andar = false , loop = true },	
	{ nome = "dancar383" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_right_down" , andar = false , loop = true },	
	{ nome = "dancar384" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "low_right_up" , andar = false , loop = true },	
	{ nome = "dancar385" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_center" , andar = false , loop = true },	
	{ nome = "dancar386" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_center_down" , andar = false , loop = true },	
	{ nome = "dancar387" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_center_up" , andar = false , loop = true },	
	{ nome = "dancar388" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_left" , andar = false , loop = true },	
	{ nome = "dancar389" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_left_down" , andar = false , loop = true },	
	{ nome = "dancar390" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_left_up" , andar = false , loop = true },	
	{ nome = "dancar391" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_right" , andar = false , loop = true },	
	{ nome = "dancar392" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_right_down" , andar = false , loop = true },	
	{ nome = "dancar393" , dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , anim = "med_right_up" , andar = false , loop = true },
	{ nome = "dancar394" , dict = "anim@mp_player_intcelebrationfemale@shooting" , anim = "shooting" , andar = false , loop = true },
	{ nome = "dancar395" , dict = "anim@mp_player_intcelebrationmale@shooting" , anim = "shooting" , andar = false , loop = true },
	{ nome = "dancar396" , dict = "anim@mp_player_intuppershooting" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "dancar397" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_a_f02" , andar = false , loop = true },
	{ nome = "dancar398" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_a_m01" , andar = false , loop = true },
	{ nome = "dancar399" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_a_m02" , andar = false , loop = true },
	{ nome = "dancar400" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_a_m03" , andar = false , loop = true },
	{ nome = "dancar401" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_b_f01" , andar = false , loop = true },
	{ nome = "dancar402" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_b_f02" , andar = false , loop = true },
	{ nome = "dancar403" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_b_f03" , andar = false , loop = true },
	{ nome = "dancar404" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_b_m01" , andar = false , loop = true },
	{ nome = "dancar405" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_b_m02" , andar = false , loop = true },
	{ nome = "dancar406" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_b_m03" , andar = false , loop = true },
	{ nome = "dancar407" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_c_f01" , andar = false , loop = true },
	{ nome = "dancar408" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_c_f02" , andar = false , loop = true },
	{ nome = "dancar409" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_c_f03" , andar = false , loop = true },
	{ nome = "dancar410" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_c_m01" , andar = false , loop = true },
	{ nome = "dancar411" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_c_m02" , andar = false , loop = true },
	{ nome = "dancar412" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_c_m03" , andar = false , loop = true },
	{ nome = "dancar413" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_d_f01" , andar = false , loop = true },
	{ nome = "dancar414" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_d_f02" , andar = false , loop = true },
	{ nome = "dancar415" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_d_f03" , andar = false , loop = true },
	{ nome = "dancar416" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_d_m01" , andar = false , loop = true },
	{ nome = "dancar417" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_d_m02" , andar = false , loop = true },
	{ nome = "dancar418" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_d_m03" , andar = false , loop = true },
	{ nome = "dancar419" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_e_f02" , andar = false , loop = true },
	{ nome = "dancar420" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_f_f02" , andar = false , loop = true },
	{ nome = "dancar421" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_loop_f01" , andar = false , loop = true },
	{ nome = "dancar422" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_loop_f02" , andar = false , loop = true },
	{ nome = "dancar423" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_loop_f03" , andar = false , loop = true },
	{ nome = "dancar424" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_loop_m01" , andar = false , loop = true },
	{ nome = "dancar425" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_loop_m02" , andar = false , loop = true },
	{ nome = "dancar426" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_loop_m03" , andar = false , loop = true },
	{ nome = "dancar427" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_li_f01" , andar = false , loop = true },
	{ nome = "dancar428" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_li_f02" , andar = false , loop = true },
	{ nome = "dancar429" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_li_f03" , andar = false , loop = true },
	{ nome = "dancar430" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_li_m01" , andar = false , loop = true },
	{ nome = "dancar431" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_li_m02" , andar = false , loop = true },
	{ nome = "dancar432" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_li_m03" , andar = false , loop = true },
	{ nome = "dancar433" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_mi_f01" , andar = false , loop = true },
	{ nome = "dancar434" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_mi_f02" , andar = false , loop = true },
	{ nome = "dancar435" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_mi_f03" , andar = false , loop = true },
	{ nome = "dancar436" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_mi_m01" , andar = false , loop = true },
	{ nome = "dancar437" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_mi_m02" , andar = false , loop = true },
	{ nome = "dancar438" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_mi_m03" , andar = false , loop = true },
	{ nome = "dancar439" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_si_f01" , andar = false , loop = true },
	{ nome = "dancar440" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_ti_f01" , andar = false , loop = true },
	{ nome = "dancar441" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_ti_f02" , andar = false , loop = true },
	{ nome = "dancar442" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_to_ti_f03" , andar = false , loop = true },
	{ nome = "dancar443" , dict = "anim@amb@nightclub_island@dancers@club@" , anim = "hi_idle_a_f01" , andar = false , loop = true },	
	
	
	{ nome = 'tiktok' , dict = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_b@' , anim = 'low_left_up' , andar = false , loop = true },    
    { nome = 'tiktok2' , dict = 'anim@amb@nightclub@mini@dance@dance_paired@dance_f@' , anim = 'ped_a_dance_idle' , andar = false , loop = true },    
    { nome = 'tiktok3' , dict = 'anim@amb@nightclub@mini@dance@dance_paired@dance_f@' , anim = 'ped_b_dance_idle' , andar = false , loop = true },    
    { nome = 'tiktok4' , dict = 'anim@amb@nightclub@mini@dance@dance_paired@dance_h@' , anim = 'ped_a_dance_idle' , andar = false , loop = true },    
    { nome = 'tiktok5' , dict = 'anim@amb@nightclub@mini@dance@dance_paired@dance_h@' , anim = 'ped_b_dance_idle' , andar = false , loop = true },    
    { nome = 'tiktok6' , dict = 'anim@amb@nightclub@mini@dance@dance_paired@dance_j@' , anim = 'ped_a_dance_idle' , andar = false , loop = true },    
    { nome = 'tiktok7' , dict = 'anim@amb@nightclub@mini@dance@dance_paired@dance_m@' , anim = 'ped_a_dance_idle' , andar = false , loop = true },    
    { nome = 'tiktok8' , dict = 'anim@amb@nightclub_island@dancers@club@' , anim = 'hi_idle_a_f02' , andar = false , loop = true },    
    { nome = 'tiktok9' , dict = 'anim@amb@nightclub_island@dancers@club@' , anim = 'mi_idle_b_f02' , andar = false , loop = true },    
    { nome = 'tiktok10' , dict = 'anim@mp_player_intcelebrationfemale@crowd_invitation' , anim = 'crowd_invitation' , andar = false , loop = true },    
    { nome = 'tiktok11' , dict = 'anim@mp_player_intcelebrationfemale@driver' , anim = 'driver' , andar = false , loop = true },    
    { nome = 'tiktok12' , dict = 'anim@mp_player_intcelebrationfemale@shooting' , anim = 'shooting' , andar = false , loop = true },    
    { nome = 'tiktok13' , dict = 'anim@mp_player_intcelebrationmale@shooting' , anim = 'shooting' , andar = false , loop = true },    
    { nome = 'tiktok14' , dict = 'anim@mp_player_intcelebrationmale@suck_it' , anim = 'suck_it' , andar = false , loop = true },    
    { nome = 'tiktok15' , dict = 'anim@mp_player_intuppercrowd_invitation' , anim = 'idle_a' , andar = false , loop = true },    
    { nome = 'tiktok16' , dict = 'anim@mp_player_intuppershooting' , anim = 'idle_a' , andar = false , loop = true },    
    { nome = 'tiktok17' , dict = 'anim@mp_player_intuppersuck_it' , anim = 'idle_a' , andar = false , loop = true },
	{ nome = "tiktok18" , dict = "custom@downward_fortnite" , anim = "Downward_fortnite" , andar = false , loop = true },
	{ nome = "tiktok19" , dict = "custom@pullup" , anim = "pullup" , andar = false , loop = true },
	{ nome = "tiktok20" , dict = "custom@rollie" , anim = "rollie" , andar = false , loop = true },
	{ nome = "tiktok21" , dict = "custom@wanna_see_me" , anim = "wanna_see_me" , andar = false , loop = true },
	{ nome = "tiktok22" , dict = "custom@billybounce" , anim = "billybounce" , andar = false , loop = true },
	{ nome = "tiktok23" , dict = "custom@bellydance" , anim = "bellydance" , andar = false , loop = true },
	{ nome = "tiktok24" , dict = "custom@hiphop_slide" , anim = "hiphop_slide" , andar = false , loop = true },
	{ nome = "tiktok25" , dict = "custom@hiphop1" , anim = "hiphop1" , andar = false , loop = true },
	{ nome = "tiktok26" , dict = "custom@hiphop2" , anim = "hiphop2" , andar = false , loop = true },
	{ nome = "tiktok27" , dict = "custom@hiphop3" , anim = "hiphop3" , andar = false , loop = true },
	{ nome = "tiktok28" , dict = "custom@hiphop90s" , anim = "hiphop90s" , andar = false , loop = true },
	{ nome = "tiktok29" , dict = "custom@dragonballz" , anim = "dragonballz" , andar = false , loop = true },
	{ nome = "tiktok30" , dict = "custom@hiphop_pumpup" , anim = "hiphop_pumpup" , andar = false , loop = true },
	{ nome = "tiktok31" , dict = "custom@salsatime" , anim = "salsatime" , andar = false , loop = true },
	{ nome = "tiktok32" , dict = "custom@samba" , anim = "samba" , andar = false , loop = true },
	{ nome = "tiktok33" , dict = "custom@shockdance" , anim = "shockdance" , andar = false , loop = true },
	{ nome = "tiktok34" , dict = "custom@specialdance" , anim = "specialdance" , andar = false , loop = true },
	{ nome = "tiktok35" , dict = "custom@dancemoves" , anim = "dancemoves" , andar = false , loop = true },
	{ nome = "tiktok36" , dict = "custom@disco_dance" , anim = "disco_dance" , andar = false , loop = true },
	{ nome = "tiktok37" , dict = "custom@electroshuffle_original" , anim = "electroshuffle_original" , andar = false , loop = true },
	{ nome = "tiktok38" , dict = "custom@electroshuffle" , anim = "electroshuffle" , andar = false , loop = true },
	{ nome = "tiktok39" , dict = "custom@robotdance_fortnite" , anim = "robotdance_fortnite" , andar = false , loop = true },
	{ nome = "tiktok40" , dict = "custom@frightfunk" , anim = "frightfunk" , andar = false , loop = true },
	{ nome = "tiktok41" , dict = "custom@in_da_party" , anim = "in_da_party" , andar = false , loop = true },
	{ nome = "tiktok42" , dict = "custom@smooth_moves" , anim = "smooth_moves" , andar = false , loop = true },
	{ nome = "tiktok43" , dict = "custom@footwork" , anim = "footwork" , andar = false , loop = true },
	{ nome = "tiktok44" , dict = "custom@headspin" , anim = "headspin" , andar = false , loop = true },
	{ nome = "tiktok45" , dict = "custom@hiphop_yeah" , anim = "hiphop_yeah" , andar = false , loop = true },
	{ nome = "tiktok46" , dict = "custom@toetwist" , anim = "toetwist" , andar = false , loop = true },
	{ nome = "tiktok47" , dict = "custom@crossbounce" , anim = "crossbounce" , andar = false , loop = true },
	{ nome = "tiktok48" , dict = "custom@dont_start" , anim = "dont_start" , andar = false , loop = true },
	{ nome = "tiktok49" , dict = "custom@floss" , anim = "floss" , andar = false , loop = true },
	{ nome = "tiktok50" , dict = "custom@orangejustice" , anim = "orangejustice" , andar = false , loop = true },
	{ nome = "tiktok51" , dict = "custom@renegade" , anim = "renegade" , andar = false , loop = true },
	{ nome = "tiktok52" , dict = "custom@rickroll" , anim = "rickroll" , andar = false , loop = true },
	{ nome = "tiktok53" , dict = "custom@savage" , anim = "savage" , andar = false , loop = true },
	{ nome = "tiktok54" , dict = "custom@sayso" , anim = "sayso" , andar = false , loop = true },
	{ nome = "tiktok55" , dict = "custom@take_l" , anim = "take_l" , andar = false , loop = true },
	{ nome = "tiktok56" , dict = "custom@toosie_slide" , anim = "toosie_slide" , andar = false , loop = true },
	{ nome = "tiktok57" , dict = "custom@around_the_clock" , anim = "around_the_clock" , andar = false , loop = true },
	{ nome = "tiktok58" , dict = "custom@fresh_fortnite" , anim = "fresh_fortnite" , andar = false , loop = true },
	{ nome = "tiktok59" , dict = "custom@gylphic" , anim = "gylphic" , andar = false , loop = true },
	{ nome = "tiktok60" , dict = "custom@gloss" , anim = "gloss" , andar = false , loop = true },
	{ nome = "tiktok61" , dict = "custom@last_forever" , anim = "last_forever" , andar = false , loop = true },
	{ nome = "tiktok62" , dict = "custom@introducing" , anim = "introducing" , andar = false , loop = true },
	{ nome = "tiktok63" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "sing_a_song_1" , andar = false , loop = true },
	{ nome = "tiktok64" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "sing_a_song_2" , andar = false , loop = true },
	{ nome = "tiktok65" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "sing_a_song_3" , andar = false , loop = true },
	{ nome = "tiktok66" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "sing_a_song_4" , andar = false , loop = true },
	{ nome = "tiktok67" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "sing_a_song_5" , andar = false , loop = true },
	{ nome = "tiktok68" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "up_beat_1" , andar = false , loop = true },
	{ nome = "tiktok69" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "up_beat_2" , andar = false , loop = true },
	{ nome = "tiktok70" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "up_beat_3" , andar = false , loop = true },
	{ nome = "tiktok71" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "up_beat_4" , andar = false , loop = true },
	{ nome = "tiktok72" , dict = "jazzrockabillybluesetc_singer@anim" , anim = "up_beat_5" , andar = false , loop = true },
	{ nome = "tiktok73" , dict= "divined@tdances@new" , anim = "dtdance2" , andar =false , loop = true },
	{ nome = "tiktok74" , dict= "divined@tdances@new" , anim = "dtdance3" , andar =false , loop = true },
	{ nome = "tiktok75" , dict= "divined@tdances@new" , anim = "dtdance12" , andar =false , loop = true },
	{ nome = "tiktok76" , dict= "divined@tdances@new" , anim = "dtdance13" , andar =false , loop = true },
	{ nome = "tiktok77" , dict= "divined@tdances@new" , anim = "dtdance1" , andar =false , loop = true },
	{ nome = "tiktok78" , dict= "divined@tdances@new" , anim = "dtdance20" , andar =false , loop = true },
	{ nome = "tiktok79" , dict= "divined@tdances@new" , anim = "dtdance21" , andar =false , loop = true },
	{ nome = "tiktok80" , dict= "divined@tdances@new" , anim = "dtdance22" , andar =false , loop = true },
	{ nome = "tiktok81" , dict= "divined@fndances@new" , anim = "dbdance2" , andar =false , loop = true },
	{ nome = "tiktok82" , dict= "divined@fndances@new" , anim = "dbdance3" , andar =false , loop = true },
	{ nome = "tiktok83" , dict= "behere@danceanimation" , anim = "behere_clip" , andar = false , loop = true },
	{ nome = "tiktok84" , dict= "divined@fndances@new" , anim = "dbdance12" , andar =false , loop = true },
	{ nome = "tiktok85" , dict= "divined@fndances@new" , anim = "dbdance13" , andar =false , loop = true },
	{ nome = "tiktok86" , dict= "divined@fndances@new" , anim = "dbdance1" , andar =false , loop = true },
	{ nome = "tiktok87" , dict= "divined@fndances@new" , anim = "dbdance20" , andar =false , loop = true },
	{ nome = "tiktok88" , dict= "divined@fndances@new" , anim = "dbdance21" , andar =false , loop = true },
	{ nome = "tiktok89" , dict= "divined@dancesv2@new" , anim = "divdance1" , andar =false , loop = true },
	{ nome = "tiktok90" , dict= "divined@dancesv2@new" , anim = "divdance2" , andar =false , loop = true },
	{ nome = "tiktok91" , dict= "divined@dancesv2@new" , anim = "divdance3" , andar =false , loop = true },
	{ nome = "tiktok92" , dict= "comrade@danceanimation" , anim = "comrade_clip" , andar = false , loop = true },
	{ nome = "tiktok93" , dict= "divined@dancesv2@new" , anim = "divdance12" , andar =false , loop = true },
	{ nome = "tiktok94" , dict= "divined@dancesv2@new" , anim = "divdance13" , andar =false , loop = true },
	{ nome = "tiktok95" , dict= "divined@dancesv2@new" , anim = "divdance1" , andar =false , loop = true },
	{ nome = "tiktok96" , dict= "divined@pack@new" , anim = "dpack_1" , andar =false , loop = true },
	{ nome = "tiktok97" , dict= "divined@pack@new" , anim = "dpack_2" , andar =false , loop = true },
	{ nome = "tiktok98" , dict= "divined@pack@new" , anim = "dpack_3" , andar =false , loop = true },
	{ nome = "tiktok99" , dict= "jumpinglow@danceanimation" , anim = "jumpinglow_clip" , andar = false , loop = true },
	{ nome = "tiktok100" , dict= "divined@pack@new" , anim = "dpack_12" , andar =false , loop = true },
	{ nome = "tiktok101" , dict= "divined@pack@new" , anim = "dpack_13" , andar =false , loop = true },
	{ nome = "tiktok102" , dict= "divined@pack@new" , anim = "dpack_1" , andar =false , loop = true },
	{ nome = "tiktok103" , dict= "div@gdances@test" , anim = "zombiewalk" , andar =false , loop = true },
	{ nome = "tiktok104" , dict= "div@gdances@test" , anim = "spinny" , andar =false , loop = true },
	{ nome = "tiktok105" , dict= "div@gdances@test" , anim = "skeldance" , andar =false , loop = true },
	{ nome = "tiktok106" , dict= "div@gdances@test" , anim = "ashton" , andar =false , loop = true },
	{ nome = "tiktok107" , dict= "div@gdances@test" , anim = "charleston" , andar =false , loop = true },
	{ nome = "tiktok108" , dict= "div@gdances@test" , anim = "doggystrut" , andar =false , loop = true },
	{ nome = "tiktok109" , dict= "div@gdances@test" , anim = "dreamfeet" , andar =false , loop = true },
	{ nome = "tiktok110" , dict= "div@gdances@test" , anim = "eerie" , andar =false , loop = true },
	{ nome = "tiktok111" , dict= "div@gdances@test" , anim = "fancyfeet" , andar =false , loop = true },
	{ nome = "tiktok112" , dict= "div@gdances@test" , anim = "festivus" , andar =false , loop = true },
	{ nome = "tiktok113" , dict= "div@gdances@test" , anim = "flamingo" , andar =false , loop = true },
	{ nome = "tiktok114" , dict= "div@gdances@test" , anim = "fresh" , andar =false , loop = true },
	{ nome = "tiktok115" , dict= "div@gdances@test" , anim = "getgriddy" , andar =false , loop = true },
	{ nome = "tiktok116" , dict= "div@gdances@test" , anim = "handstand" , andar =false , loop = true },
	{ nome = "tiktok117" , dict= "div@gdances@test" , anim = "imsmooth" , andar =false , loop = true },
	{ nome = "tiktok118" , dict= "div@gdances@test" , anim = "keepdance" , andar =false , loop = true },
	{ nome = "tiktok119" , dict= "div@gdances@test" , anim = "montecarlo" , andar =false , loop = true },
	{ nome = "tiktok120" , dict= "div@gdances@test" , anim = "octopus" , andar =false , loop = true },
	{ nome = "tiktok121" , dict= "div@gdances@test" , anim = "pointydance" , andar =false , loop = true },
	{ nome = "tiktok122" , dict= "div@gdances@test" , anim = "ridingdance" , andar =false , loop = true },
	{ nome = "tiktok123" , dict= "divined@dances@new" , anim = "ddance1" , andar =false , loop = true },
	{ nome = "tiktok124" , dict= "divined@dances@new" , anim = "ddance2" , andar =false , loop = true },
	{ nome = "tiktok125" , dict= "divined@dances@new" , anim = "ddance3" , andar =false , loop = true },
	{ nome = "tiktok126" , dict= "custom@bellydance2" , anim = "bellydance2" , andar = false , loop = true },
	{ nome = "tiktok127" , dict= "divined@dances@new" , anim = "ddance12" , andar =false , loop = true },
	{ nome = "tiktok128" , dict= "divined@dances@new" , anim = "ddance13" , andar =false , loop = true },
	{ nome = "tiktok129" , dict= "export@breakdance" , anim = "breakdance" , andar =false , loop = true },
	{ nome = "tiktok130" , dict= "custom@salsa" , anim = "salsa" , andar =false , loop = true },
	{ nome = "tiktok131" , dict= "custom@maraschino" , anim = "maraschino" , andar =false , loop = true },
	{ nome = "tiktok132" , dict= "custom@makarena" , anim = "makarena" , andar =false , loop = true },
	{ nome = "tiktok133" , dict= "custom@gangnamstyle" , anim = "gangnamstyle" , andar =false , loop = true },
	{ nome = "tiktok134" , dict= "custom@armwave" , anim = "armwave" , andar =false , loop = true },
	{ nome = "tiktok135" , dict= "custom@armswirl" , anim = "armswirl" , andar =false , loop = true },
	{ nome = "tiktok136" , dict = "custom@hitit" , anim = "hitit" , andar = false , loop = true },
    { nome = "tiktok137" , dict= "divined@drpack@new" , anim = "woowalkinx" , andar =false , loop = true },
	{ nome = "tiktok138" , dict= "divined@drpack@new" , anim = "bloodwalk" , andar =false , loop = true },
	{ nome = "tiktok139" , dict= "divined@drpack@new" , anim = "cripwalk3" , andar =false , loop = true },
	{ nome = "tiktok140" , dict= "divined@drpack@new" , anim = "shootit" , andar =false , loop = true },
	{ nome = "tiktok141" , dict= "divined@drpack@new" , anim = "millyrocks" , andar =false , loop = true },
	{ nome = "tiktok142" , dict= "divined@drpack@new" , anim = "shmoney" , andar =false , loop = true },
	{ nome = "tiktok143" , dict= "divined@drpack@new" , anim = "dougie" , andar =false , loop = true },
	{ nome = "tiktok144" , dict= "divined@drpack@new" , anim = "haiphuthon" , andar =false , loop = true },
	{ nome = "tiktok145" , dict= "divined@drpack@new" , anim = "curvette" , andar =false , loop = true },
	{ nome = "tiktok146" , dict= "divined@drpack@new" , anim = "tokyochall" , andar =false , loop = true },
	{ nome = "tiktok147" , dict= "divined@drpack@new" , anim = "thotiana" , andar =false , loop = true },
	{ nome = "tiktok148" , dict= "divined@drpack@new" , anim = "moodswings" , andar =false , loop = true },
	{ nome = "tiktok149" , dict= "divined@drpack@new" , anim = "whatyouknowboutlove" , andar =false , loop = true },
	{ nome = "tiktok150" , dict= "ninjastyle@dance" , anim = "ninja_clip" , andar = false , loop = true },
	{ nome = "tiktok151" , dict= "controllercrew@dance" , anim = "controllercrew_clip" , andar = false , loop = true },
	{ nome = "tiktok152" , dict= "tally@danceanimation" , anim = "tally_clip" , andar = false , loop = true },
	{ nome = "tiktok153" , dict= "springy@dance" , anim = "springy_clip" , andar = false , loop = true },
	{ nome = "tiktok154" , dict= "pullup@dance" , anim = "pullup_clip" , andar = false , loop = true },
	{ nome = "tiktok155" , dict= "outwest@dance" , anim = "outwest_clip" , andar = false , loop = true },
	{ nome = "tiktok156" , dict= "kpop@dance" , anim = "kpop_clip" , andar = false , loop = true },
	{ nome = "tiktok157" , dict= "indigo@dance" , anim = "indigo_clip" , andar = false , loop = true },
	{ nome = "tiktok158" , dict= "gomufasa@dance" , anim = "gomufasa_clip" , andar = false , loop = true },
	{ nome = "tiktok159" , dict= "dynamite@dance" , anim = "dynamite_clip" , andar = false , loop = true },
	{ nome = "tiktok158" , dict= "dinamites@dance" , anim = "dinamites_clip" , andar = false , loop = true },
	{ nome = "tiktok159" , dict= "dancecustom1@danceanimation" , anim = "dancecustom1_clip" , andar = false , loop = true },
	{ nome = "tiktok160" , dict= "dancecustom2@danceanimation" , anim = "dancecustom2_clip" , andar = false , loop = true },
	{ nome = "tiktok161" , dict= "dancecustom3@danceanimation" , anim = "dancecustom3_clip" , andar = false , loop = true },
	{ nome = "tiktok162" , dict = "poseanimada" , anim = "poseanimada_clip" , andar = false , loop = true },
	{ nome = "tiktok163" , dict= "tonal@danceanimation" , anim = "tonal_clip" , andar = false , loop = true },
	{ nome = "tiktok164" , dict= "sexydance@danceanimations" , anim = "sexydance" , andar = false , loop = true },
	{ nome = "tiktok165" , dict= "ondaonda@danceanimation" , anim = "onda_clip" , andar = false , loop = true },
	{ nome = "tiktok166" , dict= "layers@danceanimation" , anim = "layers_clip" , andar = false , loop = true },
	{ nome = "tiktok167" , dict= "dancing_wave_part_one@anim" , anim = "wave_dance_1" , andar = false , loop = true },
	{ nome = "tiktok168" , dict= "dancing_wave_part_one@anim" , anim = "wave_dance_2" , andar = false , loop = true },
	{ nome = "tiktok169" , dict= "dancing_wave_part_one@anim" , anim = "wave_dance_3" , andar = false , loop = true },
	{ nome = "tiktok170" , dict= "dancing_wave_part_one@anim" , anim = "wave_dance_4" , andar = false , loop = true },
	{ nome = "tiktok171" , dict= "dancing_wave_part_one@anim" , anim = "tutankhamun_dance_1" , andar = false , loop = true },
	{ nome = "tiktok172" , dict= "dancing_wave_part_one@anim" , anim = "tutankhamun_dance_2" , andar = false , loop = true },
	{ nome = "tiktok173" , dict= "dancing_wave_part_one@anim" , anim = "snake_dance_1" , andar = false , loop = true },
	{ nome = "tiktok174" , dict= "dancing_wave_part_one@anim" , anim = "slide_dance_2" , andar = false , loop = true },
	{ nome = "tiktok175" , dict= "dancing_wave_part_one@anim" , anim = "robot_dance" , andar = false , loop = true },
	{ nome = "tiktok176" , dict= "dancing_wave_part_one@anim" , anim = "locking_dance" , andar = false , loop = true },
	{ nome = "tiktok177" , dict= "dancing_wave_part_one@anim" , anim = "headspin" , andar = false , loop = true },
	{ nome = "tiktok178" , dict= "dancing_wave_part_one@anim" , anim = "flaire_dance" , andar = false , loop = true },
	{ nome = "tiktok179" , dict= "dancing_wave_part_one@anim" , anim = "crowd_girl_dance" , andar = false , loop = true },
	{ nome = "tiktok180" , dict= "dancing_wave_part_one@anim" , anim = "uprock_dance_1" , andar = false , loop = true },
	{ nome = "tiktok181" , dict= "dancing_wave_part_one@anim" , anim = "slide_dance" , andar = false , loop = true },

	-- { nome = "tiktok167", dict= "rollnrock@santorostore" , anim = "rocksantoro" , andar = false , loop = true },
	-- { nome = "tiktok168", dict= "ladidaeverglow@santorostore" , anim = "everglow_sant" , andar = false , loop = true },
	-- { nome = "tiktok169", dict= "pimpimpom@santorostore" , anim = "pompo_santoro" , andar = false , loop = true },
	-- { nome = "tiktok170", dict= "dreamscometrue@santorostore" , anim = "cometrue_santoro" , andar = false , loop = true },
	
	
	{ nome = "boquete" , dict = "misscarsteal2pimpsex",  anim = "pimpsex_hooker" , andar = false , loop = false },
    { nome = "boquete2" , dict = "misscarsteal2pimpsex",  anim = "pimpsex_punter" , andar = false , loop = false },
	{ nome = "punheta" , dict = "anim@mp_player_intselfiewank", anim = "enter" , andar = true , loop = false },
	{ nome = "creu" , dict = "anim@mp_player_intupperair_shagging", anim = "idle_a_fp" , andar = true , loop = false },
	
	{ nome = "sexo" , dict = "rcmpaparazzo_2" , anim = "shag_loop_poppy" , andar = false , loop = true },
	{ nome = "sexo2" , dict = "rcmpaparazzo_2" , anim = "shag_loop_a" , andar = false , loop = true },
	{ nome = "sexo3" , dict = "anim@mp_player_intcelebrationfemale@air_shagging" , anim = "air_shagging" , andar = false , loop = true },
	{ nome = "sexo4" , dict = "oddjobs@towing" , anim = "m_blow_job_loop" , andar = false , loop = true , carros = true },
	{ nome = "sexo5" , dict = "oddjobs@towing" , anim = "f_blow_job_loop" , andar = false , loop = true , carros = true },
	{ nome = "sexo6" , dict = "mini@prostitutes@sexlow_veh" , anim = "low_car_sex_loop_female" , andar = false , loop = true , carros = true },
	
	{ nome = "mindblown" , dict = "anim@mp_player_intcelebrationmale@mind_blown", anim = "mind_blown", andar = true, loop = true },
	{ nome = "mindblown2" , dict = "anim@mp_player_intcelebrationfemale@mind_blown", anim = "mind_blown", andar = true, loop = true },
	{ nome = "mindcontrol" , dict = "rcmbarry", anim = "bar_1_attack_idle_aln", andar = true, loop = true },
	{ nome = "mindcontrol2" , dict = "rcmbarry", anim = "mind_control_b_loop", andar = true, loop = true },
	{ nome = "screwyou" , dict = "misscommon@response", anim = "screw_you", andar = true, loop = false },
	{ nome = "wave" , dict = "random@mugging5", anim = "001445_01_gangintimidation_1_female_idle_b", andar = true, loop = true },
	{ nome = "wave2" , dict = "friends@fra@ig_1", anim = "over_here_idle_a", andar = true, loop = true },
	{ nome = "wave3" , dict = "friends@frj@ig_1", anim = "wave_e", andar = true, loop = true },
	{ nome = "wave4" , dict = "anim@mp_player_intcelebrationfemale@wave", anim = "wave", andar = true, loop = false },
	{ nome = "wave5" , dict = "friends@frj@ig_1", anim = "wave_c", andar = true, loop = false },
	{ nome = "wave6" , dict = "friends@frj@ig_1", anim = "wave_d", andar = true, loop = false },

	{ nome = "flipoff" , dict = "anim@arena@celeb@podium@no_prop@", anim = "flip_off_c_1st", andar = true, loop = true },
	{ nome = "bow" , dict = "anim@arena@celeb@podium@no_prop@", anim = "regal_c_1st", andar = true, loop = false },
	{ nome = "cabecada" , dict = "melee@unarmed@streamed_variations", anim = "plyr_takedown_front_headbutt", andar = true, loop = false },
	{ nome = "tapa" , dict = "melee@unarmed@streamed_variations" , anim = "plyr_takedown_front_slap" , andar = false , loop = false },
	{ nome = "damn" , dict = "gestures@m@standing@casual", anim = "gesture_damn", andar = true, loop = false },
	{ nome = "damn2" , dict = "misscommon@response", anim = "damn", andar = true, loop = false },
	{ nome = "handshake" , dict = "mp_ped_interaction", anim = "handshake_guy_a", andar = true, loop = false },
	{ nome = "handshake2" , dict = "mp_ped_interaction", anim = "handshake_guy_b", andar = true, loop = false },

	{ nome = "olhadinha" , dict = "random@paparazzi@peek", anim = "left_peek_a", andar = true, loop = true },
	{ nome = "banho" , dict = "mp_safehouseshower@male@", anim = "male_shower_idle_a", andar = true, loop = true },
	{ nome = "cokecut" , dict = "anim@amb@business@coc@coc_unpack_cut@", anim = "fullcut_cycle_v6_cokecutter", andar = true, loop = true },
	{ nome = "medo" , dict = "amb@code_human_cower@male@base", anim = "base", andar = true, loop = true },

	{ nome = "conv" , dict = "special_ped@jessie@monologue_5@monologue_5c", anim = "jessie_ig_1_p5_heressomthinginteresting_2", andar = true, loop = false },
	{ nome = "conv2" , dict = "special_ped@jessie@monologue_11@monologue_11c", anim = "jessie_ig_1_p11_canyouimagine_2", andar = true, loop = true },
	{ nome = "conv3" , dict = "rcmjosh4", anim = "beckon_a_cop_b", andar = true, loop = true },

	{ nome = "ohno" , dict = "misscommon@response", anim = "numbnuts", andar = true, loop = false },
	{ nome = "ohno2" , dict = "misscommon@response", anim = "give_me_a_break", andar = true, loop = false },
	{ nome = "sleep" , dict = "timetable@tracy@sleep@", anim = "idle_c", andar = false, loop = true, },
	{ nome = "fedor" , dict = "anim@mp_player_intcelebrationfemale@stinker", anim = "stinker", andar = true, loop = false },
	{ nome = "shrug" , dict = "gestures@m@standing@casual", anim = "gesture_shrug_hard", andar = true, loop = false },
	{ nome = "choque" , dict = "stungun@standing", anim = "damage", andar = false, loop = true },
	{ nome = "aranha" , dict = "missexile3", anim = "ex03_train_roof_idle", andar = false, loop = true },

	--[[ { nome = "sentar" , anim = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" , extra = function()
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        for k,v in pairs(chairs) do
            local object = GetClosestObjectOfType(x,y,z,0.7,GetHashKey(v[1]),0,0,0)
            if DoesEntityExist(object) then
                local x2,y2,z2 = table.unpack(GetEntityCoords(object))
                FreezeEntityPosition(object,true)
                SetEntityCoords(ped,x2,y2,z2+v[2])
                SetEntityHeading(ped,GetEntityHeading(object)-180.0)
            end
        end
    end }, ]]
	{ nome = "sentar2" , dict = "amb@world_human_picnic@male@base" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar3" , dict = "anim@heists@fleeca_bank@ig_7_jetski_owner" , anim = "owner_idle" , andar = false , loop = true },
	{ nome = "sentar4" , dict = "amb@world_human_stupor@male@base" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar5" , dict = "amb@world_human_picnic@female@base" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar6" , dict = "anim@amb@nightclub@lazlow@lo_alone@" , anim = "lowalone_base_laz" , andar = false , loop = true },
	{ nome = "sentar7" , dict = "anim@amb@business@bgen@bgen_no_work@" , anim = "sit_phone_phoneputdown_idle_nowork" , andar = false , loop = true },
	{ nome = "sentar8" , dict = "rcm_barry3" , anim = "barry_3_sit_loop" , andar = false , loop = true },
	{ nome = "sentar9" , dict = "amb@world_human_picnic@male@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "sentar10" , dict = "amb@world_human_picnic@female@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "sentar11" , dict = "timetable@jimmy@mics3_ig_15@" , anim = "idle_a_jimmy" , andar = false , loop = true },
	{ nome = "sentar12" , dict = "timetable@jimmy@mics3_ig_15@" , anim = "mics3_15_base_jimmy" , andar = false , loop = true },
	{ nome = "sentar13" , dict = "amb@world_human_stupor@male@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "sentar14" , dict = "timetable@tracy@ig_14@" , anim = "ig_14_base_tracy" , andar = false , loop = true },
	{ nome = "sentar15" , dict = "anim@heists@ornate_bank@hostages@hit" , anim = "hit_loop_ped_b" , andar = false , loop = true },
	{ nome = "sentar16" , dict = "anim@heists@ornate_bank@hostages@ped_e@" , anim = "flinch_loop" , andar = false , loop = true },
	{ nome = "sentar17" , dict = "timetable@ron@ig_5_p3" , anim = "ig_5_p3_base" , andar = false , loop = true },
	{ nome = "sentar18" , dict = "timetable@reunited@ig_10" , anim = "base_amanda" , andar = false , loop = true },
	{ nome = "sentar19" , dict = "timetable@ron@ig_3_couch" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar20" , dict = "timetable@jimmy@mics3_ig_15@" , anim = "mics3_15_base_tracy" , andar = false , loop = true },
	{ nome = "sentar21" , dict = "timetable@maid@couch@" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar22" , dict = "timetable@ron@ron_ig_2_alt1" , anim = "ig_2_alt1_base" , andar = false , loop = true },
	{ nome = "sentar23" , dict = "timetable@reunited@ig_10" , anim ="shouldntyouguys_jimmy" , andar = false , loop = true },
    { nome = "sentar24" , dict = "timetable@tracy@ig_2@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar25" , dict = "anim@amb@office@boss@female@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar26" , dict = "anim@amb@casino@out_of_money@ped_female@01a@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar27" , dict = "anim@amb@casino@out_of_money@ped_female@01b@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar28" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_female@engaged@01a@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar29" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_male@regular@01b@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar30" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_male@regular@02a@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar31" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_male@regular@02b@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar32" , dict = "anim_casino_a@amb@casino@games@slots@ped_female@regular@02a@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar33" , dict = "anim_casino_b@amb@casino@games@blackjack@ped_male@engaged@01a@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar34" , dict = "misslester1aig_3main" , anim ="air_guitar_01_a" , andar = false , loop = true },
    { nome = "sentar35" , dict = "missheistdocks2aleadinoutlsdh_2a_int" , anim ="sitting_loop_wade" , andar = false , loop = true },
    { nome = "sentar36" , dict = "switch@franklin@stripclub2" , anim ="ig_16_base" , andar = false , loop = true },
    { nome = "sentar37" , dict = "switch@michael@restaurant" , anim ="001510_02_gc_mics3_ig_1_base_amanda" , andar = false , loop = true },
    { nome = "sentar38" , dict = "switch@michael@ronex_ig_5_p2" , anim ="base_michael" , andar = false , loop = true },
    { nome = "sentar39" , dict = "timetable@amanda@facemask@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar40" , dict = "timetable@reunited@ig_7" , anim ="amandabase_amanda" , andar = false , loop = true },
    { nome = "sentar41" , dict = "timetable@tracy@ig_2@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar42" , dict = "mini@strip_club@backroom@" , anim ="leadin_loop_idle_c_stripper_c" , andar = false , loop = true },
    { nome = "sentar43" , dict = "timetable@trevor@smoking_meth@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar44" , dict = "switch@michael@sitting_on_car_premiere" , anim ="sitting_on_car_premiere_loop_player" , andar = false , loop = true },
    { nome = "sentar45" , dict = "mp_am_stripper" , anim ="lap_dance_player" , andar = false , loop = true },
    { nome = "sentar46" , dict = "switch@michael@opens_door_for_ama" , anim ="001895_02_mics3_17_opens_door_for_ama_idle_ama" , andar = false , loop = true },
    { nome = "sentar47" , dict = "switch@michael@lounge_chairs" , anim ="001523_01_mics3_9_lounge_chairs_idle_mic" , andar = false , loop = true },
    { nome = "sentar48" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_female@engaged@01a@base_big_screen" , anim ="base_big_screen" , andar = false , loop = true },
    { nome = "sentar49" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_female@engaged@01b@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar50" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_female@engaged@01b@base_big_screen" , anim ="base_big_screen" , andar = false , loop = true },
    { nome = "sentar51" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_female@regular@01a@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar52" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_female@regular@01b@base_big_screen" , anim ="base_big_screen" , andar = false , loop = true },
    { nome = "sentar53" , dict = "anim_casino_a@amb@casino@games@insidetrack@ped_male@regular@02a@trans" , anim ="base_to_big_screen" , andar = false , loop = true },
    { nome = "sentar54" , dict = "switch@michael@parkbench_smoke_ranger" , anim ="parkbench_smoke_ranger_loop" , andar = false , loop = true },
    { nome = "sentar55" , dict = "switch@michael@lounge_chairs" , anim ="001523_01_mics3_9_lounge_chairs_idle_mic" , andar = false , loop = true },
    { nome = "sentar56" , dict = "anim@amb@business@cfm@cfm_machine_no_work@" , anim ="smokers_cough_v1_operator" , andar = false , loop = true },
    { nome = "sentar57" , dict = "rcmnigel1a_band_groupies" , anim ="bump_f1" , andar = false , loop = true },
    { nome = "sentar58" , dict = "anim@amb@nightclub@smoking@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar59" , dict = "amb@lo_res_idles@" , anim = "world_human_picnic_female_lo_res_base" , andar = false , loop = true },
    { nome = "sentar60" , dict = "missheistdocks2aleadinoutlsdh_2a_int" , anim ="massage_loop_2_trevor" , andar = false , loop = true },
    { nome = "sentar61" , dict = "anim_casino_b@amb@casino@games@blackjack@ped_female@no_heels@regular@02a@reacts@v01" , anim ="reaction_impartial_var03" , andar = false , loop = true },
    { nome = "sentar62" , dict = "anim@amb@clubhouse@boss@female@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar63" , dict = "timetable@denice@ig_4" , anim = "base" , andar = false , loop = true },
    { nome = "sentar64" , anim = "snort_coke_a_female" , dict  = "missfbi3_party" , andar = false , loop = true },
    { nome = "sentar65" , anim = "loop_amanda" , dict  = "switch@michael@cafe" , andar = false , loop = true },
	{ nome = "sentar66" , dict = "safe@michael@ig_3" , anim ="base_michael" , andar = false , loop = true },
	{ nome = "sentar67" , dict = "rcmnigel1a_band_groupies" , anim ="base_m1" , andar = false , loop = true },
	{ nome = "sentar68" , dict = "anim@heists@fleeca_bank@hostages@intro" , anim ="intro_loop_ped_a" , andar = false , loop = true },
	{ nome = "sentar69" , dict = "switch@michael@ronex_ig_5_p2" , anim ="base_michael" , andar = false , loop = true },
	{ nome = "sentar70" , dict = "timetable@reunited@ig_10" , anim = "shouldntyouguys_amanda" , andar = false , loop = true },
	{ nome = "sentar71" , dict = "bs_1_int-9" , anim = "player_one_dual-9" , andar = false , loop = true },
	{ nome = "sentar72" , dict = "anim@amb@office@boss@female@" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar73" , dict = "rcmnigel1a_band_groupies" , anim = "bump_f1" , andar = false , loop = true },
	{ nome = "sentar74" , dict= "missheistdocks2aleadinoutlsdh_2a_int" , anim = "sitting_loop_wade" , andar = false , loop = true },
	{ nome = "sentar75" , dict= "anim@amb@business@cfid@cfid_desk_no_work_bgen_chair_no_work@" , anim = "lookaround_phoneless_lazyworker" , andar = false , loop = true },
	{ nome = "sentar76" , dict= "switch@michael@restaurant" , anim = "001510_02_gc_mics3_ig_1_base_amanda" , andar = false , loop = true },
	{ nome = "sentar77" , dict= "timetable@reunited@ig_7" , anim = "amandabase_amanda" , andar = false , loop = true },
	{ nome = "sentar78" , dict= "mini@strip_club@backroom@" , anim = "leadin_loop_idle_c_stripper_c" , andar = false , loop = true },
	{ nome = "sentar79" , dict= "switch@michael@lounge_chairs" , anim = "001523_01_mics3_9_lounge_chairs_idle_mic" , andar = false , loop = true },
	{ nome = "sentar80" , dict= "anim_casino_a@amb@casino@games@insidetrack@ped_female@engaged@01b@base_big_screen" , anim = "base_big_screen" , andar = false , loop = true },
	{ nome = "sentar81" , dict= "anim_casino_a@amb@casino@games@insidetrack@ped_female@regular@01a@base" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar82" , dict= "missheistdocks2aleadinoutlsdh_2a_int" , anim = "massage_loop_2_trevor" , andar = false , loop = true },
	{ nome = "sentar83" , dict= "timetable@amanda@ig_7" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar84" , dict= "hs3_pln_int-0" , anim = "csb_huang_dual-0" , andar = false , loop = true },
	{ nome = "sentar85" , dict = "timetable@tracy@ig_14@" , anim ="ig_14_iwishall_a_tracy" , andar = false , loop = true },
    { nome = "sentar86" , dict = "mp_safehouselost_table@" , anim ="lost_table_idle_a" , andar = false , loop = true },
    { nome = "sentar87" , dict = "timetable@ron@ron_ig_2_alt1" , anim ="ig_2_alt1_base" , andar = false , loop = true },
    { nome = "sentar88" , dict = "anim@amb@office@boss@female@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar89" , dict = "rcmnigel1aig_1" , anim ="you_know_girl" , andar = false , loop = true },
    { nome = "sentar90" , dict = "anim@amb@clubhouse@boardroom@boss@female@base_r@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar91" , dict = "anim@amb@facility@briefing_room@seating@female@var_b@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar92" , dict = "switch@michael@ronex_ig_5_p2" , anim ="base_michael" , andar = false , loop = true },
    { nome = "sentar93" , dict = "switch@franklin@stripclub3" , anim ="ig_17_base" , andar = false , loop = true },
    { nome = "sentar94" , dict = "safe@franklin@ig_14" , anim ="base" , andar = false , loop = true },
    { nome = "sentar95" , dict = "rcmnigel1bnmt_1b" , anim ="base_girl" , andar = false , loop = true },
    { nome = "sentar96" , dict = "anim@amb@business@cfm@cfm_machine_no_work@" , anim ="hanging_out_operator" , andar = false , loop = true },
    { nome = "sentar97" , dict = "timetable@reunited@ig_10" , anim ="shouldntyouguys_tracy" , andar = false , loop = true },
    { nome = "sentar98" , dict = "missfbi3_party" , anim ="snort_coke_b_male5" , andar = false , loop = true },
    { nome = "sentar99" , dict = "missheistpaletoscoresetupleadin" , anim ="rbhs_mcs_1_leadin" , andar = false , loop = true },
    { nome = "sentar100" , dict = "misslester1aig_3exit" , anim ="air_guitar_01_exitloop_d" , andar = false , loop = true },
    { nome = "sentar101" , dict = "misslester1aig_3main" , anim ="air_guitar_01_b" , andar = false , loop = true },
    { nome = "sentar102" , dict = "misslester1aig_5intro" , anim ="boardroom_intro_f_c" , andar = false , loop = true },
    { nome = "sentar103" , dict = "misslester1b_crowd@m_" , anim ="001082_01_m_a" , andar = false , loop = true },
    { nome = "sentar104" , dict = "mp_am_stripper" , anim ="lap_dance_player" , andar = false , loop = true },
    { nome = "sentar105" , dict = "safe@franklin@ig_14" , anim ="base" , andar = false , loop = true },
    { nome = "sentar106" , dict = "switch@trevor@mocks_lapdance" , anim ="001443_01_trvs_28_idle_man" , andar = false , loop = true },
    { nome = "sentar107" , dict = "switch@trevor@rude_at_cafe" , anim ="001218_03_trvs_23_rude_at_cafe_idle_female" , andar = false , loop = true },
	{ nome = "sentar108" , dict = "amb@world_human_seat_steps@female@hands_by_sides@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar109" , dict = "amb@world_human_seat_wall@female@hands_by_sides@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar110" , dict = "timetable@trevor@trv_ig_2" , anim ="base_trevor" , andar = false , loop = true },
    { nome = "sentar111" , dict = "missdrfriedlanderdrf_idles" , anim ="drf_idle_drf" , andar = false , loop = true },
    { nome = "sentar112" , dict = "anim@amb@clubhouse@boss@female@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar113" , dict = "anim@amb@clubhouse@boardroom@crew@male@var_b@base_r@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar114" , dict = "anim@amb@office@seating@female@var_b@base@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar115" , dict = "anim@amb@office@seating@female@var_c@base@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar116" , dict = "amb@world_human_seat_steps@male@elbows_on_knees@base" , anim ="base" , andar = false , loop = true },
    { nome = "sentar117" , dict = "anim@amb@facility@briefing_room@seating@male@var_a@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar118" , dict = "anim@amb@clubhouse@boardroom@boss@female@base_r@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar119" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base_r@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar120" , dict = "iaaj_ext-27" , anim ="csb_mp_agent14_dual-27" , andar = false , loop = true },
    { nome = "sentar121" , dict = "anim@amb@facility@briefing_room@seating@male@var_b@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar122" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base_l@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar123" , dict = "missfam2_bikehire@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar124" , dict = "missarmenian2" , anim ="car_react_gang_ps" , andar = false , loop = true },
    { nome = "sentar125" , dict = "anim@amb@office@boardroom@boss@male@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar126" , dict = "anim@amb@office@seating@female@var_a@base@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar127" , dict = "anim@amb@office@seating@male@var_b@base@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar128" , dict = "anim@amb@office@seating@male@var_e@base@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar129" , dict = "anim@amb@office@boardroom@crew@male@var_b@base_r@" , anim ="base" , andar = false , loop = true },
    { nome = "sentar130" , dict = "sub_int-38" , anim ="mp_m_freemode_01^1_dual-38" , andar = false , loop = true },
    { nome = "sentar131" , dict = "sil_int-28" , anim ="mp_m_freemode_01_dual-28" , andar = false , loop = true },
    { nome = "sentar132" , dict = "drf_mic_1_cs_1-15" , anim ="cs_drfriedlander_dual-15" , andar = false , loop = true },
    { nome = "sentar133" , dict = "drf_mic_1_cs_1-24" , anim ="cs_drfriedlander_dual-24" , andar = false , loop = true },
    { nome = "sentar134" , dict = "drf_mic_1_cs_1-30" , anim ="cs_drfriedlander_dual-30" , andar = false , loop = true },
    { nome = "sentar135" , dict = "amb@lo_res_idles@" , anim = "prop_human_deckchair_female_lo_res_base" , andar = false , loop = true },
    { nome = "sentar136" , dict = "anim@amb@office@boardroom@boss@male@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar137" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar138" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base_l@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar139" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_a@base_r@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar140" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_b@base@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar141" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_b@base_r@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar142" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_c@base@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar143" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_c@base_l@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar144" , dict = "anim@amb@clubhouse@boardroom@crew@female@var_c@base_r@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar145" , dict = "anim@amb@clubhouse@boardroom@crew@male@var_a@base@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar146" , dict = "anim@amb@clubhouse@boardroom@crew@male@var_a@base_l@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar147" , dict = "anim@amb@clubhouse@boardroom@crew@male@var_a@base_r@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar148" , dict = "anim@amb@clubhouse@boardroom@crew@male@var_b@base@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar149" , dict = "anim@amb@clubhouse@boardroom@crew@male@var_c@base@" , anim = "base" , andar = false , loop = true },
    { nome = "sentar150" , dict = "amb@incar@male@smoking_van@enter" , anim = "enter" , andar = false , loop = true },
    { nome = "sentar151" , dict = "anim@amb@yacht@jacuzzi@seated@female@variation_05@" , anim = "idle_a" , andar = false , loop = true },
    { nome = "sentar152" , dict = "family_4_mcs_2-2" , anim = "csb_hugh_dual-2" , andar = false , loop = true },
	{ nome = "sentar153" , dict = "anim@amb@office@boardroom@crew@female@var_a@base_r@" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar154" , dict = "arm_1_mcs_2_concat-0" , anim = "cs_denise_dual-0" , andar = false , loop = true },
	{ nome = "sentar155" , dict= "anim@amb@facility@briefing_room@seating@male@var_a@" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar156" , dict= "anim@amb@office@seating@female@var_b@base@" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar157" , dict= "anim@amb@office@seating@female@var_c@base@" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar158" , dict= "anim@amb@clubhouse@boardroom@crew@female@var_a@base_r@" , anim = "base" , andar = false , loop = true },
	{ nome = "sentar159" , dict= "missheist_jewelleadinout" , anim = "jh_int_outro_loop_d" , andar = false , loop = true },
	{ nome = "sentar160" , dict= "drf_mic_1_cs_1-15" , anim = "cs_drfriedlander_dual-15" , andar = false , loop = true },
	{ nome = "sentar161" , dict= "sol_3_int-9" , anim = "cs_molly_dual-9" , andar = false , loop = true },
	{ nome = "sentar162" , dict= "sil_int-29" , anim = "mp_m_freemode_01^3_dual-29" , andar = false , loop = true },

	{ nome = "beijar" , dict = "mp_ped_interaction" , anim = "kisses_guy_a" , andar = false , loop = false },
	{ nome = "escutar" , dict = "mini@safe_cracking" , anim = "idle_base" , andar = false , loop = true },
	{ nome = "alongar" , dict = "anim@deathmatch_intros@unarmed" , anim = "intro_male_unarmed_e" , andar = false , loop = true },
	{ nome = "alongar2" , dict = "mini@triathlon" , anim = "idle_e" , andar = false , loop = true },
	{ nome = "alongar3" , dict = "anim@deathmatch_intros@unarmed" , anim = "intro_male_unarmed_c" , andar = false , loop = false },
	{ nome = "alongar4" , dict = "mini@triathlon" , anim = "idle_f" , andar = false , loop = true },
	{ nome = "alongar5" , dict = "mini@triathlon" , anim = "idle_d" , andar = false , loop = true },
	{ nome = "alongar6" , dict = "rcmfanatic1maryann_stretchidle_b" , anim = "idle_e" , andar = false , loop = true },
	{ nome = "alongar7" , dict = "timetable@reunited@ig_2" , anim = "jimmy_getknocked" , andar = false , loop = true },
	{ nome = "dj" , dict = "anim@mp_player_intupperdj" , anim = "idle_a", andar = true , loop = true },
	{ nome = "dj2" , dict = "anim@mp_player_intupperair_synth" , anim = "idle_a_fp" , andar = false , loop = true },
	{ nome = "dj3" , dict = "anim@mp_player_intcelebrationfemale@air_synth" , anim = "air_synth" , andar = false , loop = false },
	{ nome = "rock" , dict = "anim@mp_player_intcelebrationmale@air_guitar" , anim = "air_guitar" , andar = false , loop = true },
	{ nome = "rock2" , dict = "mp_player_introck" , anim = "mp_player_int_rock" , andar = false , loop = false },
	{ nome = "abracar" , dict = "mp_ped_interaction" , anim = "hugs_guy_a" , andar = false , loop = false },
	{ nome = "abracar2" , dict = "mp_ped_interaction" , anim = "kisses_guy_b" , andar = false , loop = false },
	{ nome = "peitos" , dict = "mini@strip_club@backroom@" , anim = "stripper_b_backroom_idle_b" , andar = false , loop = false },
	{ nome = "espernear" , dict = "missfam4leadinoutmcs2" , anim = "tracy_loop" , andar = false , loop = true },
	{ nome = "arrumar" , dict = "anim@amb@business@coc@coc_packing_hi@" , anim = "full_cycle_v1_pressoperator" , andar = false , loop = true },
	{ nome = "coca" , dict = "anim@amb@business@coc@coc_packing_hi@" , anim = "full_cycle_v3_pressoperator" , andar = false , loop = true },
	{ nome = "bebado" , dict = "missfam5_blackout" , anim = "pass_out" , andar = false , loop = false },
	{ nome = "bebado2" , dict = "missheist_agency3astumble_getup" , anim = "stumble_getup" , andar = false , loop = false },
	{ nome = "bebado3" , dict = "missfam5_blackout" , anim = "vomit" , andar = false , loop = false },
	{ nome = "bebado4" , dict = "random@drunk_driver_1" , anim = "drunk_fall_over" , andar = false , loop = false },
	{ nome = "bebado5" , dict = "misscarsteal4@actor" , anim = "stumble" , andar = false , loop = false },
	{ nome = "yoga" , dict = "missfam5_yoga" , anim = "f_yogapose_a" , andar = false , loop = true },
	{ nome = "yoga2" , dict = "amb@world_human_yoga@male@base" , anim = "base_a" , andar = false , loop = true },
	{ nome = "abdominal" , dict = "amb@world_human_sit_ups@male@base" , anim = "base" , andar = false , loop = true },
	{ nome = "bixa" , anim = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS" },
	{ nome = "britadeira" , dict = "amb@world_human_const_drill@male@drill@base" , anim = "base" , prop = "prop_tool_jackham" , flag = 15 , hand = 28422 },
	{ nome = "cerveja" , anim = "WORLD_HUMAN_PARTYING" },
	{ nome = "churrasco" , anim = "PROP_HUMAN_BBQ" },
	{ nome = "consertar" , anim = "WORLD_HUMAN_WELDING" },
	{ nome = "bracos" , dict = "anim@heists@heist_corona@single_team" , anim = "single_team_loop_boss" , andar = true , loop = true },
	{ nome = "dormir" , dict = "anim@heists@ornate_bank@hostages@hit" , anim = "hit_react_die_loop_ped_a" , andar = false , loop = true },
	{ nome = "dormir2" , dict = "anim@heists@ornate_bank@hostages@hit" , anim = "hit_react_die_loop_ped_e" , andar = false , loop = true },
	{ nome = "dormir3" , dict = "anim@heists@ornate_bank@hostages@hit" , anim = "hit_react_die_loop_ped_h" , andar = false , loop = true },
	{ nome = "dormir4" , dict = "mp_sleep" , anim = "sleep_loop" , andar = false , loop = true },
	{ nome = "dormir5" , dict = "missarmenian2" , anim = "drunk_loop" , andar = false , loop = true },
	
	{ nome = "encostar" , dict = "amb@lo_res_idles@" , anim = "world_human_lean_male_foot_up_lo_res_base" , andar = false , loop = true },
	{ nome = "encostar2" , dict = "bs_2a_mcs_10-0" , anim = "hc_gunman_dual-0" , andar = false , loop = true },
	{ nome = "encostar3" , dict = "misscarstealfinalecar_5_ig_1" , anim = "waitloop_lamar" , andar = false , loop = true },
	{ nome = "encostar4" , dict = "anim@amb@casino@out_of_money@ped_female@02b@base" , anim = "base" , andar = false , loop = true },
	{ nome = "encostar5" , dict = "anim@amb@casino@hangout@ped_male@stand@03b@base" , anim = "base" , andar = true , loop = true },
	{ nome = "encostar6" , dict = "anim@amb@casino@hangout@ped_female@stand@02b@base" , anim = "base" , andar = false , loop = true },
	{ nome = "encostar7" , dict = "anim@amb@casino@hangout@ped_female@stand@02a@base" , anim = "base" , andar = false , loop = true },
	{ nome = "encostar8" , dict = "anim@amb@casino@hangout@ped_female@stand@01b@base" , anim = "base" , andar = false , loop = true },
	{ nome = "encostar9" , dict = "anim@amb@clubhouse@bar@bartender@" , anim = "base_bartender" , andar = false , loop = true },
	{ nome = "encostar10" , dict = "missclothing" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "encostar11" , dict = "misscarstealfinale" , anim = "packer_idle_1_trevor" , andar = false , loop = true },
	{ nome = "encostar12" , dict = "missarmenian1leadinoutarm_1_ig_14_leadinout" , anim = "leadin_loop" , andar = false , loop = true },
	{ nome = "encostar13" , dict = "rcmjosh2" , anim ="josh_2_intp1_base" , andar = false , loop = true },
    { nome = "encostar14" , dict = "rcmjosh2" , anim ="josh_wait_loop" , andar = false , loop = true },
    { nome = "encostar15" , dict = "anim@amb@yacht@bow@male@variation_01@" , anim ="base" , andar = false , loop = true },
    { nome = "encostar16" , dict = "anim@heists@prison_heist" , anim ="ped_b_loop_a" , andar = false , loop = true },
    { nome = "encostar17" , dict = "anim@heists@prison_heiststation@cop_reactions" , anim ="drunk_idle" , andar = false , loop = true },
    { nome = "encostar18" , dict = "missarmenian1leadinoutarm_1_ig_14_leadinout" , anim ="leadin_loop" , andar = false , loop = true },
    { nome = "encostar19" , dict = "misscarsteal1car_1_ext_leadin" , anim ="base_driver1" , andar = false , loop = true },
    { nome = "encostar20" , dict = "missclothing" , anim ="idle_b" , andar = false , loop = true },
    { nome = "encostar21" , dict = "missfbi1ig_8" , anim ="outro1_pedb" , andar = false , loop = true },
    { nome = "encostar22" , dict = "missfbi1leadinout" , anim ="fbi_1_int_leadin_exit_loop_daven" , andar = false , loop = true },
    { nome = "encostar23" , dict = "misshair_shop@hair_dressers" , anim ="assistant_base" , andar = false , loop = true },
    { nome = "encostar24" , dict = "missheist_agency2aig_4" , anim ="look_plan_base_worker2" , andar = false , loop = true },
    { nome = "encostar26" , dict = "missheistdockssetup1ig_12@base" , anim ="talk_gantry_idle_base_worker4" , andar = false , loop = true },
    { nome = "encostar25" , dict = "missstrip_club_lean" , anim ="player_lean_rail_loop" , andar = false , loop = true },
    { nome = "encostar26" , dict = "mini@strip_club@leaning@base" , anim ="base" , andar = false , loop = true },
    { nome = "encostar27" , dict = "missheist_jewelleadinout" , anim ="jh_int_outro_loop_c" , andar = false , loop = true },
    { nome = "encostar28" , dict = "anim@amb@business@bgen@bgen_no_work@" , anim ="stand_phone_phoneputdown_fallasleep_nowork" , andar = false , loop = true },
    { nome = "encostar29" , dict = "anim@amb@business@bgen@bgen_no_work@" , anim ="stand_phone_phoneputdown_idle_nowork" , andar = false , loop = true },
    { nome = "encostar30" , dict = "anim@amb@business@bgen@bgen_no_work@" , anim ="stand_phone_phoneputdown_stretching_nowork" , andar = false , loop = true },
    { nome = "encostar31" , dict = "anim@amb@clubhouse@bar@bartender@" , anim ="greeting_c_bartender" , andar = false , loop = true },
    { nome = "encostar32" , dict = "anim@amb@clubhouse@bar@drink@base" , anim ="idle_a" , andar = false , loop = true },
    { nome = "encostar33" , dict = "misscarsteal4leadinout" , anim ="ig_1_base" , andar = false , loop = true },
    { nome = "encostar34" , dict = "missclothing" , anim ="base" , andar = false , loop = true },
    { nome = "encostar35" , dict = "missheistdockssetup1ig_5@base" , anim ="workers_talking_base_dockworker2" , andar = false , loop = true },
    { nome = "encostar36" , dict = "switch@michael@sitting_on_car_bonnet" , anim ="sitting_on_car_bonnet_loop" , andar = false , loop = true },
    { nome = "encostar37" , dict = "amb@world_human_leaning@male@wall@back@foot_up@react_shock" , anim ="front" , andar = false , loop = true },
    { nome = "encostar38" , dict = "anim@amb@world_human_valet@informal@idle_a@" , anim ="idle_a_a_m_y_vinewood_01" , andar = false , loop = true },
    { nome = "encostar39" , dict = "anim@amb@nightclub@dancers@club_ambientpeds@low-med_intensity" , anim ="li-mi_amb_club_06_base_female^1" , andar = false , loop = true },
    { nome = "encostar40" , dict = "ah_1_int-4" , anim ="cs_davenorton_dual-4" , andar = false , loop = true },
    { nome = "encostar41" , dict = "silj_int-8" , anim ="csb_mp_agent14_dual-8" , andar = false , loop = true },
    { nome = "encostar42" , dict = "anim@veh@btype@side_ds@base" , anim ="sit" , andar = false , loop = true },
    { nome = "encostar43" , dict = "anim@veh@btype@side_ps@base" , anim ="sit" , andar = false , loop = true },
    { nome = "encostar44" , dict = "timetable@michael@talk_phonebase" , anim = "talk_phone_base" , andar = false , loop = true },
    { nome = "encostar45" , dict = "anim@amb@clubhouse@bar@bartender@" , anim = "base_bartender" , andar = false , loop = true },
    { nome = "encostar46" , dict = "anim@amb@yacht@jacuzzi@standing@female@variation_02@" , anim = "base_b" , andar = false , loop = true },
    { nome = "encostar47" , anim = "assistant_idle_a" , dict  = "misshair_shop@hair_dressers" , andar = false , loop = true },
    { nome = "encostar48" , anim = "assistant_base" , dict  = "misshair_shop@hair_dressers" , andar = false , loop = true },
    { nome = "encostar49" , dict = "rcmjosh2" , anim = "josh_2_intp1_base" , andar = false , loop = true },
	{ nome = "encostar50" , dict = "anim@arena@prize_wheel@male" , anim = "base" , andar = false , loop = true },
	{ nome = "encostar51" , dict = "hs3_arc_int-15" , anim = "csb_wendy_dual-15" , andar = false , loop = true },
	{ nome = "encostar52" , dict = "anim@amb@yacht@rail@seated@female@variant_02@" , anim = "base" , andar = false , loop = true },
	{ nome = "encostar53" , dict = "anim@amb@yacht@rail@seated@male@variant_01@" , anim = "base" , andar = false , loop = true },
	{ nome = "encostar54" , dict= "misscarsteal4leadinout" , anim = "ig_1_base" , andar = false , loop = true },
	{ nome = "encostar55" , dict= "missclothing" , anim = "base" , andar = false , loop = true },
	{ nome = "encostar56" , dict= "missheistdockssetup1ig_5@base" , anim = "workers_talking_base_dockworker2" , andar = false , loop = true },
	{ nome = "encostar57" , dict= "fra_0_int-9" , anim = "player_one_dual-9" , andar = false , loop = true },
	{ nome = "encostar58" , dict= "fra_0_int-9" , anim = "player_one_dual-9" , andar = false , loop = true },
	{ nome = "encostar59" , dict= "missheistdocks2aleadinoutlsdh_2a_int" , anim = "massage_loop_floyd" , andar = false , loop = true },
	{ nome = "encostar60" , dict = "amb@lo_res_idles@" , anim = "world_human_lean_female_holding_elbow_lo_res_base" , andar = false , loop = true },
    { nome = "encostar61" , dict = "anim@amb@yacht@jacuzzi@standing@female@variation_01@" , anim ="base" , andar = false , loop = true },
    { nome = "encostar62" , dict = "anim@amb@yacht@jacuzzi@standing@female@variation_02@" , anim ="base" , andar = false , loop = true },
	{ nome = "encostar63" , dict = "anim@amb@yacht@jacuzzi@standing@male@variation_01@" , anim ="base" , andar = false , loop = true },
	{ nome = "encostar64" , dict = "anim@amb@yacht@jacuzzi@standing@male@variation_02@" , anim ="base" , andar = false , loop = true },
	{ nome = "encostar65" , dict = "switch@michael@pier" , anim ="pier_lean_toss_cigarette" , andar = false , loop = true },
    { nome = "encostar66" , dict = "missheistdockssetup1ig_10@idle_d" , anim ="talk_pipe_d_worker2" , andar = false , loop = true },
    { nome = "encostar67" , dict = "missheistdockssetup1ig_10@idle_a" , anim ="talk_pipe_a_worker2" , andar = false , loop = true },
    { nome = "encostar68" , dict = "amb@code_human_in_car_mp_actions@finger@std@rps@base" , anim ="idle_a" , andar = false , loop = true },
    { nome = "encostar69" , dict = "anim@amb@nightclub@dancers@club_ambientpeds@low-med_intensity" , anim ="li-mi_amb_club_10_v1_male^3" , andar = false , loop = true },
    { nome = "encostar70" , dict = "anim@amb@business@meth@meth_monitoring_no_work@" , anim ="turnaround_idle_v1_lazycook" , andar = false , loop = true },
    { nome = "encostar71" , dict = "sub_int-42" , anim ="a_m_y_busicas_01_dual-42" , andar = false , loop = true },
    { nome = "encostar72" , dict = "rcmnigel1a_band_groupies" , anim ="base_m2" , andar = false , loop = true },
	{ nome = "encostar73" , dict = "amb@prop_human_bum_shopping_cart@male@idle_a", anim = "idle_c", andar = true, loop = true },
	{ nome = "encostar74" , dict = "anim@amb@nightclub@lazlow@ig1_vip@", anim = "clubvip_base_laz", andar = true, loop = true },
	{ nome = "encostar75" , dict = "anim@heists@prison_heist", anim = "ped_b_loop_a", andar = true, loop = true },

	{ nome = "flexao" , dict = "amb@world_human_push_ups@male@base" , anim = "base" , andar = false , loop = true },
	{ nome = "fisico" , anim = "WORLD_HUMAN_MUSCLE_FLEX" },
	{ nome = "fumar" , anim = "WORLD_HUMAN_SMOKING", item = "cigarro" },
	{ nome = "fumar2" , anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", item = "cigarro"  },
	{ nome = "fumar3" , anim = "WORLD_HUMAN_AA_SMOKE", item = "cigarro"  },
	{ nome = "fumar4" , anim = "WORLD_HUMAN_SMOKING_POT" , item = "cigarro" },
	{ nome = "fumar5" , dict = "amb@world_human_aa_smoke@male@idle_a" , anim = "idle_c" , prop = "prop_cs_ciggy_01" , item = "cigarro",  flag = 49 , hand = 28422 },
	{ nome = "fumar6" , dict = "amb@world_human_smoking@female@idle_a" , anim = "idle_b" , prop = "prop_cs_ciggy_01" , item = "cigarro" , flag = 49 , hand = 28422 },
	{ nome = "malhar" , dict = "amb@world_human_muscle_free_weights@male@barbell@base" , anim = "base" , prop = "prop_curl_bar_01" , flag = 49 , hand = 28422 },
	{ nome = "malhar2" , dict = "amb@prop_human_muscle_chin_ups@male@base" , anim = "base" , andar = false , loop = true },
	{ nome = "malharx" , dict = "amb@prop_human_muscle_chin_ups@male@base" , anim = "base" , andar = true , loop = true },
	{ nome = "martelo" , dict = "amb@world_human_hammering@male@base" , anim = "base" , prop = "prop_tool_hammer" , flag = 49 , hand = 28422 },
	{ nome = "pescar" , dict = "amb@world_human_stand_fishing@base" , anim = "base" , prop = "prop_fishing_rod_01" , flag = 49 , hand = 60309 },
	{ nome = "pescar2" , dict = "amb@world_human_stand_fishing@idle_a" , anim = "idle_c" , prop = "prop_fishing_rod_01" , flag = 49 , hand = 60309 },
	{ nome = "plantar" , dict = "amb@world_human_gardener_plant@female@base" , anim = "base_female" , andar = false , loop = true },
	{ nome = "plantar2" , dict = "amb@world_human_gardener_plant@female@idle_a" , anim = "idle_a_female" , andar = false , loop = true },
	{ nome = "procurar" , dict = "amb@world_human_bum_wash@male@high@base" , anim = "base" , andar = false , loop = true },
	{ nome = "soprador" , dict = "amb@code_human_wander_gardener_leaf_blower@base" , anim = "static" , prop = "prop_leaf_blower_01" , flag = 49 , hand = 28422 },
	{ nome = "soprador2" , dict = "amb@code_human_wander_gardener_leaf_blower@idle_a" , anim = "idle_a" , prop = "prop_leaf_blower_01" , flag = 49 , hand = 28422 },
	{ nome = "soprador3" , dict = "amb@code_human_wander_gardener_leaf_blower@idle_a" , anim = "idle_b" , prop = "prop_leaf_blower_01" , flag = 49 , hand = 28422 },
	{ nome = "tragar" , anim = "WORLD_HUMAN_DRUG_DEALER" },
	{ nome = "trotar" , dict = "amb@world_human_jog_standing@male@fitidle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "esquentar" , anim = "WORLD_HUMAN_STAND_FIRE" },
	{ nome = "selfie" , dict = "cellphone@self" , anim = "selfie_in_from_text" , prop = "prop_amb_phone" , flag = 50 , hand = 28422 },
	{ nome = "selfie2" , dict = "cellphone@" , anim = "cellphone_text_read_base_cover_low" , prop = "prop_amb_phone" , flag = 50 , hand = 28422 },
	{ nome = "mecanico" , dict = "amb@world_human_vehicle_mechanic@male@idle_a" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "mecanico2" , dict = "mini@repair" , anim = "fixing_a_player" , andar = false , loop = true },
	{ nome = "mecanico3" , dict = "mini@repair" , anim = "fixing_a_ped" , andar = false , loop = true },
	{ nome = "pullover" , dict = "misscarsteal3pullover" , anim = "pull_over_right" , andar = false , loop = false },
	{ nome = "airguitar" , dict = "anim@mp_player_intcelebrationfemale@air_guitar" , anim = "air_guitar" , andar = false , loop = true },
	{ nome = "airsynth" , dict = "anim@mp_player_intcelebrationfemale@air_synth" , anim = "air_synth" , andar = false , loop = true },
	{ nome = "puto" , dict = "misscarsteal4@actor" , anim = "actor_berating_loop" , andar = true , loop = true },
	{ nome = "puto2" , dict = "oddjobs@assassinate@vice@hooker" , anim = "argue_a" , andar = true , loop = true },
	{ nome = "puto3" , dict = "mini@triathlon" , anim = "want_some_of_this" , andar = false , loop = false },
	{ nome = "argumentar1" , dict = "oddjobs@bailbond_mountain", anim = "excited_idle_b", andar = true, loop = true },
	{ nome = "argumentar2" , dict = "oddjobs@bailbond_hobohang_out_street_c", anim = "idle_c", andar = false, loop = true },
	{ nome = "argumentar3" , dict = "oddjobs@assassinate@old_lady", anim = "looking_for_help", andar = false, loop = true },
	{ nome = "unhas" , dict = "anim@amb@clubhouse@bar@drink@idle_a" , anim = "idle_a_bartender" , andar = true , loop = true },
	{ nome = "mandarbeijo" , dict = "anim@mp_player_intcelebrationfemale@blow_kiss" , anim = "blow_kiss" , andar = false , loop = false },
	{ nome = "mandarbeijo2" , dict = "anim@mp_player_intselfieblow_kiss" , anim = "exit" , andar = false , loop = false },
	{ nome = "bale" , dict = "anim@mp_player_intcelebrationpaired@f_f_sarcastic" , anim = "sarcastic_left" , andar = false , loop = true },
	{ nome = "cruzarbraco" , dict = "anim@amb@nightclub@peds@" , anim = "rcmme_amanda1_stand_loop_cop" , andar = true , loop = true },
	{ nome = "cruzarbraco2" , dict = "amb@world_human_hang_out_street@female_arms_crossed@idle_a" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "wtf" , dict = "anim@mp_player_intcelebrationfemale@face_palm" , anim = "face_palm" , andar = true , loop = false },
	{ nome = "wtf2" , dict = "random@car_thief@agitated@idle_a" , anim = "agitated_idle_a" , andar = true , loop = false },
	{ nome = "wtf3" , dict = "missminuteman_1ig_2" , anim = "tasered_2" , andar = true , loop = false },
	{ nome = "wtf4" , dict = "anim@mp_player_intupperface_palm" , anim = "idle_a" , andar = true , loop = false },
	{ nome = "suicidio" , dict = "mp_suicide" , anim = "pistol" , andar = false , loop = false },
	{ nome = "suicidio2" , dict = "mp_suicide" , anim = "pill" , andar = false , loop = false },
	{ nome = "lutar" , dict = "anim@deathmatch_intros@unarmed" , anim = "intro_male_unarmed_c" , andar = false , loop = false },
	{ nome = "lutar2" , dict = "anim@deathmatch_intros@unarmed" , anim = "intro_male_unarmed_e" , andar = false , loop = false },
	{ nome = "lutar4" , dict = "wing_chun@anim" , anim = "paire_one_atc" , andar = false , loop = true },
	{ nome = "lutar5" , dict = "wing_chun@anim"  , anim = "paire_one_vic" , andar = false , loop = true },
	{ nome = "lutar6" , dict = "wing_chun@ani"  , anim = "paire_two_atc" , andar = false , loop = true },
	{ nome = "lutar7" , dict = "wing_chun@anim"  , anim = "paire_two_vic" , andar = false , loop = true },
	{ nome = "lutar8" , dict = "wing_chun@anim"  , anim = "combo_1" , andar = false , loop = true },
	{ nome = "lutar9" , dict = "wing_chun@anim"  , anim = "combo_2" , andar = false , loop = true },
	{ nome = "lutar10" , dict = "wing_chun@anim"  , anim = "combo_3" , andar = false , loop = true },
	{ nome = "lutar11" , dict = "wing_chun@anim"  , anim = "combo_4" , andar = false , loop = true },
	{ nome = "lutar12" , dict = "wing_chun@anim"  , anim = "attack_1" , andar = false , loop = true },
	{ nome = "lutar13" , dict = "wing_chun@anim"  , anim = "attack_2" , andar = false , loop = true },
	{ nome = "lutar14" , dict = "wing_chun@anim"  , anim = "attack_3" , andar = false , loop = true },
	{ nome = "lutar15" , dict = "wing_chun@anim"  , anim = "attack_4" , andar = false , loop = true },
	{ nome = "lutar16" , dict = "wing_chun@anim"  , anim = "attack_5" , andar = false , loop = true },
	{ nome = "lutar17" , dict = "wing_chun@anim"  , anim = "attack_6" , andar = false , loop = true },
	{ nome = "lutar18" , dict = "wing_chun@anim"  , anim = "attack_7" , andar = false , loop = true },
	{ nome = "lutar19" , dict = "wing_chun@anim"  , anim = "attack_8" , andar = false , loop = true },
	{ nome = "lutar20" , dict = "wing_chun@anim"  , anim = "attack_9" , andar = false , loop = true },
	{ nome = "lutar21" , dict = "wing_chun@anim"  , anim = "attack_10" , andar = false , loop = true },
	{ nome = "lutar22" , dict = "wing_chun@anim"  , anim = "dead_1" , andar = false , loop = true },
	{ nome = "lutar23" , dict = "wing_chun@anim"  , anim = "dead_2" , andar = false , loop = true },
	{ nome = "lutar24" , dict = "wing_chun@anim"  , anim = "defence_1" , andar = false , loop = true },
	{ nome = "lutar25" , dict = "wing_chun@anim"  , anim = "down_1" , andar = false , loop = true },
	{ nome = "lutar26" , dict = "wing_chun@anim"  , anim = "down_2" , andar = false , loop = true },
	{ nome = "lutar27" , dict = "wing_chun@anim"  , anim = "idle" , andar = false , loop = true },
	{ nome = "lutar28" , dict = "wing_chun@anim"  , anim = "rise_up_1" , andar = false , loop = true },
	{ nome = "lutar29" , dict = "wing_chun@anim"  , anim = "rise_up_2" , andar = false , loop = true },
	{ nome = "lutar30" , dict = "wing_chun@anim"  , anim = "roll_bwd" , andar = false , loop = true },
	{ nome = "lutar31" , dict = "wing_chun@anim"  , anim = "roll_fwd" , andar = false , loop = true },
	{ nome = "parto" , dict = "sexpose3@seimen" , anim = "sexpose3_clip" , andar = false , loop = true },
	{ nome = "dedo" , dict = "anim@mp_player_intselfiethe_bird" , anim = "idle_a" , andar = false , loop = false },
	{ nome = "dedo2" , dict = "anim@mp_player_intcelebrationfemale@finger" , anim = "finger" , andar = true , loop = false },
	{ nome = "dedo3" , dict = "anim@arena@celeb@podium@no_prop@" , anim = "flip_off_a_1st" , andar = false , loop = false },
	{ nome = "mochila" , dict = "move_m@hiking" , anim = "idle" , andar = true , loop = true },
	{ nome = "exercicios" , dict = "timetable@reunited@ig_2" , anim = "jimmy_getknocked" , andar = true , loop = true },
	{ nome = "escorar" , dict = "timetable@mime@01_gc" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "escorar2" , dict = "misscarstealfinale" , anim = "packer_idle_1_trevor" , andar = false , loop = true },
	{ nome = "escorar3" , dict = "misscarstealfinalecar_5_ig_1" , anim = "waitloop_lamar" , andar = false , loop = true },
	{ nome = "escorar4" , dict = "rcmjosh2" , anim = "josh_2_intp1_base" , andar = false , loop = true },
	--[[ { nome = "meditar" , dict = "rcmcollect_paperleadinout@" , anim = "meditiate_idle" , andar = false , loop = true }, ]]
	{ nome = "meditar2" , dict = "rcmepsilonism3" , anim = "ep_3_rcm_marnie_meditating" , andar = false , loop = true },
	{ nome = "meditar3" , dict = "rcmepsilonism3" , anim = "base_loop" , andar = false , loop = true },
	{ nome = "meleca2" , dict = "anim@mp_player_intcelebrationfemale@nose_pick" , anim = "nose_pick" , andar = false , loop = false },
	{ nome = "cortaessa" , dict = "gestures@m@standing@casual" , anim = "gesture_no_way" , andar = false , loop = false },
	{ nome = "meleca3" , dict = "move_p_m_two_idles@generic" , anim = "fidget_sniff_fingers" , andar = true , loop = false },
	{ nome = "joia" , dict = "anim@mp_player_intincarthumbs_uplow@ds@" , anim = "enter" , andar = false , loop = false },
	{ nome = "joia2" , dict = "anim@mp_player_intselfiethumbs_up" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "yeah" , dict = "anim@mp_player_intupperair_shagging" , anim = "idle_a" , andar = false , loop = false },
	{ nome = "assobiar" , dict = "taxi_hail" , anim = "hail_taxi" , andar = false , loop = false },
	{ nome = "carona" , dict = "random@hitch_lift" , anim = "idle_f" , andar = true , loop = false },
	{ nome = "estatua" , dict = "amb@world_human_statue@base" , anim = "base" , andar = false , loop = true },
	{ nome = "estatua2" , dict = "fra_0_int-1" , anim = "cs_lamardavis_dual-1" , andar = false , loop = true },
	{ nome = "estatua3" , dict = "club_intro2-0" , anim = "csb_englishdave_dual-0" , andar = false , loop = true },
	{ nome = "tiltado" , dict = "anim@mp_player_intcelebrationfemale@freakout" , anim = "freakout" , andar = false , loop = false },
	{ nome = "colher" , dict = "creatures@rottweiler@tricks@" , anim = "petting_franklin" , andar = false , loop = false },
	{ nome = "rastejar" , dict = "move_injured_ground" , anim = "front_loop" , andar = false , loop = true },
	{ nome = "pirueta" , dict = "anim@arena@celeb@flat@solo@no_props@" , anim = "cap_a_player_a" , andar = false , loop = false },
	{ nome = "pirueta2" , dict = "anim@arena@celeb@flat@solo@no_props@" , anim = "flip_a_player_a" , andar = false , loop = false },
	{ nome = "escorregar" , dict = "anim@arena@celeb@flat@solo@no_props@" , anim = "slide_a_player_a" , andar = false , loop = false },
	{ nome = "escorregar2" , dict = "anim@arena@celeb@flat@solo@no_props@" , anim = "slide_c_player_a" , andar = false , loop = false },
	{ nome = "gang" , dict = "mp_player_int_uppergang_sign_a" , anim = "mp_player_int_gang_sign_a" , andar = true , loop = true },
	{ nome = "gang2" , dict = "mp_player_int_uppergang_sign_b" , anim = "mp_player_int_gang_sign_b" , andar = true , loop = true },
	{ nome = "fodase" , dict = "anim@arena@celeb@podium@no_prop@" , anim = "flip_off_a_1st" , andar = false , loop = false },
	{ nome = "taco" , dict = "anim@arena@celeb@flat@solo@no_props@" , anim = "slugger_a_player_a" , andar = false , loop = false },
	{ nome = "onda" , dict = "anim@mp_player_intupperfind_the_fish" , anim = "idle_a" , andar = false , loop = true },
	{ nome = "lutar3" , dict = "rcmextreme2" , anim = "loop_punching" , andar = true , loop = true },
	{ nome = "heroi" , dict = "rcmbarry" , anim = "base" , andar = true , loop = true },
	{ nome = "boboalegre" , dict = "rcm_barry2" , anim = "clown_idle_0" , andar = false , loop = false },
	{ nome = "boboalegre2" , dict = "rcm_barry2" , anim = "clown_idle_1" , andar = false , loop = false },
	{ nome = "boboalegre3" , dict = "rcm_barry2" , anim = "clown_idle_2" , andar = false , loop = false },
	{ nome = "boboalegre4" , dict = "rcm_barry2" , anim = "clown_idle_3" , andar = false , loop = false },
	{ nome = "boboalegre5" , dict = "rcm_barry2" , anim = "clown_idle_6" , andar = false , loop = false },
	{ nome = "meditar4" , dict = "timetable@amanda@ig_4" , anim = "ig_4_base" , andar = false , loop = true },
	{ nome = "passa" , dict = "mini@strip_club@lap_dance@ld_girl_a_approach" , anim = "ld_girl_a_approach_f" , andar = false , loop = false },	
	{ nome = "passaro" , dict = "random@peyote@bird" , anim = "wakeup" , andar = false , loop = false },
	{ nome = "cachorro" , dict = "random@peyote@dog" , anim = "wakeup" , andar = false , loop = false },
	{ nome = "karate" , dict = "anim@mp_player_intcelebrationfemale@karate_chops" , anim = "karate_chops" , andar = false , loop = false },
	{ nome = "karate2" , dict = "anim@mp_player_intcelebrationmale@karate_chops" , anim = "karate_chops" , andar = false , loop = false },
	{ nome = "ameacar" , dict = "anim@mp_player_intcelebrationmale@cut_throat" , anim = "cut_throat" , andar = false , loop = false },
	{ nome = "ameacar2" , dict = "anim@mp_player_intcelebrationfemale@cut_throat" , anim = "cut_throat" , andar = false , loop = false },
	{ nome = "boxe" , dict = "anim@mp_player_intcelebrationmale@shadow_boxing" , anim = "shadow_boxing" , andar = false , loop = false },
	{ nome = "boxe2" , dict = "anim@mp_player_intcelebrationfemale@shadow_boxing" , anim = "shadow_boxing" , andar = false , loop = false },
    { nome = "mamamia" , dict = "anim@mp_player_intcelebrationmale@finger_kiss" , anim = "finger_kiss" , andar = true , loop = false },
    { nome = "louco" , dict = "anim@mp_player_intincaryou_locobodhi@ds@" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "agitar" , dict = "random@street_race", anim = "_streetracer_accepted", andar = false, loop = false },
	{ nome = "agitar2" , dict = "random@street_race", anim = "grid_girl_a", andar = false, loop = false },
	{ nome = "agitar3" , dict = "random@street_race", anim = "grid_girl_b", andar = false, loop = false },
    { nome = "xiu" , dict = "anim@mp_player_intincarshushbodhi@ds@" , anim = "idle_a_fp" , andar = true , loop = true },
	{ nome = "cruzar" , dict = "amb@world_human_cop_idles@female@idle_b" , anim = "idle_e" , andar = true , loop = true },
	{ nome = "cruzar2" , dict = "anim@amb@casino@hangout@ped_male@stand@02b@idles" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "cruzar3" , dict = "amb@world_human_hang_out_street@male_c@idle_a" , anim = "idle_b" , andar = true , loop = true },
	{ nome = "cruzar4" , dict = "random@street_race" , anim = "_car_b_lookout" , andar = true , loop = true },
	{ nome = "cruzar5" , dict = "random@shop_gunstore" , anim = "_idle" , andar = true , loop = true },
	{ nome = "cruzar6" , dict = "move_m@hiking" , anim = "idle" , andar = true , loop = true },
	{ nome = "cruzar7" , dict = "anim@amb@casino@valet_scenario@pose_d@" , anim = "base_a_m_y_vinewood_01" , andar = true , loop = true },
	{ nome = "cruzar8" , dict = "anim@amb@casino@shop@ped_female@01a@base" , anim = "base" , andar = true , loop = true },
	{ nome = "cruzar9" , dict = "anim@amb@casino@valet_scenario@pose_c@" , anim = "shuffle_feet_a_m_y_vinewood_01" , andar = true , loop = true },
	{ nome = "cruzar10" , dict = "anim@amb@casino@hangout@ped_male@stand@03a@idles_convo" , anim = "idle_a" , andar = true , loop = true },
	{ nome = "fera" , dict = "anim@mp_fm_event@intro" , anim = "beast_transform" , andar = true , loop = false },
	{ nome = "render" , dict = "random@mugging3", anim = "handsup_standing_base", andar = true, loop = true },
	{ nome = "render2" , dict = "random@arrests@busted", anim = "idle_a", andar = true, loop = true },
	{ nome = "aquecer" , dict = "anim@deathmatch_intros@unarmed" , anim = "intro_male_unarmed_a" , andar = false , loop = false },
	{ nome = "aquecer2" , dict = "anim@deathmatch_intros@unarmed" , anim = "intro_male_unarmed_d" , andar = false , loop = false },
	{ nome = "aquecer3" , dict = "move_f@jogger", anim = "idle", andar = false, loop = true },
	{ nome = "aquecer4" , dict = "move_m@jogger", anim = "idle", andar = false, loop = true },
	{ nome = "swat" , dict = "swat" , anim = "come" , andar = true , loop = false },
	{ nome = "swat2" , dict = "swat" , anim = "freeze" , andar = true , loop = false },
	{ nome = "swat3" , dict = "swat" , anim = "go_fwd" , andar = true , loop = false },
	{ nome = "swat4" , dict = "swat" , anim = "rally_point" , andar = true , loop = false },
	{ nome = "swat5" , dict = "swat" , anim = "understood" , andar = true , loop = false },
	{ nome = "swat6" , dict = "swat" , anim = "you_back" , andar = true , loop = false },
	{ nome = "swat7" , dict = "swat" , anim = "you_fwd" , andar = true , loop = false },
	{ nome = "swat8" , dict = "swat" , anim = "you_left" , andar = true , loop = false },
	{ nome = "swat9" , dict = "swat" , anim = "you_right" , andar = true , loop = false },
	{ nome = "megaphone" , dict = "anim@random@shop_clothes@watches" , anim = "base" , prop = "prop_megaphone_01" , andar = true , loop = true , flag = 49 , mao = 60309 , pos1 = 0.10 , pos2 = 0.04 , pos3 = 0.012 , pos4 = -60.0 , pos5 = 100.0 , pos6 = -30.0 , propAnim = true },
	{ nome = "poledance" , dict = "mini@strip_club@pole_dance@pole_dance1" , anim = "pd_dance_01" , andar = false , loop = true },
	{ nome = "poledance2" , dict = "mini@strip_club@pole_dance@pole_dance2" , anim = "pd_dance_02" , andar = false , loop = true },
	{ nome = "poledance3" , dict = "mini@strip_club@pole_dance@pole_dance3" , anim = "pd_dance_03" , andar = false , loop = true },
	{ nome = 'hangloose' , dict= 'mopose5@animation' , anim = 'mopose5_clip' , andar = true , loop = true },
	{ nome = "naruto" , dict = "custom@narutorun" , anim = "narutorun" , andar = true , loop = true },
	{ nome = "backflip" , dict = "custom@backflip" , anim = "backflip" , andar = false , loop = true },
	{ nome = "chan" , dict = "custom@deskchan" , anim = "deskchan" , andar = false , loop = true },
	{ nome = "polichinelo" , dict = "custom@jumpingjack" , anim = "jumpingjack" , andar = false , loop = true },
	{ nome = "convulsao" , dict = "custom@convulsion" , anim = "convulsion" , andar = false , loop = true },



	-- { nome = 'comerteste' , dict= 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1' , anim = 'base_idle' , andar = true , loop = true },

	


	-- #########################################
	-- ######## início poses para fotos ########
	-- #########################################


	{ nome = "pose1" , dict = "custom@female_pose_1" , anim = "female_pose_1" , andar = false , loop = true },
	{ nome = "pose2" , dict = "custom@female_pose_2" , anim = "female_pose_2" , andar = false , loop = true },
	{ nome = "pose3" , dict = "custom@female_pose_3" , anim = "female_pose_3" , andar = false , loop = true },
	{ nome = "pose4" , dict = "custom@male_pose_1" , anim = "male_pose_1" , andar = false , loop = true },
	{ nome = "pose5" , dict = "custom@male_pose_2" , anim = "male_pose_2" , andar = false , loop = true },
	{ nome = "pose6" , dict = "custom@male_pose_3" , anim = "male_pose_3" , andar = false , loop = true },
	{ nome = "pose7" , dict = "mggymirror1@animation" , anim = "mggymirror1_clip" , andar = false , loop = true },
	{ nome = "pose8" , dict = "genesismods@stepbackp7" , anim = "pose7" , andar = false , loop = true },
	{ nome = "pose9" , dict = "mggymirror3@animation" , anim = "mggymirror3_clip" , andar = false , loop = true },
	{ nome = "pose10" , dict = "mggymirror4@animation" , anim = "mggymirror4_clip" , andar = false , loop = true },
	{ nome = "pose11" , dict = "mggycas1@animation" , anim = "mggycas1_clip" , andar = false , loop = true },
	{ nome = "pose12" , dict = "mggycas2@animation" , anim = "mggycas2_clip" , andar = false , loop = true },
	{ nome = "pose13" , dict = "standbag1@blackqueen" , anim = "standbag1_clip" , andar = false , loop = true },
	{ nome = "pose14" , dict = "womanpose@blackqueen" , anim = "womanpose_clip" , andar = false , loop = true },
	{ nome = "pose15" , dict = "standingback@blackqueen" , anim = "standingback_clip" , andar = false , loop = true },
	{ nome = "pose16" , dict = "sitting@blackqueen" , anim = "sitting_clip" , andar = false , loop = true },
	{ nome = "pose17" , dict = "sitting1@blackqueen" , anim = "sitting1_clip" , andar = false , loop = true },
	{ nome = "pose18" , dict = "sitfemale@blackqueen" , anim = "sitfemale_clip" , andar = false , loop = true },
	{ nome = "pose19" , dict = "sitfemale1@blackqueen" , anim = "sitfemale1_clip" , andar = false , loop = true },
	{ nome = "pose20" , dict = "sitfemale2@blackqueen" , anim = "sitfemale2_clip" , andar = false , loop = true },
	{ nome = "pose21" , dict = "sitpose@blackqueen" , anim = "sitpose_clip" , andar = false , loop = true },
	{ nome = "pose22" , dict = "sitoncar1@blackqueen" , anim = "sitoncar1_clip" , andar = false , loop = true },
	{ nome = "pose23" , dict = "pistol@blackqueen" , anim = "pistol_clip" , andar = false , loop = true },
	{ nome = "pose24" , dict = "middlefinger@blackqueen" , anim = "middlefinger_clip" , andar = false , loop = true },
	-- { nome = "pose25" , dict = "leanwall@blackqueen" , anim = "leanwall_clip" , andar = false , loop = true },
	{ nome = "pose26" , dict = "pupppy@freepose01" , anim = "freepose01" , andar = false , loop = true },
	{ nome = "pose27" , dict = "pupppy@freepose02" , anim = "freepose02" , andar = false , loop = true },
	{ nome = "pose28" , dict = "barbiepose@1" , anim = "barbie1" , andar = false , loop = true },
	{ nome = "pose29" , dict = "barbiepose@w4" , anim = "barbie4" , andar = false , loop = true },
	{ nome = "pose30" , dict = "barbiepose@w5" , anim = "barbie5" , andar = false , loop = true },
	{ nome = "pose31" , dict = "barbiepose@w6" , anim = "barbie6" , andar = false , loop = true },
	{ nome = "pose32" , dict = "anim@female_smoke_01" , anim = "f_smoke_01_clip" , andar = false , loop = true },
	{ nome = "pose33" , dict = "anim@female_lean_01" , anim = "f_lean_01_clip" , andar = false , loop = true },
	{ nome = "pose34" , dict = "anim@female_selfie_1st_01" , anim = "f_selfie_1st_01_clip" , andar = false , loop = true },
	{ nome = "pose35" , dict = "anim@female_model_01" , anim = "f_model_01_clip" , andar = false , loop = true },
	{ nome = "pose36" , dict = "anim@female_model_02" , anim = "f_model_02_clip" , andar = false , loop = true },
	{ nome = "pose37" , dict = "anim@female_model_03" , anim = "f_model_03_clip" , andar = false , loop = true },
	{ nome = "pose38" , dict = "zc@sexy01" , anim = "zc_sexy" , andar = false , loop = true },
	{ nome = "pose39" , dict = "zc@sexy05" , anim = "sexy05" , andar = false , loop = true },
	{ nome = "pose40" , dict = "lunyx@random@v3@pose001" , anim = "random@v3@pose001" , andar = false , loop = true },
	{ nome = "pose41" , dict = "lunyx@random@v3@pose002" , anim = "random@v3@pose002" , andar = false , loop = true },
	{ nome = "pose42" , dict = "lunyx@random@v3@pose003" , anim = "random@v3@pose003" , andar = false , loop = true },
	{ nome = "pose43" , dict = "lunyx@random@v3@pose004" , anim = "random@v3@pose004" , andar = false , loop = true },
	{ nome = "pose44" , dict = "lunyx@random@v3@pose005" , anim = "random@v3@pose005" , andar = false , loop = true },
	{ nome = "pose45" , dict = "lunyx@random@v3@pose006" , anim = "random@v3@pose006" , andar = false , loop = true },
	{ nome = "pose46" , dict = "lunyx@random@v3@pose007" , anim = "random@v3@pose007" , andar = false , loop = true }, 
	{ nome = "pose47" , dict = "lunyx@random@v3@pose008" , anim = "random@v3@pose008" , andar = false , loop = true },
	{ nome = "pose48" , dict = "lunyx@random@v3@pose009" , anim = "random@v3@pose009" , andar = false , loop = true },
	{ nome = "pose49" , dict = "lunyx@random@v3@pose010" , anim = "random@v3@pose010" , andar = false , loop = true },
	{ nome = "pose50" , dict = "lunyx@random@v3@pose011" , anim = "random@v3@pose011" , andar = false , loop = true },
	{ nome = "pose51" , dict = "lunyx@random@v3@pose012" , anim = "random@v3@pose012" , andar = false , loop = true },
	{ nome = "pose52" , dict = "lunyx@random@v3@pose013" , anim = "random@v3@pose013" , andar = false , loop = true },
	{ nome = "pose53" , dict = "lunyx@random@v3@pose014" , anim = "random@v3@pose014" , andar = false , loop = true },
	{ nome = "pose54" , dict = "lunyx@random@v3@pose015" , anim = "random@v3@pose015" , andar = false , loop = true },
	{ nome = "pose55" , dict = "lunyx@random@v3@pose016" , anim = "random@v3@pose016" , andar = false , loop = true },
	{ nome = "pose56" , dict = "lunyx@random@v3@pose017" , anim = "random@v3@pose017" , andar = false , loop = true },
	{ nome = "pose57" , dict = "lunyx@random@v3@pose018" , anim = "random@v3@pose018" , andar = false , loop = true },
	{ nome = "pose58" , dict = "lunyx@random@v3@pose019" , anim = "random@v3@pose019" , andar = false , loop = true },
	{ nome = "pose59" , dict = "lunyx@random@v3@pose020" , anim = "random@v3@pose020" , andar = false , loop = true },
	{ nome = "pose60" , dict = "instagrampose@seimen" , anim = "instagrampose_clip" , andar = false , loop = true },
	{ nome = "pose61" , dict = "instagrampose5@seimen" , anim = "instagrampose5_clip" , andar = false , loop = true },
	{ nome = "pose62" , dict = "instagrampose6@seimen" , anim = "instagrampose6_clip" , andar = false , loop = true },
	{ nome = "pose63" , dict = "instagrampose7@seimen" , anim = "instagrampose7_clip" , andar = false , loop = true },
	{ nome = "pose64" , dict = "instagrampose8@seimen" , anim = "instagrampose8_clip" , andar = false , loop = true },
	{ nome = "pose65" , dict = "instagrampose9@seimen" , anim = "instagrampose9_clip" , andar = false , loop = true },
	{ nome = "pose66" , dict = "badbitch1@machineanimz" , anim = "badbitch1_clip" , andar = false , loop = true },
	{ nome = "pose67" , dict = "badbitch2@machineanimz" , anim = "badbitch2_clip" , andar = false , loop = true },
	{ nome = "pose68" , dict = "badbitch3@machineanimz" , anim = "badbitch3_clip" , andar = false , loop = true },
	{ nome = "pose69" , dict = "badbitch4@machineanimz" , anim = "badbitch4_clip" , andar = false , loop = true },
	{ nome = "pose70" , dict = "badbitch5@machineanimz" , anim = "badbitch5_clip" , andar = false , loop = true },
	{ nome = "pose71" , dict = "goodbitch1@machineanimz" , anim = "goodbitch1_clip" , andar = false , loop = true },
	{ nome = "pose72" , dict = "syx@cute01" , anim = "cute01" , andar = false , loop = true },
	{ nome = "pose73" , dict = "syx@cute02" , anim = "cute02" , andar = false , loop = true },
	{ nome = "pose74" , dict = "syx@cute03" , anim = "cute03" , andar = false , loop = true },
	{ nome = "pose75" , dict = "syx@cute04" , anim = "cute04" , andar = false , loop = true },
	{ nome = "pose76" , dict = "syx@cute05" , anim = "cute05" , andar = false , loop = true },
	{ nome = "pose77" , dict = "selfie@anim" , anim = "selfie_clip" , andar = false , loop = true },
	{ nome = "pose78" , dict = "selfie2@anim" , anim = "selfie2_clip" , andar = false , loop = true },
	{ nome = "pose79" , dict = "randompose1@anim" , anim = "randompose1_clip" , andar = false , loop = true },
	{ nome = "pose80" , dict = "randompose2@anim" , anim = "randompose2_clip" , andar = false , loop = true },      
	{ nome = "pose81" , dict = "stripper1@anim" , anim = "stripper1_clip" , andar = false , loop = true },
	{ nome = "pose82" , dict = "strip2@anim" , anim = "strip2_clip" , andar = false , loop = true },
	{ nome = "pose83" , dict = "pose5@anim" , anim = "pose5_clip" , andar = false , loop = true },
	{ nome = "pose84" , dict = "slavepose@anim" , anim = "slavepose_clip" , andar = false , loop = true },
	{ nome = "pose85" , dict = "standing1@blackqueen" , anim = "standing1_clip" , andar = false , loop = true },
	{ nome = "pose86" , dict = "lunyx@rgmp01" , anim = "rgmp01" , andar = false , loop = true },
	{ nome = "pose87" , dict = "lunyx@rgmp02" , anim = "rgmp02" , andar = false , loop = true },
	{ nome = "pose88" , dict = "lunyx@rgmp03" , anim = "rgmp03" , andar = false , loop = true },
	{ nome = "pose89" , dict = "lunyx@rgmp04" , anim = "rgmp04" , andar = false , loop = true },
	{ nome = "pose90" , dict = "lunyx@rgmp05" , anim = "rgmp05" , andar = false , loop = true },
	{ nome = "pose91" , dict = "lunyx@rgmp06" , anim = "rgmp06" , andar = false , loop = true },
	{ nome = "pose92" , dict = "lunyx@rgmp07" , anim = "rgmp07" , andar = false , loop = true },
	{ nome = "pose93" , dict = "mggyhang1@animation" , anim = "mggyhang1_clip" , andar = false , loop = true },
	{ nome = "pose94" , dict = "mggyhang2@animation" , anim = "mggyhang2_clip" , andar = false , loop = true },
	{ nome = "pose95" , dict = "mggyhang3@animation" , anim = "mggyhang3_clip" , andar = false , loop = true },
	{ nome = "pose96" , dict = "mggypiggypair1@animation" , anim = "mggypiggypair1_clip" , andar = false , loop = true },
	{ nome = "pose97" , dict = "mggypiggypair2@animation" , anim = "mggypiggypair2_clip" , andar = false , loop = true },
	{ nome = "pose98" , dict = "standingface1@blackqueen" , anim = "standingface1_clip" , andar = false , loop = true },
	{ nome = "pose99" , dict = "instagrampose2@seimen" , anim = "instagrampose2_clip" , andar = false , loop = true },
	{ nome = "pose100" , dict = "instagrampose3@seimen" , anim = "instagrampose3_clip" , andar = false , loop = true },
	{ nome = "pose101" , dict = "instagrampose4@seimen" , anim = "instagrampose4_clip" , andar = false , loop = true },
	{ nome = "pose102" , dict = "pose5@seimen" , anim = "pose5_clip" , andar = false , loop = true },
	{ nome = "pose103" , dict = "pose6@seimen" , anim = "pose6_clip" , andar = false , loop = true },
	{ nome = "pose104" , dict = "pose7@seimen" , anim = "pose7_clip" , andar = false , loop = true },
	{ nome = "pose105" , dict = "pose8@seimen" , anim = "pose8_clip" , andar = false , loop = true },
	{ nome = "pose106" , dict = "pose9@seimen" , anim = "pose9_clip" , andar = false , loop = true },
	{ nome = "pose107" , dict = "anim@hoodrat_pistol_selfie" , anim = "selfie_clip" , andar = false , loop = true },
	{ nome = "pose108" , dict = "anim@kneeling_stare" , anim = "kneeling_stare_clip" , andar = false , loop = true },
	{ nome = "pose109" , dict = "anim@model_cute" , anim = "model_cute_clip" , andar = false , loop = true },
	{ nome = "pose110" , dict = "anim@model_wall_cute" , anim = "wall_cute_clip" , andar = false , loop = true },
	{ nome = "pose111" , dict = "anim@selfie_floor_cute" , anim = "floor_cute_clip" , andar = false , loop = true },
	{ nome = "pose112" , dict = "anim@sitting_thot" , anim = "sitting_thot_clip" , andar = false , loop = true },
	{ nome = "pose113" , dict = "sittingonground@pose" , anim = "sittingonground_clip" , andar = false , loop = true },
	{ nome = "pose114" , dict = "jumpinwater@pose" , anim = "jumpinwater_clip" , andar = false , loop = true },
	{ nome = "pose115" , dict = "pose@seimen" , anim = "pose_clip" , andar = false , loop = true },
	{ nome = "pose116" , dict = "pose2@seimen" , anim = "pose2_clip" , andar = false , loop = true },
	{ nome = "pose117" , dict = "pose3@seimen" , anim = "pose3_clip" , andar = false , loop = true },
	{ nome = "pose118" , dict = "pose4@seimen" , anim = "pose4_clip" , andar = false , loop = true },
	{ nome = "pose119" , dict = "standingselfie@blackqueen" , anim = "standingselfie_clip" , andar = false , loop = true },
	{ nome = "pose120" , dict = "lunyx@minipack@v1@pose001" , anim = "minipack@v1@pose001" , andar = false , loop = true },
	{ nome = "pose121" , dict = "lunyx@minipack@v1@pose002" , anim = "minipack@v1@pose002" , andar = false , loop = true },
	{ nome = "pose122" , dict = "lunyx@minipack@v1@pose003" , anim = "minipack@v1@pose003" , andar = false , loop = true },
	{ nome = "pose123" , dict = "lunyx@minipack@v1@pose004" , anim = "minipack@v1@pose004" , andar = false , loop = true },
	{ nome = "pose124" , dict = "lunyx@minipack@v1@pose005" , anim = "minipack@v1@pose005" , andar = false , loop = true },
	{ nome = "pose125" , dict = "assleansit@queensisters" , anim = "asslean_clip" , andar = false , loop = true },
	{ nome = "pose126" , dict = "badrichgirl@queensisters" , anim = "badrichgirl_clip" , andar = false , loop = true },
	{ nome = "pose127" , dict = "bestfriendspose1@queensisters" , anim = "bffpose_clip" , andar = false , loop = true },
	{ nome = "pose128" , dict = "bestfriendspose2@queensisters" , anim = "bffpose2_clip" , andar = false , loop = true },
	{ nome = "pose129" , dict = "anim@sw_sit_chill" , anim = "sit_chill_clip" , andar = false , loop = true },
	{ nome = "pose130" , dict = "anim@sw_chill_pose" , anim = "chill_pose_clip" , andar = false , loop = true },
	{ nome = "pose131" , dict = "drillz@femalemirror_anim" , anim = "femalemirror_clip" , andar = false , loop = true },
	{ nome = "pose132" , dict = "drillz@femalecross_anim" , anim = "femalecross_clip" , andar = false , loop = true },
	{ nome = "pose133" , dict = "drillz@pursehold_anim" , anim = "pursehold_clip" , andar = false , loop = true },
	{ nome = "pose134" , dict = "drillz@leanie_anim" , anim = "leanie_clip" , andar = false , loop = true },
	{ nome = "pose135" , dict = "drillz@slobepose_anim" , anim = "slobepose_clip" , andar = false , loop = true },
	{ nome = "pose136" , dict = "drillz@crouchsmoke_anim" , anim = "crouchsmoke_clip" , andar = false , loop = true },
	{ nome = "pose137" , dict = "anim@lbp_kneeling_point" , anim = "kneeling_point_clip" , andar = false , loop = true },
	{ nome = "pose138" , dict = "anim@cargirl_peace" , anim = "peace_clip" , andar = false , loop = true },
	{ nome = "pose139" , dict = "anim@cargirl_look_back" , anim = "look_back_clip" , andar = false , loop = true },
	{ nome = "pose140" , dict = "anim@model_flipoff_cute" , anim = "flipoff_cute_clip" , andar = false , loop = true },
	{ nome = "pose141" , dict = "anim@selfie_instagram_booty" , anim = "instagram_booty_clip" , andar = false , loop = true },
	{ nome = "pose142" , dict = "anim@model_kylie_insta" , anim = "kylie_insta_clip" , andar = false , loop = true },
	{ nome = "pose143" , dict = "anim@egirl_booty_selfie" , anim = "booty_selfie_clip" , andar = false , loop = true },
	{ nome = "pose144" , dict = "anim@model_looking_back" , anim = "looking_back_clip" , andar = false , loop = true },
	{ nome = "pose145" , dict = "anim@female_selfie_cute" , anim = "selfie_cute_clip" , andar = false , loop = true },
	{ nome = "pose146" , dict = "anim@female_selfie_risque" , anim = "selfie_risque_clip" , andar = false , loop = true },
	{ nome = "pose147" , dict = "anim@female_laying_sexy" , anim = "laying_sexy_clip" , andar = false , loop = true },
	{ nome = "pose148" , dict = "anim@female_officer_gun_selfie" , anim = "gun_selfie_clip" , andar = false , loop = true },
	{ nome = "pose149" , dict = "anim@egirl_1foot_selfie" , anim = "1foot_selfie_clip" , andar = false , loop = true },
	{ nome = "pose150" , dict = "anim@female_beach_booty_selfie" , anim = "booty_selfie_clip" , andar = false , loop = true },
	{ nome = "pose151" , dict = "anim@female_car_model_one" , anim = "model_one_clip" , andar = false , loop = true },
	{ nome = "pose152" , dict = "anim@female_model_showoff" , anim = "model_showoff_clip" , andar = false , loop = true },
	{ nome = "pose153" , dict = "anim@female_leo_selfie" , anim = "leo_selfie_clip" , andar = false , loop = true },
	{ nome = "pose154" , dict = "anim@female_selfie_casual" , anim = "selfie_casual_clip" , andar = false , loop = true },
	{ nome = "pose155" , dict = "anim@model_car_fancy" , anim = "car_fancy_clip" , andar = false , loop = true },
	{ nome = "pose156" , dict = "anim@model_stretched_leg" , anim = "stretched_leg_clip" , andar = false , loop = true },
	{ nome = "pose157" , dict = "anim@car_sitting_fuckyou" , anim = "sitting_fuckyou_clip" , andar = false , loop = true },
	{ nome = "pose158" , dict = "anim@car_sitting_cute" , anim = "sitting_cute_clip" , andar = false , loop = true },
	{ nome = "pose159" , dict = "anim@model_bike" , anim = "bike_clip" , andar = false , loop = true },
	{ nome = "pose160" , dict = "anim@model_bike_two" , anim = "bike_two_clip" , andar = false , loop = true },
	{ nome = "pose161" , dict = "anim@peace_selfie" , anim = "peace_clip" , andar = false , loop = true },
	{ nome = "pose162" , dict = "anim@stance_folded_arms" , anim = "folded_arms_clip" , andar = false , loop = true },
	{ nome = "pose163" , dict = "anim@stance_kneeling_cute" , anim = "kneeling_cute_clip" , andar = false , loop = true },
	{ nome = "pose164" , dict = "anim@sit_cute_window" , anim = "cute_window_clip" , andar = false , loop = true },
	{ nome = "pose165" , dict = "anim@car_cute_sit" , anim = "cute_sit_clip" , andar = false , loop = true },
	{ nome = "pose166" , dict = "anim@selfie_peacesign_cute" , anim = "peacesign_cute_clip" , andar = false , loop = true },
	{ nome = "pose167" , dict = "drillz@headtilt_anim" , anim = "headtilt_clip" , andar = false , loop = true },
	{ nome = "pose168" , dict = "drillz@laydown_anim" , anim = "laydown_clip" , andar = false , loop = true },
	{ nome = "pose169" , dict = "drillz@selfiewall_anim_anim" , anim = "selfiewall_clip" , andar = false , loop = true },
	{ nome = "pose170" , dict = "drillz@leanfemalesit_anim" , anim = "leanfemalesit_clip" , andar = false , loop = true },
	{ nome = "pose171" , dict = "drillz@ruby_anim" , anim = "ruby_clip" , andar = false , loop = true },
	{ nome = "pose172" , dict = "fuckyouselfie@animation" , anim = "fuckyouselfie_clip" , andar = false , loop = true },
	{ nome = "pose173" , dict = "anim@gang_pistol_westside" , anim = "pistol_westside_clip" , andar = false , loop = true },
	{ nome = "pose174" , dict = "anim@gang_one" , anim = "gang_one_clip" , andar = false , loop = true },
	{ nome = "pose175" , dict = "anim@gang_two" , anim = "gang_two_clip" , andar = false , loop = true },
	{ nome = "pose176" , dict = "bankleansit@queensisters" , anim = "sitlean_clip" , andar = false , loop = true },
	{ nome = "pose177" , dict = "nikyminaj@queensisters" , anim = "nikyminaj_clip" , andar = false , loop = true },
	{ nome = "pose178" , dict = "sunpose1@queensisters" , anim = "sunpose1_clip" , andar = false , loop = true },
	{ nome = "pose179" , dict = "customposesit@queensisters" , anim = "custompose_clip" , andar = false , loop = true },
	{ nome = "pose180" , dict = "customposesit2@queensisters" , anim = "posesit_clip" , andar = false , loop = true },
	{ nome = "pose181" , dict = "sitkylie@queensisters" , anim = "kylie_clip" , andar = false , loop = true },
	{ nome = "pose182" , dict = "handkylie@queensisters" , anim = "kylie_clip" , andar = false , loop = true },
	{ nome = "pose183" , dict = "selfiekilye@queensisters" , anim = "kilye_clip" , andar = false , loop = true },
	{ nome = "pose184" , dict = "scrollingpose@queensisters" , anim = "scrolling_clip" , andar = false , loop = true },
	{ nome = "pose185" , dict = "fuckpose@queensister" , anim = "fuckpose_clip" , andar = false , loop = true },
	{ nome = "pose186" , dict = "halloweenpose@queensister" , anim = "halloweenpose_clip" , andar = false , loop = true },
	{ nome = "pose187" , dict = "handonhippose@queensisters" , anim = "handonhip_clip" , andar = false , loop = true },
	{ nome = "pose188" , dict = "heartselfiemirror@queensisters" , anim = "heartselfie_clip" , andar = false , loop = true },
	{ nome = "pose189" , dict = "hotpose@queensisters" , anim = "hotpose_clip" , andar = false , loop = true },
	{ nome = "pose190" , dict = "leancarqueen@animation" , anim = "leancar_clip" , andar = false , loop = true },
	{ nome = "pose191" , dict = "anim@shaka_sit" , anim = "shaka_clip" , andar = false , loop = true },
	{ nome = "pose192" , dict = "anim@male_casual_stance" , anim = "casual_stance_clip" , andar = false , loop = true },
	{ nome = "pose193" , dict = "anim@male_insta_selfie" , anim = "insta_selfie_clip" , andar = false , loop = true },
	{ nome = "pose194" , dict = "anim@male_bskball_dunk" , anim = "bskball_dunk_clip" , andar = false , loop = true },
	{ nome = "pose195" , dict = "anim@male_bskball_photo_pose" , anim = "photo_pose_clip" , andar = false , loop = true },
	{ nome = "pose196" , dict = "anim@male_bskball_hold" , anim = "bskball_hold_clip" , andar = false , loop = true },
	{ nome = "pose197" , dict = "perlenfuchs@chair_leg_up" , anim = "chair_leg_up_clip" , andar = false , loop = true },
	{ nome = "pose198" , dict = "perlenfuchs@close_your_eyes" , anim = "close_your_eyes_clip" , andar = false , loop = true },
	{ nome = "pose199" , dict = "perlenfuchs@couple2" , anim = "couple2_clip" , andar = false , loop = true },
	{ nome = "pose200" , dict = "perlenfuchs@couple2_1" , anim = "couple2_1_clip" , andar = false , loop = true },
	{ nome = "pose201" , dict = "perlenfuchs@crossed_legs" , anim = "crossed_legs_clip" , andar = false , loop = true },
	{ nome = "pose202" , dict = "perlenfuchs@female_standing2" , anim = "female_standing2_clip" , andar = false , loop = true },
	{ nome = "pose203" , dict = "perlenfuchs@friends1_r" , anim = "friends1_r_clip" , andar = false , loop = true },
	{ nome = "pose204" , dict = "perlenfuchs@friends1_l" , anim = "friends1_l_clip" , andar = false , loop = true },
	{ nome = "pose205" , dict = "perlenfuchs@fxck_you3" , anim = "fxck_you3_clip" , andar = false , loop = true },
	{ nome = "pose206" , dict = "perlenfuchs@fxckyou_heart" , anim = "fxckyou_heart_clip" , andar = false , loop = true },
	{ nome = "pose207" , dict = "perlenfuchs@fxckyou2" , anim = "fxckyou2_clip" , andar = false , loop = true },
	{ nome = "pose208" , dict = "perlenfuchs@hold_cap" , anim = "hold_cap_clip" , andar = false , loop = true },
	{ nome = "pose209" , dict = "perlenfuchs@model_pose1" , anim = "model_pose1_clip" , andar = false , loop = true },
	{ nome = "pose210" , dict = "perlenfuchs@no_photo_please" , anim = "no_photo_please_clip" , andar = false , loop = true },
	{ nome = "pose211" , dict = "perlenfuchs@sexy_wall" , anim = "sexy_wall_clip" , andar = false , loop = true },
	{ nome = "pose212" , dict = "sexy_wall_clip" , anim = "sexy_wall1_clip" , andar = false , loop = true },
	{ nome = "pose213" , dict = "perlenfuchs@sit_basketball" , anim = "sit_basketball_clip" , andar = false , loop = true },
	{ nome = "pose214" , dict = "perlenfuchs@sit_cute3" , anim = "sit_cute3_clip" , andar = false , loop = true },
	{ nome = "pose215" , dict = "perlenfuchs@sit_on_car1" , anim = "sit_on_car1_clip" , andar = false , loop = true },
	{ nome = "pose216" , dict = "perlenfuchs@sit_pose1" , anim = "sit_pose1_clip" , andar = false , loop = true },
	{ nome = "pose217" , dict = "perlenfuchs@sport_2" , anim = "sport_2_clip" , andar = false , loop = true },
	{ nome = "pose218" , dict = "perlenfuchs@sport_handstand" , anim = "sport_handstand_clip" , andar = false , loop = true },
	{ nome = "pose219" , dict = "perlenfuchs@standing_door" , anim = "standing_door_clip" , andar = false , loop = true },
	{ nome = "pose220" , dict = "perlenfuchs@standing_wall" , anim = "standing_wall_clip" , andar = false , loop = true },
	{ nome = "pose221" , dict = "posecustom@queensisters" , anim = "posecustom_clip" , andar = false , loop = true },
	{ nome = "pose222" , dict = "queensisterpose1@animation" , anim = "pose1_clip" , andar = false , loop = true },
	{ nome = "pose223" , dict = "sitdownonknees@queensisters" , anim = "sitdown_clip" , andar = false , loop = true },
	{ nome = "pose224" , dict = "anim@male_basketball_01" , anim = "m_basketball_01_clip" , andar = false , loop = true },
	{ nome = "pose225" , dict = "anim@male_basketball_02" , anim = "m_basketball_02_clip" , andar = false , loop = true },
	{ nome = "pose226" , dict = "anim@male_basketball_03" , anim = "m_basketball_03_clip" , andar = false , loop = true },
	{ nome = "pose227" , dict = "anim@male_basketball_04" , anim = "m_basketball_04_clip" , andar = false , loop = true },
	{ nome = "pose228" , dict = "anim@male_basketball_05" , anim = "m_basketball_05_clip" , andar = false , loop = true },
	{ nome = "pose229" , dict = "anim@male_basketball_06" , anim = "m_basketball_06_clip" , andar = false , loop = true },
	{ nome = "pose230" , dict = "thinkerpose@animation" , anim = "thinker_clip" , andar = false , loop = true },
	{ nome = "pose231" , dict = "waitingpose@animation" , anim = "waitingpose_clip" , andar = false , loop = true },
	{ nome = "pose232" , dict = "baseball@blackqueen" , anim = "baseball_clip" , andar = false , loop = true },
	{ nome = "pose233" , dict = "friends1@blackqueen" , anim = "friends1_clip" , andar = false , loop = true },
	{ nome = "pose234" , dict = "friends2@blackqueen" , anim = "friends2_clip" , andar = false , loop = true },
	{ nome = "pose235" , dict = "handshead@blackqueen" , anim = "handshead_clip" , andar = false , loop = true },
	{ nome = "pose236" , dict = "leanwall@blackqueen" , anim = "leanwall_clip" , andar = false , loop = true },
	{ nome = "pose237" , dict = "middlefinger@blackqueen" , anim = "middlefinger_clip" , andar = false , loop = true },
	{ nome = "pose238" , dict = "pupppy@freepose01" , anim = "freepose01" , andar = false , loop = true },
	{ nome = "pose239" , dict = "pupppy@freepose02" , anim = "freepose02" , andar = false , loop = true },
	{ nome = "pose240" , dict = "pupppy@freepose03" , anim = "freepose03" , andar = false , loop = true },
	{ nome = "pose241" , dict = "pupppy@freeselfie01" , anim = "freeselfie01" , andar = false , loop = true },
	{ nome = "pose242" , dict = "pupppy@freepose03" , anim = "freepose03" , andar = false , loop = true },
	{ nome = "pose243" , dict = "pupppy@freepose04" , anim = "freepose04" , andar = false , loop = true },
	{ nome = "pose244" , dict = "pupppy@freeselfie01" , anim = "freeselfie01" , andar = false , loop = true },
	{ nome = "pose245" , dict = "pupppy@freeselfie02" , anim = "freeselfie02" , andar = false , loop = true },
	{ nome = "pose246" , dict = "pupppy@freeselfie03" , anim = "freeselfie03" , andar = false , loop = true },
	{ nome = "pose247" , dict = "sitfloorfemale@blackqueen" , anim = "sitfloorfemale_clip" , andar = false , loop = true },
	{ nome = "pose248" , dict = "sitoncar1@blackqueen" , anim = "sitoncar1_clip" , andar = false , loop = true },
	{ nome = "pose249" , dict = "sitoncar@blackqueen" , anim = "sitoncar_clip" , andar = false , loop = true },
	{ nome = "pose250" , dict = "sitfemale@blackqueen" , anim = "sitfemale_clip" , andar = false , loop = true },
	{ nome = "pose251" , dict = "sitfemale1@blackqueen" , anim = "sitfemale1_clip" , andar = false , loop = true },
	{ nome = "pose252" , dict = "sitfemale2@blackqueen" , anim = "sitfemale2_clip" , andar = false , loop = true },
	{ nome = "pose253" , dict = "sitting1@blackqueen" , anim = "sitting1_clip" , andar = false , loop = true },
	{ nome = "pose254" , dict = "sittingbed@blackqueen" , anim = "sittingbed_clip" , andar = false , loop = true },
	{ nome = "pose255" , dict = "sittingmirror@blackqueen" , anim = "sittingmirror_clip" , andar = false , loop = true },
	{ nome = "pose256" , dict = "standbag1@blackqueen" , anim = "standbag1_clip" , andar = false , loop = true },
	{ nome = "pose257" , dict = "standbag@blackqueen" , anim = "standbag_clip" , andar = false , loop = true },
	{ nome = "pose258" , dict = "standing1@blackqueen" , anim = "standing1_clip" , andar = false , loop = true },
	{ nome = "pose259" , dict = "standing2@blackqueen" , anim = "standing2_clip" , andar = false , loop = true },
	{ nome = "pose260" , dict = "standing3@blackqueen" , anim = "standing3_clip" , andar = false , loop = true },
	{ nome = "pose261" , dict = "standing5@blackqueen" , anim = "standing5_clip" , andar = false , loop = true },
	{ nome = "pose262" , dict = "standingselfie1@blackqueen" , anim = "standingselfie1_clip" , andar = false , loop = true },
	{ nome = "pose263" , dict = "genesismods@stepbackp5" , anim = "pose5" , andar = false , loop = true },
	{ nome = "pose264" , dict = "genesismods@stepbackp6" , anim = "pose6" , andar = false , loop = true },
	{ nome = "pose265" , dict = "koreanpose01@animation" , anim = "koreanpose_01_clip" , andar = false , loop = true },
	{ nome = "pose266" , dict = "koreanpose02@animation" , anim = "koreanpose_02_clip" , andar = false , loop = true },
	{ nome = "pose267" , dict = "koreanpose03@animation" , anim = "koreanpose_03_clip" , andar = false , loop = true },
	{ nome = "pose268" , dict = "rollz@carfreeanim" , anim = "carfreeanim_clip" , andar = false , loop = true },
	{ nome = "pose269" , dict = "jxbottle2anims@animation" , anim = "jxbottle2anims_clip" , andar = false , loop = true },
	{ nome = "pose270" , dict = "jxcig5anims@animation" , anim = "jxcig5anims_clip" , andar = false , loop = true },
	{ nome = "pose271" , dict = "jxcig7anims@animation" , anim = "jxcig7anims_clip" , andar = false , loop = true },
	{ nome = "pose272" , dict = "jxcig8anims@animation" , anim = "jxcig8anims_clip" , andar = false , loop = true },
	{ nome = "pose273" , dict = "genesismods@stepbackp4" , anim = "pose4" , andar = false , loop = true },
	{ nome = "pose274" , dict = "jxhand3anims@animation" , anim = "jxhand3anims_clip" , andar = false , loop = true },
	{ nome = "pose275" , dict = "jxmny5anims@animation" , anim = "jxmny5anims_clip" , andar = false , loop = true },
	{ nome = "pose276" , dict = "jxmny6anims@animation" , anim = "jxmny6anims_clip" , andar = false , loop = true },
	{ nome = "pose277" , dict = "jxphone2anims@animation" , anim = "jxphone2anims_clip" , andar = false , loop = true },
	{ nome = "pose278" , dict = "jxsit6anims@animation" , anim = "jxsit6anims_clip" , andar = false , loop = true },
	{ nome = "pose279" , dict = "karxem@travis" , anim = "karxem_travis_clip" , andar = false , loop = true },
	{ nome = "pose280" , dict = "karxem@money" , anim = "karxem_money_clip" , andar = false , loop = true },
	{ nome = "pose281" , dict = "karxem@yachty" , anim = "karxem_yachty_clip" , andar = false , loop = true },
	{ nome = "pose282" , dict = "karxem@youngboy" , anim = "karxem_youngboy_clip" , andar = false , loop = true },
	{ nome = "pose283" , dict = "azztek@pose2" , anim = "azztekpose2_clip" , andar = false , loop = true },
	{ nome = "pose284" , dict = "azztek@pose4" , anim = "azztekpose4_clip" , andar = false , loop = true },
	{ nome = "pose285" , dict = "azztek@pose5" , anim = "azztekpose5_clip" , andar = false , loop = true },
	{ nome = "pose286" , dict = "azztek@pose8" , anim = "azztekpose8_clip" , andar = false , loop = true },
	{ nome = "pose287" , dict = "azztek@pose9" , anim = "azztekpose9_clip" , andar = false , loop = true },
	{ nome = "pose288" , dict = "azzsign@animation" , anim = "azzsign_clip" , andar = false , loop = true },
	{ nome = "pose289" , dict = "azzsign2@animation" , anim = "azzsign2_clip" , andar = false , loop = true },
	{ nome = "pose290" , dict = "azzsign3@animation" , anim = "azzsign3_clip" , andar = false , loop = true },
	{ nome = "pose291" , dict = "azzsign4@animation" , anim = "azzsign4_clip" , andar = false , loop = true },
	{ nome = "pose292" , dict = "azzsign5@animation" , anim = "azzsign5_clip" , andar = false , loop = true },
	{ nome = "pose293" , dict = "custom@freestyle_lxcky" , anim = "freestyle_clip" , andar = false , loop = true },
	{ nome = "pose294" , dict = "perlenfuchs@cant_see_you_male" , anim = "cant_see_you_male_clip" , andar = false , loop = true },
	{ nome = "pose295" , dict = "perlenfuchs@fxck_you_male" , anim = "fxck_you_male_clip" , andar = false , loop = true },
	{ nome = "pose296" , dict = "perlenfuchs@male_fxckyou" , anim = "male_fxckyou_clip" , andar = false , loop = true },
	{ nome = "pose297" , dict = "perlenfuchs@male_gun" , anim = "male_gun_clip" , andar = false , loop = true },
	{ nome = "pose298" , dict = "perlenfuchs@male_sit1" , anim = "male_sit1_clip" , andar = false , loop = true },
	{ nome = "pose299" , dict = "perlenfuchs@stand_male" , anim = "stand_male_clip" , andar = false , loop = true },
	{ nome = "pose300" , dict = "perlenfuchs@standing_male" , anim = "standing_male_clip" , andar = false , loop = true },
	{ nome = "pose301" , dict = "perlenfuchs@standing_wall2" , anim = "standing_wall2_clip" , andar = false , loop = true },
	{ nome = "pose302" , dict = "luxurymods@animation_male_1" , anim = "animation_male_1_clip" , andar = false , loop = true },
	{ nome = "pose303" , dict = "jxs1anims@animation" , anim = "jxs1anims_clip" , andar = false , loop = true },
	{ nome = "pose304" , dict = "jxs2anims@animation" , anim = "jxs2anims_clip" , andar = false , loop = true },
	{ nome = "pose305" , dict = "jxs3anims@animation" , anim = "jxs3anims_clip" , andar = false , loop = true },
	{ nome = "pose306" , dict = "jxs4anims@animation" , anim = "jxs4anims_clip" , andar = false , loop = true },
	{ nome = "pose307" , dict = "jxs5anims@animation" , anim = "jxs5anims_clip" , andar = false , loop = true },
	{ nome = "pose308" , dict = "jxs9anims@animation" , anim = "jxs9anims_clip" , andar = false , loop = true },
	{ nome = "pose309" , dict = "jxs10anims@animation" , anim = "jxs10anims_clip" , andar = false , loop = true },
	{ nome = "pose310" , dict = "jxs11anims@animation" , anim = "jxs11anims_clip" , andar = false , loop = true },
	{ nome = "pose311" , dict = "jxs12anims@animation" , anim = "jxs12anims_clip" , andar = false , loop = true },
	{ nome = "pose312" , dict = "jxfxck1anims@animation" , anim = "jxfxck1anims_clip" , andar = false , loop = true },
	{ nome = "pose313" , dict = "jx2moneyanims@animation" , anim = "jx2moneyanims_clip" , andar = false , loop = true },
	{ nome = "pose314" , dict = "jxmill2anims@animation" , anim = "jxmill2anims_clip" , andar = false , loop = true },
	{ nome = "pose315" , dict = "business@blackqueen" , anim = "business_clip" , andar = false , loop = true },
	{ nome = "pose316" , dict = "malestanding@blackqueen" , anim = "malestanding_clip" , andar = false , loop = true },
	{ nome = "pose317" , dict = "sitmale@blackqueen" , anim = "sitmale_clip" , andar = false , loop = true },
	{ nome = "pose318" , dict = "standing4@blackqueen" , anim = "standing4_clip" , andar = false , loop = true },
	{ nome = "pose319" , dict = "standing8@blackqueen" , anim = "standing8_clip" , andar = false , loop = true },
	{ nome = "pose320" , dict = "standingman@blackqueen" , anim = "standingman_clip" , andar = false , loop = true },
	{ nome = "pose321" , dict = "lstand@blackqueen" , anim = "lstand_clip" , andar = false , loop = true },
	{ nome = "pose322" , dict = "wstand@blackqueen" , anim = "wstand_clip" , andar = false , loop = true },
	{ nome = "pose323" , dict = "standphone1@blackqueen" , anim = "standphone1_clip" , andar = false , loop = true },
	{ nome = "pose324" , dict = "wstand1@blackqueen" , anim = "wstand1_clip" , andar = false , loop = true },
	{ nome = "pose325" , dict = "omega9@animation", anim = "omega9_clip", andar = false , loop = true },
	{ nome = "pose326" , dict = "omega10@animation", anim = "omega10_clip", andar = false , loop = true },
	{ nome = "pose327" , dict = "omega2@animation", anim = "omega2_clip", andar = false , loop = true },
	{ nome = "pose328" , dict = "omega3@animation", anim = "pose1_clip", andar = false , loop = true },
	{ nome = "pose329" , dict = "omega4@animation", anim = "pose8_clip", andar = false , loop = true },
	{ nome = "pose330" , dict = "testanim@alina" , anim = "testanim_clip" , andar = false , loop = true },
	{ nome = "pose331" , dict = "anim@selfie_knees_cute" , anim = "knees_cute_clip" , andar = false , loop = true },
	{ nome = "pose332" , dict = "arron@simspose3" , anim = "simspose3" , andar = false , loop = true },
	{ nome = "pose333" , dict = "arron@simspose4" , anim = "simspose4" , andar = false , loop = true },
	{ nome = "pose334" , dict = "arron@simspose5" , anim = "simspose5" , andar = false , loop = true },
	{ nome = "pose335" , dict = "random@shop_tattoo", anim = "_idle_a", andar = true, loop = true },
	{ nome = "pose336" , dict = "rcmnigel1cnmt_1c", anim = "base", andar = true, loop = true },
	{ nome = "pose337" , dict = "timetable@amanda@ig_3", anim = "ig_3_base_tracy", andar = true, loop = true },
	{ nome = "pose338" , dict = "misshair_shop@hair_dressers", anim = "keeper_base", andar = true, loop = true },
	{ nome = "pose339" , dict = "amb@world_human_bum_standing@twitchy@base", anim = "base", andar = true, loop = true },
	{ nome = "pose340" , dict = "mp_move@prostitute@m@french", anim = "idle", andar = true, loop = true },
	{ nome = "pose341" , dict = "amb@world_human_leaning@female@wall@back@hand_up@idle_a", anim = "idle_a", andar = true, loop = true },
	{ nome = "pose342" , dict = "pose1@animation" , anim = "pose1_clip" , andar = false , loop = true },
	{ nome = "pose343" , dict = "pose2@animation" , anim = "pose2_clip" , andar = false , loop = true },
	{ nome = "pose344" , dict = "pose3@animation" , anim = "pose3_clip" , andar = false , loop = true },
	{ nome = "pose345" , dict = "pose5@animation" , anim = "pose5_clip" , andar = false , loop = true },
	{ nome = "pose346" , dict = "pose11@animation" , anim = "pose11_clip" , andar = false , loop = true },
	{ nome = "pose347" , dict = "wristcheck@animation" , anim = "wristcheck_clip" , andar = false , loop = true },
	{ nome = "pose348" , dict = "bag@animation" , anim = "bag_clip" , andar = false , loop = true },
	{ nome = "pose349" , dict = "card@warly" , anim = "card1" , andar = false , loop = true },
	{ nome = "pose350" , dict = "card5@warly" , anim = "card5" , andar = false , loop = true },
	{ nome = "pose351" , dict = "dollie_mods@follow_me_001" , anim = "follow_me_001" , andar = false , loop = true },
	{ nome = "pose352" , dict = "arron@simspose1" , anim = "simspose1" , andar = false , loop = true },
	{ nome = "pose353" , dict = "suty@pose9" , anim ="suty_clip9" , andar = false , loop = true },
	{ nome = "pose354" , dict = "stretchpose@animation" , anim ="stretchpose_clip" , andar = false , loop = true },
	{ nome = "pose355" , dict = "layreading@animation" , anim ="layreading_clip" , andar = false , loop = true },
	{ nome = "pose356" , dict = "chillsplit@animation" , anim ="chillsplit_clip" , andar = false , loop = true },
	{ nome = "pose357" , dict = "chillfloor@animation" , anim ="chillfloor_clip" , andar = false , loop = true },
	{ nome = "pose358" , dict = "mggycurious@animation" , anim ="mggycurious_clip" , andar = false , loop = true },
	{ nome = "pose359" , dict = "littlespoon@selfie001" , anim ="selfie001" , andar = false , loop = true },
	{ nome = "pose360" , dict = "littlespoon@selfie002" , anim ="selfie002" , andar = false , loop = true },
	{ nome = "pose361" , dict = "littlespoon@selfie003" , anim ="selfie003" , andar = false , loop = true },
	{ nome = "pose362" , dict = "littlespoon@selfie004" , anim ="selfie004" , andar = false , loop = true },
	{ nome = "pose363" , dict = "littlespoon@selfie005" , anim ="selfie005" , andar = false , loop = true },
	{ nome = "pose364" , dict = "frabi@femalepose@solo@firstpoledance" , anim ="pose_poledance_001" , andar = false , loop = true },
	{ nome = "pose365" , dict = "frabi@femalepose@solo@firstpoledance" , anim ="pose_poledance_002" , andar = false , loop = true },
	{ nome = "pose366" , dict = "frabi@femalepose@solo@firstpoledance" , anim ="pose_poledance_003" , andar = false , loop = true },
	{ nome = "pose367" , dict = "frabi@femalepose@solo@firstpoledance" , anim ="pose_poledance_004" , andar = false , loop = true },
	{ nome = "pose368" , dict = "frabi@femalepose@solo@firstpoledance" , anim ="pose_poledance_005" , andar = false , loop = true },
	{ nome = "pose369" , dict = "karxem@girly" , anim ="karxem_girly_clip" , andar = false , loop = true },
	{ nome = "pose370" , dict = "karxem@girly2" , anim ="karxem_girly2_clip" , andar = false , loop = true },
	{ nome = "pose371" , dict = "karxem@girly3" , anim ="karxem_girly3_clip" , andar = false , loop = true },
	{ nome = "pose372" , dict = "karxem@girly5" , anim ="karxem_girly5_clip" , andar = false , loop = true },
	{ nome = "pose373" , dict = "mggyselfie1@animation" , anim ="mggyselfie1_clip" , andar = false , loop = true },
	{ nome = "pose374" , dict = "mggyselfie2@animation" , anim ="mggyselfie2_clip" , andar = false , loop = true },
	{ nome = "pose375" , dict = "mggyselfie4@animation" , anim ="mggyselfie4_clip" , andar = false , loop = true },
	{ nome = "pose376" , dict = "sitsexylean@queensisters" , anim ="sitsexy_clip" , andar = false , loop = true },
	{ nome = "pose377" , dict = "walllean2@queensisters" , anim ="walllean2_clip" , andar = false , loop = true },
	{ nome = "pose378" , dict = "eagle@girlpose15" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose379" , dict = "eagle@girlpose18" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose380" , dict = "eagle@girlpose19" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose381" , dict = "eagle@girlpose20" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose382" , dict = "eagle@girlpose21" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose383" , dict = "pretty2k@v3whaty2k1" , anim ="v3whaty2k1" , andar = false , loop = true },
	{ nome = "pose384" , dict = "pretty2k@v3whaty2k2" , anim ="v3whaty2k2" , andar = false , loop = true },
	{ nome = "pose385" , dict = "sixglock@y2kgirl1" , anim ="y2kgirl1" , andar = false , loop = true },
	{ nome = "pose386" , dict = "sixglock@y2kgirl2" , anim ="y2kgirl2" , andar = false , loop = true },
	{ nome = "pose387" , dict = "sixglock@y2kgirl3" , anim ="y2kgirl3" , andar = false , loop = true },
	{ nome = "pose388" , dict = "crower1@anim" , anim ="crower1_clip" , andar = false , loop = true },
	{ nome = "pose389" , dict = "poledancer@anim" , anim ="poledancer_clip" , andar = false , loop = true },
	{ nome = "pose390" , dict = "poledancer2@anim" , anim ="poledancer2_clip" , andar = false , loop = true },
	{ nome = "pose391" , dict = "poledancer3@anim" , anim ="poledancer3_clip" , andar = false , loop = true },
	{ nome = "pose392" , dict = "carpose1@anim" , anim ="carpose1_clip" , andar = false , loop = true },
	{ nome = "pose393" , dict = "pose3@anim" , anim ="pose3_clip" , andar = false , loop = true },
	{ nome = "pose394" , dict = "phonetwohands@anim" , anim ="phonetwohands_clip" , andar = false , loop = true },
	{ nome = "pose395" , dict = "pose1@nhyza" , anim ="pose1_clip" , andar = false , loop = true },
	{ nome = "pose396" , dict = "nhyza2@animation" , anim ="nhyza2_clip" , andar = false , loop = true },
	{ nome = "pose397" , dict = "nhyza@stairs" , anim ="stairs_clip" , andar = false , loop = true },
	{ nome = "pose398" , dict = "nhyza@sit" , anim ="sit_clip" , andar = false , loop = true },
	{ nome = "pose399" , dict = "nhyza@pose3" , anim ="pose3_clip" , andar = false , loop = true },
	{ nome = "pose400" , dict = "selfieleanpose@animation" , anim ="selfiepose_clip" , andar = false , loop = true },
	{ nome = "pose401" , dict = "leanwallpose@animation" , anim ="leanwall_clip" , andar = false , loop = true },
	{ nome = "pose402" , dict = "eagle@girlphonepose13" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose403" , dict = "eagle@girlpose06" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose404" , dict = "eagle@girlpose07" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose405" , dict = "eagle@girlpose08" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose406" , dict = "eagle@girlpose09" , anim ="girl" , andar = false , loop = true },
    { nome = "pose407" , dict = "jb179_gangposepack@v3_prop_anims3" , anim = "gangposev3c_props_3" , andar = false , loop = true },
	{ nome = "pose408" , dict = "josh@179@gangposepack@v4_anim11" , anim = "josh@179@gangposepackv4_ca11" , andar = false , loop = true },
	{ nome = "pose409" , dict = "jb179_customgangposev4@anim4" , anim = "jb179_cgp@an4" , andar = false , loop = true },
	{ nome = "pose410" , dict = "jb179_gangposepack@v3_prop_anims1" , anim = "gangposev3c_props_1" , andar = false , loop = true },
	{ nome = "pose411" , dict = "jb179_gangposepack@v3_prop_anims3" , anim = "gangposev3c_props_3" , andar = false , loop = true },
	{ nome = "pose412" , dict = "genesismods@stepbackouttakes" , anim ="pose1" , andar = false , loop = true },
	{ nome = "pose413" , dict = "genesismods@stepbackouttakesp2" , anim ="pose2" , andar = false , loop = true },
	{ nome = "pose414" , dict = "genesismods@stepbackouttakesp3" , anim ="pose3" , andar = false , loop = true },
	{ nome = "pose415" , dict = "genesismods@stepbackouttakesp4" , anim ="pose4" , andar = false , loop = true },
	{ nome = "pose416" , dict = "genesismods@stepbackouttakesp5" , anim ="pose5" , andar = false , loop = true },
	{ nome = "pose417" , dict = "eagle@girlpose22" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose418" , dict = "eagle@girlpose25" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose419" , dict = "eagle@girlpose26" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose420" , dict = "eagle@boypose05" , anim ="boy" , andar = false , loop = true },
	{ nome = "pose421" , dict = "eagle@girlphonepose20" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose422" , dict = "amnilka@photopose@female@randompack001" , anim ="amnilka_femalerandom_photopose_001" , andar = false , loop = true },
	{ nome = "pose423" , dict = "amnilka@photopose@female@randompack001" , anim ="amnilka_femalerandom_photopose_002" , andar = false , loop = true },
	{ nome = "pose424" , dict = "amnilka@photopose@female@randompack001" , anim ="amnilka_femalerandom_photopose_003" , andar = false , loop = true },
	{ nome = "pose425" , dict = "amnilka@photopose@female@randompack001" , anim ="amnilka_femalerandom_photopose_004" , andar = false , loop = true },
	{ nome = "pose426" , dict = "amnilka@photopose@female@randompack001" , anim ="amnilka_femalerandom_photopose_005" , andar = false , loop = true },
	{ nome = "pose427" , dict = "LLShop@randompose1" , anim ="llshop_clip" , andar = false , loop = true },
	{ nome = "pose428" , dict = "LLShop@randompose2" , anim ="llshop_clip" , andar = false , loop = true },
	{ nome = "pose429" , dict = "LLShop@randompose3" , anim ="llshop_clip" , andar = false , loop = true },
	{ nome = "pose430" , dict = "LLShop@randompose4" , anim ="llshop_clip" , andar = false , loop = true },
	{ nome = "pose431" , dict = "LLShop@randompose5" , anim ="llshop_clip" , andar = false , loop = true },
	{ nome = "pose432" , dict = "LLShop@pose" , anim ="llshop_clip" , andar = false , loop = true },
	{ nome = "pose433" , dict = "LLShop@lookbehind" , anim ="llshop_clip" , andar = false , loop = true },
	{ nome = "pose434" , dict = "handonwindow@queensisters" , anim ="handonwindow_clip" , andar = false , loop = true },
	{ nome = "pose435" , dict = "fuckfingerlips@queensisters" , anim ="fuckfingerlips_clip" , andar = false , loop = true },
	{ nome = "pose436" , dict = "josh@179@gangposepack@v4_anim09" , anim = "josh@179@gangposepackv4_ca9" , andar = false , loop = true },
	{ nome = "pose437" , dict = "josh@179@gangposepack@v4_anim10" , anim = "josh@179@gangposepackv4_ca10" , andar = false , loop = true },
	{ nome = "pose438" , dict = "josh@179@gangposepack@v4_anim11" , anim = "josh@179@gangposepackv4_ca11" , andar = false , loop = true },
	{ nome = "pose439" , dict = "jb179_customgangposev4@anim4" , anim = "jb179_cgp@an4" , andar = false , loop = true },
	{ nome = "pose440" , dict = "jb179_gangposepack@v3_prop_anims1" , anim = "gangposev3c_props_1" , andar = false , loop = true },
	{ nome = "pose441" , dict = "littlespoon@sexy006" , anim ="sexy006" , andar = false , loop = true },
	{ nome = "pose442" , dict = "josh@179@gangposepack@v4_anim06" , anim = "josh@179@gangposepackv4_ca6" , andar = false , loop = true },
	{ nome = "pose443" , dict = "josh@179@gangposepack@v4_propsanim01" , anim = "josh@179@gangposepackv4_pca1" , andar = false , loop = true },
	{ nome = "pose444" , dict = "jb179_gangposepackv4@anim003" , anim = "jb179gangposev4_c003" ,  andar = false , loop = true },
	{ nome = "pose445" , dict = "jb179_gangposepackv4@anim002" , anim = "jb179gangposev4_c002" , andar = false , loop = true },
	{ nome = "pose446" , dict = "jb179_gangposepackv4@anim001" , anim = "jb179gangposev4_c001" , andar = false , loop = true },
	{ nome = "pose447" , dict = "josh@179@gangposepack@v4_anim08" , anim = "josh@179@gangposepackv4_ca8" , andar = false , loop = true },
	{ nome = "pose448" , dict = "vpose006@angeliizm" , anim ="vpose006_clip" , andar = false , loop = true },
	{ nome = "pose449" , dict = "vpose005@angeliizm" , anim ="vpose005_clip" , andar = false , loop = true },
	{ nome = "pose450" , dict = "vpose004@angeliizm" , anim ="vpose004_clip" , andar = false , loop = true },
	{ nome = "pose451" , dict = "vpose003@angeliizm" , anim ="vpose003_clip" , andar = false , loop = true },
	{ nome = "pose452" , dict = "vpose002@angeliizm" , anim ="vpose002_clip" , andar = false , loop = true },
	{ nome = "pose453" , dict = "vpose001@angeliizm" , anim ="vpose001_clip" , andar = false , loop = true },
	{ nome = "pose454" , dict = "amnilka@unipose@solo@halloweenfirst" , anim ="amnilka_halloween_first_001" , andar = false , loop = true },
	{ nome = "pose455" , dict = "amnilka@unipose@solo@halloweenfirst" , anim ="amnilka_halloween_first_002" , andar = false , loop = true },
	{ nome = "pose456" , dict = "amnilka@unipose@solo@halloweenfirst" , anim ="amnilka_halloween_first_003" , andar = false , loop = true },
	{ nome = "pose457" , dict = "amnilka@unipose@solo@halloweenfirst" , anim ="amnilka_halloween_first_004" , andar = false , loop = true },
	{ nome = "pose458" , dict = "amnilka@unipose@solo@halloweenfirst" , anim ="amnilka_halloween_first_005" , andar = false , loop = true },
	{ nome = "pose459" , dict = "perlenfuchs@fxckyou" , anim ="fxckyou_clip" , andar = false , loop = true },
	{ nome = "pose460" , dict = "perlenfuchs@la_sign" , anim ="la_sign_clip" , andar = false , loop = true },
	{ nome = "pose461" , dict = "perlenfuchs@close_your_eyes2" , anim ="close_your_eyes2_clip" , andar = false , loop = true },
	{ nome = "pose462" , dict = "perlenfuchs@peace_pose1" , anim ="peace_pose1_clip" , andar = false , loop = true },
	{ nome = "pose463" , dict = "nhyza@pose7" , anim ="pose7_clip" , andar = false , loop = true },
	{ nome = "pose464" , dict = "nhyza@pose8" , anim ="pose8_clip" , andar = false , loop = true },
	{ nome = "pose465" , dict = "nhyza@pose9" , anim ="pose9_clip" , andar = false , loop = false },
	{ nome = "pose466" , dict = "nhyza@pose10" , anim ="pose10_clip" , andar = false , loop = true },
	{ nome = "pose467" , dict = "nhyza@pose11" , anim ="pose11_clip" , andar = false , loop = true },
	{ nome = "pose468" , dict = "eagle@couplepose12" , anim ="boy" , andar = false , loop = true },
	{ nome = "pose469" , dict = "eagle@couplepose12" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose470" , dict = "eagle@girlphonepose02" , anim ="girlphonepose02_clip" , andar = false , loop = true },
	{ nome = "pose471" , dict = "eagle@girlphonepose04" , anim ="girlposecrouched_clip" , andar = false , loop = true },
	{ nome = "pose472" , dict = "eagle@girlphonepose14" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose473" , dict = "eagle@girlposelaying02" , anim ="girl" , andar = false , loop = true },
	{ nome = "pose474" , dict = "fpose@dnamods" , anim = "fpose_clip" , andar = false , loop = true },
	{ nome = "pose475" , dict = "fpose1@dnamods" , anim = "fpose1_clip" , andar = false , loop = true },
	{ nome = "pose476" , dict = "fpose2@dnamods" , anim = "fpose2_clip" , andar = false , loop = true },
	{ nome = "pose477" , dict = "fpose3@dnamods" , anim = "fpose3_clip" , andar = false , loop = true },
	{ nome = "pose478" , dict = "fpose4@dnamods" , anim = "fpose4_clip" , andar = false , loop = true },
	{ nome = "pose479" , dict = "eagle@girlpose23" , anim = "girl" , andar = false , loop = true },
	{ nome = "pose480" , dict = "eagle@couplepose20" , anim = "girl" , andar = false , loop = true },
	{ nome = "pose481" , dict = "eagle@couplepose20" , anim = "boy" , andar = false , loop = true },
	{ nome = "pose482" , dict = "eagle@girlphonepose22" , anim = "girl" , andar = false , loop = true },
	{ nome = "pose483" , dict = "eagle@boypose04" , anim = "boy" , andar = false , loop = true },
	{ nome = "pose484" , dict = "eagle@girlphonepose21" , anim = "girl" , andar = false , loop = true },
	{ nome = "pose485" , dict = "jb179_gangposepack@v3_prop_anims3" , anim = "gangposev3c_props_3" , andar = false , loop = true },
	{ nome = "pose486" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_001" , andar = false , loop = true },
	{ nome = "pose487" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_002" , andar = false , loop = true },
	{ nome = "pose488" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_003" , andar = false , loop = true },
	{ nome = "pose489" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_004" , andar = false , loop = true },
	{ nome = "pose490" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_005" , andar = false , loop = true },
	{ nome = "pose491" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_006" , andar = false , loop = true },
	{ nome = "pose492" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_007" , andar = false , loop = true },
	{ nome = "pose493" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_008" , andar = false , loop = true },
	{ nome = "pose494" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_009" , andar = false , loop = true },
	{ nome = "pose495" , dict = "frabi@femalepose@solo@specialphoto" , anim = "pose_specialphoto_010" , andar = false , loop = true },
	{ nome = "pose496" , dict = "littlespoon@yoga001" , anim = "yoga001" , andar = false , loop = true },
	{ nome = "pose497" , dict = "littlespoon@yoga002" , anim = "yoga002" , andar = false , loop = true },
	{ nome = "pose498" , dict = "littlespoon@yoga003" , anim = "yoga003" , andar = false , loop = true },
	{ nome = "pose499" , dict = "littlespoon@yoga004" , anim = "yoga004" , andar = false , loop = true },
	{ nome = "pose500" , dict = "littlespoon@yoga005" , anim = "yoga005" , andar = false , loop = true },
	{ nome = "pose501" , dict = "littlespoon@yoga006" , anim = "yoga006" , andar = false , loop = true },
	{ nome = "pose502" , dict = "littlespoon@yoga007" , anim = "yoga007" , andar = false , loop = true },
	{ nome = "pose503" , dict = "littlespoon@yoga008" , anim = "yoga008" , andar = false , loop = true },
	{ nome = "pose504" , dict = "littlespoon@yoga009" , anim = "yoga009" , andar = false , loop = true },
	{ nome = "pose505" , dict = "frabi@femalepose@solo@secondpoledance" , anim = "pose_poledance_001" , andar = false , loop = true },
	{ nome = "pose506" , dict = "frabi@femalepose@solo@secondpoledance" , anim = "pose_poledance_002" , andar = false , loop = true },
	{ nome = "pose507" , dict = "frabi@femalepose@solo@secondpoledance" , anim = "pose_poledance_003" , andar = false , loop = true },
	{ nome = "pose508" , dict = "frabi@femalepose@solo@secondpoledance" , anim = "pose_poledance_004" , andar = false , loop = true },
	{ nome = "pose509" , dict = "frabi@femalepose@solo@secondpoledance" , anim = "pose_poledance_005" , andar = false , loop = true },
	{ nome = "pose510" , dict = "fuckyouselfie@queensisters" , anim = "mirrorselfie_clip" , andar = false , loop = true },
	{ nome = "pose511" , dict = "frabi@femalepose@solo@firstpackage" , anim = "frabi_female_soloposepack_001" , andar = false , loop = true },
	{ nome = "pose512" , dict = "frabi@femalepose@solo@firstpackage" , anim = "frabi_female_soloposepack_002" , andar = false , loop = true },
	{ nome = "pose513" , dict = "frabi@femalepose@solo@firstpackage" , anim = "frabi_female_soloposepack_003" , andar = false , loop = true },
	{ nome = "pose514" , dict = "frabi@femalepose@solo@firstpackage" , anim = "frabi_female_soloposepack_004" , andar = false , loop = true },
	{ nome = "pose515" , dict = "frabi@femalepose@solo@firstpackage" , anim = "frabi_female_soloposepack_005" , andar = false , loop = true },
	{ nome = "pose516" , dict = "perlenfuchs@model_pose2" , anim = "model_pose2_clip" , andar = false , loop = true },
	{ nome = "pose517" , dict = "perlenfuchs@selfie_3" , anim = "selfie_3_clip" , andar = false , loop = true },
	{ nome = "pose518" , dict = "instapose1@ninis" , anim = "instapose1_clip" , andar = false , loop = true },
	{ nome = "pose519" , dict = "instapose2@ninis" , anim = "instapose2_clip" , andar = false , loop = true },
	{ nome = "pose520" , dict = "instapose3@ninis" , anim = "instapose3_clip" , andar = false , loop = true },
	{ nome = "pose521" , dict = "instapose4@ninis" , anim = "instapose4_clip" , andar = false , loop = true },
	{ nome = "pose522" , dict = "instapose5@ninis" , anim = "instapose5_clip" , andar = false , loop = true },
	{ nome = "pose523" , dict = "anim@luxury_custom_pose4" , anim = "luxury_custom_pose4_clip" , andar = false , loop = true },
	{ nome = "pose524" , dict = "anim@luxury_custom_pose21" , anim = "luxury_custom_pose21_clip" , andar = false , loop = true },
	{ nome = "pose525" , dict = "anim@luxury_custom_pose13" , anim = "luxury_custom_pose13_clip" , andar = false , loop = true },
	{ nome = "pose526" , dict = "anim@luxury_custom_pose_props" , anim = "luxury_custom_pose_props_clip" , andar = false , loop = true },
	{ nome = "pose527" , dict = "steph31@animation" , anim = "steph31_clip" , andar = false , loop = true },
	{ nome = "pose528" , dict = "luxurymods@walk_female_pose" , anim = "walk_female_pose_clip" , andar = false , loop = true },
	{ nome = "pose529" , dict = "luxurymods@sit_female2" , anim = "sit_female2_clip" , andar = false , loop = true },
	{ nome = "pose530" , dict = "luxurymods@animation_female_13" , anim = "animation_female_13_clip" , andar = false , loop = true },
	{ nome = "pose531" , dict = "luxurymods@animation_female_18" , anim = "animation_female_18_clip" , andar = false , loop = true },
	{ nome = "pose532" , dict = "luxurymods@animation_female_21" , anim = "animation_female_21_clip" , andar = false , loop = true },
	{ nome = "pose533" , dict = "jb179_gangposepack@v3_prop_anims2" , anim = "gangposev3c_props_2" , andar = false , loop = true },
	{ nome = "pose534" , dict = "sexpose4@seimen" , anim = "sexpose4_clip" , andar = false , loop = true },
	{ nome = "pose535" , dict = "sexpose5@seimen" , anim = "sexpose5_clip" , andar = false , loop = true },
	{ nome = "pose536" , dict = "sexpose6@seimen" , anim = "sexpose6_clip" , andar = false , loop = true },
	{ nome = "pose537" , dict = "sexpose7@seimen" , anim = "sexpose7_clip" , andar = false , loop = true },
	{ nome = "pose538" , dict = "sexpose8@seimen" , anim = "sexpose8_clip" , andar = false , loop = true },
	{ nome = "pose539" , dict = "sexpose9@seimen" , anim = "sexpose9_clip" , andar = false , loop = true },
	{ nome = "pose540" , dict = "sexpose10@seimen" , anim = "sexpose10_clip" , andar = false , loop = true },
	{ nome = "pose541" , dict = "sexpose11@seimen" , anim = "sexpose11_clip" , andar = false , loop = true },
	{ nome = "pose542" , dict = "sexpose12@seimen" , anim = "sexpose12_clip" , andar = false , loop = true },
	{ nome = "pose543" , dict = "sexpose13@seimen" , anim = "sexpose13_clip" , andar = false , loop = true },
	{ nome = "pose544" , dict = "sexpose14@seimen" , anim = "sexpose14_clip" , andar = false , loop = true },
	{ nome = "pose545" , dict = "sexpose15@seimen" , anim = "sexpose15_clip" , andar = false , loop = true },
	{ nome = "pose546" , dict = "sexpose16@seimen" , anim = "sexpose16_clip" , andar = false , loop = true },
	{ nome = "pose547" , dict = "sexpose17@seimen" , anim = "sexpose17_clip" , andar = false , loop = true },
	{ nome = "pose548" , dict = "sexpose18@seimen" , anim = "sexpose18_clip" , andar = false , loop = true },
	{ nome = "pose549" , dict = "sexpose19@seimen" , anim = "sexpose19_clip" , andar = false , loop = true },
	{ nome = "pose550" , dict = "sexpose20@seimen" , anim = "sexpose20_clip" , andar = false , loop = true },
	{ nome = "pose551" , dict = "sexpose21@seimen" , anim = "sexpose21_clip" , andar = false , loop = true },
	{ nome = "pose552" , dict = "sexpose22@seimen" , anim = "sexpose22_clip" , andar = false , loop = true },
	{ nome = "pose553" , dict = "sexpose23@seimen" , anim = "sexpose23_clip" , andar = false , loop = true },
	{ nome = "pose554" , dict = "instagrampose16@seimen" , anim = "instagrampose16_clip" , andar = false , loop = true },
	{ nome = "pose555" , dict = "instagrampose17@seimen" , anim = "instagrampose17_clip" , andar = false , loop = true },
	{ nome = "pose556" , dict = "instagrampose15@seimen" , anim = "instagrampose15_clip" , andar = false , loop = true },
	{ nome = "pose557" , dict = "instagrampose14@seimen" , anim = "instagrampose14_clip" , andar = false , loop = true },
	{ nome = "pose558" , dict = "instagrampose13@seimen" , anim = "instagrampose13_clip" , andar = false , loop = true },
	{ nome = "pose559" , dict = "instagrampose12@seimen" , anim = "instagrampose12_clip" , andar = false , loop = true },
	{ nome = "pose560" , dict = "luxurymods@hand_on_chest" , anim = "hand_on_chest_clip" , andar = false , loop = true },
	{ nome = "pose561" , dict = "luxurymods@best_friend3" , anim = "best_friend3_clip" , andar = false , loop = true },
	{ nome = "pose562" , dict = "frabi@femalepose@solo@firstsport" , anim = "fem_pose_sport_001" , andar = false , loop = true },
	{ nome = "pose563" , dict = "frabi@femalepose@solo@firstsport" , anim = "fem_pose_sport_002" , andar = false , loop = true },
	{ nome = "pose564" , dict = "frabi@femalepose@solo@firstsport" , anim = "fem_pose_sport_003" , andar = false , loop = true },
	{ nome = "pose565" , dict = "frabi@femalepose@solo@firstsport" , anim = "fem_pose_sport_004" , andar = false , loop = true },
	{ nome = "pose566" , dict = "frabi@femalepose@solo@firstsport" , anim = "fem_pose_sport_005" , andar = false , loop = true },
	{ nome = "pose567" , dict = "anim@luxury_custom_pose44" , anim = "luxury_custom_pose44_clip" , andar = false , loop = true },
    { nome = "pose568" , dict = "genesismods@stepback" , anim = "pose1" , andar = false , loop = true },
	{ nome = "pose569" , dict = "genesismods@stepbackp2" , anim = "pose2" , andar = false , loop = true },
	{ nome = "pose570" , dict = "murda@ceceanim" , anim = "ceceanim" , andar = false , loop = true },
	{ nome = "pose571" , dict = "murda@femalepose01" , anim = "femalepose01" , andar = false , loop = true },
	{ nome = "pose572" , dict = "genesismods@stepbackp3" , anim = "pose3" , andar = false , loop = true },
	{ nome = "pose573" , dict = "murda@tiddies" , anim = "tiddies" , andar = false , loop = true },
	{ nome = "pose574" , dict = "anim@luxury_custom_pose26" , anim = "luxury_custom_pose26_clip" , andar = false , loop = true },
	{ nome = "pose575" , dict = "anim@luxury_custom_pose28" , anim = "luxury_custom_pose28_clip" , andar = false , loop = true },
	{ nome = "pose576" , dict = "anim@luxury_custom_pose37" , anim = "luxury_custom_pose37_clip" , andar = false , loop = true },
	{ nome = "pose577" , dict = "anim@luxury_custom_pose38" , anim = "luxury_custom_pose38_clip" , andar = false , loop = true },
	{ nome = "pose578" , dict = "jagoda@pose11" , anim = "jagoda_pose11" , andar = false , loop = true },
	{ nome = "pose579" , dict = "jagoda@pose12" , anim = "jagoda_pose12" , andar = false , loop = true },
	{ nome = "pose580" , dict = "jagoda@pose13" , anim = "jagoda_pose13" , andar = false , loop = true },
	{ nome = "pose581" , dict = "jagoda@pose14" , anim = "jagoda_pose14" , andar = false , loop = true },
	{ nome = "pose582" , dict = "jagoda@pose15" , anim = "jagoda_pose15" , andar = false , loop = true },
	{ nome = "pose583" , dict = "jagoda@pose16" , anim = "jagoda_pose16" , andar = false , loop = true },
	{ nome = "pose584" , dict = "jagoda@pose17" , anim = "jagoda_pose17" , andar = false , loop = true },
	{ nome = "pose585" , dict = "jagoda@pose18" , anim = "jagoda_pose18" , andar = false , loop = true },
	{ nome = "pose586" , dict = "jagoda@pose19" , anim = "jagoda_pose19" , andar = false , loop = true },
	{ nome = "pose587" , dict = "jagoda@pose20" , anim = "jagoda_pose20" , andar = false , loop = true }, 
	{ nome = "pose588" , dict = "jagoda@pose1" , anim = "jagoda_pose1" , andar = false , loop = true }, 
	{ nome = "pose589" , dict = "jagoda@pose2" , anim = "jagoda_pose2" , andar = false , loop = true }, 
	{ nome = "pose590" , dict = "jagoda@pose3" , anim = "jagoda_pose3" , andar = false , loop = true }, 
	{ nome = "pose591" , dict = "jagoda@pose4" , anim = "jagoda_pose4" , andar = false , loop = true }, 
	{ nome = "pose592" , dict = "jagoda@pose5" , anim = "jagoda_pose5" , andar = false , loop = true }, 
	{ nome = "pose593" , dict = "jagoda@pose6" , anim = "jagoda_pose6" , andar = false , loop = true }, 
	{ nome = "pose594" , dict = "jagoda@pose7" , anim = "jagoda_pose7" , andar = false , loop = true }, 
	{ nome = "pose595" , dict = "jagoda@pose8" , anim = "jagoda_pose8" , andar = false , loop = true }, 
	{ nome = "pose596" , dict = "jagoda@pose9" , anim = "jagoda_pose9" , andar = false , loop = true }, 
	{ nome = "pose597" , dict = "jagoda@pose10" , anim = "jagoda_pose10" , andar = false , loop = true }, 
	{ nome = "pose598" , dict = "omega5@animation", anim = "pose10_clip", andar = false , loop = true },
	{ nome = "pose599" , dict = "omega6@animation", anim = "omega6_clip", andar = false , loop = true },
	{ nome = "pose600" , dict = "arron@simspose2" , anim = "simspose2" , andar = false , loop = true },
	{ nome = "pose601" , dict = "dollie_mods@follow_me_002" , anim = "follow_me_002" , andar = false , loop = true },
	{ nome = "pose602" , dict = "card3@warly" , anim = "card3" , andar = false , loop = true },
	{ nome = "pose603" , dict = "card4@warly" , anim = "card4" , andar = false , loop = true },
	{ nome = "pose604" , dict = "crossfinger@animation" , anim = "crossfinger_clip" , andar = false , loop = true },
	{ nome = "pose605" , dict = "seat1@animation" , anim = "seat1_clip" , andar = false , loop = true },
	{ nome = "pose606" , dict = "pose12@animation" , anim = "pose12_clip" , andar = false , loop = true },
	{ nome = "pose607" , dict = "pose13@animation" , anim = "pose13_clip" , andar = false , loop = true },
	{ nome = "pose608" , dict = "pose14@animation" , anim = "pose14_clip" , andar = false , loop = true },
	{ nome = "pose609" , dict = "pose6@animation" , anim = "pose6_clip" , andar = false , loop = true },
	{ nome = "pose610" , dict = "pose8@animation" , anim = "pose8_clip" , andar = false , loop = true },
	{ nome = "pose611" , dict = "pose9@animation" , anim = "pose9_clip" , andar = false , loop = true },
	{ nome = "pose612" , dict = "pose10@animation" , anim = "pose10_clip" , andar = false , loop = true },
	{ nome = "pose613" , dict = "mggyselfie1@animation" , anim = "mggyselfie1_clip" , andar = false , loop = true },
	{ nome = "pose614" , dict = "mggyselfie2@animation" , anim = "mggyselfie2_clip" , andar = false , loop = true },
	{ nome = "pose615" , dict = "mggyselfie4@animation" , anim = "mggyselfie4_clip" , andar = false , loop = true },
	{ nome = "pose616" , dict = "omega1@animation", anim = "omegap1_clip", andar = false , loop = true },
	{ nome = "pose617" , dict = "jagoda@male_pose1" , anim = "jagoda_male_pose1" , andar = false , loop = true },
	{ nome = "pose618" , dict = "jagoda@male_pose2" , anim = "jagoda_male_pose2" , andar = false , loop = true },
	{ nome = "pose619" , dict = "jagoda@male_pose3" , anim = "jagoda_male_pose3" , andar = false , loop = true },
	{ nome = "pose620" , dict = "jagoda@male_pose4" , anim = "jagoda_male_pose4" , andar = false , loop = true },
	{ nome = "pose621" , dict = "jagoda@male_pose5" , anim = "jagoda_male_pose5" , andar = false , loop = true },
	{ nome = "pose622" , dict = "jagoda@male_pose6" , anim = "jagoda_male_pose6" , andar = false , loop = true },
	{ nome = "pose623" , dict = "jagoda@male_pose7" , anim = "jagoda_male_pose7" , andar = false , loop = true },
	{ nome = "pose624" , dict = "jagoda@male_pose8" , anim = "jagoda_male_pose8" , andar = false , loop = true },
	{ nome = "pose625" , dict = "anim@fog_rifle_relaxed" , anim = "rifle_relaxed_clip" , andar = false , loop = true },
	{ nome = "pose626" , dict = "anim@stack_pointman" , anim = "pointman_clip" , andar = false , loop = true },
	{ nome = "pose627" , dict = "anim@stack_two_man" , anim = "two_man_clip" , andar = false , loop = true },
	{ nome = "pose628" , dict = "anim@stack_three_man" , anim = "three_man_clip" , andar = false , loop = true },
	{ nome = "pose629" , dict = "anim@highlow_low_lean" , anim = "low_lean_clip" , andar = false , loop = true },
	{ nome = "pose630" , dict = "anim@highlow_high_lean" , anim = "high_lean_clip" , andar = false , loop = true },
	{ nome = "pose631" , dict = "standingphone@blackqueen" , anim = "standingphone_clip" , andar = false , loop = true },
	{ nome = "pose632" , dict = "1foot@anim" , anim = "1foot_clip" , andar = false , loop = true },
	{ nome = "pose633" , dict = "hoe@anim" , anim = "hoe_clip" , andar = false , loop = true },
	{ nome = "pose634" , dict = "hoe2@anim" , anim = "hoe2_clip" , andar = false , loop = true },
	{ nome = "pose635" , dict = "qpacc@gangsign1" , anim = "gangsign1_clip" , andar = false , loop = true },
	{ nome = "pose636" , dict = "qpacc@gangsign2" , anim = "gangsign2_clip" , andar = false , loop = true },
	{ nome = "pose637" , dict = "qpacc@gangsign3" , anim = "gangsign3_clip" , andar = false , loop = true },
	{ nome = "pose638" , dict = "qpacc@gangsign4" , anim = "gangsign4_clip" , andar = false , loop = true },
	{ nome = "pose639" , dict = "qpacc@gangsign5" , anim = "gangsign5_clip" , andar = false , loop = true },
	{ nome = "pose640" , dict = "qpacc@gangsign6" , anim = "gangsign6_clip" , andar = false , loop = true },
	{ nome = "pose641" , dict = "qpacc@gangsign7" , anim = "gangsign7_clip" , andar = false , loop = true },
	{ nome = "pose642" , dict = "qpacc@gangsign8" , anim = "gangsign8_clip" , andar = false , loop = true },
	{ nome = "pose643" , dict = "nhyza1@animation" , anim = "nhyza1_clip" , andar = false , loop = true },
	{ nome = "pose644" , dict = "anim@fuck_you_selfie" , anim = "fuck_you_selfie_clip" , andar = false , loop = true },
	{ nome = "pose645" , dict = "mx@piggypack_a" , anim = "mxclip_a" , andar = false , loop = true },
	{ nome = "pose646" , dict = "mx@piggypack_b" , anim = "mxanim_b" , andar = false , loop = true },
	{ nome = "pose647" , dict = "anim@stance_handgun" , anim = "handgun_clip" , andar = false , loop = true },
	{ nome = "pose648" , dict = "thot_pose" , anim = "thot_clip" , andar = false , loop = true },
	{ nome = "pose649" , dict = "draco@arves" , anim = "draco_clip" , andar = false , loop = true },
	{ nome = "pose650" , dict = "mymsign1@animacion" , anim = "mymsign1_clip" , andar = false , loop = true },
	{ nome = "pose651" , dict = "mymsign30@animacion" , anim = "mymsign30_clip" , andar = false , loop = true },
	{ nome = "pose652" , dict = "five@nyck" , anim = "five_clip" , andar = false , loop = true },
	{ nome = "pose653" , dict = "capper@nyck" , anim = "capper_clip" , andar = false , loop = true },
	{ nome = "pose654" , dict = "pose@nyck" , anim = "pose_clip" , andar = false , loop = true },
	{ nome = "pose655" , dict = "pose2@nyck" , anim = "pose2_clip" , andar = false , loop = true },
	{ nome = "pose656" , dict = "pose3@nyck" , anim = "pose3_clip" , andar = false , loop = true },
	{ nome = "pose657" , dict = "mafiag@nyck" , anim = "mafiag_clip" , andar = false , loop = true },
	{ nome = "pose658" , dict = "15idk@animation" , anim = "15idk_clip" , andar = false , loop = true },
	{ nome = "pose659" , dict = "bkcr@animation" , anim = "bkcr_clip" , andar = false , loop = true },
	{ nome = "pose660" , dict = "bhw@animation" , anim = "bhw_clip" , andar = false , loop = true },
	{ nome = "pose661" , dict = "99mafia@animation" , anim = "99mafia_clip" , andar = false , loop = true },
	{ nome = "pose662" , dict = "krank@animation" , anim = "krank_clip" , andar = false , loop = true },
	{ nome = "pose663" , dict = "chid@nyck" , anim = "chid_clip" , andar = false , loop = true },
	{ nome = "pose664" , dict = "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a", anim = "idle_a", andar = true, loop = true },
	{ nome = "pose665" , dict = "rcmnigel1a_band_groupies", anim = "base_m2", andar = true, loop = true },
	{ nome = "pose666" , dict = "misscarsteal4@aliens", anim = "rehearsal_base_idle_director", andar = true, loop = true },
	{ nome = "pose667" , dict = "timetable@tracy@ig_8@base", anim = "base", andar = true, loop = true },
	{ nome = "pose668" , dict = "mp_cp_welcome_tutthink", anim = "b_think", andar = true, loop = false },
	{ nome = "pose669" , dict = "betrex@sunglasses" , anim = "glasses" , andar = false , loop = false },
	{ nome = "pose670" , dict = "anim@shooter_stance" , anim = "stance_clip" , andar = false , loop = true },
	{ nome = "pose671" , dict = "arves@killer" , anim = "killer_clip" , andar = false , loop = true },
	{ nome = "pose672" , dict = "eagle@girlphonepose13" , anim = "girl" , andar = false , loop = true },
	{ nome = "pose673" , dict = "eagle@girlphonepose14" , anim = "girl" , andar = false , loop = true },
	{ nome = "pose674" , dict = "eagle@girlpose06" , anim = "girl" , andar = false , loop = true },
	{ nome = "pose675" , dict = "anim@heists@heist_corona@team_idles@male_a", anim = "idle", andar = true, loop = true },
	{ nome = "pose676" , dict = "anim@heists@heist_corona@team_idles@female_a", anim = "idle", andar = true, loop = true },
	{ nome = "pose677" , dict = "anim@heists@humane_labs@finale@strip_club", anim = "ped_b_celebrate_loop", andar = true, loop = true },
	{ nome = "pose678" , dict = "anim@mp_celebration@idles@female", anim = "celebration_idle_f_a", andar = true, loop = true },
	{ nome = "pose679" , dict = "anim@mp_corona_idles@female_b@idle_a", anim = "idle_a", andar = true, loop = true },
	{ nome = "pose680" , dict = "anim@mp_corona_idles@male_c@idle_a", anim = "idle_a", andar = true, loop = true },
	{ nome = "pose681" , dict = "anim@mp_corona_idles@male_d@idle_a", anim = "idle_a", andar = true, loop = true },
	{ nome = "pose682" , dict = "amb@world_human_hang_out_street@male_b@idle_a", anim = "idle_b", andar = true, loop = true },
	{ nome = "pose683" , dict = "random@countrysiderobbery", anim = "idle_a", andar = true, loop = true },
	{ nome = "pose684" , dict = "amb@world_human_drug_dealer_hard@male@idle_b", anim = "idle_d", andar = false, loop = true },
	{ nome = "pose685" , dict = "anim@mp_player_intincarrockstd@ps@", anim = "idle_a", andar = true, loop = true },
	{ nome = "pose686" , dict = "jh_1_ig_3-2", anim = "cs_jewelass_dual-2", andar = true, loop = true },
	{ nome = "pose687" , dict = "oddjobs@taxi@", anim = "idle_a", andar = false, loop = true },
	{ nome = "pose688" , dict = "mx@pose1" , anim = "mx_animclip1" , andar = false , loop = true },
	{ nome = "pose689" , dict = "mx@pose2" , anim = "mx_clippose2" , andar = false , loop = true },
	{ nome = "pose690" , dict = "mx@pose3" , anim = "mx_clippose3" , andar = false , loop = true },
	{ nome = "pose691" , dict = "mx@pose4" , anim = "mx_clippose4" , andar = false , loop = true },
	{ nome = "pose692" , dict = "wrldmods@trippieredd" , anim = "trippieredd" , andar = false , loop = true },
	{ nome = "pose693" , dict = "joshworks@hand_anim2" , anim = "josh_hand_clip2" , andar = false , loop = true }, 
	{ nome = "pose694" , dict = "joshworks@hand_anim3" , anim = "josh_hand_clips3" , andar = false , loop = true }, 
	{ nome = "pose695" , dict = "joshsworks@hand_anim4" , anim = "josh_hand_clip4" , andar = false , loop = true }, 
	{ nome = "pose696" , dict = "joshworks@hand_anim5" , anim = "josh_hand_clip5" , andar = false , loop = true }, 
	{ nome = "pose697" , dict = "joshworks@hand_anim6" , anim = "josh_hand_clip6" , andar = false , loop = true }, 
	{ nome = "pose698" , dict = "joshworks@hand_anim7" , anim = "josh_hand_clip7" , andar = false , loop = true }, 
	{ nome = "pose699" , dict = "joshworks@hand_anim8" , anim = "josh_hand_clip8" , andar = false , loop = true }, 
	{ nome = "pose700" , dict = "joshworks@hand_anim9" , anim = "josh_hand_clip9" , andar = false , loop = true }, 
	{ nome = "pose701" , dict = "joshworks@hand_anim1" , anim = "josh_hand_clip1" , andar = false , loop = true }, 
	{ nome = "pose702" , dict = "joshworks@hand_anim10" , anim = "josh_hand_clip10" , andar = false , loop = true },
	{ nome = "pose703" , dict = "joshworks@hand_anim11" , anim = "josh_hand_clip11" , andar = false , loop = true }, 
	{ nome = "pose704" , dict = "joshworks@hand_anim12" , anim = "josh_hand_clip12" , andar = false , loop = true },
	{ nome = "pose705" , dict = "joshworks@hand_anim13" , anim = "josh_hand_clip13" , andar = false , loop = true }, 
	{ nome = "pose706" , dict = "joshworks@hand_anim14" , anim = "josh_hand_clip14" , andar = false , loop = true },
	{ nome = "pose707" , dict = "joshworks@hand_anim15" , anim = "josh_hand_clip15" , andar = false , loop = true },
	{ nome = "pose708" , dict = "joshworks@hand_anim16" , anim = "josh_hand_clip16" , andar = false , loop = true },
	{ nome = "pose709" , dict = "joshworks@hand_anim18" , anim = "josh_hand_clip18" , andar = false , loop = true },
	{ nome = "pose710" , dict = "joshworks@hand_anim19" , anim = "josh_hand_clip19" , andar = false , loop = true }, 
	{ nome = "pose711" , dict = "joshworks@hand_anim21" , anim = "josh_hand_clip21" , andar = false , loop = true }, 
	{ nome = "pose712" , dict = "joshworks@hand_anim22" , anim = "josh_hand_clip22" , andar = false , loop = true }, 
	{ nome = "pose713" , dict = "joshworksv2@gang_pose1" , anim = "gangposev2c_1" , andar = false , loop = true },
	{ nome = "pose714" , dict = "joshworksv2@gang_pose2" , anim = "gangposev2c_2" , andar = false , loop = true },
	{ nome = "pose715" , dict = "joshworksv2@gang_pose3" , anim = "gangposev2c_3" , andar = false , loop = true },
	{ nome = "pose716" , dict = "joshworksv2@gang_pose4" , anim = "gangposev2c_4" , andar = false , loop = true },
	{ nome = "pose717" , dict = "joshworksv2@gang_pose5" , anim = "gangposev2c_5" , andar = false , loop = true }, 
	{ nome = "pose718" , dict = "joshworksv2@gang_pose06" , anim = "gangposev2c_06" , andar = false , loop = true }, 
	{ nome = "pose719" , dict = "joshworksv2@gang_pose7" , anim = "gangposev2c_7" , andar = false , loop = true },
	{ nome = "pose720" , dict = "joshworksv2@gang_pose8" , anim = "gangposev2c_8" , andar = false , loop = true }, 
	{ nome = "pose721" , dict = "joshworksv2@gang_pose9" , anim = "gangposev2c_9" , andar = false , loop = true },
	{ nome = "pose722" , dict = "joshworksv2@gang_pose09" , anim = "gangposev2c_09" , andar = false , loop = true },
	{ nome = "pose723" , dict = "joshworksv2@gang_pose010" , anim = "gangposev2c_010" , andar = false , loop = true },
	{ nome = "pose724" , dict = "jb179_gangposepack@v3_prop_anims4" , anim = "gangposev3c_props_4"  , andar = false , loop = true },
	{ nome = "pose725" , dict = "jb179_gangposepack@v3_prop_anims5" , anim = "gangposev3c_props_5"  , andar = false , loop = true },
	{ nome = "pose726" , dict = "jb179_gangposepack@v3_static_anims1" , anim = "gangposev3c_static_1"  , andar = false , loop = true },
	{ nome = "pose727" , dict = "jb179_gangposepack@v3_static_anims2" , anim = "gangposev3c_static_2" ,  andar = false , loop = true },
	{ nome = "pose728" , dict = "jb179_gangposepack@v3_static_anims3" , anim = "gangposev3c_static_3" ,  andar = false , loop = true },
	{ nome = "pose729" , dict = "jb179_gangposepack@v3_static_anims4" , anim = "gangposev3c_static_4" , andar = false , loop = true },
	{ nome = "pose730" , dict = "jb179_gangposepack@v3_static_anims5" , anim = "gangposev3c_static_5" ,  andar = false , loop = true },
	{ nome = "pose731" , dict = "josh@179@gangposepack@v4_anim01" , anim = "josh@179@gangposepackv4_ca1" , andar = false , loop = true },
	{ nome = "pose732" , dict = "josh@179@gangposepack@v4_anim03" , anim = "josh@179@gangposepackv4_ca3" , andar = false , loop = true },
	{ nome = "pose733" , dict = "josh@179@gangposepack@v4_anim05" , anim = "josh@179@gangposepackv4_ca5" , andar = false , loop = true },
	{ nome = "pose734" , dict = "mini@strip_club@idles@stripper" , anim = "stripper_idle_02" , andar = false , loop = true },
	{ nome = "pose735" , dict = "drillpack@karxem" , anim = "handsup" , andar = false , loop = true },
	{ nome = "pose736" , dict = "drillpack@karxem" , anim = "pour" , andar = false , loop = true },
	{ nome = "pose737" , dict = "drillpack@karxem" , anim = "crossfinger" , andar = false , loop = true },
	{ nome = "pose738" , dict = "drillpack@karxem" , anim = "nope" , andar = false , loop = true },
	{ nome = "pose739" , dict = "karxem@group" , anim = "group_1" , andar = false , loop = true },
	{ nome = "pose740" , dict = "karxem@group" , anim = "group_2" , andar = false , loop = true },
	{ nome = "pose741" , dict = "karxem@group" , anim = "group_3" , andar = false , loop = true },
	{ nome = "pose742" , dict = "murda@heart" , anim = "heart" , andar = false , loop = true },
	{ nome = "pose743" , dict = "murda@mirrorselfiehot" , anim = "mirrorselfiehot" , andar = false , loop = true },
	{ nome = "pose744" , dict = "murda@femalelookback" , anim = "femalelookback" , andar = false , loop = true },
	{ nome = "pose745" , dict = "murda@femalefloor" , anim = "femalefloor" , andar = false , loop = true },
	{ nome = "pose746" , dict = "murda@thickbody" , anim = "thickbody" , andar = false , loop = true },
	{ nome = "pose747" , dict = "murda@wakandaforever" , anim = "wakandaforever" , andar = false , loop = true },
	{ nome = "pose748" , dict = "murda@wakandaforever2" , anim = "wakandaforever2" , andar = false , loop = true },
	{ nome = "pose749" , dict = "streetpose2@animation" , anim = "streetpose2_clip" , andar = false , loop = true },
	{ nome = "pose750" , dict = "cmgcarpose1@animation" , anim = "cmgcarpose1_clip" , andar = false , loop = true },
	{ nome = "pose751" , dict = "cmgcarpose2@animation" , anim = "cmgcarpose2_clip" , andar = false , loop = true },
	{ nome = "pose752" , dict = "cmgstreetcap@animation" , anim = "cmgstreetcap_clip" , andar = false , loop = true },
	{ nome = "pose753" , dict = "canpose1@animation" , anim = "canpose1_clip" , andar = false , loop = true },
	{ nome = "pose754" , dict = "duopose1@nicocsanim" , anim = "duopose1_clip" , andar = false , loop = true },
	{ nome = "pose755" , dict = "duopose2@nicocsanim" , anim = "duopose2_clip" , andar = false , loop = true },
	{ nome = "pose756" , dict = "duopose3@nicocsanim" , anim = "duopose3_clip" , andar = false , loop = true },
	{ nome = "pose757" , dict = "duopose4@nicocsanim" , anim = "duopose4_clip" , andar = false , loop = true },
	{ nome = "pose758" , dict = "duopose5@nicocsanim" , anim = "duopose5_clip" , andar = false , loop = true },
	{ nome = "pose759" , dict = "duopose6@nicocsanim" , anim = "duopose6_clip" , andar = false , loop = true },
	{ nome = "pose760" , dict = "latto777@animation" , anim = "latto777_clip" , andar = false , loop = true },
	{ nome = "pose761" , dict = "cover@animation" , anim = "cover_clip" , andar = false , loop = true },
	{ nome = "pose762" , dict = "sittinpretti@animation" , anim = "sittinpretti_clip" , andar = false , loop = true },
	{ nome = "pose763" , dict = "selfiebby@animation" , anim = "selfiebby_clip" , andar = false , loop = true },
	{ nome = "pose764" , dict = "grapes@sign" , anim = "grapes" , andar = false , loop = true },
	{ nome = "pose765" , dict = "grapes@sign2" , anim = "grapes" , andar = false , loop = true },
	{ nome = "pose766" , dict = "grapes@sign3" , anim = "sign" , andar = false , loop = true },
	{ nome = "pose767" , dict = "grapes@sign4" , anim = "sign" , andar = false , loop = true },
	{ nome = "pose768" , dict = "anim@guttagang" , anim = "gutta_clip" , andar = false , loop = true },
	{ nome = "pose769" , dict = "carweaponpose@luxurymodsw" , anim = "carweaponpose_clip" , andar = false , loop = true },
	{ nome = "pose770" , dict = "byrd@sign" , anim = "sign" , andar = false , loop = true },
	{ nome = "pose771" , dict = "byrd@sign2" , anim = "sign" , andar = false , loop = true },
	{ nome = "pose772" , dict = "byrd@sign3" , anim = "sign" , andar = false , loop = true },
	{ nome = "pose773" , dict = "byrd@sign4" , anim = "sign" , andar = false , loop = true },
	{ nome = "pose774" , dict = "byrd@sign5" , anim = "sign" , andar = false , loop = true },
	{ nome = "pose775" , dict = "byrd@sign6" , anim = "sign" , andar = false , loop = true },
	{ nome = "pose776" , dict = "littlequeen2queensisters" , anim = "littlequeen2_clip" , andar = false , loop = true },
	{ nome = "pose777" , dict = "simple@animation" , anim = "simple_clip" , andar = false , loop = true },
	{ nome = "pose778" , dict = "noautopastelanim4@animation" , anim = "noautopastelanim4_clip" , andar = false , loop = true },
	{ nome = "pose779" , dict = "noautopastelpose9@custom_anim" , anim = "noautopastelpose9_clip" , andar = false , loop = true },
	{ nome = "pose780" , dict = "noautopastelpose10@custom_anim" , anim = "noautopastelpose10_clip" , andar = false , loop = true },
	{ nome = "pose781" , dict = "noautopastelpose15@custom_anim" , anim = "noautopastelpose15_clip" , andar = false , loop = true },
	{ nome = "pose782" , dict = "luxurymods@fuck_you_pose" , anim = "fuck_you_pose_clip" , andar = false , loop = true },
	{ nome = "pose783" , dict = "hiphold@luxurymodsw" , anim = "hiphold_clip" , andar = false , loop = true },
	{ nome = "pose784" , dict = "luxurymods@cardi_b_ass_pose" , anim = "cardi_b_ass_pose_clip" , andar = false , loop = true },
	{ nome = "pose785" , dict = "luxurymods@hands_on_tits" , anim = "hands_on_tits_clip" , andar = false , loop = true },
	{ nome = "pose786" , dict = "myu@female_single1" , anim = "female_single1_clip" , andar = false , loop = true },
	{ nome = "pose787" , dict = "myu@female_single2" , anim = "female_single2_clip" , andar = false , loop = true },
	{ nome = "pose788" , dict = "myu@female_single3" , anim = "female_single3_clip" , andar = false , loop = true },
	{ nome = "pose789" , dict = "myu@female_single4" , anim = "female_single4_clip" , andar = false , loop = true },
	{ nome = "pose790" , dict = "myu@laydown1" , anim = "laydown1_clip" , andar = false , loop = true },
	{ nome = "pose791" , dict = "myu@male_single1" , anim = "male_single1_clip" , andar = false , loop = true },
	{ nome = "pose792" , dict = "myu@male_single2" , anim = "male_single2_clip" , andar = false , loop = true },
	{ nome = "pose793" , dict = "perlenfuchs@sit_cute7" , anim = "sit_cute7_clip" , andar = false , loop = true },
	{ nome = "pose794" , dict = "standing15@blackqueen" , anim = "standing15_clip" , andar = false , loop = true },
	{ nome = "pose795" , dict = "assaddicted@mchmnk" , anim = "assaddicted_clip" , andar = false , loop = true },
	{ nome = "pose796" , dict = "murda@sinsanimation01" , anim = "sinsanimation01" , andar = false , loop = true },
	{ nome = "pose797" , dict = "murda@sinanimation12" , anim = "sinanimation12" , andar = false , loop = true },
	{ nome = "pose798" , dict = "murda@sinanimation13" , anim = "sinanimation13" , andar = false , loop = true },
	{ nome = "pose799" , dict = "murda@sinanimation14" , anim = "sinanimation14" , andar = false , loop = true },
	{ nome = "pose800" , dict = "murda@sinsanimation03" , anim = "sinsanimations03" , andar = false , loop = true },
	{ nome = "pose801" , dict = "murda@floor1" , anim = "floor1" , andar = false , loop = true },
	{ nome = "pose802" , dict = "murda@maleselfie3" , anim = "maleselfie3" , andar = false , loop = true },
	{ nome = "pose803" , dict = "murda@maleselfie2" , anim = "maleselfie2" , andar = false , loop = true },
	{ nome = "pose804" , dict = "murda@malepose3" , anim = "malepose3" , andar = false , loop = true },
	{ nome = "pose805" , dict = "murda@floor2" , anim = "floor2" , andar = false , loop = true },
	{ nome = "pose806" , dict = "carpose@moonsspace" , anim = "carpose_clip" , andar = false , loop = true },
	{ nome = "pose807" , dict = "pose004@moonsspace" , anim = "pose004_clip" , andar = false , loop = true },
	{ nome = "pose808" , dict = "slaypose@moonsspace" , anim = "slaypose_clip" , andar = false , loop = true },
	{ nome = "pose809" , dict = "pose009@moonsspace" , anim = "pose009_clip" , andar = false , loop = true },
	{ nome = "pose810" , dict = "wallpose@moonsspace" , anim = "wallpose_clip" , andar = false , loop = true },
	{ nome = "pose811" , dict = "murda@sinsanimations02" , anim = "sinsanimation02" , andar = false , loop = true },
	{ nome = "pose812" , dict = "anim@female_gunbunny_rifle_photo" , anim = "rifle_photo_clip" , andar = false , loop = true },
	{ nome = "pose813" , dict = "anim@female_egirl_cute_selfie" , anim = "cute_selfie_clip" , andar = false , loop = true },
	{ nome = "pose814" , dict = "anim@female_model_showoff_two" , anim = "showoff_two_clip" , andar = false , loop = true },
	{ nome = "pose815" , dict = "anim@female_floor_slutarch_selfie" , anim = "slutarch_selfie_clip" , andar = false , loop = true },
	{ nome = "pose816" , dict = "anim@female_fitgirl_selfie_one" , anim = "selfie_one_clip" , andar = false , loop = true },
	{ nome = "pose817" , dict = "anim@female_model_photo_cute" , anim = "photo_cute_clip" , andar = false , loop = true },

	-- ################# novas angel 21 03 2023 #################

	{ nome = "pose818" , dict = "all_eyes_on_me_00@sharror" , anim = "all_eyes_on_me_00_ierrorr" , andar = false , loop = true },
	{ nome = "pose819" , dict = "chocoholic@duo29" , anim = "duo29_clip" , andar = false , loop = true },
	{ nome = "pose820" , dict = "chocoholic@duo30" , anim = "duo30_clip" , andar = false , loop = true },
	{ nome = "pose821" , dict = "chocoholic@duo45" , anim = "duo45_clip" , andar = false , loop = true },
	{ nome = "pose822" , dict = "chocoholic@duo46" , anim = "duo46_clip" , andar = false , loop = true },
	{ nome = "pose823" , dict = "chocoholic@duo47" , anim = "duo47_clip" , andar = false , loop = true },
	{ nome = "pose824" , dict = "chocoholic@duo48" , anim = "duo48_clip" , andar = false , loop = true },
	{ nome = "pose825" , dict = "emoo@ierrorr" , anim = "emoo_clip" , andar = false , loop = true },
	{ nome = "pose826" , dict = "female_phone_1@sharror" , anim = "female_phone_1_clip" , andar = false , loop = true },
	{ nome = "pose827" , dict = "female_pose_01@sharror" , anim = "female_pose_01_clip" , andar = false , loop = true },
	{ nome = "pose828" , dict = "gang_2@ierrorr" , anim = "gang_2_clip" , andar = false , loop = true },
	{ nome = "pose829" , dict = "devil@ierrorr" , anim = "devil_clip" , andar = false , loop = true },
	{ nome = "pose830" , dict = "m_rain@sharror" , anim = "m_rain" , andar = false , loop = true },
	{ nome = "pose831" , dict = "mmodelpose1@sharror" , anim = "mmodelpose1_clip" , andar = false , loop = true },
	{ nome = "pose832" , dict = "pictureperfect@sharror" , anim = "number1" , andar = false , loop = true },
	{ nome = "pose833" , dict = "pictureperfect2@sharror" , anim = "number2" , andar = false , loop = true },
	{ nome = "pose834" , dict = "pictureperfect3@sharror" , anim = "number3" , andar = false , loop = true },
	{ nome = "pose835" , dict = "pictureperfect4@sharror" , anim = "number4" , andar = false , loop = true },
	{ nome = "pose836" , dict = "drill_hands@sharror" , anim = "drill_hands_clip" , andar = false , loop = true },
	{ nome = "pose837" , dict = "f_sit_stair@sharror" , anim = "f_sit_stair_ierrorr" , andar = false , loop = true },
	{ nome = "pose838" , dict = "f_bat@sharror" , anim = "f_bat_clip" , andar = false , loop = true },
	{ nome = "pose839" , dict = "ging_ging@sharror" , anim = "ging_ging_clip" , andar = false , loop = true },
	{ nome = "pose840" , dict = "gingging2@sharror" , anim = "gingging2_clip" , andar = false , loop = true },
	{ nome = "pose841" , dict = "gun_head@sharror" , anim = "gun_head_clip" , andar = false , loop = true },
	{ nome = "pose842" , dict = "idk@sharror" , anim = "idk_ierrorr" , andar = false , loop = true },
	{ nome = "pose843" , dict = "jokerdoublestrap@sharror" , anim = "jokerdoublestrap_clip" , andar = false , loop = true },
	{ nome = "pose844" , dict = "lucio_01@sharror" , anim = "lucio_01" , andar = false , loop = true },
	{ nome = "pose845" , dict = "m_duo_01@sharror" , anim = "m_duo_01_ierrorr" , andar = false , loop = true },
	{ nome = "pose846" , dict = "m_duo_02@sharror" , anim = "m_duo_02_ierrorr" , andar = false , loop = true },
	{ nome = "pose847" , dict = "m_hold_phone_bag@sharror" , anim = "m_hold_phone_bag_ierrorr" , andar = false , loop = true },
	{ nome = "pose848" , dict = "m_smoke_o@sharror" , anim = "m_smoke_o_ierrorr" , andar = false , loop = true },
	{ nome = "pose849" , dict = "m_stand_hands@sharror" , anim = "m_stand_hands" , andar = false , loop = true },
	{ nome = "pose850" , dict = "raini@sharror" , anim = "raini_clip" , andar = false , loop = true },
	{ nome = "pose851" , dict = "rose_mund@sharror" , anim = "rose_mund_ierrorr" , andar = false , loop = true },
	{ nome = "pose852" , dict = "sitii@sharror" , anim = "sitii_clip" , andar = false , loop = true },
	{ nome = "pose853" , dict = "sit_onground@sharror" , anim = "sit_onground_clip" , andar = false , loop = true },
	{ nome = "pose854" , dict = "sit_br@sharror" , anim = "sit_br_ierrorr" , andar = false , loop = true },
	{ nome = "pose855" , dict = "s_sit_01@sharror" , anim = "s_sit_01_clip" , andar = false , loop = true },
	{ nome = "pose856" , dict = "lookdown@sharror" , anim = "lookdown_clip" , andar = false , loop = true },
	{ nome = "pose857" , dict = "hiddenselfie@sharror" , anim = "hiddenselfie_clip" , andar = false , loop = true },
	{ nome = "pose858" , dict = "handinpocket@sharror" , anim = "handinpocket_clip" , andar = false , loop = true },
	{ nome = "pose859" , dict = "perspective1@sharror" , anim = "perspective1_clip" , andar = false , loop = true },
	{ nome = "pose860" , dict = "perspective2@sharror" , anim = "perspective2_clip" , andar = false , loop = true },
	{ nome = "pose861" , dict = "sitonground1@sharror" , anim = "sitonground1_clip" , andar = false , loop = true },
	{ nome = "pose862" , dict = "stairpose1@sharror" , anim = "stairpose1_clip" , andar = false , loop = true },
	{ nome = "pose863" , dict = "stairpose2@sharror" , anim = "stairpose2_clip" , andar = false , loop = true },
	{ nome = "pose864" , dict = "strechpose@shadow" , anim = "strech" , andar = false , loop = true },
	{ nome = "pose865" , dict = "windowsit@shadow" , anim = "windowsit" , andar = false , loop = true },
	{ nome = "pose866" , dict = "wpose1@shadow" , anim = "wpose1_clip" , andar = false , loop = true },
	{ nome = "pose867" , dict = "f_athletics@d3vilros3" , anim = "f_athletics_clip" , andar = false , loop = true },
	{ nome = "pose868" , dict = "f_handwall@d3vilros3" , anim = "f_handwall_clip" , andar = false , loop = true },
	{ nome = "pose869" , dict = "f_travel@d3vilros3" , anim = "f_travel_clip" , andar = false , loop = true },
	{ nome = "pose870" , dict = "f_wallcool@d3vilros3" , anim = "f_wallcool_clip" , andar = false , loop = true },
	{ nome = "pose871" , dict = "f_wineglass@d3vilros3" , anim = "f_wineglass_clip" , andar = false , loop = true },
	{ nome = "pose872" , dict = "handoncar@d3vilros3" , anim = "handoncar_clip" , andar = false , loop = true },
	{ nome = "pose873" , dict = "hotchoco@d3vilros3" , anim = "hotchoco_clip" , andar = false , loop = true },
	{ nome = "pose874" , dict = "leanrailing@d3vilros3" , anim = "leanrailing_clip" , andar = false , loop = true },
	{ nome = "pose875" , dict = "leitplanke@d3vilros3" , anim = "leitplanke_clip" , andar = false , loop = true },
	{ nome = "pose876" , dict = "f_nfspose@d3vilros3" , anim = "f_nfspose_clip" , andar = false , loop = true },
	{ nome = "pose877" , dict = "sexyass@d3vilros3" , anim = "sexyass_clip" , andar = false , loop = true },
	{ nome = "pose878" , dict = "sexyfeet@d3vilros3" , anim = "sexyfeet_clip" , andar = false , loop = true },
	{ nome = "pose879" , dict = "sitcold@d3vilros3" , anim = "sitcold_clip" , andar = false , loop = true },
	{ nome = "pose880" , dict = "clay@d3vilros3" , anim = "clay_clip" , andar = false , loop = true },
	{ nome = "pose881" , dict = "leanpole@d3vilros3" , anim = "leanpole_clip" , andar = false , loop = true },
	{ nome = "pose882" , dict = "gun@d3vilros3" , anim = "gun_clip" , andar = false , loop = true },
	{ nome = "pose883" , dict = "drilla@joker" , anim = "drilla" , andar = false , loop = true },
	{ nome = "pose884" , dict = "drilla1@joker" , anim = "drilla1" , andar = false , loop = true },
	{ nome = "pose885" , dict = "drillpolo@joker" , anim = "drillpolo_clip" , andar = false , loop = true },
	{ nome = "pose886" , dict = "foldhandscar@joker" , anim = "foldhandscar" , andar = false , loop = true },
	{ nome = "pose887" , dict = "fuckyou@joker" , anim = "fuckyou_clip" , andar = false , loop = true },
	{ nome = "pose888" , dict = "onkneewithpitbull@joker" , anim = "onkneewithpitbull_clip" , andar = false , loop = true },
	{ nome = "pose889" , dict = "sitchillcar@joker" , anim = "sitchillcar" , andar = false , loop = true },
	{ nome = "pose890" , dict = "sitcouch@joker" , anim = "sitcouch_clip" , andar = false , loop = true },
	{ nome = "pose891" , dict = "sithandface@joker" , anim = "sithandface" , andar = false , loop = true },
	{ nome = "pose892" , dict = "sitonwhip@joker" , anim = "sitonwhip_clip" , andar = false , loop = true },
	{ nome = "pose893" , dict = "sitstairs_wcoffee@joker" , anim = "sitstairs_wcoffee_clip" , andar = false , loop = true },
	{ nome = "pose894" , dict = "sitincar@joker" , anim = "sitincar" , andar = false , loop = true },
	{ nome = "pose895" , dict = "standfemale_sick@joker" , anim = "standfemale_sick_clip" , andar = false , loop = true },
	{ nome = "pose896" , dict = "standhandphone@joker" , anim = "standhandphone" , andar = false , loop = true },
	{ nome = "pose897" , dict = "deephands1@joker" , anim = "deephands1_clip" , andar = false , loop = true },
	{ nome = "pose898" , dict = "deephands@joker" , anim = "deephands_clip" , andar = false , loop = true },
	{ nome = "pose899" , dict = "chocoholic@single58" , anim = "single58_clip" , andar = false , loop = true },
	{ nome = "pose900" , dict = "chocoholic@single59" , anim = "single59_clip" , andar = false , loop = true },
	{ nome = "pose901" , dict = "chocoholic@single60" , anim = "single60_clip" , andar = false , loop = true },
	{ nome = "pose902" , dict = "chocoholic@single61" , anim = "single61_clip" , andar = false , loop = true },
	{ nome = "pose903" , dict = "chocoholic@single62" , anim = "single62_clip" , andar = false , loop = true },
	{ nome = "pose904" , dict = "chocoholic@single63" , anim = "single63_clip" , andar = false , loop = true },
	{ nome = "pose905" , dict = "chocoholic@single64" , anim = "single64_clip" , andar = false , loop = true },
	{ nome = "pose906" , dict = "chocoholic@single65" , anim = "single65_clip" , andar = false , loop = true },
	{ nome = "pose907" , dict = "chocoholic@single66" , anim = "single66_clip" , andar = false , loop = true },
	{ nome = "pose908" , dict = "chocoholic@single67" , anim = "single67_clip" , andar = false , loop = true },
	{ nome = "pose909" , dict = "chocoholic@single68" , anim = "single68_clip" , andar = false , loop = true },
	{ nome = "pose910" , dict = "chocoholic@single69" , anim = "single69_clip" , andar = false , loop = true },
	{ nome = "pose911" , dict = "chocoholic@single70" , anim = "single70_clip" , andar = false , loop = true },
	{ nome = "pose912" , dict = "chocoholic@single71" , anim = "single71_clip" , andar = false , loop = true },
	{ nome = "pose913" , dict = "chocoholic@single72" , anim = "single72_clip" , andar = false , loop = true },
	{ nome = "pose914" , dict = "chocoholic@single73" , anim = "single73_clip" , andar = false , loop = true },
	{ nome = "pose915" , dict = "chocoholic@single74" , anim = "single74_clip" , andar = false , loop = true },
	{ nome = "pose916" , dict = "chocoholic@single75" , anim = "single75_clip" , andar = false , loop = true },
	{ nome = "pose917" , dict = "chocoholic@single76" , anim = "single76_clip" , andar = false , loop = true },
	{ nome = "pose918" , dict = "chocoholic@single77" , anim = "single77_clip" , andar = false , loop = true },
	{ nome = "pose919" , dict = "chocoholic@single78" , anim = "single78_clip" , andar = false , loop = true },
	{ nome = "pose920" , dict = "chocoholic@single79" , anim = "single79_clip" , andar = false , loop = true },
	{ nome = "pose921" , dict = "chocoholic@single80" , anim = "single80_clip" , andar = false , loop = true },
	{ nome = "pose922" , dict = "chocoholic@single81" , anim = "single81_clip" , andar = false , loop = true },
	{ nome = "pose923" , dict = "chocoholic@single82" , anim = "single82_clip" , andar = false , loop = true },
	{ nome = "pose924" , dict = "chocoholic@single83" , anim = "single83_clip" , andar = false , loop = true },
	{ nome = "pose925" , dict = "chocoholic@single84" , anim = "single84_clip" , andar = false , loop = true },
	{ nome = "pose926" , dict = "chocoholic@single85" , anim = "single85_clip" , andar = false , loop = true },
	{ nome = "pose927" , dict = "chocoholic@single86" , anim = "single86_clip" , andar = false , loop = true },
	{ nome = "pose928" , dict = "chocoholic@single87a" , anim = "single87a_clip" , andar = false , loop = true },
	{ nome = "pose929" , dict = "chocoholic@single87b" , anim = "single87b_clip" , andar = false , loop = true },
	{ nome = "pose930" , dict = "chocoholic@single88" , anim = "single88_clip" , andar = false , loop = true },
	{ nome = "pose931" , dict = "chocoholic@single89" , anim = "single89_clip" , andar = false , loop = true },
	{ nome = "pose932" , dict = "chocoholic@single90" , anim = "single90_clip" , andar = false , loop = true },
	{ nome = "pose933" , dict = "chocoholic@single91" , anim = "single91_clip" , andar = false , loop = true },
	{ nome = "pose934" , dict = "chocoholic@skate1" , anim = "skate1_clip" , andar = false , loop = true },
	{ nome = "pose935" , dict = "chocoholic@skate2" , anim = "skate2_clip" , andar = false , loop = true },
	{ nome = "pose936" , dict = "chocoholic@skate3" , anim = "skate3_clip" , andar = false , loop = true },
	{ nome = "pose937" , dict = "chocoholic@skate4" , anim = "skate4_clip" , andar = false , loop = true },
	{ nome = "pose938" , dict = "chocoholic@skate5" , anim = "skate5_clip" , andar = false , loop = true },
	{ nome = "pose939" , dict = "chocoholic@skate6" , anim = "skate6_clip" , andar = false , loop = true },
	{ nome = "pose940" , dict = "chocoholic@skate7" , anim = "skate7_clip" , andar = false , loop = true },
	{ nome = "pose941" , dict = "chocoholic@single28" , anim = "single#28_clip" , andar = false , loop = true },
	{ nome = "pose942" , dict = "chocoholic@single29" , anim = "single#29_clip" , andar = false , loop = true },
	{ nome = "pose943" , dict = "chocoholic@duo5" , anim = "duo#5_clip" , andar = false , loop = true },
	{ nome = "pose944" , dict = "chocoholic@duo5a" , anim = "duo#5a_clip" , andar = false , loop = true },
	{ nome = "pose945" , dict = "chocoholic@duo5b" , anim = "duo#5b_clip" , andar = false , loop = true },
	{ nome = "pose946" , dict = "chocoholic@duo6" , anim = "duo#6_clip" , andar = false , loop = true },
	{ nome = "pose947" , dict = "chocoholic@duo7" , anim = "duo#7_clip" , andar = false , loop = true },
	{ nome = "pose948" , dict = "chocoholic@duo8" , anim = "duo#8_clip" , andar = false , loop = true },
	{ nome = "pose949" , dict = "chocoholic@duo17" , anim = "duo#17_clip" , andar = false , loop = true },
	{ nome = "pose950" , dict = "chocoholic@duo18" , anim = "duo#18_clip" , andar = false , loop = true },
	{ nome = "pose951" , dict = "chocoholic@duo3" , anim = "duo#3_clip" , andar = false , loop = true },
	{ nome = "pose952" , dict = "chocoholic@duo4" , anim = "duo#4_clip" , andar = false , loop = true },
	{ nome = "pose953" , dict = "chocoholic@single1" , anim = "single#1_clip" , andar = false , loop = true },
	{ nome = "pose954" , dict = "chocoholic@single2" , anim = "single#2_clip" , andar = false , loop = true },
	{ nome = "pose955" , dict = "chocoholic@single3" , anim = "single#3_clip" , andar = false , loop = true },
	{ nome = "pose956" , dict = "chocoholic@single4" , anim = "single#4_clip" , andar = false , loop = true },
	{ nome = "pose957" , dict = "chocoholic@single5" , anim = "single#5_clip" , andar = false , loop = true },
	{ nome = "pose958" , dict = "chocoholic@single42" , anim = "single#42_clip" , andar = false , loop = true },
	{ nome = "pose959" , dict = "chocoholic@single43" , anim = "single#43_clip" , andar = false , loop = true },
	{ nome = "pose960" , dict = "chocoholic@single44" , anim = "single#44_clip" , andar = false , loop = true },
	{ nome = "pose961" , dict = "chocoholic@single44a" , anim = "single#44a_clip" , andar = false , loop = true },
	{ nome = "pose962" , dict = "chocoholic@single45" , anim = "single#45_clip" , andar = false , loop = true },
	{ nome = "pose963" , dict = "chocoholic@single46" , anim = "single#46_clip" , andar = false , loop = true },
	{ nome = "pose964" , dict = "chocoholic@single47" , anim = "single#47_clip" , andar = false , loop = true },
	{ nome = "pose965" , dict = "chocoholic@single48" , anim = "single#48_clip" , andar = false , loop = true },
	{ nome = "pose966" , dict = "chocoholic@single49" , anim = "single#49_clip" , andar = false , loop = true },
	{ nome = "pose967" , dict = "chocoholic@single50" , anim = "single#50_clip" , andar = false , loop = true },
	{ nome = "pose968" , dict = "chocoholic@single51" , anim = "single#51_clip" , andar = false , loop = true },
	{ nome = "pose969" , dict = "chocoholic@single52" , anim = "single#52_clip" , andar = false , loop = true },
	{ nome = "pose970" , dict = "chocoholic@single53" , anim = "single#53_clip" , andar = false , loop = true },
	{ nome = "pose971" , dict = "chocoholic@single54" , anim = "single#54_clip" , andar = false , loop = true },
	{ nome = "pose972" , dict = "chocoholic@single55" , anim = "single#55_clip" , andar = false , loop = true },
	{ nome = "pose973" , dict = "chocoholic@single41" , anim = "single#41_clip" , andar = false , loop = true },
	{ nome = "pose974" , dict = "chocoholic@single57" , anim = "single#57_clip" , andar = false , loop = true },
	{ nome = "pose975" , dict = "chocoholic@single6" , anim = "single#6_clip" , andar = false , loop = true },
	{ nome = "pose976" , dict = "chocoholic@single7" , anim = "single#7_clip" , andar = false , loop = true },
	{ nome = "pose977" , dict = "chocoholic@single8" , anim = "single#8_clip" , andar = false , loop = true },
	{ nome = "pose978" , dict = "chocoholic@single9" , anim = "single#9_clip" , andar = false , loop = true },
	{ nome = "pose979" , dict = "chocoholic@single13" , anim = "single#13_clip" , andar = false , loop = true },
	{ nome = "pose980" , dict = "chocoholic@single15" , anim = "single#15_clip" , andar = false , loop = true },
	{ nome = "pose981" , dict = "chocoholic@single16" , anim = "single#16_clip" , andar = false , loop = true },
	{ nome = "pose982" , dict = "chocoholic@single17" , anim = "single#17_clip" , andar = false , loop = true },
	{ nome = "pose983" , dict = "chocoholic@single18" , anim = "single#18_clip" , andar = false , loop = true },
	{ nome = "pose984" , dict = "chocoholic@single19" , anim = "single#19_clip" , andar = false , loop = true },
	{ nome = "pose985" , dict = "chocoholic@single20" , anim = "single#20_clip" , andar = false , loop = true },
	{ nome = "pose986" , dict = "chocoholic@single21" , anim = "single#21_clip" , andar = false , loop = true },
	{ nome = "pose987" , dict = "chocoholic@single23" , anim = "single#23_clip" , andar = false , loop = true },
	{ nome = "pose988" , dict = "chocoholic@single24" , anim = "single#24_clip" , andar = false , loop = true },
	{ nome = "pose989" , dict = "chocoholic@single25" , anim = "single#25_clip" , andar = false , loop = true },
	{ nome = "pose990" , dict = "chocoholic@single26" , anim = "single#26_clip" , andar = false , loop = true },
	{ nome = "pose991" , dict = "chocoholic@single27" , anim = "single#27_clip" , andar = false , loop = true },
	{ nome = "pose992" , dict = "chocoholic@single27a" , anim = "single#27a_clip" , andar = false , loop = true },
	{ nome = "pose993" , dict = "chocoholic@single30" , anim = "single#30_clip" , andar = false , loop = true },
	{ nome = "pose994" , dict = "chocoholic@single35" , anim = "single#35_clip" , andar = false , loop = true },
	{ nome = "pose995" , dict = "chocoholic@single36a" , anim = "single#36a_clip" , andar = false , loop = true },
	{ nome = "pose996" , dict = "chocoholic@single37" , anim = "single#37_clip" , andar = false , loop = true },
	{ nome = "pose997" , dict = "chocoholic@single38" , anim = "single#38_clip" , andar = false , loop = true },
	{ nome = "pose998" , dict = "chocoholic@single39" , anim = "single#39_clip" , andar = false , loop = true },
	{ nome = "pose999" , dict = "chocoholic@single39a" , anim = "single#39a_clip" , andar = false , loop = true },
	{ nome = "pose1000" , dict = "chocoholic@single40" , anim = "single#40_clip" , andar = false , loop = true },

	-- ###### casais (couple) ######

	{ nome = "casal1" , dict = "couplepose1pack1anim1@animation" , anim = "couplepose1pack1anim1_clip" , andar = false , loop = true },
	{ nome = "casal2" , dict = "couplepose1pack1anim2@animation" , anim = "couplepose1pack1anim2_clip" , andar = false , loop = true },

	{ nome = "casal3" , dict = "couplepose2pack1anim1@animation" , anim = "couplepose2pack1anim1_clip" , andar = false , loop = true },
	{ nome = "casal4" , dict = "couplepose2pack1anim2@animation" , anim = "couplepose2pack1anim2_clip" , andar = false , loop = true },

	{ nome = "casal5" , dict = "couplepose3pack1anim1@animation" , anim = "couplepose3pack1anim1_clip" , andar = false , loop = true },
	{ nome = "casal6" , dict = "couplepose3pack1anim2@animation" , anim = "couplepose3pack1anim2_clip" , andar = false , loop = true },

	{ nome = "casal7" , dict = "couplepose4pack1anim1@animation" , anim = "couplepose4pack1anim1_clip" , andar = false , loop = true },
	{ nome = "casal8" , dict = "couplepose4pack1anim2@animation" , anim = "couplepose4pack1anim2_clip" , andar = false , loop = true },

	{ nome = "casal9" , dict = "couplepose5pack1anim1@animation" , anim = "couplepose5pack1anim1_clip" , andar = false , loop = true },
	{ nome = "casal10" , dict = "couplepose5pack1anim2@animation" , anim = "couplepose5pack1anim2_clip" , andar = false , loop = true },

	{ nome = "casal11" , dict = "luxurymods@couple_female2" , anim = "couple_female2_clip" , andar = false , loop = true },
	{ nome = "casal12" , dict = "luxurymods@couple_male2" , anim = "couple_male2_clip" , andar = false , loop = true },

	{ nome = "casal13" , dict = "handshakepose1@animation" , anim = "handshakepose1_clip" , andar = false , loop = true },
	{ nome = "casal14" , dict = "handshakepose2@animation" , anim = "handshakepose2_clip" , andar = false , loop = true },

	{ nome = "casal15" , dict = "murda@danoanim" , anim = "danoanim" , andar = false , loop = true },
	{ nome = "casal16" , dict = "murda@ceceanim" , anim = "ceceanim" , andar = false , loop = true },

	{ nome = "casal17" , dict = "mx_couple5_1_a" , anim = "mx_couple5_1_a_clip" , andar = false , loop = true },
	{ nome = "casal18" , dict = "mx_couple5_1_b" , anim = "mx_couple5_1_b_clip" , andar = false , loop = true },

	{ nome = "casal19" , dict = "mx_couple5_2_a" , anim = "mx_couple5_2_a_clip" , andar = false , loop = true },
	{ nome = "casal20" , dict = "mx_couple5_2_b" , anim = "mx_couple5_2_b_clip" , andar = false , loop = true },
	
	{ nome = "casal21" , dict = "mx_couple5_3_a" , anim = "mx_couple5_3_a_clip" , andar = false , loop = true },
	{ nome = "casal22" , dict = "mx_couple5_3_b" , anim = "mx_couple5_3_b_clip" , andar = false , loop = true },

	{ nome = "casal23" , dict = "mx_couple5_4_a" , anim = "mx_couple5_4_a_clip" , andar = false , loop = true },
	{ nome = "casal24" , dict = "mx_couple5_4_b" , anim = "mx_couple5_4_b_clip" , andar = false , loop = true },

	{ nome = "casal25" , dict = "couplefemale@sarahdiehexe" , anim = "couplefemale_clip" , andar = false , loop = true },
	{ nome = "casal26" , dict = "couplemale@sarahdiehexe" , anim = "couplemale_clip" , andar = false , loop = true },

	{ nome = "casal27" , dict = "coupleshoulderf@sarahdiehexe" , anim = "coupleshoulderf_clip" , andar = false , loop = true },
	{ nome = "casal28" , dict = "coupleshoulderm@sarahdiehexe" , anim = "coupleshoulderm_clip" , andar = false , loop = true },

	{ nome = "casal29" , dict = "myu@fm_couple1_1" , anim = "fm_couple1_f_clip" , andar = false , loop = true },
	{ nome = "casal30" , dict = "myu@fm_couple1_2" , anim = "fm_couple1_m_clip" , andar = false , loop = true },

	{ nome = "casal31" , dict = "myu@fm_couple2_1" , anim = "fm_couple2_f_clip" , andar = false , loop = true },
	{ nome = "casal32" , dict = "myu@fm_couple2_2" , anim = "fm_couple2_m_clip" , andar = false , loop = true },

	{ nome = "casal33" , dict = "myu@fm_couple3_f" , anim = "fm_couple3_f_clip" , andar = false , loop = true },
	{ nome = "casal34" , dict = "myu@fm_couple3_m" , anim = "fm_couple3_m_clip" , andar = false , loop = true },

	{ nome = "casal35" , dict = "perlenfuchs@friends_hold_ass_f2" , anim = "friends_hold_ass_f2_clip" , andar = false , loop = true },
	{ nome = "casal36" , dict = "perlenfuchs@friends_hold_ass_f1" , anim = "friends_hold_ass_f1_clip" , andar = false , loop = true },

	{ nome = "casal37" , dict = "cuddlepartner1@pawuk" , anim = "cuddlepartner1_clip" , andar = false , loop = true },
	{ nome = "casal38" , dict = "cuddlepartner2@pawuk" , anim = "cuddlepartner2_clip" , andar = false , loop = true },

	{ nome = "casal39" , dict = "coupleero01fr@mchmnk" , anim = "coupleero01fr_clip" , andar = false , loop = true },
	{ nome = "casal40" , dict = "coupleero01tw@mchmnk" , anim = "coupleero01tw_clip" , andar = false , loop = true },

	{ nome = "casal41" , dict = "missionary@casual" , anim = "girl_clip" , andar = false , loop = true },
	{ nome = "casal42" , dict = "missionary@casual" , anim = "man_clip" , andar = false , loop = true },

	{ nome = "casal43" , dict = "eagle@couplepose21" , anim = "girl" , andar = false , loop = true },
	{ nome = "casal44" , dict = "eagle@couplepose21" , anim = "boy" , andar = false , loop = true },

	{ nome = "casal45" , dict = "eagle@couplepose22" , anim = "girl" , andar = false , loop = true },
	{ nome = "casal46" , dict = "eagle@couplepose22" , anim = "boy" , andar = false , loop = true },

	{ nome = "casal47" , dict = "eagle@couplepose23" , anim = "girl" , andar = false , loop = true },
	{ nome = "casal48" , dict = "eagle@couplepose23" , anim = "boy" , andar = false , loop = true },

	{ nome = "casal49" , dict = "eagle@bestfriend06" , anim = "girl01" , andar = false , loop = true },
	{ nome = "casal50" , dict = "eagle@bestfriend06" , anim = "girl02" , andar = false , loop = true },

	{ nome = "casal51" , dict = "eagle@bestfriend07" , anim = "girl01" , andar = false , loop = true },
	{ nome = "casal52" , dict = "eagle@bestfriend07" , anim = "girl02" , andar = false , loop = true },
	
	{ nome = "casal53" , dict = "timetable@trevor@ig_1" , anim = "ig_1_thedontknowwhy_trevor" , andar = false , loop = true },
    { nome = "casal54" , dict = "timetable@trevor@ig_1" , anim = "ig_1_thedontknowwhy_patricia" , andar = false , loop = true },

    { nome = "casal55" , dict = "timetable@trevor@ig_1" , anim = "ig_1_thedesertissobeautiful_trevor" , andar = false , loop = true },
    { nome = "casal56" , dict = "timetable@trevor@ig_1" , anim = "ig_1_thedesertissobeautiful_patricia" , andar = false , loop = true },

	{ nome = 'casal57' , dict= 'bfflookback2@animation' , anim = 'bfflookback2_clip' , andar = false , loop = true },
	{ nome = 'casal58' , dict= 'bfflookback1@animation' , anim = 'bfflookback1_clip' , andar = false , loop = true },

	{ nome = 'casal59' , dict= 'bfffun1@animation' , anim = 'bfffun1_clip' , andar = false , loop = true },
	{ nome = 'casal60' , dict= 'bfffun2@animation' , anim = 'bfffun2_clip' , andar = false , loop = true },

	{ nome = 'casal61' , dict= 'holdhip@animation' , anim = 'holdhip_clip' , andar = false , loop = true },
	{ nome = 'casal62' , dict= 'holdhipb@animation' , anim = 'holdhipb_clip' , andar = false , loop = true },

	{ nome = 'casal63' , dict= 'holdass@animation' , anim = 'holdass_clip' , andar = false , loop = true },
	{ nome = 'casal64' , dict= 'holdassb@animation' , anim = 'holdassb_clip' , andar = false , loop = true },

	{ nome = 'casal65' , dict= 'coupleseat1@animation' , anim = 'coupleseat1_clip' , andar = false , loop = true },
	{ nome = 'casal66' , dict= 'coupleseat1b@animation' , anim = 'coupleseat1b_clip' , andar = false , loop = true },

	{ nome = "casal67" , dict = "perlenfuchs@couple8_f" , anim = "couple8_f_clip" , andar = false , loop = true },
	{ nome = "casal68" , dict = "perlenfuchs@couple8_m" , anim = "couple8_m_clip" , andar = false , loop = true },

	{ nome = "casal67" , dict = "perlenfuchs@couple7_f" , anim = "couple7_f_clip" , andar = false , loop = true },
	{ nome = "casal68" , dict = "perlenfuchs@couple7_m" , anim = "couple7_m_clip" , andar = false , loop = true },

	{ nome = "casal69" , dict = "perlenfuchs@couple5_f" , anim = "couple5_f_clip" , andar = false , loop = true },
	{ nome = "casal70" , dict = "perlenfuchs@couple5_m" , anim = "couple5_m_clip" , andar = false , loop = true },

	{ nome = "casal71" , dict = "perlenfuchs@couple3_f" , anim = "couple3_f_clip" , andar = false , loop = true },
	{ nome = "casal72" , dict = "perlenfuchs@couple3_m" , anim = "couple3_m_clip" , andar = false , loop = true },

	{ nome = "casal73" , dict = "perlenfuchs@couple1" , anim = "couple1_clip" , andar = false , loop = true },
	{ nome = "casal74" , dict = "perlenfuchs@couple1_m" , anim = "couple1_m_clip" , andar = false , loop = true },

	{ nome = "casal75" , dict = "mafiafemale@blackqueen" , anim = "mafiafemale_clip" , andar = false , loop = true },
	{ nome = "casal76" , dict = "mafiamale@blackqueen" , anim = "mafiamale_clip" , andar = false , loop = true },

	{ nome = "casal77" , dict = "mafia1female@blackqueen" , anim = "mafia1female_clip" , andar = false , loop = true },
	{ nome = "casal78" , dict = "mafia1male@blackqueen" , anim = "mafia1male_clip" , andar = false , loop = true },

	{ nome = "casal79" , dict = "bike_f_look_01@sharror" , anim = "bike_f_look_01_clip" , andar = false , loop = true },
	{ nome = "casal80" , dict = "bike_m_look_01@sharror" , anim = "bike_m_look_01_clip" , andar = false , loop = true },

	{ nome = "casal81" , dict = "couplefemale@blackqueen" , anim = "couplefemale_clip" , andar = false , loop = true },
	{ nome = "casal82" , dict = "couplemale@blackqueen" , anim = "couplemale_clip" , andar = false , loop = true },

	{ nome = "casal83" , dict = "chouko@bewithmef1" , anim = "bewithmef1" , andar = false , loop = true },
	{ nome = "casal84" , dict = "chouko@bewithmem1" , anim = "bewithmem1" , andar = false , loop = true },

	{ nome = "casal85" , dict = "murda@sinanimation09" , anim = "sinanimation09" , andar = false , loop = true },
	{ nome = "casal86" , dict = "murda@sinanimation11" , anim = "sinanimation11" , andar = false , loop = true },

	{ nome = "casal87" , dict = "murda@sinanimation06" , anim = "sinanimation06" , andar = false , loop = true },
	{ nome = "casal88" , dict = "murda@sinanimation07" , anim = "sinanimation07" , andar = false , loop = true },

	{ nome = "casal89" , dict = "lovers_couple_pack@anim" , anim = "sit_on_lap_atc_full" , andar = false , loop = true },
	{ nome = "casal90" , dict = "lovers_couple_pack@anim" , anim = "sit_on_lap_vic_full" , andar = false , loop = true },

	{ nome = "casal91" , dict = "lovers_couple_pack@anim" , anim = "sit_on_lap_atc_idle" , andar = false , loop = true },
	{ nome = "casal92" , dict = "lovers_couple_pack@anim" , anim = "sit_on_lap_vic_idle" , andar = false , loop = true },

	{ nome = "casal93" , dict = "lovers_couple_pack@anim" , anim = "sitseatedhug_f" , andar = false , loop = true },
	{ nome = "casal94" , dict = "lovers_couple_pack@anim" , anim = "sitseatedhug_m" , andar = false , loop = true },

	{ nome = "casal95" , dict = "lovers_couple_pack@anim" , anim = "sitarmsaround_atc" , andar = false , loop = true },
	{ nome = "casal96" , dict = "lovers_couple_pack@anim" , anim = "sitarmsaround_vic" , andar = false , loop = true },

	{ nome = "casal97" , dict = "lovers_couple_pack@anim" , anim = "sitarmsaround_atc_idle" , andar = false , loop = true },
	{ nome = "casal98" , dict = "lovers_couple_pack@anim" , anim = "sitarmsaround_vic_idle" , andar = false , loop = true },

	{ nome = "casal99" , dict = "lovers_couple_pack@anim" , anim = "navy_kiss_atc" , andar = false , loop = true },
	{ nome = "casal100" , dict = "lovers_couple_pack@anim" , anim = "navy_kiss_vic" , andar = false , loop = true },
	
	{ nome = "casal101" , dict = "lovers_couple_pack@anim" , anim = "hug_n_kiss_atc" , andar = false , loop = true },
	{ nome = "casal102" , dict = "lovers_couple_pack@anim" , anim = "hug_n_kiss_vic" , andar = false , loop = true },
	
	{ nome = "casal103" , dict = "lovers_couple_pack@anim" , anim = "hug_atc" , andar = false , loop = true },
	{ nome = "casal104" , dict = "lovers_couple_pack@anim" , anim = "hug_vic" , andar = false , loop = true },
	
	{ nome = "casal105" , dict = "lovers_couple_pack@anim" , anim = "back_rejection_atc" , andar = false , loop = true },
	{ nome = "casal106" , dict = "lovers_couple_pack@anim" , anim = "back_rejection_vic" , andar = false , loop = true },
		
	{ nome = "casal107" , dict = "lovers_couple_pack@anim" , anim = "back_hug_atc" , andar = false , loop = true },
	{ nome = "casal108" , dict = "lovers_couple_pack@anim" , anim = "back_hug_vic" , andar = false , loop = true },
		
	{ nome = "casal109" , dict = "lovers_couple_pack@anim" , anim = "arms_around_shoulder_atc" , andar = false , loop = true },
	{ nome = "casal110" , dict = "lovers_couple_pack@anim" , anim = "arms_around_shoulder_vic" , andar = false , loop = true },

	{ nome = "casal111" , dict = "mx@couplemale" , anim = "clipcouple_male" , andar = false , loop = true },
	{ nome = "casal112" , dict = "mx@couplefemale" , anim = "clipcouple_female" , andar = false , loop = true },

	{ nome = "casal113" , dict = "karxem@couple_f" , anim = "karxem_couple_f_clip" , andar = false , loop = true },
	{ nome = "casal114" , dict = "karxem@couple_m" , anim = "karxem_couple_m_clip" , andar = false , loop = true },

	{ nome = "casal115" , dict = "karxem@couple2_f" , anim = "karxem_coupel2_f_clip" , andar = false , loop = true },
	{ nome = "casal116" , dict = "karxem@couple2_m" , anim = "karxem_couple2_m_clip" , andar = false , loop = true },

	{ nome = "casal117" , dict = "karxem@couple3_f" , anim = "karxem_couple3_f_clip" , andar = false , loop = true },
	{ nome = "casal118" , dict = "karxem@couple3_m" , anim = "karxem_couple3_m_clip" , andar = false , loop = true },

	{ nome = "casal119" , dict = "mx@couple1_a" , anim = "mx@couple1_a_clip" , andar = false , loop = true },
	{ nome = "casal120" , dict = "mx@couple1_b" , anim = "mx@couple1_b_clip" , andar = false , loop = true },
	
	{ nome = "casal121" , dict = "EnchantedBrwny@wedding4a" , anim = "wedding4a" , andar = false , loop = true },
	{ nome = "casal122" , dict = "EnchantedBrwny@wedding4b" , anim = "wedding4b" , andar = false , loop = true },

	{ nome = "casal123" , dict = "mx@couple3_a" , anim = "mx@couple3_a_clip" , andar = false , loop = true },
	{ nome = "casal124" , dict = "mx@couple3_b" , anim = "mx@couple3_b_clip" , andar = false , loop = true },

	{ nome = "casal125" , dict = "mx@couplephone_f" , anim = "mx@couplephone_f_clip" , andar = false , loop = true },
	{ nome = "casal126" , dict = "mx@couplephone_m" , anim = "mx@couplephone_m_clip" , andar = false , loop = true },

	{ nome = "casal127" , dict = "mx@couple4_a" , anim = "mx@couple4_a_clip" , andar = false , loop = true },
	{ nome = "casal128" , dict = "mx@couple4_b" , anim = "mx@couple4_b_clip" , andar = false , loop = true },

	{ nome = "casal129" , dict = "mx@couple5_a" , anim = "mx@couple5_a_clip" , andar = false , loop = true },
	{ nome = "casal130" , dict = "mx@couple5_b" , anim = "mx@couple5_b_clip" , andar = false , loop = true },

	{ nome = "casal131" , dict = "anim@female_couple_01" , anim = "f_couple_01_clip" , andar = false , loop = true },
	{ nome = "casal132" , dict = "anim@male_couple_01" , anim = "m_couple_01_clip" , andar = false , loop = true },

	{ nome = "casal133" , dict = "anim@female_couple_02" , anim = "f_couple_02_clip" , andar = false , loop = true },
	{ nome = "casal134" , dict = "anim@male_couple_02" , anim = "m_couple_02_clip" , andar = false , loop = true },

	{ nome = "casal135" , dict = "anim@female_couple_03" , anim = "f_couple_03_clip" , andar = false , loop = true },
	{ nome = "casal136" , dict = "anim@male_couple_03" , anim = "m_couple_03_clip" , andar = false , loop = true },

	{ nome = "casal137" , dict = "anim@female_couple_04" , anim = "f_couple_04_clip" , andar = false , loop = true },
	{ nome = "casal138" , dict = "anim@male_couple_04" , anim = "m_couple_04_clip" , andar = false , loop = true },

	{ nome = "casal139" , dict = "anim@female_couple_05" , anim = "f_couple_05_clip" , andar = false , loop = true },
	{ nome = "casal140" , dict = "anim@male_couple_05" , anim = "m_couple_05_clip" , andar = false , loop = true },

	{ nome = "casal141" , dict = "anim@female_couple_06" , anim = "f_couple_06_clip" , andar = false , loop = true },
	{ nome = "casal142" , dict = "anim@male_couple_06" , anim = "m_couple_06_clip" , andar = false , loop = true },

	{ nome = "casal143" , dict = "anim@female_couple_07" , anim = "f_couple_07_clip" , andar = false , loop = true },
	{ nome = "casal144" , dict = "anim@male_couple_07" , anim = "m_couple_07_clip" , andar = false , loop = true },

	{ nome = "casal145" , dict = "mx@pack4.1_a" , anim = "mx@pack4.1_a_clip" , andar = false , loop = true },
	{ nome = "casal146" , dict = "mx@pack4.1_b" , anim = "mx@pack4.1_b_clip" , andar = false , loop = true },

	{ nome = "casal147" , dict = "mx@couple4.2_a" , anim = "mx@couple4.2_a_clip" , andar = false , loop = true },
	{ nome = "casal148" , dict = "mx@couple4.2_b" , anim = "mx@couple4.2_b_clip" , andar = false , loop = true },

	{ nome = "casal149" , dict = "mx@couple4.3_a" , anim = "mx@couple4.3_a_clip" , andar = false , loop = true },
	{ nome = "casal150" , dict = "mx@couple4.3_b" , anim = "mx@couple4.3_b_clip" , andar = false , loop = true },

	{ nome = "casal151" , dict = "mx@couple4.4_a" , anim = "mx@couple4.4_a_clip" , andar = false , loop = true },
	{ nome = "casal152" , dict = "mx@couple4.4_b" , anim = "mx@couple4.4_b_clip" , andar = false , loop = true },

	{ nome = "casal153" , dict = "mx@couple4.5_a" , anim = "mx@couple4.5_a_clip" , andar = false , loop = true },
	{ nome = "casal154" , dict = "mx@couple4.5_b" , anim = "mx@couple4.5_b_clip" , andar = false , loop = true },

	{ nome = "casal155" , dict = "EnchantedBrwny@wedding1b" , anim = "wedding1b" , andar = false , loop = true },
	{ nome = "casal156" , dict = "EnchantedBrwny@wedding1a" , anim = "wedding1a" , andar = false , loop = true },

	{ nome = "casal157" , dict = "EnchantedBrwny@wedding2a" , anim = "wedding2a" , andar = false , loop = true },
	{ nome = "casal158" , dict = "EnchantedBrwny@wedding2b" , anim = "wedding2b" , andar = false , loop = true },

	{ nome = "casal159" , dict = "EnchantedBrwny@wedding3a" , anim = "wedding3a" , andar = false , loop = true },
	{ nome = "casal160" , dict = "EnchantedBrwny@wedding3b" , anim = "wedding3b" , andar = false , loop = true },

	-- ################# novas angel 21 03 2023 #################

	{ nome = 'casal61' , dict= 'holdhip@animation' , anim = 'holdhip_clip' , andar = false , loop = true },
	{ nome = 'casal62' , dict= 'holdhipb@animation' , anim = 'holdhipb_clip' , andar = false , loop = true },

	{ nome = 'casal63' , dict= 'holdass@animation' , anim = 'holdass_clip' , andar = false , loop = true },
	{ nome = 'casal64' , dict= 'holdassb@animation' , anim = 'holdassb_clip' , andar = false , loop = true },

	{ nome = 'casal65' , dict= 'coupleseat1@animation' , anim = 'coupleseat1_clip' , andar = false , loop = true },
	{ nome = 'casal66' , dict= 'coupleseat1b@animation' , anim = 'coupleseat1b_clip' , andar = false , loop = true },

	{ nome = "casal67" , dict = "perlenfuchs@couple8_f" , anim = "couple8_f_clip" , andar = false , loop = true },
	{ nome = "casal68" , dict = "perlenfuchs@couple8_m" , anim = "couple8_m_clip" , andar = false , loop = true },

	{ nome = "casal67" , dict = "perlenfuchs@couple7_f" , anim = "couple7_f_clip" , andar = false , loop = true },
	{ nome = "casal68" , dict = "perlenfuchs@couple7_m" , anim = "couple7_m_clip" , andar = false , loop = true },

	{ nome = "casal69" , dict = "perlenfuchs@couple5_f" , anim = "couple5_f_clip" , andar = false , loop = true },
	{ nome = "casal70" , dict = "perlenfuchs@couple5_m" , anim = "couple5_m_clip" , andar = false , loop = true },

	{ nome = "casal71" , dict = "perlenfuchs@couple3_f" , anim = "couple3_f_clip" , andar = false , loop = true },
	{ nome = "casal72" , dict = "perlenfuchs@couple3_m" , anim = "couple3_m_clip" , andar = false , loop = true },

	{ nome = "casal73" , dict = "perlenfuchs@couple1" , anim = "couple1_clip" , andar = false , loop = true },
	{ nome = "casal74" , dict = "perlenfuchs@couple1_m" , anim = "couple1_m_clip" , andar = false , loop = true },

	{ nome = "casal75" , dict = "mafiafemale@blackqueen" , anim = "mafiafemale_clip" , andar = false , loop = true },
	{ nome = "casal76" , dict = "mafiamale@blackqueen" , anim = "mafiamale_clip" , andar = false , loop = true },

	{ nome = "casal77" , dict = "mafia1female@blackqueen" , anim = "mafia1female_clip" , andar = false , loop = true },
	{ nome = "casal78" , dict = "mafia1male@blackqueen" , anim = "mafia1male_clip" , andar = false , loop = true },

	{ nome = "casal79" , dict = "bike_f_look_01@sharror" , anim = "bike_f_look_01_clip" , andar = false , loop = true },
	{ nome = "casal80" , dict = "bike_m_look_01@sharror" , anim = "bike_m_look_01_clip" , andar = false , loop = true },

	{ nome = "casal81" , dict = "couplefemale@blackqueen" , anim = "couplefemale_clip" , andar = false , loop = true },
	{ nome = "casal82" , dict = "couplemale@blackqueen" , anim = "couplemale_clip" , andar = false , loop = true },

	{ nome = "casal83" , dict = "chouko@bewithmef1" , anim = "bewithmef1" , andar = false , loop = true },
	{ nome = "casal84" , dict = "chouko@bewithmem1" , anim = "bewithmem1" , andar = false , loop = true },

	{ nome = "casal85" , dict = "murda@sinanimation09" , anim = "sinanimation09" , andar = false , loop = true },
	{ nome = "casal86" , dict = "murda@sinanimation11" , anim = "sinanimation11" , andar = false , loop = true },

	{ nome = "casal87" , dict = "murda@sinanimation06" , anim = "sinanimation06" , andar = false , loop = true },
	{ nome = "casal88" , dict = "murda@sinanimation07" , anim = "sinanimation07" , andar = false , loop = true },

	{ nome = "casal89" , dict = "lovers_couple_pack@anim" , anim = "sit_on_lap_atc_full" , andar = false , loop = true },
	{ nome = "casal90" , dict = "lovers_couple_pack@anim" , anim = "sit_on_lap_vic_full" , andar = false , loop = true },

	{ nome = "casal91" , dict = "lovers_couple_pack@anim" , anim = "sit_on_lap_atc_idle" , andar = false , loop = true },
	{ nome = "casal92" , dict = "lovers_couple_pack@anim" , anim = "sit_on_lap_vic_idle" , andar = false , loop = true },

	{ nome = "casal93" , dict = "lovers_couple_pack@anim" , anim = "sitseatedhug_f" , andar = false , loop = true },
	{ nome = "casal94" , dict = "lovers_couple_pack@anim" , anim = "sitseatedhug_m" , andar = false , loop = true },

	{ nome = "casal95" , dict = "lovers_couple_pack@anim" , anim = "sitarmsaround_atc" , andar = false , loop = true },
	{ nome = "casal96" , dict = "lovers_couple_pack@anim" , anim = "sitarmsaround_vic" , andar = false , loop = true },

	{ nome = "casal97" , dict = "lovers_couple_pack@anim" , anim = "sitarmsaround_atc_idle" , andar = false , loop = true },
	{ nome = "casal98" , dict = "lovers_couple_pack@anim" , anim = "sitarmsaround_vic_idle" , andar = false , loop = true },

	{ nome = "casal99" , dict = "lovers_couple_pack@anim" , anim = "navy_kiss_atc" , andar = false , loop = true },
	{ nome = "casal100" , dict = "lovers_couple_pack@anim" , anim = "navy_kiss_vic" , andar = false , loop = true },
	
	{ nome = "casal101" , dict = "lovers_couple_pack@anim" , anim = "hug_n_kiss_atc" , andar = false , loop = true },
	{ nome = "casal102" , dict = "lovers_couple_pack@anim" , anim = "hug_n_kiss_vic" , andar = false , loop = true },
	
	{ nome = "casal103" , dict = "lovers_couple_pack@anim" , anim = "hug_atc" , andar = false , loop = true },
	{ nome = "casal104" , dict = "lovers_couple_pack@anim" , anim = "hug_vic" , andar = false , loop = true },
	
	{ nome = "casal105" , dict = "lovers_couple_pack@anim" , anim = "back_rejection_atc" , andar = false , loop = true },
	{ nome = "casal106" , dict = "lovers_couple_pack@anim" , anim = "back_rejection_vic" , andar = false , loop = true },
		
	{ nome = "casal107" , dict = "lovers_couple_pack@anim" , anim = "back_hug_atc" , andar = false , loop = true },
	{ nome = "casal108" , dict = "lovers_couple_pack@anim" , anim = "back_hug_vic" , andar = false , loop = true },
		
	{ nome = "casal109" , dict = "lovers_couple_pack@anim" , anim = "arms_around_shoulder_atc" , andar = false , loop = true },
	{ nome = "casal110" , dict = "lovers_couple_pack@anim" , anim = "arms_around_shoulder_vic" , andar = false , loop = true },

	{ nome = "casal111" , dict = "mx@couplemale" , anim = "clipcouple_male" , andar = false , loop = true },
	{ nome = "casal112" , dict = "mx@couplefemale" , anim = "clipcouple_female" , andar = false , loop = true },

	{ nome = "casal113" , dict = "karxem@couple_f" , anim = "karxem_couple_f_clip" , andar = false , loop = true },
	{ nome = "casal114" , dict = "karxem@couple_m" , anim = "karxem_couple_m_clip" , andar = false , loop = true },

	{ nome = "casal115" , dict = "karxem@couple2_f" , anim = "karxem_coupel2_f_clip" , andar = false , loop = true },
	{ nome = "casal116" , dict = "karxem@couple2_m" , anim = "karxem_couple2_m_clip" , andar = false , loop = true },

	{ nome = "casal117" , dict = "karxem@couple3_f" , anim = "karxem_couple3_f_clip" , andar = false , loop = true },
	{ nome = "casal118" , dict = "karxem@couple3_m" , anim = "karxem_couple3_m_clip" , andar = false , loop = true },

	{ nome = "casal119" , dict = "mx@couple1_a" , anim = "mx@couple1_a_clip" , andar = false , loop = true },
	{ nome = "casal120" , dict = "mx@couple1_b" , anim = "mx@couple1_b_clip" , andar = false , loop = true },
	
	{ nome = "casal121" , dict = "EnchantedBrwny@wedding4a" , anim = "wedding4a" , andar = false , loop = true },
	{ nome = "casal122" , dict = "EnchantedBrwny@wedding4b" , anim = "wedding4b" , andar = false , loop = true },

	{ nome = "casal123" , dict = "mx@couple3_a" , anim = "mx@couple3_a_clip" , andar = false , loop = true },
	{ nome = "casal124" , dict = "mx@couple3_b" , anim = "mx@couple3_b_clip" , andar = false , loop = true },

	{ nome = "casal125" , dict = "mx@couplephone_f" , anim = "mx@couplephone_f_clip" , andar = false , loop = true },
	{ nome = "casal126" , dict = "mx@couplephone_m" , anim = "mx@couplephone_m_clip" , andar = false , loop = true },

	{ nome = "casal127" , dict = "mx@couple4_a" , anim = "mx@couple4_a_clip" , andar = false , loop = true },
	{ nome = "casal128" , dict = "mx@couple4_b" , anim = "mx@couple4_b_clip" , andar = false , loop = true },

	{ nome = "casal129" , dict = "mx@couple5_a" , anim = "mx@couple5_a_clip" , andar = false , loop = true },
	{ nome = "casal130" , dict = "mx@couple5_b" , anim = "mx@couple5_b_clip" , andar = false , loop = true },

	{ nome = "casal131" , dict = "anim@female_couple_01" , anim = "f_couple_01_clip" , andar = false , loop = true },
	{ nome = "casal132" , dict = "anim@male_couple_01" , anim = "m_couple_01_clip" , andar = false , loop = true },

	{ nome = "casal133" , dict = "anim@female_couple_02" , anim = "f_couple_02_clip" , andar = false , loop = true },
	{ nome = "casal134" , dict = "anim@male_couple_02" , anim = "m_couple_02_clip" , andar = false , loop = true },

	{ nome = "casal135" , dict = "anim@female_couple_03" , anim = "f_couple_03_clip" , andar = false , loop = true },
	{ nome = "casal136" , dict = "anim@male_couple_03" , anim = "m_couple_03_clip" , andar = false , loop = true },

	{ nome = "casal137" , dict = "anim@female_couple_04" , anim = "f_couple_04_clip" , andar = false , loop = true },
	{ nome = "casal138" , dict = "anim@male_couple_04" , anim = "m_couple_04_clip" , andar = false , loop = true },

	{ nome = "casal139" , dict = "anim@female_couple_05" , anim = "f_couple_05_clip" , andar = false , loop = true },
	{ nome = "casal140" , dict = "anim@male_couple_05" , anim = "m_couple_05_clip" , andar = false , loop = true },

	{ nome = "casal141" , dict = "anim@female_couple_06" , anim = "f_couple_06_clip" , andar = false , loop = true },
	{ nome = "casal142" , dict = "anim@male_couple_06" , anim = "m_couple_06_clip" , andar = false , loop = true },

	{ nome = "casal143" , dict = "anim@female_couple_07" , anim = "f_couple_07_clip" , andar = false , loop = true },
	{ nome = "casal144" , dict = "anim@male_couple_07" , anim = "m_couple_07_clip" , andar = false , loop = true },

	{ nome = "casal145" , dict = "mx@pack4.1_a" , anim = "mx@pack4.1_a_clip" , andar = false , loop = true },
	{ nome = "casal146" , dict = "mx@pack4.1_b" , anim = "mx@pack4.1_b_clip" , andar = false , loop = true },

	{ nome = "casal147" , dict = "mx@couple4.2_a" , anim = "mx@couple4.2_a_clip" , andar = false , loop = true },
	{ nome = "casal148" , dict = "mx@couple4.2_b" , anim = "mx@couple4.2_b_clip" , andar = false , loop = true },

	{ nome = "casal149" , dict = "mx@couple4.3_a" , anim = "mx@couple4.3_a_clip" , andar = false , loop = true },
	{ nome = "casal150" , dict = "mx@couple4.3_b" , anim = "mx@couple4.3_b_clip" , andar = false , loop = true },

	{ nome = "casal151" , dict = "mx@couple4.4_a" , anim = "mx@couple4.4_a_clip" , andar = false , loop = true },
	{ nome = "casal152" , dict = "mx@couple4.4_b" , anim = "mx@couple4.4_b_clip" , andar = false , loop = true },

	{ nome = "casal153" , dict = "mx@couple4.5_a" , anim = "mx@couple4.5_a_clip" , andar = false , loop = true },
	{ nome = "casal154" , dict = "mx@couple4.5_b" , anim = "mx@couple4.5_b_clip" , andar = false , loop = true },

	{ nome = "casal155" , dict = "EnchantedBrwny@wedding1b" , anim = "wedding1b" , andar = false , loop = true },
	{ nome = "casal156" , dict = "EnchantedBrwny@wedding1a" , anim = "wedding1a" , andar = false , loop = true },

	{ nome = "casal157" , dict = "EnchantedBrwny@wedding2a" , anim = "wedding2a" , andar = false , loop = true },
	{ nome = "casal158" , dict = "EnchantedBrwny@wedding2b" , anim = "wedding2b" , andar = false , loop = true },

	{ nome = "casal159" , dict = "EnchantedBrwny@wedding3a" , anim = "wedding3a" , andar = false , loop = true },
	{ nome = "casal160" , dict = "EnchantedBrwny@wedding3b" , anim = "wedding3b" , andar = false , loop = true },

	{ nome = "casal161" , dict = "banner_01@sharror" , anim = "banner_01_clip" , andar = false , loop = true },
	{ nome = "casal162" , dict = "banner_02@sharror" , anim = "banner_02_clip" , andar = false , loop = true },

	{ nome = "casal163" , dict = "baddies1a@sharror" , anim = "baddies1a_clip" , andar = false , loop = true },
	{ nome = "casal164" , dict = "baddies1b@sharror" , anim = "baddies1b_clip" , andar = false , loop = true },

	{ nome = "casal165" , dict = "bestie2@shadow" , anim = "right" , andar = false , loop = true },
	{ nome = "casal166" , dict = "bestie1@shadow" , anim = "left" , andar = false , loop = true },

	{ nome = "casal167" , dict = "besti_01@sharror" , anim = "besti_01_clip" , andar = false , loop = true },
	{ nome = "casal168" , dict = "besti_02@sharror" , anim = "besti_02_clip" , andar = false , loop = true },

	{ nome = "casal169" , dict = "brotherpose2@joker" , anim = "brotherpose2" , andar = false , loop = true },
	{ nome = "casal170" , dict = "brotherpose3@joker" , anim = "brotherpose3" , andar = false , loop = true },

	{ nome = "casal171" , dict = "chocoholic@couple45" , anim = "couple45_clip" , andar = false , loop = true },
	{ nome = "casal172" , dict = "chocoholic@couple46" , anim = "couple46_clip" , andar = false , loop = true },

	{ nome = "casal173" , dict = "chocoholic@couple1" , anim = "couple#1_clip" , andar = false , loop = true },
	{ nome = "casal174" , dict = "chocoholic@couple2" , anim = "couple#2_clip" , andar = false , loop = true },

	{ nome = "casal175" , dict = "chocoholic@couple3" , anim = "couple#3_clip" , andar = false , loop = true },
	{ nome = "casal176" , dict = "chocoholic@couple4" , anim = "couple#4_clip" , andar = false , loop = true },

	{ nome = "casal177" , dict = "chocoholic@couple5" , anim = "couple#5_clip" , andar = false , loop = true },
	{ nome = "casal178" , dict = "chocoholic@couple6" , anim = "couple#6_clip" , andar = false , loop = true },

	{ nome = "casal179" , dict = "chocoholic@couple7" , anim = "couple#7_clip" , andar = false , loop = true },
	{ nome = "casal180" , dict = "chocoholic@couple8" , anim = "couple#8_clip" , andar = false , loop = true },

	{ nome = "casal181" , dict = "chocoholic@couple9" , anim = "couple#9_clip" , andar = false , loop = true },
	{ nome = "casal182" , dict = "chocoholic@couple10" , anim = "couple#10_clip" , andar = false , loop = true },

	{ nome = "casal183" , dict = "chocoholic@couple11" , anim = "couple#11_clip" , andar = false , loop = true },
	{ nome = "casal184" , dict = "chocoholic@couple12" , anim = "couple#12_clip" , andar = false , loop = true },

	{ nome = "casal185" , dict = "chocoholic@couple13" , anim = "couple#13_clip" , andar = false , loop = true },
	{ nome = "casal186" , dict = "chocoholic@couple14" , anim = "couple#14_clip" , andar = false , loop = true },

	{ nome = "casal187" , dict = "chocoholic@couple15" , anim = "couple#15_clip" , andar = false , loop = true },
	{ nome = "casal188" , dict = "chocoholic@couple16" , anim = "couple#16_clip" , andar = false , loop = true },

	{ nome = "casal189" , dict = "chocoholic@couple17" , anim = "couple#17_clip" , andar = false , loop = true },
	{ nome = "casal190" , dict = "chocoholic@couple18" , anim = "couple#18_clip" , andar = false , loop = true },

	{ nome = "casal191" , dict = "chocoholic@couple19" , anim = "couple#19_clip" , andar = false , loop = true },
	{ nome = "casal192" , dict = "chocoholic@couple20" , anim = "couple#20_clip" , andar = false , loop = true },

	{ nome = "casal193" , dict = "chocoholic@couple21" , anim = "couple#21_clip" , andar = false , loop = true },
	{ nome = "casal194" , dict = "chocoholic@couple22" , anim = "couple#22_clip" , andar = false , loop = true },

	{ nome = "casal195" , dict = "chocoholic@couple23" , anim = "couple#23_clip" , andar = false , loop = true },
	{ nome = "casal196" , dict = "chocoholic@couple24" , anim = "couple#24_clip" , andar = false , loop = true },

	{ nome = "casal197" , dict = "chocoholic@couple25" , anim = "couple#25_clip" , andar = false , loop = true },
	{ nome = "casal198" , dict = "chocoholic@couple26" , anim = "couple#26_clip" , andar = false , loop = true },

	{ nome = "casal199" , dict = "chocoholic@couple27" , anim = "couple#27_clip" , andar = false , loop = true },
	{ nome = "casal200" , dict = "chocoholic@couple28" , anim = "couple#28_clip" , andar = false , loop = true },

	{ nome = "casal201" , dict = "chocoholic@couple29" , anim = "couple#29_clip" , andar = false , loop = true },
	{ nome = "casal202" , dict = "chocoholic@couple30" , anim = "couple#30_clip" , andar = false , loop = true },

	{ nome = "casal203" , dict = "chocoholic@couple31" , anim = "couple#31_clip" , andar = false , loop = true },
	{ nome = "casal204" , dict = "chocoholic@couple32" , anim = "couple#32_clip" , andar = false , loop = true },

	{ nome = "casal205" , dict = "chocoholic@couple33" , anim = "couple#33_clip" , andar = false , loop = true },
	{ nome = "casal206" , dict = "chocoholic@couple34" , anim = "couple#34_clip" , andar = false , loop = true },

	{ nome = "casal207" , dict = "f_valentine@d3vilros3" , anim = "f_valentine_clip" , andar = false , loop = true },
	{ nome = "casal208" , dict = "m_valentine@d3vilros3" , anim = "m_valentine_clip" , andar = false , loop = true },

	{ nome = "casal209" , dict = "chocoholic@couple35" , anim = "couple#35_clip" , andar = false , loop = true },
	{ nome = "casal210" , dict = "chocoholic@couple36" , anim = "couple#36_clip" , andar = false , loop = true },

	{ nome = "casal211" , dict = "chocoholic@couple39" , anim = "couple#39_clip" , andar = false , loop = true },
	{ nome = "casal212" , dict = "chocoholic@couple40" , anim = "couple#40_clip" , andar = false , loop = true },

	{ nome = "casal213" , dict = "chocoholic@couple41" , anim = "couple#41_clip" , andar = false , loop = true },
	{ nome = "casal214" , dict = "chocoholic@couple42" , anim = "couple#42_clip" , andar = false , loop = true },

	{ nome = "casal215" , dict = "chocoholic@couple43" , anim = "couple#43_clip" , andar = false , loop = true },
	{ nome = "casal216" , dict = "chocoholic@couple44" , anim = "couple#44_clip" , andar = false , loop = true },

	{ nome = "casal217" , dict = "chocoholic@couple47_v3" , anim = "couple47_v3_clip" , andar = false , loop = true },
	{ nome = "casal218" , dict = "chocoholic@couple48_v3" , anim = "couple48_v3_clip" , andar = false , loop = true },

	{ nome = "casal219" , dict = "chocoholic@couple49" , anim = "couple49_clip" , andar = false , loop = true },
	{ nome = "casal220" , dict = "chocoholic@couple50" , anim = "couple50_clip" , andar = false , loop = true },

	{ nome = "casal221" , dict = "chocoholic@couple53" , anim = "couple53_clip" , andar = false , loop = true },
	{ nome = "casal222" , dict = "chocoholic@couple54" , anim = "couple54_clip" , andar = false , loop = true },

	{ nome = "casal223" , dict = "chocoholic@couple55" , anim = "couple55_clip" , andar = false , loop = true },
	{ nome = "casal224" , dict = "chocoholic@couple56" , anim = "couple56_clip" , andar = false , loop = true },

	{ nome = "casal225" , dict = "chocoholic@couple57" , anim = "couple57_clip" , andar = false , loop = true },
	{ nome = "casal226" , dict = "chocoholic@couple58" , anim = "couple58_clip" , andar = false , loop = true },

	{ nome = "casal227" , dict = "chocoholic@couple59" , anim = "couple59_clip" , andar = false , loop = true },
	{ nome = "casal228" , dict = "chocoholic@couple60" , anim = "couple60_clip" , andar = false , loop = true },

	{ nome = "casal229" , dict = "chocoholic@couple61" , anim = "couple61_clip" , andar = false , loop = true },
	{ nome = "casal230" , dict = "chocoholic@couple62" , anim = "couple62_clip" , andar = false , loop = true },

	{ nome = "casal231" , dict = "chocoholic@couple63" , anim = "couple63_clip" , andar = false , loop = true },
	{ nome = "casal232" , dict = "chocoholic@couple64" , anim = "couple64_clip" , andar = false , loop = true },

	{ nome = "casal233" , dict = "chocoholic@couple65" , anim = "couple65_clip" , andar = false , loop = true },
	{ nome = "casal234" , dict = "chocoholic@couple66" , anim = "couple66_clip" , andar = false , loop = true },

	{ nome = "casal235" , dict = "chocoholic@duo1" , anim = "duo#1_clip" , andar = false , loop = true },
	{ nome = "casal236" , dict = "chocoholic@duo2" , anim = "duo#2_clip" , andar = false , loop = true },

	{ nome = "casal237" , dict = "chocoholic@duo9" , anim = "duo#9_clip" , andar = false , loop = true },
	{ nome = "casal238" , dict = "chocoholic@duo10" , anim = "duo#10_clip" , andar = false , loop = true },

	{ nome = "casal239" , dict = "chocoholic@duo13" , anim = "duo#13_clip" , andar = false , loop = true },
	{ nome = "casal240" , dict = "chocoholic@duo14" , anim = "duo#14_clip" , andar = false , loop = true },

	{ nome = "casal241" , dict = "chocoholic@duo21" , anim = "duo#21_clip" , andar = false , loop = true },
	{ nome = "casal242" , dict = "chocoholic@duo22" , anim = "duo#22_clip" , andar = false , loop = true },

	{ nome = "casal243" , dict = "chocoholic@duo35" , anim = "duo35_clip" , andar = false , loop = true },
	{ nome = "casal244" , dict = "chocoholic@duo36" , anim = "duo36_clip" , andar = false , loop = true },

	{ nome = "casal245" , dict = "chocoholic@duo39" , anim = "duo39_clip" , andar = false , loop = true },
	{ nome = "casal246" , dict = "chocoholic@duo40" , anim = "duo40_clip" , andar = false , loop = true },

	{ nome = "casal247" , dict = "chocoholic@duo41" , anim = "duo41_clip" , andar = false , loop = true },
	{ nome = "casal248" , dict = "chocoholic@duo42" , anim = "duo42_clip" , andar = false , loop = true },

	{ nome = "casal249" , dict = "chocoholic@duo43" , anim = "duo43_clip" , andar = false , loop = true },
	{ nome = "casal250" , dict = "chocoholic@duo44" , anim = "duo44_clip" , andar = false , loop = true },

	{ nome = "casal251" , dict = "chocoholic@single10" , anim = "single#10_clip" , andar = false , loop = true },
	{ nome = "casal252" , dict = "chocoholic@single11" , anim = "single#11_clip" , andar = false , loop = true },

	{ nome = "casal253" , dict = "chocoholic@single31" , anim = "single#31_clip" , andar = false , loop = true },
	{ nome = "casal254" , dict = "chocoholic@single32" , anim = "single#32_clip" , andar = false , loop = true },

	{ nome = "casal255" , dict = "chocoholic@single33" , anim = "single#33_clip" , andar = false , loop = true },
	{ nome = "casal256" , dict = "chocoholic@single34" , anim = "single#34_clip" , andar = false , loop = true },

	{ nome = "casal257" , dict = "chocoholic@wintercouple1" , anim = "wintercouple#1_clip" , andar = false , loop = true },
	{ nome = "casal258" , dict = "chocoholic@wintercouple2" , anim = "wintercouple#2_clip" , andar = false , loop = true },

	{ nome = "casal259" , dict = "f_cigar01@d3vilros3" , anim = "f_cigar01_clip" , andar = false , loop = true },
	{ nome = "casal260" , dict = "m_cigar01@d3vilros3" , anim = "m_cigar01_clip" , andar = false , loop = true },

	{ nome = "casal261" , dict = "f_cigar02@d3vilros3" , anim = "f_cigar02_clip" , andar = false , loop = true },
	{ nome = "casal262" , dict = "m_cigar02@d3vilros3" , anim = "m_cigar02_clip" , andar = false , loop = true },

	{ nome = "casal263" , dict = "f_engagement@d3vilros3" , anim = "f_engagement_clip" , andar = false , loop = true },
	{ nome = "casal264" , dict = "m_engagement@d3vilros3" , anim = "m_engagement_clip" , andar = false , loop = true },

	{ nome = "casal265" , dict = "couple_wall_01@sharror" , anim = "couple_wall_01_clip" , andar = false , loop = true },
	{ nome = "casal266" , dict = "couple_wall_02@sharror" , anim = "couple_wall_02_clip" , andar = false , loop = true },

	{ nome = "casal267" , dict = "couplebench_f@gengaranimation" , anim = "couplebench_f_clip" , andar = false , loop = true },
	{ nome = "casal268" , dict = "couplebench_m@gengaranimation" , anim = "couplebench_m_clip" , andar = false , loop = true },

	{ nome = "casal269" , dict = "femalehandspose2@joker" , anim = "femalehandspose2_clip" , andar = false , loop = true },
	{ nome = "casal270" , dict = "malehandspose1@joker" , anim = "malehandspose1_clip" , andar = false , loop = true },

	{ nome = "casal271" , dict = "coupleleanin@shadow" , anim = "right" , andar = false , loop = true },
	{ nome = "casal272" , dict = "coupleleanin2@shadow" , anim = "left" , andar = false , loop = true },

	{ nome = "casal273" , dict = "couple_hug_f@sharror" , anim = "couple_hug_f_clip" , andar = false , loop = true },
	{ nome = "casal274" , dict = "couple_hug_m@sharror" , anim = "couple_hug_m_clip" , andar = false , loop = true },

	{ nome = "casal275" , dict = "f_passion@d3vilros3" , anim = "f_passion_clip" , andar = false , loop = true },
	{ nome = "casal276" , dict = "m_passion@d3vilros3" , anim = "m_passion_clip" , andar = false , loop = true },

	{ nome = "casal277" , dict = "f_couple_01@sharror" , anim = "f_couple_01" , andar = false , loop = true },
	{ nome = "casal278" , dict = "m_couple_01@sharror" , anim = "m_couple_01" , andar = false , loop = true },

	{ nome = "casal279" , dict = "coworker1@shadow" , anim = "stand" , andar = false , loop = true },
	{ nome = "casal280" , dict = "coworker2@shadow" , anim = "sit" , andar = false , loop = true },

	{ nome = "casal281" , dict = "cringef@shadow" , anim = "female" , andar = false , loop = true },
	{ nome = "casal282" , dict = "cringem@shadow" , anim = "male" , andar = false , loop = true },

	{ nome = "casal283" , dict = "cuddle_f_1@sharror" , anim = "cuddle_f_1_clip" , andar = false , loop = true },
	{ nome = "casal284" , dict = "cuddle_m_1@sharror" , anim = "cuddle_m_1_clip" , andar = false , loop = true },

	{ nome = "casal285" , dict = "cute_f_1@sharror" , anim = "cute_f_1_clip" , andar = false , loop = true },
	{ nome = "casal286" , dict = "cute_m_1@sharror" , anim = "cute_m_1_clip" , andar = false , loop = true },

	{ nome = "casal287" , dict = "otto_01@sharror" , anim = "otto_01_clip" , andar = false , loop = true },
	{ nome = "casal288" , dict = "otto_02@sharror" , anim = "otto_02_clip" , andar = false , loop = true },

	{ nome = "casal289" , dict = "duo1@ierrorr" , anim = "duo1_clip" , andar = false , loop = true },
	{ nome = "casal290" , dict = "duo2@ierrorr" , anim = "duo2_clip" , andar = false , loop = true },

	{ nome = "casal291" , dict = "wand_pose_01@sharror" , anim = "wand_pose_01_clip" , andar = false , loop = true },
	{ nome = "casal292" , dict = "wand_pose_02@sharror" , anim = "wand_pose_02_clip" , andar = false , loop = true },

	{ nome = "casal293" , dict = "female_1@sharorr" , anim = "female_1_clip" , andar = false , loop = true },
	{ nome = "casal294" , dict = "male_1@sharorr" , anim = "male_1_clip" , andar = false , loop = true },

	{ nome = "casal295" , dict = "foreverpose@shadow" , anim = "right" , andar = false , loop = true },
	{ nome = "casal296" , dict = "foreverpose2@shadow" , anim = "left" , andar = false , loop = true },

	{ nome = "casal297" , dict = "friendspose@joker" , anim = "friendspose" , andar = false , loop = true },
	{ nome = "casal298" , dict = "friendspose2@joker" , anim = "friendspose2" , andar = false , loop = true },

	{ nome = "casal299" , dict = "handsupright@d3vilros3" , anim = "handsupright_clip" , andar = false , loop = true },
	{ nome = "casal300" , dict = "handsupleft@d3vilros3" , anim = "handsupleft_clip" , andar = false , loop = true },

	{ nome = "casal301" , dict = "bat_harley@d3vilros3" , anim = "bat_harley_clip" , andar = false , loop = true },
	{ nome = "casal302" , dict = "bat_joker@d3vilros3" , anim = "bat_joker_clip" , andar = false , loop = true },

	{ nome = "casal303" , dict = "holdassmale@joker" , anim = "holdassmale" , andar = false , loop = true },
	{ nome = "casal304" , dict = "holdassfemale@joker" , anim = "holdassfemale" , andar = false , loop = true },

	{ nome = "casal305" , dict = "hops_f_01@sharror" , anim = "hops_f_01_clip" , andar = false , loop = true },
	{ nome = "casal306" , dict = "hops_m_01@sharror" , anim = "hops_m_01_clip" , andar = false , loop = true },

	{ nome = "casal307" , dict = "jord_male_1@ierrorr" , anim = "jord_male_1_clip" , andar = false , loop = true },
	{ nome = "casal308" , dict = "jord_female_2@ierrorr" , anim = "jord_female_2_clip" , andar = false , loop = true },

	{ nome = "casal309" , dict = "f_last@sharror" , anim = "f_last_ierrorr" , andar = false , loop = true },
	{ nome = "casal310" , dict = "m_last@sharror" , anim = "m_last_ierrorr" , andar = false , loop = true },

	{ nome = "casal311" , dict = "f_marry_01@sharror" , anim = "f_marry_01_ierrorr" , andar = false , loop = true },
	{ nome = "casal312" , dict = "m_marry_01@sharror" , anim = "m_marry_01_ierrorr" , andar = false , loop = true },

	{ nome = "casal313" , dict = "f_couple_car@sharror" , anim = "f_couple_car" , andar = false , loop = true },
	{ nome = "casal314" , dict = "m_couple_car@sharror" , anim = "m_couple_car" , andar = false , loop = true },

	{ nome = "casal315" , dict = "f_couple_d3vilros3@sharror" , anim = "f_couple_d3vilros3_ierrorr" , andar = false , loop = true },
	{ nome = "casal316" , dict = "m_couple_d3vilros3@sharror" , anim = "m_couple_d3vilros3_ierrorr" , andar = false , loop = true },

	{ nome = "casal317" , dict = "f_couple_myu@sharror" , anim = "f_couple_myu" , andar = false , loop = true },
	{ nome = "casal318" , dict = "m_couple_myu@sharror" , anim = "m_couple_myu" , andar = false , loop = true },

	{ nome = "casal319" , dict = "f_hold_gun01@sharror" , anim = "f_hold_gun01_ierrorr" , andar = false , loop = true },
	{ nome = "casal320" , dict = "m_hold_gun01@sharror" , anim = "m_hold_gun01_ierrorr" , andar = false , loop = true },

	{ nome = "casal321" , dict = "f_stand_and_hold@sharror" , anim = "f_stand_and_hold" , andar = false , loop = true },
	{ nome = "casal322" , dict = "m_press_on_the_ass@sharror" , anim = "m_press_on_the_ass" , andar = false , loop = true },

	{ nome = "casal323" , dict = "f_sit_ground@sharror" , anim = "f_sit_ground" , andar = false , loop = true },
	{ nome = "casal324" , dict = "m_sit_ground@sharror" , anim = "m_sit_ground" , andar = false , loop = true },

	{ nome = "casal325" , dict = "f_sit_g01@sharror" , anim = "f_sit_g01_ierrorr" , andar = false , loop = true },
	{ nome = "casal326" , dict = "m_sit_g01@sharror" , anim = "m_sit_g01_ierrorr" , andar = false , loop = true },

	{ nome = "casal327" , dict = "pos_f_1@sharror" , anim = "pos_f_1_clip" , andar = false , loop = true },
	{ nome = "casal328" , dict = "pos_m_1@sharror" , anim = "pos_m_1_clip" , andar = false , loop = true },


	{ nome = "abracocintura" , dict = "misscarsteal2chad_goodbye" , anim = "chad_armsaround_chad" , andar = false , loop = true },
    { nome = "abracocintura2" , dict = "misscarsteal2chad_goodbye" , anim = "chad_armsaround_chad" , andar = true , loop = true },

    { nome = "abracoombro" , dict = "misscarsteal2chad_goodbye" , anim = "chad_armsaround_girl" , andar = false , loop = true },
    { nome = "abracoombro2" , dict = "misscarsteal2chad_goodbye" , anim = "chad_armsaround_girl" , andar = true , loop = true },

	-- ##### fotos #####

	{ nome = 'foto' , dict = 'amb@lo_res_idles@' , anim ='world_human_lean_male_hands_together_lo_res_base' , andar = false , loop = true },
	{ nome = 'foto1' , dict = 'amb@code_human_cross_road@female@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto2' , dict = 'amb@code_human_in_car_mp_actions@tit_squeeze@bodhi@rps@base' , anim ='idle_a' , andar = false , loop = true },
	{ nome = 'foto3' , dict = 'amb@world_human_hang_out_street@female_arm_side@enter' , anim ='enter' , andar = false , loop = true },
	{ nome = 'foto4' , dict = 'amb@world_human_hang_out_street@female_arm_side@idle_a' , anim ='idle_b' , andar = false , loop = true },
	{ nome = 'foto5' , dict = 'amb@world_human_hang_out_street@female_arms_crossed@idle_a' , anim ='idle_b' , andar = false , loop = true },
	{ nome = 'foto6' , dict = 'friends@' , anim ='pickupwait' , andar = false , loop = true },
	{ nome = 'foto7' , dict = 'mini@hookers_sp' , anim ='idle_reject_loop_a' , andar = false , loop = true },
	{ nome = 'foto8' , dict = 'misscarsteal2' , anim ='sweep_high' , andar = false , loop = true },
	{ nome = 'foto9' , dict = 'missheist_agency3aig_23' , anim ='urinal_base' , andar = false , loop = true },
	{ nome = 'foto10' , dict = 'misstrevor2ron_basic_moves' , anim ='idle' , andar = false , loop = true },
	{ nome = 'foto11' , dict = 'oddjobs@basejump@' , anim ='ped_a_loop' , andar = false , loop = true },
	{ nome = 'foto12' , dict = 'rcmjosh1' , anim ='idle' , andar = false , loop = true },
	{ nome = 'foto13' , dict = 'switch@franklin@plays_w_dog' , anim ='001916_01_fras_v2_9_plays_w_dog_idle' , andar = false , loop = true },
	{ nome = 'foto14' , dict = 'timetable@amanda@ig_9' , anim ='ig_9_base_amanda' , andar = false , loop = true },
	{ nome = 'foto15' , dict = 'misscommon@response' , anim ='bring_it_on' , andar = false , loop = true },
	{ nome = 'foto16' , dict = 'cover@first_person@move@base@core' , anim ='low_idle_l_facecover' , andar = false , loop = true },
	{ nome = 'foto17' , dict = 'cover@weapon@core' , anim ='idle_turn_stop' , andar = false , loop = true },
	{ nome = 'foto18' , dict = 'anim@amb@casino@hangout@ped_female@stand@02b@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto19' , dict = 'anim@amb@casino@hangout@ped_male@stand@01a@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto20' , dict = 'anim@amb@casino@out_of_money@ped_male@01b@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto21' , dict = 'anim@amb@casino@shop@ped_female@01a@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto22' , dict = 'anim@mp_corona_idles@female_c@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto23' , dict = 'anim@random@shop_clothes@watches' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto24' , dict = 'iaa_int-11' , anim ='csb_avon_dual-11' , andar = false , loop = true },
	{ nome = 'foto25' , dict = 'mini@strip_club@lap_dance@ld_girl_a_approach' , anim ='ld_girl_a_approach_f' , andar = false , loop = true },
    { nome = 'foto26' , dict = 'amb@code_human_in_car_mp_actions@rock@bodhi@rps@base' , anim ='idle_a' , andar = false , loop = true },
	{ nome = 'foto27' , dict = 'mini@hookers_spcrackhead' , anim ='idle_reject_loop_c' , andar = false , loop = true },
	{ nome = 'foto28' , dict = 'anim@mp_player_intupperfinger' , anim ='idle_a' , andar = false , loop = true },
	{ nome = 'foto29' , dict = 'switch@franklin@lamar_tagging_wall' , anim ='lamar_tagging_wall_loop_franklin' , andar = false , loop = true },
	{ nome = 'foto30' , dict = 'mp_move@prostitute@m@cokehead' , anim ='idle' , andar = false , loop = true },
	{ nome = 'foto31' , dict = 'anim@amb@casino@valet_scenario@pose_c@' , anim ='base_a_m_y_vinewood_01' , andar = false , loop = true },
	{ nome = 'foto32' , dict = 'anim@amb@casino@valet_scenario@pose_d@' , anim ='look_ahead_l_a_m_y_vinewood_01' , andar = false , loop = true },
	{ nome = 'foto33' , dict = 'anim@special_peds@casino@beth@wheel@' , anim ='action10_beth' , andar = false , loop = true },
	{ nome = 'foto34' , dict = 'anim@special_peds@casino@beth@wheel@' , anim ='action2_beth' , andar = false , loop = true },
	{ nome = 'foto35' , dict = 'anim@mp_player_intcelebrationfemale@v_sign' , anim ='v_sign' , andar = false , loop = true },
	{ nome = 'foto36' , dict = 'mini@strip_club@idles@stripper' , anim ='stripper_idle_03' , andar = false , loop = true },
	{ nome = 'foto37' , dict = 'mini@strip_club@idles@stripper' , anim ='stripper_idle_04' , andar = false , loop = true },
	{ nome = 'foto38' , dict = 'anim_heist@arcade@fortune@female@' , anim ='reaction_pondering' , andar = false , loop = true },
	{ nome = 'foto39' , dict = 'anim@mp_player_intcelebrationfemale@peace' , anim ='peace' , andar = false , loop = true },
	{ nome = 'foto40' , dict = 'missfbi3_party_d' , anim ='stand_talk_loop_b_female' , andar = false , loop = true },
	{ nome = 'foto41' , dict = 'armenian_1_int-44' , anim ='a_m_y_musclbeac_01^1_dual-44' , andar = false , loop = true },
	{ nome = 'foto42' , dict = 'mp_clothing@female@trousers' , anim ='try_trousers_positive_a' , andar = false , loop = true },
	{ nome = 'foto43' , dict = 'silj_ext-19' , anim ='mp_m_freemode_01^3_dual-19' , andar = false , loop = true },
	{ nome = 'foto44' , dict = 'sdrm_mcs_2-0' , anim ='ig_bestmen^1-0' , andar = false , loop = true },
	{ nome = 'foto45' , dict = 'anim_heist@arcade_combined@' , anim ='ped_female@_stand@_02a@_idles_convo_idle_c' , andar = false , loop = true },
	{ nome = 'foto46' , dict = 'anim@arena@celeb@flat@solo@no_props@' , anim ='thumbs_down_a_player_a' , andar = false , loop = true },
	{ nome = 'foto47' , dict = 'guard_reactions' , anim ='1hand_aiming_cycle' , andar = false , loop = true },
	{ nome = 'foto48' , dict = 'anim@move_f@waitress' , anim ='idle' , andar = false , loop = true },
	{ nome = 'foto49' , dict = 'anim_heist@arcade_combined@' , anim ='ped_female@_stand_withdrink@_01b@_base_base' , andar = false , loop = true },
	{ nome = 'foto50' , dict = 'amb@lo_res_idles@' , anim ='world_human_security_shine_torch_lo_res_base' , andar = false , loop = true },
	{ nome = 'foto51' , dict = 'rcmjosh2' , anim ='stand_lean_back_beckon_a' , andar = false , loop = true },
    { nome = 'foto52' , dict = 'rcmjosh2' , anim ='stand_lean_back_beckon_b' , andar = false , loop = true },
	{ nome = 'foto53' , dict = 'pro_mcs_7_concat-1' , anim ='cs_priest_dual-1' , andar = false , loop = true },
	{ nome = 'foto54' , dict = 'clothingshirt' , anim ='try_shirt_base' , andar = false , loop = true },
	{ nome = 'foto55' , dict = 'special_ped@pamela@trevor_1@trevor_1a' , anim ='pamela_convo_trevor_im_trying_to_get_noticed_0' , andar = false , loop = true },
    { nome = 'foto56' , dict = 'special_ped@impotent_rage@intro' , anim ='idle_intro' , andar = false , loop = true },
	{ nome = 'foto57' , dict = 'random@escape_paparazzi@standing@' , anim ='idle' , andar = false , loop = true },
	{ nome = 'foto58' , dict = 'pro_mcs_7_concat-8' , anim ='player_two_dual-8' , andar = false , loop = true },
	{ nome = 'foto59' , dict = 'anim@heists@ornate_bank@thermal_charge' , anim ='cover_eyes_loop' , andar = false , loop = true },
	{ nome = 'foto60' , dict = 'low_fun_int-7' , anim ='cs_lamardavis_dual-7' , andar = false , loop = true },
    { nome = 'foto61' , dict = 'tale_intro-12' , anim ='a_f_y_genhot_01^2_dual-12' , andar = false , loop = true },
	{ nome = 'foto62' , dict = 'amb@code_human_police_investigate@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto63' , dict = 'anim@mp_player_intincarpeacebodhi@ds@' , anim ='enter' , andar = false , loop = true },
	{ nome = 'foto64' , dict = 'anim@mp_corona_idles@female_c@idle_a' , anim ='idle_a' , andar = false , loop = true },
	{ nome = 'foto65' , dict = 'anim@miss@low@fin@vagos@' , anim ='idle_ped07' , andar = false , loop = true },
	{ nome = 'foto66' , dict = 'oddjobs@assassinate@multi@' , anim ='idle_a_pros' , andar = false , loop = true },
	{ nome = 'foto67' , dict = 'timetable@jimmy@ig_5@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto68' , dict = 'rcmnigel1bnmt_1b' , anim ='base_tyler' , andar = false , loop = true },
	{ nome = 'foto69' , dict = 'mp_fm_intro_cut' , anim ='world_human_standing_male_01_idle_03' , andar = false , loop = true },
	{ nome = 'foto70' , dict = 'mic_4_int-0' , anim ='a_f_y_bevhills_04-0' , andar = false , loop = true },
	{ nome = 'foto71' , dict = 'mic_4_int-0' , anim ='cs_milton_dual-0' , andar = false , loop = true },
	{ nome = 'foto72' , dict = 'cellphone@self@franklin@' , anim ='west_coast' , andar = false , loop = true },
	{ nome = 'foto73' , dict = 'anim@random@shop_clothes@watches' , anim ='idle_d' , andar = false , loop = true },
	{ nome = 'foto74' , dict = 'amb@world_human_muscle_flex@arms_in_front@idle_a' , anim ='idle_b' , andar = false , loop = true },
	{ nome = 'foto75' , dict = 'amb@world_human_prostitute@crackhooker@idle_a' , anim ='idle_c' , andar = false , loop = true },
	{ nome = 'foto76' , dict = 'amb@world_human_prostitute@hooker@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto77' , dict = 'anim@mp_player_intupperfinger' , anim ='idle_a' , andar = false , loop = true },
	{ nome = 'foto78' , dict = 'anim@mp_player_intcelebrationmale@blow_kiss' , anim ='blow_kiss' , andar = false , loop = true },
	{ nome = 'foto79' , dict = 'anim@mp_player_intcelebrationmale@knuckle_crunch' , anim ='knuckle_crunch' , andar = false , loop = true },
	{ nome = 'foto80' , dict = 'anim@mp_player_intupperthumbs_up' , anim ='idle_a_fp' , andar = false , loop = true },
	{ nome = 'foto81' , dict = 'switch@michael@prostitute' , anim ='exit_hooker' , andar = false , loop = true },
	{ nome = 'foto82' , dict = 'mp_player_int_upperbro_love' , anim ='mp_player_int_bro_love_fp' , andar = false , loop = true },
	{ nome = 'foto83' , dict = 'hs3_arc_int-9' , anim ='csb_georginacheng_dual-9' , andar = false , loop = true },
	{ nome = 'foto84' , dict = 'armenian_1_int-0' , anim ='a_f_y_beach_01_dual-0' , andar = false , loop = true },
	{ nome = 'foto85' , dict = 'armenian_1_int-0' , anim ='a_f_y_hipster_02^2-0' , andar = false , loop = true },
	{ nome = 'foto86' , dict = 'armenian_1_int-0' , anim ='a_f_y_tourist_01^2-0' , andar = false , loop = true },
	{ nome = 'foto87' , dict = 'armenian_1_int-0' , anim ='a_m_y_beach_03-0' , andar = false , loop = true },
	{ nome = 'foto88' , dict = 'special_ped@pamela@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto89' , dict = 'mp_fm_intro_cut' , anim ='world_human_standing_male_01_idle_01' , andar = false , loop = true },
	{ nome = 'foto90' , dict = 'amb@world_human_leaning@female@smoke@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto91' , dict = 'amb@world_human_leaning@female@wall@back@hand_up@base' , anim ='base' , andar = false , loop = true },
	{ nome = 'foto92' , dict = 'amb@code_human_cross_road@female@base' , anim = 'base' , andar = false , loop = true },
	{ nome = 'foto93' , dict = 'anim@heists@heist_corona@single_team' , anim = 'single_team_intro_boss' , andar = false , loop = true },
	{ nome = 'foto94' , dict = 'amb@incar@male@smoking@idle_a' , anim = 'idle_b' , andar = false , loop = true },
	{ nome = 'foto95' , anim = 'idle_a' , dict  = 'anim@amb@casino@hangout@ped_male@stand@02b@idles' , andar = false , loop = true },
	{ nome = 'foto96' , anim = 'rub_neck_a_m_y_vinewood_01' , dict  = 'anim@amb@casino@valet_scenario@pose_c@' , andar = false , loop = true },
	{ nome = 'foto97' , dict = 'anim@mp_player_intuppershush' , anim = 'idle_a_fp' , andar = false , loop = true },
	{ nome = 'foto98' , anim = '_car_a_flirt_girl' , dict  = 'random@street_race' , andar = false , loop = true },
	{ nome = 'foto99' , dict = 'misshair_shop@barbers' , anim = 'keeper_base' , andar = false , loop = true },
	{ nome = 'foto100' , dict = 'cellphone@self@franklin@' , anim = 'chest_bump' , andar = false , loop = true },
    { nome = 'foto101' , dict = 'amb@world_human_leaning@male@wall@back@foot_up@aggro_react' , anim = 'aggro_react_forward_enter', andar = false , loop = true },
    { nome = 'foto102' , dict = 'martin_1_int-0' , anim = 'cs_patricia_dual-0' , andar = false , loop = true },
    { nome = 'foto103' , dict = 'mini@strip_club@lap_dance_2g@ld_2g_decline' , anim = 'ld_2g_decline_h_s2' , andar = false , loop = true },
    { nome = 'foto104' , anim = 'stripper_idle_03' , dict  = 'mini@strip_club@idles@stripper' , andar = false , loop = true },
    { nome = 'foto105' , dict = 'amb@world_human_binoculars@male@base' , anim ='base' , andar = false , loop = true },
    { nome = 'foto106' , dict = 'amb@world_human_tourist_mobile@male@base' , anim ='base' , andar = false , loop = true },
    { nome = 'foto107' , dict = 'anim@amb@board_room@whiteboard@' , anim ='read_03_amy_skater_01' , andar = false , loop = true },
    { nome = 'foto108' , dict = 'anim@heists@team_respawn@variations@variation_b_rot' , anim ='respawn_b_ped_c' , andar = false , loop = true },
	{ nome = 'foto109' , anim = 'idle_d' , dict  = 'anim@amb@casino@hangout@ped_female@stand@01a@idles' , andar = false , loop = true },
	{ nome = 'foto110' , dict = 'amb@world_human_stand_guard@male@idle_a' , anim = 'idle_a' , andar = false , loop = true },
	{ nome = 'foto111' , dict = 'amb@world_human_tourist_mobile@male@base' , anim = 'base' , andar = false , loop = true },
	{ nome = 'foto112' , dict = 'switch@michael@pharmacy' , anim = 'mics1_ig_11_loop' , andar = false , loop = true },
	{ nome = 'foto113' , dict = 'weapons@first_person@aim_idle@p_m_one@unarmed@fidgets@c' , anim = 'fidget_low_loop' , andar = false , loop = true },
	{ nome = 'foto114' , dict = 'armenian_1_int-0' , anim = 'player_one_dual-0' , andar = false , loop = true },
	{ nome = 'foto115' , dict = 'amb@world_human_bum_wash@male@low@idle_a' , anim = 'idle_a' , andar = false , loop = true },
	{ nome = 'foto116' , dict = 'anim@amb@casino@hangout@ped_male@stand_withdrink@01b@base' , anim = 'base' , andar = false , loop = true },
	{ nome = 'foto117' , dict = 'anim@move_m@trash_rc' , anim = 'aim_high_loop' , andar = false , loop = true },
	{ nome = 'foto118' , dict = 'martin_1_int-10' , anim = 'cs_patricia_dual-10' , andar = false , loop = true },
	{ nome = 'foto119' , dict = 'club_open-30' , anim = 'ig_djsolmanager_dual-30' , andar = false , loop = true },
	{ nome = 'foto120' , dict= 'anim_heist@arcade_combined@' , anim = 'ped_female@_stand@_02a@_idles_convo_idle_d' , andar = false , loop = true },
	{ nome = 'foto121' , dict= 'amb@code_human_police_investigate@base' , anim = 'base' , andar = false , loop = true },
	{ nome = 'foto122' , dict= 'amb@world_human_golf_player@male@base' , anim = 'base' , andar = false , loop = true },
	{ nome = 'foto123' , dict= 'rcmnigel1a' , anim = 'base' , andar = false , loop = true },
	{ nome = 'foto124' , dict= 'timetable@ron@ig_1' , anim = 'ig_1_base' , andar = false , loop = true },
	{ nome = 'foto125' , dict= 'anim@amb@code_human_in_car_idles@arm@generic@ds@idle_j' , anim = 'idle_lowdoor' , andar = false , loop = true },
	{ nome = 'foto126' , dict= 'club_open-0' , anim = 'cs_lazlow_2_dual-0' , andar = false , loop = true },
	{ nome = 'foto127' , dict= 'armenian_1_int-33' , anim = 'a_m_y_runner_01-33' , andar = false , loop = true },
	{ nome = 'foto128' , dict= 'armenian_1_int-33' , anim = 'ig_lamardavis_dual-33' , andar = false , loop = true },
	{ nome = 'foto129' , dict= 'armenian_1_int-3' , anim = 'a_f_y_fitness_02^5-3' , andar = false , loop = true },
	{ nome = 'foto130' , dict= 'bffcasualpose1@animation' , anim = 'bffcasualpose1_clip' , andar = false , loop = true },
	{ nome = 'foto131' , dict= 'bffcasualpose2@animation' , anim = 'bffcasualpose2_clip' , andar = false , loop = true },
	{ nome = 'foto132' , dict= 'bffhandhold1@animation' , anim = 'bffhandhold1_clip' , andar = false , loop = true },
	{ nome = 'foto133' , dict= 'bffhandhold2@animation' , anim = 'bffhandhold1_clip' , andar = false , loop = true },
	{ nome = 'foto134' , dict= 'mirrorselfie1@animation' , anim = 'mirrorselfie1_clip' , andar = false , loop = true },
	{ nome = 'foto135' , dict= 'mirrorselfie2@animation' , anim = 'mirrorselfie2_clip' , andar = false , loop = true },
	{ nome = 'foto136' , dict= 'mirrorselfie3@animation' , anim = 'mirrorselfie3_clip' , andar = false , loop = true },
	{ nome = 'foto137' , dict= 'mirrorselfie4@animation' , anim = 'mirrorselfie4_clip' , andar = false , loop = true },
	{ nome = 'foto138' , dict= 'mirrorselfie5@animation' , anim = 'mirrorselfie5_clip' , andar = false , loop = true },
	{ nome = 'foto139' , dict= 'barbiepose@1' , anim = 'barbie1' , andar = false , loop = true },
	{ nome = 'foto140' , dict= 'barbiepose@w4' , anim = 'barbie4' , andar = false , loop = true },
	{ nome = 'foto141' , dict= 'barbiepose@w5' , anim = 'barbie5' , andar = false , loop = true },
	{ nome = 'foto142' , dict= 'barbiepose@w6' , anim = 'barbie6' , andar = false , loop = true },
	{ nome = 'foto143' , dict= 'anim@female_model_0' , anim = 'f_model_0_clip' , andar = false , loop = true },
	{ nome = 'foto144' , dict= 'anim@luxury_legs_hands' , anim = 'luxury_legs_clip' , andar = false , loop = true },
	{ nome = 'foto145' , dict= 'luxury@animation' , anim = 'luxury_clip' , andar = false , loop = true },
	{ nome = 'foto146' , dict= 'mogangsign1@animation' , anim = 'mogangsign1_clip' , andar = false , loop = true },
	{ nome = 'foto147' , dict= 'mopose1@animation' , anim = 'mopose1_clip' , andar = false , loop = true },
	{ nome = 'foto148' , dict= 'mopose2@animation' , anim = 'mopose2_clip' , andar = false , loop = true },
	{ nome = 'foto149' , dict= 'mopose3@animation' , anim = 'mopose3_clip' , andar = false , loop = true },
	{ nome = 'foto150' , dict= 'mopose4@animation' , anim = 'mopose4_clip' , andar = false , loop = true },
	{ nome = 'foto151' , dict= 'mopose5@animation' , anim = 'mopose5_clip' , andar = false , loop = true },

	-- ##### inspec (poses com armamentos) #####

	{ nome = "inspec" , dict = "anim@deathmatch_intros@melee@2h" , anim = "intro_male_melee_2h_b" , andar = false , loop = true },
	{ nome = "inspec2" , dict = "anim@deathmatch_intros@melee@2h" , anim = "intro_male_melee_2h_d" , andar = false , loop = false },
	{ nome = "inspec3" , dict = "anim@deathmatch_intros@melee@2h" , anim = "intro_male_melee_2h_e" , andar = false , loop = false },
	{ nome = "inspec4" , dict = "mp_deathmatch_intros@1hmale" , anim = "intro_male_1h_a_michael" , andar = false , loop = false },
	{ nome = "inspec5" , dict = "mp_deathmatch_intros@melee@1h" , anim = "intro_male_melee_1h_a" , andar = false , loop = false },
	{ nome = "inspec6" , dict = "mp_deathmatch_intros@melee@1h" , anim = "intro_male_melee_1h_b" , andar = false , loop = false },
	{ nome = "inspec7" , dict = "mp_deathmatch_intros@melee@1h" , anim = "intro_male_melee_1h_c" , andar = false , loop = false },
	{ nome = "inspec8" , dict = "mp_deathmatch_intros@melee@1h" , anim = "intro_male_melee_1h_d" , andar = false , loop = false },
	{ nome = "inspec9" , dict = "mp_deathmatch_intros@melee@1h" , anim = "intro_male_melee_1h_e" , andar = false , loop = false },
	{ nome = "inspec10" , dict = "mp_deathmatch_intros@melee@2h" , anim = "intro_male_melee_2h_a" , andar = false , loop = false },
	{ nome = "inspec11" , dict = "mp_deathmatch_intros@melee@2h" , anim = "intro_male_melee_2h_b" , andar = false , loop = false },
	{ nome = "inspec12" , dict = "mp_deathmatch_intros@melee@2h" , anim = "intro_male_melee_2h_c" , andar = false , loop = false },
	{ nome = "inspec13" , dict = "mp_deathmatch_intros@melee@2h" , anim = "intro_male_melee_2h_d" , andar = false , loop = false },
	{ nome = "inspec14" , dict = "mp_deathmatch_intros@melee@2h" , anim = "intro_male_melee_2h_e" , andar = false , loop = false },
	{ nome = "inspec15" , dict = "anim@deathmatch_intros@1hmale" , anim = "intro_male_1h_d_michael" , andar = true , loop = false },
	{ nome = "inspec16" , dict = "anim@tactical_highlow_high_leftlean" , anim = "high_leftlean_clip" , andar = false , loop = true },
	{ nome = "inspec17" , dict = "anim@tactical_kneel_walkie" , anim = "kneel_walkie_clip" , andar = false , loop = true },
	{ nome = "inspec18" , dict = "anim@tactical_kneel_aiming" , anim = "kneel_aiming_clip" , andar = false , loop = true },
	{ nome = "inspec19" , dict = "anim@male_tactical_collapsed_lowready" , anim = "collapsed_lowready_clip" , andar = false , loop = true },
	{ nome = "inspec20" , dict = "anim@male_tactical_highready_relaxed" , anim = "highready_relaxed_clip" , andar = false , loop = true },
	{ nome = "inspec21" , dict = "anim@tactical_rifle_01" , anim = "t_rifle_01_clip" , andar = false , loop = true },
	{ nome = "inspec22" , dict = "anim@tactical_rifle_02" , anim = "t_rifle_02_clip" , andar = false , loop = true },
	{ nome = "inspec23" , dict = "anim@tactical_rifle_03" , anim = "t_rifle_03_clip" , andar = false , loop = true },
	{ nome = "inspec24" , dict = "anim@tactical_photo_01" , anim = "t_photo_01_clip" , andar = false , loop = true },
	{ nome = "inspec25" , dict = "anim@tactical_handgun_01" , anim = "t_handgun_01_clip" , andar = false , loop = true },
	{ nome = "inspec26" , dict = "anim@tactical_handgun_02" , anim = "t_handgun_02_clip" , andar = false , loop = true },
	{ nome = "inspec27" , dict = "pistolface@blackqueen" , anim = "pistolface_clip" , andar = false , loop = true },

	-- ##### grupos #####

	{ nome = 'grupo1' , dict= 'ssiat_1@sharror' , anim = 'ssiat_1_clip' , andar = false , loop = true },
	{ nome = 'grupo2' , dict= 'ssiat_2@sharror' , anim = 'ssiat_2_clip' , andar = false , loop = true },
	{ nome = 'grupo3' , dict= 'ssiat_3@sharror' , anim = 'ssiat_3_clip' , andar = false , loop = true },
	{ nome = 'grupo4' , dict= 'ssiat_4@sharror' , anim = 'ssiat_4_clip' , andar = false , loop = true },

	{ nome = 'grupo5' , dict= 'ssiat_5@sharror' , anim = 'ssiat_5_clip' , andar = false , loop = true },
	{ nome = 'grupo6' , dict= 'ssiat_6@sharror' , anim = 'ssiat_6_clip' , andar = false , loop = true },
	{ nome = 'grupo7' , dict= 'ssiat_7@sharror' , anim = 'ssiat_7_clip' , andar = false , loop = true },
	{ nome = 'grupo8' , dict= 'ssiat_8@sharror' , anim = 'ssiat_8_clip' , andar = false , loop = true },

	{ nome = 'grupo9' , dict= 'ssiat_9@sharror' , anim = 'ssiat_9_clip' , andar = false , loop = true },
	{ nome = 'grupo10' , dict= 'ssiat_10@sharror' , anim = 'ssiat_10_clip' , andar = false , loop = true },
	{ nome = 'grupo11' , dict= 'ssiat_11@sharror' , anim = 'ssiat_11_clip' , andar = false , loop = true },
	{ nome = 'grupo12' , dict= 'ssiat_12@sharror' , anim = 'ssiat_12_clip' , andar = false , loop = true },

	{ nome = 'grupo13' , dict= 'ssiat_13@sharror' , anim = 'ssiat_13_clip' , andar = false , loop = true },
	{ nome = 'grupo14' , dict= 'ssiat_14@sharror' , anim = 'ssiat_14_clip' , andar = false , loop = true },
	{ nome = 'grupo15' , dict= 'ssiat_15@sharror' , anim = 'ssiat_15_clip' , andar = false , loop = true },
	{ nome = 'grupo16' , dict= 'ssiat_16@sharror' , anim = 'ssiat_16_clip' , andar = false , loop = true },

	{ nome = 'grupo17' , dict= 'ssiat_17@sharror' , anim = 'ssiat_17_clip' , andar = false , loop = true },
	{ nome = 'grupo18' , dict= 'ssiat_18@sharror' , anim = 'ssiat_18_clip' , andar = false , loop = true },
	{ nome = 'grupo19' , dict= 'ssiat_19@sharror' , anim = 'ssiat_19_clip' , andar = false , loop = true },
	{ nome = 'grupo20' , dict= 'ssiat_20@sharror' , anim = 'ssiat_20_clip' , andar = false , loop = true },

	{ nome = 'grupo21' , dict= 'ssiat_21@sharror' , anim = 'ssiat_21_clip' , andar = false , loop = true },
	{ nome = 'grupo22' , dict= 'ssiat_22@sharror' , anim = 'ssiat_22_clip' , andar = false , loop = true },
	{ nome = 'grupo23' , dict= 'ssiat_23@sharror' , anim = 'ssiat_23_clip' , andar = false , loop = true },
	{ nome = 'grupo24' , dict= 'ssiat_24@sharror' , anim = 'ssiat_24_clip' , andar = false , loop = true },

	{ nome = 'grupo25' , dict= 'ssiat_25@sharror' , anim = 'ssiat_25_clip' , andar = false , loop = true },
	{ nome = 'grupo26' , dict= 'ssiat_26@sharror' , anim = 'ssiat_26_clip' , andar = false , loop = true },
	{ nome = 'grupo27' , dict= 'ssiat_27@sharror' , anim = 'ssiat_27_clip' , andar = false , loop = true },
	{ nome = 'grupo28' , dict= 'ssiat_28@sharror' , anim = 'ssiat_28_clip' , andar = false , loop = true },

	{ nome = 'jax' , dict= 'duoanim2@animation' , anim = 'duoanim2_clip' , andar = true , loop = true },


	-- ###########################
	-- ##### fim poses/fotos #####
	-- ###########################


	{ nome = "brasil" , dict = "rcmnigel1d" , anim = "base_club_shoulder" , prop = "prideflag1" , andar = true , loop = true , flag = 49 , hand = 18905 , pos1 = 0.08 , pos2 = -0.20 , pos3 = 0.09 , pos4 = -82.6677 , pos5 = -141.2988 , pos6 = 12.3308 , propAnim = true },
	{ nome = "corote" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "bag_corote" , andar = true , loop = true , flag = 49 , mao= 28422, pos1 = 0.01 , pos2 = -0.0 , pos3 = 0.08 , pos4 = 0.0 , pos5 = 0.0 , pos6 = 0.0 , propAnim = true},
	{ nome = "corote2" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "bag_corote2" , andar = true , loop = true , flag = 49 , mao= 28422, pos1 = 0.01 , pos2 = 0.0 , pos3 = 0.08 , pos4 = 0.0 , pos5 = 0.0 , pos6 = 0.0 , propAnim = true},
	{ nome = "corote3" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "bag_corote3" , andar = true , loop = true , flag = 49 , mao= 28422, pos1 = 0.01 , pos2 = 0.0 , pos3 = 0.08 , pos4 = 0.0 , pos5 = 0.0 , pos6 = 0.0 , propAnim = true},
	{ nome = "corote4" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "bag_corote4" , andar = true , loop = true , flag = 49 , mao= 28422, pos1 = 0.01 , pos2 = 0.0 , pos3 = 0.08 , pos4 = 0.0 , pos5 = 0.0 , pos6 = 0.0 , propAnim = true},
	{ nome = "skol" , dict = "amb@world_human_drinking@beer@male@idle_a" , anim = "idle_a" , prop = "skol" , andar = true , loop = true , flag = 49 , mao= 28422, pos1 = 0.01 , pos2 = 0.0 , pos3 = 0.08 , pos4 = 0.0 , pos5 = 0.0 , pos6 = 0.0 , propAnim = true},
	{ nome = "pluck" , dict = "custom@pluck_fruits" , anim = "pluck_fruits" , andar = false , loop = true },
	{ nome = "waiter" , dict = "custom@waiter" , anim = "waiter" , andar = true , loop = true },
	{ nome = "ursinho" , dict = "impexp_int-0" , anim = "mp_m_waremech_01_dual-0", andar = true, loop = true, flag = 50 , mao = 24817, item = "ursinho", extra = function()
		vRP.CarregarObjeto("impexp_int-0","mp_m_waremech_01_dual-0","v_ilev_mr_rasberryclean",49,24817,-0.20, 0.46, -0.016, -180.0, -90.0, 0.0)
	end },
	---
	{ nome = "binoculos" , dict = "amb@world_human_binoculars@male@enter" , anim = "enter" , prop = "prop_binoc_01" , flag = 50 , hand = 28422 , extra = function()
		binoculos = true
	end },
	{ nome = "pano2" , dict = "timetable@maid@cleaning_surface@base" , anim = "base" , prop = "prop_rag_01" , flag = 49 , hand = 28422 , extra = function()
		local vehicle = vRP.getNearestVehicle(7)
		if IsEntityAVehicle(vehicle) then
			TriggerEvent("progress",15000,"limpando")
			SetTimeout(15000,function()
				TriggerServerEvent("tryclean",VehToNet(vehicle))
			end)
		end
	end },
	{ nome = "camera2" , dict = "missfinale_c2mcs_1" , anim = "fin_c2_mcs_1_camman" , prop = "prop_v_cam_01" , flag = 49 , hand = 28422 , extra = function() 
        camera = true
    end },
	{ nome = "pano" , dict = "timetable@maid@cleaning_window@base" , anim = "base" , prop = "prop_rag_01" , flag = 49 , hand = 28422 , extra = function()
		local vehicle = vRP.getNearestVehicle(7)
		if IsEntityAVehicle(vehicle) then
			TriggerEvent("progress",15000,"limpando")
			SetTimeout(15000,function()
				TriggerServerEvent("tryclean",VehToNet(vehicle))
			end)
		end
	end },	

	{ nome = "parachoque" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
        vRP._CarregarObjeto("","","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
	end },
	{ nome = "porta" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
        vRP._CarregarObjeto("","","prop_car_door_01",49,28422,0.0,-0.1,-0.15,0.0,0.0,0.0)
	end },
	{ nome = "porta2" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
        vRP._CarregarObjeto("","","prop_car_door_02",49,28422,0.0,-0.1,-0.15,0.0,0.0,0.0)
	end },
	{ nome = "porta3" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
		vRP._CarregarObjeto("","","prop_car_door_03",49,28422,0.0,-0.1,-0.15,0.0,0.0,0.0)
	end },
	{ nome = "porta4" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
        vRP._CarregarObjeto("","","prop_car_door_04",49,28422,0.0,-0.1,-0.15,0.0,0.0,0.0)
	end },
	{ nome = "banco" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
		vRP._CarregarObjeto("","","prop_car_seat",49,28422,0.0,-0.2,-0.14,0.0,0.0,0.0)
	end },
	{ nome = "pneu" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
        vRP._CarregarObjeto("","","prop_wheel_tyre",49,28422,0.0,-0.1,-0.15,0.0,0.0,0.0)
	end },
	{ nome = "pneu2" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
        vRP._CarregarObjeto("","","prop_wheel_03",49,28422,0.0,-0.1,-0.15,0.0,0.0,0.0)
	end },
	{ nome = "bateria" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
        vRP._CarregarObjeto("","","prop_car_battery_01",49,28422,0.0,-0.1,-0.10,0.0,0.0,0.0)
	end },
	{ nome = "motor" , dict = "anim@heists@box_carry@" , anim = "idle" , andar = true , loop = true , extra = function()
		--TriggerServerEvent("carregarobjeto","imp_prop_impexp_front_bumper_02a",49,28422,0.0,0.1,0.05,0.0,0.0,0.0)
        vRP._CarregarObjeto("","","prop_car_engine_01",49,28422,0.0,-0.1,-0.10,0.0,0.0,0.0)
	end },

	{ nome = "bengala" , andar = true , loop = false , extra = function()
		local ped = PlayerPedId()
		TriggerEvent('animations:UseWandelStok')
	end	},
	
	{ nome = "livro" , dict = "cellphone@" , anim = "cellphone_text_read_base" , andar = true , loop = true , item = "livro" , extra = function()
		vRP._CarregarObjeto("","","prop_novel_01",49,6286,0.15,0.03,-0.065,0.0,180.0,90.0)
	end },


	{ nome = "bong" , dict = "anim@safehouse@bong" , anim = "bong_stage1" , prop = "prop_bong_01", item = "bong", flag = 50 , hand = 60309 , extra = function() 
			if not IsPedInAnyVehicle(PlayerPedId()) then
				TriggerEvent('cancelando',true)
				TriggerEvent("progress",9000,"fumando")
				TriggerEvent("vrp_sound:source",'bong',0.5)
				SetTimeout(8700,function()
					vRP._DeletarObjeto()
					ShakeGameplayCam('SMALL_EXPLOSION_SHAKE',0.5)
				end)
				SetTimeout(9000,function()
					vRP.loadAnimSet("MOVE_M@DRUNK@VERYDRUNK")
					SetTimecycleModifier("REDMIST_blend")
					ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE",1.0)
					StartScreenEffect("DMT_flight",30000,false)
					Wait(30000)
					TriggerEvent('cancelando',false)
					SetTimecycleModifier("")
					SetTransitionTimecycleModifier("")
					StopGameplayCamShaking()
					ResetPedMovementClipset(PlayerPedId())
				end)
			end
	end }
}

RegisterNetEvent('animations:UseWandelStok')
AddEventHandler('animations:UseWandelStok', function()
    local ped = PlayerPedId()
    if not WalkstickUsed then
        RequestAnimSet('move_heist_lester')
        while not HasAnimSetLoaded('move_heist_lester') do
            Citizen.Wait(1)
        end
        SetPedMovementClipset(ped, 'move_heist_lester', 1.0) 
        WandelstokObject = CreateObject(GetHashKey("prop_cs_walking_stick"), 0, 0, 0, true, true, true)
        AttachEntityToEntity(WandelstokObject, ped, GetPedBoneIndex(ped, 57005), 0.16, 0.06, 0.0, 335.0, 300.0, 120.0, true, true, false, true, 5, true)
    else
        ResetPedMovementClipset(ped,0.25)
        DetachEntity(WandelstokObject, 0, 0)
        DeleteEntity(WandelstokObject)
    end
    WalkstickUsed = not WalkstickUsed
end)

local inEmote = false
RegisterNetEvent('emotes')
AddEventHandler('emotes',function(nome)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 100 then
		vRP.DeletarObjeto()
		inEmote = false
		for _,emote in pairs(animacoes) do
			if not IsPedInAnyVehicle(ped) and not emote.carros then
				if nome == emote.nome then
					if emote.extra then emote.extra() end
					if emote.pos1 then
						vRP.CarregarObjeto("","",emote.prop,emote.flag,emote.hand,emote.pos1,emote.pos2,emote.pos3,emote.pos4,emote.pos5,emote.pos6)
					elseif emote.prop then
						vRP.CarregarObjeto(emote.dict,emote.anim,emote.prop,emote.flag,emote.hand)
					elseif emote.dict then
						vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
					else
						vRP._playAnim(false,{task=emote.anim},false)
					end
					inEmote = true
				end
			end
		end
	end
end)
------------------------------------------------------------------------
-- SYNC
------------------------------------------------------------------------
RegisterNetEvent('syncanim')
AddEventHandler('syncanim',function(pos)
 	local pedInFront = GetPlayerPed(GetClosestPlayer())
    local heading = GetEntityHeading(pedInFront)
    local coords = GetOffsetFromEntityInWorldCoords(pedInFront,0.0,pos,0.0)
    SetEntityHeading(PlayerPedId(),heading-180.1)
    SetEntityCoordsNoOffset(PlayerPedId(),coords.x,coords.y,coords.z,0)
end)

RegisterNetEvent('dancalouca')
AddEventHandler('dancalouca',function()
	vRP._playAnim(false, {{"special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag"}}, true)
end)

RegisterNetEvent('yoga')
AddEventHandler('yoga',function()
	vRP._playAnim(false, {{"amb@world_human_yoga@male@base", "base_a"}}, true)
end)

RegisterNetEvent('beijar')
AddEventHandler('beijar',function()
	vRP._playAnim(false, {{"mp_ped_interaction", "kisses_guy_a"}}, true)
end)

RegisterNetEvent('abracar')
AddEventHandler('abracar',function()
	vRP._playAnim(false, {{"mp_ped_interaction", "hugs_guy_a"}}, true)
end)


RegisterNetEvent('abracar2')
AddEventHandler('abracar2',function()
	vRP._playAnim(false, {{"mp_ped_interaction", "kisses_guy_b"}}, true)
end)


RegisterNetEvent('fazermassagem')
AddEventHandler('fazermassagem',function()
	vRP._playAnim(false, {{"missheistdocks2aleadinoutlsdh_2a_int", "massage_loop_floyd"}}, true)
end)
RegisterNetEvent('fazermassagem2')
AddEventHandler('fazermassagem2',function()
	vRP._playAnim(false, {{"missheistdocks2aleadinoutlsdh_2a_int", "massage_loop_trevor"}}, true)
end)
RegisterNetEvent('fazermassagemperna')
AddEventHandler('fazermassagemperna',function()
	vRP._playAnim(false, {{"missheistdocks2bleadinoutlsdh_2b_int", "leg_massage_b_floyd"}}, true)
end)
RegisterNetEvent('fazermassagemperna2')
AddEventHandler('fazermassagemperna2',function()
	vRP._playAnim(false, {{"missheistdocks2bleadinoutlsdh_2b_int", "leg_massage_b_trevor"}}, true)
end)


function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords["x"], targetCoords["y"], targetCoords["z"], plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
    return closestPlayer, closestDistance
end

Citizen.CreateThread(function()
	while true do
		local ped = PlayerPedId()
		if IsPedInAnyVehicle(ped) then
			if inEmote then
				inEmote = false
				vRP.DeletarObjeto()
			end
		end
		Citizen.Wait(1000)
	end
end)

function GetPlayers()
    local players = {}

    for i = 0, 256 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

function PtfxThis(asset)
	while not HasNamedPtfxAssetLoaded(asset) do
	  RequestNamedPtfxAsset(asset)
	  Wait(10)
	end
	UseParticleFxAssetNextCall(asset)
  end

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(1)
		
        if binoculos then
            local scaleform = RequestScaleformMovie("BINOCULARS")
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen.Wait(10)
            end
 
            local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA",true)
            AttachCamToEntity(cam,PlayerPedId(),0.0,0.0,1.0,true)
            SetCamRot(cam,0.0,0.0,GetEntityHeading(PlayerPedId()))
            SetCamFov(cam,fov)
            RenderScriptCams(true,false,0,1,0)
 
            while binoculos and true do
                Citizen.Wait(1)
                BlockWeaponWheelThisFrame()
                local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
                CheckInputRotation(cam,zoomvalue)
                HandleZoom(cam)
                DrawScaleformMovieFullscreen(scaleform,255,255,255,255)
            end
 
            fov = (fov_max+fov_min)*0.5
            RenderScriptCams(false,false,0,1,0)
            SetScaleformMovieAsNoLongerNeeded(scaleform)
            DestroyCam(cam,false)
            SetNightvision(false)
            SetSeethrough(false)
		end
		
        if IsControlJustPressed(0,38) then
            if IsEntityPlayingAnim(PlayerPedId(),"missfinale_c2mcs_1","fin_c2_mcs_1_camman",3) then
                camera = true
            end
            if camera then
                local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA",true)
                AttachCamToEntity(cam,PlayerPedId(),0.0,0.0,1.0,true)
                SetCamRot(cam,0.0,0.0,GetEntityHeading(PlayerPedId()))
                SetCamFov(cam,fov)
                RenderScriptCams(true,false,0,1,0)
 
                while camera and true do
                    Citizen.Wait(1)
                    BlockWeaponWheelThisFrame()
                    local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
                    CheckInputRotation(cam,zoomvalue)
					HandleZoom(cam)
					TriggerEvent("status:celular",true)
					TriggerEvent("status:chat",true)
                    if IsControlJustPressed(0,38) then
						camera = false
						TriggerEvent("status:celular",false)
						TriggerEvent("status:chat",false)
                    end
                end
 
                fov = (fov_max+fov_min)*0.5
                RenderScriptCams(false,false,0,1,0)
                SetScaleformMovieAsNoLongerNeeded(scaleform)
                SetScaleformMovieAsNoLongerNeeded(scaleform2)
                DestroyCam(cam,false)
                SetNightvision(false)
                SetSeethrough(false)
            end
		end
		
    end
end)
 
RegisterNetEvent('binoculos')
AddEventHandler('binoculos',function()
    if IsEntityPlayingAnim(PlayerPedId(),"amb@world_human_binoculars@male@enter","enter",3) then
        binoculos = true
        camera = true
    else
        binoculos = false
        camera = false
    end
end)
 
function CheckInputRotation(cam,zoomvalue)
    local rightAxisX = GetDisabledControlNormal(0,220)
    local rightAxisY = GetDisabledControlNormal(0,221)
    local rotation = GetCamRot(cam,2)
    if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
        new_z = rotation.z+rightAxisX*-1.0*(8.0)*(zoomvalue+0.1)
        new_x = math.max(math.min(20.0,rotation.x+rightAxisY*-1.0*(8.0)*(zoomvalue+0.1)),-89.5)
        SetCamRot(cam,new_x,0.0,new_z,2)
    end
end
 
function HandleZoom(cam)
    if IsControlJustPressed(0,241) then
        fov = math.max(fov-10.0,fov_min)
    end
 
    if IsControlJustPressed(0,242) then
        fov = math.min(fov+10.0,fov_max)
    end
 
    local current_fov = GetCamFov(cam)
    if math.abs(fov-current_fov) < 0.1 then
        fov = current_fov
    end
    SetCamFov(cam,current_fov+(fov-current_fov)*0.05)
end
 
function Breaking(text)
    SetTextColour(255,255,255,255)
    SetTextFont(8)
    SetTextScale(1.2,1.2)
    SetTextWrap(0.0,1.0)
    SetTextCentre(false)
    SetTextDropshadow(0,0,0,0,255)
    SetTextEdge(1,0,0,0,205)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(0.2,0.85)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELAR EMOTES
----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("clear","Limpar Emotes","keyboard","F6")
RegisterCommand("clear",function(source,args)
	if vSERVER.checkCommands() then
		print("Cancelando Animação - [F6]")
		cancelEmote()
		FreezeEntityPosition(GetPlayerPed(-1), false)
		vRP.DeletarObjeto()
	end
end)


function cancelEmote()
	inEmote = false
	ClearPedTasks(GetPlayerPed(-1))
end

function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- ESTILOS DE ANDAR
-----------------------------------------------------------------------------------------------------------------------------------------
local animSet = {
	["homem"] = { "move_m@confident" },
	["mulher"] = { "move_f@heels@c" },
	["depressivo"] = { "move_m@depressed@a" },
	["depressiva"] = { "move_f@depressed@a" },
	["empresario"] = { "move_m@business@a" },
	["determinado"] = { "move_m@brave@a" },
	["descontraido"] = { "move_m@casual@a" },
	["farto"] = { "move_m@fat@a" },
	["estiloso"] = { "move_m@hipster@a" },
	["ferido"] = { "move_m@injured" },
	["nervoso"] = { "move_m@hurry@a" },
	["desleixado"] = { "move_m@hobo@a" },
	["infeliz"] = { "move_m@sad@a" },
	["musculoso"] = { "move_m@muscle@a" },
	["desligado"] = { "move_m@shadyped@a" },
	["fadiga"] = { "move_m@buzzed" },
	["apressado"] = { "move_m@hurry_butch@a" },
	["descolado"] = { "move_m@money" },
	["piriguete"] = { "move_f@maneater" },
	["petulante"] = { "move_f@sassy" },
	["arrogante"] = { "move_f@arrogant@a" },
	["bebado"] = { "move_m@drunk@slightlydrunk" },
	["bebado2"] = { "move_m@drunk@verydrunk" },
	["bebado3"] = { "move_m@drunk@moderatedrunk" },
	["irritado"] = { "move_m@fire" },
	["intimidado"] = { "move_m@intimidation@cop@unarmed" },
	["poderosa"] = { "move_f@handbag" },
	["chateado"] = { "move_f@injured" },
	["estilosa"] = { "move_f@posh@" },
	["sensual"] = { "move_f@sexy@a" }
}

RegisterCommand("a",function(source,args)
	local anim = args[1]
	if animSet[anim] then
		vRP.loadAnimSet(animSet[anim][1])
	else
		TriggerEvent("Notify","negado","Essa animação não existe.", 5)
	end
end)


-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- CARREGAR NO OMBRO
-- -----------------------------------------------------------------------------------------------------------------------------------------
local carryingBackInProgress = false

-- RegisterCommand("carregar",function(source, args)
-- 	if GetEntityHealth(PlayerPedId()) > 105 then
-- 		local closestPlayer = GetClosestPlayer(3)
-- 		if not carryingBackInProgress then
-- 			if closestPlayer ~= nil then
-- 				carryingBackInProgress = true
-- 				local player = PlayerPedId()	
-- 				lib = 'missfinale_c2mcs_1'
-- 				anim1 = 'fin_c2_mcs_1_camman'
-- 				lib2 = 'nm'
-- 				anim2 = 'firemans_carry'
-- 				distans = 0.15
-- 				distans2 = 0.27
-- 				height = 0.63
-- 				spin = 0.0		
-- 				length = 100000
-- 				controlFlagMe = 49
-- 				controlFlagTarget = 33
-- 				animFlagTarget = 1
				
-- 				target = GetPlayerServerId(closestPlayer)
-- 				TriggerServerEvent('cmg2_animations:syncSCRIPTFODIDO', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
-- 			end
-- 		else
-- 			if closestPlayer ~= nil then
-- 				carryingBackInProgress = false
-- 				ClearPedSecondaryTask(GetPlayerPed(-1))
-- 				DetachEntity(GetPlayerPed(-1), true, false)
-- 				target = GetPlayerServerId(closestPlayer)
-- 				TriggerServerEvent("cmg2_animations:stopSCRIPTFODIDO",target)
-- 			end
-- 		end
-- 	end
-- end,false)

RegisterNetEvent('cmg2_animations:syncTargetSCRIPTFODIDO')
AddEventHandler('cmg2_animations:syncTargetSCRIPTFODIDO', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
	local playerPed = GetPlayerPed(-1)
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	carryingBackInProgress = true
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
	 		Citizen.Wait(10)
	 	end
	 	if spin == nil then spin = 180.0 end
	 	AttachEntityToEntity(GetPlayerPed(-1), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	 	if controlFlag == nil then controlFlag = 0 end
	 	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	 end)

 RegisterNetEvent('cmg2_animations:syncMeSCRIPTFODIDO')
 AddEventHandler('cmg2_animations:syncMeSCRIPTFODIDO', function(animationLib, animation,length,controlFlag,animFlag)
 	local playerPed = GetPlayerPed(-1)
 	RequestAnimDict(animationLib)

 	while not HasAnimDictLoaded(animationLib) do
 		Citizen.Wait(10)
 	end
 	Wait(500)
 	if controlFlag == nil then controlFlag = 0 end
 	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
 	Citizen.Wait(length)
 end)
 RegisterNetEvent('cmg2_animations:cl_stopSCRIPTFODIDO')
 AddEventHandler('cmg2_animations:cl_stopSCRIPTFODIDO', function()
 	carryingBackInProgress = false
 	ClearPedSecondaryTask(GetPlayerPed(-1))
 	DetachEntity(GetPlayerPed(-1), true, false)
 end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CAVALINHO
-----------------------------------------------------------------------------------------------------------------------------------------
--  local piggyBackInProgress = false
--  RegisterCommand("cavalinho",function(source, args)
--  	local closestPlayer = GetClosestPlayer(3)
-- 		if vserver.checkItem() then
-- 			if GetEntityHealth(PlayerPedId()) > 105 then
-- 				if not piggyBackInProgress then
-- 					if closestPlayer ~= nil then
-- 						piggyBackInProgress = true
-- 						local player = PlayerPedId()	
-- 						lib = 'anim@arena@celeb@flat@paired@no_props@'
-- 						anim1 = 'piggyback_c_player_a'
-- 						anim2 = 'piggyback_c_player_b'
-- 						distans = -0.07
-- 						distans2 = 0.0
-- 						height = 0.45
-- 						spin = 0.0		
-- 						length = 100000
-- 						controlFlagMe = 49
-- 						controlFlagTarget = 33
-- 						animFlagTarget = 1
-- 						print(closestPlayer)
-- 						target = GetPlayerServerId(closestPlayer)
					
-- 						TriggerServerEvent('cmg2_animations:syncSCRIPTFODIDO_2', closestPlayer, lib, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
-- 					end
-- 				else
-- 					if closestPlayer ~= nil then
-- 						piggyBackInProgress = false
-- 						ClearPedSecondaryTask(GetPlayerPed(-1))
-- 						DetachEntity(GetPlayerPed(-1), true, false)
-- 						local closestPlayer = GetClosestPlayer(3)
-- 						target = GetPlayerServerId(closestPlayer)
-- 						TriggerServerEvent("cmg2_animations:stopSCRIPTFODIDO",target)
-- 					end
-- 				end
-- 		else
-- 			TriggerEvent("Notify","negado","Você não possui cordas!")
-- 		end
-- 	end
-- end,false)

RegisterNetEvent('cmg2_animations:syncTargetSCRIPTFODIDO')
AddEventHandler('cmg2_animations:syncTargetSCRIPTFODIDO', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
	local playerPed = GetPlayerPed(-1)
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	piggyBackInProgress = true
	RequestAnimDict(animationLib)
	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(GetPlayerPed(-1), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
end)

RegisterNetEvent('cmg2_animations:syncMeSCRIPTFODIDO')
AddEventHandler('cmg2_animations:syncMeSCRIPTFODIDO', function(animationLib, animation,length,controlFlag,animFlag)
	local playerPed = GetPlayerPed(-1)
	RequestAnimDict(animationLib)
	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	Wait(500)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	Citizen.Wait(length)
end)
RegisterNetEvent('cmg2_animations:cl_stopSCRIPTFODIDO')
AddEventHandler('cmg2_animations:cl_stopSCRIPTFODIDO', function()
	piggyBackInProgress = false
	ClearPedSecondaryTask(GetPlayerPed(-1))
	DetachEntity(GetPlayerPed(-1), true, false)
end)
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- REFEM
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- local hostageAllowedWeapons = {
-- 	"WEAPON_COMBATPISTOL",
-- 	"WEAPON_REVOLVER_MK2",
-- 	"WEAPON_REVOLVER",
-- 	"WEAPON_PISTOL_MK2",
-- 	"WEAPON_PISTOL50",
-- 	"WEAPON_PISTOL",
-- 	"WEAPON_SNSPISTOL",
-- 	"WEAPON_SNSPISTOL_MK2",
-- 	"WEAPON_HEAVYPISTOL"
-- }

-- local holdingHostageInProgress = false

-- RegisterCommand("refem",function()
-- 	takeHostage()
-- end)

-- function takeHostage()
-- 	ClearPedSecondaryTask(GetPlayerPed(-1))
-- 	DetachEntity(GetPlayerPed(-1), true, false)
-- 	for i=1, #hostageAllowedWeapons do
-- 		if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(hostageAllowedWeapons[i]), false) then
-- 			if GetAmmoInPedWeapon(GetPlayerPed(-1), GetHashKey(hostageAllowedWeapons[i])) > 0 then
-- 				canTakeHostage = true 
-- 				foundWeapon = GetHashKey(hostageAllowedWeapons[i])
-- 				break
-- 			end 		
-- 		end
-- 	end

-- 	if not canTakeHostage then 
-- 		print("Precisa de arma")	
-- 		drawNativeNotification("Você precisa de uma pistola com munição para fazer um refém à mão armada!")
-- 	end
-- 	local closestPlayer = GetClosestPlayer(2)
-- 	if not holdingHostageInProgress and canTakeHostage then	
-- 		if closestPlayer ~= nil then	
-- 			local player = PlayerPedId()	
-- 			lib = 'anim@gangops@hostage@'
-- 			anim1 = 'perp_idle'
-- 			lib2 = 'anim@gangops@hostage@'
-- 			anim2 = 'victim_idle'
-- 			distans = 0.11 --Higher = closer to camera
-- 			distans2 = -0.24 --higher = left
-- 			height = 0.0
-- 			spin = 0.0		
-- 			length = 100000
-- 			controlFlagMe = 49
-- 			controlFlagTarget = 49
-- 			animFlagTarget = 50
-- 			attachFlag = true 
			
-- 			target = GetPlayerServerId(closestPlayer)
		
-- 			SetCurrentPedWeapon(GetPlayerPed(-1), foundWeapon, true)
-- 			holdingHostageInProgress = true
-- 			holdingHostage = true 
-- 			TriggerServerEvent('cmg3_animations:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget,attachFlag)
-- 		end 
-- 	end
-- 	canTakeHostage = false 
-- end 

-- RegisterNetEvent('cmg3_animations:syncTarget')
-- AddEventHandler('cmg3_animations:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag,animFlagTarget,attach)
-- 	local playerPed = GetPlayerPed(-1)
-- 	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
-- 	if holdingHostageInProgress then 
-- 		holdingHostageInProgress = false 
-- 	else 
-- 		holdingHostageInProgress = true
-- 	end
-- 	beingHeldHostage = true 
-- 	RequestAnimDict(animationLib)

-- 	while not HasAnimDictLoaded(animationLib) do
-- 		Citizen.Wait(10)
-- 	end
-- 	if spin == nil then spin = 180.0 end
-- 	if attach then 
-- 		AttachEntityToEntity(GetPlayerPed(-1), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
-- 	end
	
-- 	if controlFlag == nil then controlFlag = 0 end
	
-- 	if animation2 == "victim_fail" then 
-- 		SetEntityHealth(GetPlayerPed(-1),0)
-- 		DetachEntity(GetPlayerPed(-1), true, false)
-- 		TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
-- 		beingHeldHostage = false 
-- 		holdingHostageInProgress = false 
-- 	elseif animation2 == "shoved_back" then 
-- 		holdingHostageInProgress = false 
-- 		DetachEntity(GetPlayerPed(-1), true, false)
-- 		TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
-- 		beingHeldHostage = false 
-- 	else
-- 		TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)	
-- 	end
-- end)

-- RegisterNetEvent('cmg3_animations:syncMe')
-- AddEventHandler('cmg3_animations:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
-- 	local playerPed = GetPlayerPed(-1)
-- 	ClearPedSecondaryTask(GetPlayerPed(-1))
-- 	RequestAnimDict(animationLib)
-- 	while not HasAnimDictLoaded(animationLib) do
-- 		Citizen.Wait(10)
-- 	end
-- 	if controlFlag == nil then controlFlag = 0 end
-- 	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
-- 	if animation == "perp_fail" then 
-- 		SetPedShootsAtCoord(GetPlayerPed(-1), 0.0, 0.0, 0.0, 0)
-- 		holdingHostageInProgress = false 
-- 	end
-- 	if animation == "shove_var_a" then 
-- 		Wait(900)
-- 		ClearPedSecondaryTask(GetPlayerPed(-1))
-- 		holdingHostageInProgress = false 
-- 	end
-- end)

-- RegisterNetEvent('cmg3_animations:cl_stop')
-- AddEventHandler('cmg3_animations:cl_stop', function()
-- 	holdingHostageInProgress = false
-- 	beingHeldHostage = false 
-- 	holdingHostage = false 
-- 	ClearPedSecondaryTask(GetPlayerPed(-1))
-- 	DetachEntity(GetPlayerPed(-1), true, false)
-- end)


-- Citizen.CreateThread(function()
-- 	while true do 
-- 		local time = 1000
-- 		if holdingHostage then
-- 			time = 0
-- 			if IsEntityDead(GetPlayerPed(-1)) then
-- 				--print("release this mofo")			
-- 				holdingHostage = false
-- 				holdingHostageInProgress = false 
-- 				local closestPlayer = GetClosestPlayer(2)
-- 				target = GetPlayerServerId(closestPlayer)
-- 				TriggerServerEvent("cmg3_animations:stop",target)
-- 				Wait(100)
-- 				releaseHostage()
-- 			end 
-- 			DisableControlAction(0,24,true) -- disable attack
-- 			DisableControlAction(0,25,true) -- disable aim
-- 			DisableControlAction(0,47,true) -- disable weapon
-- 			DisableControlAction(0,58,true) -- disable weapon
-- 			DisablePlayerFiring(GetPlayerPed(-1),true)
-- 			local playerCoords = GetEntityCoords(GetPlayerPed(-1))
-- 			DrawText3D(playerCoords.x,playerCoords.y,playerCoords.z,"Pressione [Q] para soltar, [E] para matar")
-- 			if IsDisabledControlJustPressed(0,44) then --release	
-- 				holdingHostage = false
-- 				holdingHostageInProgress = false 
-- 				local closestPlayer = GetClosestPlayer(2)
-- 				target = GetPlayerServerId(closestPlayer)
-- 				TriggerServerEvent("cmg3_animations:stop",target)
-- 				Wait(100)
-- 				releaseHostage()
-- 			elseif IsDisabledControlJustPressed(0,51) then --kill 
-- 				holdingHostage = false
-- 				holdingHostageInProgress = false 		
-- 				local closestPlayer = GetClosestPlayer(2)
-- 				target = GetPlayerServerId(closestPlayer)
-- 				TriggerServerEvent("cmg3_animations:stop",target)				
-- 				killHostage()
-- 			end
-- 		end
-- 		if beingHeldHostage then 
-- 			DisableControlAction(0,21,true) -- disable sprint
-- 			DisableControlAction(0,24,true) -- disable attack
-- 			DisableControlAction(0,25,true) -- disable aim
-- 			DisableControlAction(0,47,true) -- disable weapon
-- 			DisableControlAction(0,58,true) -- disable weapon
-- 			DisableControlAction(0,263,true) -- disable melee
-- 			DisableControlAction(0,264,true) -- disable melee
-- 			DisableControlAction(0,257,true) -- disable melee
-- 			DisableControlAction(0,140,true) -- disable melee
-- 			DisableControlAction(0,141,true) -- disable melee
-- 			DisableControlAction(0,142,true) -- disable melee
-- 			DisableControlAction(0,143,true) -- disable melee
-- 			DisableControlAction(0,75,true) -- disable exit vehicle
-- 			DisableControlAction(27,75,true) -- disable exit vehicle  
-- 			DisableControlAction(0,22,true) -- disable jump
-- 			DisableControlAction(0,32,true) -- disable move up
-- 			DisableControlAction(0,268,true)
-- 			DisableControlAction(0,33,true) -- disable move down
-- 			DisableControlAction(0,269,true)
-- 			DisableControlAction(0,34,true) -- disable move left
-- 			DisableControlAction(0,270,true)
-- 			DisableControlAction(0,35,true) -- disable move right
-- 			DisableControlAction(0,271,true)
-- 		end

-- 		Wait(time)
-- 	end
-- end)

-- function releaseHostage()
-- 	local player = PlayerPedId()	
-- 	lib = 'reaction@shove'
-- 	anim1 = 'shove_var_a'
-- 	lib2 = 'reaction@shove'
-- 	anim2 = 'shoved_back'
-- 	distans = 0.11 --Higher = closer to camera
-- 	distans2 = -0.24 --higher = left
-- 	height = 0.0
-- 	spin = 0.0		
-- 	length = 100000
-- 	controlFlagMe = 120
-- 	controlFlagTarget = 0
-- 	animFlagTarget = 1
-- 	attachFlag = false
-- 	local closestPlayer = GetClosestPlayer(2)
-- 	target = GetPlayerServerId(closestPlayer)
-- 	if closestPlayer ~= nil then
-- 		TriggerServerEvent('cmg3_animations:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget,attachFlag)
-- 	end
-- end 

-- function killHostage()
-- 	local player = PlayerPedId()	
-- 	lib = 'anim@gangops@hostage@'
-- 	anim1 = 'perp_fail'
-- 	lib2 = 'anim@gangops@hostage@'
-- 	anim2 = 'victim_fail'
-- 	distans = 0.11 --Higher = closer to camera
-- 	distans2 = -0.24 --higher = left
-- 	height = 0.0
-- 	spin = 0.0		
-- 	length = 0.2
-- 	controlFlagMe = 168
-- 	controlFlagTarget = 0
-- 	animFlagTarget = 1
-- 	attachFlag = false
-- 	local closestPlayer = GetClosestPlayer(2)
-- 	target = GetPlayerServerId(closestPlayer)
-- 	if closestPlayer ~= nil then
-- 		--print("triggering cmg3_animations:sync")
-- 		TriggerServerEvent('cmg3_animations:sync', closestPlayer, lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget,attachFlag)
-- 	end	
-- end 


-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- -- FUNCTIONS
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function drawNativeNotification(text)
    SetTextComponentFormat('STRING')
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function GetPlayers()
    local players = {}
    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end
    return players
end
function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)
    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
 
    if onScreen then
        SetTextScale(0.19, 0.19)
        SetTextFont(0)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end