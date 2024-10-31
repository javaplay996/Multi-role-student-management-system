/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xsglxt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xsglxt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xsglxt`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `exam_name` varchar(200) DEFAULT NULL COMMENT '考试名称 Search111 ',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目  Search111 ',
  `fraction` decimal(10,4) DEFAULT NULL COMMENT '分数  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`yonghu_id`,`exam_name`,`kemu_types`,`fraction`,`create_time`) values (8,7,'第一次摸底考试',5,'19.0000','2021-03-02 17:56:29'),(9,7,'第一次摸底考试',4,'20.0000','2021-03-02 17:56:52'),(10,9,'第二次考试',5,'10.0000','2021-03-02 19:54:56'),(11,9,'第二次考试',2,'19.0000','2021-03-02 19:55:23');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (49,'sex_types','性别',1,'男',NULL,'2021-03-02 16:19:49'),(50,'sex_types','性别',2,'女',NULL,'2021-03-02 16:19:49'),(51,'politics_types','政治面貌',1,'群众',NULL,'2021-03-02 16:19:49'),(52,'politics_types','政治面貌',2,'党员',NULL,'2021-03-02 16:19:49'),(53,'yonghu_types','用户身份',1,'学生',NULL,'2021-03-02 16:19:49'),(54,'yonghu_types','用户身份',2,'班干部',NULL,'2021-03-02 16:19:50'),(55,'kemu_types','科目管理',1,'语文',NULL,'2021-03-02 16:19:50'),(56,'kemu_types','科目管理',2,'数学',NULL,'2021-03-02 16:19:50'),(57,'kemu_types','科目管理',3,'英语',NULL,'2021-03-02 16:19:50'),(58,'kemu_types','科目管理',4,'地理',NULL,'2021-03-02 16:19:50'),(59,'kemu_types','科目管理',5,'化学',NULL,'2021-03-02 16:19:50'),(60,'qingjia_types','请假状态',1,'未审核',NULL,'2021-03-02 16:19:50'),(61,'qingjia_types','请假状态',2,'审核通过',NULL,'2021-03-02 16:19:50'),(62,'qingjia_types','请假状态',3,'审核不通过',NULL,'2021-03-02 16:19:50'),(63,'renwu_types','任务类型',1,'任务类型1',NULL,'2021-03-02 16:19:50'),(64,'renwu_types','任务类型',2,'任务类型2',NULL,'2021-03-02 16:19:50'),(65,'renwu_types','任务类型',3,'任务类型3',NULL,'2021-03-02 16:19:50');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'1231111','admin','2021-02-03 17:15:28','只有管理员可以回复','admin','2021-02-03 17:15:29'),(6,'123123','小札','2021-03-02 17:17:48','9898','admin1','2021-03-02 17:17:52'),(7,'9898','admin1','2021-03-02 17:17:17',NULL,NULL,NULL),(8,'9999','a44',NULL,'可以','a2','2021-03-02 20:32:51'),(9,'777','a44',NULL,'已经处理了','a1','2021-03-02 20:15:54');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `onday` varchar(200) DEFAULT NULL COMMENT '请假开始时间  Search111 ',
  `downday` varchar(200) DEFAULT NULL COMMENT '请假结束时间   Search111 ',
  `qingjia_number` int(11) DEFAULT NULL COMMENT '请假天数  Search111 ',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假状态  Search111 ',
  `liyou_content` varchar(200) DEFAULT NULL COMMENT '理由',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审批时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`onday`,`downday`,`qingjia_number`,`qingjia_types`,`liyou_content`,`update_time`,`create_time`) values (10,7,'2021-03-07','2021-03-08',1,1,'11\r\n',NULL,'2021-03-02 19:09:43'),(11,9,'2021-03-06','2021-03-12',6,1,'有事情\r\n',NULL,'2021-03-02 19:49:43'),(12,9,'2021-03-14','2021-03-15',1,2,'请假一天.有事情\r\n','2021-03-02 20:31:38','2021-03-02 19:58:54');

/*Table structure for table `renwu` */

DROP TABLE IF EXISTS `renwu`;

CREATE TABLE `renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_types` int(11) DEFAULT NULL COMMENT '任务类型  Search111 ',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '接收身份  Search111 ',
  `renwu_content` varchar(200) DEFAULT NULL COMMENT '任务内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='任务';

/*Data for the table `renwu` */

insert  into `renwu`(`id`,`renwu_types`,`yonghu_types`,`renwu_content`,`insert_time`,`create_time`) values (7,2,1,'111\r\n','2021-03-02 19:13:13','2021-03-02 19:13:13'),(8,3,1,'11\r\n','2021-03-02 19:55:41','2021-03-02 19:55:41'),(9,3,2,'99\r\n','2021-03-02 19:55:49','2021-03-02 19:55:49'),(10,1,2,'0.0\r\n','2021-03-02 19:56:03','2021-03-02 19:56:03'),(11,2,1,'任务发布测试\r\n','2021-03-02 20:15:32','2021-03-02 20:15:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','y46uj8gv4ezllt5p5ufrge1f2bpjv3cs','2021-01-29 14:52:36','2021-02-03 11:47:53'),(9,7,'admin2','users','宿舍管理员','qrx3mk3gn2e5ye90s0ab3gq54nouf8rw','2021-02-02 12:02:15','2021-02-03 11:59:01'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','9ymzdcsml2b96mln6x6cs3i2xi661643','2021-02-03 11:05:39','2021-02-03 15:10:11'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,4,'999','yonghu','用户','1ahtqregeq3nku278h35h1479bb0iy04','2021-02-04 13:40:27','2021-02-23 16:37:12'),(15,1,'99','yonghu','用户','8ql2zqwd0wm3ugg19omnr4q6bs9dvl61','2021-02-04 14:52:51','2021-02-20 19:03:24'),(16,7,'admin2','users','初审管理员','3mqhpytktmhhpz29r6dtrbynyvtl525i','2021-02-04 15:50:09','2021-02-22 11:07:10'),(17,3,'77','users','用户','ilp5dd2mcbvdfe7bw72ngwe6ez3o44m1','2021-02-18 09:42:20','2021-02-22 11:05:19'),(18,6,'admin1','users','管理员','v6wm2sv7449gk4r34g7638cm0wtu3ar9','2021-02-19 16:42:49','2021-03-02 21:48:45'),(19,6,'88','yonghu','用户','yw7yxi7we78b3vh9kkvl2sk98m0pl24c','2021-02-20 10:35:45','2021-02-20 11:39:03'),(20,2,'22','yonghu','用户','m3qi8ns8kwjwk2fbb3x74ppv5ftmf00p','2021-02-20 10:54:51','2021-02-22 10:27:37'),(21,8,'admin3','users','政审管理员','p1vflp8rs17msr05d6vwo622f1bk095c','2021-02-20 11:39:06','2021-02-22 11:09:33'),(22,9,'admin4','users','武装部管理员','0ljqhzh9zhhlq3ftkczskvs9ur5oj1fy','2021-02-20 13:31:20','2021-02-20 19:06:45'),(23,5,'55','yonghu','用户','jzxw4912iminddl1v1csr7md5g9z04uz','2021-02-20 17:25:51','2021-02-23 17:15:21'),(24,13,'77','users','舍管管理员','gt28ff27xhxzmvjc7oy74s3jgfr7gstx','2021-02-23 15:21:29','2021-02-23 16:21:29'),(25,14,'admin2','users','舍管管理员','wm7ners2segz27n1g4sojmx8ios2d0jk','2021-02-23 16:03:05','2021-02-23 17:03:47'),(26,14,'admin2','users','售票管理员','iwqonlhzy22vjgsh90jxc016vvpr8i1e','2021-02-24 13:54:16','2021-02-24 15:53:23'),(27,15,'admin3','users','检票管理员','97icqm027wx11oba95zlnjl613h2haeq','2021-02-24 13:57:11','2021-02-24 16:26:45'),(28,18,'78','users','售票管理员','bxbiasroyq8hgxljhgygmils0450zegz','2021-02-24 14:53:44','2021-02-24 15:53:45'),(29,12,'99','yonghu','用户','3gh882ib9001cag4ua5bzg0v8h8smi7e','2021-03-01 16:52:26','2021-03-01 18:14:30'),(30,7,'a1','yonghu','用户','m7whd20qf9h0tb8k2tkg0c0v9wa6s3x5','2021-03-01 21:06:49','2021-03-02 12:08:40'),(31,8,'a2','yonghu','用户','94sgqh9kog3hrvaej848n42ujqrpl9pa','2021-03-02 11:09:17','2021-03-02 12:31:59'),(32,13,'a8','yonghu','用户','0tvaz76fd0qt7ngvckt7yqn5hffyesbn','2021-03-02 11:45:55','2021-03-02 14:10:18'),(33,15,'a6','yonghu','用户','u1gplzr2wfrg122mhd8hc9ocr55urh2i','2021-03-02 14:07:02','2021-03-02 15:16:52'),(34,9,'a44','yonghu','学生','90naeeuy0b127k8ggipfb7hsavksinpt','2021-03-02 19:38:30','2021-03-02 21:31:46'),(35,7,'a1','yonghu','班干部','qj2bnplfmd8s22635ehshtnd51t2e4ob','2021-03-02 20:01:11','2021-03-02 21:07:59'),(36,19,'a1','users','任课教师','4vk0esxevb1d8az0n3hoxrheaqycsbey','2021-03-02 20:10:49','2021-03-02 21:13:31'),(37,20,'a2','users','辅导员','91g7c31vr8y7r6tahrrmq8k9fvlmzacw','2021-03-02 20:16:36','2021-03-02 21:32:01');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','111','管理员','2021-01-29 14:51:13'),(19,'a1','123456','任课教师','2021-03-02 17:51:08'),(20,'a2','123456','辅导员','2021-03-02 19:34:16'),(21,'a3','123456','辅导员','2021-03-02 20:34:30');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (5,'2021-03-02 20:08:46','999','紧急公告','内容紧急1','2021-03-02 20:08:46'),(6,'2021-03-02 20:33:26','标题1','紧急公告','```````','2021-03-02 20:33:26');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  Search111',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '身份  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`yonghu_types`,`create_time`) values (7,'a1','123456','a1','17703786961','410224199610232011',1,'http://localhost:8080/xsglxt/file/download?fileName=1614674616832.jpg','汉',2,'审犯罪',2,'2021-03-02 16:43:40'),(8,'a33','123456','a33','17703789993','410224199610232013',1,'http://localhost:8080/xsglxt/file/download?fileName=1614687484341.jpg','汉',2,'审犯罪11',2,'2021-03-02 19:36:10'),(9,'a44','123456','a44','17703789994','410224199610232014',2,'http://localhost:8080/xsglxt/file/download?fileName=1614686288807.jpg','汉',2,'审犯罪',1,'2021-03-02 19:36:45'),(10,'a99','123456','a99','17703789999','410224199610232019',1,'http://localhost:8080/xsglxt/file/download?fileName=1614687467437.jpg','汉',2,'河南开封',1,'2021-03-02 20:17:52');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
