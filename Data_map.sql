-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.28 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for data_map
CREATE DATABASE IF NOT EXISTS `data_map` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `data_map`;

-- Dumping structure for table data_map.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int NOT NULL,
  `username` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullname` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- Dumping data for table data_map.account: ~4 rows (approximately)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`, `username`, `password`, `fullname`) VALUES
	(1, 'tung', '5122001', 'Bui Van Tung'),
	(2, 'dung', '12345', 'Dang Quang Dung'),
	(3, 'minhanh', '12345', 'Vu Minh Anh'),
	(4, 'hungdn', '12345', 'Dang Ngoc Hung');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Dumping structure for table data_map.bevent
CREATE TABLE IF NOT EXISTS `bevent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bin` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '0',
  `status` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK__bin` (`id_bin`),
  CONSTRAINT `FK__bin` FOREIGN KEY (`id_bin`) REFERENCES `bin` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.bevent: ~6 rows (approximately)
/*!40000 ALTER TABLE `bevent` DISABLE KEYS */;
INSERT INTO `bevent` (`id`, `id_bin`, `status`) VALUES
	(1, 'NVT123', 'full'),
	(2, 'NVT14678', 'full'),
	(3, 'NVT2132', 'full'),
	(5, 'NVT2132', 'full'),
	(6, 'NVT2132', 'full'),
	(7, 'NVT2132', 'full'),
	(8, 'NVT2132', 'full');
/*!40000 ALTER TABLE `bevent` ENABLE KEYS */;

-- Dumping structure for table data_map.bin
CREATE TABLE IF NOT EXISTS `bin` (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `CREATEDDATE` date DEFAULT NULL,
  `OWNERS` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `NAMES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `WEIGHTS` float NOT NULL,
  `HEIGHT` float NOT NULL,
  `LATITUDE` float NOT NULL,
  `LONGITUDE` float NOT NULL,
  `STATUSES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ADDRESSES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.bin: ~13 rows (approximately)
/*!40000 ALTER TABLE `bin` DISABLE KEYS */;
INSERT INTO `bin` (`ID`, `CREATEDDATE`, `OWNERS`, `NAMES`, `WEIGHTS`, `HEIGHT`, `LATITUDE`, `LONGITUDE`, `STATUSES`, `ADDRESSES`) VALUES
	('NVT123', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0392, 105.836, 'mid', 'Ha Noi'),
	('NVT14678', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0316, 105.821, 'full', 'Ha Noi'),
	('NVT2132', '2022-04-08', 'Bui Van Tung', 'Bui Van Tung', 120301, 891, 21.0422, 105.83, 'empty', 'Ha Noi'),
	('NVT23', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0282, 105.832, 'full', 'Ha Noi'),
	('NVT234', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0326, 105.841, 'full', 'Ha Noi'),
	('NVT3467', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0267, 105.828, 'full', 'Ha Noi'),
	('NVT44678', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0316, 105.821, 'full', 'Ha Noi'),
	('NVT4678', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0316, 105.821, 'full', 'Ha Noi'),
	('NVT534', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0264, 105.841, 'full', 'Ha Noi'),
	('NVT5346', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0277, 105.825, 'full', 'Ha Noi'),
	('NVT53467', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0382, 105.825, 'full', 'Ha Noi'),
	('NVT544678', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0316, 105.821, 'full', 'Ha Noi'),
	('NVT54678', NULL, 'Bui Van Tung', 'Bui Van Tung', 150, 70, 21.0316, 105.821, 'full', 'Ha Noi');
/*!40000 ALTER TABLE `bin` ENABLE KEYS */;

-- Dumping structure for table data_map.binstatelog
CREATE TABLE IF NOT EXISTS `binstatelog` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_BIN` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `STATUSES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `DATETIMES` datetime DEFAULT NULL,
  `DESCRIPTIONS` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  PRIMARY KEY (`ID`),
  KEY `FK_binstatelog_bin` (`ID_BIN`),
  CONSTRAINT `FK_binstatelog_bin` FOREIGN KEY (`ID_BIN`) REFERENCES `bin` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.binstatelog: ~0 rows (approximately)
/*!40000 ALTER TABLE `binstatelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `binstatelog` ENABLE KEYS */;

-- Dumping structure for table data_map.driver
CREATE TABLE IF NOT EXISTS `driver` (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `FULLNAME` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ADDRESSES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `PHONE` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `GENDER` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `BIRTH` date DEFAULT NULL,
  `IMAGES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `STATUSES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.driver: ~6 rows (approximately)
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` (`ID`, `FULLNAME`, `ADDRESSES`, `PHONE`, `GENDER`, `BIRTH`, `IMAGES`, `STATUSES`) VALUES
	('B19DCCN048', 'Vũ Minh Anh', 'Bắc Giang', '0877829956', 'Nam', NULL, NULL, 'Free'),
	('B19DCCN120', 'Đặng Quang Dũng', 'Hưng Yên', '0271723133', 'Nam', NULL, NULL, 'Free'),
	('B19DCCN123', 'Ma Dong Seok', 'Seun', '09129389', 'male', '2022-04-06', 'a.jpg', 'On work'),
	('B19DCCN124', 'Ma Dong Seok', 'Đèo Cà', '0966241210', 'male', '2022-04-14', '275129929_500988941393807_4176404344829903322_n.jpg', 'On work'),
	('B19DCCN488', 'Bùi Cảnh Nhuận', 'Phú Thọ', '0123891331', 'Nam', NULL, NULL, 'Free'),
	('B19DCCN625', 'Bùi Văn Tùng', 'Hà Nội', '0986420512', 'Nam', NULL, NULL, 'Free');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;

-- Dumping structure for table data_map.drivervehicle
CREATE TABLE IF NOT EXISTS `drivervehicle` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_VEHICLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ID_DRIVER` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `DATETIMES` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_drivervehicle_vehicle` (`ID_VEHICLE`),
  KEY `FK_drivervehicle_driver` (`ID_DRIVER`),
  CONSTRAINT `FK_drivervehicle_driver` FOREIGN KEY (`ID_DRIVER`) REFERENCES `driver` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_drivervehicle_vehicle` FOREIGN KEY (`ID_VEHICLE`) REFERENCES `vehicle` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.drivervehicle: ~0 rows (approximately)
/*!40000 ALTER TABLE `drivervehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `drivervehicle` ENABLE KEYS */;

-- Dumping structure for table data_map.history
CREATE TABLE IF NOT EXISTS `history` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_VEHICLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ID_BIN` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `DATETIMES` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_history_vehicle` (`ID_VEHICLE`),
  KEY `FK_history_bin` (`ID_BIN`),
  CONSTRAINT `FK_history_bin` FOREIGN KEY (`ID_BIN`) REFERENCES `bin` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_history_vehicle` FOREIGN KEY (`ID_VEHICLE`) REFERENCES `vehicle` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.history: ~0 rows (approximately)
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;

-- Dumping structure for table data_map.task
CREATE TABLE IF NOT EXISTS `task` (
  `ID_VEHICLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ID_BIN` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TIMES` int DEFAULT NULL,
  `ROUTED` int DEFAULT NULL,
  PRIMARY KEY (`ID_VEHICLE`,`ID_BIN`),
  KEY `FK_task_bin` (`ID_BIN`),
  CONSTRAINT `FK_task_bin` FOREIGN KEY (`ID_BIN`) REFERENCES `bin` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_task_vehicle` FOREIGN KEY (`ID_VEHICLE`) REFERENCES `vehicle` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.task: ~0 rows (approximately)
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;

-- Dumping structure for table data_map.temporary
CREATE TABLE IF NOT EXISTS `temporary` (
  `id` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `username` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `password` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `fullname` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.temporary: ~0 rows (approximately)
/*!40000 ALTER TABLE `temporary` DISABLE KEYS */;
INSERT INTO `temporary` (`id`, `username`, `password`, `fullname`) VALUES
	('3', 'minhanh', '12345', 'Vu Minh Anh');
/*!40000 ALTER TABLE `temporary` ENABLE KEYS */;

-- Dumping structure for table data_map.vehicle
CREATE TABLE IF NOT EXISTS `vehicle` (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '0',
  `CODE` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TYPED` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `LICENSE` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `IMEI` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TIMESTAMPS` date DEFAULT NULL,
  `LATITUDE` double NOT NULL DEFAULT '0',
  `LONGITUDE` double NOT NULL DEFAULT '0',
  `WEIGHTS` float NOT NULL,
  `ADDRESSES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `IMAGES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  `STATUSES` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.vehicle: ~6 rows (approximately)
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` (`ID`, `CODE`, `TYPED`, `LICENSE`, `IMEI`, `TIMESTAMPS`, `LATITUDE`, `LONGITUDE`, `WEIGHTS`, `ADDRESSES`, `IMAGES`, `STATUSES`) VALUES
	('HN123', '12332', '15T-BT', 'HN123879', 'htjka', NULL, 12.970000267028809, 12.312299728393555, 124214, 'HN', 'xe-do-rac.jpg', 'On work'),
	('HN1234', 'HNA', 'askdjla', 'jlkdasjdkla', '', NULL, 21.03471, 105.82746, 1233, 'HN', 'xe-cho-rac-0857.jpg', 'On work'),
	('HN785', '13213', '15B-FT', 'HN12356', 'GHJ87', NULL, 21.026844812566484, 105.84828611658583, 1500, 'Ha Noi', 'xe-cho-rac-0857.jpg', 'Free'),
	('HN85012', '13213', '15B-FT', 'HN85012', 'GHJ87', NULL, 21.02813, 105.83189, 1500, 'Ha Noi', 'xe-cho-rac-0857.jpg', 'On work'),
	('HN859', '13213', '15B-FT', 'HN859', 'GHJ87', NULL, 21.03279, 105.84104, 1500, 'Ha Noi', 'xe-cho-rac-0857.jpg', 'On work'),
	('HN8590', '13213', '15B-FT', 'HN8590', 'GHJ87', NULL, 21.040759713970164, 105.84009697172624, 1500, 'Ha Noi', 'xe-do-rac.jpg', 'Free');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;

-- Dumping structure for table data_map.vevent
CREATE TABLE IF NOT EXISTS `vevent` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_VEHICLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `SPEED` float NOT NULL,
  `ANGLE` float NOT NULL,
  `ODOMETER` float NOT NULL,
  `ENGINEHOURS` float NOT NULL,
  `ALTITUDE` float NOT NULL,
  `TIMEPOSITION` datetime DEFAULT NULL,
  `TIMESERVER` datetime DEFAULT NULL,
  `LATITUDE` float NOT NULL,
  `LONGITUDE` float NOT NULL,
  `ERROR_TITLE` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  PRIMARY KEY (`ID`),
  KEY `FK_event_vehicle` (`ID_VEHICLE`),
  CONSTRAINT `FK_event_vehicle` FOREIGN KEY (`ID_VEHICLE`) REFERENCES `vehicle` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_vietnamese_ci;

-- Dumping data for table data_map.vevent: ~15 rows (approximately)
/*!40000 ALTER TABLE `vevent` DISABLE KEYS */;
INSERT INTO `vevent` (`ID`, `ID_VEHICLE`, `SPEED`, `ANGLE`, `ODOMETER`, `ENGINEHOURS`, `ALTITUDE`, `TIMEPOSITION`, `TIMESERVER`, `LATITUDE`, `LONGITUDE`, `ERROR_TITLE`) VALUES
	(1, 'HN123', 12, 12, 12, 12, 12, NULL, NULL, 12, 12, 'Over speed'),
	(2, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(3, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(4, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(5, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(25, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(26, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(27, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(28, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(29, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(30, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(31, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(32, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(33, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(34, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(35, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route'),
	(36, 'HN785', 13, 13, 13, 13, 13, NULL, NULL, 13, 13, 'Moving on the wrong route');
/*!40000 ALTER TABLE `vevent` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
