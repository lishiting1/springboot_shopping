-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: springbooty2rp6
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aboutus` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2025-04-09 01:39:40','关于我们','ABOUT US','<p><span style=\"color: rgb(64, 64, 64); background-color: rgb(255, 255, 255);\">本项目旨在开发一个功能完善、安全可靠的网上购物商城系统，满足用户在线购物需求，同时为销售人员和系统管理员提供高效的管理工具。</span></p>','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1678240372218 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2025-04-09 01:39:40',11,'华工C7','C7','13823888881','是'),(2,'2025-04-09 01:39:40',12,'华工C6','C6','13823888882','是'),(3,'2025-04-09 01:39:40',13,'华工C5','C5','13823888883','是'),(4,'2025-04-09 01:39:40',14,'华工C4','C4','13823888884','是'),(5,'2025-04-09 01:39:40',15,'华工C3','C3','13823888885','是'),(6,'2025-04-09 01:39:40',16,'华工C2','王五','13823888886','是'),(7,'2025-04-09 01:39:40',17,'华工C1','李四','13823888887','是'),(8,'2025-04-09 01:39:40',18,'华工大学城校区','张三','13823888888','是'),(1678240372217,'2025-04-09 01:52:51',1678240351849,'xx地址','王丽','15214121411','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'miaoshashangpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1746615057327 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1746615057326,'2025-05-07 10:50:57','shangpinxinxi',18,48,'巧克力','upload/shangpinxinxi_tupian8.jpg',1,55,0,'账号8','零食');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmiaoshashangpin`
--

DROP TABLE IF EXISTS `discussmiaoshashangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussmiaoshashangpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='秒杀商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmiaoshashangpin`
--

LOCK TABLES `discussmiaoshashangpin` WRITE;
/*!40000 ALTER TABLE `discussmiaoshashangpin` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussmiaoshashangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1678240807027 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (1678240807026,'2025-04-09 02:00:06',41,1678240351849,'upload/1678240339215.jpg','2','6666','88888');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '头像',
  `isdone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '状态',
  `istop` int DEFAULT '0' COMMENT '是否置顶',
  `toptime` datetime DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miaoshashangpin`
--

DROP TABLE IF EXISTS `miaoshashangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miaoshashangpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品分类',
  `pinpai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '品牌',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片',
  `shangpinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '商品详情',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '账号',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `onelimittimes` int DEFAULT NULL COMMENT '单限',
  `alllimittimes` int DEFAULT NULL COMMENT '库存',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='秒杀商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miaoshashangpin`
--

LOCK TABLES `miaoshashangpin` WRITE;
/*!40000 ALTER TABLE `miaoshashangpin` DISABLE KEYS */;
INSERT INTO `miaoshashangpin` VALUES (51,'2025-04-09 01:39:40','手表','电子设备','品牌1','upload/miaoshashangpin_tupian1.jpg,upload/miaoshashangpin_tupian2.jpg,upload/miaoshashangpin_tupian3.jpg','<p>商品详情1</p>','1','2025-04-09',1,99,'2025-05-06 20:21:08','2025-03-09 00:00:00',99.9),(52,'2025-04-09 01:39:40','限时衣服','衣服','品牌2','upload/miaoshashangpin_tupian2.jpg','<p>商品详情2测试</p>','1','2025-04-09',2,0,'2025-05-06 11:20:40','2025-06-01 00:00:00',250),(53,'2025-04-09 01:39:40','香水','家居用品','品牌3','upload/miaoshashangpin_tupian3.jpg,upload/miaoshashangpin_tupian4.jpg,upload/miaoshashangpin_tupian5.jpg','<p>商品详情3</p>','1','2025-04-09',3,99,'2025-05-06 16:22:32','2025-06-03 00:00:00',99.9),(54,'2025-04-09 01:39:40','烧水壶','家居用品','品牌4','upload/miaoshashangpin_tupian4.jpg,upload/miaoshashangpin_tupian5.jpg,upload/miaoshashangpin_tupian6.jpg','<p>商品详情4</p>','账号4','2025-04-09',4,99,'2025-05-06 11:26:07','2025-06-01 00:00:00',99.9),(55,'2025-04-09 01:39:40','干花','家居用品','品牌5','upload/miaoshashangpin_tupian5.jpg,upload/miaoshashangpin_tupian6.jpg,upload/miaoshashangpin_tupian7.jpg','<p>商品详情5</p>','账号5','2025-04-09',5,99,'2025-05-06 16:23:06','2025-06-06 00:00:00',99.9),(56,'2025-04-09 01:39:40','帽子','衣服','品牌6','upload/miaoshashangpin_tupian6.jpg,upload/miaoshashangpin_tupian7.jpg,upload/miaoshashangpin_tupian8.jpg','<p>商品详情6</p>','账号6','2025-04-09',3,99,'2025-05-06 16:27:50','2025-03-09 00:00:00',99.9),(57,'2025-04-09 01:39:40','热水壶','家居用品','品牌7','upload/miaoshashangpin_tupian7.jpg,upload/miaoshashangpin_tupian8.jpg,upload/miaoshashangpin_tupian9.jpg','<p>商品详情7</p>','账号7','2025-04-09',2,99,'2025-05-06 16:28:03','2025-06-01 00:00:00',99.9),(58,'2025-04-09 01:39:40','开心果','零食','品牌8','upload/miaoshashangpin_tupian8.jpg,upload/miaoshashangpin_tupian9.jpg,upload/miaoshashangpin_tupian10.jpg','<p>商品详情8</p>','账号8','2025-04-09',10,99,'2025-05-06 16:28:15','2025-06-01 00:00:00',99.9);
/*!40000 ALTER TABLE `miaoshashangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '简介',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='平台资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2025-04-09 01:39:40','真实体验分享','「在这里，我买到了全网最低价的iPhone」——老用户访谈','upload/news_picture1.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">“去年在xx商城抢到了平台补贴的iPhone，比官网便宜了800元！一开始还担心真假，但收到货后验机完全没问题，还赠送了1年延保。”——用户@科技控小张</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">我们承诺：所有商品官方正品，假一赔十！</span></p>'),(102,'2025-04-09 01:39:40','绿色电商','「每一个包裹，都在为地球减负」——我们的环保行动','upload/news_picture2.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">2023年起，我们全面启用可降解包装材料，联合物流伙伴推行“纸箱回收计划”。用户返还1个旧纸箱可兑换10积分，累计减少碳排放超50吨！未来，我们还将上线“绿色商品专区”，精选环保品牌，让购物更可持续。</span></p>'),(103,'2025-04-09 01:39:40','黑金卡特权','「黑金会员年度盛典」专享价+免息分期+生日礼盒','upload/news_picture3.jpg','<p>即日起至年底，升级黑金卡会员享：</p><p><strong>年度特权</strong>：</p><ul><li>全平台商品95折（部分商品叠加优惠）</li><li>12期免息分期覆盖数码奢品</li><li>生日月赠送价值199元精选礼盒</li><li><strong>限时福利</strong>：新用户开通即送50元无门槛券！</li></ul><p><br></p>'),(104,'2025-04-09 01:39:40','独家合作','「购物商城×故宫文创」联名款首发！把文化带回家','upload/news_picture4.jpg','<p>当电商遇见六百年故宫，会碰撞出怎样的火花？我们联合故宫文创团队，推出限量款：</p><ul><li><strong>千里江山图茶具套装</strong>（预售价399元，赠收藏证书）</li><li><strong>御猫主题充电宝</strong>（萌化你的日常）</li><li>5月10日10:00准时开售，每款仅限1000套！</li></ul><p><br></p>'),(105,'2025-04-09 01:39:40','中秋特辑','「月圆礼更圆」中秋好礼满300减100，再抽茅台！','upload/news_picture5.jpg','<p>&nbsp;<strong>活动时间</strong>：9.1-9.15</p><p>&nbsp;<strong>福利一览</strong>：</p><ul><li>月饼礼盒、大闸蟹券全场8折</li><li>消费满300元立减100元（券码：MID100）</li><li>下单即抽“飞天茅台”资格（每日1名）</li><li><strong>温馨提示</strong>：部分商品支持企业定制贺卡，传递心意更简单！</li></ul><p><br></p>'),(106,'2025-04-09 01:39:40','限时秒杀日','「周末狂欢·限时秒杀」全场低至1折，手慢无！','upload/news_picture6.jpg','<p>每周五晚8点，准时开启秒杀专场！大牌美妆、数码家电、家居好物……全部1折起！</p><p>&nbsp;<strong>爆款</strong>：</p><ul><li>原价999元的蓝牙耳机 →&nbsp;<strong>秒杀价99元</strong>（限量100件）</li><li>进口红酒礼盒 →&nbsp;<strong>1元抢购</strong>（仅限前10名）</li><li><strong>活动规则</strong>：提前收藏商品，秒杀开始后5分钟内付款有效！</li></ul>'),(107,'2025-04-09 01:39:40','未来购物体验','「AR试妆+虚拟仓库」——我们正在重新定义网购','upload/news_picture7.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">2024年，我们将上线两大黑科技：</span></p><p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">AR虚拟试衣间</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">：手机摄像头一键试穿百款衣服</span></p><p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">3D仓库直播</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">：360°实时查看商品库存状态</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">“科技不是为了炫酷，而是为了减少退货率，让您买得更放心。”——技术总监访谈</span></p>'),(108,'2025-04-09 01:39:40','平台资讯','快乐地购物吧！','upload/news_picture8.jpg','<p>在这里，你从未见过如此多的选择。无论是时尚服装，数码电器，家居用品还是美妆护肤，你总能找到最适合你的产品。在这个网购平台上，你可以享受到便捷的购物体验，安全的支付方式以及超过数亿用户的口碑推荐。无论你是追求时尚潮流还是注重性价比，本平台都能满足你的需求。快来开启你的购物奇妙之旅吧！</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'miaoshashangpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  `logistics` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '物流',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商户名称',
  `goodtype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `orderid` (`orderid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1746615064451 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1678240707351,'2025-04-09 01:58:27','20233895831362','shangpinxinxi',1678240351849,43,'商品名称3','upload/shangpinxinxi_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'已取消','xx地址','15214121411','王丽','1111',NULL,'1','商品分类3'),(1678240707363,'2025-04-09 01:58:27','20233895831363','miaoshashangpin',1678240351849,52,'限时衣服','upload/miaoshashangpin_tupian2.jpg',2,250,250,500,500,1,'未支付','xx地址','15214121411','王丽','1111',NULL,'1','衣服'),(1678240707680,'2025-04-09 01:58:27','20233895831358','shangpinxinxi',1678240351849,41,'古风新款','upload/1678240549843.jpg',1,280,280,280,280,1,'未支付','xx地址','15214121411','王丽','1111',NULL,'1','衣服'),(1678240707703,'2025-04-09 01:58:27','20233895831361','shangpinxinxi',1678240351849,48,'商品名称8','upload/shangpinxinxi_tupian8.jpg',2,99.9,99.9,199.8,199.8,1,'已取消','xx地址','15214121411','王丽','1111',NULL,'账号8','商品分类8'),(1678240708250,'2025-04-09 01:58:27','20233895831360','shangpinxinxi',1678240351849,42,'商品名称2','upload/shangpinxinxi_tupian2.jpg',2,99.9,99.9,199.8,199.8,1,'未支付','xx地址','15214121411','王丽','1111',NULL,'1','商品分类2'),(1678240754093,'2025-04-09 01:59:13','20233895917931','shangpinxinxi',1678240351849,42,'商品名称2','upload/shangpinxinxi_tupian2.jpg',2,99.9,99.9,199.8,199.8,1,'已支付','xx地址','15214121411','王丽','111',NULL,'1','商品分类2'),(1678240754533,'2025-04-09 01:59:13','20233895917937','shangpinxinxi',1678240351849,43,'商品名称3','upload/shangpinxinxi_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'已发货','xx地址','15214121411','王丽','111',NULL,'1','商品分类3'),(1678240754600,'2025-04-09 01:59:13','20233895917932','shangpinxinxi',1678240351849,48,'商品名称8','upload/shangpinxinxi_tupian8.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','xx地址','15214121411','王丽','111',NULL,'账号8','商品分类8'),(1678240754782,'2025-04-09 01:59:13','20233895917930','shangpinxinxi',1678240351849,41,'古风新款','upload/1678240549843.jpg',1,280,280,280,280,1,'已完成','xx地址','15214121411','王丽','111',NULL,'1','衣服'),(1746373773341,'2025-05-04 15:49:32','202554234932561','shangpinxinxi',18,42,'商品名称2','upload/shangpinxinxi_tupian2.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','宇宙银河系地球1号','13823888888','地某','',NULL,'1','商品分类2'),(1746614908800,'2025-05-07 10:48:28','202557184828390','shangpinxinxi',18,42,'高清数码相机','upload/shangpinxinxi_tupian2.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','宇宙银河系地球1号','13823888888','地某','',NULL,'1','电子设备'),(1746615064450,'2025-05-07 10:51:03','20255718513921','shangpinxinxi',18,48,'巧克力','upload/shangpinxinxi_tupian8.jpg',1,55,55,55,55,1,'已支付','华工大学城校区','13823888888','张三','',NULL,'账号8','零食');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商家姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '头像',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '邮箱',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `zhanghao` (`zhanghao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1746534256798 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2025-04-09 01:39:39','8','c9f0f895fb98ab9159f51fd0297e236d\n','诚信经营','女','upload/shangjia_touxiang1.jpg','773890001@qq.com','13823888881',200),(22,'2025-04-09 01:39:39','7','8f14e45fceea167a5a36dedd4bea2543','毛茸茸','女','upload/shangjia_touxiang2.jpg','773890002@qq.com','13823888882',200),(23,'2025-04-09 01:39:39','6','1679091c5a880faf6fb5e6087eb1b2dc','解忧杂货铺','女','upload/shangjia_touxiang3.jpg','773890003@qq.com','13823888883',200),(24,'2025-04-09 01:39:39','5','e4da3b7fbbce2345d7772b0674a318d5','优雅女装','女','upload/shangjia_touxiang4.jpg','773890004@qq.com','13823888884',200),(25,'2025-04-09 01:39:39','4','a87ff679a2f3e71d9181a67b7542122c','甜品屋','男','upload/shangjia_touxiang5.jpg','773890005@qq.com','13823888885',200),(26,'2025-04-09 01:39:39','3','eccbc87e4b5ce2fe28308fd9f2a7baf3','书','男','upload/shangjia_touxiang6.jpg','773890006@qq.com','13823888886',200),(27,'2025-04-09 01:39:39','2','c81e728d9d4c2f636f067f89cc14862c','美妆','女','upload/shangjia_touxiang7.jpg','773890007@qq.com','13823888887',200),(28,'2025-04-09 01:39:39','1','c4ca4238a0b923820dcc509a6f75849b','个人好物','女','upload/shangjia_touxiang8.jpg','773890008@qq.com','13823888888',200);
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2025-04-09 01:39:39','零食'),(32,'2025-04-09 01:39:39','酒'),(33,'2025-04-09 01:39:39','毛绒玩偶'),(34,'2025-04-09 01:39:39','包包'),(35,'2025-04-09 01:39:39','电子设备'),(36,'2025-04-09 01:39:39','婴幼儿用品'),(37,'2025-04-09 01:39:39','家居用品'),(38,'2025-04-09 01:39:39','衣服');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品分类',
  `tupian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '图片',
  `pinpai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '品牌',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shangpinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '商品详情',
  `onelimittimes` int DEFAULT NULL COMMENT '单限',
  `alllimittimes` int DEFAULT NULL COMMENT '库存',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  `vipprice` float DEFAULT '-1' COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2025-04-09 01:39:40','古风新款','衣服','upload/1678240549843.jpg,upload/1678240551928.jpg,upload/1678240554447.jpg','品牌1','1','2025-04-09','<p>商品详情1</p><p><img src=\"http://localhost:8080/springbooty2rp6/upload/1678240538063.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/springbooty2rp6/upload/1678240540901.jpg\"></p><p><img src=\"http://localhost:8080/springbooty2rp6/upload/1678240542979.jpg\"></p>',1,109,'2025-05-05 15:27:59',280,200),(42,'2025-04-09 01:39:40','高清数码相机','电子设备','upload/shangpinxinxi_tupian2.jpg,upload/shangpinxinxi_tupian3.jpg,upload/shangpinxinxi_tupian4.jpg','品牌2','1','2025-04-09','<p>商品详情2</p>',2,95,'2025-05-07 18:50:26',99.9,50),(43,'2025-04-09 01:39:40','毛绒小狗','毛绒玩偶','upload/shangpinxinxi_tupian3.jpg,upload/shangpinxinxi_tupian4.jpg,upload/shangpinxinxi_tupian5.jpg','品牌3','1','2025-04-09','<p>商品详情3</p>',3,95,'2025-05-06 16:25:50',99.9,66),(44,'2025-04-09 01:39:40','高浓度白酒','酒','upload/shangpinxinxi_tupian4.jpg,upload/shangpinxinxi_tupian5.jpg,upload/shangpinxinxi_tupian6.jpg','品牌4','账号4','2025-04-09','<p>商品详情4</p>',4,99,'2025-05-06 16:26:02',99.9,68),(45,'2025-04-09 01:39:40','新款包包','包包','upload/shangpinxinxi_tupian5.jpg,upload/shangpinxinxi_tupian6.jpg,upload/shangpinxinxi_tupian7.jpg','品牌5','账号5','2025-04-09','<p>商品详情5</p>',5,99,'2025-05-06 16:26:15',169,120),(46,'2025-04-09 01:39:40','奶粉','婴幼儿用品','upload/shangpinxinxi_tupian6.jpg,upload/shangpinxinxi_tupian7.jpg,upload/shangpinxinxi_tupian8.jpg','品牌6','账号6','2025-04-09','<p>商品详情6</p>',6,99,'2025-05-06 16:26:33',138,98),(47,'2025-04-09 01:39:40','静音鼠标','电子设备','upload/shangpinxinxi_tupian7.jpg,upload/shangpinxinxi_tupian8.jpg,upload/shangpinxinxi_tupian9.jpg','品牌7','账号7','2025-04-09','<p>商品详情7</p>',7,99,'2025-05-06 16:26:52',88,58),(48,'2025-04-09 01:39:40','巧克力','零食','upload/shangpinxinxi_tupian8.jpg,upload/shangpinxinxi_tupian9.jpg,upload/shangpinxinxi_tupian10.jpg','品牌8','账号8','2025-04-09','<p>商品详情8</p>',8,98,'2025-05-07 18:51:03',55,45);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1746614870372 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1678240651582,'2025-04-09 01:57:30',1678240351849,48,'shangpinxinxi','商品名称8','upload/shangpinxinxi_tupian8.jpg','1','商品分类8',NULL),(1678240673899,'2025-04-09 01:57:53',1678240351849,41,'shangpinxinxi','古风新款','upload/1678240549843.jpg','1','衣服',NULL),(1678240692954,'2025-04-09 01:58:12',1678240351849,52,'miaoshashangpin','限时衣服','upload/miaoshashangpin_tupian2.jpg','1','衣服',NULL),(1746614870371,'2025-05-07 10:47:50',18,42,'shangpinxinxi','高清数码相机','upload/shangpinxinxi_tupian2.jpg','1','电子设备',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','g5vhvtslpd8fhwsmfetsli0mk2ulmvk8','2025-04-09 01:45:09','2025-05-07 11:58:18'),(2,18,'1','yonghu','用户','o0i84hilvu0s8aciqdcmjp3eqes51u8a','2025-04-09 01:45:48','2025-05-07 11:47:30'),(3,28,'1','shangjia','商家','kx3jc3cgyx8t1n4qmsm14fok7qmem9sq','2025-04-09 01:47:14','2025-05-07 11:57:03'),(4,1678240351849,'2','yonghu','用户','8gbb2xnkg9xdxfkcacbcxrcvkvzz7hr5','2025-04-09 01:52:35','2025-05-04 04:47:04'),(5,1746534256797,'9','shangjia','商家','i3yyctk88sgzwbpvuxikt3r0jv0zroch','2025-05-06 12:24:24','2025-05-06 13:24:24'),(6,27,'2','shangjia','商家','pe7chg5mxw3iesx9yap5fhq9sn5loct1','2025-05-06 12:46:41','2025-05-06 13:46:41');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2025-04-09 01:39:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  `vip` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '否' COMMENT '是否会员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `yonghuming` (`yonghuming`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1678240351850 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2025-04-09 01:39:39','user8','c9f0f895fb98ab9159f51fd0297e236d','姓名8','upload/yonghu_touxiang1.jpg','男','773890001@qq.com','13823888881',200,'否'),(12,'2025-04-09 01:39:39','user7','8f14e45fceea167a5a36dedd4bea2543','姓名7','upload/yonghu_touxiang2.jpg','男','773890002@qq.com','13823888882',200,'否'),(13,'2025-04-09 01:39:39','user6','1679091c5a880faf6fb5e6087eb1b2dc','姓名6','upload/yonghu_touxiang3.jpg','男','773890003@qq.com','13823888883',200,'否'),(14,'2025-04-09 01:39:39','user5','e4da3b7fbbce2345d7772b0674a318d5','姓名5','upload/yonghu_touxiang4.jpg','男','773890004@qq.com','13823888884',200,'否'),(15,'2025-04-09 01:39:39','user4','a87ff679a2f3e71d9181a67b7542122c','姓名4','upload/yonghu_touxiang5.jpg','男','773890005@qq.com','13823888885',200,'否'),(16,'2025-04-09 01:39:39','user3','eccbc87e4b5ce2fe28308fd9f2a7baf3','姓名3','upload/yonghu_touxiang6.jpg','男','773890006@qq.com','13823888886',200,'否'),(17,'2025-04-09 01:39:39','user2','c81e728d9d4c2f636f067f89cc14862c','姓名2','upload/yonghu_touxiang7.jpg','男','773890007@qq.com','13823888887',200,'否'),(18,'2025-04-09 01:39:39','user1','c4ca4238a0b923820dcc509a6f75849b','乔','upload/yonghu_touxiang8.jpg','男','773890008@qq.com','13823888888',145,'否'),(1678240351849,'2025-04-09 01:52:31','2','c4ca4238a0b923820dcc509a6f75849b','王丽','upload/1678240339215.jpg','女','12121@12.com','15214121411',210533,'');
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

-- Dump completed on 2025-05-07 19:07:36
