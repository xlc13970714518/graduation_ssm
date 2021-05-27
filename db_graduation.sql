/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.60 : Database - db_graduation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_graduation` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_graduation`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`id`,`name`,`password`) values (1,'张三','123456');

/*Table structure for table `t_dept` */

DROP TABLE IF EXISTS `t_dept`;

CREATE TABLE `t_dept` (
  `dept_id` int(11) unsigned NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_dept` */

insert  into `t_dept`(`dept_id`,`dept_name`) values (16001,'计算机系'),(16002,'人文系'),(16003,'电子系'),(16004,'理工系'),(16005,'生物系'),(16006,'化学系');

/*Table structure for table `t_major` */

DROP TABLE IF EXISTS `t_major`;

CREATE TABLE `t_major` (
  `major_id` int(11) NOT NULL,
  `major_name` varchar(30) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_major` */

insert  into `t_major`(`major_id`,`major_name`,`dept_name`,`dept_id`) values (10001,'软件工程','计算机系',16001),(10002,'计算机应用技术','计算机系',16001),(10003,'英语','人文系',16002),(10004,'会计','理工系',16004),(10005,'电子商务','电子系',16003),(10006,'互联网','计算机系',16001),(10007,'大数据','计算机系',16001),(10008,'人工智能','计算机系',16001),(10009,'电子工程','电子系',16003),(10010,'生物工程','生物系',16005),(10011,'化学工程','化学系',16006),(10012,'物理学','物理系',16007);

/*Table structure for table `t_papertitle` */

DROP TABLE IF EXISTS `t_papertitle`;

CREATE TABLE `t_papertitle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title_name` varchar(50) NOT NULL,
  `properties` varchar(50) NOT NULL,
  `teacher_name` varchar(20) NOT NULL,
  `required` varchar(500) NOT NULL,
  `title_major` varchar(20) NOT NULL,
  `choose_status` int(5) NOT NULL DEFAULT '0',
  `sure_status` int(5) NOT NULL DEFAULT '0',
  `dept` varchar(20) NOT NULL,
  `teacher_num` int(15) NOT NULL,
  PRIMARY KEY (`id`,`title_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_papertitle` */

insert  into `t_papertitle`(`id`,`title_name`,`properties`,`teacher_name`,`required`,`title_major`,`choose_status`,`sure_status`,`dept`,`teacher_num`) values (1,'超市管理系统','应用与理论结合研究','张好','网页系统及其他要求','软件工程',1,1,'计算机系',100001),(2,'酒店管理系统','应用与理论结合研究','李小明','网页系统及其他要求','计算机科学与技术',1,1,'计算机系',100002),(3,'老人摔倒在地上该不该扶','理论研究','张好','查阅资料，结合资料和个人想法写一篇不少于1万2千字的论文，中文英文各一份。          ','英语',1,1,'人文系',100001),(4,'关于中国大学当前教育模式','理论研究','张好','查阅资料，写一篇深刻的论文，字数不少于1万字           ','英语',1,1,'人文系',100001),(5,'高校图书管理系统','应用与理论结合研究','小王','系统主要功能要实现，论文必须借助图表来表达，字数不少4000字。       ','软件工程',0,0,'计算机系',100023),(6,'高校学生选课系统','应用与理论结合研究','小王','系统功能基本要实现，论文字数不少于4000字。','计算机应用技术',0,0,'计算机系',100023),(7,'高校学生签到系统','应用与理论结合研究','小王','系统功能基本实现，论文字数不少于4000字。     ','软件工程',0,0,'计算机系',100023);

/*Table structure for table `t_student` */

DROP TABLE IF EXISTS `t_student`;

CREATE TABLE `t_student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '123456',
  `sex` varchar(2) NOT NULL,
  `major` varchar(20) NOT NULL,
  `enyear` varchar(15) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `options` int(2) NOT NULL DEFAULT '0',
  `papertitleid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100017 DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`id`,`number`,`name`,`password`,`sex`,`major`,`enyear`,`phonenumber`,`qq`,`dept`,`options`,`papertitleid`) values (100001,1600001,'小明','111111','男','计算机科学与技术','2016-09-01','121432153','31514264','计算机系',1,2),(100002,1600002,'小红','123456','女','软件工程','2016-09-01','123152235','26357767','计算机系',1,1),(100004,1600003,'张良','123456','男','计算机科学与技术','2000-08-03','1243154363','1242134','计算机系',0,0),(100005,1600004,'妲己','123456','女','英语','2016-11-09','15121546357253','154566','人文系',1,4),(100006,1600005,'安安琪拉','123456','女','电子商务','2016-01-09','134253627','625372','计算机系',0,0),(100008,1600009,'李白','123456','男','会计','2016-01-09','14565273246','4326','人文系',1,3),(100009,1600010,'阿珂','123456','女','英语','2016-01-09','1352463735','3277','人文系',0,0),(100010,1600011,'孙悟空','123456','男','软件工程','2020-01-14','1546783476','534777','计算机系',0,0),(100011,1600012,'猪八戒','123456','男','会计','2019-12-31','1425633','1561461','人文系',0,0),(100012,1600014,'萌芽','123456','男','软件工程','2016-09-10','13778888832','145366','计算机系',0,0),(100016,100013,'王明亮','123456','男','互联网','2016-09-10','13245657558','2345657','计算机系',0,0);

/*Table structure for table `t_studentpapers` */

DROP TABLE IF EXISTS `t_studentpapers`;

CREATE TABLE `t_studentpapers` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `stuNum` int(10) NOT NULL,
  `paperPath` varchar(200) NOT NULL,
  `stuName` varchar(20) NOT NULL,
  `stuDept` varchar(20) NOT NULL,
  `stuMajor` varchar(20) NOT NULL,
  `checkStatus` int(2) NOT NULL DEFAULT '0',
  `teacherNum` int(15) NOT NULL,
  `paperAdvices` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `t_studentpapers` */

insert  into `t_studentpapers`(`id`,`stuNum`,`paperPath`,`stuName`,`stuDept`,`stuMajor`,`checkStatus`,`teacherNum`,`paperAdvices`) values (0000000009,1600001,'80babb6d-484b-4125-842d-1009505d13401600001【03】论文模板（带修改要求）.doc','小明','计算机系','计算机科学与技术',0,100002,NULL),(0000000010,1600009,'38fd847f-e2ca-4bc0-be2a-495cb75ffc8c1600009关于我校空中就业宣讲平台上线的通知ok.docx','李白','人文系','会计',0,100001,NULL);

/*Table structure for table `t_studentpapertitles` */

DROP TABLE IF EXISTS `t_studentpapertitles`;

CREATE TABLE `t_studentpapertitles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paperTitleName` varchar(50) NOT NULL,
  `studentName` varchar(20) NOT NULL,
  `studentNumber` int(10) NOT NULL,
  `paperTitleProperties` varchar(50) NOT NULL,
  `paperTitleRequired` varchar(100) NOT NULL,
  `major` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `teacherNum` int(15) NOT NULL,
  `teacherName` varchar(20) NOT NULL,
  `checkStatus` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_studentpapertitles` */

insert  into `t_studentpapertitles`(`id`,`paperTitleName`,`studentName`,`studentNumber`,`paperTitleProperties`,`paperTitleRequired`,`major`,`dept`,`teacherNum`,`teacherName`,`checkStatus`) values (1,'超市管理系统','小红',1600002,'应用与理论结合研究','网页系统及其他要求','软件工程','计算机系',100001,'张好',1),(3,'酒店管理系统','小明',1600001,'应用与理论结合研究','网页系统及其他要求','计算机科学与技术','计算机系',100002,'李小明',1),(4,'关于中国大学当前教育模式','妲己',1600004,'理论研究','查阅资料，写一篇深刻的论文，字数不少于1万字           ','英语','人文系',100001,'张好',1),(5,'老人摔倒在地上该不该扶','李白',1600009,'理论研究','查阅资料，结合资料和个人想法写一篇不少于1万2千字的论文，中文英文各一份。          ','英语','人文系',100001,'张好',1);

/*Table structure for table `t_teacher` */

DROP TABLE IF EXISTS `t_teacher`;

CREATE TABLE `t_teacher` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `num` int(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '321321',
  `position` varchar(10) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  PRIMARY KEY (`id`,`num`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_teacher` */

insert  into `t_teacher`(`id`,`num`,`name`,`password`,`position`,`phonenumber`,`qq`) values (1,100001,'张好','123456','副教授','13970714518','543256343'),(2,100002,'李小明','321321','教授','13456','413563'),(3,100003,'将小花','321321','教授','123425326','12456'),(4,100004,'王小丑','321321','教授','145632363','2567'),(6,100023,'小王','321321','系主任','1542467789','54657689');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
