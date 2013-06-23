-- MySQL dump 10.10
--
-- Host: localhost    Database: db_forum
-- ------------------------------------------------------
-- Server version	5.0.24a-community-nt-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `db_forum`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_forum` /*!40100 DEFAULT CHARACTER SET gb2312 */;

USE `db_forum`;

--
-- Table structure for table `tb_forum_affiche`
--

DROP TABLE IF EXISTS `tb_forum_affiche`;
CREATE TABLE `tb_forum_affiche` (
  `tb_affiche_id` int(10) NOT NULL auto_increment,
  `tb_affiche_subject` varchar(50) NOT NULL,
  `tb_affiche_content` mediumtext NOT NULL,
  `tb_affiche_user` varchar(50) NOT NULL,
  `tb_affiche_date` date NOT NULL,
  `tb_affiche_type` varchar(50) NOT NULL,
  `tb_affiche_counts` varchar(50) NOT NULL,
  PRIMARY KEY  (`tb_affiche_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_forum_affiche`
--


/*!40000 ALTER TABLE `tb_forum_affiche` DISABLE KEYS */;
LOCK TABLES `tb_forum_affiche` WRITE;
INSERT INTO `tb_forum_affiche` VALUES (1,'程序测试','程序测试程序测试','潘凯华','2008-04-02','软件开发','23');
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_forum_affiche` ENABLE KEYS */;

--
-- Table structure for table `tb_forum_big_type`
--

DROP TABLE IF EXISTS `tb_forum_big_type`;
CREATE TABLE `tb_forum_big_type` (
  `tb_big_type_id` int(10) NOT NULL auto_increment,
  `tb_big_type_content` varchar(50) NOT NULL,
  `tb_big_type_date` date NOT NULL,
  PRIMARY KEY  (`tb_big_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_forum_big_type`
--


/*!40000 ALTER TABLE `tb_forum_big_type` DISABLE KEYS */;
LOCK TABLES `tb_forum_big_type` WRITE;
INSERT INTO `tb_forum_big_type` VALUES (1,'美工设计','2008-03-18'),(2,'软件开发','2008-03-18'),(3,'图书开发','2008-03-28'),(4,'硬件维护','2008-03-28'),(5,'综合社区','2008-03-28'),(6,'操作系统','2008-03-28');
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_forum_big_type` ENABLE KEYS */;

--
-- Table structure for table `tb_forum_restore`
--

DROP TABLE IF EXISTS `tb_forum_restore`;
CREATE TABLE `tb_forum_restore` (
  `tb_restore_id` int(10) NOT NULL auto_increment,
  `tb_restore_subject` varchar(50) NOT NULL,
  `tb_restore_content` mediumtext NOT NULL,
  `tb_restore_user` varchar(50) NOT NULL,
  `tb_send_id` int(10) NOT NULL,
  `tb_restore_date` datetime NOT NULL,
  `tb_forum_counts` varchar(50) NOT NULL,
  `tb_restore_accessories` varchar(80) NOT NULL,
  `tb_restore_tag` int(10) NOT NULL,
  PRIMARY KEY  (`tb_restore_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_forum_restore`
--


/*!40000 ALTER TABLE `tb_forum_restore` DISABLE KEYS */;
LOCK TABLES `tb_forum_restore` WRITE;
INSERT INTO `tb_forum_restore` VALUES (4,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',30,'2008-07-11 16:32:30','31','',0),(3,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',34,'2008-07-11 16:32:30','32','',0),(5,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','潘凯华',31,'2008-07-11 16:32:30','30','',0),(6,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','潘凯华',36,'2008-07-11 16:32:30','29','',0),(7,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',36,'2008-07-11 16:32:30','28','',0),(8,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',36,'2008-07-11 16:32:30','27','',0),(9,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',37,'2008-07-11 16:32:30','26','',0),(10,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',37,'2008-07-11 16:32:30','25','',0),(11,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','555555',37,'2008-07-11 16:32:30','24','',0),(12,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','潘凯华',34,'2008-07-11 16:32:30','23','',0),(13,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','潘凯华',34,'2008-07-11 16:32:30','22','',0),(14,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','潘凯华',37,'2008-07-11 16:32:30','21','',0),(15,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',37,'2008-07-11 16:32:30','20','',0),(16,'适十狮适市适十狮适市适十狮适市适十狮适市所示','ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',37,'2008-07-11 16:32:30','19','',0),(18,'适十狮适市适十狮适市适十狮适市爽爽爽爽','顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶淡淡的','潘凯华',37,'2008-07-11 16:33:19','17','',0),(19,'11111111111','11111111111111111111111111','潘凯华',37,'2008-07-11 16:41:23','16','',0),(20,'fddfgfdgdfg','<b>dfgfdgdfgdfgdfgdfgdfgd</b>','ll',55,'2008-07-14 11:57:59','15','',0),(21,'ddfgdfg','dgdfgdfgdfgd','ll',45,'2008-07-21 16:02:17','14','',0),(22,'sdgfdgdgdfg','帖子主题:适十狮适市适十狮适市适十狮适市适十狮适市所示\r\n帖子内容:ddddddddddddd顶顶顶顶顶顶顶顶  dddd','ll',37,'2008-07-21 17:00:35','13','',0),(23,'11111111111111','11111111111111111111','ll',59,'2008-07-21 17:08:12','12','',0),(25,'dfgdfgdfgdfg','    dfgdfgdfgdfgdfg','ll',74,'2008-07-23 16:05:33','10','',1),(26,'zczczcxzcz','    zxczxczczxczc','ll',74,'2008-07-24 08:36:46','9','',0),(27,'','    ','ll',74,'2008-07-24 09:36:30','8','',0),(28,'dfgdf','    dfgdfgdfg','ll',74,'2008-07-24 09:41:40','7','',0),(29,'dfgdgdfgdf','    fghfghfghffg','ll',74,'2008-07-24 09:42:52','6','',0),(30,'gdfgfdgdf','    sdfdsfdsf','潘凯华',74,'2008-07-24 09:56:48','5','',0),(31,'sdfsdfdsf','    sdfsdfsdf','潘凯华',74,'2008-07-24 09:57:07','4','',0),(32,'sdfsdfsdfsdf','    sdfsdfsdfsd','潘凯华',74,'2008-07-24 09:58:44','3','',0),(33,'摘自（ll）：dfgdgdfgdf','    fghfghfghffg    ','ll',74,'2008-08-01 11:03:07','2','',0),(34,'PHP中控制上传文件的大小','控制上传文件大小有两种方法：\r\n第一种：应用$_FILE[]超级全局变量，判断提交的文件大小；\r\n\r\n第二种：直接更改php.ini文件中的配置文件，实现对上传文件的控制。 ','ll',76,'2008-08-01 11:13:45','1','',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_forum_restore` ENABLE KEYS */;

--
-- Table structure for table `tb_forum_send`
--

DROP TABLE IF EXISTS `tb_forum_send`;
CREATE TABLE `tb_forum_send` (
  `tb_send_id` int(10) NOT NULL auto_increment,
  `tb_send_subject` varchar(50) NOT NULL,
  `tb_send_content` mediumtext NOT NULL,
  `tb_send_user` varchar(50) NOT NULL,
  `tb_send_date` datetime NOT NULL,
  `tb_send_picture` varchar(70) NOT NULL,
  `tb_send_type` varchar(50) NOT NULL,
  `tb_send_types` varchar(50) NOT NULL,
  `tb_send_small_type` varchar(50) NOT NULL,
  `tb_send_type_distillate` varchar(50) NOT NULL,
  `tb_send_type_hotspot` varchar(50) NOT NULL,
  `tb_send_accessories` varchar(80) NOT NULL,
  `tb_forum_end` int(10) NOT NULL,
  PRIMARY KEY  (`tb_send_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_forum_send`
--


/*!40000 ALTER TABLE `tb_forum_send` DISABLE KEYS */;
LOCK TABLES `tb_forum_send` WRITE;
INSERT INTO `tb_forum_send` VALUES (36,'sdfsdfsdfsdfsdfsdfsd','fsdfsdfsdfsdfsdfsdfsdsdfsdfsfsdf','ll','2008-04-11 11:19:05','images/inchoative/face0.gif','0','1','PHP','','1','',0),(35,'sdfsdfsdfsd','技术中心\r\n主要包括程序设计入门参数、程序设计进阶参考、数据库系统开发入门参考、数据库系统开发入门参考、数据库系统开发进阶参考、函数快速参考、控件快速参考、技术核心参考以及数据库开发关健技术实例参考等内容。可以有效帮助程序初学者和不同层次的程序开发人员入门与提高。\r\n查询中心\r\n主要包括技术词典、实例词典、项目词典、方案词典、界面词典及视频词典。本模块主要通过数据智能查询、自动批量数据检索、自动提取关键数据、快速分类参考和个人开发管理器进行方便快捷的数据检索，最终实现从技术文档到程序完整源代码的全面查询，快速解决程序开发技术的难题。\r\n实例中心\r\n包括实用范例参考大全、技巧参考大全、关键技术实例参考以及精彩编程200例。通过目录、列表检索等方法查询所有实例（技巧）文档和源程序中所需技术的实际应用。\r\n媒体中心\r\n提供30小时专业技术教学全程录像，主要包括环境搭配、数据构建及项目开发、打包等内容。\r\n项目中心\r\n提供项目开发入门参考、实用项目开发参考、项目开发完整过程参考及打包发行参考等200多个实用软件项目的专业开发文档和源程序，详细介绍软件项目安装、调试、打包和各种实用打包工具、帮助工具等辅助工具的全程教学文档。\r\n方案中心\r\n主要包含模式与程序模块方案、用户界面设计方案、数据弯路操作技术方案、数据查询及显示方案、安全策略方案、邮件发送方案、程序打包方案及帮助文件等方案。为广大程序开发人员和设计人员提供完整的开发思路。\r\n界面中心\r\n提供200套软件、100套网页全程设计素材，素材包括：配色方案参考、软件、网页界面设计方案、图标500个、按钮图标500个、动画图标100个、表情图标100个以及桌面背景图片200张。超值的价格，精美的界面，让您在编程中参考界面的制作、界面配色并可直接使用本公司提供的素材。\r\n图书中心\r\n提供相关语言的图书目录及检索、我公司出版图书的电子版及内容高效查询检索。\r\n升级服务\r\n为了让用户在第一时间了解公司最近开发的源程序、视频等内容，共享明日科技数十位员工365天的上百万开发成果及经验，特提供了零距离的实时升级服务。\r\n技术支持\r\n网站、电话、QQ三位一体的全程技术问题解答，数十位资深开发人员的全力服务支持，快速帮您解决开发中遇到的技术问题，并同广大用户共享各种问题的解决方法及经验，同时，我公司会定期提供网上专家视频课堂、各种核心技术的实际开发应用和编程锦囊。\r\n相关服务及技术支持如下：\r\n?	周一?周五全天电话技术支持（8:00?17:00）\r\n?	24小时电话录音服务\r\n?	网站全程在线服务支持，软件工程师全工作日在线技术解答\r\n?	为编程者提供软件升级服务和最新开发资源\r\n\r\n使用编程词典的用途\r\n\r\n初学者：\r\n编程是一个复杂的过程，不仅需要深厚的理论知识，还要通过不断的实践学习积累经验。初学人员在刚开始接触编程时可能无从下手、思虑混乱，有些学者在无奈之下花费尽万元的费用去培训班学习甚至选择放弃。明日编程词典为编程初学者点亮了迈进趣味丰富的编程世界的明灯，引导初学人员逐步成为编程高手。使学习编程变得轻松，并可以省下高额的培训费用。为了适应不同人群的需要，编程词典提供了多个版本，初学人员可以选择学习版和普及版这两个版本。\r\n\r\n程序员：\r\n程序员是很容易被淘汰的职业，所以要善于学习总结。不要喜欢盲目追求一些编码小技巧，这样无论学了多少语言，代码写起来多熟练，也只能是一名熟练的代码民工，技术永远都不会有所提高，一个善于学习的程序员会经常总结自己的技术水平，对自己的技术层面有良好的定位，这样才能有目的的提高自己，文档是一个软件系统的生命力。一个的产品再好、技术含量再高，如果没有缺乏文档，知识就没有继承，公司还是一个来料加工的软件作坊。作为代码程序员，必须将30％的工作时间用于写技术文档。没有文档的程序员势必会被淘汰才能逐步提高，从程序员升级为软件设计师、系统分析员。明日编程词典专业版和豪华版可以帮助程序开发人员踏上工程师之路，使项目开发过程变得简捷。\r\n\r\n教师：\r\n为培养学生逻辑思维和创新能力，在教学过程中，教师遵循启发式教学原则，通过各种教学方式和手段激发学生的学习欲望，积极投入到学习活动中，积极思维，发现问题，提出问题，并逐步解决问题，例如，在讲解程序设计举例时，不是简单地给出程序清单，而是从分析问题入手，继而找出解决问题的方法，再给出算法，最后编写出完整的程序，而在这一全过程中，最关键的是每一步都采用与学生一起探讨的方式，让学生在启发下思考，在思考中解决问题，从而掌握独立分析问题、解决问题的方法。明日科技有限公司推出的编程词典企业版除了课堂实验外，还实施了课程设计、项目分析与设计等，并有数十位专家全力技术支持、视频指导等环节，开放式的实验环境不仅增加了学生上机实践的时间，更好的培养学生较好的自主学习习惯打下良好的基础。编程词典企业版是计算机软件教育机构所必备的资料库，是教师有形的教案和无形的左膀右臂，是讲师提高教学水平的得力助手。\r\n学生：\r\n现代计算机专业毕业生很多，为什么公司还在缺软件开发人员而且需求越来越大，毕竟软件行业是社会科技进步的体现，好多学生觉得计算机专业毕业后不好找工作，其实不是不好找，而是自身的开发能力达不到软件开发企业的要求，对一些公司的技术和架构根本就不知道，而企业要求的是利益的最大化，也就是进来公司就要为公司带来效益，除了一些大公司会招一些应届生外，一般的企业都是要求有工作经验的开发人员，而大学生基本上都是理论知识强，实际动手能力差很多，现在社会上的软件开发公司恰恰相反，要求的是动手能力强，大学教材中的内容大部分是多年前的陈旧知识，早就不适应现今的技术需求了！这就造成了学生毕业后都去找培训学校培训一些项目开发经验！在培训学校培训不但学费高，而且开发的经验也不是很多。建议学生选择编程词典学习版或其他适合自身水准的版本。编程词典超值的价格，所见即所得的设计理念可以引导学生快速提高自身编程能力。 \r\n\r\n','ll','2008-04-11 11:18:51','images/inchoative/face0.gif','0','0','PHP','','1','',0),(34,'sdfsdfsdfs','dfsdfsdfsdfsdfsdfsdfsdsdfsdf','ll','2008-04-11 11:18:42','images/inchoative/face0.gif','0','1','DEL','0','1','',0),(33,'sdfsdfsdf','sdfsfsdfsfsdfsdsdfsd','ll','2008-04-11 11:18:33','images/inchoative/face0.gif','1','0','PHOTO设计','0','1','',0),(32,'sdfsdf','sdfsdfsdfsdfsdfsdfsdfsd','ll','2008-04-11 11:18:24','images/inchoative/face0.gif','0','0','PHP','','1','',0),(31,'sdfsdfsdf','sdfsdfsdfsdfsdfsdfsf','ll','2008-04-11 11:18:16','images/inchoative/face0.gif','1','1','DEL','','1','',0),(30,'sdfsdfsdfsd','fsdfsdfsdfsd','ll','2008-04-11 11:18:06','images/inchoative/face0.gif','1','1','DEL','','1','',0),(29,'sdfsdfdsfsdfs','fsdfsdfsdfsdf','ll','2008-04-11 11:17:59','images/inchoative/face0.gif','1','0','DEL','','1','',0),(37,'顶顶顶顶淡淡的 ','的  顶顶顶顶淡淡的 ','潘凯华','2008-07-11 16:45:04','images/inchoative/face0.gif','0','1','FLASH设计','','','',0),(38,'sdfsdfsdf','sdfsdfsfsdfsfsdsdfsdf','潘凯华','2008-04-14 14:57:42','images/inchoative/face0.gif','0','0','DEL','','','',0),(39,'撒的发生的防守对方  ','撒的发生的防守对方','555555','2008-06-04 08:48:29','images/inchoative/face0.gif','0','0','FLASH设计','','','',0),(74,'ioiioioii','iioioioioioioio','ll','2008-07-23 09:51:37','images/inchoative/face0.gif','1','1','FLASH设计','0','1','',0),(73,'ssssssssssssssssssssssssssssssssssssss','sssssssssssssssssssssssssssssssssssssss','ll','2008-07-23 09:50:06','images/inchoative/face0.gif','0','0','DEL','0','1','./file/121677780616152C72CBE342F638B3126DDFBC118D(1).gif',0),(72,'sdfsdfsdf','sdffssdfsdfsdfs','ll','2008-07-23 09:47:34','images/inchoative/face0.gif','0','0','PHP','0','1','',0),(71,'werwerwrwer','rrrrrrrrrrrrrrrrrrrrrrrr','ll','2008-07-23 09:47:14','images/inchoative/face0.gif','0','0','FLASH设计','0','1','',0),(49,'似懂非懂双方都是佛挡杀佛','','ll','2008-07-14 11:24:26','images/inchoative/face0.gif','0','0','FLASH设计','','','',0),(50,'随碟附送多福多寿发生地方是东方时代','<font color=\"#00ffff\">似懂非懂是否斯蒂芬 </font>','ll','2008-07-14 11:26:34','images/inchoative/face0.gif','0','0','FLASH设计','','','',0),(51,'下次vcxvcxv','','ll','2008-07-14 11:26:50','images/inchoative/face0.gif','0','0','FLASH设计','','','',0),(52,'阿斯达是大是大','<div><font color=\"#ff1493\" size=\"7\"><strong>差分方程核发规划风格化工符合规范和规范化</strong></font></div>','ll','2008-07-14 11:33:04','images/inchoative/face0.gif','0','0','FLASH设计','','','',0),(53,'','','ll','2008-07-14 11:40:46','images/inchoative/face0.gif','0','0','请选择帖子的类别','','','',0),(54,'跌幅高达法国队','<font size=\"7\">顿饭工夫的规范的的发给对方过多</font>','ll','2008-07-14 11:45:15','images/inchoative/face0.gif','0','0','FLASH设计','0','1','',0),(55,'随碟附送东方时代发生地方','<font style=\"background-color: #006400\" color=\"#ffff00\" size=\"5\">似懂非懂双方都是佛挡杀佛</font>','ll','2008-07-14 11:49:31','images/inchoative/face0.gif','0','1','FLASH设计','0','1','',0),(56,'fghfghfghfghgf','fghbfghfghfghfgh','ll','2008-07-17 16:17:08','images/inchoative/face0.gif','0','0','DEL','0','1','',0),(57,'fghfghfghfghfghgfh','<font face=\"Arial Black\" color=\"#8b4513\" size=\"7\">ghfghfghfghfghfgh</font>','ll','2008-07-17 16:17:29','images/inchoative/face0.gif','0','0','FLASH设计','0','1','',0),(58,'dfgdgdfgdfg','<font size=\"6\">dfgdfgdfgdfgdfgdf</font>','ll','2008-07-21 17:02:49','images/inchoative/face0.gif','0','0','PHP','0','1','',0),(59,'PHP','<font size=\"6\">SDFSDFSDFSF</font>','ll','2008-07-21 17:04:29','images/inchoative/face0.gif','0','1','PHP','0','1','',0),(76,'在PHP中，如何控制上传文件的大小？','<div><font color=\"#ff0000\" size=\"4\"><strong>请问在PHP中如何控制上传文件的大小？</strong></font></div>\r\n<div><font color=\"#ff0000\" size=\"4\"><strong>谢谢</strong></font></div>','ll','2008-08-01 11:07:29','images/inchoative/face1.gif','0','1','PHP','','','',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_forum_send` ENABLE KEYS */;

--
-- Table structure for table `tb_forum_small_type`
--

DROP TABLE IF EXISTS `tb_forum_small_type`;
CREATE TABLE `tb_forum_small_type` (
  `tb_small_type_id` int(10) NOT NULL auto_increment,
  `tb_small_type_content` varchar(50) NOT NULL,
  `tb_big_type_content` varchar(50) NOT NULL,
  `tb_small_type_date` date NOT NULL,
  PRIMARY KEY  (`tb_small_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_forum_small_type`
--


/*!40000 ALTER TABLE `tb_forum_small_type` DISABLE KEYS */;
LOCK TABLES `tb_forum_small_type` WRITE;
INSERT INTO `tb_forum_small_type` VALUES (3,'FLASH设计','美工设计','2008-03-31'),(4,'DEL','软件开发','2008-03-31'),(5,'PHP','软件开发','2008-03-31'),(7,'PHOTO设计','美工设计','2008-04-11');
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_forum_small_type` ENABLE KEYS */;

--
-- Table structure for table `tb_forum_user`
--

DROP TABLE IF EXISTS `tb_forum_user`;
CREATE TABLE `tb_forum_user` (
  `tb_forum_id` int(10) NOT NULL auto_increment,
  `tb_forum_user` varchar(50) NOT NULL,
  `tb_forum_pass` varchar(50) NOT NULL,
  `tb_forum_type` varchar(50) NOT NULL,
  `tb_forum_email` varchar(50) NOT NULL,
  `tb_forum_truepass` varchar(50) NOT NULL,
  `tb_forum_date` datetime NOT NULL,
  `tb_forum_picture` varchar(80) NOT NULL,
  `tb_forum_grade` varchar(50) NOT NULL,
  `tb_forum_pass_problem` varchar(50) NOT NULL,
  `tb_forum_pass_result` varchar(50) NOT NULL,
  `tb_forum_qq` varchar(50) NOT NULL,
  `tb_forum_speciality` text NOT NULL,
  PRIMARY KEY  (`tb_forum_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_forum_user`
--


/*!40000 ALTER TABLE `tb_forum_user` DISABLE KEYS */;
LOCK TABLES `tb_forum_user` WRITE;
INSERT INTO `tb_forum_user` VALUES (5,'ll','e10adc3949ba59abbe56e057f20f883e','2','pankaihua1103@sina.com','123456','2008-04-18 02:34:18','images/face/21.gif','200','我最喜欢的运动员是谁？','dfg','11111','dfgdgdgdgdg'),(3,'潘凯华','e10adc3949ba59abbe56e057f20f883e','1','pankaihua@sina.com','123456','2008-04-11 10:36:46','images/face/4.gif','250','我就读的第一所学校的名称？','高中','18381769',''),(6,'555555','f638f4354ff089323d1a5f78fd8f63ca','1','5555555555555@6786.cn','55555555','2008-06-03 02:18:14','images/face/0.gif','200','我就读的第一所学校的名称？','456456456','46475645','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_forum_user` ENABLE KEYS */;

--
-- Table structure for table `tb_mail_box`
--

DROP TABLE IF EXISTS `tb_mail_box`;
CREATE TABLE `tb_mail_box` (
  `tb_mail_id` int(10) NOT NULL auto_increment,
  `tb_receiving_person` varchar(50) NOT NULL,
  `tb_mail_sender` varchar(50) NOT NULL,
  `tb_mail_date` date NOT NULL,
  `tb_mail_subject` varchar(80) NOT NULL,
  `tb_mail_content` mediumtext NOT NULL,
  `tb_mail_type` varchar(50) NOT NULL,
  PRIMARY KEY  (`tb_mail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_mail_box`
--


/*!40000 ALTER TABLE `tb_mail_box` DISABLE KEYS */;
LOCK TABLES `tb_mail_box` WRITE;
INSERT INTO `tb_mail_box` VALUES (31,'ll','潘凯华','2008-06-15','dfffffffffffffffffffffff','fffffffffffffffffffffffffff','1'),(28,'ll','潘凯华','2008-06-05','我的好友 ','随碟附送东方时代 ',''),(14,'潘凯华','ll','2008-04-17','xcvxcvxc','vxcvxcvxcvxc','1'),(15,'潘凯华','ll','2008-04-17','xcvxcvxc','vxcvxcvxc','1'),(29,'潘凯华','潘凯华','2008-06-11','11','11','1'),(30,'ll','潘凯华','2008-06-15','sdfsdfsdfsdf','sdfsdfsdfsdfsdfsd',''),(32,'ll','潘凯华','2008-06-15','sdfsdfsd','fsdfsdfsdfsd',''),(27,'潘凯华','潘凯华','2008-05-23','随碟附送打发士大夫 ','随碟附送东方时代 ','1'),(33,'ll','潘凯华','2008-06-15','werwerwe','rwerwerwerw',''),(34,'ll','潘凯华','2008-06-15','werewrwerwer','we','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_mail_box` ENABLE KEYS */;

--
-- Table structure for table `tb_my_collection`
--

DROP TABLE IF EXISTS `tb_my_collection`;
CREATE TABLE `tb_my_collection` (
  `tb_collection_id` int(10) NOT NULL auto_increment,
  `tb_collection_subject` varchar(50) NOT NULL,
  `tb_collection_address` varchar(150) NOT NULL,
  `tb_collection_label` varchar(50) NOT NULL,
  `tb_collection_summary` mediumtext NOT NULL,
  `tb_collection_user` varchar(50) NOT NULL,
  `tb_collection_date` datetime NOT NULL,
  PRIMARY KEY  (`tb_collection_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_my_collection`
--


/*!40000 ALTER TABLE `tb_my_collection` DISABLE KEYS */;
LOCK TABLES `tb_my_collection` WRITE;
INSERT INTO `tb_my_collection` VALUES (5,'sdfsdfsdf','http://192.168.1.59/MR/sl/07/07/send_forum_content.php?send_big_type=美工设计&&send_small_type=FLASH设计&&send_id=37','0000','00000','555555','2008-06-04 08:50:37'),(2,'sdfsdfsdfs','http://127.0.0.1/MR/sl/07/15/send_forum_content.php?send_big_type=软件开发&&send_small_type=DEL&&send_id=34','bnmbn','mbnmnbmbnb','ll','0000-00-00 00:00:00'),(3,'sdfsdfsdfs','http://127.0.0.1/MR/sl/07/15/send_forum_content.php?send_big_type=软件开发&&send_small_type=DEL&&send_id=34','dgdfg','dfgdfgdfgdfgdfgdfgdfg','ll','0000-00-00 00:00:00'),(4,'sdfsdfsdf','http://127.0.0.1/MR/sl/07/15/send_forum_content.php?send_big_type=软件开发&&send_small_type=DEL&&send_id=31','gdfgdfgd','fgdfgdfgdfg','ll','0000-00-00 00:00:00'),(6,'sdfsdfsdf','http://127.0.0.1/MR/sl/07/07/send_forum_content.php?send_big_type=美工设计&&send_small_type=FLASH设计&&send_id=37','标签名称','标签名称标签名称标签名称标签名称标签名称标签名称标签名称','潘凯华','2008-06-05 19:03:55'),(7,'跌幅高达非官方的该法第','http://192.168.1.59/MR/sl/17/07/send_forum_content.php?send_big_type=软件开发&&send_small_type=DEL&&send_id=45&&cite=21','l;;l',';l;l;l;l','ll','2008-07-21 16:05:11');
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_my_collection` ENABLE KEYS */;

--
-- Table structure for table `tb_my_friend`
--

DROP TABLE IF EXISTS `tb_my_friend`;
CREATE TABLE `tb_my_friend` (
  `tb_friend_id` int(10) NOT NULL auto_increment,
  `tb_my` varchar(50) NOT NULL,
  `tb_friend` varchar(50) NOT NULL,
  `tb_date` date NOT NULL,
  PRIMARY KEY  (`tb_friend_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

--
-- Dumping data for table `tb_my_friend`
--


/*!40000 ALTER TABLE `tb_my_friend` DISABLE KEYS */;
LOCK TABLES `tb_my_friend` WRITE;
INSERT INTO `tb_my_friend` VALUES (1,'ll','ll','2008-04-18'),(3,'潘凯华','ll','2008-06-05');
UNLOCK TABLES;
/*!40000 ALTER TABLE `tb_my_friend` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

