-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.33-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema learning
--

CREATE DATABASE IF NOT EXISTS learning;
USE learning;

--
-- Definition of table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `Courseid` int(10) unsigned NOT NULL,
  `Branchid` int(10) unsigned NOT NULL auto_increment,
  `Branchname` varchar(45) NOT NULL,
  `Branchicon` varchar(500) NOT NULL,
  `Branchdesc` varchar(1500) NOT NULL,
  PRIMARY KEY  (`Branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` (`Courseid`,`Branchid`,`Branchname`,`Branchicon`,`Branchdesc`) VALUES 
 (2,1,'Computer Science','','a'),
 (2,2,'Physics','','b');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;


--
-- Definition of table `categoryreg`
--

DROP TABLE IF EXISTS `categoryreg`;
CREATE TABLE `categoryreg` (
  `Catid` int(10) unsigned NOT NULL auto_increment,
  `Catname` varchar(45) NOT NULL,
  `Caticon` varchar(800) NOT NULL,
  `Catdesc` varchar(1200) NOT NULL,
  PRIMARY KEY  (`Catid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoryreg`
--

/*!40000 ALTER TABLE `categoryreg` DISABLE KEYS */;
INSERT INTO `categoryreg` (`Catid`,`Catname`,`Caticon`,`Catdesc`) VALUES 
 (1,'Education','800px-Great_Wall_of_China_July_2006.JPG','a'),
 (8,'Novel','','b');
/*!40000 ALTER TABLE `categoryreg` ENABLE KEYS */;


--
-- Definition of table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `SubCatid` int(10) unsigned NOT NULL,
  `Courseid` int(10) unsigned NOT NULL auto_increment,
  `Coursename` varchar(45) default NULL,
  `Courseicon` varchar(500) default NULL,
  `Coursedesc` varchar(1500) default NULL,
  `Catid` int(10) unsigned default NULL,
  PRIMARY KEY  (`Courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`SubCatid`,`Courseid`,`Coursename`,`Courseicon`,`Coursedesc`,`Catid`) VALUES 
 (22,2,'MSc','','a',1),
 (22,3,'MCA','','b',1);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


--
-- Definition of table `subcategoryreg`
--

DROP TABLE IF EXISTS `subcategoryreg`;
CREATE TABLE `subcategoryreg` (
  `Catid` int(10) unsigned NOT NULL,
  `SubCatid` int(10) unsigned NOT NULL auto_increment,
  `SubCatname` varchar(45) NOT NULL,
  `SubCaticon` varchar(800) NOT NULL,
  `SubCatdesc` varchar(1200) NOT NULL,
  PRIMARY KEY  (`SubCatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategoryreg`
--

/*!40000 ALTER TABLE `subcategoryreg` DISABLE KEYS */;
INSERT INTO `subcategoryreg` (`Catid`,`SubCatid`,`SubCatname`,`SubCaticon`,`SubCatdesc`) VALUES 
 (1,21,'Engineering','','a'),
 (8,22,'Science','','');
/*!40000 ALTER TABLE `subcategoryreg` ENABLE KEYS */;


--
-- Definition of table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `Branchid` int(10) unsigned NOT NULL,
  `Subid` int(10) unsigned NOT NULL auto_increment,
  `Subname` varchar(45) NOT NULL,
  `Subicon` varchar(500) NOT NULL,
  `Subdesc` varchar(1500) NOT NULL,
  PRIMARY KEY  USING BTREE (`Subid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`Branchid`,`Subid`,`Subname`,`Subicon`,`Subdesc`) VALUES 
 (1,1,'Computer Architecture','',''),
 (1,2,'Data Structure','','b');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;


--
-- Definition of table `topicreg`
--

DROP TABLE IF EXISTS `topicreg`;
CREATE TABLE `topicreg` (
  `Subid` int(10) unsigned default NULL,
  `topicid` int(10) unsigned NOT NULL auto_increment,
  `topicname` varchar(45) default NULL,
  `topictext` varchar(5000) default NULL,
  `topicdesc` varchar(1500) default NULL,
  `topicfile` varchar(5000) default NULL,
  `topicimg` varchar(500) default NULL,
  PRIMARY KEY  (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topicreg`
--

/*!40000 ALTER TABLE `topicreg` DISABLE KEYS */;
/*!40000 ALTER TABLE `topicreg` ENABLE KEYS */;


--
-- Definition of table `userreg`
--

DROP TABLE IF EXISTS `userreg`;
CREATE TABLE `userreg` (
  `userid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `usermob` varchar(45) default NULL,
  `useremail` varchar(45) default NULL,
  `userloginid` varchar(45) default NULL,
  `userpassword` varchar(45) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreg`
--

/*!40000 ALTER TABLE `userreg` DISABLE KEYS */;
INSERT INTO `userreg` (`userid`,`username`,`usermob`,`useremail`,`userloginid`,`userpassword`) VALUES 
 (1,'Ashish','9793139044','asheeshsahyogi.786@gmail.com','ashish','12345'),
 (2,'Amit','12132','amit@gmail.com','amit','12345'),
 (3,'Zakir','655465','zakirkhan@gmail.com','zakir','perfect');
/*!40000 ALTER TABLE `userreg` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
