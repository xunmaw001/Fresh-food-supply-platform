-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmw7979
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610463029750 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-12 14:32:33',1,1,'提问1','回复1',1),(82,'2021-01-12 14:32:33',2,2,'提问2','回复2',2),(83,'2021-01-12 14:32:33',3,3,'提问3','回复3',3),(84,'2021-01-12 14:32:33',4,4,'提问4','回复4',4),(85,'2021-01-12 14:32:33',5,5,'提问5','回复5',5),(86,'2021-01-12 14:32:33',6,6,'提问6','回复6',6),(1610462909839,'2021-01-12 14:48:29',1610462482542,NULL,'您好我想问下这鱼新鲜吗',NULL,0),(1610463029749,'2021-01-12 14:50:29',1610462482542,1610462497666,NULL,'绝对新鲜的',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmw7979/upload/1610462410475.jpg'),(2,'picture2','http://localhost:8080/ssmw7979/upload/1610462417471.png'),(3,'picture3','http://localhost:8080/ssmw7979/upload/1610462427897.png'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshengxianxinxi`
--

DROP TABLE IF EXISTS `discussshengxianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshengxianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462841571 DEFAULT CHARSET=utf8 COMMENT='生鲜信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshengxianxinxi`
--

LOCK TABLES `discussshengxianxinxi` WRITE;
/*!40000 ALTER TABLE `discussshengxianxinxi` DISABLE KEYS */;
INSERT INTO `discussshengxianxinxi` VALUES (101,'2021-01-12 14:32:33',1,1,'评论内容1','回复内容1'),(102,'2021-01-12 14:32:33',2,2,'评论内容2','回复内容2'),(103,'2021-01-12 14:32:33',3,3,'评论内容3','回复内容3'),(104,'2021-01-12 14:32:33',4,4,'评论内容4','回复内容4'),(105,'2021-01-12 14:32:33',5,5,'评论内容5','回复内容5'),(106,'2021-01-12 14:32:33',6,6,'评论内容6','回复内容6'),(1610462841570,'2021-01-12 14:47:20',1610462701529,1610462482542,'这鱼确实都是活的','是的，童叟无欺，欢迎下次再来');
/*!40000 ALTER TABLE `discussshengxianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshengxianzhanshi`
--

DROP TABLE IF EXISTS `discussshengxianzhanshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshengxianzhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462933017 DEFAULT CHARSET=utf8 COMMENT='生鲜展示评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshengxianzhanshi`
--

LOCK TABLES `discussshengxianzhanshi` WRITE;
/*!40000 ALTER TABLE `discussshengxianzhanshi` DISABLE KEYS */;
INSERT INTO `discussshengxianzhanshi` VALUES (111,'2021-01-12 14:32:33',1,1,'评论内容1','回复内容1'),(112,'2021-01-12 14:32:33',2,2,'评论内容2','回复内容2'),(113,'2021-01-12 14:32:33',3,3,'评论内容3','回复内容3'),(114,'2021-01-12 14:32:33',4,4,'评论内容4','回复内容4'),(115,'2021-01-12 14:32:33',5,5,'评论内容5','回复内容5'),(116,'2021-01-12 14:32:33',6,6,'评论内容6','回复内容6'),(1610462933016,'2021-01-12 14:48:52',1610462613423,1610462497666,'1111','222');
/*!40000 ALTER TABLE `discussshengxianzhanshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462525154 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (31,'2021-01-12 14:32:33','001','001','供应商名称1','负责人1','13823888881','地址1'),(32,'2021-01-12 14:32:33','供应商2','123456','供应商名称2','负责人2','13823888882','地址2'),(33,'2021-01-12 14:32:33','供应商3','123456','供应商名称3','负责人3','13823888883','地址3'),(34,'2021-01-12 14:32:33','供应商4','123456','供应商名称4','负责人4','13823888884','地址4'),(35,'2021-01-12 14:32:33','供应商5','123456','供应商名称5','负责人5','13823888885','地址5'),(36,'2021-01-12 14:32:33','供应商6','123456','供应商名称6','负责人6','13823888886','地址6'),(1610462525153,'2021-01-12 14:42:05','1','1','鑫鑫海鲜','李铭','15214121412','上海市');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goumaixinxi`
--

DROP TABLE IF EXISTS `goumaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goumaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462874231 DEFAULT CHARSET=utf8 COMMENT='购买信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goumaixinxi`
--

LOCK TABLES `goumaixinxi` WRITE;
/*!40000 ALTER TABLE `goumaixinxi` DISABLE KEYS */;
INSERT INTO `goumaixinxi` VALUES (1610462874230,'2021-01-12 14:47:53','202111222473322868603','1','草鱼','鱼','25',5,'125','2020-12-28','1','刘倩','15214121412','已支付',NULL,NULL,'广东省揭阳市榕城区东阳街道淡辉海鲜酒楼揭阳南站');
/*!40000 ALTER TABLE `goumaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462497667 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2021-01-12 14:32:33','001','001','姓名1','女','http://localhost:8080/ssmw7979/upload/shangjia_touxiang1.jpg','440300199101010001','13823888881'),(22,'2021-01-12 14:32:33','商家2','123456','姓名2','男','http://localhost:8080/ssmw7979/upload/shangjia_touxiang2.jpg','440300199202020002','13823888882'),(23,'2021-01-12 14:32:33','商家3','123456','姓名3','男','http://localhost:8080/ssmw7979/upload/shangjia_touxiang3.jpg','440300199303030003','13823888883'),(24,'2021-01-12 14:32:33','商家4','123456','姓名4','男','http://localhost:8080/ssmw7979/upload/shangjia_touxiang4.jpg','440300199404040004','13823888884'),(25,'2021-01-12 14:32:33','商家5','123456','姓名5','男','http://localhost:8080/ssmw7979/upload/shangjia_touxiang5.jpg','440300199505050005','13823888885'),(26,'2021-01-12 14:32:33','商家6','123456','姓名6','男','http://localhost:8080/ssmw7979/upload/shangjia_touxiang6.jpg','440300199606060006','13823888886'),(1610462497666,'2021-01-12 14:41:37','1','1','王菲','女','http://localhost:8080/ssmw7979/upload/1610462635817.png','441214121412141214','15241214122');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shengxianjinhuo`
--

DROP TABLE IF EXISTS `shengxianjinhuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shengxianjinhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `jinhuojiage` varchar(200) NOT NULL COMMENT '进货价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `jinhuoriqi` date DEFAULT NULL COMMENT '进货日期',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462967361 DEFAULT CHARSET=utf8 COMMENT='生鲜进货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengxianjinhuo`
--

LOCK TABLES `shengxianjinhuo` WRITE;
/*!40000 ALTER TABLE `shengxianjinhuo` DISABLE KEYS */;
INSERT INTO `shengxianjinhuo` VALUES (1610462967360,'2021-01-12 14:49:27','202111222485650937673','澳洲龙虾','虾类','1','鑫鑫海鲜','65',20,'1300','2020-12-27','1','王菲','15241214122','已支付',NULL,NULL,'广东省揭阳市榕城区东兴街道马牙路揭阳市侨联大厦');
/*!40000 ALTER TABLE `shengxianjinhuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shengxianxinxi`
--

DROP TABLE IF EXISTS `shengxianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shengxianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `xiangqing` longtext COMMENT '详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462701530 DEFAULT CHARSET=utf8 COMMENT='生鲜信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengxianxinxi`
--

LOCK TABLES `shengxianxinxi` WRITE;
/*!40000 ALTER TABLE `shengxianxinxi` DISABLE KEYS */;
INSERT INTO `shengxianxinxi` VALUES (41,'2021-01-12 14:32:33','名称1','类型1','http://localhost:8080/ssmw7979/upload/shengxianxinxi_tupian1.jpg',1,1,'详情1','商家账号1','手机1','2021-01-12 22:32:33',1),(42,'2021-01-12 14:32:33','名称2','类型2','http://localhost:8080/ssmw7979/upload/shengxianxinxi_tupian2.jpg',2,2,'详情2','商家账号2','手机2','2021-01-12 22:32:33',2),(43,'2021-01-12 14:32:33','名称3','类型3','http://localhost:8080/ssmw7979/upload/shengxianxinxi_tupian3.jpg',3,3,'详情3','商家账号3','手机3','2021-01-12 22:46:45',6),(44,'2021-01-12 14:32:33','名称4','类型4','http://localhost:8080/ssmw7979/upload/shengxianxinxi_tupian4.jpg',4,4,'详情4','商家账号4','手机4','2021-01-12 22:46:29',5),(45,'2021-01-12 14:32:33','名称5','类型5','http://localhost:8080/ssmw7979/upload/shengxianxinxi_tupian5.jpg',5,5,'详情5','商家账号5','手机5','2021-01-12 22:32:33',5),(46,'2021-01-12 14:32:33','名称6','类型6','http://localhost:8080/ssmw7979/upload/shengxianxinxi_tupian6.jpg',6,6,'详情6','商家账号6','手机6','2021-01-12 22:32:33',6),(1610462701529,'2021-01-12 14:45:00','草鱼','鱼','http://localhost:8080/ssmw7979/upload/1610462652669.jpg',25,115,'<p><img src=\"http://localhost:8080/ssmw7979/upload/1610462666424.jpg\"></p><p><img src=\"http://localhost:8080/ssmw7979/upload/1610462670629.jpg\"></p><p>都是刚打捞上来的鱼，绝对新鲜，都是活的，没有死鱼</p>','1','15241214122','2021-01-12 22:52:57',7);
/*!40000 ALTER TABLE `shengxianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shengxianzhanshi`
--

DROP TABLE IF EXISTS `shengxianzhanshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shengxianzhanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jinhuojiage` int(11) DEFAULT NULL COMMENT '进货价格',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangqing` longtext COMMENT '详情',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462613424 DEFAULT CHARSET=utf8 COMMENT='生鲜展示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengxianzhanshi`
--

LOCK TABLES `shengxianzhanshi` WRITE;
/*!40000 ALTER TABLE `shengxianzhanshi` DISABLE KEYS */;
INSERT INTO `shengxianzhanshi` VALUES (61,'2021-01-12 14:32:33','名称1','类型1','http://localhost:8080/ssmw7979/upload/shengxianzhanshi_tupian1.jpg',1,1,'联系电话1','详情1','供应商名称1','账号1'),(62,'2021-01-12 14:32:33','名称2','类型2','http://localhost:8080/ssmw7979/upload/shengxianzhanshi_tupian2.jpg',2,2,'联系电话2','详情2','供应商名称2','账号2'),(63,'2021-01-12 14:32:33','名称3','类型3','http://localhost:8080/ssmw7979/upload/shengxianzhanshi_tupian3.jpg',3,3,'联系电话3','详情3','供应商名称3','账号3'),(64,'2021-01-12 14:32:33','名称4','类型4','http://localhost:8080/ssmw7979/upload/shengxianzhanshi_tupian4.jpg',4,4,'联系电话4','详情4','供应商名称4','账号4'),(65,'2021-01-12 14:32:33','名称5','类型5','http://localhost:8080/ssmw7979/upload/shengxianzhanshi_tupian5.jpg',5,5,'联系电话5','详情5','供应商名称5','账号5'),(66,'2021-01-12 14:32:33','名称6','类型6','http://localhost:8080/ssmw7979/upload/shengxianzhanshi_tupian6.jpg',6,6,'联系电话6','详情6','供应商名称6','账号6'),(1610462613423,'2021-01-12 14:43:32','澳洲龙虾','虾类','http://localhost:8080/ssmw7979/upload/1610462554162.jpg',30,65,'15214121412','<p><img src=\"http://localhost:8080/ssmw7979/upload/1610462581523.jpg\"></p><p><br></p><p><br></p><p>这里可以发布一些简介信息，也可以图片加文字描述，内容都是用于测试的可以自行添加修改删除的</p>','鑫鑫海鲜','1');
/*!40000 ALTER TABLE `shengxianzhanshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462822795 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610462822794,'2021-01-12 14:47:02',1610462482542,1610462701529,'shengxianxinxi','草鱼','http://localhost:8080/ssmw7979/upload/1610462652669.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','iz0g3oa9u44gl7lda53czzonliecr3xo','2021-01-12 14:38:02','2021-01-12 15:51:08'),(2,11,'001','yonghu','用户','ny4vvz8wk4dm54phydi5ni41evhm455q','2021-01-12 14:38:41','2021-01-12 15:42:11'),(3,1610462525153,'1','gongyingshang','供应商','8pu261qxlsoj4t8ckjpmem3e10jiez1p','2021-01-12 14:42:20','2021-01-12 15:50:37'),(4,1610462497666,'1','shangjia','管理员','nnugrlfi404kr57xkwi63p7548px64j6','2021-01-12 14:43:39','2021-01-12 15:48:40'),(5,1610462482542,'1','yonghu','用户','jmstx2bqoxz6adud8a9vgel8q4l1yloh','2021-01-12 14:45:12','2021-01-12 15:52:34');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-12 14:32:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610462482543 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-12 14:32:33','001','001','姓名1','女','http://localhost:8080/ssmw7979/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-01-12 14:32:33','用户2','123456','姓名2','男','http://localhost:8080/ssmw7979/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-01-12 14:32:33','用户3','123456','姓名3','男','http://localhost:8080/ssmw7979/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-01-12 14:32:33','用户4','123456','姓名4','男','http://localhost:8080/ssmw7979/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-01-12 14:32:33','用户5','123456','姓名5','男','http://localhost:8080/ssmw7979/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-01-12 14:32:33','用户6','123456','姓名6','男','http://localhost:8080/ssmw7979/upload/yonghu_touxiang6.jpg','13823888886'),(1610462482542,'2021-01-12 14:41:22','1','1','刘倩','女','http://localhost:8080/ssmw7979/upload/1610462725338.png','15214121412');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-13 12:01:48
