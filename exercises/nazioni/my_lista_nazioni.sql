-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 11, 2022 alle 09:12
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_lista_nazioni`
--
CREATE DATABASE IF NOT EXISTS `my_lista_nazioni` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_lista_nazioni`;

-- --------------------------------------------------------

--
-- Struttura della tabella `nazioni`
--

CREATE TABLE IF NOT EXISTS `nazioni` (
  `sigla` char(2) NOT NULL,
  `nazione` varchar(100) NOT NULL,
  PRIMARY KEY (`sigla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `nazioni`
--

INSERT INTO `nazioni` (`sigla`, `nazione`) VALUES
('AF', 'Afghanistan'),
('AO', 'Angola'),
('AR', 'Argentina'),
('BO', 'Bolivia'),
('BR', 'Brazil'),
('CA', 'Canada'),
('CL', 'Chile'),
('CN', 'China'),
('CU', 'Cuba'),
('EG', 'Egypt'),
('FR', 'France'),
('GR', 'Greece'),
('HR', 'Croatia'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IR', 'Iran'),
('IT', 'Italy'),
('JP', 'Japan'),
('LU', 'Luxembourg'),
('MG', 'Madagascar'),
('MK', 'Macedonia'),
('MN', 'Mongolia'),
('NO', 'Norway'),
('PA', 'Panama'),
('PE', 'Peru'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PS', 'Palestinian Territory'),
('PT', 'Portugal'),
('RU', 'Russia'),
('SE', 'Sweden'),
('SN', 'Senegal'),
('TD', 'Chad'),
('TH', 'Thailand'),
('US', 'United States'),
('VN', 'Vietnam'),
('YE', 'Yemen');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
