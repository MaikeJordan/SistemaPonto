-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jun 02, 2015 as 02:15 PM
-- Versão do Servidor: 5.1.33
-- Versão do PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `sysponto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bancodehoras`
--

CREATE TABLE IF NOT EXISTS `bancodehoras` (
  `bancodehorasid` int(11) NOT NULL AUTO_INCREMENT,
  `pontoid` int(11) DEFAULT NULL,
  `qtdeHoras` int(11) DEFAULT NULL,
  PRIMARY KEY (`bancodehorasid`),
  KEY `pontoid` (`pontoid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `bancodehoras`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `funcionarioid` int(11) NOT NULL AUTO_INCREMENT,
  `usuarioid` int(11) DEFAULT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `salario` double NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`funcionarioid`),
  KEY `usuarioid` (`usuarioid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `funcionario`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `ponto`
--

CREATE TABLE IF NOT EXISTS `ponto` (
  `pontoid` int(11) NOT NULL AUTO_INCREMENT,
  `horaEntrada` date DEFAULT NULL,
  `horaAlmoco` date DEFAULT NULL,
  `horaAlmocoVolta` date DEFAULT NULL,
  `dataSaida` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`pontoid`),
  KEY `idFuncionario` (`idFuncionario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `ponto`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuarioid` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`usuarioid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `usuario`
--

