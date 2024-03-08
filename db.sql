/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiangqinwangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiangqinwangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiangqinwangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiangqinwangzhan/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiangqinwangzhan/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiangqinwangzhan/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-23 16:19:30'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-23 16:19:30'),(3,'xiangqin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-23 16:19:30'),(4,'hunligongsi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-23 16:19:30'),(5,'jiehunanli_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-23 16:19:30');

/*Table structure for table `hunligongsi` */

DROP TABLE IF EXISTS `hunligongsi`;

CREATE TABLE `hunligongsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `hunligongsi_name` varchar(200) DEFAULT NULL COMMENT '婚礼公司名称  Search111 ',
  `hunligongsi_photo` varchar(200) DEFAULT NULL COMMENT '婚礼公司照片',
  `hunligongsi_address` varchar(200) DEFAULT NULL COMMENT '公司位置',
  `hunligongsi_guimo` varchar(200) DEFAULT NULL COMMENT '公司规模',
  `hunligongsi_zijin` varchar(200) DEFAULT NULL COMMENT '注册资金',
  `hunligongsi_content` text COMMENT '公司介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='婚礼公司';

/*Data for the table `hunligongsi` */

insert  into `hunligongsi`(`id`,`hunligongsi_name`,`hunligongsi_photo`,`hunligongsi_address`,`hunligongsi_guimo`,`hunligongsi_zijin`,`hunligongsi_content`,`create_time`) values (1,'婚礼公司名称1','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','公司位置1','公司规模1','注册资金1','公司介绍1','2022-02-23 16:19:35'),(2,'婚礼公司名称2','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','公司位置2','公司规模2','注册资金2','公司介绍2','2022-02-23 16:19:35'),(3,'婚礼公司名称3','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','公司位置3','公司规模3','注册资金3','公司介绍3','2022-02-23 16:19:35'),(4,'婚礼公司名称4','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','公司位置4','公司规模4','注册资金4','公司介绍4','2022-02-23 16:19:35'),(5,'婚礼公司名称5','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','公司位置5','公司规模5','注册资金5','公司介绍5','2022-02-23 16:19:35');

/*Table structure for table `hunligongsi_collection` */

DROP TABLE IF EXISTS `hunligongsi_collection`;

CREATE TABLE `hunligongsi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hunligongsi_id` int(11) DEFAULT NULL COMMENT '婚礼公司',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `hunligongsi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='婚礼公司收藏';

/*Data for the table `hunligongsi_collection` */

insert  into `hunligongsi_collection`(`id`,`hunligongsi_id`,`yonghu_id`,`hunligongsi_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(2,2,1,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(3,3,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(4,4,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(5,5,1,1,'2022-02-23 16:19:35','2022-02-23 16:19:35');

/*Table structure for table `hunligongsi_order` */

DROP TABLE IF EXISTS `hunligongsi_order`;

CREATE TABLE `hunligongsi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hunligongsi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约唯一编号 Search111 ',
  `hunligongsi_id` int(11) DEFAULT NULL COMMENT '婚礼公司',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='婚礼公司预约';

/*Data for the table `hunligongsi_order` */

insert  into `hunligongsi_order`(`id`,`hunligongsi_order_uuid_number`,`hunligongsi_id`,`yonghu_id`,`yuyue_time`,`insert_time`,`create_time`) values (1,'1645605014964',4,1,'2022-02-24 00:00:00','2022-02-23 16:30:19','2022-02-23 16:30:19'),(2,'1645605029435',3,1,'2022-02-26 00:00:00','2022-02-23 16:30:33','2022-02-23 16:30:33');

/*Table structure for table `jiehunanli` */

DROP TABLE IF EXISTS `jiehunanli`;

CREATE TABLE `jiehunanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `hunligongsi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '结婚案例编号 Search111 ',
  `jiehunanli_name` varchar(200) DEFAULT NULL COMMENT '结婚案例名称  Search111 ',
  `jiehunanli_photo` varchar(200) DEFAULT NULL COMMENT '结婚案例照片',
  `jiehunanli_content` text COMMENT '结婚案例详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='结婚案例';

/*Data for the table `jiehunanli` */

insert  into `jiehunanli`(`id`,`hunligongsi_order_uuid_number`,`jiehunanli_name`,`jiehunanli_photo`,`jiehunanli_content`,`insert_time`,`create_time`) values (1,'结婚案例编号1','结婚案例名称1','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','结婚案例详情1','2022-02-23 16:19:35','2022-02-23 16:19:35'),(2,'结婚案例编号2','结婚案例名称2','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','结婚案例详情2','2022-02-23 16:19:35','2022-02-23 16:19:35'),(3,'结婚案例编号3','结婚案例名称3','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','结婚案例详情3','2022-02-23 16:19:35','2022-02-23 16:19:35'),(4,'结婚案例编号4','结婚案例名称4','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','结婚案例详情4','2022-02-23 16:19:35','2022-02-23 16:19:35'),(5,'结婚案例编号5','结婚案例名称5','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','结婚案例详情5','2022-02-23 16:19:35','2022-02-23 16:19:35');

/*Table structure for table `jiehunanli_collection` */

DROP TABLE IF EXISTS `jiehunanli_collection`;

CREATE TABLE `jiehunanli_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiehunanli_id` int(11) DEFAULT NULL COMMENT '结婚案例',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiehunanli_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='结婚案例收藏';

/*Data for the table `jiehunanli_collection` */

insert  into `jiehunanli_collection`(`id`,`jiehunanli_id`,`yonghu_id`,`jiehunanli_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(2,2,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(3,3,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(4,4,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(5,5,1,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(6,3,1,1,'2022-02-23 16:30:43','2022-02-23 16:30:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','0bzab6xcnh9o0z15dtfhcdlfgo8ipovu','2022-02-23 15:27:05','2022-02-23 17:33:49'),(2,1,'a1','yonghu','用户','sez4dincwyf8q2texfl22v6boyf9mgo3','2022-02-23 15:46:13','2022-02-23 17:39:24'),(3,2,'a2','yonghu','用户','1u2q4xpgqc5gg7w83cxgpam4fchsocte','2022-02-23 16:17:06','2022-02-23 17:27:17');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `xiangqin` */

DROP TABLE IF EXISTS `xiangqin`;

CREATE TABLE `xiangqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangqin_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xiangqin_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `shuxiang` varchar(200) DEFAULT NULL COMMENT '属相',
  `youwuzinv` varchar(200) DEFAULT NULL COMMENT '有无子女',
  `xuexing` varchar(200) DEFAULT NULL COMMENT '血型',
  `tizhong` int(11) DEFAULT NULL COMMENT '体重(kg)',
  `zhiye` varchar(200) DEFAULT NULL COMMENT '职业',
  `gongsixingzhi` varchar(200) DEFAULT NULL COMMENT '公司性质',
  `yuexin` varchar(200) DEFAULT NULL COMMENT '月薪',
  `geren_content` text COMMENT '个人介绍 ',
  `gongzuo_content` text COMMENT '工作情况 ',
  `jiating_content` text COMMENT '家庭情况 ',
  `zeou_content` text COMMENT '择偶意向 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='相亲';

/*Data for the table `xiangqin` */

insert  into `xiangqin`(`id`,`yonghu_id`,`xiangqin_name`,`sex_types`,`xiangqin_photo`,`shuxiang`,`youwuzinv`,`xuexing`,`tizhong`,`zhiye`,`gongsixingzhi`,`yuexin`,`geren_content`,`gongzuo_content`,`jiating_content`,`zeou_content`,`insert_time`,`create_time`) values (1,3,'姓名1',2,'http://localhost:8080/xiangqinwangzhan/upload/xiangqin1.jpg','属相1','有无子女1','血型1',296,'职业1','公司性质1','月薪1','个人介绍1','工作情况1','家庭情况1','择偶意向1','2022-02-23 16:19:35','2022-02-23 16:19:35'),(2,1,'姓名2',2,'http://localhost:8080/xiangqinwangzhan/upload/xiangqin2.jpg','属相2','有无子女2','血型2',78,'职业2','公司性质2','月薪2','个人介绍2','工作情况2','家庭情况2','择偶意向2','2022-02-23 16:19:35','2022-02-23 16:19:35'),(3,1,'姓名3',2,'http://localhost:8080/xiangqinwangzhan/upload/xiangqin3.jpg','属相3','有无子女3','血型3',419,'职业3','公司性质3','月薪3','个人介绍3','工作情况3','家庭情况3','择偶意向3','2022-02-23 16:19:35','2022-02-23 16:19:35'),(4,3,'姓名4',1,'http://localhost:8080/xiangqinwangzhan/upload/xiangqin4.jpg','属相4','有无子女4','血型4',28,'职业4','公司性质4','月薪4','个人介绍4','工作情况4','家庭情况4','择偶意向4','2022-02-23 16:19:35','2022-02-23 16:19:35'),(5,3,'姓名5',1,'http://localhost:8080/xiangqinwangzhan/upload/xiangqin5.jpg','属相5','有无子女5','血型5',467,'职业5','公司性质5','月薪5','个人介绍5','工作情况5','家庭情况5','择偶意向5','2022-02-23 16:19:35','2022-02-23 16:19:35');

/*Table structure for table `xiangqin_collection` */

DROP TABLE IF EXISTS `xiangqin_collection`;

CREATE TABLE `xiangqin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangqin_id` int(11) DEFAULT NULL COMMENT '相亲',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangqin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='相亲收藏';

/*Data for the table `xiangqin_collection` */

insert  into `xiangqin_collection`(`id`,`xiangqin_id`,`yonghu_id`,`xiangqin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(2,2,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(3,3,3,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(4,4,1,1,'2022-02-23 16:19:35','2022-02-23 16:19:35'),(5,5,2,1,'2022-02-23 16:19:35','2022-02-23 16:19:35');

/*Table structure for table `xiangqin_liuyan` */

DROP TABLE IF EXISTS `xiangqin_liuyan`;

CREATE TABLE `xiangqin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangqin_id` int(11) DEFAULT NULL COMMENT '相亲',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangqin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='相亲留言';

/*Data for the table `xiangqin_liuyan` */

insert  into `xiangqin_liuyan`(`id`,`xiangqin_id`,`yonghu_id`,`xiangqin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'留言内容1','回复信息1','2022-02-23 16:19:35','2022-02-23 16:19:35','2022-02-23 16:19:35'),(2,2,2,'留言内容2','回复信息2','2022-02-23 16:19:35','2022-02-23 16:19:35','2022-02-23 16:19:35'),(3,3,3,'留言内容3','回复信息3','2022-02-23 16:19:35','2022-02-23 16:19:35','2022-02-23 16:19:35'),(4,4,2,'留言内容4','回复信息4','2022-02-23 16:19:35','2022-02-23 16:19:35','2022-02-23 16:19:35'),(5,5,3,'留言内容5','回复信息5','2022-02-23 16:19:35','2022-02-23 16:19:35','2022-02-23 16:19:35'),(6,3,2,'嗯嗯',NULL,'2022-02-23 16:24:03',NULL,'2022-02-23 16:24:03'),(7,3,2,'www',NULL,'2022-02-23 16:26:51',NULL,'2022-02-23 16:26:51'),(8,4,1,'你好  可以留下手机号么',NULL,'2022-02-23 16:31:18',NULL,'2022-02-23 16:31:18');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/xiangqinwangzhan/upload/yonghu1.jpg','2022-02-23 16:19:35'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/xiangqinwangzhan/upload/yonghu2.jpg','2022-02-23 16:19:35'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/xiangqinwangzhan/upload/yonghu3.jpg','2022-02-23 16:19:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
