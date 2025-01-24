local pressetHooks = {
    ["ENTRADA"] = { "https://discord.com/api/webhooks/1055177936799535114/e_fsF8ZdDPJY0ux9jJRlLPZn-2f6ph5cK75y3hFRuGasOj29uzUNxTf81s_y92JeUWJh" },
    ["SAIDA"] = { "https://discord.com/api/webhooks/1055178183995039754/qd1mLHibqaxbm3q1SpRTjXQSoklUS3nv_Wsck5LLCqKFV-gxfc3apqz2nBPfYQT_otqR" },
    ["DROPAR"] = { "https://discord.com/api/webhooks/1055188048578625646/ueKyQEqR7YlqyYAvLyEm8SojPyyO8Tb0VGiv2KTBApdyP7z9DMErxrbGB0pMBV12Yn9s" },
    ["ENVIAR"] = { "https://discord.com/api/webhooks/1080933964547641455/LfYh6Xj1-iM8xAj73eX6MuflBbMvL9gKtYZEjzR8CzQkNvMtDsizEjz62HwK6UmsajLb" },
    ["EQUIPAR"] = { "https://discord.com/api/webhooks/1080934133099937952/5FkMnnp9OD820K3UQr4MJ-S0GQ7UNvl9v7LdC1PCgAJdPNihoZd5rWLjg9kfMWf2hGel" },
    ["GARMAS"] = { "https://discord.com/api/webhooks/1055188339789140018/9veeOemBcdkgEmI87XZZbHQ6ZtRVRIAeLe8RQ6i7EsH99l01Q79qvye7kJ6-IiR7dXLH" },
    ["SAQUEAR"] = { "https://discord.com/api/webhooks/1080934375899811890/ea_OGMgBICblvwcSG3CUD729bbEZUoHkMGxjW5--cWrAycFTyEEV2IHeJkMcInah2sYb" },
    ["BAUCARRO"] = { "https://discord.com/api/webhooks/1055201588542713937/EWV6UUbSk5F3Ge82An4yEl2BgSPC9zwZQL-bHA6Yv55-jqgPBkqZ_1gUo7sF7yXOeM1i" },
    ["BAUCASAS"] = { "https://discord.com/api/webhooks/1080934613930741881/JJAmrGot7url4hGdkygi5A5HZjInkPA-IeXbAistplbHLPgkKjDdW0czVdsVnSCk5wSH" },
    ["CRASHS"] = { "https://discord.com/api/webhooks/1080934785045778482/gSOSAVv9GvsrZkli-kX_58K_DTzz8gQiZdyyreD8jJILJm_KFrUBbS8lIZx7GSvKMW5_" },
    ["MORTE"] = { "https://discord.com/api/webhooks/1080934903362883665/Oq7fcuo1b_fVSI1ZckRW55XZpFM4CD88D3S7VZy7KoJfqj2ZduttKoLrLBIyQQJSFQIv" },
    ["ROUBOGERAIS"] = { "https://discord.com/api/webhooks/1080935000876261417/jtnBzU24eC73F2HOWd3ajBKrbdw-p1doRhg8Rd7d6FrRmuUTzCAEbjlHF020-PxR3dRB" },
    ["ROUBOAMMU"] = { "https://discord.com/api/webhooks/1080935259337666660/CBhuFZHfTcYk9C2RTAN_PXWngTezzLz7EVTYO2MJ5-miR8CO0IAc8FMgcQFot_k8QpzK" },
    ["ROUBOCAIXA"] = { "https://discord.com/api/webhooks/1080935120913055857/RG56qGDW7M7BI2F45Ihr-kk4UcCAdDN6OwKYMXxk9YZfbhdoo_q5ob-vy4Sqt9kJOZGe" },
    ["ROUBOREGISTRADORA"] = { "https://discord.com/api/webhooks/1080935404951306241/rWAp-5dmCNfzOK9JLYWgu4Rx4Td8jGnF030sjstdfXICaCze0fcHDiKtmN5pnY5a7uZz" },
    ["BANCODEPOSITAR"] = { "https://discord.com/api/webhooks/1041780581257719868/CpQBetdG0LYOew0Z0RpVYog-bEEKTixUicBXmhAgjXFui0_JZweBeL5zPAlHau6TvoBg" },
    ["BANCOSACAR"] = { "https://discord.com/api/webhooks/1080935608928714762/te5npURV-klDniFsgvaGgx_42qZHENqqfAzZ9WuXLLY_MEER77pftzVDCOoMpkmzoDi5" },
    ["BANCOENVIAR"] = { "https://discord.com/api/webhooks/1080935721428332564/NOkatqEJXBeEdnbO7Zmi4c49XFXqO27GtP3AScfqjrqF6dOJ8ghA5JA1jkSyGnSrEHea" },
    ["COMPRARVEICULO"] = { "https://discord.com/api/webhooks/1055200398538969198/LgSPerVdQurvf5eheRiPS8zpoJlDVobGk74wqS4tOf3_FkyASXkBGrIMbtGmeQqTJSs5" },
    ["WL"] = { "https://discord.com/api/webhooks/1055181194716786688/rWxgBoj3wVVr4NdY6hEnWrP4hPIVMwDboqG42BEn2rL1Uns8AOQ87sBnR76NbVjL8WPn" },
    ["IDS"] = { "https://discord.com/api/webhooks/1080936032968654948/i5FCuR7knf2aShUNLmG587zmNdgrvXeZz9OyJhQcY0HRR4BW4p6JJIFFHFv1cxvcpMBV" },
    ["TPTO"] = { "https://discord.com/api/webhooks/1079959638813970432/--rkkB17dd1zOAdf7cCrbZ1qrVxrpgfjthy1lRTC5dwFr8kqjbSnjMAP6o-YOY7hdvIH" },
    ["TPTOME"] = { "https://discord.com/api/webhooks/1079959427022594169/ELbyGFzdgluTqvXciaCkpDTTL9_CR_G730HLXO0_RWrGe2o5sBKhRDUOyKF819Mhu3V_" },
    ["GOD"] = { "https://discord.com/api/webhooks/1079951130957721651/jcsg1LulmoUdKZzUckU93NyMHDTTHEI2-ZnfGKRwF6QdIjFMRxo7jDlpm0Qfwvp4SR5I" },
    ["GOID"] = { "https://discord.com/api/webhooks/1055199931700346971/sgYigWvKHsm_gaxBZqW32FTveGU9nB8DJR9uJnVk_ZR90LtuwdgigIsSBcZP9SXDvV5P" },
    ["KICK"] = { "https://discord.com/api/webhooks/1055181071735590954/49YyRhhmUWyuDDHqEjT5B7VEy511mQ_ZPRaZfmim0OLbl-Y9UsfpaYLb7VVY6T4BMgmT" },
    ["BAN"] = { "https://discord.com/api/webhooks/1055181130015445002/S-0codOPU0LE65jYpJQgYJnv1nV2ZWbH0r8_gzucr5Iq4thULYPcHpmg_iq4IQp1mN8T" },
    ["PRENDERADM"] = { "https://discord.com/api/webhooks/1079949710216941598/2fB7zQqWn7IjAhmndmavmXLs2QkTfMHGtzpUp3qAfu51Ud6u-hKaPRjF4tOfg8SvlZQf" },
    ["AADM"] = { "983507643077373962/JLYbFAScVCP0bCGgauja_56lctolBuEf3qrGtVy4k_dez12DcwyX3HLONnLv_SHNwUDG" },
    ["KILL"] = { "https://discord.com/api/webhooks/1079951552413978675/JUEJvPV3vT34kVROUsNgH7zw2_3LH-KuoN5VeWTWnT0-FkAHqWLmHmSiSZvmpQZald_d" },
    ["ITEM"] = { "https://discord.com/api/webhooks/1055180922405793853/VIooBlU82qnLF_NyqiPq2R4giy4lEzVeSWeC7mYp070IA1VUYXVeMznVm_rN7kA1Raze" },
    ["TPWAY"] = { "https://discord.com/api/webhooks/1079959804497363044/Y8OxfWOTzQz7mnMQl0mpyjH_NPKjM5HKSF4if3Js7fnNllduhG9toyWzvuv9KPpXpwhz" },
    ["ACEITARCHAMADOADMIN"] = { "https://discord.com/api/webhooks/1080937282325979236/bhOzdgAZDI8oK5-ezfj1oVUkBB4GFhNEX3A4EidzO5D5ceyjtAoMYsbaJUWza0cC4ozX" },
    ["GROUPADD"] = { "https://discord.com/api/webhooks/1055181852811472906/fTDqVa5ttBUlp282PlB-DWygcuMPnMsdCqRBVUfZJHbOI9Z1mX74qgFJA4zwPwbZY2fn" },
    ["GROUPREM"] = { "https://discord.com/api/webhooks/1079959063577763881/O_T6dHPuRpZcQ4Es0Fs1Gb6ymLbn_xa5ZNwWvqOnk2bjEJaNgJobUTikUIBVKjhk9Qi7" },
    ["SPAWNCAR"] = { "https://discord.com/api/webhooks/1079959957304254524/lPh7DgABjuob398gmtm93Q2N0j_pY26oHV0M54nUdvABG1Wc7X2BXzHFQ6NDmuUVOU7D" },
    ["MONEY"] = { "https://discord.com/api/webhooks/1079957220684464198/W9_3Uv7dlSbvqsAQSF4YQBotQJppreBDveSLH1Ir5fpv6j91g0v6smBOwrQNaLmwIlQB" },
    ["BATERPONTOBENNYS"] = { "XXX" },
    ["BATERPONTOPOLICIA"] = { "XXX" },
    ["BATERPONTOHOSPITAL"] = { "XXX" },
    ["BATERPONTOADMIN"] = { "https://discord.com/api/webhooks/1080937981688414298/5lYQ6SyShDJQD9MqBspBkEzP3I7xEhJdJlq5N7hmFiuA1JoNcmJycqO1xZMNQn8vT4NO" },
    ["PRENDER"] = { "https://discord.com/api/webhooks/1055189973684465795/2zpat79DFhqACE-p97DvhvJe6xC116SWg3TdC6ZU73cu25WrrmlA2ygxlpO15flGBFL2" },
    ["DESMANCHE"] = { "https://discord.com/api/webhooks/1080938412003049573/jGRMKznDUSL31yqxasBlB3rQThWDPfqW0WOYa8lTE89BRWRLefvPJ_s6zyRpWtO1W36q" },
    ["COPYPRESET"] = { "XXX" },
    ["SETPRESET"] = { "XXX" },
    ["REVISTARADM"] = { "XXX" },
    ["VAULTADM"] = { "XXX" },
    ["HOUSEADMCHEST"] = { "XXX" },
    ["FUEL"] = { "XXX" },
    ["LOCKPICK"] = { "https://discord.com/api/webhooks/1080938565501993131/BKEP1oiY4UNJzLdxAZPcUqV3nE0wmCtJgRr2TirAYBDZtLckxvoEKITPYKe5aT2vIVmY" },
    ["ADDCARRO"] = { "https://discord.com/api/webhooks/1055182020856250431/KrUzvyFNvwGGIliSci02XylEoNA1JDdCzNWdmIGNoCjgaWXLfUPxthBzQVPQFAg9VSMp" },
    ["RENOMEAR"] = { "https://discord.com/api/webhooks/1080939071049846875/XHFSbbB9Uzkzuxm9cvC2DrZ36JxGaB1BaWBlvjiL-z7nr-tXji0z24-yAbXVmHvUd1Ag" },
    ["CRAFT"] = { "https://discord.com/api/webhooks/1080938901092454430/mwMfjALNaGXCcar6JGqGln5VJLf2CfIvhqN6Jkf8gF0E4scAkJItcHa-2WbBbPrDJGbB" },
    ["KITMALOKERO"] = { "XXX" },
    ["GETITEM"] = { "XXX" },
    ["REMCARRO"] = { "https://discord.com/api/webhooks/1055181961615912970/9DSZYdH09jLdZETaBJrijpMoC8eor3xdPTvMiNG8wAuLypP0r2ERb8VHe3gz4-gxI81B" },
}

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DISCORD WEEBHOOK
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.sendLog(weebhook, mensagge)
    if weebhook and mensagge then
        if pressetHooks[weebhook] ~= nil then
            SendWebhookMessage(pressetHooks[weebhook][1],mensagge)
        else
            SendWebhookMessage(weebhook,mensagge)
        end
    end
end

function SendWebhookMessage(webhook,message)
    if webhook ~= "none" then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- DESLOGAR DENTRO DA PROPRIEDADE
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.atualizarPosicao(user_id,x,y,z)
    local data = vRP.getUserDataTable(user_id)
    if user_id then
        if data then
            data.position = { x = x, y = y, z = z }
        end
    end
end

function vRP.limparArmas(user_id)
    local data = vRP.getUserDataTable(user_id)
    if user_id then
        if data then
            data.weapons = {}
        end
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('playerDropped', function (reason)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then

        if reason == "Game crashed: gta-core-five.dll!CrashCommand (0x0)" then
            vRP._setBanned(user_id, true, "Usou comando para forjar o crash")
            vRP.sendLog("CRASHS", "O ID "..user_id.." utilizou o comando _crash.")
        end
    end
end)
