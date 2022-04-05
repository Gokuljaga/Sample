/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - bank
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bank` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bank`;

/*Table structure for table `addcluster` */

DROP TABLE IF EXISTS `addcluster`;

CREATE TABLE `addcluster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(200) DEFAULT NULL,
  `cname` varchar(200) DEFAULT NULL,
  `bank` varchar(200) DEFAULT NULL,
  `micr` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `brach` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `addcluster` */

insert  into `addcluster`(`id`,`cid`,`cname`,`bank`,`micr`,`ifsc`,`brach`,`address`) values (1,'c_001','construction','IOB','680098379','IOB00986573','Kumbakonam','chennai\r\n'),(2,'reg_2','sathya','IOB','638938373','IOB002981','','');

/*Table structure for table `addtrans` */

DROP TABLE IF EXISTS `addtrans`;

CREATE TABLE `addtrans` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `work` varchar(220) DEFAULT NULL,
  `day` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `clu` varchar(200) DEFAULT NULL,
  `tcost` varchar(200) DEFAULT NULL,
  `bank` varchar(200) DEFAULT NULL,
  `micr` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `brach` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `addtrans` */

insert  into `addtrans`(`sno`,`id`,`name`,`work`,`day`,`cost`,`clu`,`tcost`,`bank`,`micr`,`ifsc`,`brach`) values (1,'Emp-3','sathya','java','12','80','construction','80','IOB','680098379','IOB00986573','Kumbakonam');

/*Table structure for table `addwork` */

DROP TABLE IF EXISTS `addwork`;

CREATE TABLE `addwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empid` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `work` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `des` text,
  `cluster` varchar(200) DEFAULT NULL,
  `Request` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `addwork` */

insert  into `addwork`(`id`,`empid`,`name`,`work`,`dates`,`cost`,`des`,`cluster`,`Request`) values (1,'Emp-5','sathyapraba','interior design','12','30,000','work is very hard',NULL,NULL),(3,'Emp-3','sathya','java','12','80','efer','construction',NULL);

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `empid` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `cluster` varchar(200) DEFAULT NULL,
  `Request` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `emp` */

insert  into `emp`(`id`,`empid`,`name`,`pass`,`dob`,`phone`,`email`,`address`,`role`,`cluster`,`Request`) values (1,'Emp-1','bhuvi','bhuvi','27/05/1993','7708150152','bhuvana.vlsa@gmail.com','Vadapalani','Java Developer',NULL,NULL),(2,'Emp-2','priya','priya','26-09-2017','7708150152','priya@gmail.com','Thanjavur','Dotnet Developer',NULL,NULL),(3,'Emp-3','sathya','sathya','21/01/1999','985141578','cvsathyavani1999@gmail.com','chennai','java','construction','Waiting'),(4,'Emp-4','praba','praba','23/05/1997','8907654321','cvsathyavani1999@gmail.com','chennai','java developer',NULL,NULL),(5,'Emp-5','sathyapraba','sathya','21/01/1999','9837862772','cvsathyavani1999@gmail.com','chennai','interior design','construction','Reject');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
