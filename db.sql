/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiliaobaoxiaoxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiliaobaoxiaoxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiliaobaoxiaoxitong`;

/*Table structure for table `biaoxiaodan` */

DROP TABLE IF EXISTS `biaoxiaodan`;

CREATE TABLE `biaoxiaodan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `caikuai_id` int(11) DEFAULT NULL COMMENT '财会审核人员',
  `biaoxiaodan_uuid_number` varchar(200) DEFAULT NULL COMMENT '报销单编号  Search111 ',
  `biaoxiaodan_name` varchar(200) DEFAULT NULL COMMENT '报销单名称  Search111 ',
  `biaoxiaodan_baoxiaoren_name` varchar(200) DEFAULT NULL COMMENT '报销人姓名 Search111',
  `biaoxiaodan_baoxiaoren_photo` varchar(200) DEFAULT NULL COMMENT '报销人头像照片',
  `biaoxiaodan_baoxiaoren_shenfenzhengz_photo` varchar(200) DEFAULT NULL COMMENT '身份证正面',
  `biaoxiaodan_baoxiaoren_shenfenzhengf_photo` varchar(200) DEFAULT NULL COMMENT '身份证反面',
  `biaoxiaodan_baoxiaoren_phone` varchar(200) DEFAULT NULL COMMENT '报销人联系方式',
  `biaoxiaodan_baoxiaoren_id_number` varchar(200) DEFAULT NULL COMMENT '报销人身份证号 Search111',
  `biaoxiaodan_renyuan_types` int(11) DEFAULT NULL COMMENT '人员状态 Search111',
  `biaoxiaodan_bingqing_types` int(11) DEFAULT NULL COMMENT '病情 Search111',
  `biaoxiaodan_yiliaofeiyong_types` int(11) DEFAULT NULL COMMENT '费用类型 Search111',
  `biaoxiaodan_new_jine` decimal(10,2) DEFAULT NULL COMMENT '报销金额',
  `biaoxiaodan_file` varchar(200) DEFAULT NULL COMMENT '相关报销凭证',
  `biaoxiaodan_content` text COMMENT '其他备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `biaoxiaodan_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `biaoxiaodan_yesno_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='报销单';

/*Data for the table `biaoxiaodan` */

insert  into `biaoxiaodan`(`id`,`yonghu_id`,`caikuai_id`,`biaoxiaodan_uuid_number`,`biaoxiaodan_name`,`biaoxiaodan_baoxiaoren_name`,`biaoxiaodan_baoxiaoren_photo`,`biaoxiaodan_baoxiaoren_shenfenzhengz_photo`,`biaoxiaodan_baoxiaoren_shenfenzhengf_photo`,`biaoxiaodan_baoxiaoren_phone`,`biaoxiaodan_baoxiaoren_id_number`,`biaoxiaodan_renyuan_types`,`biaoxiaodan_bingqing_types`,`biaoxiaodan_yiliaofeiyong_types`,`biaoxiaodan_new_jine`,`biaoxiaodan_file`,`biaoxiaodan_content`,`insert_time`,`biaoxiaodan_yesno_types`,`biaoxiaodan_yesno_text`,`create_time`) values (1,1,NULL,'16482988307795','报销单名称1','报销人姓名1','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu1.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu1.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu1.jpg','17703786901','410224199610232001',1,1,2,'705.04','http://localhost:8080/yiliaobaoxiaoxitong/upload/file.rar','其他备注1','2022-03-26 20:47:10',1,NULL,'2022-03-26 20:47:10'),(2,2,NULL,'16482988307810','报销单名称2','报销人姓名2','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu2.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu2.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu1.jpg','17703786902','410224199610232002',3,1,1,'465.73','http://localhost:8080/yiliaobaoxiaoxitong/upload/file.rar','其他备注2','2022-03-26 20:47:10',1,NULL,'2022-03-26 20:47:10'),(3,2,2,'16482988307813','报销单名称3','报销人姓名3','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu3.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu1.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu2.jpg','17703786903','410224199610232003',1,1,3,'865.25','http://localhost:8080/yiliaobaoxiaoxitong/upload/file.rar','其他备注3','2022-03-26 20:47:10',2,'暗杀三个','2022-03-26 20:47:10'),(4,2,1,'16482988307810','报销单名称4','报销人姓名4','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu1.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu2.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu1.jpg','17703786904','410224199610232004',2,1,1,'55.90','http://localhost:8080/yiliaobaoxiaoxitong/upload/file.rar','其他备注4','2022-03-26 20:47:10',3,'不充分','2022-03-26 20:47:10'),(5,2,1,'164829883078120','报销单名称5','报销人姓名5','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu2.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu3.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu2.jpg','17703786905','410224199610232005',1,1,3,'553.41','http://localhost:8080/yiliaobaoxiaoxitong/upload/file.rar','其他备注5','2022-03-26 20:47:10',2,'asdag','2022-03-26 20:47:10'),(6,1,NULL,'1648300550457','用户1的大病报销单','张11','http://localhost:8080/yiliaobaoxiaoxitong/upload/1648300576287.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/1648300577792.jpg','http://localhost:8080/yiliaobaoxiaoxitong/upload/1648300580969.jpg','17703786945','410224199610232007',2,3,3,'300.00','http://localhost:8080/yiliaobaoxiaoxitong/upload/1648300609047.rar','<p>傻大个申达股份的</p>','2022-03-26 21:16:59',1,'','2022-03-26 21:16:59');

/*Table structure for table `caikuai` */

DROP TABLE IF EXISTS `caikuai`;

CREATE TABLE `caikuai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `caikuai_name` varchar(200) DEFAULT NULL COMMENT '财会审核人员姓名 Search111 ',
  `caikuai_phone` varchar(200) DEFAULT NULL COMMENT '财会审核人员手机号',
  `caikuai_photo` varchar(200) DEFAULT NULL COMMENT '财会审核人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `caikuai_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='财会审核人员';

/*Data for the table `caikuai` */

insert  into `caikuai`(`id`,`username`,`password`,`caikuai_name`,`caikuai_phone`,`caikuai_photo`,`sex_types`,`caikuai_email`,`create_time`) values (1,'a1','123456','财会审核人员姓名1','17703786901','http://localhost:8080/yiliaobaoxiaoxitong/upload/caikuai1.jpg',2,'1@qq.com','2022-03-26 20:47:10'),(2,'a2','123456','财会审核人员姓名2','17703786902','http://localhost:8080/yiliaobaoxiaoxitong/upload/caikuai2.jpg',2,'2@qq.com','2022-03-26 20:47:10'),(3,'a3','123456','财会审核人员姓名3','17703786903','http://localhost:8080/yiliaobaoxiaoxitong/upload/caikuai3.jpg',2,'3@qq.com','2022-03-26 20:47:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-26 20:47:02'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-26 20:47:02'),(3,'biaoxiaodan_renyuan_types','人员状态',1,'在职',NULL,NULL,'2022-03-26 20:47:03'),(4,'biaoxiaodan_renyuan_types','人员状态',2,'离职',NULL,NULL,'2022-03-26 20:47:03'),(5,'biaoxiaodan_renyuan_types','人员状态',3,'退休',NULL,NULL,'2022-03-26 20:47:03'),(6,'biaoxiaodan_bingqing_types','病情',1,'普通疾病',NULL,NULL,'2022-03-26 20:47:03'),(7,'biaoxiaodan_bingqing_types','病情',2,'特定疾病',NULL,NULL,'2022-03-26 20:47:03'),(8,'biaoxiaodan_bingqing_types','病情',3,'重大疾病',NULL,NULL,'2022-03-26 20:47:03'),(9,'biaoxiaodan_yiliaofeiyong_types','费用类型',1,'门诊',NULL,NULL,'2022-03-26 20:47:03'),(10,'biaoxiaodan_yiliaofeiyong_types','费用类型',2,'住院',NULL,NULL,'2022-03-26 20:47:03'),(11,'biaoxiaodan_yiliaofeiyong_types','费用类型',3,'零售药店',NULL,NULL,'2022-03-26 20:47:03'),(12,'biaoxiaodan_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-03-26 20:47:03'),(13,'biaoxiaodan_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-03-26 20:47:03'),(14,'biaoxiaodan_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-26 20:47:03'),(15,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-26 20:47:03'),(16,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-26 20:47:03'),(17,'gonggao_types','公告类型',3,'公告类型3',NULL,'','2022-03-26 21:10:15');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/yiliaobaoxiaoxitong/upload/gonggao1.jpg',2,'2022-03-26 20:47:10','公告详情1','2022-03-26 20:47:10'),(2,'公告名称2','http://localhost:8080/yiliaobaoxiaoxitong/upload/gonggao2.jpg',2,'2022-03-26 20:47:10','公告详情2','2022-03-26 20:47:10'),(3,'公告名称3','http://localhost:8080/yiliaobaoxiaoxitong/upload/gonggao3.jpg',2,'2022-03-26 20:47:10','公告详情3','2022-03-26 20:47:10'),(4,'公告名称4','http://localhost:8080/yiliaobaoxiaoxitong/upload/gonggao4.jpg',1,'2022-03-26 20:47:10','公告详情4','2022-03-26 20:47:10'),(5,'公告名称5','http://localhost:8080/yiliaobaoxiaoxitong/upload/gonggao5.jpg',2,'2022-03-26 20:47:10','<p>公告详情5</p>','2022-03-26 20:47:10'),(6,'公告11','http://localhost:8080/yiliaobaoxiaoxitong/upload/1648300265890.jpg',3,'2022-03-26 21:11:10','<p>公告111</p>','2022-03-26 21:11:10');

/*Table structure for table `lingdao` */

DROP TABLE IF EXISTS `lingdao`;

CREATE TABLE `lingdao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `lingdao_name` varchar(200) DEFAULT NULL COMMENT '领导姓名 Search111 ',
  `lingdao_phone` varchar(200) DEFAULT NULL COMMENT '领导手机号',
  `lingdao_photo` varchar(200) DEFAULT NULL COMMENT '领导头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `lingdao_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='领导';

/*Data for the table `lingdao` */

insert  into `lingdao`(`id`,`username`,`password`,`lingdao_name`,`lingdao_phone`,`lingdao_photo`,`sex_types`,`lingdao_email`,`create_time`) values (1,'a1','123456','领导姓名1','17703786901','http://localhost:8080/yiliaobaoxiaoxitong/upload/lingdao1.jpg',2,'1@qq.com','2022-03-26 20:47:10'),(2,'a2','123456','领导姓名2','17703786902','http://localhost:8080/yiliaobaoxiaoxitong/upload/lingdao2.jpg',2,'2@qq.com','2022-03-26 20:47:10'),(3,'a3','123456','领导姓名3','17703786903','http://localhost:8080/yiliaobaoxiaoxitong/upload/lingdao3.jpg',1,'3@qq.com','2022-03-26 20:47:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','ls4kcthvx5a7i0nvmuw1xffrutekt1bo','2022-03-26 20:57:12','2022-03-26 22:13:05'),(2,1,'a1','caikuai','财会审核人员','k89cmbwcr3cuhrbn08ta7eu0nhj0ddph','2022-03-26 21:06:07','2022-03-26 22:11:22'),(3,2,'a2','caikuai','财会审核人员','1cpu6kuqybfcunhuwmewtfl3h68ntac7','2022-03-26 21:08:58','2022-03-26 22:12:25'),(4,6,'admin','users','管理员','qaqtfnigpelod6p8zqrcokhhdb3jc2k7','2022-03-26 21:09:37','2022-03-26 22:19:35'),(5,1,'a1','lingdao','领导','shpod4om1advov3bxlxufy3k1150bkjk','2022-03-26 21:10:44','2022-03-26 22:10:44');

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
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu1.jpg',2,'1@qq.com','2022-03-26 20:47:10'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu2.jpg',1,'2@qq.com','2022-03-26 20:47:10'),(3,'a3','123456','用户姓名3','17703786903','410224199610232033','http://localhost:8080/yiliaobaoxiaoxitong/upload/yonghu3.jpg',1,'3@qq.com','2022-03-26 20:47:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
