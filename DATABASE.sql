SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `Log` (
`ID` int(11) NOT NULL,
  `Bot` varchar(64) COLLATE latin1_german1_ci DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Type` varchar(32) COLLATE latin1_german1_ci DEFAULT NULL,
  `Message` text COLLATE latin1_german1_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

CREATE TABLE IF NOT EXISTS `Session` (
`ID` int(11) NOT NULL,
  `Bot` varchar(64) COLLATE latin1_german1_ci NOT NULL,
  `Chat` text COLLATE latin1_german1_ci NOT NULL,
  `Key` varchar(32) COLLATE latin1_german1_ci NOT NULL,
  `Content` text COLLATE latin1_german1_ci NOT NULL,
  `Array` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;


ALTER TABLE `Log`
 ADD PRIMARY KEY (`ID`);

ALTER TABLE `Session`
 ADD PRIMARY KEY (`ID`);


ALTER TABLE `Log`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
ALTER TABLE `Session`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
