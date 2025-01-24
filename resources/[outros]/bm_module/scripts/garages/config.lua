garagesConfig = {}

garagesConfig.main = {
	dir = "http://177.54.148.31:4020/lotus/carros/",
	spawnClientVehicle = true, -- Spawnar veiculo via client-side

	clearVehicle = { -- LIMPAR VEICULOS QUE NÃO ESTEJAM USADOS
		enable = true,  -- CASO QUEIRA ATIVAR / DESATIVAR
		time = 15, -- TEMPO EM MINUTOS
	},

	ipvaVencimento = 7, -- DIAS PARA O VENCIMENTO DO IPVA
	ipvaValue = 0.05, -- 5% VALOR  DO VEICULO IPVA

	detidoValue = 0.15, -- 5% VALOR DO VEICULO DETIDO
	retidoValue = 0.15, -- 10% VALOR DO VEICULO RETIDO 

	defaultCarPrice = 5000, -- Valor padrão caso o carro não seja encontrado na lista abaixo.
	defaultCarChest = 50, -- Valor padrão caso o carro não seja encontrado na lista abaixo.

	commands = {
		prefix = "veh", -- PREFIX
		sellVeh = "vender", -- comando para vender carro /veh vender
		keyAdd = "add", -- comando para add chave carro /veh add
		keyRem = "rem", -- comando para rem chave carro /veh rem
	}
}

garagesConfig.listCars = {
	--[[VEÍCULOS NOVOS]]-- 
	[GetHashKey('intruder')] = { model = 'intruder', price = 90000, banned = false, name = 'Intruder', trunk = 50, type = 'sedans' },
    [GetHashKey('exemplar')] = { model = 'exemplar', price = 250000, banned = false, name = 'Exemplar', trunk = 50, type = 'sedans' },
    [GetHashKey('f620')] = { model = 'f620', price = 160000, banned = false, name = 'F620', trunk = 30, type = 'sedans' },
    [GetHashKey('felon')] = { model = 'felon', price = 300000, banned = false, name = 'Felon', trunk = 50, type = 'sedans' },
    [GetHashKey('ingot')] = { model = 'ingot', price = 100000, banned = false, name = 'Ingot', trunk = 60, type = 'sedans' },
    [GetHashKey('jackal')] = { model = 'jackal', price = 200000, banned = false, name = 'Jackal', trunk = 50, type = 'sedans' },
    [GetHashKey('oracle')] = { model = 'oracle', price = 120000, banned = false, name = 'Oracle', trunk = 50, type = 'sedans' },
    [GetHashKey('oracle2')] = { model = 'oracle2', price = 150000, banned = false, name = 'Oracle2', trunk = 60, type = 'sedans' },
    [GetHashKey('sentinel')] = { model = 'sentinel', price = 140000, banned = false, name = 'Sentinel', trunk = 50, type = 'sedans' },
    [GetHashKey('sentinel2')] = { model = 'sentinel2', price = 130000, banned = false, name = 'Sentinel2', trunk = 40, type = 'sedans' },
    [GetHashKey('windsor')] = { model = 'windsor', price = 220000, banned = false, name = 'Windsor', trunk = 20, type = 'sedans' },
    [GetHashKey('windsor2')] = { model = 'windsor2', price = 170000, banned = false, name = 'Windsor2', trunk = 40, type = 'sedans' },
    [GetHashKey('zion')] = { model = 'zion', price = 150000, banned = false, name = 'Zion', trunk = 50, type = 'sedans' },
    [GetHashKey('zion2')] = { model = 'zion2', price = 300000, banned = false, name = 'Zion2', trunk = 40, type = 'sedans' },
    [GetHashKey('blade')] = { model = 'blade', price = 150000, banned = false, name = 'Blade', trunk = 40, type = 'sedans' },
    [GetHashKey('buccaneer')] = { model = 'buccaneer', price = 200000, banned = false, name = 'Buccaneer', trunk = 50, type = 'sedans' },
    [GetHashKey('buccaneer2')] = { model = 'buccaneer2', price = 500000, banned = false, name = 'Buccaneer2', trunk = 60, type = 'sedans' },
    [GetHashKey('primo')] = { model = 'primo', price = 130000, banned = false, name = 'Primo', trunk = 50, type = 'sedans' },
	[GetHashKey('issi2')] = { model = 'issi2', price = 1500000, banned = false, name = 'Issi2', trunk = 20, type = 'sedans' },
    [GetHashKey('prairie')] = { model = 'prairie', price = 80000, banned = false, name = 'Prairie', trunk = 25, type = 'sedans' },
    [GetHashKey('rhapsody')] = { model = 'rhapsody', price = 10000, banned = false, name = 'Rhapsody', trunk = 30, type = 'sedans' },
    [GetHashKey('cogcabrio')] = { model = 'cogcabrio', price = 220000, banned = false, name = 'Cogcabrio', trunk = 60, type = 'sedans' },
    [GetHashKey('emperor')] = { model = 'emperor', price = 70000, banned = false, name = 'Emperor', trunk = 60, type = 'sedans' },
    [GetHashKey('emperor2')] = { model = 'emperor2', price = 100000, banned = false, name = 'Emperor 2', trunk = 60, type = 'sedans' },
    [GetHashKey('phoenix')] = { model = 'phoenix', price = 160000, banned = false, name = 'Phoenix', trunk = 40, type = 'sedans' },
    [GetHashKey('premier')] = { model = 'premier', price = 150000, banned = false, name = 'Premier', trunk = 50, type = 'sedans' },
    [GetHashKey('glendale')] = { model = 'glendale', price = 80000, banned = false, name = 'Glendale', trunk = 50, type = 'sedans' }, 

	[GetHashKey('lotusraptor')] = { model = 'lotusraptor', price = 1500000, banned = false, name = 'Raptor', trunk = 180, type = 'service'},
	[GetHashKey('lotusscania')] = { model = 'lotusscania', price = 1500000, banned = false, name = 'Scania', trunk = 180, type = 'service'},
	[GetHashKey('wrtrxmeclotus')] = { model = 'wrtrxmeclotus', price = 1500000, banned = false, name = 'wrtrxmeclotus', trunk = 30, type = 'service'},
	[GetHashKey('wrflatbedlotus')] = { model = 'wrflatbedlotus', price = 1500000, banned = false, name = 'wrflatbedlotus', trunk = 30, type = 'service'},
	[GetHashKey('WRVolito')] = { model = 'WRVolito', price = 1500000, banned = false, name = 'Helicoptero HP', trunk = 180, type = 'service'},

	[GetHashKey('veto2')] = { model = 'veto2', price = 900000, banned = false, name = 'Veto 2', trunk = 30, type = 'outros'},
	[GetHashKey('caddy')] = { model = 'caddy', price = 900000, banned = false, name = 'Caddy', trunk = 30, type = 'outros'},
	[GetHashKey('dominator6')] = { model = 'dominator6', price = 900000, banned = false, name = 'Dominator 6', trunk = 30, type = 'outros'},
	[GetHashKey('openwheel2')] = { model = 'openwheel2', price = 900000, banned = false, name = 'Open Wheel', trunk = 30, type = 'outros'},
	[GetHashKey('tractor')] = { model = 'tractor', price = 50000, banned = false, name = 'Tractor', trunk = 20, type = 'outros'},

	[GetHashKey('insurgent2')] = { model = 'insurgent2', price = 1500000, banned = false, name = 'Insurgent 2', trunk = 200, type = 'vip' },
	[GetHashKey('avenger')] = { model = 'Avenger', price = 1500000, banned = false, name = 'Avenger', trunk = 100, type = 'vip' },
	[GetHashKey('pounder')] = { model = 'pounder', price = 1500000, banned = false, name = 'Pounder', trunk = 3000, type = 'vip'},
	
	[GetHashKey('amels200')] = { model = 'amels200', price = 1500000, banned = false, name = 'Iate Amels', trunk = 30, type = 'vip' },
	[GetHashKey('havok')] = { model = 'havok', price = 1500000, banned = false, name = 'Havok', trunk = 50, type = 'vip' },
	[GetHashKey('stockade3')] = { model = 'stockade3', price = 1500000, banned = false, name = 'Stockade', trunk = 100, type = 'vip'},
	[GetHashKey('thruster')] = { model = 'thruster', price = 1500000, banned = false, name = 'Thruster', trunk = 10, type = 'vip'},
	[GetHashKey('ahksv')] = { model = 'ahksv', price = 1500000, banned = false, name = 'Ahksv', trunk = 30, type = 'vip'},
	[GetHashKey('rmodf40')] = { model = 'rmodf40', price = 1500000, banned = false, name = 'Rmodf40', trunk = 30, type = 'vip'},
	[GetHashKey('rmodjesko')] = { model = 'rmodjesko', price = 1500000, banned = false, name = 'Jesko', trunk = 40, type = 'vip' },
	[GetHashKey('rmodgtr50')] = { model = 'rmodgtr50', price = 1500000, banned = false, name = 'Nissan GTR 50', trunk = 30, type = 'vip'},
	[GetHashKey('rmodmi8lb')] = { model = 'rmodmi8lb', price = 1500000, banned = false, name = 'Bmw i8 conversível ', trunk = 30, type = 'vip'},
	[GetHashKey('agerars')] = { model = 'agerars', price = 1500000, banned = false, name = 'Koenisegg Agera', trunk = 30, type = 'vip'},
	[GetHashKey('rmodf12tdf')] = { model = 'rmodf12tdf', price = 1500000, banned = false, name = 'Ferrari 12 TDF', trunk = 30, type = 'vip'},
	[GetHashKey('chironss')] = { model = 'chironss', price = 1500000, banned = false, name = 'Bugatti Chiron', trunk = 30, type = 'vip'},
	[GetHashKey('350z')] = { model = '350z', price = 1500000, banned = false, name = 'Nissan 350z', trunk = 40, type = 'vip'},
	[GetHashKey('rmodjeep')] = { model = 'rmodjeep', price = 1500000, banned = false, name = 'Jeep Cherokee', trunk = 600, type = 'vip'},
	[GetHashKey('audiq8')] = { model = 'audiq8', price = 1500000, banned = false, name = 'Audi Q8', trunk = 50, type = 'vip'},
	[GetHashKey('911r')] = { model = '911r', price = 900000, banned = false, name = 'Porshe 911r', trunk = 30, type = 'vip'},
	[GetHashKey('panamera17turbo')] = { model = 'panamera17turbo', price = 900000, banned = false, name = 'Panamera Turbo', trunk = 30, type = 'vip'},
	[GetHashKey('amarok')] = { model = 'amarok', price = 900000, banned = false, name = 'Amarok', trunk = 120, type = 'vip'},
	[GetHashKey('fox720m')] = { model = 'fox720m', price = 900000, banned = false, name = 'Ahksv', trunk = 30, type = 'vip'},
	[GetHashKey('s10')] = { model = 's10', price = 1500000, banned = false, name = 'Chevrolet S10', trunk = 30, type = 'vip'},
	[GetHashKey('xreagstore')] = { model = 'xreagstore', price = 1500000, banned = false, name = 'Honda XRE 300', trunk = 30, type = 'vip'},
	[GetHashKey('survolt')] = { model = 'survolt', price = 1500000, banned = false, name = 'Citroen Survolt', trunk = 30, type = 'vip'},
	[GetHashKey('18velar')] = { model = '18velar', price = 1500000, banned = false, name = 'Range Rover Velar', trunk = 30, type = 'vip'},
	[GetHashKey('WRvelar')] = { model = 'WRvelar', price = 1500000, banned = false, name = 'Range Rover Velar', trunk = 30, type = 'vip'},
	[GetHashKey('WRc7')] = { model = 'WRvelar', price = 1500000, banned = false, name = 'WR Corvette', trunk = 30, type = 'vip'},
	-- [GetHashKey('WRsw4')] = { model = 'WRsw4', price = 1500000, banned = false, name = 'WRsw4', trunk = 30, type = 'vip'},

	
	-- HOSPITAL
	[GetHashKey('WRxreparamedico')] = { model = 'WRxreparamedico', price = 1500000, banned = false, name = 'XRE SAMU', trunk = 40, type = 'vip'},
	[GetHashKey('WRas350samu')] = { model = 'WRas350samu', price = 1500000, banned = false, name = 'AS350 SAMU', trunk = 40, type = 'vip'},
	[GetHashKey('WRsw4')] = { model = 'WRsw4', price = 1500000, banned = false, name = 'SW4 SAMU', trunk = 40, type = 'vip'},
	[GetHashKey('WRsprinter22')] = { model = 'WRsprinter22', price = 1500000, banned = false, name = 'Sprinter SAMU', trunk = 40, type = 'vip'},
	
	-- IFOOD
	[GetHashKey('wrcargo150')] = { model = 'wrcargo150', price = 1500000, banned = false, name = 'IFOOD', trunk = 40, type = 'vip'},
			
	-- BOMBEIRO
	[GetHashKey('WRsprinter22cbm')] = { model = 'WRsprinter22cbm', price = 1500000, banned = false, name = 'WRsprinter22cbm', trunk = 40, type = 'vip'},
	[GetHashKey('WRas350cbm')] = { model = 'WRas350cbm', price = 1500000, banned = false, name = 'WRas350cbm', trunk = 40, type = 'vip'},
	[GetHashKey('WR21hiluxcbm')] = { model = 'WR21hiluxcbm', price = 1500000, banned = false, name = 'WR21hiluxcbm', trunk = 40, type = 'vip'},
	[GetHashKey('WRsw4cbm')] = { model = 'WRsw4cbm', price = 1500000, banned = false, name = 'WRsw4cbm', trunk = 40, type = 'vip'},
				
	-- BANCO DO BRASIL
	[GetHashKey('insurgentbb')] = { model = 'insurgentbb', price = 1500000, banned = false, name = 'insurgentbb', trunk = 40, type = 'vip'},
		
	-- LIXEIRO
	[GetHashKey('WRtrashrio')] = { model = 'WRtrashrio', price = 1500000, banned = false, name = 'Caminhão de Lixo', trunk = 40, type = 'vip'},
	
	-- MECANICA
	[GetHashKey('wrtrxmec')] = { model = 'wrtrxmec', price = 1500000, banned = false, name = 'TRX', trunk = 40, type = 'vip'},
	[GetHashKey('wrflatbed')] = { model = 'wrflatbed', price = 1500000, banned = false, name = 'Flatbed', trunk = 40, type = 'vip'},
	
	-- EXERCITO
	[GetHashKey('WRranger23ebc')] = { model = 'WRranger23ebc', price = 1500000, banned = false, name = 'WRranger23ebc', trunk = 40, type = 'vip'},
	[GetHashKey('WRranger23eb')] = { model = 'WRranger23eb', price = 1500000, banned = false, name = 'WRranger23eb', trunk = 40, type = 'vip'},
	[GetHashKey('WR5ton')] = { model = 'WR5ton', price = 1500000, banned = false, name = 'WR5ton', trunk = 40, type = 'vip'},
	[GetHashKey('uh1exercito')] = { model = 'uh1exercito', price = 1500000, banned = false, name = 'uh1exercito', trunk = 40, type = 'vip'},
	[GetHashKey('haitun')] = { model = 'haitun', price = 1500000, banned = false, name = 'haitun', trunk = 40, type = 'vip'},

	 
	-- POLICIA
	[GetHashKey('caveiraopmerj')] = { model = 'caveiraopmerj', price = 1500000, banned = false, name = 'Caveirão PMERJ', trunk = 40, type = 'vip'},
	[GetHashKey('WRvelar')] = { model = 'WRvelar', price = 1500000, banned = false, name = 'Range Rover Velar', trunk = 40, type = 'vip'},
	[GetHashKey('WRjeep')] = { model = 'WRjeep', price = 1500000, banned = false, name = 'Jeep Grand Cherokee', trunk = 40, type = 'vip'},
	[GetHashKey('WRas350')] = { model = 'WRas350', price = 1500000, banned = false, name = 'AS350', trunk = 40, type = 'vip'},
	[GetHashKey('WRc7')] = { model = 'WRc7', price = 1500000, banned = false, name = 'Corvette C7', trunk = 40, type = 'vip'},
	[GetHashKey('WRduster22')] = { model = 'WRduster22', price = 1500000, banned = false, name = 'Duster', trunk = 40, type = 'vip'},
	[GetHashKey('WRl200')] = { model = 'WRl200', price = 1500000, banned = false, name = 'L200', trunk = 40, type = 'vip'},
	[GetHashKey('WRpajero')] = { model = 'WRpajero', price = 1500000, banned = false, name = 'Pajero', trunk = 40, type = 'vip'},
	[GetHashKey('WRranger23')] = { model = 'WRranger23', price = 1500000, banned = false, name = 'Ranger 23', trunk = 40, type = 'vip'},
	[GetHashKey('WRxt660')] = { model = 'WRxt660', price = 1500000, banned = false, name = 'XT 660', trunk = 40, type = 'vip'},
	[GetHashKey('WRtrailblazer22')] = { model = 'WRtrailblazer22', price = 1500000, banned = false, name = 'Trailblazer', trunk = 40, type = 'vip'},
	[GetHashKey('WRstorm')] = { model = 'WRstorm', price = 1500000, banned = false, name = 'Storm', trunk = 40, type = 'vip'},
	
	-- PRF
	[GetHashKey('WRas350prf')] = { model = 'WRas350prf', price = 1500000, banned = false, name = 'AS350', trunk = 40, type = 'vip'},
	[GetHashKey('WRbell407prf')] = { model = 'WRbell407prf', price = 1500000, banned = false, name = 'BELL 407', trunk = 40, type = 'vip'},
	[GetHashKey('WRcruzeprf')] = { model = 'WRcruzeprf', price = 1500000, banned = false, name = 'Cruze', trunk = 40, type = 'vip'},
	[GetHashKey('WRl200prf')] = { model = 'WRl200prf', price = 1500000, banned = false, name = 'L200', trunk = 40, type = 'vip'},
	[GetHashKey('WRprfcamaro19')] = { model = 'WRprfcamaro19', price = 1500000, banned = false, name = 'Camaro', trunk = 40, type = 'vip'},
	[GetHashKey('WRranger21')] = { model = 'WRranger21', price = 1500000, banned = false, name = 'Ranger 21', trunk = 40, type = 'vip'},
	[GetHashKey('WRtrailblazerprf')] = { model = 'WRtrailblazerprf', price = 1500000, banned = false, name = 'Trailblazer', trunk = 40, type = 'vip'},


	[GetHashKey('r8spyder20')] = { model = 'r8spyder20', price = 1500000, banned = false, name = 'Audi R8 Spyder', trunk = 30, type = 'vip'},
	[GetHashKey('moss')] = { model = 'moss', price = 1500000, banned = false, name = 'Mercedes Moss', trunk = 30, type = 'vip'},
	[GetHashKey('m135i')] = { model = 'm135i', price = 1500000, banned = false, name = 'BMW M1', trunk = 30, type = 'vip'},
	[GetHashKey('sonata18')] = { model = 'sonata18', price = 1500000, banned = false, name = 'Sonata', trunk = 30, type = 'vip'},
	[GetHashKey('fordka')] = { model = 'fordka', price = 1500000, banned = false, name = 'Ford Ka', trunk = 30, type = 'vip'},
	[GetHashKey('palio')] = { model = 'palio', price = 1500000, banned = false, name = 'Palio', trunk = 30, type = 'vip'},
	[GetHashKey('mbc')] = { model = 'mbc', price = 1500000, banned = false, name = 'Mercedes Concept', trunk = 150, type = 'vip'},
	[GetHashKey('trailcat')] = { model = 'trailcat', price = 1500000, banned = false, name = 'Jeep Trailcat 4x4', trunk = 150, type = 'vip'},
	[GetHashKey('WRspeedoems')] = { model = 'WRspeedoems', price = 1000000, banned = false, name = 'WRspeedoems', trunk = 50, type = 'service' },
	[GetHashKey('WRurus')] = { model = 'WRurus', price = 1000000, banned = false, name = 'WRurus', trunk = 50, type = 'service' },
	[GetHashKey('mercxclass')] = { model = 'mercxclass', price = 1500000, banned = false, name = 'Mercedes Class X', trunk = 150, type = 'vip'},
	[GetHashKey('submersible')] = { model = 'submersible', price = 1500000, banned = false, name = 'Submarino', trunk = 30, type = 'vip'},
	[GetHashKey('civic2016')] = { model = 'civic2016', price = 1500000, banned = false, name = 'Civic 2016', trunk = 30, type = 'vip'},
	[GetHashKey('m2f22')] = { model = "m2f22", price = 1500000, banned = false, name = "BMW M2", trunk = 30, type = "vip" },
	[GetHashKey('eletran17')] = { model = 'eletran17', price = 1500000, banned = false, name = 'Elantra 17', trunk = 30, type = 'vip' },
	[GetHashKey('z4bmw')] = { model = 'z4bmw', price = 1500000, banned = false, name = 'BMW Z4', trunk = 30, type = 'vip' },
	[GetHashKey('punto')] = { model = 'punto', price = 1500000, banned = false, name = 'Fiat Punto', trunk = 30, type = 'vip' },
	[GetHashKey('veneno')] = { model = 'veneno', price = 1500000, banned = false, name = 'Lamborghini Veneno', trunk = 20, type = 'vip' },
	[GetHashKey('urus')] = { model = 'urus', price = 1500000, banned = false, name = 'Lamborghini Urus', trunk = 40, type = 'vip' },
	[GetHashKey('tenere1200')] = { model = 'tenere1200', price = 1500000, banned = false, name = 'YAMAHA SUPER TENERÊ 1200', trunk = 30, type = 'vip' },
	[GetHashKey('pcx')] = { model = 'pcx', price = 1500000, banned = false, name = 'PCX 2018', trunk = 30, type = 'vip' },
	[GetHashKey('pboxstergts')] = { model = 'pboxstergts', price = 1500000, banned = false, name = 'PORSCHE BOXTER 2013', trunk = 30, type = 'vip' },
	[GetHashKey('gs2013')] = { model = 'gs2013', price = 1500000, banned = false, name = 'R1200 GS 2013', trunk = 30, type = 'vip' },
	[GetHashKey('fxxkevo')] = { model = 'fxxkevo', price = 1500000, banned = false, name = 'Ferrari FXXK Evo', trunk = 30, type = 'vip' },
	[GetHashKey('fc15')] = { model = 'fc15', price = 1500000, banned = false, name = 'Ferrari California', trunk = 20, type = 'vip' },
	[GetHashKey('f850')] = { model = 'f850', price = 1500000, banned = false, name = 'F850 GS', trunk = 30, type = 'vip' },
	[GetHashKey('biz25')] = { model = "biz25", price = 1500000, banned = false, name = 'Biz 25', trunk = 40, type = 'vip' },
	[GetHashKey('f150')] = { model = "f150", price = 1500000, banned = false, name = 'Ford 150', trunk = 40, type = 'vip' },
	[GetHashKey('370z')] = { model = "370z", price = 1500000, banned = false, name = 'Nissan 370z', trunk = 40, type = 'vip' },
	[GetHashKey('a452')] = { model = "a452", price = 1500000, banned = false, name = 'Mercedes A45', trunk = 40, type = 'vip' },
	[GetHashKey('bikelete')] = { model = "bikelete", price = 1500000, banned = false, name = 'Bikelete', trunk = 40, type = 'vip' },
	[GetHashKey('c63w205')] = { model = 'c63w205', price = 1500000, banned = false, name = 'MERCEDES-AMG C63W205', trunk = 30, type = 'vip'},
	[GetHashKey('evo9')] = { model = 'evo9', price = 1500000, banned = false, name = 'Lancer Evolution 9', trunk = 30, type = 'vip'},
	[GetHashKey('ftoro')] = { model = 'ftoro', price = 1500000, banned = false, name = 'Ford Toro', trunk = 30, type = 'vip'},
	[GetHashKey('gle53')] = { model = 'gle53', price = 1500000, banned = false, name = 'Mercedes GLE53', trunk = 30, type = 'vip'},
	[GetHashKey('Hilux2019')] = { model = 'Hilux2019', price = 1500000, banned = false, name = 'Toyota Hilux 2019', trunk = 30, type = 'vip'},
	[GetHashKey('huayrar')] = { model = 'huayrar', price = 1500000, banned = false, name = 'Pagani Huayra', trunk = 30, type = 'vip'},
	[GetHashKey('subwrx')] = { model = 'subwrx', price = 1500000, banned = false, name = 'Subaru WRX', trunk = 30, type = 'vip'},
	[GetHashKey('ds4')] = { model = 'ds4', price = 1500000, banned = false, name = 'DS4', trunk = 30, type = 'vip'},
	[GetHashKey('amggtc')] = { model = 'amggtc', price = 1500000, banned = false, name = 'AMG Conversivel', trunk = 60, type = 'vip'},
	[GetHashKey('avisa')] = { model = 'avisa', price = 1500000, banned = false, name = 'Submarino Avisa', trunk = 30, type = 'outros' },

	[GetHashKey('675ltsp')] = { model = '675ltsp ', price = 1500000, banned = false, name = 'McLaren 675 LT SP', trunk = 30, type = 'vip'},
	[GetHashKey('wladlc500')] = { model = 'wladlc500', price = 1500000, banned = false, name = 'Lexus LC 500', trunk = 30, type = 'vip'},
	[GetHashKey('rs520')] = { model = 'rs520', price = 1500000, banned = false, name = 'Audi RS5 2020', trunk = 30, type = 'vip'},
	[GetHashKey('amgone')] = { model = 'amgone', price = 1500000, banned = false, name = 'Mercedes AMG ONE', trunk = 30, type = 'vip'},
	[GetHashKey('sjdodge')] = { model = 'sjdodge', price = 1500000, banned = false, name = 'Dodge Charger Hellcat', trunk = 30, type = 'vip'},
	[GetHashKey('bmwg07')] = { model = 'bmwg07', price = 1500000, banned = false, name = 'BMW X7 2021', trunk = 30, type = 'vip'},
	[GetHashKey('c8z0623')] = { model = 'c8z0623', price = 1500000, banned = false, name = 'Corvette C7 2023', trunk = 30, type = 'vip'},
	[GetHashKey('dd911gtrsr')] = { model = 'dd911gtrsr', price = 1500000, banned = false, name = 'Porsche 911R GT2 DD', trunk = 30, type = 'vip'},
	[GetHashKey('lpi8004')] = { model = 'lpi8004 ', price = 1500000, banned = false, name = 'Lamborghini Countach LPI800-4', trunk = 30, type = 'vip'},

	--[[VEÍCULOS VELOZES E FURIOSOS]]--
	[GetHashKey('rmodskyline34')] = { model = "rmodskyline34", price = 1500000, banned = false, name = 'Skyline R34', trunk = 40, type = 'vip' },
	[GetHashKey('fnflan')] = { model = 'fnflan', price = 1500000, banned = false, name = 'Mitsubishi Lancer Evolution IX GSR', trunk = 30, type = 'vip'},
	[GetHashKey('ff4wrx')] = { model = 'ff4wrx', price = 1500000, banned = false, name = 'Subaru Impreza Fast and Furious', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fmk4')] = { model = '2f2fmk4', price = 1500000, banned = false, name = 'Toyota Supra Fast and Furious', trunk = 30, type = 'vip'},
	[GetHashKey('fnfmk4')] = { model = 'fnfmk4', price = 1500000, banned = false, name = 'Toyota Supra Fast and Furious 2', trunk = 30, type = 'vip'},
	[GetHashKey('fnfmits')] = { model = 'fnfmits', price = 1500000, banned = false, name = 'Mitsubishi Eclipse do Brian', trunk = 30, type = 'vip'},
	[GetHashKey('fnfrx7')] = { model = 'fnfrx7', price = 1500000, banned = false, name = 'Mazda RX7 do Han', trunk = 0, type = 'vip'},
	[GetHashKey('2f2fmle7')] = { model = '2f2fmle7', price = 1500000, banned = false, name = 'Lancer Evolution do Brian', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fgts')] = { model = '2f2fgts', price = 1500000, banned = false, name = 'Mitsubishi Spyder do Roman', trunk = 30, type = 'vip'},
		
	--[[VEÍCULOS EMPREGOS]]--
	[GetHashKey('quadri')] = { model = 'quadri', price = 1000000, banned = false, name = 'Quadriciclo', trunk = 0, type = 'service'},
	[GetHashKey('phantom')] = { model = 'phantom', price = 1000000, banned = false, name = 'Phantom', trunk = 0, type = 'service'},
	[GetHashKey('trash2')] = { model = 'trash2', price = 1000000, banned = false, name = 'Trash 2', trunk = 0, type = 'service' },
	[GetHashKey('tiptruck')] = { model = 'tiptruck', price = 1000000, banned = false, name = 'Tip Truck', trunk = 80, type = 'service' },
	[GetHashKey('boxville2')] = { model = 'boxville2', price = 1000000, banned = false, name = 'Box ville', trunk = 80, type = 'service' },
	[GetHashKey('airbus')] = { model = 'airbus', price = 1000000, banned = false, name = 'Airbus', trunk = nil, type = 'service' },
	[GetHashKey('bus')] = { model = 'bus', price = 1000000, banned = false, name = 'Bus', trunk = nil, type = 'service' },
	[GetHashKey('dinghy')] = { model = 'dinghy', price = 1000000, banned = false, name = 'Dinghy', trunk = nil, type = 'service' },
	[GetHashKey('dinghy2')] = { model = 'dinghy2', price = 1000000, banned = false, name = 'Dinghy 2', trunk = nil, type = 'service' },
	[GetHashKey('dinghy3')] = { model = 'dinghy3', price = 1000000, banned = false, name = 'Dinghy 3', trunk = nil, type = 'service' },
	[GetHashKey('dinghy4')] = { model = 'dinghy4', price = 1000000, banned = false, name = 'Dinghy 4', trunk = nil, type = 'service' },
	[GetHashKey('trailerlogs')] = { model = 'trailerlogs', price = 1000000, banned = false, name = 'Trailer Logs', trunk = nil, type = 'service' },
	[GetHashKey('taxi')] = { model = 'taxi', price = 1000000, banned = false, name = 'Táxi', trunk = nil, type = 'service' },
	[GetHashKey('towtruck2')] = { model = 'towtruck2', price = 1000000, banned = false, name = 'TowTruck 2', trunk = nil, type = 'service' },
	[GetHashKey('flatbed')] = { model = 'flatbed', price = 1000000, banned = false, name = 'Flatbed', trunk = nil, type = 'service' },

	--[[HELIS]]--
	[GetHashKey('supervolito')] = { model = 'supervolito', price = 1500000, banned = false, name = 'Supervolito', trunk = 150, type = 'vip' },
	[GetHashKey('supervolito2')] = { model = 'supervolito2', price = 1500000, banned = false, name = 'Supervolito 2', trunk = 150, type = 'vip' },
	[GetHashKey('frogger')] = { model = 'frogger', price = 1500000, banned = false, name = 'Frogger', trunk = 150, type = 'vip' },
	[GetHashKey('frogger2')] = { model = 'frogger2', price = 1500000, banned = false, name = 'Frogger2', trunk = 150, type = 'vip' },
	[GetHashKey('volatus')] = { model = 'volatus', price = 1500000, banned = false, name = 'Volatus', trunk = 150, type = 'vip' },

	[GetHashKey('luxor')] = { model = 'luxor', price = 1500000, banned = false, name = 'Luxor', trunk = 50, type = 'vip' },

	
	[GetHashKey('swift2')] = { model = 'swift2', price = 1500000, banned = false, name = 'Swift2', trunk = 150, type = 'vip' },
	-- [GetHashKey('havok')] = { temodel = 'havok', price = 1500000, banned = false, name = 'Havok', trunk = 150, type = 'vip' },

	--[[VEÍCULOS ORGANIZACIONAIS]]--
	[GetHashKey('coach')] = { model = 'coach', price = 1000000, banned = false, name = 'Coach Civil', trunk = 50, type = 'service' },
	[GetHashKey('VRa3')] = { model = 'VRa3', price = 1000000, banned = false, name = 'VRa3', trunk = 50, type = 'service' },
	[GetHashKey('VRq8')] = { model = 'VRq8', price = 1000000, banned = false, name = 'VRq8', trunk = 50, type = 'service' },


	[GetHashKey('WRsubaru')] = { model = 'WRsubaru', price = 1000000, banned = false, name = 'WRsubaru', trunk = 50, type = 'service' },
	[GetHashKey('WRclassxxc')] = { model = 'WRclassxxc', price = 1000000, banned = false, name = 'WRclassxxc', trunk = 50, type = 'service' },
	[GetHashKey('WRm5')] = { model = 'WRm5', price = 1000000, banned = false, name = 'WRm5', trunk = 50, type = 'service' },


	[GetHashKey('VRraptor')] = { model = 'VRraptor', price = 1000000, banned = false, name = 'VRraptor', trunk = 50, type = 'service' },
	[GetHashKey('WRpolmav')] = { model = 'WRpolmav', price = 1000000, banned = false, name = 'Helicóptero Policia', trunk = 50, type = 'service' },
	[GetHashKey('ambulance')] = { model = 'ambulance', price = 1000000, banned = false, name = 'Ambulância', trunk = 50, type = 'service' },
	[GetHashKey('paramedicoheli')] = { model = 'paramedicoheli', price = 1000000, banned = false, name = 'Helicóptero Serviços', trunk = 50, type = 'service' },
	[GetHashKey('amggtr')] = { model = "amggtr", price = 1000000, banned = false, name = "Mercedes-Benz AMGGTR", trunk = 50, type = 'service' },
	[GetHashKey('mercedesgt')] = { model = 'mercedesgt', price = 1000000, banned = false, name = 'Mercedes-Benz GT63', trunk = 50, type = 'service' },
	[GetHashKey('nc750x')] = { model = 'nc750x', price = 1000000, banned = false, name = 'NC750X', trunk = 50, type = 'service' },
	[GetHashKey('paramedicoambu')] = { model = "paramedicoambu", price = 1000000, banned = false, name = 'Ambulância', trunk = nil, type = 'service' },
	[GetHashKey('wrcb500x')] = { model = "wrcb500x", price = 1000000, banned = false, name = "CB 500 Policia", trunk = 30, type = "service" },
	[GetHashKey('riot')] = { model = "riot", price = 1000000, banned = false, name = "Blindado Policia", trunk = 30, type = "service" }, 


	--[[NOVOS VEICULOS]]--
	[GetHashKey('maverick')] = { model = 'maverick', price = 1500000, banned = false, name = 'Maverick', trunk = 30, type = 'vip'},
	[GetHashKey('fc15')] = { model = 'fc15', price = 1500000, banned = false, name = 'Ferrari California', trunk = 30, type = 'vip'},
	[GetHashKey('ttrs')] = { model = 'ttrs', price = 1500000, banned = false, name = 'Audi TTrs', trunk = 30, type = 'vip'},
	[GetHashKey('f250deboxe')] = { model = 'f250deboxe', price = 1500000, banned = false, name = 'F250 Deboxe', trunk = 100, type = 'vip'},
	[GetHashKey('africatAG')] = { model = 'africatAG', price = 1500000, banned = false, name = 'africatAG', trunk = 30, type = 'vip' },
	[GetHashKey('m8gte')] = { model = 'm8gte', price = 1500000, banned = false, name = 'm8gte', trunk = 30, type = 'vip' },
	[GetHashKey('polestar1')] = { model = 'polestar1', price = 1500000, banned = false, name = 'polestar1', trunk = 30, type = 'vip' },

	[GetHashKey('WRx6')] = { model = "WRx6", price = 1000000, banned = false, name = "Bmw x6", trunk = 30, type = "service" },
	[GetHashKey('WRsxr')] = { model = "WRsxr", price = 1000000, banned = false, name = "Sxr", trunk = 30, type = "service" },
	[GetHashKey('WRram2500')] = { model = "WRram2500", price = 1000000, banned = false, name = "Ram 2500", trunk = 30, type = "service" },
	[GetHashKey('WRBmwm8')] = { model = "WRBmwm8", price = 1000000, banned = false, name = "Bmw m8", trunk = 30, type = "service" },
	[GetHashKey('WRBmwm1')] = { model = "WRBmwm1", price = 1000000, banned = false, name = "Bmw m1", trunk = 30, type = "service" },
	[GetHashKey('WRbmwi8')] = { model = "WRbmwi8", price = 1000000, banned = false, name = "Bmw i8", trunk = 30, type = "service" },
	[GetHashKey('WRbmwm4')] = { model = "WRbmwm4", price = 1000000, banned = false, name = "BMW M4 Policia", trunk = 30, type = "service" },
	[GetHashKey('WRclassxx')] = { model = "WRclassxx", price = 1000000, banned = false, name = "Class xx", trunk = 30, type = "service" },
	[GetHashKey('WRpolmav')] = 	{ model = "WRpolmav", price = 1000000, banned = false, name = "Pol Mav", trunk = 30, type = "service" },
	

	[GetHashKey('WRafricat')] = { model = "WRafricat", price = 1000000, banned = false, name = "WRafricat", trunk = 50, type = "service" },
	[GetHashKey('WRpgt322')] = { model = "WRpgt322", price = 1000000, banned = false, name = "WRpgt322", trunk = 50, type = "service" },
	[GetHashKey('WRbell407')] = { model = "WRbell407", price = 1000000, banned = false, name = "WRbell407", trunk = 50, type = "service" },
	[GetHashKey('WRpanamera')] = { model = "WRpanamera", price = 1000000, banned = false, name = "WRpanamera", trunk = 50, type = "service" },
	[GetHashKey('WRtacoma22')] = { model = "WRtacoma22", price = 1000000, banned = false, name = "WRtacoma22", trunk = 50, type = "service" },
	[GetHashKey('WRtacoma22choque')] = { model = "WRtacoma22choque", price = 1000000, banned = false, name = "WRtacoma22choque", trunk = 50, type = "service" },
	[GetHashKey('WRtacoma22cot')] = { model = "WRtacoma22cot", price = 1000000, banned = false, name = "WRtacoma22cot", trunk = 50, type = "service" },
	[GetHashKey('WRtaycan')] = { model = "WRtaycan", price = 1000000, banned = false, name = "WRtaycan", trunk = 50, type = "service" },
	[GetHashKey('WRauditron')] = { model = 'WRauditron', price = 1000000, banned = false, name = 'WRauditron', trunk = 50, type = 'service' },
	[GetHashKey('WRq7')] = { model = 'WRq7', price = 1000000, banned = false, name = 'WRq7', trunk = 50, type = 'service' },
	[GetHashKey('WRr8')] = { model = 'WRr8', price = 1000000, banned = false, name = 'WRr8', trunk = 50, type = 'service' },
	[GetHashKey('WRtacoma22core')] = { model = 'WRtacoma22core', price = 1000000, banned = false, name = 'WRtacoma22core', trunk = 50, type = 'service' },



	[GetHashKey('WRbmwm4')] = { model = "WRbmwm4", price = 1000000, banned = false, name = "BMW M4 Policia", trunk = 30, type = "service" },
	[GetHashKey('WRclassxx')] = { model = "WRclassxx", price = 1000000, banned = false, name = "Class xx", trunk = 30, type = "service" },


	[GetHashKey('dodgeems')] = { model = "dodgeems", price = 1000000, banned = false, name = "Dodge EMS", trunk = 30, type = "service" },
	
	--[[VEÍCULOS VIP]]--
	[GetHashKey('rmodlegosenna')] = { model = 'rmodlegosenna', price = 1500000, banned = false, name = 'Mclaren Lego Senna ', trunk = 30, type = 'vip'},
	[GetHashKey('foxc8')] = { model = 'foxc8', price = 1500000, banned = false, name = 'Corvette C8 ', trunk = 30, type = 'vip'},
	[GetHashKey('m3e46')] = { model = 'm3e46', price = 1500000, banned = false, name = 'BMW M3 E46', trunk = 30, type = 'vip'},
	[GetHashKey('rmodcharger69')] = { model = 'rmodcharger69', price = 1500000, banned = false, name = 'Dodge Charger', trunk = 30, type = 'vip'},
	[GetHashKey('civic')] = { model = 'civic', price = 1500000, banned = false, name = 'Civic', trunk = 40, type = 'vip'},
	[GetHashKey('rmodcamaro')] = { model = 'rmodcamaro', price = 1500000, banned = false, name = 'Camaro', trunk = 40, type = 'vip'},
	[GetHashKey('rmodmartin')] = { model = 'rmodmartin', price = 1500000, banned = false, name = 'rmodmartin', trunk = 40, type = 'vip'},
	[GetHashKey('jetta2017')] = { model = 'jetta2017', price = 1500000, banned = false, name = 'Jetta 2017', trunk = 30, type = 'vip' },
	[GetHashKey('rmodessenza')] = { model = 'rmodessenza', price = 1500000, banned = false, name = 'Lamborghini Essenza', trunk = 30, type = 'vip' },
	[GetHashKey('adr8')] = { model = 'adr8', price = 1500000, banned = false, name = 'Audi R8 2021', trunk = 30, type = 'vip' },
	[GetHashKey('dukes2')] = { model = 'dukes2', price = 1500000, banned = false, name = 'Dukes Blindado', trunk = 30, type = 'vip' },
	[GetHashKey('dm1200')] = { model = 'dm1200', price = 1500000, banned = false, name = 'Ducati', trunk = 30, type = 'vip' },
	[GetHashKey('nissanskyliner34')] = 	{ model = 'nissanskyliner34', price = 1500000, banned = false, name = 'Skyline R34', trunk = 100, type = 'vip' },
	[GetHashKey('r1')] = { model = 'r1', price = 1500000, banned = false, name = 'Yamaha R1', trunk = 50, type = 'vip' },
	[GetHashKey('s1000rr')] = { model = 's1000rr', price = 1500000, banned = false, name = 'BMW S1000RR', trunk = 30, type = 'vip' },
	[GetHashKey('pcj')] = { model = 'pcj', price = 1500000, banned = false, name = 'KTM', trunk = 5, type = 'vip' },
	[GetHashKey('audirs7')] = { model = 'audirs7', price = 1500000, banned = false, name = 'Audi RS7', trunk = 40, type = 'vip' },
	[GetHashKey('718b')] = { model = '718b', price = 1500000, banned = false, name = 'Porsche 718B', trunk = 40, type = 'vip' },
	[GetHashKey('ferrariitalia')] = { model = 'ferrariitalia', price = 1500000, banned = false, name = 'Ferrari Itália', trunk = 40, type = 'vip' },
	[GetHashKey('fordmustang')] = { model = 'fordmustang', price = 1500000, banned = false, name = 'Ford Mustang', trunk = 40, type = 'vip' },
	[GetHashKey('lancerevolutionx')] = { model = 'lancerevolutionx', price = 1500000, banned = false, name = 'Lancer Evolution X', trunk = 40, type = 'vip' },
	[GetHashKey('teslaprior')] = { model = 'teslaprior', price = 1500000, banned = false, name = 'Tesla Prior', trunk = 40, type = 'vip' },
	[GetHashKey('bmws')] = { model = 'bmws', price = 1500000, banned = false, name = 'BMW S', trunk = 40, type = 'vip' },
	[GetHashKey('panigale')] = { model = 'panigale', price = 1500000, banned = false, name = 'Ducati', trunk = 40, type = 'vip' },
	[GetHashKey('gsxr')] = { model = 'gsxr', price = 1500000, banned = false, name = 'Suzuki GSXR', trunk = 40, type = 'vip' },
	[GetHashKey('hayabusa')] = { model = 'hayabusa', price = 1500000, banned = false, name = 'Hayabusa', trunk = 40, type = 'vip' },
	[GetHashKey('r6')] = { model = 'r6', price = 1500000, banned = false, name = 'Yamaha R6', trunk = 40, type = 'vip' },
	[GetHashKey('tiger')] = { model = "tiger", price = 1500000, banned = false, name = "Tiger", trunk = 40, type = 'vip' },
	[GetHashKey('xj6')] = { model = 'xj6', price = 1500000, banned = false, name = 'XJ6', trunk = 40, type = 'vip' },
	[GetHashKey('xt660vip')] = { model = 'xt660vip', price = 1500000, banned = false, name = 'XT 660', trunk = 40, type = 'vip' },
	[GetHashKey('z1000')] = { model = 'z1000', price = 1500000, banned = false, name = 'Z1000', trunk = 40, type = 'vip' },
	[GetHashKey('zx6r')] = { model = 'zx6r', price = 1500000, banned = false, name = 'ZX6R', trunk = 40, type = 'vip' },
	[GetHashKey('zx10')] = { model = 'zx10', price = 1500000, banned = false, name = 'ZX10', trunk = 40, type = 'vip' },
	[GetHashKey('rmodbacalar')] = { model = 'rmodbacalar', price = 1500000, banned = false, name = 'Bacalar', trunk = 40, type = 'vip' },
	[GetHashKey('rmodbentleygt')] = { model = 'rmodbentleygt', price = 1500000, banned = false, name = 'Bentley GT', trunk = 40, type = 'vip' },
	[GetHashKey('rmodbmwm8')] = { model = 'rmodbmwm8', price = 1500000, banned = false, name = 'BMW M8', trunk = 40, type = 'vip' },
	[GetHashKey('africat')] = { model = 'africat', price = 1500000, banned = false, name = 'Africat', trunk = 40, type = 'vip' },
	[GetHashKey('c7')] = { model = 'c7', price = 1500000, banned = false, name = 'Corvette Conversivel 7', trunk = 40, type = 'vip' },
	[GetHashKey('cx75')] = { model = 'cx75', price = 1500000, banned = false, name = 'Jaguar C-X75', trunk = 40, type = 'vip' },
	[GetHashKey('divo')] = { model = 'divo', price = 1500000, banned = false, name = 'Bugatti Divo', trunk = 40, type = 'vip' },
	[GetHashKey('evoque')] = { model = 'evoque', price = 1500000, banned = false, name = 'Range Rover Evoque', trunk = 40, type = 'vip' },
	[GetHashKey('f8t')] = { model = 'f8t', price = 1500000, banned = false, name = 'Ferrari Pista 8', trunk = 40, type = 'vip' },
	[GetHashKey('fz07')] = { model = 'fz07', price = 1500000, banned = false, name = 'Yamaha FZ-07', trunk = 40, type = 'vip' },
	[GetHashKey('nh2r')] = { model = 'nh2r', price = 1500000, banned = false, name = 'Kawasaki Ninja H2R', trunk = 40, type = 'vip' },
	[GetHashKey('pamodelra17turbo')] = { model = 'pamodelra17turbo', price = 1500000, banned = false, name = 'Porsche Pamodelra 17 TURBO', trunk = 40, type = 'vip' },
	[GetHashKey('r1200')] = { model = 'r1200', price = 1500000, banned = false, name = 'BMW R1250', trunk = 40, type = 'vip' },
	[GetHashKey('terzo')] = { model = 'terzo', price = 1500000, banned = false, name = 'Lamborghini Terzo', trunk = 40, type = 'vip' },
	[GetHashKey('hornet')] = { model = 'hornet', price = 100000, banned = false, name = 'Hornet', trunk = 40, type = 'vip' },
	[GetHashKey('civictyper')] = { model = 'civictyper', price = 1500000, banned = false, name = 'CivicType R', trunk = 40, type = 'vip' },
	[GetHashKey('18performante')] = { model = '18performante', price = 1500000, banned = false, name = 'Lamborghini Huracan NOVA', trunk = 40, type = 'vip' },
	[GetHashKey('bmwi8')] = { model = 'bmwi8', price = 1500000, banned = false, name = 'BMW I8', trunk = 40, type = 'vip' },
	[GetHashKey('silvias15')] = { model = 'silvias15', price = 1500000, banned = false, name = 'Nissan Silvia S15', trunk = 50, type = 'vip' },
	[GetHashKey('silvia')] = { model = 'silvia', price = 1500000, banned = false, name = 'Silvia GK', trunk = 50, type = 'vip' },
	[GetHashKey('24humevof')] = { model = '24humevof', price = 1500000, banned = false, name = 'Hummer EV 2024', trunk = 600, type = 'vip' },
	[GetHashKey('d99')] = { model = 'd99', price = 1500000, banned = false, name = 'Ducati 1199 Panigale', trunk = 50, type = 'vip' },
	[GetHashKey('elva')] = { model = 'elva', price = 1500000, banned = false, name = 'Elva', trunk = 40, type = 'vip' },
	[GetHashKey('foxct')] = { model = 'foxct', price = 1500000, banned = false, name = 'Tesla CyberTruck', trunk = 40, type = 'vip' },
	[GetHashKey('foxevo')] = { model = 'foxevo', price = 1500000, banned = false, name = 'Lamborghini Evo', trunk = 40, type = 'vip' },
	[GetHashKey('foxgt2')] = { model = 'foxgt2', price = 1500000, banned = false, name = 'McLaren GT2', trunk = 40, type = 'vip' },
	[GetHashKey('foxsenna')] = { model = 'foxsenna', price = 1500000, banned = false, name = 'McLaren Senna', trunk = 40, type = 'vip' },
	[GetHashKey('gemera')] = { model = 'gemera', price = 1500000, banned = false, name = 'Koenigsegg', trunk = 40, type = 'vip' },
	[GetHashKey('giuliagta')] = { model = 'giuliagta', price = 1500000, banned = false, name = 'Giulia', trunk = 40, type = 'vip' },
	[GetHashKey('golf7gti')] = { model = 'golf7gti', price = 1500000, banned = false, name = 'GOLF GTI', trunk = 40, type = 'vip' },
	[GetHashKey('rmodgt63')] = { model = 'rmodgt63', price = 1500000, banned = false, name = 'Mercedes GT63', trunk = 40, type = 'vip' },
	[GetHashKey('lwgtr')] = { model = 'lwgtr', price = 1500000, banned = false, name = 'LWGTR', trunk = 40, type = 'vip' },
	[GetHashKey('huracangt3evo')] = { model = 'huracangt3evo', price = 1500000, banned = false, name = 'Lamborghini Huracan GT3 EVO', trunk = 40, type = 'vip' },
	[GetHashKey('l200')] = { model = 'l200', price = 1500000, banned = false, name = 'L200', trunk = 40, type = 'vip' },
	[GetHashKey('bmwm4gts')] = { model = 'bmwm4gts', price = 1500000, banned = false, name = 'BMW M4GTS', trunk = 40, type = 'vip' },
	[GetHashKey('mansgt')] = { model = 'mansgt', price = 1500000, banned = false, name = 'MANSGT', trunk = 40, type = 'vip' },
	[GetHashKey('monza')] = { model = 'monza', price = 1500000, banned = false, name = 'Monza', trunk = 40, type = 'vip' },
	[GetHashKey('paredao')] = { model = 'paredao', price = 1500000, banned = false, name = 'Paredão', trunk = 40, type = 'vip' },
	[GetHashKey('pct18')] = { model = "pct18", price = 1500000, banned = false, name = 'Cayenne Turbo', trunk = 40, type = 'vip' },
	[GetHashKey('pistaspider19')] = { model = 'pistaspider19', price = 1500000, banned = false, name = 'Ferrari Spider', trunk = 40, type = 'vip' },
	[GetHashKey('ram2500')] = { model = 'ram2500', price = 1500000, banned = false, name = 'Caminhonete RAM2500', trunk = 130, type = 'vip' },
	[GetHashKey('fd')] = { model = 'fd', price = 1500000, banned = false, name = 'RX7', trunk = 40, type = 'vip' },
	[GetHashKey('rs7c821')] = { model = 'rs7c821', price = 1500000, banned = false, name = 'rs7c821', trunk = 40, type = 'vip' },
	[GetHashKey('mt07')] = { model = 'mt07', price = 1500000, banned = false, name = 'mt07', trunk = 40, type = 'vip' },

	
	[GetHashKey('a80')] = { model = 'a80', price = 1500000, banned = false, name = 'Toyota Supra', trunk = 40, type = 'vip' },
	[GetHashKey('rs6wb')] = { model = 'rs6wb', price = 1500000, banned = false, name = 'RS6WB', trunk = 40, type = 'vip' },
	[GetHashKey('valkyrietp')] = { model = 'valkyrietp', price = 1500000, banned = false, name = 'Valkyrie TP', trunk = 40, type = 'vip' },
	[GetHashKey('rmodx6')] = { model = 'rmodx6', price = 1500000, banned = false, name = 'BMW X6', trunk = 40, type = 'vip' },
	[GetHashKey('918S')] = { model = '918S', price = 1500000, banned = false, name = 'Porsche Spyder', trunk = 30, type = 'vip' },
	[GetHashKey('macanturbo')] = { model = 'macanturbo', price = 1500000, banned = false, name = 'Porshe Macan', trunk = 30, type = 'vip' },
	[GetHashKey('taycan21')] = { model = 'taycan21', price = 1500000, banned = false, name = 'Porshe Taycan', trunk = 30, type = 'vip' },
	[GetHashKey('WRtiger900')] = { model = 'WRtiger900', price = 1500000, banned = false, name = 'Triumph Tiger 900', trunk = 30, type = 'vip' },
	[GetHashKey('rmodsianr')] = { model = 'rmodsianr', price = 1500000, banned = false, name = 'Lamborghini Sian', trunk = 30, type = 'vip' },
	[GetHashKey('chevette')] = { model = 'chevette', price = 300000, banned = false, name = 'Chevette', trunk = 30, type = 'vip'},
	[GetHashKey('saveiro')] = { model = 'saveiro', price = 300000, banned = false, name = 'Saveiro', trunk = 50, type = 'vip'},
	[GetHashKey('terbyte')] = { model = 'terbyte', price = 1500000, banned = false, name = 'Terbyte', trunk = 2000, type = 'vip'},
	[GetHashKey('WRtrailblazercore')] = { model = 'WRtrailblazercore', price = 1, banned = false, name = 'Blazer Core', trunk = 30, type = 'service' },
	[GetHashKey('WRlwgtr')] = { model = 'WRlwgtr', price = 1, banned = false, name = 'WR GTR', trunk = 30, type = 'service' },

	
	[GetHashKey('2f2fgtr34')] = { model = '2f2fgtr34', price = 1500000, banned = false, name = 'GT-R 34', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fgts')] = { model = '2f2fgts', price = 1500000, banned = false, name = 'Eclipse GTS', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fmk4')] = { model = '2f2fmk4', price = 1500000, banned = false, name = 'Supra MK4', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fmle7')] = { model = '2f2fmle7', price = 1500000, banned = false, name = 'Lancer Evo VII', trunk = 30, type = 'vip'},
	[GetHashKey('2f2frx7')] = { model = '2f2frx7', price = 1500000, banned = false, name = 'RX7 FD', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fs2000')] = { model = '2f2fs2000', price = 1500000, banned = false, name = 'S2000', trunk = 30, type = 'vip'},
	[GetHashKey('350zdk')] = { model = '350zdk', price = 1500000, banned = false, name = '350Z DK', trunk = 30, type = 'vip'},
	[GetHashKey('350zm')] = { model = '350zm', price = 1500000, banned = false, name = '350Z Morimoto', trunk = 30, type = 'vip'},
	[GetHashKey('acura2f2f')] = { model = 'acura2f2f', price = 1500000, banned = false, name = 'NSX NA1', trunk = 30, type = 'vip'},
	[GetHashKey('ff4wrx')] = { model = 'ff4wrx', price = 1500000, banned = false, name = 'Impreza WRX', trunk = 30, type = 'vip'},
	[GetHashKey('fnf4r34')] = { model = 'fnf4r34', price = 1500000, banned = false, name = 'GT-R 34 FNF4', trunk = 30, type = 'vip'},
	[GetHashKey('fnfjetta')] = { model = 'fnfjetta', price = 1500000, banned = false, name = 'Jetta 3', trunk = 30, type = 'vip'},
	[GetHashKey('fnflan')] = { model = 'fnflan', price = 1500000, banned = false, name = 'Lancer Evo VIII', trunk = 30, type = 'vip'},
	[GetHashKey('fnfmits')] = { model = 'fnfmits', price = 1500000, banned = false, name = 'Eclipse GS-T', trunk = 30, type = 'vip'},
	[GetHashKey('fnfmk4')] = { model = 'fnfmk4', price = 1500000, banned = false, name = 'Supra MK4 FNF', trunk = 30, type = 'vip'},
	[GetHashKey('fnfrx7')] = { model = 'fnfrx7', price = 1500000, banned = false, name = 'RX7 Veilside', trunk = 30, type = 'vip'},
	[GetHashKey('fnfrx7dom')] = { model = 'fnfrx7dom', price = 1500000, banned = false, name = 'RX7 Toretto', trunk = 30, type = 'vip'},
	[GetHashKey('hcej1')] = { model = 'hcej1', price = 1500000, banned = false, name = 'Civic EJ1', trunk = 30, type = 'vip'},
	[GetHashKey('silvias15varietta ')] = { model = 'silvias15varietta ', price = 1500000, banned = false, name = 'S15 Monalisa', trunk = 30, type = 'vip'},
	[GetHashKey('WRs10')] = { model = 'WRs10', price = 1500000, banned = false, name = 'S10 2021', trunk = 80, type = 'vip'},
	[GetHashKey('minittrs')] = { model = 'minittrs', price = 1500000, banned = false, name = 'Audi TRS KID', trunk = 10, type = 'vip'},
	[GetHashKey('wrbmwx6civ')] = { model = 'wrbmwx6civ', price = 1500000, banned = false, name = 'wrbmwx6civ', trunk = 30, type = 'vip'},
	
	--[[FIM DOS VIP]]--
	[GetHashKey('furia')] = { model = 'furia', price = 10000000, banned = false, name = 'Furia', trunk = 50, type = 'imports' },
	[GetHashKey('italirsx')] = { model = 'italirsx', price = 10000000, banned = false, name = 'ItaliRSX', trunk = 30, type = 'outros' },
	[GetHashKey('krieger')] = { model = 'krieger', price = 4000000, banned = false, name = 'Krieger', trunk = 30, type = 'imports', },
	[GetHashKey('emerus')] = { model = 'emerus', price = 2000000, banned = false, name = 'Emerus', trunk = 30, type = 'imports' },
	[GetHashKey('zorrusso')] = { model = 'zorrusso', price = 3500000, banned = false, name = 'Zorrusso', trunk = 30, type = 'imports'  },
	[GetHashKey('thrax')] = { model = 'thrax', price = 5000000, banned = false, name = 'Thrax', trunk = 30, type = 'imports' },
	[GetHashKey('vstr')] = { model = 'vstr', price = 200000, banned = false, name = 'Vstr', trunk = 30, type = 'outros' },
	[GetHashKey('caracara2')] = { model = 'caracara2', price = 1000000, banned = false, name = 'Caracara2', trunk = 90, type = 'suvs' },
	[GetHashKey('verus')] = { model = 'verus', price = 1000000, banned = false, name = 'Verus', trunk = 50, type = 'motos' },
	[GetHashKey('hellion')] = { model = "hellion", price = 800000, banned = false, name = "Hellion", trunk = 70, type = 'suvs' },
	[GetHashKey('novak')] = { model = "novak", price = 800000, banned = false, name = "Novak", trunk = 70, type = 'suvs' },
	[GetHashKey('rebla')] = { model = 'rebla', price = 800000, banned = false, name = 'Rebla', trunk = 70, type = 'suvs' },
	[GetHashKey('paragon')] = { model = 'paragon', price = 800000, banned = false, name = 'Paragon', trunk = 30, type = 'outros' },
	[GetHashKey('jugular')] = { model = 'jugular', price = 700000, banned = false, name = 'Jugular', trunk = 30, type = 'outros' },
	[GetHashKey('komoda')] = { model = 'komoda', price = 850000, banned = false, name = 'Komoda', trunk = 30, type = 'outros' },
	[GetHashKey('drafter')] = { model = 'drafter', price = 800000, banned = false, name = 'Drafter', trunk = 30, type = 'outros' },
	[GetHashKey('pounder2')] = { model = 'pounder2', price = 800000, banned = false, name = 'pounder2', trunk = 3000, type = 'service' },
	[GetHashKey('benson')] = { model = "benson", price = 10000000, banned = false, name = "Benson", trunk = 1000, type = 'service' },
	 
	[GetHashKey('brickade')] = { model = 'brickade', price = 1000000, banned = false, name = 'Brickade', trunk = 2000, type = 'vip' },
	[GetHashKey('club')] = { model = 'club', price = 800000, banned = false, name = 'Club', trunk = 30, type = 'outros' },
	[GetHashKey('kanjo')] = { model = 'kanjo', price = 90000, banned = false, name = 'Kanjo', trunk = 30, type = 'outros'},
	[GetHashKey('issi5')] = { model = 'issi5', price = 1000000, banned = false, name = 'Issi 5', trunk = 30, type = 'outros' },
	[GetHashKey('issi4')] = { model = 'issi4', price = 1000000, banned = false,  name = 'Issi 4', trunk = 30, type = 'outros' },
	[GetHashKey('panto')] = { model = 'panto', price = 5000, banned = false, name = 'Panto', trunk = 30, type = 'outros' },
	[GetHashKey('glendale2')] = { model = 'glendale2', price = 250000, banned = false, name = 'Glendale 2', trunk = 30, type = 'sedans' },
	[GetHashKey('regina')] = { model = 'regina', price = 200000, banned = false,  name = 'Regina', trunk = 30, type = 'sedans' },
	[GetHashKey('romero')] = { model = 'romero', price = 500000, banned = false, name = 'Funerário', trunk = 30, type = 'sedans' },
	[GetHashKey('stretch')] = { model = 'stretch', price = 15000000, banned = false, name = 'Limousine', trunk = 60, type = 'sedans' },
	[GetHashKey('pbus2')] = { model = 'pbus2', price = 1000, banned = false, name = 'Bus Fest', trunk = 0, type = 'service' },
	[GetHashKey('imorgon')] = { model = 'imorgon', price = 900000, banned = false, name = 'Imorgon', trunk = 30, type = 'outros' },
	[GetHashKey('issi7')] = { model = 'issi7', price = 400000, banned = false, name = 'Issi 7', trunk = 30, type = 'outros'},
	[GetHashKey('locust')] = { model = 'locust', price = 2000000, banned = false, name = 'Ocelot', trunk = 45, type = 'outros' },
	[GetHashKey('neo')] = { model = 'neo', price = 2000000, banned = false, name = 'Neo', trunk = 30, type = 'outros' },
	[GetHashKey('penumbra2')] = { model = 'penumbra2', price = 600000, banned = false, name = 'Penumbra 2', trunk = 30, type = 'outros' },
	[GetHashKey('revolter')] = { model = 'revolter', price = 200000, banned = false, name = 'Revolter', trunk = 30, type = 'outros' },
	[GetHashKey('schafter2')] = { model = 'schafter2', price = 100000, banned = false, name = 'Schafter 2', trunk = 30, type = 'outros' },
	[GetHashKey('blista')] = { model = 'blista', price = 90000, banned = false, name = 'Blista', trunk = 40, type = 'outros'},

	[GetHashKey('sultan2')] = { model = 'sultan2', price = 500000, banned = false, name = 'Sultan 2', trunk = 30, type = 'outros' },
	[GetHashKey('dynasty')] = { model = 'dynasty', price = 200000, banned = false, name = 'Dynasty', trunk = 30, type = 'outros' },
	[GetHashKey('manana2')] = { model = 'manana2', price = 300000, banned = false, name = 'Manana 2', trunk = 30, type = 'outros' },
	[GetHashKey('peyote3')] = { model = 'peyote3', price = 300000, banned = false, name = 'Peyote 3', trunk = 30, type = 'outros' },
	[GetHashKey('retinue2')] = { model = 'retinue2', price = 300000, banned = false, name = 'Retinue 2', trunk = 30, type = 'outros' },
	[GetHashKey('savestra')] = { model = 'savestra', price = 400000, banned = false, name = 'Savestra', trunk = 30, type = 'outros' },
	-- [GetHashKey('viseris')] = { model = 'viseris', price = 600000, banned = false, name = 'Viseris', trunk = 30, type = 'outros' },
	[GetHashKey('s80')] = { model = 's80', price = 1000000, banned = false, name = 'S80', trunk = 30, type = 'imports' },
	[GetHashKey('tigon')] = { model = 'tigon', price = 2000000, banned = false, name = 'Tigon', trunk = 30, type = 'imports' },
	[GetHashKey('brioso')] = { model = 'brioso', price = 45000, banned = false, name = 'Brioso', trunk = 30, type = 'outros' },
	[GetHashKey('brioso2')] = { model = "brioso2", price = 70000, banned = false, name = "Brioso 2", trunk = 30, type = 'outros' },
	[GetHashKey('dilettante')] = { model = 'dilettante', price = 100000, banned = false, name = 'Dilettante', trunk = 30, type = 'outros' },
	[GetHashKey('primo2')] = { model = 'primo2', price = 150000, banned = false, name = 'Primo2', trunk = 60, type = 'sedans' },
	[GetHashKey('chino')] = { model = 'chino', price = 150000, banned = false, name = 'Chino', trunk = 50, type = 'outros' },
	[GetHashKey('chino2')] = { model = 'chino2', price = 600000, banned = false, name = 'Chino2', trunk = 60, type = 'outros' },
	[GetHashKey('coquette3')] = { model = 'coquette3', price = 1500000, banned = false, name = 'Coquette3', trunk = 40, type = 'outros' },
	[GetHashKey('dominator')] = { model = 'dominator', price = 200000, banned = false, name = 'Dominator', trunk = 50, type = 'outros' },
	[GetHashKey('dominator2')] = { model = 'dominator2', price = 300000, banned = false, name = 'Dominator2', trunk = 50, type = 'outros' },
	[GetHashKey('dukes')] = { model = 'dukes', price = 200000, banned = false, name = 'Dukes', trunk = 40, type = 'outros' },
	[GetHashKey('faction')] = { model = 'faction', price = 140000, banned = false, name = 'Faction', trunk = 50, type = 'outros' },
	[GetHashKey('faction2')] = { model = 'faction2', price = 500000, banned = false, name = 'Faction2', trunk = 40, type = 'outros' },
	[GetHashKey('faction3')] = { model = 'faction3', price = 500000, banned = false, name = 'Faction3', trunk = 60, type = 'outros' },
	[GetHashKey('gauntlet4')] = { model = 'gauntlet4', price = 1000000, banned = false, name = 'Gauntlet 4', trunk = 30, type = 'outros' },
	[GetHashKey('gauntlet3')] = { model = 'gauntlet3', price = 150000, banned = false, name = 'Gauntlet 3', trunk = 30, type = 'outros' },
	[GetHashKey('gauntlet2')] = { model = 'gauntlet2', price = 400000, banned = false, name = 'Gauntlet2', trunk = 40, type = 'outros' },
	[GetHashKey('hermes')] = { model = 'hermes', price = 200000, banned = false, name = 'Hermes', trunk = 50, type = 'outros' },
	[GetHashKey('hotknife')] = { model = 'hotknife', price = 500000, banned = false, name = 'Hotknife', trunk = 30, type = 'outros' },
	[GetHashKey('moonbeam')] = { model = 'moonbeam', price = 10000000, banned = false, name = 'Moonbeam', trunk = 80, type = 'outros' },
	[GetHashKey('moonbeam2')] = { model = 'moonbeam2', price = 5000000, banned = false, name = 'Moonbeam2', trunk = 70, type = 'outros' },
	[GetHashKey('nightshade')] = { model = 'nightshade', price = 450000, banned = false, name = 'Nightshade', trunk = 30, type = 'outros' },
	[GetHashKey('picador')] = { model = 'picador', price = 200000, banned = false, name = 'Picador', trunk = 90, type = 'outros' },
	[GetHashKey('ruiner')] = { model = 'ruiner', price = 100000, banned = false, name = 'Ruiner', trunk = 50, type = 'outros' },
	[GetHashKey('sabregt')] = { model = 'sabregt', price = 120000, banned = false, name = 'Sabregt', trunk = 60, type = 'outros' },
	[GetHashKey('sabregt2')] = { model = 'sabregt2', price = 150000, banned = false, name = 'Sabregt2', trunk = 60, type = 'outros' },
	[GetHashKey('gburrito')] = { model = 'gburrito', price = 1500000, banned = false, name = 'GBurrito', trunk = 100, type = 'service' },
	[GetHashKey('tokyoamarokjornal')] = { model = 'tokyoamarokjornal', price = 800000, banned = false, name = 'Amarok Jornal', trunk = 50, type = 'service' },
	[GetHashKey('slamvan')] = { model = 'slamvan', price = 800000, banned = false, name = 'Slamvan', trunk = 80, type = 'outros' },
	[GetHashKey('slamvan2')] = { model = 'slamvan2', price = 800000, banned = false, name = 'Slamvan2', trunk = 50, type = 'service' },
	[GetHashKey('slamvan3')] = { model = 'slamvan3', price = 800000, banned = false, name = 'Slamvan3', trunk = 80, type = 'outros' },
	[GetHashKey('stalion')] = { model = 'stalion', price = 400000, banned = false, name = 'Stalion', trunk = 30, type = 'outros' },
	[GetHashKey('stalion2')] = { model = 'stalion2', price = 260000, banned = false, name = 'Stalion2', trunk = 20, type = 'outros' },
	[GetHashKey('tampa')] = { model = 'tampa', price = 200000, banned = false, name = 'Tampa', trunk = 40, type = 'outros' },
	[GetHashKey('vigero')] = { model = 'vigero', price = 170000, banned = false, name = 'Vigero', trunk = 30, type = 'outros' },
	[GetHashKey('virgo')] = { model = 'virgo', price = 150000, banned = false, name = 'Virgo', trunk = 60, type = 'outros' },
	[GetHashKey('virgo2')] = { model = 'virgo2', price = 150000, banned = false, name = 'Virgo2', trunk = 50, type = 'outros' },
	[GetHashKey('virgo3')] = { model = 'virgo3', price = 150000, banned = false, name = 'Virgo3', trunk = 60, type = 'outros' },
	[GetHashKey('voodoo')] = { model = 'voodoo', price = 300000, banned = false, name = 'Voodoo', trunk = 60, type = 'outros' },
	[GetHashKey('voodoo2')] = { model = 'voodoo2', price = 100000, banned = false, name = 'Voodoo2', trunk = 60, type = 'outros' },
	[GetHashKey('yosemite')] = { model = 'yosemite', price = 800000, banned = false, name = 'Yosemite', trunk = 130, type = 'outros' },
	[GetHashKey('yosemite3')] = { model = 'yosemite3', price = 1000000, banned = false, name = 'Yosemite 3', trunk = 70, type = 'outros' },
	[GetHashKey('bfinjection')] = { model = 'bfinjection', price = 60000, banned = false, name = 'Bfinjection', trunk = 20, type = 'suvs' },
	[GetHashKey('bifta')] = { model = 'bifta', price = 800000, banned = false, name = 'Bifta', trunk = 20, type = 'suvs' },
	[GetHashKey('bodhi2')] = { model = 'bodhi2', price = 900000, banned = false, name = 'Bodhi2', trunk = 90, type = 'suvs' },
	[GetHashKey('brawler')] = { model = 'brawler', price = 4000000, banned = false, name = 'Brawler', trunk = 100, type = 'outros' },
	[GetHashKey('trophytruck')] = { model = 'trophytruck', price = 2000000, banned = false, name = 'Trophytruck', trunk = 10, type = 'suvs' },
	[GetHashKey('trophytruck2')] = { model = 'trophytruck2', price = 2000000, banned = false, name = 'Trophytruck2', trunk = 15, type = 'suvs' },
	[GetHashKey('dubsta3')] = { model = 'dubsta3', price = 5000000, banned = false, name = 'Dubsta3', trunk = 90, type = 'suvs' },
	[GetHashKey('mesa3')] = { model = 'mesa3', price = 1500000, banned = false, name = 'Mesa3', trunk = 60, type = 'suvs' },
	[GetHashKey('rancherxl')] = { model = 'rancherxl', price = 200000, banned = false, name = 'Rancherxl', trunk = 70, type = 'suvs' },
	[GetHashKey('rebel')] = { model = 'rebel', price = 2500000, banned = false, name = 'Rebel', trunk = 250, type = 'service' },
	[GetHashKey('rebel2')] = { model = 'rebel2', price = 2000000, banned = false, name = 'Rebel2', trunk = 200, type = 'suvs' },
	[GetHashKey('riata')] = { model = 'riata', price = 2500000, banned = false, name = 'Riata', trunk = 250, type = 'suvs' },
	[GetHashKey('dloader')] = { model = 'dloader', price = 150000, banned = false, name = 'Dloader', trunk = 80, type = 'outros' },
	[GetHashKey('ratloader')] = { model = 'ratloader', price = 1000000, banned = false, name = 'Caminhão', trunk = 80, type = 'service' },
	[GetHashKey('sandking')] = { model = 'sandking', price = 2500000, banned = false, name = 'Sandking', trunk = 250, type = 'suvs' },
	[GetHashKey('sandking2')] = { model = 'sandking2', price = 2500000, banned = false, name = 'Sandking2', trunk = 250, type = 'outros' },
	[GetHashKey('baller')] = { model = 'baller', price = 1000000, banned = false, name = 'Baller', trunk = 50, type = 'suvs' },
	[GetHashKey('baller2')] = { model = 'baller2', price = 1500000, banned = false, name = 'Baller2', trunk = 50, type = 'suvs' },
	[GetHashKey('baller3')] = { model = 'baller3', price = 2000000, banned = false, name = 'Baller3', trunk = 50, type = 'suvs' },
	[GetHashKey('baller4')] = { model = 'baller4', price = 2500000, banned = false, name = 'Baller4', trunk = 50, type = 'suvs' },
		-- aqui
	[GetHashKey('baller5')] = { model = 'baller5', price = 270000, banned = false, name = 'Baller5', trunk = 50, type = 'vip' },
	[GetHashKey('baller6')] = { model = 'baller6', price = 280000, banned = false, name = 'Baller6', trunk = 50, type = 'suvs' },
	[GetHashKey('bjxl')] = { model = 'bjxl', price = 1000000, banned = false, name = 'Bjxl', trunk = 50, type = 'suvs' },
	[GetHashKey('cavalcade')] = { model = 'cavalcade', price = 500000, banned = false, name = 'Cavalcade', trunk = 60, type = 'suvs' },
	[GetHashKey('cavalcade2')] = { model = 'cavalcade2', price = 200000, banned = false, name = 'Cavalcade2', trunk = 60, type = 'suvs' },
	[GetHashKey('contender')] = { model = 'contender', price = 7000000, banned = false, name = 'Contender', trunk = 80, type = 'suvs' },
	[GetHashKey('dubsta')] = { model = 'dubsta', price = 1500000, banned = false, name = 'Dubsta', trunk = 70, type = 'suvs' },
	[GetHashKey('dubsta2')] = { model = 'dubsta2', price = 2000000, banned = false, name = 'Dubsta2', trunk = 70, type = 'suvs' },
	[GetHashKey('fq2')] = { model = 'fq2', price = 400000, banned = false, name = 'Fq2', trunk = 50, type = 'suvs' },
	[GetHashKey('granger')] = { model = 'granger', price = 600000, banned = false, name = 'Granger', trunk = 100, type = 'suvs' },
	[GetHashKey('gresley')] = { model = 'gresley', price = 300000, banned = false, name = 'Gresley', trunk = 50, type = 'suvs' },
	[GetHashKey('habanero')] = { model = 'habanero', price = 220000, banned = false, name = 'Habanero', trunk = 50, type = 'suvs' },
	[GetHashKey('seminole')] = { model = 'seminole', price = 230000, banned = false, name = 'Seminole', trunk = 60, type = 'suvs' },
	[GetHashKey('seminole2')] = { model = 'seminole2', price = 800000, banned = false, name = 'Seminole 2', trunk = 70, type = 'suvs' },
	[GetHashKey('serrano')] = { model = 'serrano', price = 250000, banned = false, name = 'Serrano', trunk = 50, type = 'suvs' },
	[GetHashKey('xls')] = { model = 'xls', price = 400000, banned = false, name = 'Xls', trunk = 50, type = 'suvs' },
	[GetHashKey('xls2')] = { model = 'xls2', price = 350000, banned = false, name = 'Xls2', trunk = 50, type = 'outros' },
	[GetHashKey('asea')] = { model = 'asea', price = 100000, banned = false, name = 'Asea', trunk = 30, type = 'sedans' },
	[GetHashKey('asterope')] = { model = 'asterope', price = 150000, banned = false, name = 'Asterope', trunk = 30, type = 'sedans' },
	[GetHashKey('cog55')] = { model = 'cog55', price = 200000, banned = false, name = 'Cog55', trunk = 50, type = 'sedans' },
	[GetHashKey('cog552')] = { model = 'cog552', price = 200000, banned = false, name = 'Cog552', trunk = 50, type = 'outros' },
	[GetHashKey('cognoscenti')] = { model = 'cognoscenti', price = 190000, banned = false, name = 'Cognoscenti', trunk = 50, type = 'outros' },
	[GetHashKey('cognoscenti2')] = { model = 'cognoscenti2', price = 200000, banned = false, name = 'Cognoscenti2', trunk = 50, type = 'outros' },
	[GetHashKey('stanier')] = { model = 'stanier', price = 130000, banned = false, name = 'Stanier', trunk = 60, type = 'sedans' },
	[GetHashKey('stratum')] = { model = 'stratum', price = 100000, banned = false, name = 'Stratum', trunk = 70, type = 'sedans' },
	[GetHashKey('importsd')] = { model = 'importsd', price = 150000, banned = false, name = 'importsd', trunk = 30, type = 'sedans' },
	[GetHashKey('surge')] = { model = 'surge', price = 220000, banned = false, name = 'Surge', trunk = 60, type = 'sedans' },
	[GetHashKey('tailgater')] = { model = 'tailgater', price = 160000, banned = false, name = 'Tailgater', trunk = 50, type = 'sedans' },
	[GetHashKey('warrener')] = { model = 'warrener', price = 100000, banned = false, name = 'Warrener', trunk = 40, type = 'sedans' },
	[GetHashKey('washington')] = { model = 'washington', price = 150000, banned = false, name = 'Washington', trunk = 60, type = 'sedans' },
	[GetHashKey('alpha')] = { model = 'alpha', price = 200000, banned = false, name = 'Alpha', trunk = 40, type = 'outros' },
	[GetHashKey('banshee')] = { model = 'banshee', price = 300000, banned = false, name = 'Banshee', trunk = 30, type = 'outros' },
	[GetHashKey('bestiagts')] = { model = 'bestiagts', price = 400000, banned = false, name = 'Bestiagts', trunk = 60, type = 'outros' },
	[GetHashKey('blista2')] = { model = 'blista2', price = 100000, banned = false, name = 'Blista2', trunk = 40, type = 'outros' },
	[GetHashKey('blista3')] = { model = 'blista3', price = 200000, banned = false, name = 'Blista3', trunk = 40, type = 'outros' },
	[GetHashKey('buffalo')] = { model = 'buffalo', price = 450000, banned = false, name = 'Buffalo', trunk = 50, type = 'outros' },
	[GetHashKey('buffalo2')] = { model = 'buffalo2', price = 450000, banned = false, name = 'Buffalo2', trunk = 30, type = 'outros' },
	[GetHashKey('buffalo3')] = { model = 'buffalo3', price = 400000, banned = false, name = 'Buffalo3', trunk = 50, type = 'outros' },
	[GetHashKey('carbonizzare')] = { model = 'carbonizzare', price = 1500000, banned = false, name = 'Carbonizzare', trunk = 30, type = 'outros' },
	[GetHashKey('comet2')] = { model = 'comet2', price = 400000, banned = false, name = 'Comet2', trunk = 40, type = 'outros' },
	[GetHashKey('comet3')] = { model = 'comet3', price = 500000, banned = false, name = 'Comet3', trunk = 40, type = 'outros' },
	[GetHashKey('comet5')] = { model = 'comet5', price = 1250000, banned = false, name = 'Comet5', trunk = 40, type = 'outros' },
	[GetHashKey('coquette')] = { model = 'coquette', price = 500000, banned = false, name = 'Coquette', trunk = 30, type = 'outros' },
	[GetHashKey('coquette4')] = { model = 'coquette4', price = 8000000, banned = false, name = 'Coquette 4', trunk = 130, type = 'outros' },
	[GetHashKey('elegy')] = { model = 'elegy', price = 500000, banned = false, name = 'Elegy', trunk = 30, type = 'outros' },
	[GetHashKey('elegy2')] = { model = 'elegy2', price = 400000, banned = false, name = 'Elegy2', trunk = 30, type = 'outros' },
	[GetHashKey('feltzer2')] = { model = 'feltzer2', price = 200000, banned = false, name = 'Feltzer2', trunk = 40, type = 'outros' },
	[GetHashKey('furoregt')] = { model = 'furoregt', price = 200000, banned = false, name = 'Furoregt', trunk = 30, type = 'outros' },
	[GetHashKey('fusilade')] = { model = 'fusilade', price = 200000, banned = false, name = 'Fusilade', trunk = 40, type = 'outros' },
	[GetHashKey('futo')] = { model = 'futo', price = 150000, banned = false, name = 'Futo', trunk = 40, type = 'outros' },
	[GetHashKey('jester')] = { model = 'jester', price = 5000000, banned = false, name = 'Jester', trunk = 30, type = 'outros' },
	[GetHashKey('khamelion')] = { model = 'khamelion', price = 1000000, banned = false, name = 'Khamelion', trunk = 50, type = 'outros' },
	[GetHashKey('kuruma2')] = { model = "kuruma2", price = 3000000, banned = false, name = 'Kuruma 2', trunk = 30, type = 'vip' },
	[GetHashKey('kuruma')] = { model = 'kuruma', price = 750000, banned = false, name = 'Kuruma', trunk = 40, type = 'outros' },

	[GetHashKey('armored18velar')] = { model = "armored18velar", price = 3000000, banned = false, name = 'Velar Blindada', trunk = 80, type = 'vip' },
	[GetHashKey('armoredx7m60i')] = { model = "armoredx7m60i", price = 3000000, banned = false, name = 'X7 2024 Blindada', trunk = 80, type = 'vip' },

	[GetHashKey('wri8e')] = { model = "wri8e", price = 3000000, banned = false, name = 'I8E 2021', trunk = 40, type = 'vip' },
	[GetHashKey('wrlwcla45')] = { model = "wrlwcla45", price = 3000000, banned = false, name = 'A45 LW', trunk = 40, type = 'vip' },
	[GetHashKey('22macgt')] = { model = "22macgt", price = 3000000, banned = false, name = 'Mustang Mach-E', trunk = 40, type = 'vip' },
	[GetHashKey('er34n')] = { model = "er34n", price = 3000000, banned = false, name = 'ER34 (Skyline 4 Portas)', trunk = 40, type = 'vip' },
	[GetHashKey('s15lbwk')] = { model = "s15lbwk", price = 3000000, banned = false, name = 'S15 LW', trunk = 40, type = 'vip' },
	[GetHashKey('ram226x6')] = { model = "ram226x6", price = 3000000, banned = false, name = 'RAM TRX 6X6', trunk = 40, type = 'vip' },
	[GetHashKey('etrongt22')] = { model = "etrongt22", price = 3000000, banned = false, name = 'Audi E-TRON', trunk = 40, type = 'vip' },
	[GetHashKey('23s63l')] = { model = "23s63l", price = 3000000, banned = false, name = 'S63 Luxury', trunk = 40, type = 'vip' },
	[GetHashKey('xplaid24c')] = { model = "xplaid24c", price = 3000000, banned = false, name = 'Tesla Model X', trunk = 40, type = 'vip' },
	[GetHashKey('noire19wb')] = { model = "noire19wb", price = 3000000, banned = false, name = 'Bugatti La Voiture Noire', trunk = 40, type = 'vip' },
	[GetHashKey('x7m60i')] = { model = "x7m60i", price = 3000000, banned = false, name = 'BMW X7 2024', trunk = 40, type = 'vip' },
	[GetHashKey('m3g80c')] = { model = "m3g80c", price = 3000000, banned = false, name = 'BMW M3 G80 Competition', trunk = 40, type = 'vip' },
	[GetHashKey('lexuslfa')] = { model = "lexuslfa", price = 3000000, banned = false, name = 'Lexus LFA', trunk = 40, type = 'vip' },
	[GetHashKey('wrxt660civ')] = { model = "wrxt660civ", price = 3000000, banned = false, name = 'XT 660 Nova', trunk = 15, type = 'vip' },
	[GetHashKey('wrtiger1200')] = { model = "wrtiger1200", price = 3000000, banned = false, name = 'Tiger 1200', trunk = 15, type = 'vip' },


	[GetHashKey('massacro')] = { model = 'massacro', price = 750000, banned = false, name = 'Massacro', trunk = 40, type = 'outros' },
	[GetHashKey('massacro2')] = { model = 'massacro2', price = 1000000, banned = false, name = 'Massacro2', trunk = 40, type = 'outros' },
	[GetHashKey('ninef')] = { model = 'ninef', price = 950000, banned = false, name = 'Ninef', trunk = 40, type = 'outros' },
	[GetHashKey('ninef2')] = { model = 'ninef2', price = 950000, banned = false, name = 'Ninef2', trunk = 40, type = 'outros' },
	[GetHashKey('omnis')] = { model = 'omnis', price = 200000, banned = false, name = 'Omnis', trunk = 20, type = 'outros' },
	[GetHashKey('pariah')] = { model = 'pariah', price = 950000, banned = false, name = 'Pariah', trunk = 30, type = 'outros' },
	[GetHashKey('penumbra')] = { model = 'penumbra', price = 800000, banned = false, name = 'Penumbra', trunk = 40, type = 'outros' },
	[GetHashKey('raiden')] = { model = 'raiden', price = 850000, banned = false, name = 'Raiden', trunk = 50, type = 'outros' },
	[GetHashKey('rapidgt')] = { model = 'rapidgt', price = 800000, banned = false, name = 'Rapidgt', trunk = 20, type = 'outros' },
	[GetHashKey('rapidgt2')] = { model = 'rapidgt2', price = 1000000, banned = false, name = 'Rapidgt2', trunk = 20, type = 'outros' },
	[GetHashKey('ruston')] = { model = 'ruston', price = 3000000, banned = false, name = 'Ruston', trunk = 30, type = 'outros' },
	[GetHashKey('schafter3')] = { model = 'schafter3', price = 300000, banned = false, name = 'Schafter3', trunk = 50, type = 'outros' },
	[GetHashKey('schafter4')] = { model = 'schafter4', price = 250000, banned = false, name = 'Schafter4', trunk = 30, type = 'outros' },
	[GetHashKey('schafter5')] = { model = 'schafter5', price = 175000, banned = false, name = 'Schafter5', trunk = 50, type = 'outros' },
	[GetHashKey('schwarzer')] = { model = 'schwarzer', price = 250000, banned = false, name = 'Schwarzer', trunk = 50, type = 'outros' },
	[GetHashKey('sentinel3')] = { model = 'sentinel3', price = 350000, banned = false, name = 'Sentinel3', trunk = 30, type = 'outros' },
	[GetHashKey('seven70')] = { model = 'seven70', price = 1000000, banned = false, name = 'Seven70', trunk = 20, type = 'outros' },
	[GetHashKey('specter')] = { model = 'specter', price = 2000000, banned = false, name = 'Specter', trunk = 20, type = 'outros' },
	[GetHashKey('specter2')] = { model = 'specter2', price = 900000, banned = false, name = 'Specter2', trunk = 20, type = 'outros' },
	[GetHashKey('streiter')] = { model = 'streiter', price = 600000, banned = false, name = 'Streiter', trunk = 70, type = 'outros' },
	[GetHashKey('sultan')] = { model = 'sultan', price = 800000, banned = false, name = 'Sultan', trunk = 50, type = 'outros' },
	[GetHashKey('surano')] = { model = 'surano', price = 1500000, banned = false, name = 'Surano', trunk = 30, type = 'outros' },
	[GetHashKey('tampa2')] = { model = 'tampa2', price = 300000, banned = false, name = 'Tampa2', trunk = 20, type = 'outros' },
	[GetHashKey('tropos')] = { model = 'tropos', price = 450000, banned = false, name = 'Tropos', trunk = 20, type = 'outros' },
	[GetHashKey('verlierer2')] = { model = 'verlierer2', price = 350000, banned = false, name = 'Verlierer2', trunk = 20, type = 'outros' },
	[GetHashKey('btype')] = { model = 'btype', price = 1000000, banned = false, name = 'Btype', trunk = 40, type = 'outros' },
	[GetHashKey('btype2')] = { model = 'btype2', price = 1500000, banned = false, name = 'Btype2', trunk = 20, type = 'outros' },
	[GetHashKey('btype3')] = { model = 'btype3', price = 1000000, banned = false, name = 'Btype3', trunk = 40, type = 'outros' },
	[GetHashKey('casco')] = { model = 'casco', price = 500000, banned = false, name = 'Casco', trunk = 50, type = 'outros' },
	[GetHashKey('cheetah')] = { model = 'cheetah', price = 1000000, banned = false, name = 'Cheetah', trunk = 20, type = 'imports' },
	[GetHashKey('coquette2')] = { model = 'coquette2', price = 400000, banned = false, name = 'Coquette2', trunk = 40, type = 'outros' },
	[GetHashKey('feltzer3')] = { model = 'feltzer3', price = 390000, banned = false, name = 'Feltzer3', trunk = 40, type = 'outros' },
	[GetHashKey('gt500')] = { model = 'gt500', price = 600000, banned = false, name = 'GT500', trunk = 40, type = 'outros' },
	[GetHashKey('infernus2')] = { model = 'infernus2', price = 1000000, banned = false, name = 'Infernus2', trunk = 20, type = 'outros' },
	[GetHashKey('jb700')] = { model = 'jb700', price = 250000, banned = false, name = 'Jb700', trunk = 30, type = 'outros' },
	[GetHashKey('mamba')] = { model = 'mamba', price = 400000, banned = false, name = 'Mamba', trunk = 50, type = 'outros' },
	[GetHashKey('manana')] = { model = 'manana', price = 75000, banned = false, name = 'Manana', trunk = 60, type = 'outros' },
	[GetHashKey('monroe')] = { model = 'monroe', price = 400000, banned = false, name = 'Monroe', trunk = 20, type = 'outros' },
	[GetHashKey('peyote')] = { model = 'peyote', price = 80000, banned = false, name = 'Peyote', trunk = 50, type = 'outros' },
	[GetHashKey('pigalle')] = { model = 'pigalle', price = 80000, banned = false, name = 'Pigalle', trunk = 60, type = 'outros' },
	[GetHashKey('rapidgt3')] = { model = 'rapidgt3', price = 650000, banned = false, name = 'Rapidgt3', trunk = 40, type = 'outros' },
	[GetHashKey('retinue')] = { model = 'retinue', price = 200000, banned = false, name = 'Retinue', trunk = 40, type = 'outros' },
	[GetHashKey('stinger')] = { model = 'stinger', price = 450000, banned = false, name = 'Stinger', trunk = 20, type = 'outros' },
	[GetHashKey('stingergt')] = { model = 'stingergt', price = 400000, banned = false, name = 'Stingergt', trunk = 20, type = 'outros' },
	[GetHashKey('torero')] = { model = 'torero', price = 300000, banned = false, name = 'Torero', trunk = 30, type = 'outros' },
	[GetHashKey('tornado')] = { model = 'tornado', price = 100000, banned = false, name = 'Tornado', trunk = 70, type = 'outros' },
	[GetHashKey('tornado2')] = { model = 'tornado2', price = 300000, banned = false, name = 'Tornado2', trunk = 60, type = 'outros' },
	[GetHashKey('tornado5')] = { model = 'tornado5', price = 500000, banned = false, name = 'Tornado5', trunk = 60, type = 'outros' },
	[GetHashKey('tornado6')] = { model = 'tornado6', price = 800000, banned = false, name = 'Tornado6', trunk = 50, type = 'outros' },
	[GetHashKey('turismo2')] = { model = 'turismo2', price = 1000000, banned = false, name = 'Turismo2', trunk = 30, type = 'outros' },
	[GetHashKey('ztype')] = { model = 'ztype', price = 1000000, banned = false, name = 'Ztype', trunk = 20, type = 'outros' },
	[GetHashKey('adder')] = { model = 'adder', price = 700000, banned = false, name = 'Adder', trunk = 20, type = 'outros' },
	[GetHashKey('autarch')] = { model = 'autarch', price = 3000000, banned = false, name = 'Autarch', trunk = 20, type = 'imports' },
	[GetHashKey('banshee2')] = { model = 'banshee2', price = 700000, banned = false, name = 'Banshee2', trunk = 20, type = 'imports' },
	[GetHashKey('bullet')] = { model = 'bullet', price = 800000, banned = false, name = 'Bullet', trunk = 20, type = 'imports' },
	[GetHashKey('cheetah2')] = { model = 'cheetah2', price = 1000000, banned = false, name = 'Cheetah2', trunk = 20, type = 'outros' },
	[GetHashKey('entityxf')] = { model = 'entityxf', price = 1500000, banned = false, name = 'Entityxf', trunk = 20, type = 'imports' },
	[GetHashKey('fmj')] = { model = 'fmj', price = 1200000, banned = false, name = 'Fmj', trunk = 20, type = 'imports' },
	[GetHashKey('gp1')] = { model = 'gp1', price = 2000000, banned = false, name = 'Gp1', trunk = 20, type = 'imports' },
	[GetHashKey('infernus')] = { model = 'infernus', price = 700000, banned = false, name = 'Infernus', trunk = 20, type = 'imports' },
	[GetHashKey('nero')] = { model = 'nero', price = 4500000, banned = false, name = 'Nero', trunk = 20, type = 'imports' },
	[GetHashKey('nero2')] = { model = 'nero2', price = 3000000, banned = false, name = 'Nero2', trunk = 20, type = 'imports' },
	[GetHashKey('osiris')] = { model = 'osiris', price = 4000000, banned = false, name = 'Osiris', trunk = 20, type = 'imports' },
	[GetHashKey('penetrator')] = { model = 'penetrator', price = 1200000, banned = false, name = 'Penetrator', trunk = 20, type = 'imports' },
	[GetHashKey('pfister811')] = { model = 'pfister811', price = 2000000, banned = false, name = 'Pfister811', trunk = 20, type = 'imports' },
	[GetHashKey('reaper')] = { model = 'reaper', price = 2500000, banned = false, name = 'Reaper', trunk = 20, type = 'imports' },
	[GetHashKey('sc1')] = { model = 'sc1', price = 2500000, banned = false, name = 'Sc1', trunk = 20, type = 'imports' },
	[GetHashKey('sultanrs')] = { model = 'sultanrs', price = 2000000, banned = false, name = 'Sultan RS', trunk = 30, type = 'imports' },
	[GetHashKey('t20')] = { model = 't20', price = 2500000, banned = false, name = 'T20', trunk = 20, type = 'imports' },
	[GetHashKey('tempesta')] = { model = 'tempesta', price = 4000000, banned = false, name = 'Tempesta', trunk = 20, type = 'imports' },
	[GetHashKey('turismor')] = { model = 'turismor', price = 5000000, banned = false, name = 'Turismor', trunk = 20, type = 'imports' },
	[GetHashKey('tyrus')] = { model = 'tyrus', price = 1200000, banned = false, name = 'Tyrus', trunk = 20, type = 'imports' },
	[GetHashKey('vacca')] = { model = 'vacca', price = 1000000, banned = false, name = 'Vacca', trunk = 30, type = 'imports' },
	[GetHashKey('visione')] = { model = 'visione', price = 10000000, banned = false, name = 'Visione', trunk = 20, type = 'imports' },
	[GetHashKey('voltic')] = { model = 'voltic', price = 800000, banned = false, name = 'Voltic', trunk = 20, type = 'imports' },
	[GetHashKey('zentorno')] = { model = 'zentorno', price = 10000000, banned = false, name = 'Zentorno', trunk = 20, type = 'imports' },
	[GetHashKey('sadler')] = { model = 'sadler', price = 1500000, banned = false, name = 'Sadler', trunk = 70, type = 'utility' },
	[GetHashKey('bison')] = { model = 'bison', price = 1000000, banned = false, name = 'Bison', trunk = 70, type = 'outros' },
	[GetHashKey('bison2')] = { model = 'bison2', price = 1000000, banned = false, name = 'Bison2', trunk = 70, type = 'outros' },
	[GetHashKey('bobcatxl')] = { model = 'bobcatxl', price = 650000, banned = false, name = 'Bobcatxl', trunk = 100, type = 'outros' },
	[GetHashKey('burrito')] = { model = 'burrito', price = 2000000, banned = false, name = 'Burrito', trunk = 200, type = 'outros' },
	[GetHashKey('burrito2')] = { model = 'burrito2', price = 3000000, banned = false, name = 'Burrito2', trunk = 300, type = 'outros' },
	[GetHashKey('burrito3')] = { model = 'burrito3', price = 4000000, banned = false, name = 'Burrito3', trunk = 400, type = 'outros' },
	[GetHashKey('burrito4')] = { model = 'burrito4', price = 5000000, banned = false, name = 'Burrito4', trunk = 500, type = 'outros' },
	[GetHashKey('minivan')] = { model = 'minivan', price = 800000, banned = false, name = 'Minivan', trunk = 70, type = 'outros' },
	[GetHashKey('minivan2')] = { model = 'minivan2', price = 5000000, banned = false, name = 'Minivan2', trunk = 60, type = 'outros' },
	[GetHashKey('paradise')] = { model = 'paradise', price = 1000000, banned = false, name = 'Paradise', trunk = 120, type = 'outros' },
	[GetHashKey('pony')] = { model = 'pony', price = 160000, banned = false, name = 'Pony', trunk = 120, type = 'outros' },
	[GetHashKey('pony2')] = { model = 'pony2', price = 2000000, banned = false, name = 'Pony2', trunk = 120, type = 'outros' },
	[GetHashKey('rumpo')] = { model = 'rumpo', price = 1000000, banned = false, name = 'Rumpo', trunk = 120, type = 'outros' },
	[GetHashKey('rumpo2')] = { model = 'rumpo2', price = 160000, banned = false, name = 'Rumpo2', trunk = 120, type = 'outros' },
	[GetHashKey('rumpo3')] = { model = 'rumpo3', price = 2000000, banned = false, name = 'Rumpo3', trunk = 120, type = 'vip' },
	[GetHashKey('speedo')] = { model = 'speedo', price = 500000, banned = false, name = 'Speedo', trunk = 120, type = 'service' },
	[GetHashKey('surfer')] = { model = 'surfer', price = 500000, banned = false, name = 'Surfer', trunk = 80, type = 'outros' },
	[GetHashKey('youga')] = { model = 'youga', price = 1500000, banned = false, name = 'Youga', trunk = 250, type = 'outros' },
	[GetHashKey('youga2')] = { model = 'youga2', price = 750000, banned = false, name = 'Youga2', trunk = 80, type = 'service' },
	[GetHashKey('tractor2')] = { model = 'tractor2', price = 160000, banned = false, name = 'Tractor2', trunk = 80, type = 'service' },
	[GetHashKey('huntley')] = { model = 'huntley', price = 400000, banned = false, name = 'Huntley', trunk = 60, type = 'suvs' },
	[GetHashKey('landstalker')] = { model = 'landstalker', price = 600000, banned = false, name = 'Landstalker', trunk = 70, type = 'suvs' },
	[GetHashKey('landstalker2')] = { model = 'landstalker2', price = 800000, banned = false, name = 'Landstalker 2', trunk = 70, type = 'suvs' },
	[GetHashKey('mesa')] = { model = 'mesa', price = 400000, banned = false, name = 'Mesa', trunk = 50, type = 'suvs' },
	[GetHashKey('patriot')] = { model = 'patriot', price = 800000, banned = false, name = 'Patriot', trunk = 70, type = 'suvs' },
	[GetHashKey('radi')] = { model = 'radi', price = 300000, banned = false, name = 'Radi', trunk = 50, type = 'suvs' },
	[GetHashKey('rocoto')] = { model = 'rocoto', price = 110000, banned = false, name = 'Rocoto', trunk = 60, type = 'suvs' },
	[GetHashKey('tyrant')] = { model = 'tyrant', price = 5000000, banned = false, name = 'Tyrant', trunk = 30, type = 'imports' },
	[GetHashKey('entity2')] = { model = 'entity2', price = 1500000, banned = false, name = 'Entity2', trunk = 20, type = 'imports' },
	[GetHashKey('cheburek')] = { model = 'cheburek', price = 230000, banned = false, name = 'Cheburek', trunk = 50, type = 'outros' },
	[GetHashKey('hotring')] = { model = 'hotring', price = 500000, banned = false, name = 'Hotring', trunk = 60, type = 'outros' },
	[GetHashKey('jester2')] = { model = "jester2", price = 1000000, banned = false, name = 'Jester 2', trunk = 30, type = 'imports'},
	[GetHashKey('jester3')] = { model = 'jester3', price = 1000000, banned = false, name = 'Jester3', trunk = 30, type = 'outros' },
	[GetHashKey('flashgt')] = { model = 'flashgt', price = 700000, banned = false, name = 'Flashgt', trunk = 30, type = 'outros' },
	[GetHashKey('ellie')] = { model = 'ellie', price = 400000, banned = false, name = 'Ellie', trunk = 50, type = 'outros' },
	[GetHashKey('michelli')] = { model = 'michelli', price = 200000, banned = false, name = 'Michelli', trunk = 40, type = 'outros' },
	[GetHashKey('fagaloa')] = { model = 'fagaloa', price = 100000, banned = false, name = 'Fagaloa', trunk = 80, type = 'outros' },
	[GetHashKey('dominator3')] = { model = 'dominator3', price = 400000, banned = false, name = 'Dominator3', trunk = 30, type = 'outros' },
	[GetHashKey('issi3')] = { model = 'issi3', price = 100000, banned = false, name = 'Issi3', trunk = 20, type = 'outros' },
	[GetHashKey('taipan')] = { model = 'taipan', price = 2000000, banned = false, name = 'Taipan', trunk = 20, type = 'imports' },
	[GetHashKey('gb200')] = { model = 'gb200', price = 500000, banned = false, name = 'Gb200', trunk = 20, type = 'outros' },
	[GetHashKey('guardian')] = { model = 'guardian', price = 5000000, banned = false, name = 'Guardian', trunk = 150, type = 'industrial' },
	[GetHashKey('kamacho')] = { model = 'kamacho', price = 1500000, banned = false, name = 'Kamacho', trunk = 90, type = 'suvs' },
	[GetHashKey('neon')] = { model = 'neon', price = 2000000, banned = false, name = 'Neon', trunk = 30, type = 'outros' },
	[GetHashKey('cyclone')] = { model = 'cyclone', price = 1000000, banned = false, name = 'Cyclone', trunk = 20, type = 'imports' },
	[GetHashKey('italigtb')] = { model = 'italigtb', price = 1000000, banned = false, name = 'Italigtb', trunk = 20, type = 'imports' },
	[GetHashKey('italigtb2')] = { model = 'italigtb2', price = 1500000, banned = false, name = 'Italigtb2', trunk = 20, type = 'imports' },
	[GetHashKey('vagner')] = { model = 'vagner', price = 2000000, banned = false, name = 'Vagner', trunk = 20, type = 'imports' },
	[GetHashKey('xa21')] = { model = 'xa21', price = 10000000, banned = false, name = 'Xa21', trunk = 20, type = 'imports' },
	[GetHashKey('tezeract')] = { model = 'tezeract', price = 7000000, banned = false, name = 'Tezeract', trunk = 20, type = 'outros' },
	[GetHashKey('prototipo')] = { model = 'prototipo', price = 10000000, banned = false, name = 'Prototipo', trunk = 20, type = 'imports' },
	[GetHashKey('patriot2')] = { model = 'patriot2', price = 5000000, banned = false, name = 'Patriot2', trunk = 60, type = 'suvs' },
	[GetHashKey('stafford')] = { model = 'stafford', price = 200000, banned = false, name = 'Stafford', trunk = 40, type = 'sedans' },
	[GetHashKey('swinger')] = { model = 'swinger', price = 550000, banned = false, name = 'Swinger', trunk = 20, type = 'outros' },
	[GetHashKey('clique')] = { model = 'clique', price = 200000, banned = false, name = 'Clique', trunk = 40, type = 'outros' },
	[GetHashKey('deveste')] = { model = 'deveste', price = 2000000, banned = false, name = 'Deveste', trunk = 20, type = 'outros' },
	[GetHashKey('deviant')] = { model = 'deviant', price = 1000000, banned = false, name = 'Deviant', trunk = 50, type = 'outros' },
	[GetHashKey('impaler')] = { model = 'impaler', price = 1300000, banned = false, name = 'Impaler', trunk = 60, type = 'outros' },
	[GetHashKey('italigto')] = { model = 'italigto', price = 5000000, banned = false, name = 'Italigto', trunk = 30, type = 'outros' },
	[GetHashKey('schlagen')] = { model = 'schlagen', price = 500000, banned = false, name = 'Schlagen', trunk = 30, type = 'outros' },
	[GetHashKey('toros')] = { model = 'toros', price = 5000000, banned = false, name = 'Toros', trunk = 50, type = 'suvs' },
	[GetHashKey('tulip')] = { model = 'tulip', price = 850000, banned = false, name = 'Tulip', trunk = 60, type = 'outros' },
	[GetHashKey('vamos')] = { model = 'vamos', price = 900000, banned = false, name = 'Vamos', trunk = 60, type = 'outros' },
	[GetHashKey('freecrawler')] = { model = 'freecrawler', price = 900000, banned = false, name = 'Freecrawler', trunk = 50, type = 'suvs' },
	[GetHashKey('fugitive')] = { model = 'fugitive', price = 190000, banned = false, name = 'Fugitive', trunk = 30, type = 'sedans' },
	[GetHashKey('le7b')] = { model = 'le7b', price = 3000000, banned = false, name = 'Le7b', trunk = 20, type = 'imports' },
	[GetHashKey('lurcher')] = { model = 'lurcher', price = 200000, banned = false, name = 'Lurcher', trunk = 60, type = 'outros' },
	[GetHashKey('lynx')] = { model = 'lynx', price = 800000, banned = false, name = 'Lynx', trunk = 30, type = 'outros' },
	[GetHashKey('raptor')] = { model = 'raptor', price = 1000000, banned = false, name = 'Raptor', trunk = 20, type = 'outros' },
	[GetHashKey('sheava')] = { model = 'sheava', price = 4000000, banned = false, name = 'Sheava', trunk = 20, type = 'imports' },
	[GetHashKey('z190')] = { model = 'z190', price = 400000, banned = false, name = 'Z190', trunk = 40, type = 'outros' },
	[GetHashKey('akuma')] = { model = 'akuma', price = 2000000, banned = false, name = 'Akuma', trunk = 15, type = 'motos' },
	[GetHashKey('avarus')] = { model = 'avarus', price = 200000, banned = false, name = 'Avarus', trunk = 15, type = 'motos' },
	[GetHashKey('bagger')] = { model = 'bagger', price = 200000, banned = false, name = 'Bagger', trunk = 40, type = 'motos' },
	[GetHashKey('bati')] = { model = 'bati', price = 1000000, banned = false, name = 'Bati', trunk = 15, type = 'motos' },
	[GetHashKey('bati2')] = { model = 'bati2', price = 800000, banned = false, name = 'Bati2', trunk = 15, type = 'motos' },
	[GetHashKey('bf400')] = { model = 'bf400', price = 1000000, banned = false, name = 'Bf400', trunk = 15, type = 'motos' },
	[GetHashKey('carbonrs')] = { model = 'carbonrs', price = 800000, banned = false, name = 'Carbonrs', trunk = 15, type = 'motos' },
	[GetHashKey('chimera')] = { model = 'chimera', price = 400000, banned = false, name = 'Chimera', trunk = 15, type = 'motos' },
	[GetHashKey('cliffhanger')] = { model = 'cliffhanger', price = 250000, banned = false, name = 'Cliffhanger', trunk = 15, type = 'motos' },
	[GetHashKey('daemon')] = { model = 'daemon', price = 200000, banned = false, name = 'Daemon', trunk = 15, type = 'motos' },
	[GetHashKey('daemon2')] = { model = 'daemon2', price = 200000, banned = false, name = 'Daemon2', trunk = 15, type = 'motos' },
	[GetHashKey('defiler')] = { model = 'defiler', price = 700000, banned = false, name = 'Defiler', trunk = 15, type = 'motos' },
	[GetHashKey('diablous')] = { model = 'diablous', price = 500000, banned = false, name = 'Diablous', trunk = 15, type = 'motos' },
	[GetHashKey('diablous2')] = { model = 'diablous2', price = 700000, banned = false, name = 'Diablous2', trunk = 15, type = 'motos' },
	[GetHashKey('double')] = { model = 'double', price = 800000, banned = false, name = 'Double', trunk = 15, type = 'motos' },
	[GetHashKey('enduro')] = { model = 'enduro', price = 400000, banned = false, name = 'Enduro', trunk = 15, type = 'motos' },
	[GetHashKey('esskey')] = { model = 'esskey', price = 400000, banned = false, name = 'Esskey', trunk = 15, type = 'motos' },
	[GetHashKey('faggio')] = { model = 'faggio', price = 4000, banned = false, name = 'Faggio', trunk = 30, type = 'motos' },
	[GetHashKey('faggio2')] = { model = 'faggio2', price = 5000, banned = false, name = 'Faggio2', trunk = 30, type = 'motos' },
	[GetHashKey('faggio3')] = { model = 'faggio3', price = 5000, banned = false, name = 'Faggio3', trunk = 30, type = 'motos' },
	[GetHashKey('fcr')] = { model = 'fcr', price = 300000, banned = false, name = 'Fcr', trunk = 15, type = 'motos' },
	[GetHashKey('fcr2')] = { model = 'fcr2', price = 400000, banned = false, name = 'Fcr2', trunk = 15, type = 'motos' },
	[GetHashKey('gargoyle')] = { model = 'gargoyle', price = 450000, banned = false, name = 'Gargoyle', trunk = 15, type = 'motos' },
	[GetHashKey('hakuchou')] = { model = 'hakuchou', price = 3000000, banned = false, name = 'Hakuchou', trunk = 15, type = 'motos' },
	[GetHashKey('hakuchou2')] = { model = 'hakuchou2', price = 1000000, banned = false, name = 'Hakuchou2', trunk = 15, type = 'motos' },
	[GetHashKey('hexer')] = { model = 'hexer', price = 200000, banned = false, name = 'Hexer', trunk = 15, type = 'motos' },
	[GetHashKey('innovation')] = { model = 'innovation', price = 200000, banned = false, name = 'Innovation', trunk = 15, type = 'motos' },
	[GetHashKey('lectro')] = { model = 'lectro', price = 200000, banned = false, name = 'Lectro', trunk = 15, type = 'motos' },
	[GetHashKey('manchez')] = { model = 'manchez', price = 800000, banned = false, name = 'Manchez', trunk = 15, type = 'motos' },
	[GetHashKey('nemesis')] = { model = 'nemesis', price = 250000, banned = false, name = 'Nemesis', trunk = 15, type = 'motos' },
	[GetHashKey('nightblade')] = { model = 'nightblade', price = 800000, banned = false, name = 'Nightblade', trunk = 15, type = 'outros' },
	[GetHashKey('pcj')] = { model = 'pcj', price = 300000, banned = false, name = 'Pcj', trunk = 15, type = 'motos' },
	[GetHashKey('ruffian')] = { model = 'ruffian', price = 450000, banned = false, name = 'Ruffian', trunk = 15, type = 'motos' },
	[GetHashKey('sanchez')] = { model = 'sanchez', price = 400000, banned = false, name = 'Sanchez', trunk = 15, type = 'motos' },
	[GetHashKey('sanchez2')] = { model = 'sanchez2', price = 500000, banned = false, name = 'Sanchez2', trunk = 15, type = 'motos' },
	[GetHashKey('sanctus')] = { model = 'sanctus', price = 400000, banned = false, name = 'Sanctus', trunk = 15, type = 'motos' },
	[GetHashKey('sovereign')] = { model = 'sovereign', price = 1500000, banned = false, name = 'Sovereign', trunk = 50, type = 'motos' },
	[GetHashKey('thrust')] = { model = 'thrust', price = 650000, banned = false, name = 'Thrust', trunk = 15, type = 'motos' },
	[GetHashKey('vader')] = { model = 'vader', price = 400000, banned = false, name = 'Vader', trunk = 15, type = 'motos' },
	[GetHashKey('vindicator')] = { model = 'vindicator', price = 1000000, banned = false, name = 'Vindicator', trunk = 15, type = 'motos' },
	[GetHashKey('vortex')] = { model = 'vortex', price = 800000, banned = false, name = 'Vortex', trunk = 15, type = 'motos' },
	[GetHashKey('wolfsbane')] = { model = 'wolfsbane', price = 400000, banned = false, name = 'Wolfsbane', trunk = 15, type = 'motos' },
	[GetHashKey('zombiea')] = { model = 'zombiea', price = 250000, banned = false, name = 'Zombiea', trunk = 15, type = 'motos' },
	[GetHashKey('zombieb')] = { model = 'zombieb', price = 250000, banned = false, name = 'Zombieb', trunk = 15, type = 'motos' },
	[GetHashKey('blazer')] = { model = 'blazer', price = 750000, banned = false, name = 'Blazer', trunk = 15, type = 'motos' },
	[GetHashKey('blazer4')] = { model = 'blazer4', price = 800000, banned = false, name = 'Blazer4', trunk = 15, type = 'motos' },
	[GetHashKey('shotaro')] = { model = 'shotaro', price = 2000000, banned = false, name = 'Shotaro', trunk = 30, type = 'motos' },
	[GetHashKey('ratbike')] = { model = 'ratbike', price = 200000, banned = false, name = 'Ratbike', trunk = 30, type = 'motos' },
	[GetHashKey('policiaheli')] = { model = 'policiaheli', price = 1000000, banned = false, name = 'Policia Helicóptero', trunk = 0, type = 'service' },
	[GetHashKey('fbi2')] = { model = 'fbi2', price = 1000000, banned = false, name = 'Granger SOG', trunk = 0, type = 'service' },
	[GetHashKey('policeb')] = { model = 'policeb', price = 1000000, banned = false, name = 'Harley Davidson', trunk = 0, type = 'service' },
	[GetHashKey('paramedicoambu')] = { model = 'paramedicoambu', price = 1000000, banned = false, name = 'Ambulância', trunk = 0, type = 'service' },
	[GetHashKey('paramedicocharger2014')] = { model = 'paramedicocharger2014', price = 1000000, banned = false, name = 'Dodge Charger 2014', trunk = 0, type = 'service' },
	[GetHashKey('pbus')] = { model = 'pbus', price = 1000000, banned = false, name = 'Ônibus da Penitenciária', trunk = 0, type = 'service' },
	[GetHashKey('mule4')] = { model = 'mule4', price = 4000000, banned = false, name = 'Mule 4', trunk = 400, type = 'outros' },
	[GetHashKey('rallytruck')] = { model = 'rallytruck', price = 20000000, banned = false, name = 'RallyTruck', trunk = 1500, type = 'vip' },
	[GetHashKey('bus')] = { model = 'bus', price = 1000000, banned = false, name = 'Ônibus', trunk = 0, type = 'service' },
	[GetHashKey('flatbed')] = { model = 'flatbed', price = 1000000, banned = false, name = 'Reboque', trunk = 0, type = 'service' },
	[GetHashKey('towtruck')] = { model = 'towtruck', price = 1000000, banned = false, name = 'Towtruck', trunk = 0, type = 'service' },
	[GetHashKey('towtruck2')] = { model = 'towtruck2', price = 1000000, banned = false, name = 'Towtruck2', trunk = 0, type = 'service' },
	[GetHashKey('ratloader')] = { model = 'ratloader', price = 1000000, banned = false, name = 'Caminhão', trunk = 80, type = 'service' },
	[GetHashKey('ratloader2')] = { model = 'ratloader2', price = 180000, banned = false, name = 'Ratloader2', trunk = 70, type = 'outros' },
	[GetHashKey('rubble')] = { model = 'rubble', price = 1000000, banned = false, name = 'Caminhão', trunk = 100, type = 'service' },
	[GetHashKey('taxi')] = { model = 'taxi', price = 1000000, banned = false, name = 'Taxi', trunk = 0, type = 'service' },
	[GetHashKey('boxville4')] = { model = 'boxville4', price = 1000000, banned = false, name = 'Caminhão', trunk = 70, type = 'service' },
	[GetHashKey('trash2')] = { model = 'trash2', price = 1000000, banned = false, name = 'Caminhão', trunk = 100, type = 'service' },
	[GetHashKey('tiptruck')] = { model = 'tiptruck', price = 1000000, banned = false, name = 'Tiptruck', trunk = 100, type = 'service' },
	[GetHashKey('scorcher')] = { model = 'scorcher', price = 1000000, banned = false, name = 'Scorcher', trunk = 0, type = 'service' },
	[GetHashKey('tribike')] = { model = 'tribike', price = 1000000, banned = false, name = 'Tribike', trunk = 0, type = 'service' },
	[GetHashKey('tribike2')] = { model = 'tribike2', price = 1000000, banned = false, name = 'Tribike2', trunk = 0, type = 'service' },
	[GetHashKey('tribike3')] = { model = 'tribike3', price = 1000000, banned = false, name = 'Tribike3', trunk = 0, type = 'service' },
	[GetHashKey('fixter')] = { model = 'fixter', price = 1000000, banned = false, name = 'Fixter', trunk = 0, type = 'service' },
	[GetHashKey('cruiser')] = { model = 'cruiser', price = 1000000, banned = false, name = 'Cruiser', trunk = 0, type = 'service' },
	[GetHashKey('bmx')] = { model = 'bmx', price = 1000000, banned = false, name = 'Bmx', trunk = 100, type = 'service' },
	[GetHashKey('dinghy')] = { model = 'dinghy', price = 1000000, banned = false, name = 'Dinghy', trunk = 100, type = 'vip' },
	[GetHashKey('jetmax')] = { model = 'jetmax', price = 1000000, banned = false, name = 'Jetmax', trunk = 100, type = 'vip' },
	[GetHashKey('marquis')] = { model = 'marquis', price = 1000000, banned = false, name = 'Marquis', trunk = 100, type = 'vip' },
	[GetHashKey('seashark3')] = { model = 'seashark3', price = 1000000, banned = false, name = 'Seashark3', trunk = 100, type = 'vip' },
	[GetHashKey('speeder')] = { model = 'speeder', price = 1000000, banned = false, name = 'Speeder', trunk = 100, type = 'vip' },
	[GetHashKey('speeder2')] = { model = 'speeder2', price = 1000000, banned = false, name = 'Speeder2', trunk = 100, type = 'vip' },
	[GetHashKey('squalo')] = { model = 'squalo', price = 1000000, banned = false, name = 'Squalo', trunk = 100, type = 'vip' },
	[GetHashKey('suntrap')] = { model = 'suntrap', price = 1000000, banned = false, name = 'Suntrap', trunk = 100, type = 'vip' },
	[GetHashKey('toro')] = { model = 'toro', price = 1000000, banned = false, name = 'Toro', trunk = 100, type = 'vip' },
	[GetHashKey('toro2')] = { model = 'toro2', price = 1000000, banned = false, name = 'Toro2', trunk = 100, type = 'vip' },
	[GetHashKey('tropic')] = { model = 'tropic', price = 1000000, banned = false, name = 'Tropic', trunk = 100, type = 'vip' },
	[GetHashKey('tropic2')] = { model = 'tropic2', price = 1000000, banned = false, name = 'Tropic2', trunk = 100, type = 'vip' },
	[GetHashKey('yacht2')] = { model = 'yacht2', price = 1000000, banned = false, name = 'yacht2', trunk = 100, type = 'vip' },
	[GetHashKey('phantom')] = { model = 'phantom', price = 1000000, banned = false, name = 'Phantom', trunk = 0, type = 'service' },
	[GetHashKey('packer')] = { model = 'packer', price = 800000, banned = false, name = 'Packer', trunk = 100, type = 'service' },
	[GetHashKey('importsvolito')] = { model = 'importsvolito', price = 1000000, banned = false, name = 'importsvolito', trunk = 100, type = 'vip' },
	[GetHashKey('importsvolito2')] = { model = 'importsvolito2', price = 1000000, banned = false, name = 'importsvolito2', trunk = 100, type = 'vip' },
	[GetHashKey('seasparrow')] = { model = 'seasparrow', price = 1000000, banned = false, name = 'Paramédico Helicóptero Água', trunk = 0, type = 'service' },
	[GetHashKey('cuban800')] = { model = 'cuban800', price = 1000000, banned = false, name = 'Cuban800', trunk = 100, type = 'vip' },
	[GetHashKey('mammatus')] = { model = 'mammatus', price = 1000000, banned = false, name = 'Mammatus', trunk = 100, type = 'vip' },
	[GetHashKey('vestra')] = { model = 'vestra', price = 1000000, banned = false, name = 'Vestra', trunk = 100, type = 'vip' },
	[GetHashKey('velum2')] = { model = 'velum2', price = 1000000, banned = false, name = 'Velum2', trunk = 100, type = 'vip' },
	[GetHashKey('buzzard2')] = { model = 'buzzard2', price = 1000000, banned = false, name = 'Buzzard2', trunk = 100, type = 'vip' },
	[GetHashKey('maverick')] = { model = 'maverick', price = 1000000, banned = false, name = 'Maverick', trunk = 0, type = 'service' },
	[GetHashKey('tanker2')] = { model = 'tanker2', price = 1000000, banned = false, name = 'Gas', trunk = 0, type = 'service' },
	[GetHashKey('armytanker')] = { model = 'armytanker', price = 1000000, banned = false, name = 'Diesel', trunk = 0, type = 'service' },
	[GetHashKey('tvtrailer')] = { model = 'tvtrailer', price = 1000000, banned = false, name = 'Show', trunk = 0, type = 'service' },
	[GetHashKey('trailerlogs')] = { model = 'trailerlogs', price = 1000000, banned = false, name = 'Woods', trunk = 0, type = 'service' },
	[GetHashKey('tr4')] = { model = 'tr4', price = 1000000, banned = false, name = 'Cars', trunk = 0, type = 'service' },
	[GetHashKey('nissangtr')] = { model = 'nissangtr', price = 3000000, banned = false, name = 'Nissan GTR', trunk = 100, type = 'vip' },
	[GetHashKey('weevil')] = { model = 'weevil', price = 150000, banned = false, name = 'Fusca', trunk = 150, type = 'vip' },
	[GetHashKey('nissan370z')] = { model = 'nissan370z', price = 1000000, banned = false, name = 'Nissan 370Z', trunk = 40, type = 'vip' },
	[GetHashKey('dodgechargersrt')] = { model = 'dodgechargersrt', price = 2000000, banned = false, name = 'Dodge Charger SRT', trunk = 50, type = 'import' },
	[GetHashKey('14r8')] = { model = '14r8', price = 1000000, banned = false, name = 'Audi R8 2014', trunk = 30, type = 'vip' },
	[GetHashKey('bmwm3f80')] = { model = 'bmwm3f80', price = 1350000, banned = false, name = 'BMW M3 F80', trunk = 50, type = 'import' },
	[GetHashKey('nissangtrnismo')] = { model = 'nissangtrnismo', price = 2900000, banned = false, name = 'Nissan GTR Nismo', trunk = 40, type = 'vip' },
	
	[GetHashKey('seasparrow2')] = { model = 'seasparrow2', price = 1500000, banned = false, name = 'Sea Sparrow2', trunk = 30, type = 'vip' },
	[GetHashKey('mule')] = { model = 'mule', price = 1500000, banned = false, name = 'Mule', trunk = 1000, type = 'vip' },

	[GetHashKey('mercedesa45')] = { model = 'mercedesa45', price = 1200000, banned = false, name = 'Mercedes A45', trunk = 40, type = 'import' },
	[GetHashKey('rcbandito')] = { model = 'rcbandito', price = 1200000, banned = false, name = 'Mini carro', trunk = 10, type = 'vip' },
	[GetHashKey('focusrs')] = { model = 'focusrs', price = 1000000, banned = false, name = 'Focus RS', trunk = 40, type = 'import' },
	[GetHashKey('lancerevolution9')] = { model = 'lancerevolution9', price = 1400000, banned = false, name = 'Lancer Evolution 9', trunk = 50, type = 'import' },
	[GetHashKey('ninjah2')] = { model = 'ninjah2', price = 1000000, banned = false, name = 'Ninja H2', trunk = 15, type = 'vip' },
	[GetHashKey('trr')] = { model = 'trr', price = 1000000, banned = false, name = 'KTM TRR', trunk = 15, type = 'vip' },
	[GetHashKey('p1')] = { model = 'p1', price = 1000000, banned = false, name = 'Mclaren P1', trunk = 20, type = 'vip' },
	[GetHashKey('i8')] = { model = 'i8', price = 1000000, banned = false, name = 'BMW i8', trunk = 35, type = 'vip' },
	[GetHashKey('bme6tun')] = { model = 'bme6tun', price = 1000000, banned = false, name = 'BMW M5', trunk = 50, type = 'vip' },
	[GetHashKey('aperta')] = { model = 'aperta', price = 1000000, banned = false, name = 'La Ferrari', trunk = 20, type = 'vip' },

	[GetHashKey('devel22')] = { model = 'devel22', price = 1000000, banned = false, name = 'devel22', trunk = 20, type = 'vip' },
	[GetHashKey('lambose')] = { model = 'lambose', price = 1000000, banned = false, name = 'lambose', trunk = 20, type = 'vip' },


	[GetHashKey('bettle')] = { model = 'bettle', price = 1000000, banned = false, name = 'New Bettle', trunk = 35, type = 'vip' },
	[GetHashKey('senna')] = { model = 'senna', price = 1000000, banned = false, name = 'Mclaren Senna', trunk = 20, type = 'vip' },
	[GetHashKey('bnteam')] = { model = 'bnteam', price = 1000000, banned = false, name = 'Bentley', trunk = 20, type = 'vip' },
	[GetHashKey('rmodlp770')] = { model = 'rmodlp770', price = 1000000, banned = false, name = 'Lamborghini Centenario', trunk = 20, type = 'vip' },
	[GetHashKey('s15')] = { model = 's15', price = 1000000, banned = false, name = 'Nissan Silvia S15', trunk = 20, type = 'vip' },
	[GetHashKey('amggtr')] = { model = 'amggtr', price = 1000000, banned = false, name = 'Mercedes AMG', trunk = 20, type = 'vip' },
	[GetHashKey('lamtmc')] = { model = 'lamtmc', price = 1000000, banned = false, name = 'Lamborghini Terzo', trunk = 20, type = 'vip' },
	[GetHashKey('vantage')] = { model = 'vantage', price = 1000000, banned = false, name = 'Aston Martin Vantage', trunk = 20, type = 'vip' },
	[GetHashKey('slsamg')] = { model = 'slsamg', price = 1000000, banned = false, name = 'Mercedes SLS', trunk = 20, type = 'vip' },
	[GetHashKey('g65amg')] = { model = 'g65amg', price = 1000000, banned = false, name = 'Mercedes G65', trunk = 0, type = 'vip' },
	[GetHashKey('celta')] = { model = 'celta', price = 30000, banned = false, name = 'Celta Paredão', trunk = 0, type = 'vip' },
	[GetHashKey('eleanor')] = { model = 'eleanor', price = 1000000, banned = false, name = 'Mustang Eleanor', trunk = 30, type = 'vip' },
	[GetHashKey('rmodamgc63')] = { model = 'rmodamgc63', price = 1000000, banned = false, name = 'Mercedes AMG C63', trunk = 40, type = 'vip' },
	[GetHashKey('palameila')] = { model = 'palameila', price = 1000000, banned = false, name = 'Porsche Pamodelra', trunk = 50, type = 'vip' },
	[GetHashKey('cb500x')] = { model = 'cb500x', price = 1000000, banned = false, name = 'Honda CB500', trunk = 15, type = 'vip' },
	[GetHashKey('rsvr16')] = { model = 'rsvr16', price = 1000000, banned = false, name = 'Ranger Rover', trunk = 50, type = 'vip' },
	[GetHashKey('19ramdonk')] = { model = '19ramdonk', price = 1000000, banned = false, name = 'Dodge Ram Donk', trunk = 80, type = 'vip' },
	[GetHashKey('silv86')] = { model = 'silv86', price = 1000000, banned = false, name = 'Silverado Donk', trunk = 80, type = 'vip' },
	[GetHashKey('bc')] = { model = 'bc', price = 1000000, banned = false, name = 'Pagani Huayra', trunk = 20, type = 'vip' },
	[GetHashKey('70camarofn')] = { model = '70camarofn', price = 1000000, banned = false, name = 'camaro Z28 1970', trunk = 20, type = 'vip' },
	[GetHashKey('bbentayga')] = { model = 'bbentayga', price = 1000000, banned = false, name = 'Bentley Bentayga', trunk = 50, type = 'vip' },
	[GetHashKey('nissantitan17')] = { model = 'nissantitan17', price = 1000000, banned = false, name = 'Nissan Titan 2017', trunk = 120, type = 'vip' },
	[GetHashKey('regera')] = { model = 'regera', price = 1000000, banned = false, name = 'Koenigsegg Regera', trunk = 20, type = 'vip' },
	[GetHashKey('msohs')] = { model = 'msohs', price = 1000000, banned = false, name = 'Mclaren 688 HS', trunk = 20, type = 'vip' },
	[GetHashKey('gt17')] = { model = 'gt17', price = 1000000, banned = false, name = 'Ford GT 17', trunk = 20, type = 'vip' },
	[GetHashKey('19ftype')] = { model = '19ftype', price = 1000000, banned = false, name = 'Jaguar F-Type', trunk = 50, type = 'vip' },
	[GetHashKey('488gtb')] = { model = '488gtb', price = 1000000, banned = false, name = 'Ferrari 488 GTB', trunk = 30, type = 'vip' },
	[GetHashKey('m2')] = { model = 'm2', price = 1000000, banned = false, name = 'BMW M2', trunk = 50, type = 'vip' },
	[GetHashKey('defiant')] = { model = 'defiant', price = 1000000, banned = false, name = 'AMC Javelin 72', trunk = 40, type = 'vip' },
	[GetHashKey('f12tdf')] = { model = 'f12tdf', price = 1000000, banned = false, name = 'Ferrari F12 TDF', trunk = 20, type = 'vip' },
	[GetHashKey('71gtx')] = { model = '71gtx', price = 1000000, banned = false, name = 'Plymouth 71 GTX', trunk = 50, type = 'vip' },
	[GetHashKey('porsche992')] = { model = 'porsche992', price = 1000000, banned = false, name = 'Porsche 992', trunk = 20, type = 'vip' },
	[GetHashKey('18macan')] = { model = '18macan', price = 1000000, banned = false, name = 'Porsche Macan', trunk = 60, type = 'vip' },
	[GetHashKey('m6e63')] = { model = 'm6e63', price = 1000000, banned = false, name = 'BMW M6 E63', trunk = 50, type = 'vip' },
	[GetHashKey('180sx')] = { model = '180sx', price = 1000000, banned = false, name = 'Nissan 180SX', trunk = 10, type = 'vip' },
	[GetHashKey('hondafk8')] = { model = 'hondafk8', price = 1700000, banned = false, name = 'Honda FK8', trunk = 40, type = 'import' },
	[GetHashKey('mustangmach1')] = { model = 'mustangmach1', price = 1100000, banned = false, name = 'Mustang Mach 1', trunk = 40, type = 'import' },
	[GetHashKey('porsche930')] = { model = 'porsche930', price = 1300000, banned = false, name = 'Porsche 930', trunk = 20, type = 'import' },
	[GetHashKey('raptor2017')] = { model = 'raptor2017', price = 2000000, banned = false, name = 'Ford Raptor 2017', trunk = 150, type = 'vip' },
	[GetHashKey('filthynsx')] = { model = 'filthynsx', price = 1000000, banned = false, name = 'Honda NSX', trunk = 20, type = 'vip' },
	[GetHashKey('2018zl1')] = { model = '2018zl1', price = 1000000, banned = false, name = 'Camaro ZL1', trunk = 40, type = 'vip' },
	[GetHashKey('eclipse')] = { model = 'eclipse', price = 1000000, banned = false, name = 'Mitsubishi Eclipse', trunk = 30, type = 'vip' },
	[GetHashKey('lp700r')] = { model = 'lp700r', price = 1000000, banned = false, name = 'Lamborghini LP700R', trunk = 0, type = 'vip' },
	[GetHashKey('db11')] = { model = 'db11', price = 1000000, banned = false, name = 'Aston Martin DB11', trunk = 0, type = 'vip' },
	[GetHashKey('beetle74')] = { model = 'beetle74', price = 500000, banned = false, name = 'Fusca 74', trunk = 40, type = 'import' },
	[GetHashKey('fe86')] = { model = 'fe86', price = 500000, banned = false, name = 'Escorte', trunk = 40, type = 'import' },
	[GetHashKey('type263')] = { model = 'type263', price = 500000, banned = false, name = 'Kombi 63', trunk = 60, type = 'import' },
	[GetHashKey('pistas')] = { model = 'pistas', price = 1000000, banned = false, name = 'Ferrari Pista', trunk = 30, type = 'vip' },
	[GetHashKey('yzfr125')] = { model = 'yzfr125', price = 1000000, banned = false, name = 'Yamaha YZF R125', trunk = 10, type = 'vip' },
	[GetHashKey('mt03')] = { model = 'mt03', price = 1000000, banned = false, name = 'Yamaha MT 03', trunk = 10, type = 'vip' },
	[GetHashKey('flatbed3')] = { model = 'flatbed3', price = 1000000, banned = false, name = 'flatbed3', trunk = 0, type = 'service' },
	[GetHashKey('20r1')] = { model = '20r1', price = 1000000, banned = false, name = 'Yamaha YZF R1', trunk = 10, type = 'vip' },
	[GetHashKey('SVR14')] = { model = 'SVR14', price = 1000000, banned = false, name = 'Ranger Rover', trunk = 50, type = 'vip' },
	[GetHashKey('Bimota')] = { model = 'Bimota', price = 1000000, banned = false, name = 'Ducati Bimota', trunk = 10, type = 'vip' },
	[GetHashKey('r8ppi')] = { model = 'r8ppi', price = 1000000, banned = false, name = 'Audi R8 PPI Razor', trunk = 30, type = 'vip' },
	[GetHashKey('bobbes2')] = { model = 'bobbes2', price = 1000000, banned = false, name = 'Harley D. Bobber S', trunk = 15, type = 'vip' },
	[GetHashKey('bobber')] = { model = 'bobber', price = 1000000, banned = false, name = 'Harley D. Bobber ', trunk = 15, type = 'vip' },
	[GetHashKey('911tbs')] = { model = '911tbs', price = 1000000, banned = false, name = 'Porsche 911S', trunk = 25, type = 'vip' },
	[GetHashKey('rc')] = { model = 'rc', price = 1000000, banned = false, name = 'KTM RC', trunk = 15, type = 'vip' },
	[GetHashKey('brutus')] = { model = 'brutus', price = 1500000, banned = false, name = 'Brutus', trunk = 2000, type = 'vip' },
	[GetHashKey('cargobob2')] = { model = 'cargobob2', price = 1000000, banned = false, name = 'Cargo Bob', trunk = 0, type = 'service' },
	[GetHashKey('cargobob')] = { model = 'cargobob', price = 1500000, banned = false, name = 'CargoBob', trunk = 50, type = 'vip' },
	[GetHashKey('zx10r')] = { model = 'zx10r', price = 1000000, banned = false, name = 'Kawasaki ZX10R', trunk = 20, type = 'vip' },
	[GetHashKey('fox600lt')] = { model = 'fox600lt', price = 1000000, banned = false, name = 'McLaren 600LT', trunk = 40, type = 'vip' },
	[GetHashKey('foxbent1')] = { model = 'foxbent1', price = 1000000, banned = false, name = 'Bentley Liter 1931', trunk = 40, type = 'vip' },
	[GetHashKey('jeepg')] = { model = 'jeepg', price = 1000000, banned = false, name = 'Jeep Gladiator', trunk = 90, type = 'vip' },
	[GetHashKey('foxharley1')] = { model = 'foxharley1', price = 1000000, banned = false, name = 'Harley-Davidson Softail F.B.', trunk = 20, type = 'vip' },
	[GetHashKey('foxharley2')] = { model = 'foxharley2', price = 1000000, banned = false, name = '2016 Harley-Davidson Road Glide', trunk = 20, type = 'vip' },
	[GetHashKey('foxleggera')] = { model = 'foxleggera', price = 1000000, banned = false, name = 'Aston Martin Leggera', trunk = 50, type = 'vip' },
	[GetHashKey('foxrossa')] = { model = 'foxrossa', price = 1000000, banned = false, name = 'Ferrari Rossa', trunk = 40, type = 'vip' },
	[GetHashKey('foxshelby')] = { model = 'foxshelby', price = 1000000, banned = false, name = 'Ford Shelby GT500', trunk = 40, type = 'vip' },
	[GetHashKey('foxsian')] = { model = 'foxsian', price = 1000000, banned = false, name = 'Lamborghini Sian', trunk = 40, type = 'vip' },
	[GetHashKey('foxsterrato')] = { model = 'foxsterrato', price = 1000000, banned = false, name = 'Lamborghini Sterrato', trunk = 40, type = 'vip' },
	[GetHashKey('foxsupra')] = { model = 'foxsupra', price = 1000000, banned = false, name = 'Toyota Supra', trunk = 50, type = 'vip' },
	[GetHashKey('m6x6')] = { model = 'm6x6', price = 1000000, banned = false, name = 'Mercedes Benz 6x6', trunk = 90, type = 'vip' },
	[GetHashKey('m6gt3')] = { model = 'm6gt3', price = 1000000, banned = false, name = 'BMW M6 GT3', trunk = 40, type = 'vip' },
	[GetHashKey('w900')] = { model = 'w900', price = 1000000, banned = false, name = 'Kenworth W900', trunk = 130, type = 'vip' },
	[GetHashKey('sugoi')] = { model = 'sugoi', price = 1000000, banned = false, name = 'Sugoi', trunk = 30, type = 'sedans' },
	[GetHashKey('fiatstilo')] = { model = 'fiatstilo', price = 1000000, banned = false, name = 'Fiat Stilo', trunk = 50, type = 'sedans' },


	
}

garagesConfig.typeGarages = {	
	['garagemPrisao'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'blazer'}
        },
    },

	['garagemAeroporto'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'faggio'}
        },
    },

	['garagemHeliUnizk'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRvolito'}
        },
    },
	
	['garagemBombeiro'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'WRsprinter22cbm'},
			{vehicle = 'WRas350cbm'},
			{vehicle = 'WR21hiluxcbm'},
			{vehicle = 'WRsw4cbm'},
        },
    },

	['garagemHeliPolicia'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'WRpolmav'},
			{vehicle = 'WRbell407'},
        },
    },

	['garagemEXERCITO'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'WRranger23ebc'},
			{vehicle = 'WRranger23eb'},
			{vehicle = 'WR5ton'},
        },
    },

	['garagemPMERJ'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'caveiraopmerj'},
			{vehicle = 'WRas350', livery = 2},
			{vehicle = 'WRc7', livery = 2},
			{vehicle = 'WRCorolla', livery = 3},
			{vehicle = 'WRduster22', livery = 1},
			{vehicle = 'WRl200', livery = 3},
			{vehicle = 'WRranger23', livery = 3},
			{vehicle = 'WRstorm', livery = 2},
			{vehicle = 'WRtrailblazer22', livery = 3},
            {vehicle = 'WRxt660'},
        },
    },
	 
	['Taxista'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = true, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'taxi'}
        },
    },

	['garagemHELIPRF'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'WRas350prf'},
        },
    },

	['garagemHeliExercito'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'haitun'},
        },
    },

	['garagemHELIPMERJ'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'WRas350', livery = 2},
        },
    },


	['garagemCIVIL'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRas350', livery = 1},
			{vehicle = 'WRCorolla', livery = 1},
			{vehicle = 'WRl200', livery = 4},
			{vehicle = 'WRpajero', livery = 2},
			{vehicle = 'WRranger23', livery = 4},
			{vehicle = 'WRstorm', livery = 1},
			{vehicle = 'WRtrailblazer22', livery = 4},
        },
    },

	['garagemCORE'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRCorolla', livery = 2},
			{vehicle = 'WRl200', livery = 2},
			{vehicle = 'WRpajero', livery = 1},
			{vehicle = 'WRranger23', livery = 2},
			{vehicle = 'WRtrailblazer22', livery = 2},
        },
    },

	['garagemBOPE'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRl200', livery = 7},
			{vehicle = 'WRranger23', livery = 7},
			{vehicle = 'WRtrailblazer22', livery = 7}
        },
    },

	['garagemCHOQUE'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRl200', livery = 1},
            {vehicle = 'WRranger23', livery = 1},
			{vehicle = 'WRtrailblazer22', livery = 1},
        },
    },

	['garagemCOE'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRl200', livery = 5},
			{vehicle = 'WRranger23', livery = 5},
			{vehicle = 'WRtrailblazer22', livery = 5},
        },
    },
	
	['garagemPRF'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRtrailblazerprf', livery = 2},
			{vehicle = 'WRas350prf', livery = 1},
			{vehicle = 'WRcruzeprf', livery = 1},
			{vehicle = 'WRprfcamaro19', livery = 1},
			{vehicle = 'WRranger21', livery = 1},
        },
    },

	['garagemGRR'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRtrailblazerprf', livery = 1},
            {vehicle = 'WRl200prf', livery = 1},
        },
    },

	['garagemDESCARACTERIZADO'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRc7', livery = 1},
            {vehicle = 'WRl200', livery = 6},
			{vehicle = 'WRranger23', livery = 6},
            {vehicle = 'WRtrailblazer22', livery = 6},
			{vehicle = 'WRvelar', livery = 1},
            {vehicle = 'WRjeep'},
        },
    },

	['garagemHeliPrf'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wras350prf'}
        },
    },

	['garagemHospital'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRxreparamedico'},
			{vehicle = 'WRas350samu'},
			{vehicle = 'WRsw4'},
			{vehicle = 'WRsprinter22'},
        },
    },

	['garagemJornal'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'tokyoamarokjornal'},
            {vehicle = 'amarok'}
        },
    },

    ['garagemMecanico'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'towtruck'},
        },
    },

	['garagemMecanico2'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrtrxmec'},
            {vehicle = 'wrflatbed'}
        },
    },
	
	['garagemJudiciario'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'fbi2'}
        },
    },
	
	['PublicaRecrutamento'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'dm1200'},
            {vehicle = '24HUMEVOF'},
        },
    },
	
	['vipFac3'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'xj6'},
            {vehicle = 'lancerevolutionx'},
        },
    },
	
	['vipFac'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'sanchez'},
            {vehicle = 'baller4'},
        },
    },

	['vipFac2'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'hornet'},
            {vehicle = 'sultan2'},
        },
    },

    ['Publica'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = true, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = true,
            heli = false,
            boat = false
        }
    },

	['PublicaSemBlip'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = true,
            heli = false,
            boat = false
        }
    },

	['PublicaHeli'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = true, -- Exibir BLIP
            name = 'Garagem Helicoptero', -- Nome do BLIP
            blipId = 43, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = true,
            boat = false
        }
    },

	['PublicaHeliSemBlip'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem Helicoptero', -- Nome do BLIP
            blipId = 43, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = true,
            boat = false
        }
    },

	['PublicaAviao'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem Avião', -- Nome do BLIP
            blipId = 43, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = true,
            boat = false
        }
    },
	

	['PublicaBarcos'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = true, -- Exibir BLIP
            name = 'Garagem Barcos', -- Nome do BLIP
            blipId = 410, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = false,
            boat = true
        }
    },

	['PublicaBarcosSemBlip'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem Barcos', -- Nome do BLIP
            blipId = 410, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = false,
            boat = true
        }
    },

	['PublicaFac'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = true,
            heli = false,
            boat = false
        }
    },

	['Homes'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = true,
            heli = false,
            boat = false
        }
    },
}

garagesConfig.garagesLocs = {

	{
		type = "garagemJudiciario",
		blipDistance = 5.0,
		permiss = "perm.judiciario",

		coords = vec3(-189.29,-631.95,32.44), 
		spawnCoords = {
			vector4(-183.57,-627.82,32.05,251.4)
		}
	},
	
	{
		type = "garagemGate", 
		blipDistance = 5.0,
		permiss = "perm.gate",

		coords = vec3(459.04,-1017.29,28.16), 
		spawnCoords = {
			vector4(445.15,-1024.76,28.98,93.22)
		}
	},
	 
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.medusa",

		coords = vec3(763.81,-559.99,32.3), 
		spawnCoords = {
			vector4(767.46,-560.07,31.85,179.98)
		}
	},
	
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.mafia",

		coords = vec3(-2654.01,1302.11,147.44), 
		spawnCoords = {
			vector4(-2664.4,1309.72,146.81,270.23)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.cv",

		coords = vec3(3024.72,3013.31,91.58), 
		spawnCoords = {
			vector4(3024.27,3024.02,90.58,349.89)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.vanilla",

		coords = vec3(160.46,-1305.38,29.35), 
		spawnCoords = {
			vector4(151.72,-1290.94,28.8,29.57)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.cassino",

		coords = vec3(966.66,19.27,81.15), 
		spawnCoords = {
			vector4(962.92,23.08,81.15,151.6)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.bahamas",

		coords = vec3(-1411.99,-595.58,30.48), 
		spawnCoords = {
			vector4(-1406.34,-588.46,30.03,299.93)
		}
	},
	
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.mercenarios",

		coords = vec3(-128.24,1009.34,235.73), 
		spawnCoords = {
			vector4(-123.08,1006.49,235.43,198.65)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.tcp",

		coords = vec3(1376.73,-756.25,67.18), 
		spawnCoords = {
			vector4(1373.81,-746.03,66.93,66.28)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.ada",

		coords = vec3(2002.01,444.37,171.41), 
		spawnCoords = {
			vector4(2008.08,456.0,170.28,76.43)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.fdn",

		coords = vec3(935.06,2030.14,64.32), 
		spawnCoords = {
			vector4(930.95,2025.38,63.88,261.25)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.cv",

		coords = vec3(-960.54,-1472.01,5.17), 
		spawnCoords = {
			vector4(-970.21,-1471.23,4.72,109.62)
		}
	},
 
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.franca",

		coords = vec3(-2520.73,1868.51,173.13), 
		spawnCoords = {
			vector4(-2543.72,1875.33,166.56,208.16)
		}
	},
	
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.fazendinha",

		coords = vec3(1269.57,1957.6,78.6), 
		spawnCoords = {
			vector4(1271.19,1963.11,77.86,60.44)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.jagata",

		coords = vec3(732.65,2409.35,60.05), 
		spawnCoords = {
			vector4(730.13,2410.66,59.77,104.99)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.viladochaves",

		coords = vec3(327.55,-200.29,54.22), 
		spawnCoords = {
			vector4(327.43,-205.67,53.78,159.36)
		}
	},
	
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.complexodoalemao",

		coords = vec3(-268.64,1532.93,337.52), 
		spawnCoords = {
			vector4(-272.09,1532.85,337.05,319.9)
		}
	},
		
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.cidadealta",

		coords = vec3(1269.57,1957.6,78.6), 
		spawnCoords = {
			vector4(1271.19,1963.11,77.86,60.44)
		}
	},
	

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.colombia",

		coords = vec3(-828.47,183.21,71.75), 
		spawnCoords = {
			vector4(-827.55,176.14,70.89,154.7)
		}
	},


	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.novaholanda",

		coords = vec3(-1505.05,4942.22,65.24), 
		spawnCoords = {
			vector4(-1500.17,4940.22,64.7,339.34)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.babilonia",

		coords = vec3(2446.79,3813.34,42.58), 
		spawnCoords = {
			vector4(2450.91,3811.38,42.24,308.03)
		}
	},
	
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.china",

		coords = vec3(-808.41,-743.73,23.66), 
		spawnCoords = {
			vector4(-809.98,-753.65,22.36,89.56)
		}
	},


	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.morrododende",

		coords = vec3(1286.83,-1377.34,47.21), 
		spawnCoords = {
			vector4(1284.49,-1379.67,46.64,173.06)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.vilakennedy",

		coords = vec3(-187.34,-1596.32,34.49), 
		spawnCoords = {
			vector4(-182.33,-1598.14,34.34,324.98)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.vilaalianca",

		coords = vec3(111.95,-1952.38,20.79), 
		spawnCoords = {
			vector4(106.86,-1942.23,20.79,46.66)
		}
	},
	
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.cohab",

		coords = vec3(336.88,-2028.39,21.65), 
		spawnCoords = {
			vector4(325.1,-2032.02,20.88,46.39)
		}
	},


	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.vidigal",

		coords = vec3(152.88,1875.72,170.03), 
		spawnCoords = {
			vector4(155.42,1877.15,169.69,80.71)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.morrodomakakero",

		coords = vec3(713.85,-285.86,58.96), 
		spawnCoords = {
			vector4(721.64,-294.39,57.98,191.19)
		}
	},


	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.faveladamare",

		coords = vec3(-2016.54,4510.75,28.96), 
		spawnCoords = {
			vector4(-2017.55,4517.75,28.29,62.95)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.vidigal",

		coords = vec3(-2020.0,4512.68,28.81), 
		spawnCoords = {
			vector4(-2016.76,4513.13,28.37,60.48) 
		}
	},



	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.rocinha",

		coords = vec3(-2418.34,-245.81,31.27), 
		spawnCoords = {
			vector4(-2419.75,-255.19,30.73,151.06)
		}
	},
	
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.pedreira",

		coords = vec3(1521.91,-2053.16,77.29), 
		spawnCoords = {
			vector4(1523.02,-2051.36,77.0,23.42)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.hellsangels",

		coords = vec3(721.07,-1084.49,22.24), 
		spawnCoords = {
			vector4(715.31,-1072.65,21.97,0.73)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.hellsangels",

		coords = vec3(949.9,-116.34,74.34), 
		spawnCoords = {
			vector4(945.5,-120.87,74.05,233.13)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.abutres",

		coords = vec3(-550.27,310.61,83.17), 
		spawnCoords = {
			vector4(-549.95,303.17,82.8,265.17)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.serpentes",

		coords = vec3(382.0,-10.19,91.29), 
		spawnCoords = {
			vector4(376.17,-7.49,90.96,10.92)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.anonymous",

		coords = vec3(713.29,-977.55,24.11), 
		spawnCoords = {
			vector4(706.94,-979.85,23.83,43.54)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.camorra",

		coords = vec3(1404.59,1114.67,114.83), 
		spawnCoords = {
			vector4(1394.93,1118.7,114.53,90.92)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.grota",

		coords = vec3(1287.78,-274.0,85.41), 
		spawnCoords = {
			vector4(1286.46,-277.91,84.33,87.04)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.galaxy",

		coords = vec3(357.12,303.61,103.69), 
		spawnCoords = {
			vector4(355.1,312.61,103.54,255.67)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.cdd",

		coords = vec3(-1187.49,-1760.34,4.04), 
		spawnCoords = {
			vector4(-1176.83,-1744.36,3.71,213.22)
		}
	},
	
	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.pcc",

		coords = vec3(-1662.23,-208.4,55.28), 
		spawnCoords = {
			vector4(-1647.52,-216.93,54.76,70.3)
		}
	},

	{
		type = "PublicaRecrutamento", 
		blipDistance = 5.0,
		permiss = "perm.milicia",

		coords = vec3(-3141.58,1358.84,23.25), 
		spawnCoords = {
			vector4(-3145.12,1354.82,22.93,244.35)
		}
	},









	
	


	{
		type = "Publica",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-25.22,-1086.1,26.57), 
		spawnCoords = {
			vector4(-31.14,-1080.56,26.29,67.66)
		}
	},

	{
		type = "Publica",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(36.56,-1761.54,29.3), 
		spawnCoords = {
			vector4(26.51,-1761.46,29.3,47.29),
			vector4(23.45,-1766.54,29.3,48.33)
		}
	},

	{
		type = "Publica",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(4520.05,-4514.96,4.48), 
		spawnCoords = {
			vector4(4507.53,-4493.22,3.84,110.23)
		}
	},

	{
        type = "PublicaHeli",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(4447.11,-4480.78,4.28), 
        spawnCoords = {
			vector4(4449.58,-4500.29,4.85,288.02)
        }
    },

	{
        type = "PublicaHeli",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1499.83,-744.52,100.12), 
        spawnCoords = {
			vector4(1500.04,-736.28,100.76,77.16)
        }
    },

	{
        type = "PublicaHeli",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-325.08,-777.44,53.25), 
        spawnCoords = {
            vector4(-321.95,-760.14,53.25,41.87)
        }
    },

	{
        type = "PublicaHeli",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-379.02,-149.48,38.69), 
        spawnCoords = {
            vector4(-376.1,-127.58,38.62,44.34)
        }
    },

	{
        type = "PublicaHeli",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(112.15,6619.6,31.81), 
        spawnCoords = {
            vector4(123.7,6606.52,31.9,234.11)
        }
    },

	{
        type = "garagemPrisao",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1851.84,2586.04,45.68), 
        spawnCoords = {
            vector4(1854.64,2578.71,45.25, 267.56)
        }
    },
	
	{
        type = "garagemBombeiro",
        blipDistance = 5.0,
        permiss = "perm.bombeiro",

        coords = vec3(208.48,-1639.51,29.81), 
        spawnCoords = {
			vector4(214.51,-1636.91,29.84,320.49)
        }
    },

	{
        type = "garagemHeliUnizk",
        blipDistance = 5.0,
        permiss = "perm.unizk",

        coords = vec3(1206.32,-1481.51,44.01), 
        spawnCoords = {
			vector4(1200.56,-1472.17,46.4,357.91)
        }
    },

	{
        type = "PublicaAviao",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1033.55,-3017.34,13.95), 
        spawnCoords = {
            vector4(-1068.22,-3027.37,13.93,62.27)
        }
    },
	
	{
        type = "garagemHeliUnizk",
        blipDistance = 5.0,
        permiss = "perm.unizk",

        coords = vec3(-439.71,-318.19,78.17), 
        spawnCoords = {
			vector4(-447.13,-312.23,78.94,24.92)
        }
    },
	


	{
		type = "garagemAeroporto",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-1639.68,-1009.8,13.11), 
		spawnCoords = {
			vector4(-1644.43,-1006.62,12.49,320.03),
			vector4(-1638.92,-1000.07,12.5,317.41)
		}
	},

	{
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1663.05,-956.76,7.72), 
        spawnCoords = {
			vector4(-1650.25,-953.16,7.26,325.5),
			vector4(-1652.14,-942.36,7.45,321.22),
			vector4(-1671.23,-951.7,7.16,337.61)
        }
    },


	{
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(320.64,-1375.49,31.91), 
        spawnCoords = {
			vector4(314.39,-1370.5,31.31,326.08)
        }
    },


	{
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1616.11,-1015.4,13.15), 
        spawnCoords = {
            vector4(-1609.86,-1014.98,13.07, 229.14)
        }
    },

	{
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1608.29,-884.76,9.49), 
        spawnCoords = {
			vector4(-1615.19,-882.26,9.44,132.71),
			vector4(-1621.14,-879.11,9.42,137.84),
			vector4(-1625.06,-874.6,9.44,137.68)
        }
    },

	
	{
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-448.31,-332.43,34.49), 
        spawnCoords = {
			vector4(-456.98,-332.45,33.85,82.76)
        }
    },

	{
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1655.22,-952.25,7.67), 
        spawnCoords = {
			vector4(-1649.1,-952.94,7.28,331.44),
			vector4(-1641.56,-940.54,7.67,319.52)
        }
    },

	{
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1598.0,-1051.01,13.01), 
        spawnCoords = {
			vector4(-1595.97,-1048.21,13.01,320.59),
			vector4(-1592.83,-1050.14,13.01,321.57),
			vector4(-1590.21,-1052.37,13.01,322.44),
			vector4(-1587.45,-1054.23,13.01,320.72)
        }
    },



	{
        type = "garagemHospital",
        blipDistance = 5.0,
        permiss = "perm.unizk",

        coords = vec3(1128.76,-1501.83,34.69), 
        spawnCoords = {
			vector4(1124.83,-1498.45,34.42,92.33)
        }
    },
	
	{
		type = "garagemPMERJ",
		blipDistance = 5.0,
		permiss = "perm.policia",
	
		coords = vec3(-412.49,1170.66,325.82), 
		spawnCoords = {
			vector4(-411.96,1176.4,325.34,262.33)
		}
	},
	

	{
		type = "garagemHELIPMERJ",
		blipDistance = 5.0,
		permiss = "perm.policia",

		coords = vec3(-437.4,1108.46,335.11), 
		spawnCoords = {
			vector4(-431.68,1101.59,334.84,254.78)
		}
	},

	{
		type = "garagemPMERJ",
		blipDistance = 5.0,
		permiss = "perm.policia",
	
		coords = vec3(-387.09,1186.01,325.76), 
		spawnCoords = {
			vector4(-390.09,1189.75,325.34,94.32)
		}
	},
	{
		type = "garagemCIVIL",
		blipDistance = 5.0,
		permiss = "perm.policiacivil",
	
		coords = vec3(-956.51,-2063.01,9.4), 
		spawnCoords = {
			vector4(-959.45,-2061.53,9.1,135.79)
		}
	},
	{
		type = "garagemCORE",
		blipDistance = 5.0,
		permiss = "perm.core",
	
		coords = vec3(-2052.87,-461.19,12.27), 
		spawnCoords = {
			vector4(-2050.08,-467.67,11.96,232.47)
		}
	},
	{
		type = "garagemBOPE",
		blipDistance = 5.0,
		permiss = "perm.bope",
	
		coords = vec3(-1678.89,-778.5,10.75), 
		spawnCoords = {
			vector4(-1671.2,-780.35,10.45,323.39)
		}
	},
	
	{
		type = "garagemHELIPRF",
		blipDistance = 5.0,
		permiss = "perm.prf",
	
		coords = vec3(2619.33,5294.56,51.76), 
		spawnCoords = {
			vector4(2616.26,5287.4,52.62,151.71)
		}
	},

	{
		type = "garagemPRF",
		blipDistance = 5.0,
		permiss = "perm.prf",
	
		coords = vec3(2606.01,5305.1,45.07), 
		spawnCoords = {
			vector4(2613.62,5302.37,44.77,107.44)
		}
	},

	{
        type = "Taxista",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(899.83,-171.75,74.07), 
        spawnCoords = {
            vector4(907.47,-176.05,74.14,233.42)
        }
    },

	{
        type = "garagemEXERCITO",
        blipDistance = 5.0,
        permiss = "perm.exercito",

        coords = vec3(-2232.0,3260.09,32.81), 
        spawnCoords = {
			vector4(-2231.82,3270.14,32.5,238.3)
        }
    },

	{
        type = "garagemMecanico2",
        blipDistance = 5.0,
        permiss = "perm.mecanica",

        coords = vec3(40.38,-1773.0,29.32), 
        spawnCoords = {
			vector4(40.57,-1765.39,29.3,315.65) 
        }
    },

	{
		type = "PublicaBarcos", -- GARAGEM DO CHAVES
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-187.96,787.09,198.1),
		spawnCoords = {
			vector4(-202.95,772.34,197.09,132.18)
		}
	},

	{
		type = "PublicaBarcos", -- GARAGEM DO CHAVES
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(36.8,860.71,197.72),
		spawnCoords = {
			vector4(67.38,874.67,195.98,311.55)
		}
	},
	
	

	{
		type = "PublicaFac",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-423.4,-342.81,24.23), 
		spawnCoords = {
			vector4(-428.57,-333.17,23.93,201.88),
			vector4(-431.65,-349.08,23.93,21.17),
			vector4(-436.2,-336.35,23.93,199.38)
		}
	},
	
	
	{
		type = "Publica",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-405.53,1194.16,325.82), 
		spawnCoords = {
			vector4(-403.92,1186.91,325.29,250.52)
		}
	},

	{
		type = "Publica",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(316.58,-1380.0,31.91), 
		spawnCoords = {
			vector4(305.56,-1380.76,31.46,317.47)
		}
	},


	{
		type = "Publica",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-340.56,266.66,85.68), 
		spawnCoords = {
			vector4(-348.79,272.3,85.14,268.86)
		}
	},

    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(317.25, 2623.13, 44.46), 
        spawnCoords = {
            vector4(326.27,2621.65,44.06, 89.01),
            vector4(326.15,2625.46,44.08,88.34), 
        }
    },

	{
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1644.44,-987.5,13.01), 
        spawnCoords = {
			vector4(-1634.16,-983.27,13.01,321.39)
        }
    },


	{
		type = "Publica",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(3797.65,4449.16,4.52), 
		spawnCoords = {
			vector4(3798.76,4455.0,4.5,59.83)
		}
	},

	{
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1184.53,-1509.4,4.65), 
        spawnCoords = {
			vector4(-1185.59,-1493.41,4.38,126.8)
        }
    },

	{
		type = "PublicaHeli",
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(70.73,149.12,104.6), 
		spawnCoords = {
			vector4(86.46,164.26,104.6,157.39) 
		}
	},

	{
		type = "Publica", -- GARAGEM DA PRACA
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(213.90,-809.08,31.01), 
		spawnCoords = {
			vector4(223.29,-798.99,30.24,247.84),
			vector4(224.59,-796.50,30.24,249.23), 
			vector4(225.54,-794.01,30.24,246.92),
			vector4(227.58,-789.02,30.26,248.55),
			vector4(217.64,-799.16,30.77,69.69),
			vector4(218.92,-794.24,30.77,71.07),
			vector4(225.78,-791.43,30.68,252.26)
		}
	},

	{
		type = "Publica", -- GARAGEM DA PRACA PREDIO
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(1163.36,-1536.58,34.86), 
		spawnCoords = {
			vector4(1168.41,-1546.29,34.69,266.31),
			vector4(1167.46,-1553.19,34.69,265.65),
			vector4(1167.58,-1560.0,34.69,271.47)
		}
	},

	{
		type = "Publica", -- GARAGEM DA PRACA PREDIO
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(100.5,-1073.31,29.37), 
		spawnCoords = {
			vector4(111.14,-1081.21,28.53,340.67),
		}
	},
	
	{
		type = "Publica", -- GARAGEM DA PRACA BANCO
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(596.69,91.42,93.12), 
		spawnCoords = {
			vector4(598.46,98.26,92.48,248.26),
			vector4(599.35,102.41,92.48,251.97),  
			vector4(602.69,118.89,92.48,247.97),
			vector4(609.36,103.75,92.37,69.77), 
			vector4(610.45,107.12,92.41,68.28), 
			vector4(601.33,115.11,92.48,249.30), 
			vector4(611.80,110.97,92.46,68.63), 
			vector4(612.90,114.45,92.47,71.08), 
		}
	},

	{
		type = "Publica", -- GARAGEM DO CHAVES
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(275.41,-345.24,45.17),
		spawnCoords = {
			vector4(282.63,-342.09,44.49,251.15), 
			vector4(284.15,-338.84,44.49,249.29), 
			vector4(285.08,-335.68,44.49,250.24)
		}
	},

	{
		type = "Publica", -- GARAGEM DA PRACA LOS SANTOS
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(56.08,-876.53,30.65), 
		spawnCoords = {
			vector4(50.65,-872.78,30.02,160.89), 
			vector4(46.94,-871.23,30.03,161.22),  
			vector4(43.44,-870.17,30.04,160.49),
			vector4(53.24,-888.34,29.80,340.64), 
			vector4(49.96,-887.14,29.80,339.94),
			vector4(46.66,-885.97,29.81,340.49), 
			vector4(47.56,-870.92,30.46,161.31),
			vector4(53.97,-864.84,30.57,345.61),
			vector4(60.66,-866.54,30.55,346.02),
			vector4(44.02,-870.71,30.46,163.68)
		}
	},

	{
		type = "Publica", -- GARAGEM ESTACIONAMENTO VERMELHO
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-348.95,-874.39,31.31), 
		spawnCoords = {
			vector4(-344.30,-874.50,30.64,168.84),
			vector4(-339.76,-875.48,30.64,167.00), 
			vector4(-336.22,-876.30,30.64,168.03), 
			vector4(-332.53,-876.64,30.64,167.36), 
			vector4(-328.90,-877.51,30.64,168.03)
		}
	},

	{
		type = "Publica", -- GARAGEM DE PALETO
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-773.59,5597.57,33.60), 
		spawnCoords = {
			vector4(-771.57,5578.38,33.06,90.17), 
			vector4(-771.65,5575.43,33.06,88.56),  
			vector4(-771.53,5572.42,33.06,90.13)
		}
	},

	{
		type = "Publica", -- GARAGEM DO FARM
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(1894.55,3715.24,32.76), 
		spawnCoords = {
			vector4(1886.56,3716.88,32.88,121.783), 
			vector4(1884.61,3720.17,32.87,117.481)
		}
	},

	{
		type = "garagemJornal", -- GARAGEM VINHEDO
		blipDistance = 5.0,
		permiss = "perm.jornal",

		coords = vec3(-558.83,-940.7,23.84), 
		spawnCoords = {
			vector4(-554.34,-937.64,23.83,268.1)
		}
	},

	{
        type = "garagemHospital",
        blipDistance = 5.0,
        permiss = "perm.unizk",

        coords = vec3(-496.28,-329.98,34.51), 
        spawnCoords = {
            vector4(-490.58,-331.62,34.37, 265.45)
        }
    },

	{
		type = "Publica", -- GARAGEM HELIPORTO CASSINO
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-142.03,6280.09,31.49), 
		spawnCoords = {
			vector4(-135.19,6278.35,31.34,311.62)
		}
	},
	
	{
		type = "Publica", -- GARAGEM HELIPORTO CASSINO
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-1597.06,-1040.22,13.01), 
		spawnCoords = {
			vector4(-1594.2,-1051.18,13.01,316.63),
			vector4(-1591.35,-1053.49,13.01,319.58) 
		}
	},

	


	{
		type = "PublicaBarcos", -- GARAGEM BARCOS
		blipDistance = 5.0,
		permiss = nil,

		coords = vec3(-1803.32,-1230.27,1.6), 
		spawnCoords = {
			vector4(-1769.34,-1256.47,-0.12,232.4)
		}
	},

	
}


