-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14-Ago-2014 às 06:40
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `campeonato`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` text NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE KEY `id_categoria_3` (`id_categoria`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_categoria_2` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'KIDS MASCULINO'),
(2, 'KIDS FEMININO'),
(3, 'JUNIOR MASCULINO'),
(4, 'JUNIOR FEMININO'),
(5, 'FUN RACE MASCULINO'),
(6, 'FUN RACE MASC MASTER'),
(7, 'FUN RACE MASC G-MASTER'),
(8, 'FUN RACE FEMININO'),
(9, 'FUN RACE FEM MASTER'),
(10, 'FUN RACE FEM G-MASTER'),
(11, 'RACE AMADOR MASC'),
(12, 'RACE AMADOR FEM'),
(13, 'RACE PROFISSIONAL MASC'),
(14, 'RACE PROFISSIONAL FEM'),
(15, 'RACE MASTER'),
(16, 'RACE GRAN MASTER'),
(17, 'RACE 14'),
(18, 'UNLIMIT'),
(19, 'PADDLE BOARD MASC'),
(20, 'CANOA HAVAIANA'),
(21, 'PADDLE BOARD FEM'),
(22, 'RACE MASTER FEM'),
(23, 'RACE G-MASTER FEM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `etapa`
--

CREATE TABLE IF NOT EXISTS `etapa` (
  `id_etapa` int(11) NOT NULL,
  `local` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `etapa`
--

INSERT INTO `etapa` (`id_etapa`, `local`) VALUES
(1, 'SALINAS DAS MARGARIDAS'),
(2, 'BAHIA SUP ECO 2014');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao`
--

CREATE TABLE IF NOT EXISTS `inscricao` (
  `id_etapa` int(11) NOT NULL,
  `id_participante` varchar(15) CHARACTER SET utf8 NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `cod_inscricao` int(11) NOT NULL,
  `tempo` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inscricao`
--

INSERT INTO `inscricao` (`id_etapa`, `id_participante`, `id_categoria`, `cod_inscricao`, `tempo`) VALUES
(1, '26819899572', 16, 101, '01:32:26'),
(1, '48801372515', 6, 103, '01:05:31'),
(1, '27733084504', 6, 105, '01:22:12'),
(1, '14824094534', 19, 106, '01:23:23'),
(1, '80604129572', 19, 107, '01:12:28'),
(1, '54386268553', 19, 108, '01:18:36'),
(1, '93063679534', 21, 109, '01:20:16'),
(1, '29346762500', 18, 112, '01:30:33'),
(1, '2029590231', 1, 111, '00:08:55'),
(1, '98716018591', 13, 113, '01:17:13'),
(1, '29267307568', 16, 114, '01:23:31'),
(1, '81199333549', 13, 115, '01:24:01'),
(1, '92040047549', 14, 116, '01:37:53'),
(1, '22721266500', 10, 117, '02:17:20'),
(1, '46047832504', 6, 118, '01:13:37'),
(1, '04696722503', 8, 119, NULL),
(1, '32813988553', 9, 120, NULL),
(1, '77774973591', 13, 16, '01:15:59'),
(1, '21169306500', 13, 122, '01:48:51'),
(1, '21644920582', 16, 123, '01:49:59'),
(1, '33073020578', 5, 124, '01:19:48'),
(1, '55731856591', 7, 125, NULL),
(1, '92755356553', 14, 126, '01:31:02'),
(1, '77774973591', 15, 16, '01:15:59'),
(1, '49234137515', 14, 127, '02:29:18'),
(1, '79485286520', 18, 128, '01:18:34'),
(1, '1142493423', 1, 129, '00:07:38'),
(1, '03661445522', 13, 130, '01:18:45'),
(1, '81199333549', 18, 115, '01:24:01'),
(1, '21169306500', 16, 122, '01:48:51'),
(1, '21169306500', 18, 122, '01:48:51'),
(1, '2029590231', 3, 111, '00:08:55'),
(1, '1142493423', 3, 129, '00:07:38'),
(1, '77666054572', 18, 131, '01:31:21'),
(1, '27178099534', 16, 132, '01:26:10'),
(1, '2361428', 5, 133, '01:05:37'),
(1, '04305200775', 5, 134, '01:04:49'),
(1, '88629899549', 13, 136, '01:20:04'),
(1, '02562612531', 8, 135, '01:42:40'),
(1, '74332511549', 6, 137, NULL),
(1, '29267307568', 13, 114, '01:23:31'),
(1, '29267307568', 15, 114, '01:23:31'),
(2, '29346762500', 18, 51, '01:56:45'),
(2, '2029590231', 1, 52, '00:03:34'),
(2, '29267307568', 13, 26, '01:44:39'),
(2, '29267307568', 16, 26, '01:44:39'),
(2, '37960131805', 13, 40, '01:43:41'),
(2, '92755356553', 14, 106, '01:51:41'),
(2, '00984563504', 11, 53, '00:42:17'),
(2, '01855258579', 5, 54, NULL),
(2, '79175244500', 5, 55, NULL),
(2, '08340098896', 17, 56, '01:43:46'),
(2, '36052205334', 1, 57, '00:04:05'),
(2, '86276634590', 3, 58, '00:05:43'),
(2, '05521146776', 14, 102, '01:45:23'),
(2, '98716018591', 13, 13, '01:41:44'),
(2, '44316497863', 3, 25, '00:04:50'),
(2, '44316497863', 13, 25, '01:39:53'),
(2, '36608374828', 11, 60, '00:41:04'),
(2, '09057493837', 18, 61, '01:47:20'),
(2, '42833518811', 1, 59, '00:03:29'),
(2, '00254527035', 11, 62, '00:41:51'),
(2, '80604129572', 19, 63, '01:43:29'),
(2, '93063679534', 21, 64, '01:52:26'),
(2, '26819899572', 16, 37, '01:53:11'),
(2, '26819899572', 13, 37, '01:53:11'),
(2, '39304584892', 12, 65, '00:41:17'),
(2, '59849592249', 17, 66, NULL),
(2, '09436840721', 13, 48, '01:51:34'),
(2, '29801724803', 14, 104, '01:45:24'),
(2, '08393986702', 5, 67, '00:42:37'),
(2, '94873135591', 11, 68, '00:43:55'),
(2, '54386268553', 19, 69, '01:55:11'),
(2, '02694813461', 5, 71, '00:46:09'),
(2, '32292444500', 2, 72, '00:03:24'),
(2, '48029565844', 3, 7, '00:04:38'),
(2, '24753458881', 13, 3, '01:34:28'),
(2, '13554033839', 17, 73, '01:47:00'),
(2, '26818238890', 14, 101, '01:45:21'),
(2, '21223114520', 10, 74, '01:01:46'),
(2, '30526254890', 4, 75, '00:41:31'),
(2, '30526254890', 12, 75, '00:41:31'),
(2, '22548406814', 4, 76, '00:48:52'),
(2, '22548406814', 8, 76, '00:48:52'),
(2, '30526248900', 4, 77, '00:46:32'),
(2, '30526248900', 8, 77, '00:46:32'),
(2, '14284264770', 13, 41, '01:42:40'),
(2, '01829735810', 16, 42, '02:07:22'),
(2, '01829735810', 13, 42, '02:07:22'),
(2, '79485286520', 17, 78, '01:46:00'),
(2, '14824094534', 19, 79, '01:56:15'),
(2, '80614035520', 19, 81, NULL),
(2, '42680735587', 13, 44, '01:45:54'),
(2, '42680735587', 15, 44, '01:45:54'),
(2, '25967984844', 15, 8, '01:37:25'),
(2, '25967984844', 13, 8, '01:37:25'),
(2, '01680117785', 18, 82, '01:46:51'),
(2, '00807995746', 15, 28, '01:49:27'),
(2, '00807995746', 13, 28, '01:49:27'),
(2, '88629899549', 13, 43, '01:48:57'),
(2, '572386427', 2, 83, '00:03:26'),
(2, '07306459759', 11, 84, '00:45:00'),
(2, '38607379534', 9, 85, '00:56:13'),
(2, '46465987520', 11, 86, '00:43:13'),
(2, '48801372515', 6, 87, '00:47:49'),
(2, '27733084504', 6, 88, '00:51:15'),
(2, '44937905805', 13, 6, '01:36:39'),
(2, '01134975805', 11, 89, '00:43:36'),
(2, '03903210870', 16, 21, '01:48:18'),
(2, '03903210870', 13, 21, '01:48:18'),
(2, '67640699053', 18, 90, '01:47:48'),
(2, '13039039709', 13, 45, '01:43:34'),
(2, '27178099534', 16, 46, '01:43:57'),
(2, '27178099534', 13, 46, '01:43:57'),
(2, '03661445522', 13, 20, '01:42:43'),
(2, '17585899572', 12, 91, '00:52:57'),
(2, '87145430525', 13, 11, '01:39:46'),
(2, '87145430525', 15, 11, '01:39:46'),
(2, '1142493423', 1, 92, '00:03:31'),
(2, '34467899871', 8, 93, '00:59:49'),
(2, '1521027366', 2, 94, '00:04:28'),
(2, '35981385553', 19, 95, '02:09:10'),
(2, '65007328553', 12, 97, '00:46:26'),
(2, '63697416553', 14, 108, '02:13:25'),
(2, '93851235568', 13, 47, '01:47:10'),
(2, '1255375906', 3, 98, '00:05:12'),
(2, '7799055553', 7, 99, NULL),
(2, '85774677168', 14, 109, '02:02:12'),
(2, '19691122553', 11, 114, NULL),
(2, '49688324515', 12, 110, NULL),
(2, '2587666112', 13, 33, '01:42:04'),
(2, '1985844150', 13, 39, '01:44:15'),
(2, '81203802153', 8, 111, '00:53:16'),
(2, '90460480472', 11, 112, '00:51:45'),
(2, '2587253705', 11, 113, '00:40:10'),
(2, '15559316776', 14, 103, '01:53:54'),
(2, '10965282740', 11, 116, '00:39:03'),
(2, '13089535777', 13, 14, '01:39:58'),
(2, '10676130720', 12, 115, '00:44:17'),
(2, '63704315591', 13, 80, NULL),
(2, '63704315591', 15, 80, NULL),
(2, '36490153823', 13, 2, '01:35:19'),
(2, '89928997500', 17, 117, '02:02:43'),
(2, '06927160760', 5, 118, '00:48:42'),
(2, '07856754770', 5, 119, '00:43:21'),
(2, '77774973591', 13, 16, '01:38:19'),
(2, '77774973591', 15, 16, '01:38:19'),
(2, '02553398441', 11, 70, '00:39:56'),
(2, '48029565844', 13, 7, '01:36:31'),
(2, '01897617500', 5, 96, '00:46:50'),
(2, '79917429549', 12, 120, '00:48:49'),
(2, '78840279504', 18, 123, '01:54:00'),
(2, '21644920582', 16, 122, '02:06:43'),
(2, '1489383700', 14, 121, '02:12:22'),
(2, '1489383700', 22, 121, '02:12:22'),
(2, '08703337553', 12, 124, '00:49:44'),
(2, '63697416553', 22, 108, '02:13:25'),
(2, '01989923780', 13, 49, '01:42:49'),
(2, '01989923780', 15, 49, '01:42:49'),
(2, '00252215583', 5, 125, '00:44:55'),
(2, '04857013592', 8, 126, '00:47:07'),
(2, '17832409894', 13, 10, '01:37:43'),
(2, '17832409894', 15, 10, '01:37:43'),
(2, '09789516894', 1, 146, '00:02:28'),
(2, '09789516894', 11, 146, '00:43:40'),
(2, '90344685187', 11, 145, '00:43:48'),
(2, '06560507564', 1, 144, '00:03:38'),
(2, '36656802800', 14, 143, '01:51:53'),
(2, '81214995500', 12, 142, NULL),
(2, '98991604072', 13, 29, NULL),
(2, '88744400578', 14, 100, '01:42:33'),
(2, '33073020578', 11, 141, '00:45:09'),
(2, '02048395562', 12, 140, NULL),
(2, '28020542876', 13, 34, '01:43:12'),
(2, '28020542876', 15, 34, '01:43:12'),
(2, '77666054572', 18, 139, '01:49:24'),
(2, '63353865500', 11, 138, '00:44:41'),
(2, '08844928779', 11, 137, '00:40:33'),
(2, '14890518568', 13, 35, '02:05:10'),
(2, '14890518568', 16, 35, '02:05:10'),
(2, '07961852719', 5, 136, '00:50:02'),
(2, '02641246775', 17, 135, '01:42:16'),
(2, '55927440487', 7, 127, '00:54:31'),
(2, '76366375534', 5, 132, '00:42:44'),
(2, '16744011758', 13, 1, '01:37:21'),
(2, '04516408457', 13, 9, '01:38:08'),
(2, '999999', 13, 36, NULL),
(2, '05690769436', 13, 38, '01:41:37'),
(2, '00717306135', 13, 50, '01:40:46'),
(2, '01515778118', 14, 129, '02:08:59'),
(2, '81199333549', 18, 130, '01:47:30'),
(2, '01300764570', 5, 131, '00:44:34'),
(2, '96150319504', 19, 152, NULL),
(2, '2361428', 5, 150, '00:47:32'),
(2, '21394520387', 10, 151, '01:05:58'),
(2, '22721266500', 10, 149, '00:58:08'),
(2, '92040047549', 14, 105, '01:54:10'),
(2, '92040047549', 22, 105, '01:54:10'),
(2, '46047832504', 6, 148, '00:52:30'),
(2, '50583930182', 11, 147, '00:42:31'),
(2, '1255375906', 11, 98, '00:42:50'),
(2, '170967077', 7, 154, '00:51:39'),
(2, '14906985823', 9, 155, '01:02:37'),
(2, '999999', 3, 36, '00:05:05'),
(2, '66914477000', 11, 156, '00:40:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `participante`
--

CREATE TABLE IF NOT EXISTS `participante` (
  `id_participante` varchar(15) NOT NULL,
  `nome_participante` text NOT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_participante`),
  UNIQUE KEY `id_participante` (`id_participante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `participante`
--

INSERT INTO `participante` (`id_participante`, `nome_participante`, `estado`, `email`) VALUES
('00252215583', 'ISRAEL SCHUSTER FILHO', 'SE', 'isinhosurf@hotmail.com'),
('00254527035', 'ROBERTO VICENTIN', 'SC', 'robertov.machado@hotmail.com'),
('00477694918', 'ADRIANO JOSE NOZEKOVSKI', 'SC', '3kferro_@sandroneves.com.br'),
('00717306135', 'RAFAEL VETERE PERES MAIA', 'DF', 'rafaelvetere.maia@gmail.com'),
('00807995746', 'ALOYSIO ALVES VASCONCELOS', 'ES', 'aloysiov@hotmail.com'),
('00984563504', 'ANDRE LEITE PINTO DE CARVALHO', 'SE', 'andrecarvalho86@gmail.com'),
('01062621905', 'MAICON ROBERTO DA ROSA', 'SC', 'maoconroberosa@hotmail.com'),
('01134975805', 'ARLINDO ANTONIO FLORENTINO', 'SP', 'arlindoa.florentino@globo.com'),
('01300764570', 'HELIO ROSA MONTALVAO NETO', 'SE', 'heliomontalvaopersonal@gmail.com'),
('01515778118', 'MARINA SILVA PINTO', 'DF', 'marina_spinto@hotmail.com'),
('01680117785', 'GABRIEL PARMERA', 'SC', 'gabrielptavares@hotmail.com'),
('01829735810', 'CLAUDIO CARNEIRO', 'RJ', 'picoalto50@gmail.com'),
('01855258579', 'THIAGO COUTO DE MATOS', 'BA', 'tmatos@mariposa.com.br'),
('01897617500', 'JOAO CARLOS GONZALLES', 'BA', 'paulamaciel.oliveira@gmail.com'),
('01989923780', 'LUCIANO GUALTIERI', 'ES', 'ltjprojetos@hotmail.com'),
('02048395562', 'CAROLINA CAVALCANTE MENDES', 'BA', 'cavalcante.caroll@gmail.com'),
('02470308720', 'CLAUDIO BOYNARD PINTO', 'ES', 'c.boynard@yahoo.com.br'),
('02536881830', 'GILBERTO ESTEVES MARTINS JR', 'SP', 'gibasurftrips@gmail.com'),
('02553398441', 'LUIZ BARROS', 'PB', 'luiznabazo.personal@gmail.com'),
('02562612531', 'Tatiana Alves Furtado', 'BA', 'thaty_jazz13@hotmail.com'),
('02641246775', 'AMERICO PINHEIRO JUNIOR', 'RJ', 'americoradicais@hotmail.com'),
('02694813461', 'JUNIOR MANTEIGA', 'PB', 'jrmanteiga@gmail.com'),
('03229634519', 'CRISTIANO JOSE MACEDO COSTA FILHO', 'SE', 'macedo.cristiano@hotmail.com'),
('03661445522', 'Luiz Marques Santana', 'SE', 'luizotasantana@hotmail.com'),
('03903210870', 'WASHINGTON HUGO DE MATOS', 'SP', 'nenomatosp@hotmail.com'),
('04305200775', 'Leonardo Maciel Machado ', 'BA', 'leo_mac@terra.com.br'),
('04415651909', 'ANDRE MAGU', 'SC', 'andregraziane@hotmail.com'),
('04516408457', 'GABRIEL VLARINO', 'PE', 'gabriel.tatto@hotmail.com'),
('04696722503', 'Samanta de Santana Praia', 'BA', 'sapraia@hotmail.com'),
('047508015', 'CARLOS ALBERTO VAZ', 'RJ', 'carlospvaz@terra.com.br'),
('04806065528', 'CHEYENNE DANTAS FERNANDES', 'SE', 'cheyenne.dantas@gmail.com'),
('04857013592', 'KATIELLE MESSENGER', 'SE', 'katiellemessenger@hotmail.com'),
('05195507732', 'MARCOS VIDIGAL', 'ES', 'vidigalmarcos@hotmail.com'),
('05521146776', 'LENA GUIMARAES RIBEIRO', 'RJ', 'lenagribeiro@hotmail.com'),
('05690769436', 'PEDRO VILARINHO', 'PE', 'pedrosports@msn.com'),
('06560507564', 'CARLOS LULA DE F. NETO', 'SE', 'netocarolina@zipmail.com.br'),
('06927160760', 'MOIZES MATIAS DE ANDRADE JUNIOR', 'RJ', 'moizesmatias@hotmail.com'),
('07289527771', 'MARCIO MAGALHAES', 'RJ', 'marciomaga@hotmail.com'),
('07306459759', 'ROBERTO MASCARENHAS MARTINS FILHO', 'SC', 'mascarenhas.filho@gmail.com'),
('07856754770', 'ANDRE ALEXANDRE ROSA', 'RJ', 'andrealexandrerosa@gmail.com'),
('07961852719', 'RODRIGO GARCIA DUARTE', 'RJ', 'rodrigogduarte@gmail.com'),
('08340098896', 'LUIZ CLAUDIO HUKA', 'SP', 'huca@hucateam.com'),
('08393986702', 'RODRIGO ACHE ', 'SP', 'rodrigo.ache@itaubba.com'),
('08703337553', 'MARIA CRISTINA C. VIANA', 'BA', 'tininhaviana@gmail.com'),
('08844928779', 'BERNARDO OTERO', 'RJ', 'bezinho.otero@gmail.com'),
('09057493837', 'ARIOVALDO DE OLIVEIRA', 'SP', 'jullyanarassan@hotmail.com'),
('09436840721', 'CLEDIO RANGEM GALDINO ', 'RJ', 'cledio.rangel@gmail.com'),
('09444615499', 'BRUNO MEDEIROS', 'PE', 'babubrunomedeiros@gmail.com'),
('09789516894', 'GUILHERME CUNHA', 'SP', 'cunha_trans@yahoo.com.br'),
('10676130720', 'RENATA DO VALLE NOGUEIRA LINHARES', 'RJ', 'renatinhadovalle@gmail.com'),
('10965282740', 'LUCAS DO CARMO BELCHIOR', 'RJ', 'pousadadacepilho@gmail.com'),
('11182681727', 'IAN VAZ', 'RJ', 'ianvaz@terra.com.br'),
('11182697720', 'CAIO VAZ', 'RJ', 'caiovaz@terra.com.br'),
('1142493423', 'Caue Braga Santos Interaminense', 'BA', 'maxinteraminense@hotmail.com'),
('1255375906', 'KAINOA TEIXEIRA', 'SC', 'escoladesurf@hotmail.com'),
('13039039709', 'CIRANO GOMES RIBEIRO', 'DF', 'ciranoribeiro@gmail.com'),
('13089535777', 'ITAMAR SILVEIRA DO CARMO', 'RJ', 'itamar.docarmo@gmail.com'),
('13554033839', 'CLAUDIO CHAIM', 'SP', 'chaim@mk10.com.br'),
('14284264770', 'DAVI MARQUES SOBREIRA NUNES', 'ES', 'davizeranunes@gmail.com'),
('14824094534', 'Mauricio Abubakir', 'BA', 'qcabubakir@ig.com.br'),
('14890518568', 'JORGE CALASANS DE CARVALHO', 'SE', 'rodrigogduarte@gmail.com'),
('1489383700', 'JACQUELINE ROSE W. SABACK', 'BA', ''),
('14906985823', 'MARIA LUIZA MONTELEONE', 'SP', 'lizalisa@hotmail.com'),
('14998437712', 'LUCAS MEDEIROS', 'ES', 'lucasmedeiros57@hotmail.com'),
('1521027366', 'MARIA LUIZA S RABELO', 'BA', 'mcrabelo@gmail.com.br'),
('15559316776', 'ARIANI GUIMARAES THEOPHILO', 'RJ', 'arianitheophilo@hotmail.com'),
('16744011758', 'VINICIUS MARTINS', 'RJ', 'vinimartins@hotmail.com'),
('170967077', 'FERNANDO KELSCH', 'BA', 'fkelsch@hotmail.com'),
('17585899572', 'EDNA MARIA DELMONDES CARVALHO', 'BA', 'edelmondes@gmail.com'),
('17832409894', 'ALEXANDER ARAUJO FERREIRA', 'SP', 'ALEX.SUPRACE@GMAIL.COM'),
('19691122553', 'JOSE AUGUSTO SAMPAIO FILHO', 'BA', 'ze1061@ig.com.br'),
('1985844150', 'RAFAEL ALVES DA SILVA RIBEIRO', 'RJ', 'rafael090@gmail.com'),
('2029590231', 'Guilherme Berenguer de Carvalho', 'BA', 'acasurf@ig.com.br'),
('21169306500', 'Tuka Carvalho', 'BA', 'tucapcarvalho@ig.com.br'),
('21223114520', 'MARINEY COSTA DE BRITTO', 'BA', 'marineycosta@hotmail.com'),
('21394520387', 'ALBA COUTO FALCAO', 'BA', 'alba.scheible@cgi.com'),
('21644920582', 'Antonio Saback', 'BA', 'antoniosaback@hotmail.com'),
('22548406814', 'ISADORA MORAES N. DA SILVA', 'SP', 'xabita.cabras@bol.com.br'),
('22721266500', 'Eline Mendonca Muniz', 'BA', 'eline.mendonca@hotmail.com'),
('23042253813', 'ALEX SALAZAR', 'SP', 'lecosalazar@hotmail.com'),
('2361428', 'Helton Santos da Silva', 'BA', ''),
('24753458881', 'PAULO DOS REIS', 'SP', 'bra3333@gmail.com'),
('2587253705', 'GABRIEL COELHO DA SILVA PEREIRA', 'SE', 'gabrielcoelhosurf@bol.com.br'),
('2587666112', 'LUCAS GOUVEIA MENEGAZZO', 'RJ', 'engenheirolgm@gmail.com'),
('25967984844', 'MARCELO LINS', 'SP', 'marceloolins@yahoo.com.br'),
('26818238890', 'MONICA J PASCO', 'SP', 'monica.pasco@bol.com.br'),
('26819899572', 'Jorge Mario Lino Villas Boas', 'BA', 'jorgemariolinovb@hotmail.com'),
('27178099534', 'Vicente Lima de Sa Barreto', 'BA', 'vicente@lognet.com.br'),
('27733084504', 'Sergio Luiz Calvacante de Oliveira', 'BA', 'sergiolcoliveira@hotmail.com'),
('27943090802', 'LEANDRO RODRIGUES AGUEDA', 'SP', 'priscilla.padula@hoymail.com'),
('28020542876', 'ANDRE PAIVA M. S. OLIVEIRA', 'SP', 'andrepaivasurf@hotmail.com'),
('29135716894', 'CARLOS MARTINS', 'SP', 'carlosmgs@terra.com.br'),
('29267307568', 'Pedro Americo Valadares', 'BA', 'speedlanches@yahoo.com.br'),
('29346762500', 'Jose Augusto Pinto de Carvalho', 'BA', 'acasurf@ig.com.br'),
('29512204568', 'JOSE OLAVO DE ALMEIDA MOURA SENNA', 'BA', 'osenna1@hotmail.com'),
('29801724803', 'GISELLE GUSMAO MOTA', 'SP', 'gissellemota@terra.com.br'),
('30526248900', 'IASMIM MORAES NOGUEIRA DA SILVA', 'SP', 'xabita.cabras@bol.com.br'),
('30526254890', 'ISTTEFANY MARLY MORAES N. DA SILVA', 'SP', 'xabita.cabras@bol.com.br'),
('32292444500', 'ISABELLY MORAES', 'SP', 'xabita.cabras@bol.com.br'),
('32813988553', 'Antonielle Valadares Freitas', 'BA', 'nella_@hotmail.com'),
('33073020578', 'Breno Leonardo Mendonca', 'SE', 'leonarzo@bol.com.br'),
('33568066882', 'CARLOS JOSE OLIVEIRA DE JESUS', 'SP', 'carlosbahiasurf@hotmail.com'),
('34467899871', 'PAULA MACEL LOPES DE OLIVEIRA', 'BA', 'paulamaciel.oliveira@gmail.com'),
('35981385553', 'JOSE ICO FILHO', 'BA', 'joseicofilho@yahoo.com.br'),
('36052205334', 'TIAGO LEITE FROES DA MOTTA', 'BA', 'plfm2010@hotmail.com.br'),
('36490153823', 'MARIO CAVADO', 'SP', 'marinho_cavaco@hotmail.com'),
('36608374828', 'ALEX DURAND', 'SP', 'alex@moldabem.com.br'),
('36656802800', 'MARLY PIRES', 'RJ', 'marly.pires.aranibar@gmail.com'),
('37960131805', 'TIAGO HULLE CATANI BARRA', 'SP', 'tiagohcbarra@hotmail.com'),
('38607379534', 'SANDRA ROBATTO', 'BA', 'pedrorobatto@gmail.com'),
('39304584892', 'ALINE ADISAKA', 'SP', 'alineadisaka@hotmail.com'),
('42343209863', 'WELLINGTON REIS', 'SP', 'wellington_reis@hotmail.com'),
('42680735587', 'LINO BARBOSA', 'BA', 'cbarbosalino@hotmail.com'),
('42833518811', 'MIGUEL RASSAN OLIVEIRA', 'SP', 'jullyanarassan@hotmail.com'),
('43844124870', 'MATHEUS SALAZAR', 'SP', 'matheus_salazar@hotmail.com'),
('44316497863', 'ARIEL ALVES DE SOUZA', 'SP', 'ariel.alves28@hotmail.com'),
('44937905805', 'ARTHUR CARVALHO MAS SANTACREU', 'SP', 'art-santacreu@hotmail.com'),
('46047832504', 'Eladio Jose Praia Jr', 'BA', 'eladiopraia@hotmail.com'),
('46465987520', 'PEDRO ROBATTO', 'BA', 'pedrorobatto@gmail.com'),
('48029565844', 'GUILHERME BATISTA DE SOUZA', 'SP', 'bra3333@gmail.com'),
('48801372515', 'Alexandre Issami', 'BA', 'moniaehp@hotmail.com'),
('49234137515', 'Patricia Valadares', 'BA', 'paty_valadares@hotmail.com'),
('49688324515', 'MARIA DE FATIMA FREITAS SAMPAIO', 'BA', 'fatimasampaio@hotmail.com'),
('50583930182', 'OTAVIO LUIZ MARTINS DE ASSIS', 'SE', 'olma2008@gmail.com'),
('54386268553', 'Genauto Carvalho de Franca Filho', 'BA', 'genauto@ufba.ba'),
('55731856591', 'Carlos Henrique Garcia Cruz', 'SE', 'alcicruz@ibest.com.br'),
('55927440487', 'JORGE LUIZ DE BRITTO', 'BA', 'jlbritobr@yahoo.com.br'),
('572386427', 'JANNIKY MARIA BARBAS DE MELLO', 'BA', 'janjorge@axewind.com.br'),
('57720886534', 'JAIRO FLORES ', 'BA', 'jairoflores@terra.com.br'),
('59849592249', 'PABLO CASADO', 'AM', 'pablito_casado@yahoo.com.br'),
('63353865500', 'PETRONIO AVELAR DE ALMEIDA', 'BA', 'petronio_avelar@hotmail.com'),
('63697416553', 'MANUELA GONZALES ARAUJO', 'BA', 'gonzales_manuela@hotmail.com'),
('63704315591', 'ANTONIO FERNANDO SOARES ROCHA', 'BA', 'antonio.fernandosr@gmail.com'),
('65007328553', 'MAIRA MENEZES DE AZEVEDO', 'BA', 'mairaazevedo@hotmail.com'),
('66914477000', 'JEFERSON CARDOSO COMARU', 'AL', 'jeferson.comaru@gmail.com'),
('67640699053', 'EDUARDO BRAZ CARRARD', 'RS', 'oab39344@gmail.com'),
('74332511549', 'Wilian Cerqueira Araujo', 'BA', 'wilianaraujo@hotmail.com'),
('76366375534', 'FILIPPO PAULINI', 'SE', ''),
('77666054572', 'Ricardo Alexandre de Jesus Santana', 'BA', 'ricardo@depeitoaberto.com.br'),
('77774973591', 'Bruno Pitanga', 'BA', 'brunopitanga@hotmail.com'),
('7799055553', 'LUIZ JOSE PIMENTA', 'BA', 'pimenta@grupomc-ba.com.br'),
('78840279504', 'SERGIO DINIZ GONÃ‡ALVES', 'BA', ''),
('79175244500', 'ALEX DALTRO MOREIRA', 'BA', 'adaltro@mariposa.com.br'),
('79485286520', 'Andre Luis Barros', 'BA', 'paradabahia@gmail.com'),
('79917429549', 'NICOLE WICKS SABACK', 'BA', 'nicolesaback@hotmail.com'),
('80604129572', 'Claudio Duarte Britto', 'BA', 'duarte.britto@gmail.com'),
('80614035520', 'SAMUEL RIBEIRO JUNCAL', 'BA', 'samueljuncal@gmail.com'),
('81199333549', 'Joao Paulo Figueredo Ferreira', 'SE', 'joaopffn@yahoo.com.br'),
('81203802153', 'PATRICIA MARTINS ', 'DF', 'am.patricia@gmail.com'),
('81214995500', 'LUISIANA LIMA DE MEDEIROS', 'BA', 'luisiana@andremedeiros.com.br'),
('85774677168', 'GABRIELA DA COSTA SILVA', 'DF', '85774677168'),
('86276634590', 'PEDRO LEITE FROES DA MOTTA', 'BA', 'plfm2010@hotmail.com.br'),
('87145430525', 'GUSTAVO COSTA', 'BA', 'gustavo@refran.com.br'),
('88629899549', 'Janjorge Luis Santos de Melo', 'BA', 'janjorge@axewind.com.br'),
('88744400578', 'BARBARA BRASIL NUNES', 'BA', 'babiturica@gmail.com'),
('89928997500', 'PEDRO LUIZ DE CASTRO PEREIRA', 'BA', 'pedroluiz.pereira@gmail.com'),
('90344685187', 'MURILO VERAS UESSUGUE', 'DF', 'murilouessugue@gmail.com'),
('90460480472', 'ANDRE ANTONIO ARAUJO DE MEDEIROS', 'BA', 'andre@andremedeiros.com.br'),
('92040047549', 'Andrea Mendonca', 'BA', 'andrea.virologia@gmail.com'),
('92262740020', 'DANIEL KOLLING', 'RS', 'kolling2012@gmail.com'),
('92755356553', 'Marivane Figueredo dos Santos', 'BA', 'liberty@libertyturismo.com'),
('93063679534', 'Sinara Pazos Britto', 'BA', 'sinarapazos@hotmail.com'),
('93851235568', 'LUCIANO DOREA ', 'BA', 'lucianodcarvalho@hotmail.com'),
('94873135591', 'TIAGO BATISTA DE SAOUZA', 'DF', 'tiagosouzza_@hotmail.com'),
('96150319504', 'MAURICIO LOBATO CARDIM', 'BA', ''),
('97464031504', 'CAROLA VIANNA HOISEL', 'BA', 'carolahoisel@hotmail.com'),
('98716018591', 'Mateus Tavares', 'BA', 'tavaresmateus@yahoo.com.br'),
('98991604072', 'ANDRE TORELLY MARTINS', 'RS', 'andretorelly@hotmail.com'),
('999999', 'JOSE VICTOR MARTINS', 'RJ', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ranking`
--

CREATE TABLE IF NOT EXISTS `ranking` (
  `id_participante` varchar(15) CHARACTER SET utf8 NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `pontos` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ranking`
--

INSERT INTO `ranking` (`id_participante`, `id_categoria`, `pontos`) VALUES
('26819899572', 16, 1400),
('48801372515', 6, 2000),
('27733084504', 6, 1590),
('14824094534', 19, 1460),
('80604129572', 19, 2000),
('54386268553', 19, 1720),
('93063679534', 21, 2000),
('29346762500', 18, 1285),
('2029590231', 1, 1530),
('98716018591', 13, 1285),
('29267307568', 16, 1860),
('81199333549', 13, 583),
('92040047549', 14, 1388),
('22721266500', 10, 2000),
('46047832504', 6, 1590),
('04696722503', 8, 0),
('32813988553', 9, 0),
('77774973591', 13, 1500),
('21169306500', 13, 555),
('21644920582', 16, 1193),
('33073020578', 5, 730),
('55731856591', 7, 0),
('92755356553', 14, 1610),
('77774973591', 15, 1730),
('49234137515', 14, 730),
('79485286520', 18, 1000),
('1142493423', 1, 1730),
('03661445522', 13, 1125),
('81199333549', 18, 1590),
('21169306500', 16, 670),
('21169306500', 18, 610),
('2029590231', 3, 860),
('1142493423', 3, 1000),
('77666054572', 18, 1280),
('27178099534', 16, 1860),
('2361428', 5, 1388),
('04305200775', 5, 1000),
('88629899549', 13, 1010),
('02562612531', 8, 1000),
('74332511549', 6, 0),
('29267307568', 13, 970),
('29267307568', 15, 860),
('01680117785', 18, 1000),
('00807995746', 15, 528),
('00807995746', 13, 335),
('572386427', 2, 860),
('07306459759', 11, 400),
('38607379534', 9, 1000),
('46465987520', 11, 475),
('44937905805', 13, 670),
('01134975805', 11, 462),
('03903210870', 16, 730),
('03903210870', 13, 345),
('67640699053', 18, 670),
('13039039709', 13, 380),
('17585899572', 12, 555),
('87145430525', 13, 488),
('87145430525', 15, 670),
('34467899871', 8, 610),
('1521027366', 2, 730),
('35981385553', 19, 670),
('01897617500', 15, 0),
('65007328553', 12, 670),
('63697416553', 14, 462),
('93851235568', 13, 350),
('1255375906', 3, 670),
('7799055553', 7, 0),
('85774677168', 14, 500),
('19691122553', 11, 0),
('49688324515', 12, 0),
('2587666112', 13, 413),
('1985844150', 13, 365),
('81203802153', 8, 670),
('90460480472', 11, 390),
('2587253705', 11, 730),
('15559316776', 14, 555),
('10965282740', 11, 1000),
('13089535777', 13, 462),
('89928997500', 17, 610),
('06927160760', 5, 500),
('07856754770', 5, 730),
('02553398441', 11, 860),
('48029565844', 13, 730),
('01897617500', 5, 555),
('79917429549', 12, 610),
('78840279504', 18, 583),
('1489383700', 14, 475),
('1489383700', 22, 860),
('08703337553', 14, 0),
('08703337553', 22, 0),
('63697416553', 22, 730),
('01989923780', 13, 390),
('01989923780', 15, 610),
('00252215583', 5, 610),
('04857013592', 8, 860),
('17832409894', 13, 555),
('17832409894', 15, 860),
('09789516894', 11, 450),
('90344685187', 11, 438),
('36656802800', 14, 583),
('81214995500', 12, 0),
('98991604072', 13, 0),
('88744400578', 14, 1000),
('88744400578', 22, 0),
('33073020578', 11, 395),
('02048395562', 12, 0),
('28020542876', 13, 385),
('28020542876', 15, 583),
('08844928779', 11, 670),
('14890518568', 13, 320),
('14890518568', 15, 0),
('07961852719', 5, 488),
('02641246775', 17, 1000),
('55927440487', 7, 860),
('76366375534', 5, 860),
('16744011758', 13, 610),
('04516408457', 13, 528),
('999999', 13, 0),
('05690769436', 13, 438),
('00717306135', 13, 450),
('01515778118', 14, 488),
('01300764570', 5, 670),
('96150319504', 19, 0),
('21394520387', 10, 730),
('50583930182', 11, 500),
('1255375906', 11, 488),
('170967077', 7, 1000),
('14906985823', 9, 860),
('999999', 3, 730),
('66914477000', 11, 610),
('42833518811', 1, 860),
('9789516894', 1, 1000),
('6560507564', 1, 610),
('32292444500', 2, 1000),
('86276634590', 3, 610),
('48029565844', 3, 1000),
('44316497863', 3, 860),
('30526254890', 4, 1000),
('30526248900', 4, 860),
('22548406814', 4, 730),
('8393986702', 5, 1000),
('2694813461', 5, 583),
('1855258579', 5, 0),
('22548406814', 8, 730),
('30526248900', 8, 1000),
('21223114520', 10, 860),
('36608374828', 11, 583),
('63353865500', 11, 413),
('94873135591', 11, 425),
('39304584892', 12, 1000),
('36052205334', 1, 583),
('10676130720', 12, 730),
('00984563504', 11, 528),
('00254527035', 11, 555),
('08703337553', 12, 583);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ranking_brasileiro`
--

CREATE TABLE IF NOT EXISTS `ranking_brasileiro` (
  `id_participante` varchar(15) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `pontos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ranking_brasileiro`
--

INSERT INTO `ranking_brasileiro` (`id_participante`, `id_categoria`, `pontos`) VALUES
('9845', 18, 925),
('9845', 15, 925),
('', 0, 0),
('', 4, 0),
('', 18, 0),
('', 10, 0),
('', 6, 0),
('', 13, 0),
('', 14, 0),
('', 13, 0),
('', 15, 0),
('', 13, 0),
('', 17, 0),
('', 5, 0),
('', 5, 0),
('', 13, 0),
('', 15, 0),
('', 11, 0),
('', 13, 0),
('', 5, 0),
('', 12, 0),
('', 18, 0),
('', 16, 0),
('', 14, 0),
('', 22, 0),
('', 14, 0),
('', 22, 0),
('', 22, 0),
('', 13, 0),
('', 15, 0),
('', 5, 0),
('', 8, 0),
('', 13, 0),
('', 15, 0),
('', 1, 0),
('', 11, 0),
('', 11, 0),
('', 1, 0),
('', 14, 0),
('', 12, 0),
('', 13, 0),
('', 14, 0),
('', 22, 0),
('', 11, 0),
('', 12, 0),
('', 13, 0),
('', 15, 0),
('', 18, 0),
('', 12, 0),
('', 11, 0),
('', 13, 0),
('', 15, 0),
('', 5, 0),
('', 17, 0),
('', 7, 0),
('', 5, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 14, 0),
('', 18, 0),
('', 5, 0),
('', 19, 0),
('', 5, 0),
('', 10, 0),
('', 10, 0),
('', 14, 0),
('', 22, 0),
('', 6, 0),
('', 11, 0),
('', 11, 0),
('', 7, 0),
('', 9, 0),
('', 3, 0),
('', 11, 0),
('9845', 18, 925),
('9845', 15, 925),
('', 0, 0),
('', 4, 0),
('', 18, 0),
('', 10, 0),
('', 6, 0),
('', 13, 0),
('', 14, 0),
('', 13, 0),
('', 15, 0),
('', 13, 0),
('', 17, 0),
('', 5, 0),
('', 5, 0),
('', 13, 0),
('', 15, 0),
('', 11, 0),
('', 13, 0),
('', 5, 0),
('', 12, 0),
('', 18, 0),
('', 16, 0),
('', 14, 0),
('', 22, 0),
('', 14, 0),
('', 22, 0),
('', 22, 0),
('', 13, 0),
('', 15, 0),
('', 5, 0),
('', 8, 0),
('', 13, 0),
('', 15, 0),
('', 1, 0),
('', 11, 0),
('', 11, 0),
('', 1, 0),
('', 14, 0),
('', 12, 0),
('', 13, 0),
('', 14, 0),
('', 22, 0),
('', 11, 0),
('', 12, 0),
('', 13, 0),
('', 15, 0),
('', 18, 0),
('', 12, 0),
('', 11, 0),
('', 13, 0),
('', 15, 0),
('', 5, 0),
('', 17, 0),
('', 7, 0),
('', 5, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 14, 0),
('', 18, 0),
('', 5, 0),
('', 19, 0),
('', 5, 0),
('', 10, 0),
('', 10, 0),
('', 14, 0),
('', 22, 0),
('', 6, 0),
('', 11, 0),
('', 11, 0),
('', 7, 0),
('', 9, 0),
('', 3, 0),
('', 11, 0),
('9845', 18, 925),
('9845', 15, 925),
('', 0, 0),
('', 4, 0),
('', 18, 0),
('', 10, 0),
('', 6, 0),
('', 13, 0),
('', 14, 0),
('', 13, 0),
('', 15, 0),
('', 13, 0),
('', 17, 0),
('', 5, 0),
('', 5, 0),
('', 13, 0),
('', 15, 0),
('', 11, 0),
('', 13, 0),
('', 5, 0),
('', 12, 0),
('', 18, 0),
('', 16, 0),
('', 14, 0),
('', 22, 0),
('', 14, 0),
('', 22, 0),
('', 22, 0),
('', 13, 0),
('', 15, 0),
('', 5, 0),
('', 8, 0),
('', 13, 0),
('', 15, 0),
('', 1, 0),
('', 11, 0),
('', 11, 0),
('', 1, 0),
('', 14, 0),
('', 12, 0),
('', 13, 0),
('', 14, 0),
('', 22, 0),
('', 11, 0),
('', 12, 0),
('', 13, 0),
('', 15, 0),
('', 18, 0),
('', 12, 0),
('', 11, 0),
('', 13, 0),
('', 15, 0),
('', 5, 0),
('', 17, 0),
('', 7, 0),
('', 5, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 13, 0),
('', 14, 0),
('', 18, 0),
('', 5, 0),
('', 19, 0),
('', 5, 0),
('', 10, 0),
('', 10, 0),
('', 14, 0),
('', 22, 0),
('', 6, 0),
('', 11, 0),
('', 11, 0),
('', 7, 0),
('', 9, 0),
('', 3, 0),
('', 11, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
