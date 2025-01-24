CraftConfig = {
    Tables = {
-------------- [ DOMINAS ] --------------
        -- ARMAS
        ['PCC'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.baupcc',
                location = vec3(-1776.11,-131.23,88.66)
            },

            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pecadearma" , amount = 90, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 }
                    }
                },
                
                {
                    item = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 45 },  
                        { item = "metal" , amount = 45 }
                    }
                },
                
                {
                    item = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 60 },  
                        { item = "metal" , amount = 60 }
                    }
                },  
                
                {
                    item = "WEAPON_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 275 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 65 },  
                        { item = "metal" , amount = 65 }
                    }
                },  
        
                {
                    item = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 75 },  
                        { item = "metal" , amount = 75 }
                    }
                },  
                
                {
                    item = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 90 },  
                        { item = "metal" , amount = 90 }
                    }
                },  
                
                {
                    item = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 120 },  
                        { item = "metal" , amount = 120 }
                    }
                }
            }
        },
        ['Mafia'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.baumafia',
                location = vec3(-2679.52,1327.14,144.25)
            },

            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pecadearma" , amount = 90, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 }
                    }
                },
                
                {
                    item = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 45 },  
                        { item = "metal" , amount = 45 }
                    }
                },
                
                {
                    item = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 60 },  
                        { item = "metal" , amount = 60 }
                    }
                },  
                
                {
                    item = "WEAPON_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 275 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 65 },  
                        { item = "metal" , amount = 65 }
                    }
                },  
        
                {
                    item = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 75 },  
                        { item = "metal" , amount = 75 }
                    }
                },  
                
                {
                    item = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 90 },  
                        { item = "metal" , amount = 90 }
                    }
                },  
                
                {
                    item = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 120 },  
                        { item = "metal" , amount = 120 }
                    }
                }
            }
        },
        ['CV'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.baucv',
                location = vec3(3029.49,3008.73,91.58)
            },

            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pecadearma" , amount = 90, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 }
                    }
                },
                
                {
                    item = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 45 },  
                        { item = "metal" , amount = 45 }
                    }
                },
                
                {
                    item = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 60 },  
                        { item = "metal" , amount = 60 }
                    }
                },  
                
                {
                    item = "WEAPON_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 275 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 65 },  
                        { item = "metal" , amount = 65 }
                    }
                },  
        
                {
                    item = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 75 },  
                        { item = "metal" , amount = 75 }
                    }
                },  
                
                {
                    item = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 90 },  
                        { item = "metal" , amount = 90 }
                    }
                },  
                
                {
                    item = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 120 },  
                        { item = "metal" , amount = 120 }
                    }
                }
            }
        },
        ['Milicia'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.baumilicia',
                location = vec3(-3133.5,1393.03,23.94)
            },

            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pecadearma" , amount = 90, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 }
                    }
                },
                
                {
                    item = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 45 },  
                        { item = "metal" , amount = 45 }
                    }
                },
                
                {
                    item = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 60 },  
                        { item = "metal" , amount = 60 }
                    }
                },  
                
                {
                    item = "WEAPON_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 275 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 65 },  
                        { item = "metal" , amount = 65 }
                    }
                },  
        
                {
                    item = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 75 },  
                        { item = "metal" , amount = 75 }
                    }
                },  
                
                {
                    item = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 90 },  
                        { item = "metal" , amount = 90 }
                    }
                },  
                
                {
                    item = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 120 },  
                        { item = "metal" , amount = 120 }
                    }
                }
            }
        },
        ['Grota'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.baugrota',
                location = vec3(1172.23,-115.02,57.78)
            },

            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pecadearma" , amount = 90, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 }
                    }
                },
                
                {
                    item = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 45 },  
                        { item = "metal" , amount = 45 }
                    }
                },
                
                {
                    item = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 60 },  
                        { item = "metal" , amount = 60 }
                    }
                },  
                
                {
                    item = "WEAPON_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 275 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 65 },  
                        { item = "metal" , amount = 65 }
                    }
                },  
        
                {
                    item = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 75 },  
                        { item = "metal" , amount = 75 }
                    }
                },  
                
                {
                    item = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 90 },  
                        { item = "metal" , amount = 90 }
                    }
                },  
                
                {
                    item = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
    
                    requires = {
                        { item = "pecadearma" , amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 120 },  
                        { item = "metal" , amount = 120 }
                    }
                }
            }
        },

        ['Dominacao [ARMAS]'] = {
            Config = {
                hasDominas = 'Armas',
                permission = 'perm.snovato',
                location = vec3(582.3,-3110.83,6.07)
            },

            Itens = {
                {
                    item = "WEAPON_APPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pecadearma" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 5 },  
                        { item = "metal" , amount = 5 }, 
                        { item = "money" , amount = 25000 } 
                    }
                },
                

            }
        },

        -- MUNICAO
        ['Camorra'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.baucamorra',
                location = vec3(1398.44,1152.43,108.14)
            },

            Itens = {
                {
                    item = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 75 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                {
                    item = "AMMO_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                
                {
                    item = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                 
                {
                    item = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
                
                {
                    item = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },  
                    }
                },
            }
        },
        ['Yakuza'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.bauyakuza',
                location = vec3(-877.14,-1449.49,7.57)
            },

            Itens = {
                {
                    item = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 75 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                {
                    item = "AMMO_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                
                {
                    item = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                 
                {
                    item = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
                
                {
                    item = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },  
                    }
                },
            }
        },
        ['ADA'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.bauada',
                location = vec3(2006.42,439.84,171.41)
            },

            Itens = {
                {
                    item = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 75 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                {
                    item = "AMMO_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                
                {
                    item = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                 
                {
                    item = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
                
                {
                    item = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },  
                    }
                },
            }
        },
        ['FDN'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.baufdn',
                location = vec3(880.32,1999.05,78.42)
            },

            Itens = {
                {
                    item = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 75 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                {
                    item = "AMMO_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                
                {
                    item = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                 
                {
                    item = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
                
                {
                    item = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },  
                    }
                },
            }
        },
        ['TCP'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.bautcp',
                location = vec3(1344.8,-796.81,87.3)
            },

            Itens = {
                {
                    item = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 75 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 }  
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                {
                    item = "AMMO_SMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                
                {
                    item = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
                 
                {
                    item = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
                
                {
                    item = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },  
                    }
                },
            }
        },

        -- LAVAGEM
        ['Dominacao [LAVAGEM]'] = {
            Config = {
                hasDominas = 'Lavagem',
                permission = 'perm.snovato',
                location = vec3(-234.42,-1999.2,24.69)
            },

            Itens = {
                {
                    item = "money", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 180000, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante" , amount = 20 }  
                    }
                },

            }
        },
        
        -- DESMANCHE
        ['CDD'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.cdd',
                location = vec3(-1188.43,-1729.96,11.9)
            },

            Itens = {
                {
                    item = "lockpick", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 }  
                    }
                },

            }
        },
        ['HellsAngels'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.hellsangels',
                location = vec3(990.22,-98.04,74.85)
            },

            Itens = {
                {
                    item = "lockpick", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 }  
                    }
                },

            }
        },
        ['Lacoste'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lacoste',
                location = vec3(730.3,-1072.0,22.16)
            },

            Itens = {
                {
                    item = "lockpick", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 }  
                    }
                },

            }
        },
        ['Rocinha'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.rocinha',
                location = vec3(-2461.74,-209.6,35.01)
            },

            Itens = {
                {
                    item = "lockpick", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 }  
                    }
                },

            }
        },
        ['Pedreira'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.pedreira',
                location = vec3(1568.0,-2166.15,77.56)
            },

            Itens = {
                {
                    item = "lockpick", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 }  
                    }
                },

            }
        },

        -- CONTRABANDO
        ['Dominacao [CONTRABANDO]'] = {
            Config = {
                hasDominas = 'Contrabando',
                permission = 'perm.snovato',
                location = vec3(-316.19,-2784.9,5.0)
            },

            Itens = {
                {
                    item = "colete", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 60 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 60 }  
                    }
                },

            }
        },

        ['Mercenarios'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.baumercenarios',
                location = vec3(-112.6,992.22,240.83)
            },

            Itens = {
                {
                    item = "ticket", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "papel" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "capuz", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 20 }  
                    }
                },

                {
                    item = "corda", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 25 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 25 }  
                    }
                },

                {
                    item = "algemas", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 40 }  
                    }
                },

                {
                    item = "garrafanitro", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 },
                        { item = "money" , amount = 100000 }
                    }
                },
            }
        },
        ['VilaDoChaves'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.viladochaves',
                location = vec3(316.01,-206.84,54.07)
            },

            Itens = {
                {
                    item = "ticket", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "papel" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "capuz", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 20 }  
                    }
                },

                {
                    item = "corda", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 25 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 25 }  
                    }
                },

                {
                    item = "algemas", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 40 }  
                    }
                },

                {
                    item = "garrafanitro", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 },
                        { item = "money" , amount = 100000 }
                    }
                },
            }
        },
        ['Anonymous'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.bauanonymous',
                location = vec3(719.06,-961.64,30.4)
            },

            Itens = {
                {
                    item = "ticket", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "papel" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "capuz", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 20 }  
                    }
                },

                {
                    item = "corda", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 25 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 25 }  
                    }
                },

                {
                    item = "algemas", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 40 }  
                    }
                },

                {
                    item = "garrafanitro", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 },
                        { item = "money" , amount = 100000 }
                    }
                },
            }
        },
        ['Serpentes'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.bauserpentes',
                location = vec3(391.72,-21.61,99.65)
            },

            Itens = {
                {
                    item = "ticket", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "papel" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "capuz", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 20 }  
                    }
                },

                {
                    item = "corda", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 25 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 25 }  
                    }
                },

                {
                    item = "algemas", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 40 }  
                    }
                },

                {
                    item = "garrafanitro", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 },
                        { item = "money" , amount = 100000 }
                    }
                },
            }
        },
        ['Abutres'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.bauabutres',
                location = vec3(-575.28,289.24,79.18)
            },

            Itens = {
                {
                    item = "ticket", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "papel" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "capuz", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 20 }  
                    }
                },

                {
                    item = "corda", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 25 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 25 }  
                    }
                },

                {
                    item = "algemas", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 40 }  
                    }
                },

                {
                    item = "garrafanitro", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 50 },
                        { item = "money" , amount = 100000 }
                    }
                },
            }
        },

-------------- [ LAVAGEM SEM DOMINACAO ]------------------------
        ['Vanilla'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.vanilla",
                location = vec3(121.2,-1280.88,29.47)
            },

            Itens = {
                {
                    item = "money", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante" , amount = 20 }  
                    }
                },

            }
        },

        ['Bahamas'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.bahamas",
                location = vec3(-1367.55,-625.49,30.31)
            },

            Itens = {
                {
                    item = "money", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante" , amount = 20 }  
                    }
                },

            }
        },

        ['Medusa'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.medusa",
                location = vec3(755.65,-554.59,29.34)
            },

            Itens = {
                {
                    item = "money", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante" , amount = 20 }  
                    }
                },

            }
        },

        ['Galaxy'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.galaxy",
                location = vec3(376.26,275.74,92.4)
            },

            Itens = {
                {
                    item = "money", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante" , amount = 20 }  
                    }
                },

            }
        },

        ['Cassino'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.cassino",
                location = vec3(950.77,32.83,71.83)
            },

            Itens = {
                {
                    item = "money", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante" , amount = 20 }  
                    }
                },

            }
        },

-------------- [ OUTROS ] --------------            
        -- MACONHA
        ['Babilonia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.babilonia",
                location = vec3(2462.8,3797.64,48.43)
            },

            Itens = {
                {
                    item = "maconha", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "folhamaconha" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
        ['Vidigal'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.vidigal",
                location = vec3(296.43,1858.87,209.65)
            },

            Itens = {
                {
                    item = "maconha", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "folhamaconha" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },

        -- COCINA
        ['FavelaDaMare'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.faveladamare",
                location = vec3(-1908.97,4527.03,20.59)
            },

            Itens = {
                {
                    item = "cocaina", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pastabase" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
        ['Alemao'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.complexodoalemao",
                location = vec3(-252.72,1532.54,337.57)
            },

            Itens = {
                {
                    item = "cocaina", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pastabase" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
        ['MorroDoMakakero'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.morrodomakakero",
                location = vec3(799.53,-293.8,69.45)
            },

            Itens = {
                {
                    item = "cocaina", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pastabase" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },

        -- LANCA PERFUME
        ['China'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.china",
                location = vec3(-825.45,-723.82,23.78)
            },

            Itens = {
                {
                    item = "lancaperfume", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "respingodesolda" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
        ['MorroDoDende'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.morrododende",
                location = vec3(1386.86,-1262.71,82.02)
            },

            Itens = {
                {
                    item = "lancaperfume", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "respingodesolda" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },

        -- HEROINA
        ['Jagata'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.jagata",
                location = vec3(829.14,2446.22,79.01)
            },

            Itens = {
                {
                    item = "heroina", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "morfina" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
        ['VilaAlianca'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.vilaalianca",
                location = vec3(109.36,-1976.25,20.96)
            },

            Itens = {
                {
                    item = "heroina", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "morfina" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
        ['Cohab'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.cohab",
                location = vec3(335.44,-2018.54,22.39)
            },

            Itens = {
                {
                    item = "heroina", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "morfina" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },

        -- METANFETAMINA
        ['CidadeAlta'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.cidadealta",
                location = vec3(822.47,1062.08,292.58)
            },

            Itens = {
                {
                    item = "metanfetamina", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "anfetamina" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
              
        -- OPIO
        ['VilaKennedy'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.vilakennedy",
                location = vec3(-153.0,-1590.69,35.05)
            },

            Itens = {
                {
                    item = "opio", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "opiopapoula" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
        ['Colombia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.colombia",
                location = vec3(-803.3,185.7,72.61)
            },

            Itens = {
                {
                    item = "opio", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "opiopapoula" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },

        -- HAXIXE
        ['NovaHolanda'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.novaholanda",
                location = vec3(-1510.73,4939.4,66.1)
            },

            Itens = {
                {
                    item = "haxixe", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "resinacannabis" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
             
        -- BALINHA
        ['Franca'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.franca",
                location = vec3(-2341.38,1746.89,230.15)
            },

            Itens = {
                {
                    item = "balinha", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "podemd" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
        ['Fazendinha'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.fazendinha",
                location = vec3(1361.7,1914.56,102.55)
            },

            Itens = {
                {
                    item = "balinha", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "podemd" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },
   
    },

    Storage = {
        -- ARMAS
        ['PCC'] = {
            Config = {
                permission = 'perm.pcc',
                location = vec3(-1714.66,-225.5,61.81),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['gatilho'] = 1000000,
                ['molas'] = 1000000,
                ['metal'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Mafia'] = {
            Config = {
                permission = 'perm.mafia',
                location = vec3(-2679.41,1336.95,140.88),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['gatilho'] = 1000000,
                ['molas'] = 1000000,
                ['metal'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Milicia'] = {
            Config = {
                permission = 'perm.milicia',
                location = vec3(-3157.81,1370.84,26.49),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['gatilho'] = 1000000,
                ['molas'] = 1000000,
                ['metal'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['CV'] = {
            Config = {
                permission = 'perm.cv',
                location = vec3(3020.42,3010.83,91.58),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['gatilho'] = 1000000,
                ['molas'] = 1000000,
                ['metal'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Grota'] = {
            Config = {
                permission = 'perm.grota',
                location = vec3(1254.03,-223.91,96.04),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['gatilho'] = 1000000,
                ['molas'] = 1000000,
                ['metal'] = 1000000,
                ['money'] = 1000000,

            }
        },

        -- MUNIÇÃO
        ['Camorra'] = {
            Config = {
                permission = 'perm.camorra',
                location = vec3(1395.14,1130.44,109.74),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Yakuza'] = {
            Config = {
                permission = 'perm.yakuza',
                location = vec3( -903.11,-1446.0,7.53),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['ADA'] = {
            Config = {
                permission = 'perm.ada',
                location = vec3(1953.13,450.06,170.84),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['FDN'] = {
            Config = {
                permission = 'perm.fdn',
                location = vec3(882.37,1997.08,78.42),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['TCP'] = {
            Config = {
                permission = 'perm.tcp',
                location = vec3(1421.89,-767.74,71.71),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
            }
        },

        -- CONTRABANDO
        ['Mercenarios'] = {
            Config = {
                permission = 'perm.mercenarios',
                location = vec3(-64.04,998.33,239.47),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['papel'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['poliester'] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['VilaDoChaves'] = {
            Config = {
                permission = 'perm.viladochaves',
                location = vec3(337.18,-224.74,58.01),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['papel'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['poliester'] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Anonymous'] = {
            Config = {
                permission = 'perm.anonymous',
                location = vec3(715.44,-974.33,30.4),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['papel'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['poliester'] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Serpentes'] = {
            Config = {
                permission = 'perm.serpentes',
                location = vec3(406.67,2.71,84.93),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['papel'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['poliester'] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Abutres'] = {
            Config = {
                permission = 'perm.abutres',
                location = vec3(-550.29,286.65,82.97),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['papel'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['poliester'] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['money'] = 1000000,
            }
        },

        -- LAVAGEM
        ['Galaxy'] = {
            Config = {
                permission = 'perm.galaxy',
                location = vec3(351.8,288.44,91.19),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
            }
        },
        ['Medusa'] = {
            Config = {
                permission = 'perm.medusa',
                location = vec3(748.69,-573.95,29.37),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
            }
        },
        ['Bahamas'] = {
            Config = {
                permission = 'perm.bahamas',
                location = vec3(-1388.58,-612.58,30.31),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
            }
        },
        ['Vanilla'] = {
            Config = {
                permission = 'perm.vanilla',
                location = vec3(108.85,-1304.58,28.8),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
            }
        },   
        ['Cassino'] = {
            Config = {
                permission = 'perm.cassino',
                location = vec3(961.89,38.67,71.85),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
            }
        },

        -- DESMANCHE
        ['Pedreira'] = {
            Config = {
                permission = 'perm.pedreira',
                location = vec3(1715.1,-2083.04,110.74),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
            }
        },

        ['Rocinha'] = {
            Config = {
                permission = 'perm.rocinha',
                location = vec3(-2453.92,-231.69,36.61),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
            }
        },

        ['Lacoste'] = {
            Config = {
                permission = 'perm.lacoste',
                location = vec3(725.73,-1066.7,28.31),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
            }
        },

        ['CDD'] = {
            Config = {
                permission = 'perm.cdd',
                location = vec3(-1181.92,-1736.41,11.9),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
            }
        },

        ['HellsAngels'] = {
            Config = {
                permission = 'perm.hellsangels',
                location = vec3(977.13,-104.13,74.85),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
            }
        },


        -- COCAINA        
        ['MorroDoMakakero'] = {
            Config = {
                permission = 'perm.morrodomakakero',
                location = vec3(717.67,-282.5,62.26),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pastabase'] = 1000000,
            }
        },
        ['FavelaDaMare'] = {
            Config = {
                permission = 'perm.faveladamera',
                location = vec3(-1937.28,4522.67,20.46),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pastabase'] = 1000000,
            }
        },
        ['Alemao'] = {
            Config = {
                permission = 'perm.complexodoalemao',
                location = vec3(-300.02,1560.45,361.28),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pastabase'] = 1000000,
            }
        },

        -- MACONHA
        ['Vidigal'] = {
            Config = {
                permission = 'perm.vidigal',
                location = vec3(299.91,1879.02,206.58),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['folhamaconha'] = 1000000,
            }
        },
        ['Babilonia'] = {
            Config = {
                permission = 'perm.babilonia',
                location = vec3(2472.41,3800.51,48.43),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['folhamaconha'] = 1000000,
            }
        },
        
        -- METANFETAMINA
        ['CidadeAlta'] = {
            Config = {
                permission = 'perm.cidadealta',
                location = vec3(1387.07,1913.74,102.31),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['anfetamina'] = 1000000,
            }
        },
        ['VilaAlianca'] = {
            Config = {
                permission = 'perm.cidadealta',
                location = vec3(107.1,-1982.63,20.96),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['anfetamina'] = 1000000,
            }
        },

        -- HAXIXE
        ['NovaHolanda'] = {
            Config = {
                permission = 'perm.novaholanda',
                location = vec3(-1522.35,4767.03,63.71),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['resinacannabis'] = 1000000,
            }
        },
        
        -- OPIO
        ['VilaKennedy'] = {
            Config = {
                permission = 'perm.vilakennedy',
                location = vec3(-136.28,-1610.78,35.03),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['opiopapoula'] = 1000000,
            }
        },
        
        ['Colombia'] = {
            Config = {
                permission = 'perm.colombia',
                location = vec3(-806.28,171.57,72.84),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['opiopapoula'] = 1000000,
            }
        },

        -- LANCA PERFUME
        ['MorroDoDende'] = {
            Config = {
                permission = 'perm.morrododende',
                location = vec3(1305.5,-1313.43,52.7),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['respingodesolda'] = 1000000,
            }
        },

        ['China'] = {
            Config = {
                permission = 'perm.china',
                location = vec3(-824.41,-715.59,23.78),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['respingodesolda'] = 1000000,
            }
        },

        -- HEROINA
        ['Jagata'] = {
            Config = {
                permission = 'perm.jagata',
                location = vec3(767.37,2511.55,75.13),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['morfina'] = 1000000,
            }
        },
        ['VilaAlianca'] = {
            Config = {
                permission = 'perm.vilaalianca',
                location = vec3(107.1,-1982.63,20.96),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['morfina'] = 1000000,
            }
        },
        

        -- BALINHA
        ['Franca'] = {
            Config = {
                permission = 'perm.franca',
                location = vec3(-2360.3,1705.72,234.09),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['podemd'] = 1000000,
            }
        },
        ['Fazendinha'] = {
            Config = {
                permission = 'perm.fazendinha',
                location = vec3(1387.07,1913.74,102.31),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['podemd'] = 1000000,
            }
        },
        
    },

    Weebhooks = {
        ['Milicia02'] = "",
        ['Cantagalo'] = "",
        ['Milicia03'] = "",
        ['CDD'] = "",
        ['Playboy'] = "",
        ['Milicia01'] = "",
        ['Yakuza'] = "",
        ['China'] = "",
        ['Bratva'] = "",
        ['Cartel'] = "",
        ['Triade'] = "",
        ['Galaxy'] = "",
        ['Vanilla'] = "",
        ['Bahamas'] = "",
        ['Cassino'] = "",
        ['Tequila'] = "",
        ['Furious'] = "",
        ['Bennys'] = "",
        ['Turquia'] = "",
        ['Roxos'] = "",
        ['Grecia'] = "",
        ['Anonymous'] = "",
        ['Umbrella'] = "",
        ['Taliba'] = "",
        ['Milicia'] = "",
        ['Mercenarios'] = "",
        ['Vagos'] = "",
        ['Irlanda'] = "",
        ['Russia'] = "",
        ['Escocia'] = "",
        ['Ucrania'] = "",
        ['Colombia'] = "",
        ['Israel'] = "",
        ['CostaRica'] = "",
        ['Belgica'] = "",
        ['Crips'] = "",
        ['Bloods'] = "",
        ['Mexico'] = "",
        ['Elements'] = "",
        ['Espanha'] = "",
        ['Suecia'] = "",
        ['Italia'] = "",
        ['Canada'] = "",
        ['Nigeria'] = "",
    },

}
