-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.8


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema internetbanking
--

CREATE DATABASE IF NOT EXISTS internetbanking;
USE internetbanking;

--
-- Definition of table `accoutinfo`
--

DROP TABLE IF EXISTS `accoutinfo`;
CREATE TABLE `accoutinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acnumber` varchar(100) DEFAULT NULL,
  `cifnumber` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `bid` int(10) unsigned DEFAULT NULL,
  `tid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bid` (`bid`),
  KEY `tid` (`tid`),
  CONSTRAINT `bid` FOREIGN KEY (`bid`) REFERENCES `branch` (`id`),
  CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `transaction` (`id`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accoutinfo`
--

/*!40000 ALTER TABLE `accoutinfo` DISABLE KEYS */;
INSERT INTO `accoutinfo` (`id`,`acnumber`,`cifnumber`,`balance`,`uid`,`bid`,`tid`) VALUES 
 (1,'1000000000',NULL,NULL,1,NULL,NULL),
 (2,'1000000002',NULL,NULL,2,NULL,NULL),
 (3,'1000000003',NULL,NULL,3,NULL,NULL),
 (4,'1000000004',NULL,NULL,4,NULL,NULL),
 (5,'1000000005',NULL,NULL,5,NULL,NULL);
/*!40000 ALTER TABLE `accoutinfo` ENABLE KEYS */;


--
-- Definition of table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `line1` varchar(45) NOT NULL,
  `line2` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `pincode` int(10) unsigned NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_address_1` (`userId`),
  CONSTRAINT `FK_address_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`id`,`line1`,`line2`,`city`,`pincode`,`state`,`country`,`type`,`userId`) VALUES 
 (1,'sai chauk','new sangvi','pune',411027,'Maharashtra','India',1,1),
 (2,'Malkapur','Buldhana','Malkapur',443101,'Maharashtra','india',2,1),
 (3,'sai chauk11','new sangvi','pune',411027,'Maharashtra','India',1,2),
 (4,'sai chauk11','new sangvi','pune',411027,'Maharashtra','India',2,2),
 (5,'Kothrud','kothrud depo','pune',411027,'Maharashtra','India',1,3),
 (6,'Jaysinghpur','Kolhapur','Malkapur',425461,'Maharashtra','india',2,3),
 (7,'Pune','new sangvi','pune',541555,'Maharashtra','India',1,4),
 (8,'Pune','Pune','pune',455555,'Maharashtra','india',2,4),
 (9,'New Sangvi','Hp Gas','Pune',411111,'Maha','Ind',1,5),
 (10,'Karvenagar','Ram Mandir','Pune',412222,'Maha','India',2,5);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


--
-- Definition of table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(100) NOT NULL,
  `code` int(10) unsigned NOT NULL,
  `primary_phone_number` varchar(45) NOT NULL,
  `secondary_phone_number` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `ifsc_code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` (`id`,`name`,`address`,`city`,`code`,`primary_phone_number`,`secondary_phone_number`,`email`,`ifsc_code`) VALUES 
 (1,'New Sangvi','New sangvi ,Sai Chauk,Pimpri Chinchwad','Shivaji Nagar Pune',341546,'1246224524','4514521452','ibnewsangvi@internet.com','Ifsc66221'),
 (2,'old sangvi','old sangvi ,shitole Chauk,Pimpri Chinchwad','pune',25215623,'5256368542','3563258925','iboldsangvi@internet.com','Ifsc66252'),
 (3,'kothrud','kothrud depo pune','pune',136521,'52541215','1525412145','ibkothrud@internet.com','Ifsc662218'),
 (5,'karve nagar','karve putla pune','pune',58521,'4512541456','4563214636','ibkarvenagar@internet.com','Ifsc745854');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;


--
-- Definition of table `customertype`
--

DROP TABLE IF EXISTS `customertype`;
CREATE TABLE `customertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usertype_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_customertype_1` (`usertype_id`),
  CONSTRAINT `FK_customertype_1` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertype`
--

/*!40000 ALTER TABLE `customertype` DISABLE KEYS */;
INSERT INTO `customertype` (`id`,`usertype_id`,`type`) VALUES 
 (1,1,2),
 (2,2,1),
 (3,2,1),
 (4,2,1),
 (5,1,1),
 (6,1,1),
 (7,1,1);
/*!40000 ALTER TABLE `customertype` ENABLE KEYS */;


--
-- Definition of table `security_question`
--

DROP TABLE IF EXISTS `security_question`;
CREATE TABLE `security_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security_question`
--

/*!40000 ALTER TABLE `security_question` DISABLE KEYS */;
INSERT INTO `security_question` (`id`,`name`) VALUES 
 (2,'What is your favourite game?'),
 (3,'what is your favourite book?'),
 (4,'what is your date of birth?'),
 (5,'who is your best friend?'),
 (6,'what is your favourite book?');
/*!40000 ALTER TABLE `security_question` ENABLE KEYS */;


--
-- Definition of table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debit` float DEFAULT NULL,
  `credit` float DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `acnumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` int(10) unsigned DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `primary_phone_number` varchar(45) DEFAULT NULL,
  `secondary_phone_number` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `aadharcard` varchar(45) DEFAULT NULL,
  `pancard` varchar(45) DEFAULT NULL,
  `question_id` int(10) unsigned DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `account_status` int(10) unsigned DEFAULT NULL,
  `residential_status` int(10) unsigned DEFAULT NULL,
  `acccount_creation_date` date DEFAULT NULL,
  `password_modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_access_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usertype` int(10) unsigned DEFAULT NULL,
  `customertype` int(10) unsigned DEFAULT NULL,
  `image` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`first_name`,`last_name`,`gender`,`mother_name`,`email`,`primary_phone_number`,`secondary_phone_number`,`date_of_birth`,`aadharcard`,`pancard`,`question_id`,`answer`,`user_name`,`password`,`account_status`,`residential_status`,`acccount_creation_date`,`password_modified_date`,`profile_modified_date`,`last_access_time`,`usertype`,`customertype`,`image`) VALUES 
 (1,'vaibhav','Narkhede',1,'Mangala','vaibhavn24@gmail.com','7507688406','9049948480','2000-04-06','425614826232','4623460',2,'8z/jb9DB4s56RygJgBqEWg==','vaibhav','DKeLobWySP2KPpsBxeB7vg==',1,1,'2017-04-26','2017-04-26 18:48:17','2017-04-26 18:48:17','2017-04-26 18:48:17',1,2,NULL),
 (2,'Nilesh11','Bhrambe',1,'Nirmala','vaibhavn24@gmail.com','7507688406','4861296250','2000-04-06','425614826232','4623460',2,'P1WUpvGgqUs=','nilesh','aXZj0JC40M7YXRHq9wnkUA==',1,1,'2017-04-26','2017-04-26 18:55:25','2017-04-26 18:55:25','2017-04-26 18:55:25',2,2,''),
 (3,'Anuradha','Patil',2,'S','patil.anuradha069@gmail.com','5555555555','9049948480','2000-04-06','425614826232','4623460',3,'iedCDkv8WuU=','anuradha','/vATQLQwH5/m2Ov6hBDeYw==',1,1,'2017-04-26','2017-04-26 19:02:57','2017-04-26 19:02:57','2017-04-26 19:02:57',3,2,NULL),
 (4,'shra','Male',2,'Asha','shraddha.male1092@gmail.com','7507688406','5615555555','2016-04-01','1111111111','4623460',2,'8z/jb9DB4s56RygJgBqEWg==','sharddha','drWxXYERfcE=',1,1,'2017-04-26','2017-04-26 19:06:28','2017-04-26 19:06:28','2017-04-26 19:06:28',4,1,NULL),
 (5,'Pravin','Chopade',1,'P','pravin1@gmail.com','9855222222','9966666222','1991-01-11','88554466','AuZ4255',2,'7xxnhXy59CU=','pravin','RDufJqP5kmPYXRHq9wnkUA==',1,1,'2017-05-02','2017-05-02 15:08:15','2017-05-02 15:08:15','2017-05-02 15:08:15',4,1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` (`id`,`name`) VALUES 
 (1,'SuperAdmin'),
 (2,'Admin'),
 (3,'Employee'),
 (4,'Customer');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
