cfg = {}

cfg.chestOrgs = { 
    -- ARMAS
    [1] = { coords = vec3(-1760.08,-200.57,57.79), maxbau = 3000, org = "PCC", perm = "perm.baupcc", weebhook = "" }, 
    [2] = { coords = vec3(-2672.72,1333.28,144.25), maxbau = 3000, org = "Mafia", perm = "perm.baumafia", weebhook = "" }, 
    [3] = { coords = vec3(-3158.49,1356.28,23.24), maxbau = 3000, org = "Milicia", perm = "perm.baumilicia", weebhook = "" }, 
    [4] = { coords = vec3(3015.61,2971.81,89.02), maxbau = 3000, org = "CV", perm = "perm.baucv", weebhook = "" }, 
    [5] = { coords = vec3(1250.41,-225.69,98.99), maxbau = 3000, org = "Grota", perm = "perm.baugrota", weebhook = "" }, 

    -- MUNICAO
    [6] = { coords = vec3(1394.7,1150.01,114.33), maxbau = 3000, org = "Camorra", perm = "perm.baucamorra", weebhook = "" }, 
    [7] = { coords = vec3(-867.33,-1458.21,7.53), maxbau = 3000, org = "Yakuza", perm = "perm.bauyakuza", weebhook = "" }, 
    [8] = { coords = vec3(1997.37,442.36,171.41), maxbau = 3000, org = "ADA", perm = "perm.bauada", weebhook = "" }, 
    [9] = { coords = vec3(876.76,2012.79,77.56), maxbau = 3000, org = "FDN", perm = "perm.baufdn", weebhook = "" }, 
    [10] = { coords = vec3(1394.67,-768.55,77.61), maxbau = 3000, org = "TCP", perm = "perm.bautcp", weebhook = "" }, 

    -- LAVAGEM
    [11] = { coords = vec3(750.57,-581.93,33.63), maxbau = 3000, org = "Medusa", perm = "perm.baumedusa", weebhook = "" }, 
    [12] = { coords = vec3(-1365.44,-616.9,30.31), maxbau = 3000, org = "Bahamas", perm = "perm.baubahamas", weebhook = "" }, 
    [13] = { coords = vec3(118.25,-1300.39,29.27), maxbau = 3000, org = "Vanilla", perm = "perm.bauvanilla", weebhook = "" }, 
    [14] = { coords = vec3(963.34,8.0,71.83), maxbau = 3000, org = "Cassino", perm = "perm.baucassino", weebhook = "" }, 
    [15] = { coords = vec3(356.3,282.9,94.19), maxbau = 3000, org = "Galaxy", perm = "perm.baugalaxy", weebhook = "" }, 

    -- CONTRABANDO
    [16] = { coords = vec3(-107.59,976.94,240.88), maxbau = 3000, org = "Mercenarios", perm = "perm.baumercenarios", weebhook = "" }, 
    [17] = { coords = vec3(312.98,-218.88,58.01), maxbau = 3000, org = "VilaDoChaves", perm = "perm.viladochaves", weebhook = "" }, 
    [18] = { coords = vec3(705.37,-960.39,30.4), maxbau = 3000, org = "Anonymous", perm = "perm.bauanonymous", weebhook = "" }, 
    [19] = { coords = vec3(433.07,9.16,91.94), maxbau = 3000, org = "Serpentes", perm = "perm.bauserpentes", weebhook = "" }, 
    [20] = { coords = vec3(-561.89,281.62,85.68), maxbau = 3000, org = "Abutres", perm = "perm.bauabutres", weebhook = "" }, 

    -- DESMANCHE
    [21] = { coords = vec3(-1236.18,-1758.35,4.62), maxbau = 3000, org = "CDD", perm = "perm.baucdd", weebhook = "" }, 
    [22] = { coords = vec3(996.72,-116.92,74.05), maxbau = 3000, org = "HellsAngels", perm = "perm.bauhellsangels", weebhook = "" }, 
    [23] = { coords = vec3(737.75,-1077.94,22.16), maxbau = 3000, org = "Lacoste", perm = "perm.baulacoste", weebhook = "" }, 
    [24] = { coords = vec3(-2439.57,-202.53,32.39), maxbau = 3000, org = "Rocinha", perm = "perm.baurocinha", weebhook = "" }, 
    [25] = { coords = vec3(1647.53,-2123.47,102.23), maxbau = 3000, org = "Pedreira", perm = "perm.baupedreira", weebhook = "" }, 
    
    -- DROGAS
    [26] = { coords = vec3(798.39,-294.22,66.51), maxbau = 3000, org = "MorroDoMakakero", perm = "perm.baumorrodomakakero", weebhook = "" }, 
    [27] = { coords = vec3(-313.08,1516.83,364.78), maxbau = 3000, org = "ComplexoDoAlemao", perm = "perm.baucomplexodoalemao", weebhook = "" }, 
    [28] = { coords = vec3(-1939.34,4528.66,20.46), maxbau = 3000, org = "FavelaDaMare", perm = "perm.baufaveladamera", weebhook = "" }, 
    [29] = { coords = vec3(249.84,1808.87,212.85), maxbau = 3000, org = "Vidigal", perm = "perm.bauvidigal", weebhook = "" }, 
    --[30] = { coords = vec3(249.84,1808.87,212.85), maxbau = 3000, org = "Israel", perm = "perm.bauisrael", weebhook = "" }, 
    [30] = { coords = vec3(2469.34,3808.96,48.43), maxbau = 3000, org = "Babilonia", perm = "perm.baubabilonia", weebhook = "" }, 
    [31] = { coords = vec3(1355.16,1940.68,102.45), maxbau = 3000, org = "CidadeAlta", perm = "perm.baucidadealta", weebhook = "" }, 
    [32] = { coords = vec3(-1522.99,4732.8,63.69), maxbau = 3000, org = "NovaHolanda", perm = "perm.baunovaholanda", weebhook = "" }, 
    [33] = { coords = vec3(-811.38,181.17,76.73), maxbau = 3000, org = "Colombia", perm = "perm.baucolombia", weebhook = "" }, 
    [34] = { coords = vec3(-149.51,-1603.14,35.03), maxbau = 3000, org = "VilaKennedy", perm = "perm.bauvilakennedy", weebhook = "" }, 
    [35] = { coords = vec3(1384.82,-1274.55,78.69), maxbau = 3000, org = "MorroDoDende", perm = "perm.baumorrododende", weebhook = "" }, 
    [36] = { coords = vec3(-815.28,-722.03,23.78), maxbau = 3000, org = "China", perm = "perm.bauchina", weebhook = "" }, 
    [37] = { coords = vec3(766.98,2513.28,78.07), maxbau = 3000, org = "Jagata", perm = "perm.baujagata", weebhook = "" }, 
    [38] = { coords = vec3(-2347.68,1717.82,230.15), maxbau = 3000, org = "Franca", perm = "perm.baufranca", weebhook = "" }, 
    [39] = { coords = vec3(1355.16,1940.68,102.45), maxbau = 3000, org = "Fazendinha", perm = "perm.baufazendinha", weebhook = "" }, 
    [40] = { coords = vec3(119.52,-1968.54,21.33), maxbau = 3000, org = "VilaAlianca", perm = "perm.bauvilaalianca", weebhook = "" }, 
    
    
    
    -- POLICIA
    [41] = { coords = vec3(-1784.42,2997.16,32.81), maxbau = 3000, org = "Exercito", perm = "perm.exercito", weebhook = "" }, 
    [42] = { coords = vec3(-2065.74,-457.23,12.27), maxbau = 3000, org = "Membro-Core", perm = "perm.baucore", weebhook = "" }, -- 
    [43] = { coords = vec3(-1704.4,-766.04,10.75), maxbau = 3000, org = "Membro-Bope", perm = "perm.baubope", weebhook = "" }, -- 
    [44] = { coords = vec3(2615.15,5284.65,51.96), maxbau = 3000, org = "Membro-Prf", perm = "perm.bauprf", weebhook = "" }, -- 
    [45] = { coords = vec3(207.49,-1659.17,29.81 ), maxbau = 3000, org = "Membro-Bombeiro", perm = "perm.bombeiro", weebhook = "" }, -- 

    
    
    
}



cfg.stores = {
    ["Medicamentos"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER 

        items = {
            none = { item = "none", priceBuy = nil, priceSell = nil, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            amoxilina = { item = "amoxilina", priceBuy = 0, priceSell = nil, amount = 1, slot = 2 },
    		cataflan = { item = "cataflan", priceBuy = 0, priceSell = nil, amount = 1, slot = 3 },
            dipirona = { item = "dipirona", priceBuy = 0, priceSell = nil, amount = 1, slot = 4 },
    		cicatricure = { item = "cicatricure", priceBuy = 0, priceSell = nil, amount = 1 , slot = 5},
            clozapina = { item = "clozapina", priceBuy = 0, priceSell = nil, amount = 1, slot = 6 },
            paracetamol = { item = "paracetamol", priceBuy = 0, priceSell = nil, amount = 1, slot = 7 },
    		rivotril = { item = "rivotril", priceBuy = 0, priceSell = nil, amount = 1, slot = 8 },
            riopan = { item = "riopan", priceBuy = 0, priceSell = nil, amount = 1, slot = 9 },
    		luftal = { item = "luftal", priceBuy = 0, priceSell = nil, amount = 1, slot = 10 },
            coumadin = { item = "coumadin", priceBuy = 0, priceSell = nil, amount = 1, slot = 11 },
    		dorflex = { item = "dorflex", priceBuy = 0, priceSell = nil, amount = 1, slot = 12 },
            anticoncepcional = { item = "anticoncepcional", priceBuy = 0, priceSell = nil, amount = 1, slot = 13 },
            fluoxetina = { item = "fluoxetina", priceBuy = 0, priceSell = nil, amount = 1, slot = 14 },
            camisinha = { item = "camisinha", priceBuy = 0, priceSell = nil, amount = 1, slot = 15 }
        }
    },

    ["Oficina"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            pneus = { item = "pneus", priceBuy = 500, priceSell = nil, amount = 1, slot = 2 },
    		repairkit2 = { item = "repairkit2", priceBuy = 500, priceSell = nil, amount = 1, slot = 3 },
    		kitnitro = { item = "kitnitro", priceBuy = 250000, priceSell = nil, amount = 1, slot = 4 },
        }
    },

    ["Peixes"] = { 
        bonus = true,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            tilapia = { item = "tilapia", priceBuy = nil, priceSell = 750, amount = 1, slot = 2 },
            pacu = { item = "pacu", priceBuy = nil, priceSell = 750, amount = 1, slot = 3},
            tucunare = { item = "tucunare", priceBuy = nil, priceSell = 750, amount = 1, slot = 4 },
            salmao = { item = "salmao", priceBuy = nil, priceSell = 750, amount = 1, slot = 5 },
            dourado = { item = "dourado", priceBuy = nil, priceSell = 750, amount = 1, slot = 6},
        },
    },

    ["Loja de Bebidas"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            vodka = { item = "vodka", priceBuy = 200, priceSell = nil, amount = 1, slot = 2 },
            cerveja = { item = "cerveja", priceBuy = 200, priceSell = nil, amount = 1, slot = 3},
            corote = { item = "corote", priceBuy = 200, priceSell = nil, amount = 1, slot = 4 },
            whisky = { item = "whisky", priceBuy = 200, priceSell = nil, amount = 1, slot = 5 },
            absinto = { item = "absinto", priceBuy = 200, priceSell = nil, amount = 1, slot = 6 },
        }
    },    

    ["Madeiras"] = {
        bonus = true, 
        money = "limpo",  -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            
            madeira = { item = "madeira", priceBuy = nil, priceSell = 200, amount = 1, slot = 2 }
        },
    },

    ["Joalheria"] = {
        bonus = true, 
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            aluminio = { item = "aluminio", priceBuy = nil, priceSell = 500, amount = 1, slot = 2 },
            bronze = { item = "bronze", priceBuy = nil, priceSell = 550, amount = 1, slot = 3 },
            safira = { item = "safira", priceBuy = nil, priceSell = 650, amount = 1, slot = 4 },
            rubi = { item = "rubi", priceBuy = nil, priceSell = 600, amount = 1, slot = 5 },
            ouro = { item = "ouro", priceBuy = nil, priceSell = 580, amount = 1, slot = 6 },
        },


    },

    ["Tomate"] = {
        bonus = true, 
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            tomate = { item = "tomate", priceBuy = nil, priceSell = 350, amount = 1, slot = 2 },
        },
    },

    ["Mercado Negro"] = {
        bonus = false, 
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO

            -- keycard = { item = "keycard", priceBuy = 15000, priceSell = nil, amount = 1, slot = 2 },
            algemas = { item = "algemas", priceBuy = 80000, priceSell = nil, amount = 1, slot = 2 },
            corda = { item = "corda", priceBuy = 50000, priceSell = nil, amount = 1,  slot = 3 },
            capuz = { item = "capuz", priceBuy = 45000, priceSell = nil, amount = 1, slot = 4 },
            --c4 = { item = "c4", priceBuy = 4000, priceSell = nil, amount = 1, slot = 6 },
        },
    },

    ["Vanilla"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            -- cocacola = { item = "cocacola", priceBuy = 50, priceSell = nil, amount = 1, slot = 2},
            -- sucol = { item = "sucol", priceBuy = 50, priceSell = nil, amount = 1, slot = 3},
            -- sucol2 = { item = "sucol2", priceBuy = 50, priceSell = nil, amount = 1, slot = 4 },
            -- water = { item = "water", priceBuy = 50, priceSell = nil, amount = 1, slot = 5},
            -- cafe = { item = "cafe", priceBuy = 50, priceSell = nil, amount = 1, slot = 6 },
            -- energetico = { item = "energetico", priceBuy = 5000, priceSell = nil, amount = 1, slot = 7},
            vodka = { item = "vodka", priceBuy = 15, priceSell = nil, amount = 1, slot = 2 },
            cerveja = { item = "cerveja", priceBuy = 15, priceSell = nil, amount = 1, slot = 3},
            corote = { item = "corote", priceBuy = 15, priceSell = nil, amount = 1, slot = 4 },
            whisky = { item = "whisky", priceBuy = 15, priceSell = nil, amount = 1, slot = 5 },
            absinto = { item = "absinto", priceBuy = 15, priceSell = nil, amount = 1, slot = 6 },
        }
    },

    ["Cassino"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            -- cocacola = { item = "cocacola", priceBuy = 50, priceSell = nil, amount = 1, slot = 2},
            -- sucol = { item = "sucol", priceBuy = 50, priceSell = nil, amount = 1, slot = 3},
            -- sucol2 = { item = "sucol2", priceBuy = 50, priceSell = nil, amount = 1, slot = 4 },
            -- water = { item = "water", priceBuy = 50, priceSell = nil, amount = 1, slot = 5},
            -- cafe = { item = "cafe", priceBuy = 50, priceSell = nil, amount = 1, slot = 6 },
            -- energetico = { item = "energetico", priceBuy = 5000, priceSell = nil, amount = 1, slot = 7},
            vodka = { item = "vodka", priceBuy = 15, priceSell = nil, amount = 1, slot = 2 },
            cerveja = { item = "cerveja", priceBuy = 15, priceSell = nil, amount = 1, slot = 3},
            corote = { item = "corote", priceBuy = 15, priceSell = nil, amount = 1, slot = 4 },
            whisky = { item = "whisky", priceBuy = 15, priceSell = nil, amount = 1, slot = 5 },
            absinto = { item = "absinto", priceBuy = 15, priceSell = nil, amount = 1, slot = 6 },
        }
    },

    ["Ammunation"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            scubagear = { item = "scubagear", priceBuy = 500, priceSell = 0, amount = 1, slot = 2},
            -- attachs = { item = "attachs", priceBuy = 10000, priceSell = 0, amount = 1, slot = 3},
            WEAPON_KNIFE = { item = "WEAPON_KNIFE", priceBuy = 100000, priceSell = 0, amount = 1, slot = 3 },
            WEAPON_DAGGER = { item = "WEAPON_DAGGER", priceBuy = 100000, priceSell = 0, amount = 1, slot = 4 },
            WEAPON_KNUCKLE = { item = "WEAPON_KNUCKLE", priceBuy = 100000, priceSell = 0, amount = 1, slot = 5 },
            WEAPON_MACHETE = { item = "WEAPON_MACHETE", priceBuy = 100000, priceSell = 0, amount = 1, slot = 6 },
            WEAPON_SWITCHBLADE = { item = "WEAPON_SWITCHBLADE", priceBuy = 100000, priceSell = 0, amount = 1, slot = 7 },
            WEAPON_WRENCH = { item = "WEAPON_WRENCH", priceBuy = 100000, priceSell = 0, amount = 1, slot = 8 },
            WEAPON_HAMMER = { item = "WEAPON_HAMMER", priceBuy = 100000, priceSell = 0, amount = 1, slot = 9 },
            WEAPON_GOLFCLUB = { item = "WEAPON_GOLFCLUB", priceBuy = 100000, priceSell = 0, amount = 1, slot = 10 },
            WEAPON_CROWBAR = { item = "WEAPON_CROWBAR", priceBuy = 100000, priceSell = 0, amount = 1, slot = 11 },
            WEAPON_HATCHET = { item = "WEAPON_HATCHET", priceBuy = 100000, priceSell = 0, amount = 1, slot = 12 },
            WEAPON_FLASHLIGHT = { item = "WEAPON_FLASHLIGHT", priceBuy = 100000, priceSell = 0, amount = 1, slot = 13 },
            WEAPON_BAT = { item = "WEAPON_BAT", priceBuy = 100000, priceSell = 0, amount = 1, slot = 14 },
            WEAPON_BOTTLE = { item = "WEAPON_BOTTLE", priceBuy = 100000, priceSell = 0, amount = 1, slot = 15 },
            WEAPON_BATTLEAXE = { item = "WEAPON_BATTLEAXE", priceBuy = 100000, priceSell = 0, amount = 1, slot = 16 },
            WEAPON_POOLCUE = { item = "WEAPON_POOLCUE", priceBuy = 100000, priceSell = 0, amount = 1, slot = 17 },
            GADGET_PARACHUTE = { item = "GADGET_PARACHUTE", priceBuy = 10000, priceSell = 0, amount = 1, slot = 18 },

        }
    },

    ["Mergulho"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            scubagear = { item = "scubagear", priceBuy = 500, priceSell = 0, amount = 1, slot = 2},

        }
    },

    ["Facas"] = {
        bonus = true, 
        money = "limpo",  -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            
            WEAPON_HATCHET = { item = "WEAPON_HATCHET", priceBuy = 20000, priceSell = nil, amount = 1, slot = 2 }
        },
    },

    ["Mercado"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            -- repairkit2 = { item = "repairkit2", priceBuy = 10000, priceSell = nil, amount = 1, slot = 2 },
            militec = { item = "militec", priceBuy = 10000, priceSell = nil, amount = 1, slot = 2 },
            pneus = { item = "pneus", priceBuy = 5000, priceSell = nil, amount = 1, slot = 3 },
            mochila = { item = "mochila", priceBuy = 6000, priceSell = nil, amount = 1, slot = 4 },
            radio = { item = "radio", priceBuy = 2000, priceSell = nil, amount = 1, slot = 5 },
            celular = { item = "celular", priceBuy = 3000, priceSell = nil, amount = 1, slot = 6 },
            roupas = { item = "roupas", priceBuy = 10000, priceSell = nil, amount = 1, slot = 7 },
            alianca = { item = "alianca", priceBuy = 50000, priceSell = nil, amount = 1, slot = 8 },
            energetico = { item = "energetico", priceBuy = 15000, priceSell = nil, amount = 1, slot = 9},
            fireworks = { item = "fireworks", priceBuy = 5000, priceSell = nil, amount = 1, slot = 10},
        }
    },

    ["Acessorios"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            mochila = { item = "mochila", priceBuy = 3000, priceSell = nil, amount = 1, slot = 2},
            roupas = { item = "roupas", priceBuy = 5000, priceSell = nil, amount = 1, slot = 3},
        }
    },

    ["DigitalDen"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            celular = { item = "celular", priceBuy = 2000, priceSell = nil, amount = 1, slot = 2},
            radio = { item = "radio", priceBuy = 1000, priceSell = nil, amount = 1, slot = 3},
        }
    },


    ["Farmacia"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER 

        items = {
            none = { item = "none", priceBuy = nil, priceSell = nil, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            amoxilina = { item = "amoxilina", priceBuy = 1000, priceSell = nil, amount = 1, slot = 2 },
    		cataflan = { item = "cataflan", priceBuy = 1000, priceSell = nil, amount = 1, slot = 3 },
            dipirona = { item = "dipirona", priceBuy = 1000, priceSell = nil, amount = 1, slot = 4 },
    		cicatricure = { item = "cicatricure", priceBuy = 1000, priceSell = nil, amount = 1 , slot = 5},
            clozapina = { item = "clozapina", priceBuy = 1000, priceSell = nil, amount = 1, slot = 6 },
            paracetamol = { item = "paracetamol", priceBuy = 1000, priceSell = nil, amount = 1, slot = 7 },
    		rivotril = { item = "rivotril", priceBuy = 1000, priceSell = nil, amount = 1, slot = 8 },
            riopan = { item = "riopan", priceBuy = 1000, priceSell = nil, amount = 1, slot = 9 },
    		luftal = { item = "luftal", priceBuy = 1000, priceSell = nil, amount = 1, slot = 10 },
            coumadin = { item = "coumadin", priceBuy = 1000, priceSell = nil, amount = 1, slot = 11 },
    		dorflex = { item = "dorflex", priceBuy = 1000, priceSell = nil, amount = 1, slot = 12 },
            anticoncepcional = { item = "anticoncepcional", priceBuy = 1000, priceSell = nil, amount = 1, slot = 13 },
            fluoxetina = { item = "fluoxetina", priceBuy = 1000, priceSell = nil, amount = 1, slot = 14 },
            camisinha = { item = "camisinha", priceBuy = 1000, priceSell = nil, amount = 1, slot = 15 },
        }
    },

    ["FarmaciaLider"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER 

        items = {
            none = { item = "none", priceBuy = nil, priceSell = nil, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            amoxilina = { item = "amoxilina", priceBuy = 1000, priceSell = nil, amount = 1, slot = 2 },
    		cataflan = { item = "cataflan", priceBuy = 1000, priceSell = nil, amount = 1, slot = 3 },
            dipirona = { item = "dipirona", priceBuy = 1000, priceSell = nil, amount = 1, slot = 4 },
    		cicatricure = { item = "cicatricure", priceBuy = 1000, priceSell = nil, amount = 1 , slot = 5},
            clozapina = { item = "clozapina", priceBuy = 1000, priceSell = nil, amount = 1, slot = 6 },
            paracetamol = { item = "paracetamol", priceBuy = 1000, priceSell = nil, amount = 1, slot = 7 },
    		rivotril = { item = "rivotril", priceBuy = 1000, priceSell = nil, amount = 1, slot = 8 },
            riopan = { item = "riopan", priceBuy = 1000, priceSell = nil, amount = 1, slot = 9 },
    		luftal = { item = "luftal", priceBuy = 1000, priceSell = nil, amount = 1, slot = 10 },
            coumadin = { item = "coumadin", priceBuy = 1000, priceSell = nil, amount = 1, slot = 11 },
    		dorflex = { item = "dorflex", priceBuy = 1000, priceSell = nil, amount = 1, slot = 12 },
            anticoncepcional = { item = "anticoncepcional", priceBuy = 1000, priceSell = nil, amount = 1, slot = 13 },
            fluoxetina = { item = "fluoxetina", priceBuy = 1000, priceSell = nil, amount = 1, slot = 14 },
            camisinha = { item = "camisinha", priceBuy = 1000, priceSell = nil, amount = 1, slot = 15 },
        }
    },

    ["Corrida"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            ticket = { item = "ticket", priceBuy = 10000, priceSell = nil, amount = 1, slot = 2 },

        }
    },

    ["Bandagem"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER 

        items = {
            none = { item = "none", priceBuy = nil, priceSell = nil, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            bandagem = { item = "bandagem", priceBuy = 10000, priceSell = nil, amount = 1, slot = 2 },
        }
    },
    
    ["Pascoa"] = {
        bonus = false,
        money = "limpo", -- MONEY PARA RECEBER 

        items = {
            none = { item = "none", priceBuy = nil, priceSell = nil, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            ovodapascoa = { item = "ovodapascoa", priceBuy = 20000, priceSell = nil, amount = 1, slot = 2 },
        }
    },
   
    ["Graos"] = {
        bonus = true, 
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            graosimpuros = { item = "graosimpuros", priceBuy = nil, priceSell = 200, amount = 1, slot = 2 },
        },
    },

    ["Tartarugas"] = {
        bonus = true, 
        money = "limpo", -- MONEY PARA RECEBER

        items = {
            none = { item = "none", priceBuy = 1, priceSell = 1, amount = 1, slot = 1 }, -- NAO MEXER SLOT PADRAO
            tartaruga = { item = "tartaruga", priceBuy = nil, priceSell = 3000, amount = 1, slot = 2 },
        },
    },
}

cfg.storesLocs = {
    { type = "Tartarugas", blip = true, blipName = "Venda de Tartaruga", blipID = 277, blipColor = 0, perm = nil, coords = vector3(3725.21,4525.16,22.48) },
    { type = "Facas", blip = false, blipName = "Ponto de Venda", blipID = 1, blipColor = 1, perm = nil, coords = vector3(-840.61,5398.96,34.62) },
    { type = "Peixes", blip = true, blipName = "Venda de Peixe", blipID = 277, blipColor = 0, perm = nil, coords = vector3(-1817.08,-1193.61,14.31) },
    { type = "Madeiras",  blip = false, blipName = "Ponto de Venda", blipID = 1, blipColor = 1, perm = nil, coords = vector3(-552.33,5348.4,74.76) },
    { type = "Joalheria",  blip = true, blipName = "Joalheria", blipID = 617, blipColor = 0, perm = nil, coords = vector3(2954.18,2743.36,43.61 ) },
    -- { type = "Mercado Negro", blip = false, blipName = "Ponto de Venda", blipID = 1, blipColor = 1, perm = nil, coords = vector3(706.09,-965.79,30.42) },
    { type = "Medicamentos", blip = false, blipName = nil, blipID = 0, blipColor = 0, perm = "perm.unizk", coords = vector3(-457.68,-314.21,34.92-0.2) },
    { type = "Medicamentos", blip = false, blipName = nil, blipID = 0, blipColor = 0, perm = "perm.unizk", coords = vector3(-461.23,-305.0,34.92-0.2) },
    { type = "Medicamentos", blip = false, blipName = nil, blipID = 0, blipColor = 0, perm = "perm.unizk", coords = vector3(-466.2,-293.94,34.92-0.2) },
    { type = "Oficina", blip = false, blipName = nil, blipID = 0, blipColor = 0, perm = "perm.gerentemecanica", coords = vector3(58.46,-1774.21,29.28) },
    { type = "Graos", blip = true, blipName = "Venda Graos", blipID = 478, blipColor = 0, perm = nil, coords = vector3(-112.49,2818.82,53.16) },
    { type = "Tomate", blip = true, blipName = "Venda de Tomate", blipID = 478, blipColor = 1, perm = nil, coords = vector3(1590.43,6457.89,26.02) },

    { type = "Farmacia", blip = false, blipName = "Farmacia", blipID = 446, blipColor = 51, perm = nil, coords = vector3(1147.65,-1552.73,35.38) },
    
    { type = "Bandagem", blip = false, blipName = "Farmacia", blipID = 446, blipColor = 51, perm = nil, coords = vector3(-818.4,-719.3,23.78) },
    { type = "Bandagem", blip = false, blipName = "Farmacia", blipID = 446, blipColor = 51, perm = nil, coords = vector3(1139.39,-1538.12,35.38) },
    -- { type = "Pascoa", blip = false, blipName = "Pascoa", blipID = 446, blipColor = 51, perm = nil, coords = vector3(235.87,-893.73,29.94) },
    
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(1692.62,3759.50,34.70) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(252.89,-49.25,69.94) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(843.28,-1034.02,28.19) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(-331.35,6083.45,31.45) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(-663.15,-934.92,21.82) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(-1305.18,-393.48,36.69) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(-1118.80,2698.22,18.55) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(2568.83,293.89,108.73) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(-3172.68,1087.10,20.83) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(21.32,-1106.44,29.79) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(811.19,-2157.67,29.61) },
    { type = "Ammunation", blip = true, blipName = "Ammunation", blipID = 76, blipColor = 0, perm = nil, coords = vector3(-821.6,-739.66,24.03) },
    

    
    
    { type = "Mergulho", blip = true, blipName = "Mergulho", blipID = 76, blipColor = 0, perm = nil, coords = vector3(3817.27,4483.02,6.37) },

    

    
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-47.52,-1756.85,29.42) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-1223.38,-907.15,12.32) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(25.74,-1345.26,29.49) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(1135.70,-981.79,46.41) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(1163.53,-323.54,69.20) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(374.19,327.50,103.56) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(2555.35,382.16,108.62) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(2676.76,3281.57,55.24) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(1960.50,3741.84,32.34) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(1393.23,3605.17,34.98) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(1166.08,2709.24,38.15) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(547.98,2669.75,42.15) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3( 1698.30,4924.37,42.06) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(1729.54,6415.76,35.03) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-3243.90,1001.40,12.83) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-2968.00,390.80,15.04) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-3041.17,585.16,7.90) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-1820.55,792.77,138.11) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-1486.87,-379.77,40.16) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-707.40,-913.68,19.21) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-1611.99,-1078.24,13.08) },
    { type = "Mercado", blip = true, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(190.04,-889.46,30.72) },
    
    { type = "Mercado", blip = false, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-1692.6,-958.12,7.75) },
    { type = "Mercado", blip = false, blipName = "Mercado", blipID = 52, blipColor = 0, perm = nil, coords = vector3(-1616.0,-987.87,13.09) },



    
    { type = "Acessorios", blip = false, blipName = "Acessorios", blipID = 52, blipColor = 0, perm = nil, coords = vector3(77.3,-1389.44,29.38 ) },
    { type = "Vanilla", blip = false, blipName = "Vanilla", blipID = 52, blipColor = 2, perm = "perm.vanilla", coords = vector3(129.36,-1283.83,29.27 ) },
    { type = "Cassino", blip = false, blipName = "Cassino", blipID = 52, blipColor = 2, perm = "perm.cassino", coords = vector3(937.36,26.77,71.84 ) },
    { type = "DigitalDen", blip = true, blipName = "DigitalDen", blipID = 459, blipColor = 0, perm = nil, coords = vector3(-656.93,-857.51,24.5) },

    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-1149.05,372.48,71.31) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-831.37,-729.87,28.05) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-368.83,204.15,77.48) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-51.98,830.14,227.78) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-1511.69,-1514.69,6.23) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-1504.31,-1510.21,6.23) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-2580.69,1869.92,163.8) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-2571.46,1879.8,163.78) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(4900.5,-4942.86,3.39) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(4907.81,-4938.59,3.37) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-887.55,50.23,49.13) },
    -- { type = "Loja de Bebidas", blip = false, blipName = "Loja de Bebidas", blipID = 52, blipColor = 2, perm = nil, coords = vector3(-159.96,898.16,233.45) },
    

    
}