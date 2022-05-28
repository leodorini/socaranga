-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Maio-2022 às 19:23
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdconce`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_carro`
--

CREATE TABLE `tb_carro` (
  `id_carro` int(20) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `ano` int(4) NOT NULL,
  `cambio` char(1) NOT NULL,
  `combustivel` char(1) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `id_marca` int(3) NOT NULL,
  `id_cor` int(3) NOT NULL,
  `id_cat` int(3) NOT NULL,
  `id_conce` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_carro`
--

INSERT INTO `tb_carro` (`id_carro`, `nome`, `ano`, `cambio`, `combustivel`, `valor`, `id_marca`, `id_cor`, `id_cat`, `id_conce`) VALUES
(3, 'Prisma', 2021, '1', '1', '14045.00', 15, 20, 6, 1),
(4, 'S-10', 2018, '1', '3', '34723.00', 15, 23, 6, 1),
(5, 'Montana', 2015, '1', '2', '22335.00', 15, 3, 19, 2),
(6, 'Tracker', 2016, '1', '2', '9948.00', 15, 17, 6, 3),
(7, 'Onix', 2018, '1', '2', '28729.00', 15, 7, 6, 3),
(59, 'Gol', 2013, '2', '2', '13000.00', 2, 14, 6, 3),
(60, 'A8', 2020, '1', '2', '100000.00', 14, 3, 6, 2),
(61, 'UNO', 2010, '1', '2', '13000.00', 9, 3, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria`
--

CREATE TABLE `tb_categoria` (
  `id_cat` int(3) NOT NULL,
  `categoria` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_categoria`
--

INSERT INTO `tb_categoria` (`id_cat`, `categoria`) VALUES
(1, 'Ciclomotor'),
(2, 'Motoneta'),
(3, 'Motocicleta'),
(4, 'Triciclo'),
(5, 'Quadriciclo'),
(6, 'Automóvel'),
(7, 'Microônibus'),
(8, 'Ônibus'),
(9, 'Bonde'),
(10, 'Reboque'),
(11, 'Semi-Reboque'),
(12, 'Charrete'),
(13, 'Camioneta'),
(14, 'Utilitário'),
(15, 'Trator'),
(16, 'Especial'),
(17, 'Van'),
(18, 'Furgão'),
(19, 'Picape'),
(20, 'Misto'),
(76, 'Bicicleta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_concessionaria`
--

CREATE TABLE `tb_concessionaria` (
  `id_conce` int(5) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(25) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `id_end` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_concessionaria`
--

INSERT INTO `tb_concessionaria` (`id_conce`, `nome`, `cnpj`, `telefone`, `id_end`) VALUES
(1, 'Alpes', '02477444000148', '(24) 90597-0499', 50),
(2, 'Rio Jordao', '91723994000120', '(17) 94380-3169', 51),
(3, 'MercadoCar', '11857641000183', '(64) 95987-5584', 52),
(4, 'Rei das rodas', '40697519000195', '(37) 99555-6299', 53),
(5, 'Tesla motors', '96787508000150', '(85) 92238-3799', 54),
(6, 'Alemao', '58836168000111', '(69) 93542-2701', 55),
(7, 'Skol', '03529070000120', '(49) 93497-3562', 56),
(8, 'Itaipava', '08085071000146', '(27) 97521-3282', 57),
(9, 'Bhrama', '55333083000122', '(11) 96505-1317', 58),
(10, 'Cass', '87767588000191', '(60) 92723-0353', 59),
(11, 'Japones', '32937343000173', '(42) 90080-0915', 60),
(12, 'Naruto ', '92711846000158', '(44) 98524-5742', 61),
(13, 'Itapema', '43637873000112', '(63) 98690-0827', 62),
(14, 'Casmurro', '44598548000150', '(77) 99266-1376', 63),
(15, 'Capitu', '12352120000137', '(80) 97108-9130', 64),
(16, 'Dom Bosco', '29428960000139', '(38) 94539-9518', 65),
(17, 'Corvinal', '72183437000119', '(76) 90921-0727', 66),
(18, 'Sonserina', '14878849000177', '(42) 92431-0873', 67),
(19, 'Grifinoria', '76416234000186', '(25) 92011-1317', 68),
(20, 'LufaLufa', '46143055000151', '(10) 96793-2822', 69),
(21, 'Redentor', '18636837000197', '(66) 93323-8495', 70),
(22, 'Caxias', '62959299000163', '(74) 93251-4189', 71),
(23, 'Maua', '25503719000176', '(10) 91212-4982', 72),
(24, 'Borussia', '61125697000111', '(83) 96793-3897', 73),
(25, 'Dortmund', '37920548000160', '(28) 97836-8690', 74),
(26, 'Bayern', '36084371000146', '(40) 94117-2118', 75);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cor`
--

CREATE TABLE `tb_cor` (
  `id_cor` int(3) NOT NULL,
  `cor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_cor`
--

INSERT INTO `tb_cor` (`id_cor`, `cor`) VALUES
(1, 'Azul'),
(2, 'Bege'),
(3, 'Branco'),
(4, 'Cinza'),
(5, 'Dourado'),
(6, 'Grená'),
(7, 'Laranja'),
(8, 'Marrom'),
(9, 'Prata'),
(10, 'Preto'),
(11, 'Rosa'),
(12, 'Roxo'),
(13, 'Verde'),
(14, 'Vermelho'),
(15, 'Fantasia'),
(16, 'Rosa metálico'),
(17, 'Roxo metálico'),
(18, 'Verde metálico'),
(19, 'Vermelho metáli'),
(20, 'Azul metálico'),
(21, 'Amarelo metálic'),
(22, 'Verde escuro'),
(23, 'Verde Claro'),
(24, 'Azul escuro'),
(82, 'Amarelo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_endereco`
--

CREATE TABLE `tb_endereco` (
  `id_end` int(5) NOT NULL,
  `uf` char(2) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `bairro` varchar(55) NOT NULL,
  `pais` varchar(25) NOT NULL,
  `cep` varchar(11) NOT NULL,
  `numero` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_endereco`
--

INSERT INTO `tb_endereco` (`id_end`, `uf`, `rua`, `cidade`, `bairro`, `pais`, `cep`, `numero`) VALUES
(1, 'pr', 'Rua almirante', 'curitiba', 'pinheirinho', 'brasil', '83820-500', 234),
(2, 'pr', 'rua tenente', 'curitiba', 'cajuru', 'brasil', '83820-501', 235),
(3, 'pr', 'rua general', 'curitiba', 'batel', 'brasil', '83820-502', 236),
(4, 'sp', 'rua cabo', 'são paulo', 'morumbi', 'brasil', '83820-503', 237),
(5, 'rj', 'rua soldado', 'rio de janeiro', 'ipanema', 'brasil', '83820-504', 238),
(6, 'rj', 'rua militares ', 'rio de janeiro', 'copacabana', 'brasil', '83820-505', 239),
(7, 'rj', 'rua exercito', 'rio de janeiro', 'botafogo', 'brasil', '83820-506', 240),
(8, 'mg', 'rua armadas', 'belo horizonte', 'piraquara', 'brasil', '83820-507', 241),
(9, 'pr', 'rua tanque', 'curitiba', 'agua verde', 'brasil', '83820-508', 242),
(10, 'pr', 'rua guerra', 'curitiba', 'portão', 'brasil', '83820-509', 243),
(11, 'sp', 'rua paz ', 'são paulo', 'guarulhios', 'brasil', '83820-510', 244),
(12, 'df', 'rua hippies', 'asa sul', 'brasilandia', 'brasil', '83820-511', 245),
(13, 'sp', 'rua vietnam', 'são paulo', 'osasco', 'brasil', '83820-512', 246),
(14, 'ma', 'rua coreia', 'são luis', 'brejo', 'brasil', '83820-513', 247),
(15, 'pr', 'rua frança', 'fazenda rio grande', 'pioneiros', 'brasil', '83820-514', 248),
(16, 'pr', 'rua quinta do marques', 'fazenda rio grande', 'naçoes', 'brasil', '83820-515', 249),
(17, 'pr', 'rua veneza', 'fazenda rio grande', 'eucaliptos', 'brasil', '83820-516', 250),
(18, 'pr', 'rua colombia', 'curitiba', 'bigorrilho', 'brasil', '83820-517', 251),
(19, 'rj', 'rua texana', 'rio de janeiro', 'tiradentes', 'brasil', '83820-518', 252),
(20, 'mg', 'rua messias ', 'uberlandia', 'minas', 'brasil', '83820-519', 253),
(21, 'sc', 'rua cervantes', 'florianopolis', 'camburiu', 'brasil', '83820-520', 254),
(22, 'ba', 'rua stephen ', 'salvador', 'jorge', 'brasil', '83820-521', 255),
(23, 'sp', 'rua italia', 'são paulo', 'athenas', 'brasil', '83820-522', 256),
(24, 'sp', 'rua pelanda', 'são paulo', 'sparta', 'brasil', '83820-523', 257),
(25, 'sp', 'Rua brownie', 'são paulo', 'lufa-lufa', 'brasil', '83820-524', 258),
(26, 'pr', 'rua donald trump', 'curitiba', 'pinheirinho', 'brasil', '23462-345', 576),
(27, 'pr', 'rua barack obama', 'curitiba', 'cajuru', 'brasil', '23462-346', 577),
(28, 'pr', 'rua taliba', 'curitiba', 'batel', 'brasil', '23462-347', 578),
(29, 'sp', 'rua afega', 'são paulo', 'morumbi', 'brasil', '23462-348', 579),
(30, 'rj', 'rua manuel bandeira', 'rio de janeiro', 'ipanema', 'brasil', '23462-349', 580),
(31, 'rj', 'rua tamandua', 'rio de janeiro', 'copacabana', 'brasil', '23462-350', 581),
(32, 'rj', 'rua sereia', 'rio de janeiro', 'botafogo', 'brasil', '23462-351', 582),
(33, 'mg', 'rua lobisomem', 'belo horizonte', 'piraquara', 'brasil', '23462-352', 583),
(34, 'pr', 'rua saci perere', 'curitiba', 'agua verde', 'brasil', '23462-353', 584),
(35, 'pr', 'rua pereira marques', 'curitiba', 'portão', 'brasil', '23462-354', 585),
(36, 'sp', 'rua python', 'são paulo', 'guarulhios', 'brasil', '23462-355', 586),
(37, 'df', 'rua javascript', 'asa sul', 'brasilandia', 'brasil', '23462-356', 587),
(38, 'sp', 'rua flutter', 'são paulo', 'osasco', 'brasil', '23462-357', 588),
(39, 'ma', 'rua monstro marinho', 'são luis', 'brejo', 'brasil', '23462-358', 589),
(40, 'pr', 'rua lionel messi', 'fazenda rio grande', 'pioneiros', 'brasil', '23462-359', 590),
(41, 'pr', 'rua paris saint', 'fazenda rio grande', 'naçoes', 'brasil', '23462-360', 591),
(42, 'pr', 'rua bayern', 'fazenda rio grande', 'eucaliptos', 'brasil', '23462-361', 592),
(43, 'pr', 'rua marcondes', 'curitiba', 'bigorrilho', 'brasil', '23462-362', 593),
(44, 'rj', 'rua dracula', 'rio de janeiro', 'tiradentes', 'brasil', '23462-363', 594),
(45, 'mg', 'rua guarani', 'uberlandia', 'minas', 'brasil', '23462-364', 595),
(46, 'sc', 'rua coca cola', 'florianopolis', 'camburiu', 'brasil', '23462-365', 596),
(47, 'ba', 'rua nutella', 'salvador', 'jorge', 'brasil', '23462-366', 597),
(48, 'sp', 'rua streaming', 'são paulo', 'athenas', 'brasil', '23462-367', 598),
(49, 'sp', 'rua narnia', 'são paulo', 'sparta', 'brasil', '23462-368', 599),
(50, 'sp', 'rua manaus', 'são paulo', 'lufa-lufa', 'brasil', '23462-369', 600),
(51, 'mg', 'Rua casa velha', 'Minas Gerais', 'Sagrada Família', 'brasil', '97853-234', 2132),
(52, 'mg', 'Rua lombriga ', 'Minais Gerais ', 'Buritis', 'brasil', '97853-235', 2133),
(53, 'mg', 'Avenida elois ', 'Minas Gerais', 'Padre Eustáquio', 'brasil', '97853-236', 2134),
(54, 'mg', 'Rua Gabriel', 'Minas Gerais', 'Lindéia', 'brasil', '97853-237', 2135),
(55, 'rj', 'Rua Saint Louis', 'Petropolis', 'bangu', 'brasil', '97853-238', 2136),
(56, 'rj', 'Rua carminha', 'Petropolis', 'ipanema', 'brasil', '97853-239', 2137),
(57, 'rj', 'Rua risadinha', 'Petropolis', 'lapa', 'brasil', '97853-240', 2138),
(58, 'pr', 'Avenida General ', 'fazenda rio grande', 'pioneiros', 'brasil', '97853-241', 2139),
(59, 'pr', 'Avenida Aveia', 'fazenda rio grande', 'naçoes', 'brasil', '97853-242', 2140),
(60, 'pr', 'Rua Dom Pedro II', 'fazenda rio grande', 'eucaliptos', 'brasil', '78055-733', 2141),
(61, 'pr', 'Rua Monarquia', 'curitiba', 'bigorrilho', 'brasil', '97853-244', 2142),
(62, 'rj', 'Rua Marques de Holombra', 'rio de janeiro', 'tiradentes', 'brasil', '97853-245', 2143),
(63, 'mg', 'Rua Gabriela Barbosa', 'uberlandia', 'minas', 'brasil', '97853-246', 2144),
(64, 'sc', 'Avenida Bem te Vi', 'florianopolis', 'camburiu', 'brasil', '97853-247', 2145),
(65, 'ba', 'Rua manuel gomes', 'salvador', 'jorge', 'brasil', '97853-248', 2146),
(66, 'sp', 'Avenida Ditador ', 'são paulo', 'athenas', 'brasil', '97853-249', 2147),
(67, 'sp', 'Avenida sullivan', 'são paulo', 'sparta', 'brasil', '97853-250', 2148),
(68, 'sp', 'Avenida Olivia Rodrigo', 'são paulo', 'lufa-lufa', 'brasil', '97853-251', 2149),
(69, 'mg', 'Rua Katty Perry', 'belo horizonte', 'piraquara', 'brasil', '97853-252', 2150),
(70, 'pr', 'Rua The Beatles', 'curitiba', 'agua verde', 'brasil', '97853-253', 2151),
(71, 'pr', 'Avenida Rita Lee', 'curitiba', 'portão', 'brasil', '97853-254', 2152),
(72, 'sp', 'Avenida Itamar Franco', 'são paulo', 'guarulhios', 'brasil', '97853-255', 2153),
(73, 'df', 'Rua Esplanada', 'asa sul', 'brasilandia', 'brasil', '97853-256', 2154),
(74, 'sp', 'BR-CASTELO BRANCO', 'são paulo', 'osasco', 'brasil', '97853-257', 2155),
(75, 'ma', 'Rua Mutique', 'são luis', 'brejo', 'brasil', '97853-258', 2156),
(76, 'pr', 'BR-inter', 'curitiba', 'agua verde', 'brasil', '97853-259', 2157);

--
-- Acionadores `tb_endereco`
--
DELIMITER $$
CREATE TRIGGER `tb_endereco_AFTER_UPDATE` AFTER UPDATE ON `tb_endereco` FOR EACH ROW BEGIN

	IF NEW.cep <> OLD.cep THEN
    INSERT INTO tb_hist_cep VALUES (NULL,NOW(),OLD.cep,NEW.cep,NEW.id_end);
    END IF;



END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_hist_cep`
--

CREATE TABLE `tb_hist_cep` (
  `id_hist_cep` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `cep_antigo` varchar(11) DEFAULT NULL,
  `cep_novo` varchar(11) DEFAULT NULL,
  `id_end` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_hist_cep`
--

INSERT INTO `tb_hist_cep` (`id_hist_cep`, `data`, `cep_antigo`, `cep_novo`, `id_end`) VALUES
(1, '2021-09-25 19:26:46', '97853-243', '77322', 60),
(2, '2021-09-25 19:27:45', '77322', '78055-733', 60);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_marca`
--

CREATE TABLE `tb_marca` (
  `id_marca` int(3) NOT NULL,
  `marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_marca`
--

INSERT INTO `tb_marca` (`id_marca`, `marca`) VALUES
(1, 'Nissan'),
(2, 'Volkswagen'),
(3, 'Toyota'),
(4, 'Hyundai'),
(5, 'Kia'),
(6, 'General Motors'),
(7, 'Honda'),
(8, 'Ford'),
(9, 'FIAT'),
(10, 'Chrysler'),
(11, 'Peugeot'),
(12, 'Citroen'),
(13, 'Mercedes'),
(14, 'Audi'),
(15, 'Chevrolet'),
(16, 'Bmw'),
(17, 'Land Rover'),
(18, 'Mitsubishi'),
(19, 'Mini'),
(20, 'Jeep'),
(21, 'Tesla'),
(22, 'Volvo'),
(23, 'Lexus'),
(24, 'Aston Martin'),
(56, 'Renault'),
(81, 'Ferrari');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_temperatura`
--

CREATE TABLE `tb_temperatura` (
  `id_temp` int(11) NOT NULL,
  `temp` float DEFAULT NULL,
  `umi` float NOT NULL,
  `data_hora` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_temperatura`
--

INSERT INTO `tb_temperatura` (`id_temp`, `temp`, `umi`, `data_hora`) VALUES
(1, 28, 45, '2021-12-12 14:30:42'),
(2, 28, 45, '2021-12-12 14:31:12'),
(3, 28, 46, '2021-12-12 14:31:42'),
(4, 27.9, 45, '2021-12-12 14:32:12'),
(5, 27.9, 45, '2021-12-12 14:32:42'),
(6, 27.8, 45, '2021-12-12 14:33:12'),
(7, 27.8, 45, '2021-12-12 14:33:42'),
(8, 27.8, 45, '2021-12-12 14:34:12'),
(9, 27.8, 45, '2021-12-12 14:34:42'),
(10, 27.8, 45, '2021-12-12 14:35:12'),
(11, 27.8, 44, '2021-12-12 14:35:42'),
(12, 27.8, 44, '2021-12-12 14:36:12'),
(13, 27.9, 45, '2021-12-12 14:36:42'),
(14, 27.8, 46, '2021-12-12 14:37:13'),
(15, 27.8, 46, '2021-12-12 14:37:43'),
(16, 27.8, 45, '2021-12-12 14:38:13'),
(17, 27.8, 46, '2021-12-12 14:38:43'),
(18, 27.8, 47, '2021-12-12 14:39:13'),
(19, 27.8, 47, '2021-12-12 14:39:43'),
(20, 27.8, 46, '2021-12-12 14:40:13'),
(21, 27.8, 46, '2021-12-12 14:40:43'),
(22, 27.8, 46, '2021-12-12 14:41:13'),
(23, 27.8, 46, '2021-12-12 14:41:43'),
(24, 27.9, 44, '2021-12-12 14:42:13'),
(25, 28.1, 44, '2021-12-12 14:42:43'),
(26, 28.2, 43, '2021-12-12 14:43:13'),
(27, 28.3, 42, '2021-12-12 14:43:43'),
(28, 28.3, 42, '2021-12-12 14:44:13'),
(29, 28.3, 42, '2021-12-12 14:44:43'),
(30, 28.3, 42, '2021-12-12 14:45:13'),
(31, 28.4, 41, '2021-12-12 14:45:43'),
(32, 28.3, 41, '2021-12-12 14:46:13'),
(33, 28.4, 42, '2021-12-12 14:46:43'),
(34, 28.5, 41, '2021-12-12 14:47:13'),
(35, 28.5, 41, '2021-12-12 14:47:43'),
(36, 28.5, 41, '2021-12-12 14:48:14'),
(37, 28.5, 41, '2021-12-12 14:48:44'),
(38, 28.4, 41, '2021-12-12 14:49:14'),
(39, 28.4, 42, '2021-12-12 14:49:44'),
(40, 28.5, 42, '2021-12-12 14:50:14'),
(41, 28.5, 41, '2021-12-12 14:50:44'),
(42, 28.6, 41, '2021-12-12 14:51:14'),
(43, 28.7, 41, '2021-12-12 14:51:44'),
(44, 28.7, 41, '2021-12-12 14:52:14'),
(45, 28.7, 40, '2021-12-12 14:52:44'),
(46, 28.6, 40, '2021-12-12 14:53:14'),
(47, 28.6, 40, '2021-12-12 14:53:44'),
(48, 28.6, 40, '2021-12-12 14:54:14'),
(49, 28.6, 40, '2021-12-12 14:54:44'),
(50, 28.6, 40, '2021-12-12 14:55:14'),
(51, 28.6, 40, '2021-12-12 14:55:44'),
(52, 28.5, 40, '2021-12-12 14:56:14'),
(53, 28.5, 40, '2021-12-12 14:56:44'),
(54, 28.6, 40, '2021-12-12 14:57:14'),
(55, 28.6, 40, '2021-12-12 14:57:44'),
(56, 28.6, 40, '2021-12-12 14:58:14'),
(57, 28.6, 41, '2021-12-12 14:58:45'),
(58, 28.7, 40, '2021-12-12 14:59:15'),
(59, 28.7, 40, '2021-12-12 14:59:45'),
(60, 28.7, 40, '2021-12-12 15:00:15'),
(61, 28.7, 40, '2021-12-12 15:00:45'),
(62, 28.7, 40, '2021-12-12 15:01:15'),
(63, 28.6, 41, '2021-12-12 15:01:45'),
(64, 28.6, 40, '2021-12-12 15:02:15'),
(65, 28.7, 40, '2021-12-12 15:02:45'),
(66, 28.7, 39, '2021-12-12 15:03:15'),
(67, 28.7, 38, '2021-12-12 15:03:45'),
(68, 28.8, 38, '2021-12-12 15:04:15'),
(69, 28.8, 38, '2021-12-12 15:04:45'),
(70, 28.8, 37, '2021-12-12 15:05:15'),
(71, 28.8, 37, '2021-12-12 15:05:45'),
(72, 28.8, 37, '2021-12-12 15:06:15'),
(73, 28.7, 38, '2021-12-12 15:06:45'),
(74, 28.8, 38, '2021-12-12 15:07:15'),
(75, 28.8, 38, '2021-12-12 15:07:45'),
(76, 28.8, 38, '2021-12-12 15:08:15'),
(77, 28.8, 38, '2021-12-12 15:08:45'),
(78, 28.8, 39, '2021-12-12 15:09:16'),
(79, 28.7, 40, '2021-12-12 15:09:46'),
(80, 28.6, 40, '2021-12-12 15:10:16'),
(81, 28.5, 41, '2021-12-12 15:10:46'),
(82, 28.5, 40, '2021-12-12 15:11:16'),
(83, 28.6, 39, '2021-12-12 15:11:46'),
(84, 28.7, 40, '2021-12-12 15:12:16'),
(85, 28.7, 39, '2021-12-12 15:12:46'),
(86, 28.8, 38, '2021-12-12 15:13:16'),
(87, 28.8, 39, '2021-12-12 15:13:46'),
(88, 28.8, 38, '2021-12-12 15:14:16'),
(89, 28.9, 37, '2021-12-12 15:14:46'),
(90, 28.9, 37, '2021-12-12 15:15:16'),
(91, 28.9, 37, '2021-12-12 15:15:46'),
(92, 28.9, 36, '2021-12-12 15:16:16'),
(93, 28.8, 37, '2021-12-12 15:16:46'),
(94, 28.8, 37, '2021-12-12 15:17:16'),
(95, 28.7, 37, '2021-12-12 15:17:46'),
(96, 28.7, 39, '2021-12-12 15:18:16'),
(97, 28.7, 39, '2021-12-12 15:18:46'),
(98, 28.7, 38, '2021-12-12 15:19:16'),
(99, 28.8, 37, '2021-12-12 15:19:47'),
(100, 28.8, 37, '2021-12-12 15:20:17'),
(101, 28.9, 37, '2021-12-12 15:20:47'),
(102, 28.9, 37, '2021-12-12 15:21:17'),
(103, 28.9, 37, '2021-12-12 15:21:47'),
(104, 29, 38, '2021-12-12 15:22:17'),
(105, 29.1, 37, '2021-12-12 15:22:47'),
(106, 29.1, 37, '2021-12-12 15:23:17'),
(107, 29.2, 38, '2021-12-12 15:23:47'),
(108, 29.1, 38, '2021-12-12 15:24:17'),
(109, 29.2, 37, '2021-12-12 15:24:47'),
(110, 29.1, 38, '2021-12-12 15:25:17'),
(111, 29.1, 38, '2021-12-12 15:25:47'),
(112, 29.1, 39, '2021-12-12 15:26:17'),
(113, 28.9, 37, '2021-12-12 15:26:47'),
(114, 29, 39, '2021-12-12 15:27:17'),
(115, 29.1, 38, '2021-12-12 15:27:47'),
(116, 29, 39, '2021-12-12 15:28:17'),
(117, 29, 38, '2021-12-12 15:28:47'),
(118, 29.1, 39, '2021-12-12 15:29:17'),
(119, 29.1, 37, '2021-12-12 15:29:47'),
(120, 29.1, 38, '2021-12-12 15:30:18'),
(121, 29, 39, '2021-12-12 15:30:48'),
(122, 28.9, 38, '2021-12-12 15:31:18'),
(123, 28.9, 38, '2021-12-12 15:31:48'),
(124, 28.8, 39, '2021-12-12 15:32:18'),
(125, 28.8, 39, '2021-12-12 15:32:48'),
(126, 28.9, 38, '2021-12-12 15:33:18'),
(127, 29.1, 38, '2021-12-12 15:33:48'),
(128, 29.1, 38, '2021-12-12 15:34:18'),
(129, 29.1, 38, '2021-12-12 15:34:48'),
(130, 29.1, 38, '2021-12-12 15:35:18'),
(131, 29.2, 38, '2021-12-12 15:35:48'),
(132, 29.1, 38, '2021-12-12 15:36:18'),
(133, 29.1, 38, '2021-12-12 15:36:48'),
(134, 29, 39, '2021-12-12 15:37:18'),
(135, 28.9, 38, '2021-12-12 15:37:48'),
(136, 29, 40, '2021-12-12 15:38:18'),
(137, 28.9, 39, '2021-12-12 15:38:48'),
(138, 28.8, 39, '2021-12-12 15:39:18'),
(139, 28.8, 39, '2021-12-12 15:39:48'),
(140, 28.9, 39, '2021-12-12 15:40:18'),
(141, 28.9, 39, '2021-12-12 15:40:49'),
(142, 28.8, 39, '2021-12-12 15:41:19'),
(143, 28.8, 40, '2021-12-12 15:41:49'),
(144, 28.8, 40, '2021-12-12 15:42:19'),
(145, 28.7, 40, '2021-12-12 15:42:49'),
(146, 28.7, 40, '2021-12-12 15:43:19'),
(147, 28.7, 40, '2021-12-12 15:43:49'),
(148, 28.8, 40, '2021-12-12 15:44:19'),
(149, 28.8, 39, '2021-12-12 15:44:49'),
(150, 28.8, 40, '2021-12-12 15:45:19'),
(151, 28.7, 40, '2021-12-12 15:45:49'),
(152, 28.7, 39, '2021-12-12 15:46:19'),
(153, 28.8, 39, '2021-12-12 15:46:49'),
(154, 28.8, 40, '2021-12-12 15:47:19'),
(155, 28.7, 39, '2021-12-12 15:47:49'),
(156, 28.7, 40, '2021-12-12 15:48:19'),
(157, 28.7, 40, '2021-12-12 15:48:49'),
(158, 28.7, 39, '2021-12-12 15:49:19'),
(159, 28.8, 39, '2021-12-12 15:49:49'),
(160, 28.7, 39, '2021-12-12 15:50:19'),
(161, 28.8, 39, '2021-12-12 15:50:49'),
(162, 28.8, 38, '2021-12-12 15:51:20'),
(163, 29.1, 39, '2021-12-12 15:51:50'),
(164, 29.1, 38, '2021-12-12 15:52:20'),
(165, 29.1, 37, '2021-12-12 15:52:50'),
(166, 29.1, 38, '2021-12-12 15:53:20'),
(167, 29.1, 38, '2021-12-12 15:53:50'),
(168, 29.1, 38, '2021-12-12 15:54:20'),
(169, 29.1, 38, '2021-12-12 15:54:50'),
(170, 29, 39, '2021-12-12 15:55:20'),
(171, 28.9, 38, '2021-12-12 15:55:50'),
(172, 28.9, 38, '2021-12-12 15:56:20'),
(173, 28.8, 38, '2021-12-12 15:56:50'),
(174, 28.8, 38, '2021-12-12 15:57:20'),
(175, 28.9, 38, '2021-12-12 15:57:50'),
(176, 28.8, 38, '2021-12-12 15:58:20'),
(177, 28.8, 37, '2021-12-12 15:58:50'),
(178, 28.8, 37, '2021-12-12 15:59:20'),
(179, 28.8, 37, '2021-12-12 15:59:50'),
(180, 28.8, 37, '2021-12-12 16:00:20'),
(181, 28.8, 37, '2021-12-12 16:00:50'),
(182, 28.7, 38, '2021-12-12 16:01:20'),
(183, 28.8, 37, '2021-12-12 16:01:51'),
(184, 28.7, 37, '2021-12-12 16:02:21'),
(185, 28.7, 37, '2021-12-12 16:02:51'),
(186, 28.6, 37, '2021-12-12 16:03:21'),
(187, 28.7, 38, '2021-12-12 16:03:51'),
(188, 28.7, 38, '2021-12-12 16:04:21'),
(189, 28.7, 37, '2021-12-12 16:04:51'),
(190, 28.8, 36, '2021-12-12 16:05:21'),
(191, 28.8, 36, '2021-12-12 16:05:51'),
(192, 28.8, 37, '2021-12-12 16:06:21'),
(193, 28.7, 37, '2021-12-12 16:06:51'),
(194, 28.7, 37, '2021-12-12 16:07:21'),
(195, 28.6, 37, '2021-12-12 16:07:51'),
(196, 28.6, 38, '2021-12-12 16:08:21'),
(197, 28.6, 37, '2021-12-12 16:08:51'),
(198, 28.7, 37, '2021-12-12 16:09:21'),
(199, 28.7, 37, '2021-12-12 16:09:51'),
(200, 28.7, 36, '2021-12-12 16:10:21'),
(201, 28.7, 37, '2021-12-12 16:10:51'),
(202, 28.6, 38, '2021-12-12 16:11:21'),
(203, 28.6, 37, '2021-12-12 16:11:51'),
(204, 28.6, 37, '2021-12-12 16:12:22'),
(205, 28.7, 38, '2021-12-12 16:12:52'),
(206, 28.7, 38, '2021-12-12 16:13:22'),
(207, 28.7, 38, '2021-12-12 16:13:52'),
(208, 28.6, 38, '2021-12-12 16:14:22'),
(209, 28.7, 39, '2021-12-12 16:14:52'),
(210, 28.7, 39, '2021-12-12 16:15:22'),
(211, 28.7, 39, '2021-12-12 16:15:52'),
(212, 28.7, 38, '2021-12-12 16:16:22'),
(213, 28.6, 38, '2021-12-12 16:16:52'),
(214, 28.6, 38, '2021-12-12 16:17:22'),
(215, 28.6, 38, '2021-12-12 16:17:52'),
(216, 28.7, 38, '2021-12-12 16:18:22'),
(217, 28.6, 38, '2021-12-12 16:18:52'),
(218, 28.7, 37, '2021-12-12 16:19:22'),
(219, 28.9, 36, '2021-12-12 16:19:52'),
(220, 29, 37, '2021-12-12 16:20:22'),
(221, 29.1, 36, '2021-12-12 16:20:52'),
(222, 29.3, 36, '2021-12-12 16:21:22'),
(223, 29.3, 36, '2021-12-12 16:21:52'),
(224, 29.2, 36, '2021-12-12 16:22:22'),
(225, 29.1, 37, '2021-12-12 16:22:52'),
(226, 29.1, 37, '2021-12-12 16:23:23'),
(227, 28.9, 36, '2021-12-12 16:23:53'),
(228, 28.9, 36, '2021-12-12 16:24:23'),
(229, 28.9, 36, '2021-12-12 16:24:53'),
(230, 29, 37, '2021-12-12 16:25:23'),
(231, 29, 37, '2021-12-12 16:25:53'),
(232, 29, 37, '2021-12-12 16:26:23'),
(233, 29.1, 36, '2021-12-12 16:26:53'),
(234, 29.1, 36, '2021-12-12 16:27:23'),
(235, 29.2, 36, '2021-12-12 16:27:53'),
(236, 29.2, 36, '2021-12-12 16:28:23'),
(237, 29.2, 36, '2021-12-12 16:28:53'),
(238, 29.2, 36, '2021-12-12 16:29:23'),
(239, 29.1, 37, '2021-12-12 16:29:53'),
(240, 29.2, 37, '2021-12-12 16:30:23'),
(241, 29, 38, '2021-12-12 16:30:53'),
(242, 29, 37, '2021-12-12 16:31:23'),
(243, 29.1, 38, '2021-12-12 16:31:53'),
(244, 29, 37, '2021-12-12 16:32:23'),
(245, 28.9, 36, '2021-12-12 16:32:53'),
(246, 28.9, 37, '2021-12-12 16:33:23'),
(247, 28.8, 37, '2021-12-12 16:33:54'),
(248, 28.9, 37, '2021-12-12 16:34:24'),
(249, 28.9, 37, '2021-12-12 16:34:54'),
(250, 28.9, 37, '2021-12-12 16:35:24'),
(251, 28.8, 38, '2021-12-12 16:35:54'),
(252, 28.8, 40, '2021-12-12 16:36:24'),
(253, 28.8, 40, '2021-12-12 16:36:54'),
(254, 28.8, 42, '2021-12-12 16:37:24'),
(255, 28.8, 45, '2021-12-12 16:37:54'),
(256, 28.9, 45, '2021-12-12 16:38:24'),
(257, 28.9, 44, '2021-12-12 16:38:54'),
(258, 28.9, 46, '2021-12-12 16:39:24'),
(259, 28.9, 45, '2021-12-12 16:39:54'),
(260, 28.9, 47, '2021-12-12 16:40:24'),
(261, 28.8, 46, '2021-12-12 16:40:54'),
(262, 28.9, 48, '2021-12-12 16:41:24'),
(263, 28.8, 50, '2021-12-12 16:41:54'),
(264, 28.8, 51, '2021-12-12 16:42:24'),
(265, 28.8, 51, '2021-12-12 16:42:54'),
(266, 28.8, 50, '2021-12-12 16:43:24'),
(267, 28.8, 50, '2021-12-12 16:43:54'),
(268, 28.8, 51, '2021-12-12 16:44:25'),
(269, 28.8, 51, '2021-12-12 16:44:55'),
(270, 28.8, 52, '2021-12-12 16:45:25'),
(271, 28.8, 52, '2021-12-12 16:45:55'),
(272, 28.8, 52, '2021-12-12 16:46:25'),
(273, 28.9, 52, '2021-12-12 16:46:55'),
(274, 28.8, 52, '2021-12-12 16:47:25'),
(275, 28.8, 52, '2021-12-12 16:47:55'),
(276, 28.7, 52, '2021-12-12 16:48:25'),
(277, 28.8, 52, '2021-12-12 16:48:55'),
(278, 28.8, 52, '2021-12-12 16:49:25'),
(279, 28.8, 52, '2021-12-12 16:49:55'),
(280, 28.8, 52, '2021-12-12 16:50:25'),
(281, 28.8, 52, '2021-12-12 16:50:55'),
(282, 28.8, 52, '2021-12-12 16:51:25'),
(283, 28.8, 52, '2021-12-12 16:51:55'),
(284, 28.7, 52, '2021-12-12 16:52:25'),
(285, 28.7, 52, '2021-12-12 16:52:55'),
(286, 28.8, 53, '2021-12-12 16:53:25'),
(287, 28.8, 54, '2021-12-12 16:53:55'),
(288, 28.7, 54, '2021-12-12 16:54:25'),
(289, 28.7, 54, '2021-12-12 16:54:56'),
(290, 28.7, 54, '2021-12-12 16:55:26'),
(291, 28.7, 54, '2021-12-12 16:55:56'),
(292, 28.7, 54, '2021-12-12 16:56:26'),
(293, 28.7, 54, '2021-12-12 16:56:56'),
(294, 28.7, 54, '2021-12-12 16:57:26'),
(295, 28.7, 54, '2021-12-12 16:57:56'),
(296, 28.7, 54, '2021-12-12 16:58:26'),
(297, 28.7, 54, '2021-12-12 16:58:56'),
(298, 28.7, 54, '2021-12-12 16:59:26'),
(299, 28.7, 54, '2021-12-12 16:59:56'),
(300, 28.7, 54, '2021-12-12 17:00:26'),
(301, 28.7, 54, '2021-12-12 17:00:56'),
(302, 28.7, 54, '2021-12-12 17:01:26'),
(303, 28.7, 54, '2021-12-12 17:01:56'),
(304, 28.7, 54, '2021-12-12 17:02:26'),
(305, 28.7, 54, '2021-12-12 17:02:56'),
(306, 28.7, 54, '2021-12-12 17:03:26'),
(307, 28.7, 54, '2021-12-12 17:03:56'),
(308, 28.7, 54, '2021-12-12 17:04:26'),
(309, 28.7, 54, '2021-12-12 17:04:56'),
(310, 28.7, 54, '2021-12-12 17:05:27'),
(311, 28.7, 54, '2021-12-12 17:05:57'),
(312, 28.7, 55, '2021-12-12 17:06:27'),
(313, 28.6, 55, '2021-12-12 17:06:57'),
(314, 28.5, 55, '2021-12-12 17:07:27'),
(315, 28.6, 55, '2021-12-12 17:07:57'),
(316, 28.6, 55, '2021-12-12 17:08:27'),
(317, 28.5, 55, '2021-12-12 17:08:57'),
(318, 28.5, 55, '2021-12-12 17:09:27'),
(319, 28.6, 55, '2021-12-12 17:09:57'),
(320, 28.5, 55, '2021-12-12 17:10:27'),
(321, 28.5, 56, '2021-12-12 17:10:57'),
(322, 28.5, 56, '2021-12-12 17:11:27'),
(323, 28.5, 56, '2021-12-12 17:11:57'),
(324, 28.6, 57, '2021-12-12 17:12:27'),
(325, 28.5, 57, '2021-12-12 17:12:57'),
(326, 28.5, 57, '2021-12-12 17:13:27'),
(327, 28.4, 57, '2021-12-12 17:13:57'),
(328, 28.4, 57, '2021-12-12 17:14:27'),
(329, 28.4, 57, '2021-12-12 17:14:57'),
(330, 28.6, 57, '2021-12-12 17:15:27'),
(331, 28.5, 57, '2021-12-12 17:15:58'),
(332, 28.5, 57, '2021-12-12 17:16:28'),
(333, 28.5, 57, '2021-12-12 17:16:58'),
(334, 28.5, 57, '2021-12-12 17:17:28'),
(335, 28.4, 57, '2021-12-12 17:17:58'),
(336, 28.4, 58, '2021-12-12 17:18:28'),
(337, 28.4, 58, '2021-12-12 17:18:58'),
(338, 28.4, 58, '2021-12-12 17:19:28'),
(339, 28.4, 58, '2021-12-12 17:19:58'),
(340, 28.4, 58, '2021-12-12 17:20:28'),
(341, 28.4, 58, '2021-12-12 17:20:58'),
(342, 28.5, 58, '2021-12-12 17:21:28'),
(343, 28.5, 59, '2021-12-12 17:21:58'),
(344, 28.5, 58, '2021-12-12 17:22:28'),
(345, 28.4, 58, '2021-12-12 17:22:58'),
(346, 28.5, 58, '2021-12-12 17:23:28'),
(347, 28.4, 58, '2021-12-12 17:23:58'),
(348, 28.4, 59, '2021-12-12 17:24:28'),
(349, 28.4, 58, '2021-12-12 17:24:58'),
(350, 28.5, 59, '2021-12-12 17:25:28'),
(351, 28.5, 58, '2021-12-12 17:25:58'),
(352, 28.5, 58, '2021-12-12 17:26:29'),
(353, 28.6, 59, '2021-12-12 17:26:59'),
(354, 28.5, 59, '2021-12-12 17:27:29'),
(355, 28.6, 59, '2021-12-12 17:27:59'),
(356, 28.5, 59, '2021-12-12 17:28:29'),
(357, 28.5, 59, '2021-12-12 17:28:59'),
(358, 28.5, 59, '2021-12-12 17:29:29'),
(359, 28.4, 59, '2021-12-12 17:29:59'),
(360, 28.4, 59, '2021-12-12 17:30:29'),
(361, 28.4, 60, '2021-12-12 17:30:59'),
(362, 28.4, 60, '2021-12-12 17:31:29'),
(363, 28.4, 60, '2021-12-12 17:31:59'),
(364, 28.4, 59, '2021-12-12 17:32:29'),
(365, 28.4, 60, '2021-12-12 17:32:59'),
(366, 28.3, 60, '2021-12-12 17:33:29'),
(367, 28.3, 60, '2021-12-12 17:33:59'),
(368, 28.3, 60, '2021-12-12 17:34:29'),
(369, 28.1, 60, '2021-12-12 17:34:59'),
(370, 27.9, 59, '2021-12-12 17:35:29'),
(371, 27.8, 60, '2021-12-12 17:35:59'),
(372, 27.9, 60, '2021-12-12 17:36:29'),
(373, 28, 60, '2021-12-12 17:36:59'),
(374, 28, 60, '2021-12-12 17:37:30'),
(375, 28, 60, '2021-12-12 17:38:00'),
(376, 28, 60, '2021-12-12 17:38:30'),
(377, 28, 60, '2021-12-12 17:39:00'),
(378, 27.8, 59, '2021-12-12 17:39:30'),
(379, 27.9, 59, '2021-12-12 17:40:00'),
(380, 27.8, 59, '2021-12-12 17:40:30'),
(381, 27.7, 59, '2021-12-12 17:41:00'),
(382, 27.7, 59, '2021-12-12 17:41:30'),
(383, 27.7, 59, '2021-12-12 17:42:00'),
(384, 27.8, 59, '2021-12-12 17:42:30'),
(385, 27.8, 59, '2021-12-12 17:43:00'),
(386, 27.8, 59, '2021-12-12 17:43:30'),
(387, 27.8, 59, '2021-12-12 17:44:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_umidade`
--

CREATE TABLE `tb_umidade` (
  `id_umid` int(11) NOT NULL,
  `umid` float NOT NULL,
  `data_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id_usuario` int(3) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `confirm_senha` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `perfil` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id_usuario`, `nome_usuario`, `senha`, `confirm_senha`, `nome`, `cpf`, `telefone`, `email`, `perfil`) VALUES
(28, 'mariabetania', 'mariazinh123', 'mariazinh123', 'Maria Coloide', '123456908', '32753143', 'maria@yahoo.com.br', 0),
(30, 'testenovo', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'Teste Novamente', '08208208282', '99999999', 'teste@hotmail.com', 0),
(31, 'evandrinh', 'vrumvrum', 'vrumvrum', 'Evandro Silva Sauro', '476.624.500-82', '41999343435', 'evads@yahoo.com', 0),
(32, 'lerolero', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b', 'Leandro Santos', '251.019.440-25', '61949598460', 'le.santos@hotmail.com', 0),
(33, 'admsenai', 'eaf6c5fe009a07fb3ec3d7f33adcb932', 'eaf6c5fe009a07fb3ec3d7f33adcb932', 'administrador ', '', '', 'admsenai@hotmail.com', 1),
(34, 'camilinha', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'camilinhaLichtenberg', '34443222564', '41536576887', 'camilinhalicht@gmail.com', 0),
(36, 'jorge', '455371f0025c35ffe66b80dc21d05304', '455371f0025c35ffe66b80dc21d05304', 'jorge', '3522222', '4199686866', 'ciffoni@gmail.com', 0),
(37, 'amandaciffoni', '32eeef0388af2fd15d50c48e2928df7b', '32eeef0388af2fd15d50c48e2928df7b', 'amanda ciffoni', '090909090', '4199645454', 'ciffoni@gmail.com', 0),
(38, 'amandaciffoni', '32eeef0388af2fd15d50c48e2928df7b', '32eeef0388af2fd15d50c48e2928df7b', 'amanda ciffoni', '090909090', '4199645454', 'ciffoni@gmail.com', 0),
(39, 'leodorini', '1af58d77ca88946a6ebff964026c1721', '1af58d77ca88946a6ebff964026c1721', 'Leonardo Dorini dos Santos', '12345678921', '4199999999', 'leodorini@hotmail.com', 0),
(40, 'leo', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 'Leonardo Dorini dos Santos', '123456', '9999999', 'leo@dorini.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_carro`
--
ALTER TABLE `tb_carro`
  ADD PRIMARY KEY (`id_carro`),
  ADD KEY `fk_id_cat` (`id_cat`),
  ADD KEY `fk_id_cor` (`id_cor`),
  ADD KEY `fk_id_marca` (`id_marca`),
  ADD KEY `tb_carro_id_idx` (`id_carro`),
  ADD KEY `id_carro_idx` (`id_carro`),
  ADD KEY `id_conce` (`id_conce`);

--
-- Indexes for table `tb_categoria`
--
ALTER TABLE `tb_categoria`
  ADD PRIMARY KEY (`id_cat`),
  ADD KEY `id_categoria_idx` (`id_cat`);

--
-- Indexes for table `tb_concessionaria`
--
ALTER TABLE `tb_concessionaria`
  ADD PRIMARY KEY (`id_conce`),
  ADD UNIQUE KEY `cnpj_UNIQUE` (`cnpj`),
  ADD KEY `fk_tb_concessionaria_tb_endereco1` (`id_end`),
  ADD KEY `id_conce_idx` (`id_conce`);

--
-- Indexes for table `tb_cor`
--
ALTER TABLE `tb_cor`
  ADD PRIMARY KEY (`id_cor`),
  ADD KEY `id_cor_idx` (`id_cor`),
  ADD KEY `id_conce_cor` (`id_cor`);

--
-- Indexes for table `tb_endereco`
--
ALTER TABLE `tb_endereco`
  ADD PRIMARY KEY (`id_end`),
  ADD UNIQUE KEY `cep_UNIQUE` (`cep`),
  ADD KEY `id_end_idx` (`id_end`);

--
-- Indexes for table `tb_hist_cep`
--
ALTER TABLE `tb_hist_cep`
  ADD PRIMARY KEY (`id_hist_cep`),
  ADD KEY `id_hist_cep_idx` (`id_hist_cep`);

--
-- Indexes for table `tb_marca`
--
ALTER TABLE `tb_marca`
  ADD PRIMARY KEY (`id_marca`),
  ADD KEY `id_marca_idx` (`id_marca`);

--
-- Indexes for table `tb_temperatura`
--
ALTER TABLE `tb_temperatura`
  ADD PRIMARY KEY (`id_temp`);

--
-- Indexes for table `tb_umidade`
--
ALTER TABLE `tb_umidade`
  ADD PRIMARY KEY (`id_umid`);

--
-- Indexes for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_usuario_idx` (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_carro`
--
ALTER TABLE `tb_carro`
  MODIFY `id_carro` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `id_cat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tb_concessionaria`
--
ALTER TABLE `tb_concessionaria`
  MODIFY `id_conce` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_cor`
--
ALTER TABLE `tb_cor`
  MODIFY `id_cor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tb_endereco`
--
ALTER TABLE `tb_endereco`
  MODIFY `id_end` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tb_hist_cep`
--
ALTER TABLE `tb_hist_cep`
  MODIFY `id_hist_cep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_marca`
--
ALTER TABLE `tb_marca`
  MODIFY `id_marca` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tb_temperatura`
--
ALTER TABLE `tb_temperatura`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `tb_umidade`
--
ALTER TABLE `tb_umidade`
  MODIFY `id_umid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_usuario` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_carro`
--
ALTER TABLE `tb_carro`
  ADD CONSTRAINT `fk_id_cat` FOREIGN KEY (`id_cat`) REFERENCES `tb_categoria` (`id_cat`),
  ADD CONSTRAINT `fk_id_conce` FOREIGN KEY (`id_conce`) REFERENCES `tb_concessionaria` (`id_conce`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_id_cor` FOREIGN KEY (`id_cor`) REFERENCES `tb_cor` (`id_cor`),
  ADD CONSTRAINT `fk_id_marca` FOREIGN KEY (`id_marca`) REFERENCES `tb_marca` (`id_marca`);

--
-- Limitadores para a tabela `tb_concessionaria`
--
ALTER TABLE `tb_concessionaria`
  ADD CONSTRAINT `fk_tb_concessionaria_tb_endereco1` FOREIGN KEY (`id_end`) REFERENCES `tb_endereco` (`id_end`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
