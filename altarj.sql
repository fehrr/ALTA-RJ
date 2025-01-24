-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.11.2-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para altarj
CREATE DATABASE IF NOT EXISTS `altarj` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `altarj`;

-- Copiando estrutura para tabela altarj.bm_chamados
CREATE TABLE IF NOT EXISTS `bm_chamados` (
  `user_id` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.bm_chamados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bm_chamados` DISABLE KEYS */;
/*!40000 ALTER TABLE `bm_chamados` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.bm_daily
CREATE TABLE IF NOT EXISTS `bm_daily` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.bm_daily: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bm_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `bm_daily` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.bm_dealership
CREATE TABLE IF NOT EXISTS `bm_dealership` (
  `vehicle` varchar(50) NOT NULL,
  `stock` int(11) DEFAULT 0,
  PRIMARY KEY (`vehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.bm_dealership: ~573 rows (aproximadamente)
/*!40000 ALTER TABLE `bm_dealership` DISABLE KEYS */;
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('14r8', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('180sx', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('18macan', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('18performante', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('18velar', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('19ftype', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('19ramdonk', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('2018zl1', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('20r1', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('2f2fgts', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('2f2fmk4', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('2f2fmle7', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('350z', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('370z', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('488gtb', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('70camarofn', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('718b', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('71gtx', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('911r', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('911tbs', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('918S', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('a452', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('a80', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('adder', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('adr8', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('africat', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('africatAG', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('agerars', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('akuma', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('alpha', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('amarok', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('amggtr', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('aperta', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('asea', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('asterope', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('audiq8', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('audirs7', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('autarch', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('avarus', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bagger', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('baller', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('baller2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('baller4', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('banshee', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('banshee2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bati', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bati2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bbentayga', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bc', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('benson', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bestiagts', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bettle', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bf400', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bfinjection', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bifta', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bikelete', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('Bimota', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bison', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bison2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('biz25', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bjxl', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('blazer', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('blazer4', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('blista', 999999);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('blista2', 999999);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('blista3', 999999);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bme6tun', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bmwi8', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bmwm4gts', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bmws', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bnteam', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bobber', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bobbes2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bobcatxl', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bodhi2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('brawler', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('brioso', 500);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('brioso2', 500);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('btype', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('btype2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('btype3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('buccaneer', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('buccaneer2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('buffalo', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('buffalo2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('buffalo3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('bullet', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('burrito', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('burrito2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('burrito3', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('burrito4', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('c63w205', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('c7', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('caracara2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('carbonizzare', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('carbonrs', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('casco', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cavalcade', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cb500x', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('celta', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cheburek', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cheetah', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cheetah2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('chevette', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('chimera', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('chino', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('chino2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('chironss', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('civic', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('civic2016', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('civictyper', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cliffhanger', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('clique', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('club', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cog55', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cogcabrio', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cognoscenti', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('comet2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('comet3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('comet5', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('contender', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('coquette', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('coquette2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('coquette3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cx75', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('cyclone', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('daemon', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('daemon2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('db11', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('defiant', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('defiler', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('deveste', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('deviant', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('diablous', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('diablous2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dilettante', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('divo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dm1200', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dominator', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dominator2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dominator3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('double', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('drafter', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ds4', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dubsta', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dubsta2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dubsta3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dukes2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('dynasty', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('eclipse', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('eleanor', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('elegy', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('elegy2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('eletran17', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ellie', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('elva', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('emerus', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('emperor', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('emperor2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('enduro', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('entity2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('entityxf', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('esskey', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('evo9', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('evoque', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('exemplar', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('f12tdf', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('f150', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('f250deboxe', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('f620', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('f850', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('f8t', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('faction', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('faction2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('faction3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fagaloa', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('faggio', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('faggio2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('faggio3', 999998);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fc15', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fcr', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fcr2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fd', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('felon', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('felon2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('feltzer2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ferrariitalia', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ff4wrx', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('filthynsx', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('flashgt', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fmj', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fnflan', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fnfmits', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fnfmk4', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fnfrx7', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fordka', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fordmustang', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fox600lt', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fox720m', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxbent1', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxc8', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxct', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxevo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxgt2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxharley1', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxharley2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxleggera', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxrossa', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxsenna', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxshelby', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxsian', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxsterrato', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('foxsupra', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fq2', 19);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('freecrawler', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ftoro', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fugitive', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('furia', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('furoregt', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fusilade', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('futo', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fxxkevo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('fz07', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('g65amg', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gargoyle', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gauntlet2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gauntlet3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gauntlet4', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gb200', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gemera', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('giuliagta', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gle53', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('glendale', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('glendale2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('golf7gti', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gp1', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('granger', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gresley', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gs2013', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gsxr', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gt17', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('gt500', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('guardian', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('habanero', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('hakuchou', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('hakuchou2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('hayabusa', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('hellion', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('hermes', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('hexer', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('Hilux2019', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('hornet', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('hotknife', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('huayrar', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('huntley', 19);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('huracangt3evo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('i8', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('imorgon', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('impaler', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('infernus', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('infernus2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ingot', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('innovation', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('intruder', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('issi2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('issi3', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('issi7', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('italigtb', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('italigtb2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('italigto', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('italirsx', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('jackal', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('jeepg', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('jester', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('jester2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('jester3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('jetta2017', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('jugular', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('kamacho', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('khamelion', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('komoda', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('krieger', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('kuruma', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('kuruma2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('l200', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('lamtmc', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('lancerevolutionx', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('landstalker', 19);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('landstalker2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('le7b', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('lectro', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('locust', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('lp700r', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('lurcher', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('lwgtr', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('lynx', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('m135i', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('m2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('m2f22', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('m3e46', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('m6e63', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('m6gt3', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('m6x6', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('m8gte', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('macanturbo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('mamba', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('manana', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('manana2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('manchez', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('mansgt', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('massacro', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('massacro2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('mbc', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('mercxclass', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('mesa', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('mesa3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('michelli', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('minivan', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('minivan2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('monroe', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('monza', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('moonbeam', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('moonbeam2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('moss', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('msohs', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('mt03', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nemesis', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('neo', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('neon', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nero', 19);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nero2', 19);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nh2r', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nightblade', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ninef', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ninef2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ninjah2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nissan370z', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nissangtr', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nissangtrnismo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nissanskyliner34', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('nissantitan17', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('novak', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('omnis', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('oracle', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('oracle2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('osiris', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('p1', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('palameila', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('palio', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pamodelra17turbo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('panamera17turbo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('panigale', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('panto', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('paragon', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('paredao', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pariah', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('patriot', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('patriot2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pboxstergts', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pcj', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pct18', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pcx', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('penetrator', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('penumbra', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('penumbra2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('peyote', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('peyote3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pfister811', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('phoenix', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('picador', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pigalle', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pistas', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('pistaspider19', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('polestar1', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('porsche992', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('prairie', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('premier', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('primo', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('primo2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('prototipo', 19);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('punto', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('r1', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('r1200', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('r6', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('r8ppi', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('r8spyder20', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('radi', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('raiden', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ram2500', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rancherxl', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rapidgt', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rapidgt2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rapidgt3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('raptor', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('raptor2017', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ratbike', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rc', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('reaper', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rebel', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rebel2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rebla', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('regera', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('regina', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('retinue', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('retinue2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rhapsody', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('riata', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodamgc63', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodbacalar', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodbentleygt', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodbmwm8', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodcamaro', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodcharger69', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodessenza', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodf12tdf', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodgt63', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodgtr50', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodjeep', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodjesko', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodlegosenna', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodlp770', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodmartin', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodmi8lb', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodsianr', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodskyline34', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rmodx6', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('romero', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rs6wb', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('rsvr16', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ruffian', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ruiner', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ruston', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('s10', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('s1000rr', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('s15', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('s80', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sabregt', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sadler', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sanchez', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sanchez2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sanctus', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sandking', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sandking2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('saveiro', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sc1', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('schlagen', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('schwarzer', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('seminole', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('seminole2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('senna', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sentinel', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sentinel2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sentinel3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('serrano', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('seven70', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sheava', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('shotaro', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('silv86', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('silvias15', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('slamvan', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('slamvan2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('slamvan3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('slsamg', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sonata18', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sovereign', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('specter', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('specter2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('speedo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('stafford', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('stalion', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('stalion2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('stanier', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('stinger', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('stingergt', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('stratum', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('streiter', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('stretch', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('submersible', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('subwrx', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sugoi', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sultan', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sultan2', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('sultanrs', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('surano', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('surfer', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('surge', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('survolt', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('SVR14', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('swinger', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('t20', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tailgater', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('taipan', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tampa', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tampa2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('taycan21', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tempesta', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tenere1200', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('terzo', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('teslaprior', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tezeract', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('thrax', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('thrust', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tiger', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tigon', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('torero', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tornado', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tornado2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tornado5', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tornado6', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('toros', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('trailcat', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('trophytruck', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('trophytruck2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tropos', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('trr', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ttrs', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tulip', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('turismo2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('turismor', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tyrant', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('tyrus', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('urus', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vacca', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vader', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vagner', 19);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('valkyrietp', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vamos', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vantage', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('veneno', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('verlierer2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('verus', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vigero', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vindicator', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('virgo', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('virgo2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('virgo3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('viseris', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('visione', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('voltic', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('voodoo', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vortex', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('vstr', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('w900', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('warrener', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('washington', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('weevil', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('windsor', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('wolfsbane', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('WRspeedoems', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('WRurus', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('xa21', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('xj6', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('xls', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('xreagstore', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('xt660vip', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('yosemite', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('yosemite3', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('youga', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('youga2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('yzfr125', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('z1000', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('z190', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('z4bmw', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zentorno', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zion', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zion2', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zombiea', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zombieb', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zorrusso', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('ztype', 20);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zx10', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zx10r', 0);
INSERT INTO `bm_dealership` (`vehicle`, `stock`) VALUES
	('zx6r', 0);
/*!40000 ALTER TABLE `bm_dealership` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.bm_orgs
CREATE TABLE IF NOT EXISTS `bm_orgs` (
  `org` varchar(50) NOT NULL,
  `ultimo_login` varchar(255) DEFAULT NULL,
  `menbers` text DEFAULT '{}',
  `maxMembros` int(11) DEFAULT 0,
  `bank` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `pix` text DEFAULT NULL,
  PRIMARY KEY (`org`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.bm_orgs: ~110 rows (aproximadamente)
/*!40000 ALTER TABLE `bm_orgs` DISABLE KEYS */;
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Abutres', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('ADA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Administração', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Afeganistao', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Alemanha', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Anonymous', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Argentina', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('B13', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('BABILONIA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Bahamas', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Belgica', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Bennys', NULL, '{}', 50, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Bloods', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Bratva', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Camorra', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Canada', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Cantagalo', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Cartel', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Cassino', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('CDD', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('CHAPADAO', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('CHATUBADEMESQUITA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('China', NULL, '{}', 30, 231, NULL, '{"1662758712":{"valor":"231","nome":"[304] kelvin Meireles","tipo":"deposito"}}');
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('CIDADEALTA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('COHAB', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Colombia', NULL, '{}', 50, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('COMPLEXODOALEMAO', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Costa Rica', NULL, '{}', 50, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('CostaRica', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Crips', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Croacia', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Cv', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Dinamarca', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Egito', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Elements', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Escocia', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Espanha', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('FAVELADAMERA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('FAVELADORODO', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('FAZENDINHA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Fdn', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Franca', NULL, '{"301":{"nivel":5,"nome":"felipe cria","last_login":1663114620}}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Furious', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Galaxy', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Grecia', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Grota', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Grove', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('HellsAngels', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Hospital', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Irlanda', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Israel', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Italia', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Jacarandas', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('JACAREZINHO', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('JAGATA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Japao', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Jornal', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Judiciario', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('JURAMENTO', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Lacoste', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Life Invader', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Lixao', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Low Riders', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Mafia', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Mafia01', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Mafia02', NULL, '{}', 30, 10, NULL, '{"1662737106":{"valor":"10","nome":"[1] Maria v","tipo":"deposito"}}');
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Mafia03', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Maisonette10', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Malta', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Mecanica', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Medelin', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Medusa', NULL, '{}', 50, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Mercenarios', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Mexico', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Milicia', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Milicia01', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Milicia02', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('MORRODODENDE', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('MorrodoMakakero', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Nigeria', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('NOVAHOLANDA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Palestina', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('PANTANAL', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Paquistao', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Pcc', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Pedreira', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('PENHA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Policia', NULL, '{}', 30, 11000, NULL, '{"1662553956":{"nome":"[300] oi oi","tipo":"deposito","valor":"1 000"},"1662643614":{"nome":"[300] oi oi","tipo":"deposito","valor":"10 000"}}');
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('PoliciaCivil', NULL, '{"5":{"last_login":1663284266,"nivel":"10","nome":"felipe cria"}}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Rocinha', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Roxos', NULL, '{"301":{"nome":"felipe cria","last_login":1662933482,"nivel":"5"}}', 60, 1, NULL, '{"1662769700":{"tipo":"saque","nome":"[1] Maria v","valor":"1 000"},"1662769687":{"tipo":"deposito","nome":"[1] Maria v","valor":"1 000"},"1663465006":{"tipo":"deposito","valor":"1","nome":"[302] otaldo bigode"}}');
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Russia', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Serpentes', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Suecia', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Suica', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Taliba', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Tatica', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Tcp', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Tequila', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Triade', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Turquia', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Ucrania', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Umbrella', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Vagos', NULL, '{}', 999, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Vanilla', NULL, '{}', 30, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('VIDIGAL', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('VILAALIANCA', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('VilaDosChaves', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('VILAKENNEDY', NULL, '{}', 0, 0, NULL, NULL);
INSERT INTO `bm_orgs` (`org`, `ultimo_login`, `menbers`, `maxMembros`, `bank`, `description`, `pix`) VALUES
	('Yakuza', NULL, '{}', 30, 0, NULL, NULL);
/*!40000 ALTER TABLE `bm_orgs` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.bm_registration
CREATE TABLE IF NOT EXISTS `bm_registration` (
  `user_id` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `nascimento` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `social` varchar(50) DEFAULT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.bm_registration: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bm_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `bm_registration` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.clothes
CREATE TABLE IF NOT EXISTS `clothes` (
  `name` varchar(50) DEFAULT NULL,
  `permiss` varchar(50) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `custom` text DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.clothes: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
INSERT INTO `clothes` (`name`, `permiss`, `service`, `custom`, `sexo`) VALUES
	('Core', 'POLICIACIVIL', 'POLICIACIVIL', '{"1":[169,0,2],"2":[34,0,0],"3":[18,0,2],"4":[92,0,2],"5":[-1,0,2],"6":[121,1,2],"7":[1,0,2],"8":[8,0,2],"9":[2,0,2],"10":[-1,0,2],"11":[74,0,2],"12":[0,0,0],"13":[0,2,0],"14":[0,0,255],"15":[0,2,100],"16":[65536,2,1],"17":[0,2,0],"18":[33554944,2,0],"19":[33686018,2,0],"20":[33686018,2,38],"0":[0,0,0],"p2":[-1,0],"p10":[-1,0],"pedModel":-1667301416,"p0":[16,3],"p9":[-1,0],"p8":[-1,0],"p7":[-1,0],"p6":[-1,0],"p4":[-1,0],"p5":[-1,0],"p1":[38,1],"p3":[-1,0]}', 'mp_f_freemode_01');
INSERT INTO `clothes` (`name`, `permiss`, `service`, `custom`, `sexo`) VALUES
	('DelegadoGeral', 'POLICIACIVIL', 'POLICIACIVIL', '{"1":[169,0,2],"2":[0,0,0],"3":[18,0,2],"4":[30,2,2],"5":[-1,0,2],"6":[121,1,2],"7":[1,0,2],"8":[8,0,2],"9":[2,0,2],"10":[-1,0,2],"11":[74,0,2],"12":[0,0,0],"13":[0,2,0],"14":[0,0,255],"15":[0,2,100],"16":[65538,2,255],"17":[0,2,255],"18":[33554944,2,255],"19":[33686018,2,255],"20":[33686018,2,255],"p2":[-1,0],"p1":[-1,0],"p0":[-1,0],"p5":[-1,0],"p6":[-1,0],"p3":[-1,0],"p4":[-1,0],"p8":[-1,0],"p7":[-1,0],"p10":[-1,0],"p9":[-1,0],"pedModel":-1667301416,"0":[0,0,0]}', 'mp_f_freemode_01');
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.eg_reward
CREATE TABLE IF NOT EXISTS `eg_reward` (
  `user_id` int(11) DEFAULT 0,
  `tempoOn` int(11) DEFAULT 1,
  `tempoTotalOn` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.eg_reward: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `eg_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `eg_reward` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.flow_attachs
CREATE TABLE IF NOT EXISTS `flow_attachs` (
  `user_id` int(11) NOT NULL,
  `attachs` text DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.flow_attachs: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `flow_attachs` DISABLE KEYS */;
/*!40000 ALTER TABLE `flow_attachs` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.fstore_appointments
CREATE TABLE IF NOT EXISTS `fstore_appointments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `command` varchar(512) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156793 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.fstore_appointments: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `fstore_appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `fstore_appointments` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.mirtin_bans
CREATE TABLE IF NOT EXISTS `mirtin_bans` (
  `user_id` int(11) NOT NULL,
  `motivo` text NOT NULL,
  `banimento` tinytext NOT NULL,
  `desbanimento` tinytext NOT NULL,
  `time` int(11) NOT NULL,
  `hwid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.mirtin_bans: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_bans` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.mirtin_bans_hwid
CREATE TABLE IF NOT EXISTS `mirtin_bans_hwid` (
  `token` varchar(120) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `user_id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.mirtin_bans_hwid: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_bans_hwid` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_bans_hwid` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.mirtin_chamados
CREATE TABLE IF NOT EXISTS `mirtin_chamados` (
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `historico` text NOT NULL DEFAULT '{}',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.mirtin_chamados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_chamados` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_chamados` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.mirtin_homes
CREATE TABLE IF NOT EXISTS `mirtin_homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(15) NOT NULL,
  `price` int(11) NOT NULL,
  `coords` varchar(50) NOT NULL,
  `garagem` text DEFAULT '{}',
  `chaves` int(11) DEFAULT NULL,
  `minBau` int(11) NOT NULL,
  `maxMoradores` int(11) DEFAULT 3,
  `permissao` varchar(50) NOT NULL,
  `interior` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.mirtin_homes: ~518 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_homes` DISABLE KEYS */;
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(1, 'casa', 250000, '{"y":-197.08,"z":54.23,"x":321.34}', '{}', 250, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(3, 'casa', 250000, '{"y":-194.92,"z":54.23,"x":315.79}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(4, 'casa', 250000, '{"y":-198.08,"z":54.23,"x":313.33}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(5, 'casa', 250000, '{"y":-203.33,"z":54.23,"x":311.29}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(6, 'casa', 250000, '{"y":-208.02,"z":54.23,"x":309.72}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(7, 'casa', 250000, '{"y":-213.26,"z":54.23,"x":307.55}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(8, 'casa', 250000, '{"y":-219.45,"z":54.23,"x":339.13}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(9, 'casa', 250000, '{"y":-215.12,"z":54.23,"x":340.9}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(11, 'casa', 250000, '{"y":-205.02,"z":54.23,"x":344.59}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(12, 'casa', 250000, '{"y":-199.74,"z":54.23,"x":346.8}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(13, 'casa', 250000, '{"y":-224.72,"z":54.23,"x":337.15}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(14, 'casa', 250000, '{"y":-227.3,"z":54.23,"x":334.98}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(15, 'casa', 250000, '{"y":-225.95,"z":54.23,"x":331.45}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(16, 'casa', 250000, '{"y":-225.09,"z":54.23,"x":329.3}', '{}', 200, 200, NULL, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(17, 'casa', 250000, '{"y":-225.16,"z":58.02,"x":329.36}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(18, 'casa', 250000, '{"y":-225.89,"z":58.02,"x":331.39}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(19, 'casa', 250000, '{"y":-227.21,"z":58.02,"x":334.92}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(21, 'casa', 250000, '{"y":-224.75,"z":58.02,"x":337.1}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(22, 'casa', 250000, '{"y":-219.45,"z":58.02,"x":339.16}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(23, 'casa', 250000, '{"y":-214.9,"z":58.02,"x":340.89}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(24, 'casa', 250000, '{"y":-204.83,"z":58.02,"x":344.85}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(25, 'casa', 250000, '{"y":-209.56,"z":58.02,"x":342.99}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(26, 'casa', 250000, '{"y":-199.79,"z":58.02,"x":346.71}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(27, 'casa', 250000, '{"y":-218.8,"z":54.23,"x":312.77}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(28, 'casa', 250000, '{"y":-196.24,"z":54.23,"x":319.35}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(30, 'casa', 250000, '{"y":-218.88,"z":58.02,"x":312.86}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(31, 'casa', 250000, '{"y":-218.09,"z":54.23,"x":310.94}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(32, 'casa', 250000, '{"y":-216.66,"z":54.23,"x":307.39}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(33, 'casa', 250000, '{"y":-218.04,"z":58.02,"x":310.87}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(34, 'casa', 250000, '{"y":-216.73,"z":58.02,"x":307.29}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(35, 'casa', 250000, '{"y":-196.93,"z":58.02,"x":321.42}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(36, 'casa', 250000, '{"y":-213.4,"z":58.02,"x":307.51}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(37, 'casa', 250000, '{"y":-196.19,"z":58.02,"x":319.28}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(38, 'casa', 250000, '{"y":-208.04,"z":58.02,"x":309.55}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(39, 'casa', 250000, '{"y":-194.85,"z":58.02,"x":315.77}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(40, 'casa', 250000, '{"y":-198.17,"z":58.02,"x":313.36}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(41, 'casa', 250000, '{"y":-203.46,"z":58.02,"x":311.33}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(42, 'casa', 500000, '{"y":-1735.78,"z":29.16,"x":479.8}', '{}', 300, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(43, 'casa', 500000, '{"y":-1757.65,"z":29.1,"x":474.48}', '{}', 300, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(44, 'casa', 500000, '{"y":-1775.28,"z":29.08,"x":472.16}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(45, 'casa', 500000, '{"y":-1714.07,"z":29.71,"x":489.64}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(46, 'casa', 500000, '{"y":-1823.33,"z":28.87,"x":495.25}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(47, 'casa', 500000, '{"y":-1813.03,"z":28.9,"x":500.57}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(48, 'casa', 500000, '{"y":-1790.82,"z":28.92,"x":512.51}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(49, 'casa', 500000, '{"y":-1780.86,"z":28.92,"x":514.24}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(50, 'casa', 500000, '{"y":-1735.53,"z":29.61,"x":419.1}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(51, 'casa', 500000, '{"y":-1725.46,"z":29.61,"x":431.22}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(52, 'casa', 500000, '{"y":-1707.44,"z":29.71,"x":443.39}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(53, 'casa', 500000, '{"y":-1829.66,"z":28.37,"x":440.6}', '{}', 350, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(54, 'casa', 500000, '{"y":-1842.1,"z":28.47,"x":427.14}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(55, 'casa', 500000, '{"y":-1856.32,"z":27.33,"x":412.31}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(56, 'casa', 500000, '{"y":-1865.05,"z":26.72,"x":399.31}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(57, 'casa', 500000, '{"y":-1881.51,"z":26.04,"x":385.09}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(58, 'casa', 500000, '{"y":-1895.77,"z":25.18,"x":368.71}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(59, 'casa', 500000, '{"y":-1845.87,"z":27.75,"x":329.4}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(60, 'casa', 500000, '{"y":-1854.02,"z":27.52,"x":320.3}', '{}', 350, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(61, 'casa', 500000, '{"y":-1829.57,"z":28.34,"x":338.83}', '{}', 350, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(62, 'casa', 250000, '{"y":-2018.54,"z":22.36,"x":332.35}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(63, 'casa', 250000, '{"y":-2021.52,"z":22.36,"x":336.09}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(64, 'casa', 250000, '{"y":-2027.76,"z":22.36,"x":343.41}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(65, 'casa', 250000, '{"y":-2028.95,"z":22.36,"x":344.82}', '{}', 200, 1200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(66, 'casa', 250000, '{"y":-2034.98,"z":22.36,"x":352.07}', '{}', 200, 200, NULL, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(67, 'casa', 1000000, '{"y":-620.89,"z":69.57,"x":1250.98}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(68, 'casa', 1000000, '{"y":-601.59,"z":69.79,"x":1240.52}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(69, 'casa', 1000000, '{"y":-566.38,"z":69.66,"x":1241.43}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(70, 'casa', 1000000, '{"y":-557.74,"z":69.62,"x":1204.9}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(71, 'casa', 1000000, '{"y":-575.59,"z":69.14,"x":1201.16}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(72, 'casa', 1000000, '{"y":-598.4,"z":68.07,"x":1203.65}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(73, 'casa', 1000000, '{"y":-683.51,"z":66.04,"x":1270.97}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(74, 'casa', 1000000, '{"y":-648.7,"z":68.13,"x":1265.56}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(76, 'casa', 100000000, '{"y":333.16,"z":89.57,"x":-1807.91}', '{}', 1000, 1000, NULL, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(77, 'casa', 100000000, '{"y":365.04,"z":88.73,"x":-1741.62}', '{}', 1000, 1200, NULL, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(78, 'casa', 100000000, '{"y":385.56,"z":89.35,"x":-1673.19}', '{}', 1000, 1200, NULL, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(79, 'casa', 1000000, '{"y":-687.1,"z":66.04,"x":1259.79}', '{}', 500, 200, NULL, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(80, 'casa', 250000, '{"z":54.23,"y":-209.67,"x":342.93}', '{}', 200, 200, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(81, 'casa', 100000000, '{"y":314.7,"z":90.92,"x":-1838.66}', '{}', 1000, 200, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(82, 'casa', 200000, '{"z":20.94,"y":-2040.59,"x":313.46}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(83, 'casa', 200000, '{"z":20.94,"y":-2043.56,"x":316.95}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(84, 'casa', 250000, '{"z":20.94,"y":-2049.8,"x":324.43}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(85, 'casa', 500000, '{"y":-1751.27,"x":405.9,"z":29.72}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(86, 'casa', 500000, '{"y":-1937.3,"x":324.32,"z":25.02}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(87, 'casa', 500000, '{"y":-1883.35,"x":192.29,"z":25.06}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(88, 'casa', 500000, '{"y":-1871.5,"x":171.65,"z":24.41}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(89, 'casa', 500000, '{"y":-1956.14,"x":311.94,"z":24.62}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(90, 'casa', 500000, '{"y":-1864.8,"x":150.21,"z":24.6}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(91, 'casa', 500000, '{"y":-1853.29,"x":130.61,"z":25.24}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(92, 'casa', 500000, '{"y":-1971.83,"x":295.76,"z":22.91}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(93, 'casa', 500000, '{"y":-1922.77,"x":56.64,"z":21.92}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(94, 'casa', 500000, '{"y":-1993.95,"x":279.67,"z":20.81}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(95, 'casa', 500000, '{"y":-2023.51,"x":256.34,"z":19.27}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(96, 'casa', 500000, '{"y":-1911.65,"x":38.95,"z":21.96}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(97, 'casa', 500000, '{"y":-2030.23,"x":251.02,"z":18.71}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(98, 'casa', 500000, '{"y":-1896.64,"x":23.18,"z":22.97}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(99, 'casa', 500000, '{"y":-2046.25,"x":235.9,"z":18.38}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(100, 'casa', 500000, '{"y":-1884.29,"x":5.25,"z":23.7}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(101, 'casa', 500000, '{"y":-1872.25,"x":-4.82,"z":24.16}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(102, 'casa', 500000, '{"y":-1858.86,"x":-20.32,"z":25.41}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(103, 'casa', 500000, '{"y":-1847.01,"x":-34.18,"z":26.2}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(104, 'casa', 500000, '{"y":-1783.21,"x":-50.36,"z":28.31}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(105, 'casa', 500000, '{"y":-1792.12,"x":-42.04,"z":27.83}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(106, 'casa', 500000, '{"y":-1844.74,"x":21.24,"z":24.61}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(107, 'casa', 500000, '{"y":-1864.19,"x":45.96,"z":23.28}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(108, 'casa', 500000, '{"y":-1854.67,"x":29.97,"z":24.07}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(109, 'casa', 500000, '{"y":-1873.22,"x":54.49,"z":22.81}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(110, 'casa', 500000, '{"y":-1823.66,"x":152.77,"z":27.87}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(111, 'casa', 500000, '{"y":-1895.22,"x":208.65,"z":24.82}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(112, 'casa', 500000, '{"y":-1935.0,"x":250.83,"z":24.7}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(113, 'casa', 500000, '{"y":-1927.32,"x":258.46,"z":25.45}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(114, 'casa', 500000, '{"y":-1917.02,"x":270.45,"z":26.19}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(115, 'casa', 500000, '{"y":-1898.88,"x":282.99,"z":27.27}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(116, 'casa', 500000, '{"y":-1820.83,"x":348.62,"z":28.9}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(117, 'casa', 500000, '{"y":-1697.16,"x":500.73,"z":29.79}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(118, 'casa', 250000, '{"y":-1802.15,"x":367.43,"z":29.07}', '{}', 1, 200, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(119, 'casa', 250000, '{"y":-1811.99,"x":379.16,"z":29.05}', '{}', 1, 200, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(120, 'casa', 250000, '{"y":-1813.31,"x":380.74,"z":29.05}', '{}', 1, 200, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(121, 'casa', 250000, '{"y":-1795.72,"x":405.48,"z":29.09}', '{}', 1, 200, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(122, 'casa', 250000, '{"y":-1789.71,"x":398.24,"z":29.17}', '{}', 1, 200, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(123, 'casa', 1000000, '{"y":-515.39,"x":1250.87,"z":69.35}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(124, 'casa', 1000000, '{"y":-725.34,"x":1229.68,"z":60.96}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(125, 'casa', 1000000, '{"y":-494.16,"x":1251.52,"z":69.91}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(126, 'casa', 1000000, '{"y":-480.31,"x":1259.7,"z":70.19}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(127, 'casa', 1000000, '{"y":-697.0,"x":1222.71,"z":60.81}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(128, 'casa', 1000000, '{"y":-458.01,"x":1265.75,"z":70.52}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(129, 'casa', 1000000, '{"y":-429.91,"x":1262.38,"z":70.02}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(130, 'casa', 1000000, '{"y":-669.25,"x":1221.55,"z":63.51}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(131, 'casa', 1000000, '{"y":-510.54,"x":1241.14,"z":69.35}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(132, 'casa', 1000000, '{"y":-620.36,"x":1207.45,"z":66.44}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(133, 'casa', 1000000, '{"y":-574.24,"x":1301.09,"z":71.74}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(134, 'casa', 1000000, '{"y":-583.14,"x":1323.36,"z":73.25}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(136, 'casa', 1000000, '{"y":-597.33,"x":1341.28,"z":74.71}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(137, 'casa', 1000000, '{"y":-702.81,"x":1264.75,"z":64.91}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(138, 'casa', 1000000, '{"y":-606.6,"x":1367.13,"z":74.72}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(139, 'casa', 1000000, '{"y":-593.5,"x":1386.21,"z":74.49}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(140, 'casa', 1000000, '{"y":-729.64,"x":996.95,"z":57.82}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(141, 'casa', 1000000, '{"y":-569.6,"x":1389.05,"z":74.5}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(142, 'casa', 1000000, '{"y":-716.22,"x":979.1,"z":58.23}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(143, 'casa', 1000000, '{"y":-555.84,"x":1373.19,"z":74.69}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(144, 'casa', 1000000, '{"y":-701.43,"x":970.91,"z":58.49}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(145, 'casa', 1000000, '{"y":-546.84,"x":1348.56,"z":73.9}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(146, 'casa', 1000000, '{"y":-535.96,"x":1328.58,"z":72.45}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(147, 'casa', 1000000, '{"y":-669.92,"x":959.91,"z":58.45}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(148, 'casa', 1000000, '{"y":-653.29,"x":943.25,"z":58.63}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(149, 'casa', 1000000, '{"y":-527.36,"x":1302.99,"z":71.47}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(150, 'casa', 1000000, '{"y":-391.28,"x":1114.44,"z":68.95}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(151, 'casa', 1000000, '{"y":-639.77,"x":928.9,"z":58.25}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(152, 'casa', 1000000, '{"y":-411.54,"x":1101.05,"z":67.56}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(153, 'casa', 1000000, '{"y":-615.56,"x":902.99,"z":58.46}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(154, 'casa', 1000000, '{"y":-438.62,"x":1099.37,"z":67.8}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(155, 'casa', 1000000, '{"y":-608.21,"x":886.78,"z":58.45}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(156, 'casa', 1000000, '{"y":-450.9,"x":1100.12,"z":67.79}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(157, 'casa', 1000000, '{"y":-583.65,"x":861.65,"z":58.16}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(158, 'casa', 1000000, '{"y":-464.47,"x":1098.6,"z":67.32}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(159, 'casa', 1000000, '{"y":-562.64,"x":844.06,"z":58.0}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(160, 'casa', 1000000, '{"y":-484.42,"x":1090.44,"z":65.67}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(161, 'casa', 1000000, '{"y":-540.63,"x":893.17,"z":58.51}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(162, 'casa', 1000000, '{"y":-498.15,"x":1046.36,"z":64.28}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(163, 'casa', 1000000, '{"y":-532.68,"x":850.28,"z":57.93}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(164, 'casa', 1000000, '{"y":-470.35,"x":1051.09,"z":64.3}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(165, 'casa', 1000000, '{"y":-508.83,"x":861.56,"z":57.73}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(166, 'casa', 1000000, '{"y":-497.92,"x":878.39,"z":58.1}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(167, 'casa', 1000000, '{"y":-448.97,"x":1056.33,"z":66.26}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(168, 'casa', 1000000, '{"y":-489.35,"x":906.31,"z":59.44}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(169, 'casa', 1000000, '{"y":-378.25,"x":1060.47,"z":68.24}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(170, 'casa', 1000000, '{"y":-477.81,"x":921.99,"z":61.09}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(171, 'casa', 1000000, '{"y":-408.24,"x":1028.94,"z":66.35}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(172, 'casa', 1000000, '{"y":-463.27,"x":944.59,"z":61.56}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(173, 'casa', 1000000, '{"y":-423.4,"x":1010.39,"z":65.35}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(174, 'casa', 1000000, '{"y":-451.54,"x":967.21,"z":62.79}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(175, 'casa', 1000000, '{"y":-432.98,"x":987.5,"z":64.05}', '{}', 1, 300, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(176, 'casa', 1000000, '{"y":-469.31,"x":1014.59,"z":64.52}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(177, 'casa', 1000000, '{"y":-502.52,"x":970.41,"z":62.15}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(178, 'casa', 1000000, '{"y":-627.62,"x":980.27,"z":59.24}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(179, 'casa', 1000000, '{"y":-518.89,"x":945.67,"z":60.83}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(180, 'casa', 1000000, '{"y":-596.16,"x":964.37,"z":59.91}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(181, 'casa', 1000000, '{"y":-525.99,"x":924.49,"z":59.8}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(182, 'casa', 1000000, '{"y":-580.67,"x":976.65,"z":59.86}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(183, 'casa', 1000000, '{"y":-572.39,"x":1009.67,"z":60.6}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(184, 'casa', 1000000, '{"y":-593.97,"x":999.52,"z":59.64}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(185, 'casa', 1000000, '{"y":-569.63,"x":919.71,"z":58.37}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(186, 'casa', 1000000, '{"y":-252.43,"x":952.86,"z":67.97}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(187, 'casa', 1000000, '{"y":-541.93,"x":965.27,"z":59.73}', '{}', 1, 500, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(188, 'casa', 1000000, '{"y":-525.73,"x":987.88,"z":60.7}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(189, 'casa', 1000000, '{"y":-511.0,"x":1006.5,"z":61.0}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(190, 'casa', 1000000, '{"y":-245.06,"x":930.73,"z":69.01}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(191, 'casa', 1000000, '{"y":-238.27,"x":921.04,"z":70.41}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(192, 'casa', 1000000, '{"y":-205.05,"x":880.15,"z":71.98}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(193, 'casa', 1000000, '{"y":-182.3,"x":840.76,"z":74.59}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(194, 'casa', 1000000, '{"y":-163.73,"x":808.82,"z":75.88}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(195, 'casa', 1000000, '{"y":-158.78,"x":798.32,"z":74.9}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(196, 'casa', 1000000, '{"y":-149.94,"x":773.91,"z":75.63}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(197, 'casa', 10000000, '{"y":440.5,"x":346.47,"z":147.78}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(200, 'casa', 5000000, '{"y":502.01,"x":315.76,"z":153.18}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(201, 'casa', 5000000, '{"y":427.86,"x":374.1,"z":145.69}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(202, 'casa', 5000000, '{"y":551.98,"x":318.62,"z":156.04}', '{}', 1, 500, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(203, 'casa', 5000000, '{"y":465.31,"x":331.65,"z":151.28}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(204, 'casa', 5000000, '{"y":513.54,"x":224.13,"z":140.93}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(205, 'casa', 5000000, '{"y":473.83,"x":167.47,"z":142.52}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(206, 'casa', 5000000, '{"y":494.36,"x":119.86,"z":147.35}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(207, 'casa', 10000000, '{"y":466.75,"x":107.09,"z":147.57}', '{}', 1, 2000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(208, 'casa', 5000000, '{"y":449.77,"x":57.43,"z":147.04}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(209, 'casa', 10000000, '{"y":486.24,"x":79.95,"z":148.21}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(210, 'casa', 5000000, '{"y":467.86,"x":-7.86,"z":145.85}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(211, 'casa', 5000000, '{"y":468.83,"x":43.05,"z":148.1}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(212, 'casa', 5000000, '{"y":501.82,"x":-109.86,"z":143.48}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(213, 'casa', 5000000, '{"y":490.1,"x":-66.96,"z":144.89}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(214, 'casa', 5000000, '{"y":502.53,"x":-174.89,"z":137.43}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(215, 'casa', 5000000, '{"y":487.93,"x":-230.27,"z":128.77}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(216, 'casa', 5000000, '{"y":474.53,"x":-311.59,"z":111.83}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(217, 'casa', 10000000, '{"y":431.04,"x":-305.24,"z":110.49}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(218, 'casa', 10000000, '{"y":458.16,"x":-355.68,"z":116.65}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(219, 'casa', 10000000, '{"y":407.9,"x":-371.42,"z":110.7}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(220, 'casa', 10000000, '{"y":514.95,"x":-348.72,"z":120.65}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(221, 'casa', 5000000, '{"y":504.11,"x":-386.71,"z":120.42}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(222, 'casa', 10000000, '{"y":548.65,"x":-378.64,"z":124.05}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(223, 'casa', 5000000, '{"y":567.61,"x":-406.4,"z":124.61}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(224, 'casa', 5000000, '{"y":535.1,"x":-426.0,"z":122.43}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(225, 'casa', 5000000, '{"y":536.98,"x":-459.08,"z":121.47}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(226, 'casa', 10000000, '{"y":587.52,"x":-450.89,"z":128.07}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(227, 'casa', 5000000, '{"y":552.01,"x":-500.78,"z":120.61}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(228, 'casa', 5000000, '{"y":594.28,"x":-520.71,"z":120.84}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(229, 'casa', 10000000, '{"y":516.94,"x":-526.66,"z":112.95}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(230, 'casa', 5000000, '{"y":541.25,"x":-554.55,"z":110.71}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(231, 'casa', 5000000, '{"y":477.3,"x":-536.74,"z":103.2}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(232, 'casa', 10000000, '{"y":530.37,"x":-595.41,"z":107.76}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(233, 'casa', 5000000, '{"y":433.45,"x":-516.59,"z":97.81}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(234, 'casa', 5000000, '{"y":491.48,"x":-580.4,"z":108.91}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(235, 'casa', 5000000, '{"y":398.36,"x":-500.15,"z":98.27}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(236, 'casa', 5000000, '{"y":488.88,"x":-622.81,"z":108.88}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(237, 'casa', 5000000, '{"y":520.55,"x":-640.9,"z":109.89}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(238, 'casa', 5000000, '{"y":413.11,"x":-477.0,"z":103.13}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(239, 'casa', 10000000, '{"y":471.46,"x":-667.21,"z":114.14}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(240, 'casa', 10000000, '{"y":395.69,"x":-450.9,"z":104.78}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(241, 'casa', 10000000, '{"y":512.09,"x":-679.01,"z":113.53}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(242, 'casa', 5000000, '{"y":427.61,"x":-401.2,"z":112.41}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(243, 'casa', 5000000, '{"y":490.5,"x":-721.51,"z":109.62}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(244, 'casa', 10000000, '{"y":448.63,"x":-717.85,"z":106.91}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(245, 'casa', 10000000, '{"y":339.98,"x":-395.8,"z":108.72}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(246, 'casa', 5000000, '{"y":430.9,"x":-762.06,"z":100.2}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(247, 'casa', 5000000, '{"y":459.68,"x":-784.75,"z":100.39}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(248, 'casa', 5000000, '{"y":422.0,"x":-824.74,"z":92.13}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(249, 'casa', 5000000, '{"y":343.33,"x":-372.0,"z":109.95}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(250, 'casa', 5000000, '{"y":342.86,"x":-444.11,"z":105.63}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(251, 'casa', 5000000, '{"y":369.56,"x":-328.14,"z":110.01}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(252, 'casa', 5000000, '{"y":466.76,"x":-842.7,"z":87.6}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(253, 'casa', 10000000, '{"y":420.19,"x":-303.71,"z":109.88}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(254, 'casa', 5000000, '{"y":457.73,"x":-866.66,"z":88.29}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(255, 'casa', 5000000, '{"y":379.68,"x":-297.98,"z":112.1}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(256, 'casa', 5000000, '{"y":518.05,"x":-884.58,"z":92.45}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(257, 'casa', 10000000, '{"y":381.42,"x":-238.97,"z":112.63}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(258, 'casa', 5000000, '{"y":562.74,"x":-873.28,"z":96.62}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(259, 'casa', 5000000, '{"y":544.99,"x":-907.58,"z":100.26}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(260, 'casa', 5000000, '{"y":399.54,"x":-214.23,"z":111.31}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(261, 'casa', 5000000, '{"y":561.35,"x":-924.83,"z":100.16}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(262, 'casa', 5000000, '{"y":423.96,"x":-166.38,"z":111.81}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(263, 'casa', 5000000, '{"y":597.2,"x":-940.09,"z":101.01}', '{"spawn":{"y":595.3,"x":-946.1,"h":162.4,"z":100.14},"garagem":{"y":598.77,"x":-945.09,"z":101.0}}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(264, 'casa', 5000000, '{"y":567.85,"x":-947.94,"z":101.51}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(265, 'casa', 5000000, '{"y":428.51,"x":-72.86,"z":113.04}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(266, 'casa', 5000000, '{"y":581.83,"x":-974.41,"z":103.15}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(267, 'casa', 5000000, '{"y":409.31,"x":-6.42,"z":120.29}', '{}', 1, 300, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(268, 'casa', 5000000, '{"y":409.31,"x":-6.42,"z":120.29}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(269, 'casa', 5000000, '{"y":586.92,"x":-1022.81,"z":103.43}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(270, 'casa', 5000000, '{"y":594.52,"x":-1107.71,"z":104.46}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(271, 'casa', 5000000, '{"y":389.73,"x":61.19,"z":116.58}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(272, 'casa', 5000000, '{"y":548.49,"x":-1090.0,"z":103.64}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(273, 'casa', 5000000, '{"y":548.3,"x":-1125.38,"z":102.57}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(274, 'casa', 5000000, '{"y":365.54,"x":37.62,"z":116.05}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(275, 'casa', 5000000, '{"y":545.87,"x":-1146.59,"z":101.91}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(276, 'casa', 5000000, '{"y":568.67,"x":-1167.16,"z":101.83}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(277, 'casa', 5000000, '{"y":564.05,"x":-1193.04,"z":100.34}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(278, 'casa', 5000000, '{"y":506.63,"x":-1217.65,"z":95.86}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(279, 'casa', 10000000, '{"y":497.13,"x":-1277.89,"z":97.9}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(280, 'casa', 5000000, '{"y":457.9,"x":-1215.65,"z":92.07}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(281, 'casa', 5000000, '{"y":440.19,"x":-1174.47,"z":86.85}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(282, 'casa', 5000000, '{"y":481.86,"x":-1158.77,"z":86.1}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(283, 'casa', 5000000, '{"y":486.3,"x":-1122.63,"z":82.36}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(284, 'casa', 10000000, '{"y":482.36,"x":-1065.96,"z":85.31}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(286, 'casa', 10000000, '{"y":-25.07,"x":-842.26,"z":40.4}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(287, 'casa', 10000000, '{"y":469.75,"x":-355.83,"z":112.65}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(289, 'casa', 10000000, '{"y":42.6,"x":-888.34,"z":49.15}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(290, 'casa', 10000000, '{"y":19.56,"x":-930.21,"z":48.53}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(291, 'casa', 10000000, '{"y":306.38,"x":-877.42,"z":84.16}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(292, 'casa', 10000000, '{"y":108.29,"x":-913.01,"z":55.71}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(293, 'casa', 10000000, '{"y":363.82,"x":-881.3,"z":85.37}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(294, 'casa', 10000000, '{"y":122.25,"x":-971.53,"z":57.05}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(295, 'casa', 10000000, '{"y":158.18,"x":-998.29,"z":62.32}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(296, 'casa', 10000000, '{"y":196.89,"x":-949.29,"z":67.39}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(297, 'casa', 10000000, '{"y":222.09,"x":-1038.02,"z":64.38}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(298, 'casa', 5000000, '{"y":805.88,"x":-824.01,"z":202.79}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(299, 'casa', 10000000, '{"y":784.75,"x":-867.4,"z":191.94}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(300, 'casa', 5000000, '{"y":777.06,"x":-912.35,"z":187.1}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(301, 'casa', 5000000, '{"y":809.05,"x":-931.77,"z":184.79}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(302, 'casa', 10000000, '{"y":191.5,"x":-902.19,"z":69.45}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(303, 'casa', 10000000, '{"y":588.26,"x":-126.8,"z":204.72}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(304, 'casa', 10000000, '{"y":304.54,"x":-1116.71,"z":66.53}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(305, 'casa', 5000000, '{"y":591.84,"x":-189.13,"z":197.83}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(306, 'casa', 10000000, '{"y":292.44,"x":-1189.98,"z":69.9}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(307, 'casa', 5000000, '{"y":618.28,"x":-189.22,"z":199.67}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(308, 'casa', 5000000, '{"y":588.2,"x":-232.61,"z":190.54}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(309, 'casa', 10000000, '{"y":375.8,"x":-1135.84,"z":71.3}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(310, 'casa', 10000000, '{"y":622.07,"x":-245.95,"z":187.82}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(311, 'casa', 10000000, '{"y":427.42,"x":-1094.89,"z":75.88}', '{}', 1, 2000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(312, 'casa', 10000000, '{"y":600.85,"x":-293.57,"z":181.58}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(313, 'casa', 5000000, '{"y":635.62,"x":-298.84,"z":175.7}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(314, 'casa', 10000000, '{"y":625.42,"x":-339.7,"z":171.36}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(315, 'casa', 10000000, '{"y":360.7,"x":-1026.2,"z":71.37}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(316, 'casa', 10000000, '{"y":432.55,"x":-1052.17,"z":77.26}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(317, 'casa', 5000000, '{"y":668.4,"x":-353.04,"z":169.08}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(318, 'casa', 5000000, '{"y":664.7,"x":-400.22,"z":163.84}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(319, 'casa', 5000000, '{"y":686.36,"x":-446.1,"z":153.12}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(320, 'casa', 10000000, '{"y":647.53,"x":-476.78,"z":144.39}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(321, 'casa', 10000000, '{"y":628.24,"x":-523.14,"z":137.98}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(322, 'casa', 50000000, '{"y":664.87,"x":-568.58,"z":145.48}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(323, 'casa', 5000000, '{"y":687.05,"x":-551.63,"z":146.08}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(324, 'casa', 5000000, '{"y":672.22,"x":-606.11,"z":151.6}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(325, 'casa', 10000000, '{"y":709.63,"x":-533.21,"z":153.16}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(326, 'casa', 7000000, '{"y":132.36,"x":-1899.2,"z":81.99}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(327, 'casa', 10000000, '{"y":738.69,"x":-495.87,"z":163.04}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(328, 'casa', 7000000, '{"y":162.62,"x":-1932.02,"z":84.66}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(329, 'casa', 7000000, '{"y":212.01,"x":-1961.26,"z":86.81}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(330, 'casa', 5000000, '{"y":795.98,"x":-494.07,"z":184.35}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(331, 'casa', 7000000, '{"y":252.83,"x":-1905.54,"z":86.46}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(332, 'casa', 5000000, '{"y":818.22,"x":-536.84,"z":197.52}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(333, 'casa', 7000000, '{"y":246.06,"x":-1970.49,"z":87.82}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(334, 'casa', 10000000, '{"y":851.52,"x":-596.83,"z":211.48}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(335, 'casa', 7000000, '{"y":298.42,"x":-1922.4,"z":89.29}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(336, 'casa', 7000000, '{"y":301.08,"x":-1995.36,"z":91.97}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(337, 'casa', 100000000, '{"y":886.27,"x":-658.52,"z":229.31}', '{}', 1, 2000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(338, 'casa', 7000000, '{"y":362.48,"x":-1931.15,"z":93.98}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(339, 'casa', 7000000, '{"y":367.57,"x":-2009.16,"z":94.82}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(340, 'casa', 10000000, '{"y":808.37,"x":-747.33,"z":215.04}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(341, 'casa', 7000000, '{"y":387.65,"x":-1940.64,"z":96.71}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(342, 'casa', 10000000, '{"y":802.93,"x":-655.5,"z":198.99}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(343, 'casa', 7000000, '{"y":445.22,"x":-2011.24,"z":103.02}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(344, 'casa', 7000000, '{"y":449.54,"x":-1942.7,"z":102.93}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(345, 'casa', 10000000, '{"y":807.66,"x":-599.79,"z":191.53}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(346, 'casa', 7000000, '{"y":499.83,"x":-2014.9,"z":107.18}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(347, 'casa', 10000000, '{"y":780.55,"x":-596.01,"z":189.31}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(348, 'casa', 7000000, '{"y":550.99,"x":-1937.54,"z":115.03}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(349, 'casa', 5000000, '{"y":761.2,"x":-565.67,"z":185.43}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(350, 'casa', 7000000, '{"y":591.18,"x":-1996.32,"z":118.11}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(351, 'casa', 5000000, '{"y":732.78,"x":-579.67,"z":184.22}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(352, 'casa', 7000000, '{"y":595.19,"x":-1929.05,"z":122.29}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(353, 'casa', 5000000, '{"y":764.09,"x":-597.5,"z":189.32}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(354, 'casa', 7000000, '{"y":631.0,"x":-1974.67,"z":122.6}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(355, 'casa', 7000000, '{"y":642.54,"x":-1896.2,"z":130.21}', '{}', 1, 900, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(356, 'casa', 100000000, '{"y":740.3,"x":-645.68,"z":174.29}', '{}', 1, 1500, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(357, 'casa', 10000000, '{"y":-34.4,"x":-1465.17,"z":55.06}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(358, 'casa', 10000000, '{"y":706.06,"x":-699.7,"z":158.22}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(359, 'casa', 100000000, '{"y":-91.02,"x":-1549.47,"z":54.93}', '{}', 1, 1500, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(360, 'casa', 100000000, '{"y":647.0,"x":-700.77,"z":155.38}', '{}', 1, 1500, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(361, 'casa', 10000000, '{"y":596.23,"x":-685.94,"z":143.65}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(362, 'casa', 100000000, '{"y":-34.01,"x":-1580.56,"z":57.57}', '{}', 1, 1500, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(363, 'casa', 10000000, '{"y":588.39,"x":-704.17,"z":142.28}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(364, 'casa', 5000000, '{"y":593.79,"x":-733.14,"z":142.48}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(365, 'casa', 1000000, '{"y":620.48,"x":-753.16,"z":142.75}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(366, 'casa', 10000000, '{"y":650.57,"x":-765.7,"z":145.7}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(367, 'casa', 10000000, '{"y":696.64,"x":-819.29,"z":148.11}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(368, 'casa', 5000000, '{"y":695.24,"x":-853.02,"z":149.0}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(369, 'casa', 5000000, '{"y":699.26,"x":-884.54,"z":151.28}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(370, 'casa', 10000000, '{"y":693.76,"x":-908.9,"z":151.44}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(371, 'casa', 10000000, '{"y":690.97,"x":-931.5,"z":153.47}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(372, 'casa', 100000000, '{"y":22.41,"x":-1570.73,"z":59.56}', '{}', 1, 1500, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(373, 'casa', 100000000, '{"y":36.33,"x":-1629.9,"z":62.94}', '{}', 1, 1500, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(374, 'casa', 10000000, '{"y":671.34,"x":-985.72,"z":158.04}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(375, 'casa', 100000000, '{"y":681.5,"x":-997.34,"z":160.69}', '{}', 1, 1500, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(376, 'casa', 5000000, '{"y":719.51,"x":-1019.51,"z":164.0}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(377, 'casa', 5000000, '{"y":761.55,"x":-1056.4,"z":167.32}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(378, 'casa', 5000000, '{"y":795.83,"x":-1067.69,"z":167.0}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(379, 'casa', 10000000, '{"y":797.99,"x":-1100.72,"z":167.26}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(380, 'casa', 5000000, '{"y":761.46,"x":-1117.84,"z":164.29}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(381, 'casa', 10000000, '{"y":784.58,"x":-1130.82,"z":163.89}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(383, 'casa', 150000, '{"y":2657.29,"x":2964.22,"z":74.23}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(384, 'casa', 150000, '{"y":2656.84,"x":2959.74,"z":74.5}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(385, 'casa', 150000, '{"y":2659.42,"x":2943.91,"z":75.39}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(386, 'casa', 150000, '{"y":2661.85,"x":2937.18,"z":75.38}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(387, 'casa', 150000, '{"y":2668.29,"x":2943.27,"z":75.36}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(388, 'casa', 150000, '{"y":2666.55,"x":2947.41,"z":75.36}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(389, 'casa', 150000, '{"y":2664.47,"x":2957.55,"z":74.77}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(390, 'casa', 10000000, '{"y":726.86,"x":-1165.65,"z":155.61}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(391, 'casa', 150000, '{"y":2664.06,"x":2962.03,"z":74.34}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(392, 'casa', 10000000, '{"y":693.16,"x":-1196.73,"z":147.43}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(393, 'casa', 150000, '{"y":2656.81,"x":2970.42,"z":74.2}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(394, 'casa', 10000000, '{"y":664.9,"x":-1218.94,"z":144.54}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(395, 'casa', 10000000, '{"y":674.49,"x":-1241.55,"z":142.82}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(396, 'casa', 5000000, '{"y":642.96,"x":-1248.79,"z":142.72}', '{}', 1, 700, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(397, 'casa', 10000000, '{"y":629.84,"x":-1277.31,"z":143.27}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(398, 'casa', 10000000, '{"y":650.41,"x":-1291.82,"z":141.51}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(399, 'casa', 150000, '{"y":2675.3,"x":2924.23,"z":74.95}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(400, 'casa', 150000, '{"y":2689.23,"x":2903.2,"z":80.39}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(401, 'casa', 150000, '{"y":2696.13,"x":2897.04,"z":82.73}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(402, 'casa', 150000, '{"y":2708.69,"x":2889.97,"z":85.06}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(403, 'casa', 150000, '{"y":2713.91,"x":2885.49,"z":85.06}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(404, 'casa', 150000, '{"y":2724.94,"x":2879.81,"z":85.08}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(405, 'casa', 10000000, '{"y":606.1,"x":-1337.1,"z":134.38}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(406, 'casa', 150000, '{"y":2732.05,"x":2872.35,"z":80.34}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(407, 'casa', 10000000, '{"y":611.0,"x":-1367.34,"z":133.89}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(408, 'casa', 150000, '{"y":2734.78,"x":2868.75,"z":78.0}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(409, 'casa', 150000, '{"y":2741.24,"x":2864.27,"z":75.63}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(410, 'casa', 150000, '{"y":2746.79,"x":2857.72,"z":73.84}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(411, 'casa', 10000000, '{"y":560.51,"x":-1346.53,"z":130.54}', '{}', 1, 2000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(412, 'casa', 150000, '{"y":2751.23,"x":2855.75,"z":71.48}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(413, 'casa', 10000000, '{"y":561.89,"x":-1404.92,"z":125.41}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(414, 'casa', 150000, '{"y":2694.16,"x":2890.11,"z":89.76}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(415, 'casa', 150000, '{"y":2699.34,"x":2882.7,"z":94.34}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(416, 'casa', 10000000, '{"y":526.7,"x":-1405.45,"z":123.84}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(417, 'casa', 150000, '{"y":2705.86,"x":2854.01,"z":96.5}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(418, 'casa', 150000, '{"y":2704.19,"x":2854.5,"z":96.5}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(419, 'casa', 10000000, '{"y":545.6,"x":-1452.9,"z":121.0}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(420, 'casa', 150000, '{"y":2684.84,"x":2875.38,"z":98.86}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(421, 'casa', 150000, '{"y":2681.21,"x":2885.59,"z":96.49}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(422, 'casa', 100000000, '{"y":512.25,"x":-1454.13,"z":117.8}', '{}', 1, 1500, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(423, 'casa', 150000, '{"y":2663.33,"x":2899.05,"z":101.23}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(424, 'casa', 150000, '{"y":2658.68,"x":2902.77,"z":101.23}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(425, 'casa', 150000, '{"y":2655.82,"x":2905.36,"z":101.23}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(426, 'casa', 150000, '{"y":2648.83,"x":2909.49,"z":101.22}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(427, 'casa', 150000, '{"y":2642.91,"x":2915.83,"z":101.23}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(428, 'casa', 150000, '{"y":2633.5,"x":2935.51,"z":101.23}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(429, 'casa', 10000000, '{"y":523.2,"x":-1500.5,"z":118.28}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(430, 'casa', 150000, '{"y":2630.89,"x":2939.09,"z":101.23}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(431, 'casa', 150000, '{"y":2628.3,"x":2942.44,"z":101.23}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(432, 'casa', 150000, '{"y":2746.45,"x":2873.41,"z":68.53}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(433, 'casa', 10000000, '{"y":436.99,"x":-1495.88,"z":112.5}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(434, 'casa', 150000, '{"y":2739.39,"x":2880.76,"z":69.71}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(435, 'casa', 10000000, '{"y":420.57,"x":-1539.96,"z":110.02}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(436, 'casa', 150000, '{"y":2742.41,"x":2877.75,"z":69.53}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(437, 'casa', 150000, '{"y":2737.47,"x":2895.12,"z":71.36}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(438, 'casa', 150000, '{"y":2721.01,"x":2904.73,"z":72.49}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(439, 'casa', 100000000, '{"y":834.58,"x":-85.63,"z":235.93}', '{}', 1, 1500, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(440, 'casa', 150000, '{"y":2704.19,"x":2903.74,"z":73.33}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(441, 'casa', 150000, '{"y":2713.27,"x":2909.15,"z":72.96}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(443, 'casa', 150000, '{"y":2698.01,"x":2919.58,"z":73.39}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(444, 'casa', 150000, '{"y":2688.94,"x":2924.67,"z":74.16}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(445, 'casa', 150000, '{"y":2685.28,"x":2926.7,"z":74.67}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(446, 'casa', 150000, '{"y":2679.79,"x":2920.52,"z":74.69}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(447, 'casa', 150000, '{"y":2683.27,"x":2918.33,"z":74.42}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(448, 'casa', 150000, '{"y":2732.72,"x":2900.05,"z":71.87}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(449, 'casa', 150000, '{"y":2672.58,"x":2926.88,"z":75.07}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(450, 'casa', 150000, '{"y":2677.42,"x":2933.94,"z":75.07}', '{}', 1, 100, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(459, 'casa', 150000, '{"y":-131.17,"x":-1645.31,"z":59.14}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(461, 'casa', 150000, '{"y":-134.46,"x":-1639.56,"z":58.57}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(462, 'casa', 150000, '{"y":-164.54,"x":-1726.12,"z":58.18}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(463, 'casa', 150000, '{"y":-188.35,"x":-1755.6,"z":57.53}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(464, 'casa', 150000, '{"y":-201.22,"x":-1770.0,"z":55.5}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(465, 'casa', 150000, '{"y":-228.12,"x":-1771.22,"z":52.88}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(466, 'casa', 150000, '{"y":-723.4,"x":1361.68,"z":67.2}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(467, 'casa', 150000, '{"y":-755.11,"x":1346.41,"z":71.56}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(468, 'casa', 150000, '{"y":-757.5,"x":1352.74,"z":71.53}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(469, 'casa', 150000, '{"y":-759.82,"x":1359.06,"z":71.53}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(470, 'casa', 150000, '{"y":-762.23,"x":1365.62,"z":71.53}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(471, 'casa', 150000, '{"y":-789.76,"x":1345.58,"z":71.52}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(472, 'casa', 150000, '{"y":-777.73,"x":1304.54,"z":71.53}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(473, 'casa', 150000, '{"y":-774.61,"x":1296.21,"z":69.9}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(474, 'casa', 150000, '{"y":-768.42,"x":1293.62,"z":69.9}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(475, 'casa', 150000, '{"y":-750.89,"x":1334.57,"z":71.53}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(476, 'casa', 150000, '{"y":-267.44,"x":1255.54,"z":78.13}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(477, 'casa', 150000, '{"y":-272.45,"x":1245.42,"z":76.9}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(478, 'casa', 150000, '{"y":-259.6,"x":1253.46,"z":79.06}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(479, 'casa', 150000, '{"y":-264.33,"x":1243.66,"z":78.82}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(480, 'casa', 150000, '{"y":-249.78,"x":1236.21,"z":79.21}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(481, 'casa', 150000, '{"y":-241.46,"x":1243.13,"z":79.22}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(482, 'casa', 150000, '{"y":-242.76,"x":1231.55,"z":79.24}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(483, 'casa', 150000, '{"y":-228.14,"x":1235.71,"z":79.25}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(484, 'casa', 150000, '{"y":-235.29,"x":1227.32,"z":79.22}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(485, 'casa', 150000, '{"y":-212.92,"x":1229.96,"z":79.23}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(486, 'casa', 150000, '{"y":-128.82,"x":-1652.43,"z":59.78}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(487, 'casa', 150000, '{"y":-129.78,"x":-1663.15,"z":59.87}', '{}', 1, 120, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(490, 'casa', 500000, '{"y":199.07,"x":523.07,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(491, 'casa', 500000, '{"y":191.8,"x":520.41,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(492, 'casa', 500000, '{"y":222.14,"x":531.51,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(493, 'casa', 500000, '{"y":191.02,"x":514.74,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(494, 'casa', 500000, '{"y":226.17,"x":527.78,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(495, 'casa', 500000, '{"y":229.24,"x":519.21,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(496, 'casa', 500000, '{"y":193.33,"x":508.29,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(497, 'casa', 500000, '{"y":232.09,"x":511.42,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(498, 'casa', 500000, '{"y":201.64,"x":485.63,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(499, 'casa', 500000, '{"y":237.42,"x":496.8,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(500, 'casa', 500000, '{"y":206.07,"x":481.96,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(501, 'casa', 500000, '{"y":220.81,"x":487.36,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(502, 'casa', 500000, '{"y":213.24,"x":484.63,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(503, 'casa', 500000, '{"y":193.23,"x":508.46,"z":108.31}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(504, 'casa', 500000, '{"y":191.08,"x":514.66,"z":108.31}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(505, 'casa', 500000, '{"y":201.6,"x":485.72,"z":108.31}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(506, 'casa', 500000, '{"y":192.14,"x":520.54,"z":108.31}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(507, 'casa', 500000, '{"y":206.22,"x":482.14,"z":108.31}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(508, 'casa', 500000, '{"y":199.08,"x":523.22,"z":108.31}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(509, 'casa', 500000, '{"y":206.67,"x":525.89,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(510, 'casa', 500000, '{"y":213.13,"x":484.51,"z":108.31}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(511, 'casa', 500000, '{"y":213.16,"x":528.25,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(513, 'casa', 500000, '{"y":234.37,"x":505.16,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(515, 'casa', 500000, '{"y":227.09,"x":489.7,"z":104.75}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(519, 'casa', 500000, '{"y":47.53,"x":283.78,"z":92.67}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(520, 'casa', 500000, '{"y":22.33,"x":260.79,"z":88.13}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(521, 'casa', 500000, '{"y":24.68,"x":254.34,"z":88.13}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(522, 'casa', 500000, '{"y":47.48,"x":283.71,"z":96.71}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(523, 'casa', 500000, '{"y":22.35,"x":260.72,"z":92.13}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(524, 'casa', 500000, '{"y":24.7,"x":254.26,"z":92.13}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(525, 'casa', 500000, '{"y":54.9,"x":106.95,"z":77.77}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(526, 'casa', 500000, '{"y":54.87,"x":106.84,"z":81.78}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(527, 'casa', 500000, '{"y":-82.63,"x":176.32,"z":72.78}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(528, 'casa', 500000, '{"y":-82.61,"x":176.22,"z":76.82}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(529, 'casa', 800000, '{"y":-1058.7,"x":146.22,"z":30.19}', '{}', 1, 250, 3, 'perm.nil', 1);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(530, 'casa', 500000, '{"y":-72.71,"x":151.48,"z":67.68}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(531, 'casa', 500000, '{"y":-72.73,"x":151.48,"z":71.87}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(532, 'casa', 500000, '{"y":-72.73,"x":151.41,"z":75.87}', '{}', 1, 300, 3, 'perm.nil', 2);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(533, 'casa', 1000000, '{"y":302.14,"x":-0.84,"z":111.08}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(534, 'casa', 1000000, '{"y":297.81,"x":8.43,"z":111.08}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(535, 'casa', 1000000, '{"y":323.33,"x":9.14,"z":111.08}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(536, 'casa', 1000000, '{"y":324.57,"x":21.04,"z":111.08}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(537, 'casa', 1000000, '{"y":329.02,"x":11.85,"z":111.08}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(538, 'casa', 1000000, '{"y":318.9,"x":18.38,"z":111.08}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(539, 'casa', 1000000, '{"y":337.49,"x":30.91,"z":115.39}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(540, 'casa', 1000000, '{"y":343.34,"x":18.44,"z":115.55}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(541, 'casa', 1000000, '{"y":360.49,"x":-60.85,"z":113.06}', '{}', 1, 500, 3, 'perm.nil', 3);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(542, 'casa', 5000000, '{"y":267.89,"x":-819.33,"z":86.4}', '{}', 1, 1000, 3, 'perm.nil', 4);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(543, 'casa', 100000000, '{"z":235.76,"y":985.95,"x":-112.87}', '{}', 1, 1000, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(544, 'casa', 100000000, '{"z":235.66,"y":910.57,"x":-151.73}', '{}', 1, 1000, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(545, 'casa', 100000000, '{"z":232.14,"y":967.32,"x":-184.31}', '{}', 1, 1000, 3, 'perm.nil', 5);
INSERT INTO `mirtin_homes` (`id`, `tipo`, `price`, `coords`, `garagem`, `chaves`, `minBau`, `maxMoradores`, `permissao`, `interior`) VALUES
	(546, 'casa', 100000000, '{"z":128.84,"y":436.39,"x":-1804.98}', '{}', 1, 1000, 3, 'perm.nil', 5);
/*!40000 ALTER TABLE `mirtin_homes` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.mirtin_users_homes
CREATE TABLE IF NOT EXISTS `mirtin_users_homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `houseID` int(11) NOT NULL,
  `proprietario` int(11) NOT NULL,
  `moradores` text DEFAULT '{}',
  `bau` text DEFAULT '{}',
  `armario` text DEFAULT '{}',
  `interior` int(11) NOT NULL,
  `iptu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1125 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.mirtin_users_homes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mirtin_users_homes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mirtin_users_homes` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.nation_concessionaria
CREATE TABLE IF NOT EXISTS `nation_concessionaria` (
  `vehicle` text NOT NULL,
  `estoque` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vehicle`(765))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.nation_concessionaria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `nation_concessionaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `nation_concessionaria` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartbank_accounts
CREATE TABLE IF NOT EXISTS `smartbank_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Copiando dados para a tabela altarj.smartbank_accounts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartbank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartbank_accounts` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartbank_cards
CREATE TABLE IF NOT EXISTS `smartbank_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `holder` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `hold` int(11) DEFAULT 0,
  `data` text DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartbank_cards: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartbank_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartbank_cards` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartbank_statements
CREATE TABLE IF NOT EXISTS `smartbank_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pix` varchar(50) NOT NULL DEFAULT '0',
  `from` varchar(50) NOT NULL DEFAULT '0',
  `source` varchar(50) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT 0,
  `reason` varchar(50) NOT NULL DEFAULT '0',
  `time` int(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartbank_statements: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartbank_statements` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartbank_statements` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_bank_invoices
CREATE TABLE IF NOT EXISTS `smartphone_bank_invoices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payee_id` int(11) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2504 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_bank_invoices: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_bank_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_bank_invoices` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_blocks
CREATE TABLE IF NOT EXISTS `smartphone_blocks` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_blocks: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_blocks` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_calls
CREATE TABLE IF NOT EXISTS `smartphone_calls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `initiator` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `video` tinyint(4) NOT NULL DEFAULT 0,
  `anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `initiator_index` (`initiator`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=188072 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_calls: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_calls` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_casino
CREATE TABLE IF NOT EXISTS `smartphone_casino` (
  `user_id` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0,
  `double` bigint(20) NOT NULL DEFAULT 0,
  `crash` bigint(20) NOT NULL DEFAULT 0,
  `mine` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_casino: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_casino` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_casino` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_contacts
CREATE TABLE IF NOT EXISTS `smartphone_contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_index` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=112816 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_contacts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_contacts` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_gallery
CREATE TABLE IF NOT EXISTS `smartphone_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `folder` varchar(255) NOT NULL DEFAULT '/',
  `url` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106628 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_gallery: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_gallery` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_ifood_orders
CREATE TABLE IF NOT EXISTS `smartphone_ifood_orders` (
  `id` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_ifood_orders: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_ifood_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_ifood_orders` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_instagram
CREATE TABLE IF NOT EXISTS `smartphone_instagram` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15568 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_instagram: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_instagram` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_instagram` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_instagram_followers
CREATE TABLE IF NOT EXISTS `smartphone_instagram_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`follower_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_instagram_followers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_instagram_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_instagram_followers` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_instagram_likes
CREATE TABLE IF NOT EXISTS `smartphone_instagram_likes` (
  `post_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_instagram_likes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_instagram_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_instagram_likes` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_instagram_notifications
CREATE TABLE IF NOT EXISTS `smartphone_instagram_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` varchar(512) NOT NULL,
  `saw` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=528239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_instagram_notifications: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_instagram_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_instagram_notifications` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_instagram_posts
CREATE TABLE IF NOT EXISTS `smartphone_instagram_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_instagram_posts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_instagram_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_instagram_posts` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_olx
CREATE TABLE IF NOT EXISTS `smartphone_olx` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `images` varchar(1024) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7467 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_olx: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_olx` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_olx` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_paypal_transactions
CREATE TABLE IF NOT EXISTS `smartphone_paypal_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'payment',
  `description` varchar(255) DEFAULT NULL,
  `value` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_paypal_transactions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_paypal_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_paypal_transactions` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_tinder
CREATE TABLE IF NOT EXISTS `smartphone_tinder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(1024) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `show_gender` tinyint(4) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `show_tags` tinyint(4) NOT NULL,
  `target` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6932 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_tinder: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_tinder` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_tinder` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_tinder_messages
CREATE TABLE IF NOT EXISTS `smartphone_tinder_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `liked` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=12638 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_tinder_messages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_tinder_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_tinder_messages` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_tinder_rating
CREATE TABLE IF NOT EXISTS `smartphone_tinder_rating` (
  `profile_id` int(11) NOT NULL,
  `rated_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_id`,`rated_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_tinder_rating: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_tinder_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_tinder_rating` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_tor_messages
CREATE TABLE IF NOT EXISTS `smartphone_tor_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel` varchar(24) NOT NULL DEFAULT 'geral',
  `sender` varchar(255) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_index` (`channel`),
  KEY `sender_index` (`sender`)
) ENGINE=InnoDB AUTO_INCREMENT=65825 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_tor_messages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_tor_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_tor_messages` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_tor_payments
CREATE TABLE IF NOT EXISTS `smartphone_tor_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_tor_payments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_tor_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_tor_payments` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_twitter_followers
CREATE TABLE IF NOT EXISTS `smartphone_twitter_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `profile_id_index` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_twitter_followers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_twitter_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_twitter_followers` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_twitter_likes
CREATE TABLE IF NOT EXISTS `smartphone_twitter_likes` (
  `tweet_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_twitter_likes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_twitter_likes` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_twitter_profiles
CREATE TABLE IF NOT EXISTS `smartphone_twitter_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `bannerURL` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2874 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_twitter_profiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_twitter_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_twitter_profiles` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_twitter_tweets
CREATE TABLE IF NOT EXISTS `smartphone_twitter_tweets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `tweet_id` bigint(20) DEFAULT NULL,
  `content` varchar(280) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2711 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_twitter_tweets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_twitter_tweets` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_uber_trips
CREATE TABLE IF NOT EXISTS `smartphone_uber_trips` (
  `id` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `user_rate` tinyint(4) DEFAULT 0,
  `driver_rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_uber_trips: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_uber_trips` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_uber_trips` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_weazel
CREATE TABLE IF NOT EXISTS `smartphone_weazel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_weazel: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_weazel` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_weazel` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_whatsapp
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp` (
  `owner` varchar(255) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `read_receipts` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_whatsapp: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_whatsapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_whatsapp` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_whatsapp_channels
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_channels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=80669 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_whatsapp_channels: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_whatsapp_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_whatsapp_channels` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_whatsapp_groups
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `members` varchar(2048) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=989 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_whatsapp_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_whatsapp_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_whatsapp_groups` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.smartphone_whatsapp_messages
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel_id` bigint(20) unsigned NOT NULL,
  `sender` varchar(255) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `readed` tinyint(4) NOT NULL DEFAULT 0,
  `saw_at` bigint(20) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `channel_id_index` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=996495 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.smartphone_whatsapp_messages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `smartphone_whatsapp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `smartphone_whatsapp_messages` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.trafico
CREATE TABLE IF NOT EXISTS `trafico` (
  `user_id` text NOT NULL,
  PRIMARY KEY (`user_id`(765))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela altarj.trafico: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `trafico` DISABLE KEYS */;
/*!40000 ALTER TABLE `trafico` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.vrp_colect
CREATE TABLE IF NOT EXISTS `vrp_colect` (
  `user_id` int(11) DEFAULT NULL,
  `tempoOn` int(11) DEFAULT 0,
  `tempoTotalOn` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.vrp_colect: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_colect` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_colect` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.vrp_srv_data
CREATE TABLE IF NOT EXISTS `vrp_srv_data` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` text DEFAULT NULL,
  PRIMARY KEY (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.vrp_srv_data: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_srv_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_srv_data` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.vrp_users
CREATE TABLE IF NOT EXISTS `vrp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ultimo_login` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `whitelist` tinyint(1) DEFAULT NULL,
  `paypal` int(11) DEFAULT 0,
  `Motivo_BAN` varchar(255) DEFAULT NULL,
  `Motivo_UNBAN` varchar(255) DEFAULT NULL,
  `discord` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.vrp_users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_users` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.vrp_users_infos
CREATE TABLE IF NOT EXISTS `vrp_users_infos` (
  `user_id` int(11) NOT NULL,
  `controller` int(11) DEFAULT 0,
  `rosto` text DEFAULT '{}',
  `roupas` text DEFAULT '{}',
  `tattos` text DEFAULT '{}',
  `garagem` int(11) DEFAULT 3,
  `vip` text DEFAULT '{}',
  `bonus` text DEFAULT '{}',
  `coins` int(11) DEFAULT 3,
  `tempo_jogado` int(11) DEFAULT 0,
  `prioridade` int(11) DEFAULT 0,
  `license` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.vrp_users_infos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_users_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_users_infos` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.vrp_user_data
CREATE TABLE IF NOT EXISTS `vrp_user_data` (
  `user_id` int(11) NOT NULL,
  `dkey` varchar(100) NOT NULL,
  `dvalue` text DEFAULT NULL,
  PRIMARY KEY (`user_id`,`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.vrp_user_data: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_data` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.vrp_user_identities
CREATE TABLE IF NOT EXISTS `vrp_user_identities` (
  `user_id` int(11) NOT NULL,
  `registro` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `banco` int(11) DEFAULT 25000,
  `multas` int(11) DEFAULT 0,
  `criminal` text DEFAULT '{}',
  `signo` varchar(50) DEFAULT 'Nenhum',
  `data_nascimento` varchar(50) DEFAULT '17/03/2001',
  `relacionamento` varchar(255) DEFAULT '{}',
  `total_hour` int(11) DEFAULT 0,
  `chavePix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `registro` (`registro`),
  KEY `telefone` (`telefone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.vrp_user_identities: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_user_identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_identities` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.vrp_user_ids
CREATE TABLE IF NOT EXISTS `vrp_user_ids` (
  `identifier` varchar(150) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.vrp_user_ids: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_user_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_ids` ENABLE KEYS */;

-- Copiando estrutura para tabela altarj.vrp_user_veiculos
CREATE TABLE IF NOT EXISTS `vrp_user_veiculos` (
  `user_id` int(11) NOT NULL,
  `veiculo` varchar(50) NOT NULL,
  `placa` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `motor` int(11) DEFAULT 1000,
  `lataria` int(11) DEFAULT 1000,
  `gasolina` int(11) DEFAULT 15,
  `ipva` int(11) DEFAULT 7,
  `portamalas` text DEFAULT '{}',
  `tunagem` text DEFAULT '{}',
  `favorite` int(11) DEFAULT 0,
  `alugado` tinyint(4) NOT NULL DEFAULT 0,
  `data_alugado` text DEFAULT NULL,
  `expired` text DEFAULT NULL,
  PRIMARY KEY (`user_id`,`veiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela altarj.vrp_user_veiculos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `vrp_user_veiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_veiculos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
