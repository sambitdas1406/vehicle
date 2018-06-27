/*
SQLyog - Free MySQL GUI v5.02
Host - 5.1.69-community : Database - vehicle
*********************************************************************
Server version : 5.1.69-community
*/


create database if not exists `vehicle`;

USE `vehicle`;

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `uname` char(10) DEFAULT NULL,
  `pass` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert into `adminlogin` values 
('admin','admin1234');

/*Table structure for table `db1` */

DROP TABLE IF EXISTS `db1`;

CREATE TABLE `db1` (
  `job_id` int(10) NOT NULL AUTO_INCREMENT,
  `job_no` int(200) NOT NULL,
  `regd_no` varchar(20) DEFAULT NULL,
  `model` char(200) DEFAULT NULL,
  `mileage` double(100,0) DEFAULT NULL,
  `chassis_no` char(250) DEFAULT NULL,
  `engine_no` char(30) DEFAULT NULL,
  `mdate` char(20) DEFAULT NULL,
  `sdate` char(20) DEFAULT NULL,
  `firstname` char(10) DEFAULT NULL,
  `lastname` char(10) DEFAULT NULL,
  `emailid` char(30) DEFAULT NULL,
  `nature` char(200) DEFAULT NULL,
  `gender` char(20) DEFAULT NULL,
  `address` char(200) DEFAULT NULL,
  `mobile_no` longblob,
  `pincode` int(6) DEFAULT NULL,
  PRIMARY KEY (`job_id`,`job_no`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

/*Data for the table `db1` */

insert into `db1` values 
(123,53965062,'66666','pulsure',65,'abcd2222','sss123','2018-06-01','2018-06-03','sumit','kumar','sakya@gmail.com','sss','male','cuttack','1234567890',754209),
(127,594999349,'12','pulsure',60,'abcd','efgh','2018-06-01','2018-06-09','amiya','behera','amiya@gmail.com','sss','male','bbsr','6656548877',754209),
(142,257563974,'6655','tvs',70,'aaaaaa','gfsdss','2018-06-02','2018-06-02','bikram','sao','sakya@gmail.com','sss','male','bbsr','9658104371',754209),
(144,701147920,'1234','Activa g4',50,'abcd2222','bbbbbbbbb','2018-06-13','2018-06-20','abhi','behera','abhi@gmail.com','job for repairing','male','bbsr','9861149799',754209),
(145,629097505,'14','apache tomcat',60,'abcd2222','gfsdss','2018-06-01','2018-06-21','sumit','sahoo','sumit@rakbdigital.com','job for repairing','male','bbsr','8855221455',754209),
(146,935721513,'100','asis',60,'abcd2222','bbbbbbbbb','2018-06-08','2018-06-21','asis','kumar','asis@gmail.com','job for repairing','male','bbsr','6655889874',754209),
(150,143895576,'AP-02-BK-1084','jio4g',50,'aaddvvcc123','adscd123','14/06/1997','23/06/2018','sumit','sahoo','sumit@gmail.com','repair','male','bbsr','9988774422',754209),
(151,207885672,'AP-19-AK-2804','apache',50,'abcd2222','bbbbbbbbb','2018-06-01','2018-06-23','sakya','das','sakya@gmail.com','job for repairing','male','bbsr','8888855588',754209),
(153,180799502,'MH.41.UB.8192','apache',60,'abcd2222','fjfffh2424','2018-06-05','2018-06-25','subham','pattnaik','sakya@gmail.com','job for repairing','male','patia','8217394739',754209);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `eid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id` varchar(20) DEFAULT NULL,
  `firstname` char(20) DEFAULT NULL,
  `lastname` char(20) DEFAULT NULL,
  `designation` char(20) DEFAULT NULL,
  `dob` char(10) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `phone` longblob,
  `pincode` int(10) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert into `employee` values 
(07,'EMP/062518/222','abhi','das','android','2018-06-25','male','bbsr','9658104371',754209,10000),
(08,'EMP/062518/221','sambit','das','android','2018-06-25','male','patia,bbsr','9658104371',754209,10000),
(10,'EMP/062618/121','monoz','das','software','2018-05-31','male','bbsr','9658104371',754209,10000);

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `jobno` int(20) DEFAULT NULL,
  `partvalue` float DEFAULT NULL,
  `labourcharge` int(10) DEFAULT NULL,
  `discountprice` int(10) DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `limitprice` int(10) DEFAULT NULL,
  `bill` float DEFAULT NULL,
  `pay` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

/*Data for the table `invoice` */

insert into `invoice` values 
(82,53965062,100,700,0,'2018-06-27',0,800,800);

/*Table structure for table `part` */

DROP TABLE IF EXISTS `part`;

CREATE TABLE `part` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `partname` char(20) DEFAULT NULL,
  `partdesc` char(20) DEFAULT NULL,
  `brandname` char(20) DEFAULT NULL,
  `branddesc` char(20) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `udate` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `part` */

insert into `part` values 
(1,'tires','tire for bike','Birla','best',3,1000,'2018-06-07'),
(2,'engine','engine for car','mrf100000','best',87,10,'2018-06-08'),
(4,'gear','for bike','Horlicks','good',98,100,'2018-06-16'),
(5,'ggg','good','hhhhh','good',96,100,'2018-06-01'),
(6,'wheel','for bike','Birla','best',88,100,'2018-06-01');

/*Table structure for table `parthistory` */

DROP TABLE IF EXISTS `parthistory`;

CREATE TABLE `parthistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `part` char(10) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `job` int(10) DEFAULT NULL,
  `dateofsell` date DEFAULT NULL,
  `selltime` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

/*Data for the table `parthistory` */

insert into `parthistory` values 
(132,'gear',100,100,153774307,'2018-06-16','10:51:22'),
(133,'ggg',100,100,2867690,'2018-06-16','10:53:31'),
(134,'wheel',20,100,2867690,'2018-06-16','11:18:02'),
(135,'ggg',30,99,2867690,'2018-06-16','11:18:02'),
(136,'wheel',100,99,25,'2018-06-16','12:51:28'),
(137,'wheel',100,99,2867690,'2018-06-16','12:51:47'),
(138,'wheel',100,98,2867690,'2018-06-18','11:32:45'),
(139,'engine',100,6,2867690,'2018-06-18','13:00:10'),
(140,'kkk',21,6,2867690,'2018-06-18','13:00:10'),
(141,'engine',100,100,2867690,'2018-06-18','13:00:10'),
(142,'engine',100,99,2867690,'2018-06-19','20:39:12'),
(143,'engine',100,99,2867690,'2018-06-19','20:39:25'),
(144,'kkk',100,100,2867690,'2018-06-19','20:39:25'),
(145,'engine',100,100,2867690,'2018-06-20','16:55:55'),
(146,'engine',100,100,2867690,'2018-06-20','17:15:57'),
(147,'engine',100,6,2867690,'2018-06-21','10:09:48'),
(148,'engine',100,100,2867690,'2018-06-21','11:16:16'),
(149,'filter',200,8,2867690,'2018-06-21','11:16:16'),
(150,'engine',100,6,2867690,'2018-06-21','11:34:07'),
(151,'kkk',200,8,2867690,'2018-06-21','11:34:07'),
(152,'engine',100,100,2867690,'2018-06-21','17:36:28'),
(153,'fff',222,15,2867690,'2018-06-21','17:36:28'),
(154,'engine',100,6,2867690,'2018-06-21','19:25:01'),
(155,'kkk',100,100,2867690,'2018-06-21','19:26:27'),
(156,'engine',100,6,2867690,'2018-06-22','21:31:36'),
(157,'engine',100,8,2867690,'2018-06-23','10:45:37'),
(158,'engine',100,6,2867690,'2018-06-23','11:02:46'),
(159,'engine',100,6,2867690,'2018-06-23','11:03:35'),
(160,'engine',100,5,2867690,'2018-06-23','11:05:02'),
(161,'engine',100,5,153774307,'2018-06-23','13:08:05'),
(162,'engine',100,5,2867690,'2018-06-25','16:14:46'),
(163,'engine',100,5,2867690,'2018-06-25','16:16:52'),
(164,'engine',100,6,2867690,'2018-06-25','16:18:18'),
(165,'engine',100,5,2867690,'2018-06-25','16:20:05'),
(166,'engine',100,5,2867690,'2018-06-25','16:20:32'),
(167,'engine',100,8,2867690,'2018-06-26','10:41:51'),
(168,'engine',100,5,629097505,'2018-06-26','10:42:33'),
(169,'gear',100,99,629097505,'2018-06-27','11:01:04'),
(170,'wheel',100,90,2867690,'2018-06-27','11:14:23'),
(171,'engine',100,5,2867690,'2018-06-27','11:14:38'),
(172,'engine',100,6,701147920,'2018-06-27','11:16:21'),
(173,'wheel',1000,89,629097505,'2018-06-27','11:22:54'),
(174,'wheel',1000,89,629097505,'2018-06-27','11:29:15'),
(175,'wheel',1000,89,629097505,'2018-06-27','11:29:49'),
(176,'wheel',1000,89,629097505,'2018-06-27','11:30:05'),
(177,'wheel',1000,89,629097505,'2018-06-27','11:32:42'),
(178,'wheel',1000,89,629097505,'2018-06-27','11:33:38'),
(179,'wheel',1000,89,629097505,'2018-06-27','11:34:00'),
(180,'wheel',1000,89,629097505,'2018-06-27','11:37:24'),
(181,'wheel',1000,89,629097505,'2018-06-27','11:37:52'),
(182,'wheel',1000,89,629097505,'2018-06-27','11:40:01'),
(183,'wheel',1000,89,629097505,'2018-06-27','11:41:29'),
(184,'wheel',1000,89,629097505,'2018-06-27','11:42:10'),
(185,'engine',10,5,2867690,'2018-06-27','11:45:03'),
(186,'engine',10,5,2867690,'2018-06-27','11:45:21'),
(187,'engine',10,4,701147920,'2018-06-27','11:46:28'),
(188,'engine',10,4,701147920,'2018-06-27','11:47:58'),
(189,'engine',100,4,701147920,'2018-06-27','11:57:42'),
(190,'engine',100,5,629097505,'2018-06-27','12:02:42'),
(191,'engine',100,6,629097505,'2018-06-27','12:09:02'),
(192,'ggg',100,98,2867690,'2018-06-27','12:15:59'),
(193,'ggg',100,97,53965062,'2018-06-27','12:17:38'),
(194,'engine',100,88,53965062,'2018-06-27','12:32:33');

/*Table structure for table `salary` */

DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `eid` varchar(100) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` int(5) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `salary` */

insert into `salary` values 
(0004,'EMP/062618/121','March',2018,10000),
(0005,'EMP/062518/221','February',2018,20000);

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `userid` int(10) DEFAULT NULL,
  `email` char(20) DEFAULT NULL,
  `phone` longblob,
  `department` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */
