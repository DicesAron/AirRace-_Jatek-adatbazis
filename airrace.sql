-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 30. 10:28
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `airrace`
--
create DATABASE if not exists airrace default charset utf8 collate utf8_hungarian_ci;
use airrace;
-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `akadaly`
--

CREATE TABLE `akadaly` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `palya` int(11) NOT NULL,
  `ido` time NOT NULL,
  `teljesitve` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `akadaly`
--

INSERT INTO `akadaly` (`ID`, `userID`, `palya`, `ido`, `teljesitve`) VALUES
(2, 4, 1, '00:20:00', 1),
(3, 4, 2, '00:00:00', 0),
(4, 4, 3, '00:00:00', 0),
(5, 5, 1, '00:00:30', 0),
(6, 5, 2, '00:00:00', 0),
(7, 5, 3, '00:00:00', 0),
(8, 6, 1, '00:00:00', 0),
(9, 6, 2, '00:00:00', 0),
(10, 6, 3, '00:00:00', 0),
(11, 7, 1, '00:00:00', 0),
(12, 7, 2, '00:00:00', 0),
(13, 7, 3, '00:00:00', 0),
(14, 8, 1, '00:00:00', 0),
(15, 8, 2, '00:00:00', 0),
(16, 8, 3, '00:00:00', 0),
(17, 9, 1, '00:01:37', 1),
(18, 9, 2, '00:00:00', 0),
(19, 9, 3, '00:00:00', 0),
(20, 10, 1, '00:01:33', 1),
(21, 10, 2, '00:01:47', 1),
(22, 10, 3, '00:00:00', 0),
(23, 11, 1, '00:00:00', 0),
(24, 11, 2, '00:00:00', 0),
(25, 11, 3, '00:00:00', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kikepzes`
--

CREATE TABLE `kikepzes` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `palya` int(11) NOT NULL,
  `tejesitve` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kikepzes`
--

INSERT INTO `kikepzes` (`ID`, `userID`, `palya`, `tejesitve`) VALUES
(1, 3, 1, 1),
(2, 4, 1, 1),
(3, 4, 2, 1),
(4, 5, 1, 1),
(5, 5, 2, 1),
(6, 6, 1, 1),
(7, 6, 2, 1),
(8, 7, 1, 0),
(9, 7, 2, 0),
(10, 8, 1, 0),
(11, 8, 2, 0),
(12, 9, 1, 1),
(13, 9, 2, 1),
(14, 10, 1, 1),
(15, 10, 2, 1),
(16, 11, 1, 0),
(17, 11, 2, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Nev` varchar(12) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`ID`, `Nev`, `Email`, `Pass`) VALUES
(1, 'Alma', 'Alma@gmail.com', 'Alma12'),
(2, 'Alma2', 'Alma@gmail.com', 'Alma12'),
(3, 'teszt', 'teszt@teszt.com', 'Teszt12'),
(4, 'Aron', 'Aron@gmail.com', 'Aron12'),
(5, 'Aron2', 'Aron@gmail.com', 'Aron12'),
(6, 'Aron3', 'Aron@gmail.com', 'Aron12'),
(7, 'Aron4', 'Email@email.email', 'Aron12'),
(8, 'a', 'a@a.com', 'Alma12'),
(9, 'geri', 'geri@dsm.sbcraft.hu', 'Admin1234*'),
(10, 'Laci', 'Laci@laci.com', 'Laci12'),
(11, 'Email', 'Email@email.com', 'Admin123');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `akadaly`
--
ALTER TABLE `akadaly`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- A tábla indexei `kikepzes`
--
ALTER TABLE `kikepzes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `akadaly`
--
ALTER TABLE `akadaly`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `kikepzes`
--
ALTER TABLE `kikepzes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `akadaly`
--
ALTER TABLE `akadaly`
  ADD CONSTRAINT `akadaly_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`);

--
-- Megkötések a táblához `kikepzes`
--
ALTER TABLE `kikepzes`
  ADD CONSTRAINT `kikepzes_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
