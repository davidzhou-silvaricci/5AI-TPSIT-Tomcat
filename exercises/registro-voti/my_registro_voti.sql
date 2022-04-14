-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 14, 2022 alle 12:49
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_registro_voti`
--
CREATE DATABASE IF NOT EXISTS `my_registro_voti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_registro_voti`;

-- --------------------------------------------------------

--
-- Struttura della tabella `docente`
--

CREATE TABLE IF NOT EXISTS `docente` (
  `codice_fiscale` char(16) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `genere` char(15) NOT NULL,
  PRIMARY KEY (`codice_fiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `docente`
--

INSERT INTO `docente` (`codice_fiscale`, `nome`, `cognome`, `email`, `genere`) VALUES
('RSSMRA80A01E512X', 'Mario', 'Rossi', 'esempio@mail.it', 'M');

-- --------------------------------------------------------

--
-- Struttura della tabella `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `nome` varchar(50) NOT NULL,
  `descrizione` text DEFAULT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `materia`
--

INSERT INTO `materia` (`nome`, `descrizione`) VALUES
('Italiano', 'Velit duis in potenti aenean tristique dictumst lorem. Duis at molestie cras nisl, lectus aliquam accumsan hac. Pretium mi torquent auctor platea, vulputate ultrices, mollis turpis. Ultrices a quisque taciti nunc vehicula, curabitur elit tempus aliquet curabitur!'),
('Matematica', 'Sagittis suspendisse curabitur mattis laoreet nibh habitant varius risus facilisis tortor cras, tempus commodo ultricies libero sem aliquam inceptos. Elementum imperdiet sagittis porta bibendum risus, a curae. Eros class rhoncus hendrerit, a lobortis id interdum, sapien at dui venenatis!');

-- --------------------------------------------------------

--
-- Struttura della tabella `studente`
--

CREATE TABLE IF NOT EXISTS `studente` (
  `codice_fiscale` char(16) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `genere` char(15) NOT NULL,
  PRIMARY KEY (`codice_fiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `studente`
--

INSERT INTO `studente` (`codice_fiscale`, `nome`, `cognome`, `email`, `genere`) VALUES
('IURZQR98K87J824M', 'Marco', 'Neri', '7dycxk7zqvsy37o@mail.com', 'M'),
('THORTN92A03F137G', 'Luisa', 'Marte', '914gflml9atfdhu@mail.com', 'F');

-- --------------------------------------------------------

--
-- Struttura della tabella `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voto` int(11) NOT NULL,
  `data` date NOT NULL,
  `studente_cf` char(16) NOT NULL,
  `materia_nome` varchar(50) NOT NULL,
  `docente_cf` char(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studente_cf` (`studente_cf`),
  KEY `materia_nome` (`materia_nome`),
  KEY `docente_cf` (`docente_cf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`studente_cf`) REFERENCES `studente` (`codice_fiscale`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`materia_nome`) REFERENCES `materia` (`nome`),
  ADD CONSTRAINT `test_ibfk_3` FOREIGN KEY (`docente_cf`) REFERENCES `docente` (`codice_fiscale`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
