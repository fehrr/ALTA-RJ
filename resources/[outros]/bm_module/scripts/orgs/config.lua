orgsConfig = {}

orgsConfig.blackList = 3
orgsConfig.langs = {
	isBlackList = function(source, tempo) return TriggerClientEvent("Notify",source, "negado","Atenção: Você está proibido de entrar em uma organização até <b>"..tempo.."</b>.", 5) end,
    haveBlackList = function(source, tempo) return TriggerClientEvent("Notify",source, "negado","Este jogador está proibido de entrar em qualquer organização até <b>"..tempo.."</b>", 5) end,
}


orgsConfig.main = {
	createAutomatic = true, -- Criar Automaticamente Organizações no banco de dados.
}

orgsConfig.Permissions = {
	invite = { -- Permissao Para Convidar
		name = "Convidar",
		description = "Esta permissao permite vc convidar as pessoas para sua facção."
	},
	demote = { -- Permissao Para Demitir
		name = "Demitir",
		description = "Essa permissão permite que o cargo selecionado demita um cargo inferior."
	}, 
	promove = { -- Permissao Para Promover
		name = "Promover",
		description = "Essa permissão permite que o cargo selecionado promova um cargo."
	}, 
	withdraw = { -- Permissao Para Sacar Dinheiro
		name = "Sacar dinheiro",
		description = "Permite que esse cargo selecionado possa sacar dinheiro do banco da facção."
	}, 
	deposit = { -- Permissao Para Depositar Dinheiro
		name = "Depositar dinheiro",
		description = "Permite que esse cargo selecionado possa depositar dinheiro no banco da facção."
	}, 
	message = { -- Permissao para Escrever nas anotaçoes
		name = "Escrever anotações",
		description = "Permite que esse cargo selecionado possa escrever anotações."
	},
	pix = {  -- Permissao para Alterar o Pix
		name = "Alterar a chave PIX",
		description = "Permite que esse cargo selecionado possa alterar a chave PIX do banco da facção"
	},
	chat = { -- Permissao para Falar no chat
		name = "Escrever no chat",
		description = "Permite que esse cargo selecionado possa se comunicar no chat da facção"
	},
}

orgsConfig.List = {
 
	["Hospital"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},

		groups = {
			["Diretor"] = { -- CARGO
				prefix = "Diretor", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 7, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["ViceDiretor"] = { -- CARGO
				prefix = "ViceDiretor", -- PREFIX
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gestao"] = { -- CARGO
				prefix = "Gestao", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Psiquiatra"] = { -- CARGO
				prefix = "Psiquiatra", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Medico"] = { -- CARGO
				prefix = "Medico", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Enfermeiro"] = { -- CARGO
				prefix = "Enfermeiro", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
						
			["Socorrista"] = { -- CARGO
				prefix = "Socorrista", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
		},
	},

	["Mecanica"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},

		groups = {
			["Lider [Mecanica]"] = { -- CARGO
				prefix = "Lider [Mecanica]", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [Mecanica]"] = { -- CARGO
				prefix = "Sub-Lider [Mecanica]", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Gerente [Mecanica]"] = { -- CARGO
				prefix = "Gerente [Mecanica]", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [Mecanica]"] = { -- CARGO
				prefix = "Membro [Mecanica]", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [Mecanica]"] = { -- CARGO
				prefix = "Novato [Mecanica]", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Recrutador [Mecanica]"] = { -- CARGO
				prefix = "Recrutador [Mecanica]", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		},
	},

	["Judiciario"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},

		groups = {
			
			["Corregedor"] = { -- CARGO
				prefix = "Corregedor", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Juiz"] = { -- CARGO
				prefix = "Juiz", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Promotor"] = { -- CARGO
				prefix = "Promotor", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["Advogado"] = { -- CARGO
				prefix = "Advogado", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["EstagiarioADV"] = { -- CARGO
				prefix = "EstagiarioADV", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
		},
	},

	["Jornal"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},

		groups = {
			["DiretorJornal"] = { -- CARGO
				prefix = "DiretorJornal", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["ProdutorJornal"] = { -- CARGO
				prefix = "ProdutorJornal", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},
	
			["Reporter"] = { -- CARGO
				prefix = "Reporter", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},
			
			["EstagiarioJornal"] = { -- CARGO
				prefix = "EstagiarioJornal", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		},
	},

	-- ARMAS
	["Milicia01"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MILICIA01]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MILICIA01]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MILICIA01]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MILICIA01]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MILICIA01]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MILICIA01]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Milicia02"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MILICIA02]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MILICIA02]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MILICIA02]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MILICIA02]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MILICIA02]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MILICIA02]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Cantagalo"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CANTAGALO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CANTAGALO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CANTAGALO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CANTAGALO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CANTAGALO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CANTAGALO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["HellsAngels"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [HELLSANGELS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [HELLSANGELS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [HELLSANGELS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [HELLSANGELS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [HELLSANGELS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [HELLSANGELS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["CDD"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CDD]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CDD]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CDD]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CDD]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CDD]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CDD]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	-- ["Playboy"] = {
	-- 	config = {
	-- 		maxMembers = 999, -- Maximo de Jogadores
	-- 	},
		
	-- 	groups = {
	-- 		["Lider [PLAYBOY]"] = { -- CARGO
	-- 			prefix = "Lider", -- PREFIX
	-- 			leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
	-- 			tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
	-- 		},

	-- 		["Sub-Lider [PLAYBOY]"] = { -- CARGO
	-- 			prefix = "Sub-Lider", -- PREFIX
	-- 			tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
	-- 		},

	-- 		["Gerente [PLAYBOY]"] = { -- CARGO
	-- 			prefix = "Gerente", -- PREFIX
	-- 			tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
	-- 		},

	-- 		["Membro [PLAYBOY]"] = { -- CARGO
	-- 			prefix = "Membro", -- PREFIX
	-- 			tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
	-- 		},

	-- 		["Recrutador [PLAYBOY]"] = { -- CARGO
	-- 			prefix = "Recrutador", -- PREFIX
	-- 			tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
	-- 		},

	-- 		["Novato [PLAYBOY]"] = { -- CARGO
	-- 			prefix = "Novato", -- PREFIX
	-- 			tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
	-- 		},
	-- 	}
	-- },

	-- MUNIÇÃO
	["Yakuza"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [YAKUZA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [YAKUZA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [YAKUZA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [YAKUZA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [YAKUZA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [YAKUZA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["China"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CHINA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CHINA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CHINA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CHINA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CHINA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CHINA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Bratva"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [BRATVA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [BRATVA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [BRATVA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [BRATVA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [BRATVA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [BRATVA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Cartel"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CARTEL]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CARTEL]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CARTEL]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CARTEL]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CARTEL]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CARTEL]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Triade"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [TRIADE]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [TRIADE]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [TRIADE]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [TRIADE]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [TRIADE]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [TRIADE]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	-- DESMANCHE
	["Furious"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [FURIOUS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
				leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [FURIOUS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [FURIOUS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [FURIOUS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [FURIOUS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [FURIOUS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Turquia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [TURQUIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [TURQUIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [TURQUIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [TURQUIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [TURQUIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [TURQUIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Grecia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [GRECIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [GRECIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [GRECIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [GRECIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [GRECIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [GRECIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Roxos"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ROXOS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ROXOS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ROXOS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ROXOS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ROXOS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ROXOS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Bennys"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [BENNYS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [BENNYS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [BENNYS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [BENNYS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [BENNYS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [BENNYS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	-- ITENS ILEGAIS
	["Taliba"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [TALIBA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [TALIBA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [TALIBA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [TALIBA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [TALIBA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [TALIBA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Mercenarios"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MERCENARIOS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MERCENARIOS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MERCENARIOS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MERCENARIOS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MERCENARIOS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MERCENARIOS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Umbrella"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [UMBRELLA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [UMBRELLA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [UMBRELLA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [UMBRELLA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [UMBRELLA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [UMBRELLA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Milicia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MILICIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MILICIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MILICIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MILICIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MILICIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MILICIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Mafia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MAFIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MAFIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MAFIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MAFIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MAFIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MAFIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Tcp"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [TCP]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [TCP]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [TCP]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [TCP]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [TCP]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [TCP]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["ADA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ADA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ADA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ADA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ADA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ADA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ADA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	["Anonymous"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ANONYMOUS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ANONYMOUS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ANONYMOUS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ANONYMOUS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ANONYMOUS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ANONYMOUS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	-- LAVAGEM
	["Vanilla"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [VANILLA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [VANILLA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [VANILLA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [VANILLA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [VANILLA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [VANILLA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Maisonette10"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Cafetao [MAISONETTE]"] = { -- CARGO
				prefix = "Cafetao", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Supervisor [MAISONETTE]"] = { -- CARGO
				prefix = "Supervisor", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Acompanhante [MAISONETTE]"] = { -- CARGO
				prefix = "Acompanhante", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MAISONETTE]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Dancarino [MAISONETTE]"] = { -- CARGO
				prefix = "Dancarino", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Barman [MAISONETTE]"] = { -- CARGO
				prefix = "Barman", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Bahamas"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [BAHAMAS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [BAHAMAS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [BAHAMAS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [BAHAMAS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [BAHAMAS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [BAHAMAS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Cassino"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CASSINO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CASSINO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CASSINO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CASSINO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CASSINO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CASSINO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Galaxy"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [GALAXY]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [GALAXY]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [GALAXY]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [GALAXY]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [GALAXY]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [GALAXY]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Medusa"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MEDUSA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MEDUSA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MEDUSA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MEDUSA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MEDUSA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MEDUSA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["MorrodoMakakero"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MORRODOMAKAKERO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MORRODOMAKAKERO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MORRODOMAKAKERO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MORRODOMAKAKERO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MORRODOMAKAKERO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MORRODOMAKAKERO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["COMPLEXODOALEMAO"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [COMPLEXODOALEMAO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [COMPLEXODOALEMAO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [COMPLEXODOALEMAO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [COMPLEXODOALEMAO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [COMPLEXODOALEMAO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [COMPLEXODOALEMAO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["FAVELADAMERA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [FAVELADAMERA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [FAVELADAMERA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [FAVELADAMERA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [FAVELADAMERA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [FAVELADAMERA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [FAVELADAMERA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["VIDIGAL"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [VIDIGAL]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [VIDIGAL]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [VIDIGAL]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [VIDIGAL]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [VIDIGAL]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [VIDIGAL]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Tequila"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [TEQUILA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [TEQUILA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [TEQUILA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [TEQUILA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [TEQUILA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [TEQUILA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},


	["Ada"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ADA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ADA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ADA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ADA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ADA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ADA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Fdn"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [FDN]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [FDN]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [FDN]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [FDN]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [FDN]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [FDN]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Camorra"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CAMORRA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CAMORRA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CAMORRA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CAMORRA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CAMORRA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CAMORRA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Serpentes"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [SERPENTES]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [SERPENTES]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [SERPENTES]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [SERPENTES]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [SERPENTES]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [SERPENTES]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Abutres"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ABUTRES]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ABUTRES]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ABUTRES]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ABUTRES]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ABUTRES]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ABUTRES]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	["Rocinha"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ROCINHA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ROCINHA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ROCINHA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ROCINHA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ROCINHA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ROCINHA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Pedreira"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [PEDREIRA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [PEDREIRA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [PEDREIRA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [PEDREIRA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [PEDREIRA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [PEDREIRA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["VilaDosChaves"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [VILADOSCHAVES]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [VILADOSCHAVES]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [VILADOSCHAVES]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [VILADOSCHAVES]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [VILADOSCHAVES]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [VILADOSCHAVES]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},


	-- DROGAS
	["Canada"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CANADA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CANADA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CANADA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CANADA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CANADA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CANADA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Nigeria"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [NIGERIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [NIGERIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [NIGERIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [NIGERIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [NIGERIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [NIGERIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Elements"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ELEMENTS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ELEMENTS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ELEMENTS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ELEMENTS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ELEMENTS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ELEMENTS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Italia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ITALIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ITALIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ITALIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ITALIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ITALIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ITALIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Suica"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [SUICA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [SUICA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [SUICA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [SUICA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [SUICA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [SUICA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Grota"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [GROTA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [GROTA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [GROTA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [GROTA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [GROTA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [GROTA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Cv"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CV]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CV]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CV]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CV]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CV]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CV]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Pcc"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [PCC]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [PCC]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [PCC]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [PCC]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [PCC]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [PCC]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Palestina"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [PALESTINA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [PALESTINA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [PALESTINA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [PALESTINA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [PALESTINA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [PALESTINA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Nigeria"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
	
		groups = {
			["Lider [NIGERIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [NIGERIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [NIGERIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [NIGERIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [NIGERIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [NIGERIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Escocia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ESCOCIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ESCOCIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ESCOCIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ESCOCIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ESCOCIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ESCOCIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Afeganistao"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [AFEGANISTAO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [AFEGANISTAO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [AFEGANISTAO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [AFEGANISTAO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [AFEGANISTAO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [AFEGANISTAO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Japao"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [JAPAO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [JAPAO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [JAPAO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [JAPAO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [JAPAO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [JAPAO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},


	["B13"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [B13]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [B13]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [B13]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [B13]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [B13]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [B13]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},


	["Lixao"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [LIXAO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [LIXAO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [LIXAO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [LIXAO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [LIXAO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [LIXAO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Argentina"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ARGENTINA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ARGENTINA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ARGENTINA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ARGENTINA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ARGENTINA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ARGENTINA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Ucrania"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [UCRANIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [UCRANIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [UCRANIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [UCRANIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [UCRANIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [UCRANIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Suecia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [SUECIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [SUECIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [SUECIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [SUECIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [SUECIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [SUECIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["Espanha"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ESPANHA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ESPANHA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ESPANHA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ESPANHA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ESPANHA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ESPANHA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Mexico"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MEXICO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MEXICO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MEXICO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MEXICO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MEXICO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MEXICO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Bloods"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [BLOODS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [BLOODS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [BLOODS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [BLOODS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [BLOODS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [BLOODS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Irlanda"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [IRLANDA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [IRLANDA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [IRLANDA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [IRLANDA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [IRLANDA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [IRLANDA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Crips"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CRIPS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CRIPS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CRIPS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CRIPS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CRIPS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CRIPS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},
	
	["Belgica"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [BELGICA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [BELGICA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [BELGICA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [BELGICA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [BELGICA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [BELGICA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Israel"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [ISRAEL]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [ISRAEL]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [ISRAEL]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [ISRAEL]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [ISRAEL]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [ISRAEL]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["BABILONIA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [BABILONIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [BABILONIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [BABILONIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [BABILONIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [BABILONIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [BABILONIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["PENHA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [PENHA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [PENHA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [PENHA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [PENHA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [PENHA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [PENHA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["JACAREZINHO"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [JACAREZINHO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [JACAREZINHO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [JACAREZINHO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [JACAREZINHO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [JACAREZINHO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [JACAREZINHO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["CIDADEALTA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CIDADEALTA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CIDADEALTA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CIDADEALTA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CIDADEALTA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CIDADEALTA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CIDADEALTA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Colombia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [COLOMBIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [COLOMBIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [COLOMBIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [COLOMBIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [COLOMBIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [COLOMBIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["FAVELADORODO"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [FAVELADORODO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [FAVELADORODO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [FAVELADORODO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [FAVELADORODO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [FAVELADORODO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [FAVELADORODO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["FAZENDINHA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [FAZENDINHA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [FAZENDINHA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [FAZENDINHA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [FAZENDINHA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [FAZENDINHA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [FAZENDINHA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["FRANCA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [FRANCA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [FRANCA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [FRANCA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [FRANCA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [FRANCA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [FRANCA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["PANTANAL"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [PANTANAL]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [PANTANAL]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [PANTANAL]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [PANTANAL]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [PANTANAL]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [PANTANAL]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["VILAALIANCA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [VILAALIANCA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [VILAALIANCA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [VILAALIANCA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [VILAALIANCA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [VILAALIANCA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [VILAALIANCA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["COHAB"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [COHAB]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [COHAB]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [COHAB]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [COHAB]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [COHAB]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [COHAB]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["JAGATA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [JAGATA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [JAGATA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [JAGATA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [JAGATA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [JAGATA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [JAGATA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Lacoste"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [LACOSTE]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [LACOSTE]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [LACOSTE]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [LACOSTE]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [LACOSTE]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [LACOSTE]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["NOVAHOLANDA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [NOVAHOLANDA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [NOVAHOLANDA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [NOVAHOLANDA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [NOVAHOLANDA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [NOVAHOLANDA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [NOVAHOLANDA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},


	["JURAMENTO"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [JURAMENTO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [JURAMENTO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [JURAMENTO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [JURAMENTO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [JURAMENTO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [JURAMENTO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["CHAPADAO"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CHAPADAO]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CHAPADAO]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CHAPADAO]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CHAPADAO]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CHAPADAO]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CHAPADAO]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["MEDELIN"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MEDELIN]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MEDELIN]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MEDELIN]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MEDELIN]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MEDELIN]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MEDELIN]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["VILAKENNEDY"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [VILAKENNEDY]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [VILAKENNEDY]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [VILAKENNEDY]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [VILAKENNEDY]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [VILAKENNEDY]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [VILAKENNEDY]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["CHATUBADEMESQUITA"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CHATUBADEMESQUITA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CHATUBADEMESQUITA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CHATUBADEMESQUITA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CHATUBADEMESQUITA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CHATUBADEMESQUITA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CHATUBADEMESQUITA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["China"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [CHINA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [CHINA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [CHINA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [CHINA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [CHINA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [CHINA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["MORRODODENDE"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [MORRODODENDE]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [MORRODODENDE]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [MORRODODENDE]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [MORRODODENDE]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [MORRODODENDE]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [MORRODODENDE]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["CostaRica"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [COSTA RICA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [COSTA RICA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [COSTA RICA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [COSTA RICA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [COSTA RICA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [COSTA RICA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Vagos"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [VAGOS]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [VAGOS]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [VAGOS]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [VAGOS]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [VAGOS]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [VAGOS]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},

	["Russia"] = {
		config = {
			maxMembers = 999, -- Maximo de Jogadores
		},
		
		groups = {
			["Lider [RUSSIA]"] = { -- CARGO
				prefix = "Lider", -- PREFIX
                leader = true, -- Para Não aparecer na tela de ( Invite / Promote )
				tier = 6, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Sub-Lider [RUSSIA]"] = { -- CARGO
				prefix = "Sub-Lider", -- PREFIX
				tier = 5, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Gerente [RUSSIA]"] = { -- CARGO
				prefix = "Gerente", -- PREFIX
				tier = 4, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Membro [RUSSIA]"] = { -- CARGO
				prefix = "Membro", -- PREFIX
				tier = 3, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Recrutador [RUSSIA]"] = { -- CARGO
				prefix = "Recrutador", -- PREFIX
				tier = 2, -- Nivel do Cargo ( Para ter uma Ordem )
			},

			["Novato [RUSSIA]"] = { -- CARGO
				prefix = "Novato", -- PREFIX
				tier = 1, -- Nivel do Cargo ( Para ter uma Ordem )
			},
		}
	},	
}