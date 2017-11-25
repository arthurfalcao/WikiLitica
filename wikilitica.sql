-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Nov-2017 às 20:40
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wikilitica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `ID_ESTADO` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipio`
--

CREATE TABLE `municipio` (
  `ID_MUNICIPIO` int(11) NOT NULL,
  `NOME` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `ESTADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `partido`
--

CREATE TABLE `partido` (
  `ID_PARTIDO` int(11) NOT NULL,
  `ESPECTRO` varchar(10) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `SIGLA` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `politico`
--

CREATE TABLE `politico` (
  `ID_POLITICO` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `IDADE` int(11) NOT NULL,
  `SEXO` varchar(10) NOT NULL,
  `PROFISSAO` varchar(30) NOT NULL,
  `FUNCAO` varchar(30) NOT NULL,
  `ESTADO` int(11) NOT NULL,
  `PARTIDO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `CPF` int(11) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `NOME_COMPLETO` varchar(80) NOT NULL,
  `TELEFONE` int(15) NOT NULL,
  `ENDEREÇO` varchar(100) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `ESTADO` varchar(20) NOT NULL,
  `CIDADE` varchar(20) NOT NULL,
  `SEXO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_ESTADO`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`ID_MUNICIPIO`),
  ADD KEY `FK_MUNICIO_ESTADO` (`ESTADO`);

--
-- Indexes for table `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`ID_PARTIDO`);

--
-- Indexes for table `politico`
--
ALTER TABLE `politico`
  ADD PRIMARY KEY (`ID_POLITICO`),
  ADD KEY `FK_POLITICO_ESTADO` (`ESTADO`),
  ADD KEY `FK_POLITICO_PARTIDO` (`PARTIDO`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CPF`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `ID_ESTADO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `municipio`
--
ALTER TABLE `municipio`
  MODIFY `ID_MUNICIPIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partido`
--
ALTER TABLE `partido`
  MODIFY `ID_PARTIDO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `politico`
--
ALTER TABLE `politico`
  MODIFY `ID_POLITICO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `CPF` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `FK_MUNICIO_ESTADO` FOREIGN KEY (`ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Limitadores para a tabela `politico`
--
ALTER TABLE `politico`
  ADD CONSTRAINT `FK_POLITICO_ESTADO` FOREIGN KEY (`ESTADO`) REFERENCES `estado` (`ID_ESTADO`),
  ADD CONSTRAINT `FK_POLITICO_PARTIDO` FOREIGN KEY (`PARTIDO`) REFERENCES `partido` (`ID_PARTIDO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;