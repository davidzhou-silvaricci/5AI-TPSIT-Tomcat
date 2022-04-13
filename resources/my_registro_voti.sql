-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 13, 2022 alle 16:39
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `genere` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `docente`
--

INSERT INTO `docente` (`id`, `nome`, `cognome`, `email`, `genere`) VALUES
(1, 'Giacomo', 'Bartolomeo', 'giacomo@mail.it', 'M'),
(2, 'Giulia', 'Pettorosso', 'giulia@rossi.com', 'F');

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
('Inglese', 'Lorem ipsum'),
('Italiano', 'La lingua italiana nasce dall\'evoluzione attraverso i secoli del latino e, più precisamente, del latino parlato.'),
('Matematica', 'Lorem ipsum');

-- --------------------------------------------------------

--
-- Struttura della tabella `studente`
--

CREATE TABLE IF NOT EXISTS `studente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `genere` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `studente`
--

INSERT INTO `studente` (`id`, `nome`, `cognome`, `email`, `genere`) VALUES
(1, 'Mario', 'Rossi', 'mario@mail.it', 'M'),
(2, 'Giulia', 'Verdi', 'giulia@mail.it', 'F'),
(3, 'Filippo', 'Neri', 'filippo@mail.it', 'X'),
(4, 'Test', 'Test', 'test@test.it', 'M');

-- --------------------------------------------------------

--
-- Struttura della tabella `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voto` int(11) NOT NULL,
  `data` date NOT NULL,
  `studente_id` int(11) NOT NULL,
  `materia_nome` varchar(50) NOT NULL,
  `docente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studente_id` (`studente_id`),
  KEY `materia_nome` (`materia_nome`),
  KEY `docente_id` (`docente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`studente_id`) REFERENCES `studente` (`id`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`materia_nome`) REFERENCES `materia` (`nome`),
  ADD CONSTRAINT `test_ibfk_3` FOREIGN KEY (`docente_id`) REFERENCES `docente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
