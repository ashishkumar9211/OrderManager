CREATE DATABASE IF NOT EXISTS ORDER_MANAGER;

CREATE TABLE `ITEM` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `PRICE` double NOT NULL,
  `QTY` int(11) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `ITEM_ORDER` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `QTY` int(11) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `TOTAL_AMT` double NOT NULL,
  `ITEM_ID` bigint(20) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ITEM_ORDER` (`ITEM_ID`),
  CONSTRAINT `FK_ITEM_ORDER` FOREIGN KEY (`ITEM_ID`) REFERENCES `ITEM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

