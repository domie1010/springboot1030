/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiyaoguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiyaoguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiyaoguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-15 21:56:51'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-15 21:56:51'),(3,'yaopin_types','药品类型',1,'药品类型1',NULL,NULL,'2022-03-15 21:56:51'),(4,'yaopin_types','药品类型',2,'药品类型2',NULL,NULL,'2022-03-15 21:56:51'),(5,'yaopin_types','药品类型',3,'药品类型3',NULL,NULL,'2022-03-15 21:56:51'),(6,'yaopin_types','药品类型',4,'药品类型4',NULL,NULL,'2022-03-15 21:56:51'),(7,'gongyingshang_types','供应商类型',1,'供应商类型1',NULL,NULL,'2022-03-15 21:56:51'),(8,'gongyingshang_types','供应商类型',2,'供应商类型2',NULL,NULL,'2022-03-15 21:56:51'),(9,'gongyingshang_xinyongdengji_types','供应商信用等级类型',1,'一级',NULL,NULL,'2022-03-15 21:56:51'),(10,'gongyingshang_xinyongdengji_types','供应商信用等级类型',2,'二级',NULL,NULL,'2022-03-15 21:56:51'),(11,'gongyingshang_xinyongdengji_types','供应商信用等级类型',3,'三级',NULL,NULL,'2022-03-15 21:56:51');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称  Search111 ',
  `gongyingshang_types` int(11) DEFAULT NULL COMMENT '供应商类型',
  `gongyingshang_xinyongdengji_types` int(11) DEFAULT NULL COMMENT '信用等级 Search111 ',
  `gongyingshang_content` text COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='供应商信息';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`gongyingshang_name`,`gongyingshang_types`,`gongyingshang_xinyongdengji_types`,`gongyingshang_content`,`create_time`) values (1,'供应商名称1',2,1,'供应商详情1','2022-03-15 21:59:37'),(2,'供应商名称2',1,2,'供应商详情2','2022-03-15 21:59:37'),(3,'供应商名称3',1,3,'供应商详情3','2022-03-15 21:59:37'),(4,'供应商名称4',2,3,'供应商详情4','2022-03-15 21:59:37'),(5,'供应商名称5',1,3,'供应商详情5','2022-03-15 21:59:37');

/*Table structure for table `jinhuo` */

DROP TABLE IF EXISTS `jinhuo`;

CREATE TABLE `jinhuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jinhuo_uuid_number` varchar(200) DEFAULT NULL COMMENT '进货编号  Search111 ',
  `yaopin_id` int(11) DEFAULT NULL COMMENT '药品',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `jinhuo_shuliang_number` int(11) DEFAULT NULL COMMENT '进货数量',
  `jinhuo_content` text COMMENT '备注 ',
  `jinhuo_time` timestamp NULL DEFAULT NULL COMMENT '进货时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='进货';

/*Data for the table `jinhuo` */

insert  into `jinhuo`(`id`,`jinhuo_uuid_number`,`yaopin_id`,`yuangong_id`,`jinhuo_shuliang_number`,`jinhuo_content`,`jinhuo_time`,`insert_time`,`create_time`) values (1,'164735277754717',1,2,84,'备注1','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(2,'164735277754711',2,1,478,'备注2','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(3,'16473527775475',3,3,179,'备注3','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(4,'164735277754715',4,2,136,'备注4','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(5,'164735277754714',5,3,303,'备注5','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(6,'1647393665874',5,3,1,'<p>wew</p>','2022-03-16 00:00:00','2022-03-16 09:22:30','2022-03-16 09:22:30'),(7,'1647394313133',5,1,2,'<p>2022年3月16日进货2个</p>','2022-03-16 00:00:00','2022-03-16 09:32:17','2022-03-16 09:32:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','bpoahyoo62rbutrdoxa1k3n4buhaeo9o','2022-03-16 09:06:36','2022-03-16 10:36:09'),(2,1,'a1','yuangong','员工','8cx2jk1nejwvfqelqvicqsv7fwoqg2yb','2022-03-16 09:31:43','2022-03-16 10:31:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xiaoshou` */

DROP TABLE IF EXISTS `xiaoshou`;

CREATE TABLE `xiaoshou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiaoshou_uuid_number` varchar(200) DEFAULT NULL COMMENT '销售编号  Search111 ',
  `yaopin_id` int(11) DEFAULT NULL COMMENT '药品',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `xiaoshou_shuliang_number` int(11) DEFAULT NULL COMMENT '销售数量',
  `xiaoshou_content` text COMMENT '备注 ',
  `xiaoshou_time` timestamp NULL DEFAULT NULL COMMENT '销售时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='销售';

/*Data for the table `xiaoshou` */

insert  into `xiaoshou`(`id`,`xiaoshou_uuid_number`,`yaopin_id`,`yuangong_id`,`xiaoshou_shuliang_number`,`xiaoshou_content`,`xiaoshou_time`,`insert_time`,`create_time`) values (1,'164735277754918',1,1,487,'备注1','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(2,'16473527775493',2,3,272,'备注2','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(3,'16473527775493',3,3,141,'备注3','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(4,'164735277754912',4,1,140,'备注4','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(5,'164735277754913',5,3,499,'备注5','2022-03-15 21:59:37','2022-03-15 21:59:37','2022-03-15 21:59:37'),(6,'1647393761755',5,3,1,'<p>223as</p>','2022-03-15 00:00:00','2022-03-16 09:22:54','2022-03-16 09:22:54'),(8,'164735277754918',1,1,487,'备注1','2022-02-15 21:59:37','2022-02-15 21:59:37','2022-02-15 21:59:37'),(9,'16473527775493',3,3,272,'备注2','2022-02-15 21:59:37','2022-02-15 21:59:37','2022-02-15 21:59:37'),(10,'16473527775493',3,3,141,'备注3','2022-02-15 21:59:37','2022-02-15 21:59:37','2022-02-15 21:59:37'),(11,'164735277754912',3,1,140,'备注4','2022-02-15 21:59:37','2022-02-15 21:59:37','2022-02-15 21:59:37'),(12,'164735277754913',5,3,499,'备注5','2022-02-15 21:59:37','2022-02-15 21:59:37','2022-02-15 21:59:37'),(13,'1647393761755',4,3,1,'<p>223as</p>','2022-02-15 21:59:37','2022-02-15 21:59:37','2022-02-15 21:59:37'),(18,'1647394346373',5,1,2,'<p>销售2个</p>','2022-03-15 16:02:02','2022-03-16 09:32:51','2022-03-16 09:32:51');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号  Search111 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_gongxiao` varchar(200) DEFAULT NULL COMMENT '药品功效  Search111 ',
  `yaopin_jibing` varchar(200) DEFAULT NULL COMMENT '所治疾病  Search111 ',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_kucun_number` int(11) DEFAULT NULL COMMENT '药品库存',
  `yaopin_jinjia_money` decimal(10,2) DEFAULT NULL COMMENT '进价 ',
  `yaopin_xiaoshou_money` decimal(10,2) DEFAULT NULL COMMENT '售价 ',
  `yaopin_content` text COMMENT '药品介绍 ',
  `yaopin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='药品';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`gongyingshang_id`,`yaopin_uuid_number`,`yaopin_name`,`yaopin_gongxiao`,`yaopin_jibing`,`yaopin_photo`,`yaopin_types`,`yaopin_kucun_number`,`yaopin_jinjia_money`,`yaopin_xiaoshou_money`,`yaopin_content`,`yaopin_delete`,`create_time`) values (1,1,'16473527775519','药品名称1','药品功效1','所治疾病1','http://localhost:8080/yiyaoguanlixitong/upload/yaopin1.jpg',2,101,'804.58','654.40','药品介绍1',1,'2022-03-15 21:59:37'),(2,2,'164735277755111','药品名称2','药品功效2','所治疾病2','http://localhost:8080/yiyaoguanlixitong/upload/yaopin2.jpg',3,102,'682.60','367.07','药品介绍2',1,'2022-03-15 21:59:37'),(3,3,'16473527775518','药品名称3','药品功效3','所治疾病3','http://localhost:8080/yiyaoguanlixitong/upload/yaopin3.jpg',4,103,'462.09','578.56','药品介绍3',1,'2022-03-15 21:59:37'),(4,4,'164735277755115','药品名称4','药品功效4','所治疾病4','http://localhost:8080/yiyaoguanlixitong/upload/yaopin4.jpg',4,104,'3.51','520.30','药品介绍4',1,'2022-03-15 21:59:37'),(5,4,'164735277755216','药品名称5','药品功效5','所治疾病5','http://localhost:8080/yiyaoguanlixitong/upload/yaopin5.jpg',3,105,'564.00','877.77','<p>药品介绍5</p>',1,'2022-03-15 21:59:37');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199610232001','http://localhost:8080/yiyaoguanlixitong/upload/yuangong1.jpg',2,'1@qq.com','2022-03-15 21:59:37'),(2,'a2','123456','员工姓名2','17703786902','410224199610232002','http://localhost:8080/yiyaoguanlixitong/upload/yuangong2.jpg',2,'2@qq.com','2022-03-15 21:59:37'),(3,'a3','123456','员工姓名3','17703786903','410224199610232003','http://localhost:8080/yiyaoguanlixitong/upload/yuangong3.jpg',2,'3@qq.com','2022-03-15 21:59:37');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
