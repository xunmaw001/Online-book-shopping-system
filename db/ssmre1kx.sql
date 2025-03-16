-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmre1kx
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610927919717 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-17 23:37:13',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-17 23:37:13',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-17 23:37:13',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-17 23:37:13',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-17 23:37:13',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-17 23:37:13',6,'宇宙银河系月球1号','月某','13823888886','是'),(1610927734937,'2021-01-17 23:55:34',61,'黑龙江省双鸭山市宝清县八五二农场036乡道','小吴','16459878988','是'),(1610927919716,'2021-01-17 23:58:39',1610927858152,'青海省黄南藏族自治州同仁市兰采乡','小邹','16459878988','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'tejiaqu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928086932 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=1610928580109 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (101,'2021-01-17 23:37:13',1,1,'提问1','回复1',1),(102,'2021-01-17 23:37:13',2,2,'提问2','回复2',2),(103,'2021-01-17 23:37:13',3,3,'提问3','回复3',3),(104,'2021-01-17 23:37:13',4,4,'提问4','回复4',4),(105,'2021-01-17 23:37:13',5,5,'提问5','回复5',5),(106,'2021-01-17 23:37:13',6,6,'提问6','回复6',6),(1610927773249,'2021-01-17 23:56:12',61,NULL,'11111111111111111',NULL,1),(1610928211061,'2021-01-18 00:03:30',1610927858152,NULL,'这里可以向管理员咨询 管理员在后台回复',NULL,0),(1610928580108,'2021-01-18 00:09:39',1610927858152,1,NULL,'用户在前台咨询  管理员在后台回复',NULL);
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmre1kx/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmre1kx/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmre1kx/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `pingjiabiaoti` varchar(200) NOT NULL COMMENT '评价标题',
  `dingdanpingfen` varchar(200) DEFAULT NULL COMMENT '订单评分',
  `dingdanpingjia` longtext COMMENT '订单评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928726396 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (1610927797249,'2021-01-17 23:56:36','20211187555770134090','图书评价','5','<p>6666666</p>','2021-01-27','001','13823888881','773890001@qq.com','是','这里查看用户订单评价并回复'),(1610928726395,'2021-01-18 00:12:05','2021118814099299236','这里进行图书订单的评价','5','<p>666</p>','2021-01-29','666','16459878985','1656@123.com','是','收到评价  谢谢支持');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiushuhuishou`
--

DROP TABLE IF EXISTS `discussjiushuhuishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiushuhuishou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='旧书回收评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiushuhuishou`
--

LOCK TABLES `discussjiushuhuishou` WRITE;
/*!40000 ALTER TABLE `discussjiushuhuishou` DISABLE KEYS */;
INSERT INTO `discussjiushuhuishou` VALUES (181,'2021-01-17 23:37:13',1,1,'评论内容1','回复内容1'),(182,'2021-01-17 23:37:13',2,2,'评论内容2','回复内容2'),(183,'2021-01-17 23:37:13',3,3,'评论内容3','回复内容3'),(184,'2021-01-17 23:37:13',4,4,'评论内容4','回复内容4'),(185,'2021-01-17 23:37:13',5,5,'评论内容5','回复内容5'),(186,'2021-01-17 23:37:13',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiushuhuishou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstejiaqu`
--

DROP TABLE IF EXISTS `discusstejiaqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstejiaqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928074242 DEFAULT CHARSET=utf8 COMMENT='特价区评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstejiaqu`
--

LOCK TABLES `discusstejiaqu` WRITE;
/*!40000 ALTER TABLE `discusstejiaqu` DISABLE KEYS */;
INSERT INTO `discusstejiaqu` VALUES (171,'2021-01-17 23:37:13',1,1,'评论内容1','回复内容1'),(172,'2021-01-17 23:37:13',2,2,'评论内容2','回复内容2'),(173,'2021-01-17 23:37:13',3,3,'评论内容3','回复内容3'),(174,'2021-01-17 23:37:13',4,4,'评论内容4','回复内容4'),(175,'2021-01-17 23:37:13',5,5,'评论内容5','回复内容5'),(176,'2021-01-17 23:37:13',6,6,'评论内容6','回复内容6'),(1610928074241,'2021-01-18 00:01:13',42,1610927858152,'特价区这里做了一个倒计时的效果  倒计时结束后会有一个活动结束标语  代表这个商品不能再购买了',NULL);
/*!40000 ALTER TABLE `discusstejiaqu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinshubang`
--

DROP TABLE IF EXISTS `discussxinshubang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinshubang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928009245 DEFAULT CHARSET=utf8 COMMENT='新书榜评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinshubang`
--

LOCK TABLES `discussxinshubang` WRITE;
/*!40000 ALTER TABLE `discussxinshubang` DISABLE KEYS */;
INSERT INTO `discussxinshubang` VALUES (161,'2021-01-17 23:37:13',1,1,'评论内容1','回复内容1'),(162,'2021-01-17 23:37:13',2,2,'评论内容2','回复内容2'),(163,'2021-01-17 23:37:13',3,3,'评论内容3','回复内容3'),(164,'2021-01-17 23:37:13',4,4,'评论内容4','回复内容4'),(165,'2021-01-17 23:37:13',5,5,'评论内容5','回复内容5'),(166,'2021-01-17 23:37:13',6,6,'评论内容6','回复内容6'),(1610928009244,'2021-01-18 00:00:08',31,1610927858152,'用户登录后可以评论  购买  咨询  预约图书回收等操作','管理员在后台回复用户在前台的评论');
/*!40000 ALTER TABLE `discussxinshubang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huishouleibie`
--

DROP TABLE IF EXISTS `huishouleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huishouleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leibie` (`leibie`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928261582 DEFAULT CHARSET=utf8 COMMENT='回收类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huishouleibie`
--

LOCK TABLES `huishouleibie` WRITE;
/*!40000 ALTER TABLE `huishouleibie` DISABLE KEYS */;
INSERT INTO `huishouleibie` VALUES (21,'2021-01-17 23:37:13','人文社科'),(22,'2021-01-17 23:37:13','杂志小说'),(23,'2021-01-17 23:37:13','儿童读物'),(24,'2021-01-17 23:37:13','教材教辅'),(1610928261581,'2021-01-18 00:04:20','12');
/*!40000 ALTER TABLE `huishouleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huishouyuyue`
--

DROP TABLE IF EXISTS `huishouyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huishouyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `huishoumingcheng` varchar(200) DEFAULT NULL COMMENT '回收名称',
  `yuyuemingcheng` varchar(200) NOT NULL COMMENT '预约名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `huishoujia` varchar(200) DEFAULT NULL COMMENT '回收价',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `shangmenshijian` datetime DEFAULT NULL COMMENT '上门时间',
  `yuyueneirong` longtext COMMENT '预约内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangmendizhi` varchar(200) NOT NULL COMMENT '上门地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928166341 DEFAULT CHARSET=utf8 COMMENT='回收预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huishouyuyue`
--

LOCK TABLES `huishouyuyue` WRITE;
/*!40000 ALTER TABLE `huishouyuyue` DISABLE KEYS */;
INSERT INTO `huishouyuyue` VALUES (1610927682028,'2021-01-17 23:54:41','20211187542188585825','回收名称1','12','人文社科','标签1','http://localhost:8080/ssmre1kx/upload/1610927411000.jpg','5','2021-01-28','2021-01-29 10:00:00','<p>222</p>','001','13823888881','773890001@qq.com','环市西路165号','否',NULL),(1610928166340,'2021-01-18 00:02:45','2021118815434491692','回收名称4','这里进行回收预约','杂志小说','标签4','http://localhost:8080/ssmre1kx/upload/1610927454030.jpg','5','2021-01-29','2021-01-30 11:00:00','<p>这里输入预约内容</p>','666','16459878982','1656@123.com','环市南路112号','是','收到  免费上门回收');
/*!40000 ALTER TABLE `huishouyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiushuhuishou`
--

DROP TABLE IF EXISTS `jiushuhuishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiushuhuishou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huishoumingcheng` varchar(200) NOT NULL COMMENT '回收名称',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  `biaoqian` varchar(200) NOT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `huishoujia` int(11) NOT NULL COMMENT '回收价',
  `huishouxiangqing` longtext COMMENT '回收详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='旧书回收';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiushuhuishou`
--

LOCK TABLES `jiushuhuishou` WRITE;
/*!40000 ALTER TABLE `jiushuhuishou` DISABLE KEYS */;
INSERT INTO `jiushuhuishou` VALUES (51,'2021-01-17 23:37:13','回收名称1','人文社科','标签1','http://localhost:8080/ssmre1kx/upload/1610927411000.jpg','斤',5,'<p>回收详情1</p>'),(52,'2021-01-17 23:37:13','回收名称2','教材教辅','标签2','http://localhost:8080/ssmre1kx/upload/1610927425596.jpg','斤',8,'<p>回收详情2</p>'),(53,'2021-01-17 23:37:13','回收名称3','儿童读物','标签3','http://localhost:8080/ssmre1kx/upload/1610927440882.jpg','斤',3,'<p>回收详情3</p>'),(54,'2021-01-17 23:37:13','回收名称4','杂志小说','标签4','http://localhost:8080/ssmre1kx/upload/1610927454030.jpg','规格4',5,'<p>回收详情4</p>');
/*!40000 ALTER TABLE `jiushuhuishou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928560572 DEFAULT CHARSET=utf8 COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (151,'2021-01-17 23:37:13','新型图书馆正在成为购物中心新宠','http://localhost:8080/ssmre1kx/upload/news_picture1.jpg','<p><br></p><ul><li><a href=\"http://www.linkshop.com.cn/index.htm\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(64, 64, 64);\">联商首页</a><a href=\"http://www.linkshop.com.cn/news/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(64, 64, 64);\">资讯动态</a><a href=\"http://www.linkshop.com.cn/news/gwzx/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(64, 64, 64);\">购物中心</a>正文</li></ul><p><br></p><h1>新型图书馆正在成为购物中心新宠 书店已经out了？</h1><p><span style=\"color: rgb(159, 159, 159);\">来源：&nbsp;联商高级顾问团成员 郭歆晔</span>&nbsp;<span style=\"color: rgb(159, 159, 159);\">2019-08-05 15:43</span></p><p><strong>联商专栏：</strong>个性至上的大潮下，不甘于被潮流抛弃的<a href=\"http://t.linkshop.com.cn/kindex_id_376.aspx\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 187, 190);\">购物中心</a>必须成为承载和传播某种独树一帜文化的有效载体，真正影响并激发潜在客群的内心、感知、情感、探索、爱好、想象，触发其审美与思考，使其自然而然地转化为表达个人生活态度的消费行为。</p><p>在此背景下，买买买的传统购物中心买逛模式开始退潮，在购物中心游逛休闲的模式开启，文化体验业态应势生长，体验式商业进入2.0时代，即更注重综合的心理、社会及精神多维文化的体验与消费，文化与商业的结合越来越广泛。</p><p>于是我们看到，继IP展艺术展等期间限定的文创展览活动进入购物中心中庭后，形形色色常态运营的各种有趣的博物馆、艺术馆、美术馆、剧院近年来也纷纷被搬进各大购物中心。</p>'),(152,'2021-01-17 23:37:13','这些图书馆居然可以吃饭和购物','http://localhost:8080/ssmre1kx/upload/news_picture2.jpg','<p><span style=\"color: rgb(51, 51, 51);\">令人惊叹的雅典人盛大辉煌的书店在布宜诺斯艾利斯，阿根廷，被安置在一个与所有的原始功能完好的旧剧院。 会场，开幕于1919年，举办了芭蕾、歌剧和其他作品。它也推出了自己的广播电台在上世纪20年代。2000年、宏伟的建筑改建成与原装饰保存书店，包括中央穹顶绘有意大利风格的壁画。店，现在是旅游胜地，股票大约120000本书，有对旧阶段的咖啡店。</span></p>'),(153,'2021-01-17 23:37:13','内蒙古自治区首家图书购物网站开通','http://localhost:8080/ssmre1kx/upload/news_picture3.jpg','<p class=\"ql-align-justify\">	新报讯（记者 张学博） 记者昨日从勒勒车图书超市开通仪式新闻发布会上了解到，由呼和浩特市城发信息管网有限责任公司主办的勒勒车图书超市网站（book.mglshop.cn）正式开通，该网站是内蒙古自治区首家自主研发的在线图书购物网站。</p><p class=\"ql-align-justify\">	据了解，由于蒙古族语言的特殊性，目前国内比较常用的图书购物网站并不支持蒙古文搜索。通过可以支持多文种应用的勒勒车图书超市网站查询板块，客户可以准确、快捷地用蒙古文直接搜索到需要的图书并进行购买。目前，勒勒车图书超市网站共有49种图书与音像制品，涉及教育、科技、文学、医疗等领域。</p><p><br></p>'),(154,'2021-01-17 23:37:13','京东商城图书购物频道今日上线','http://localhost:8080/ssmre1kx/upload/news_picture4.jpg','<p><span style=\"color: rgb(89, 89, 89);\">为配合图书销售，京东商城进一步扩大货到付款的范围。</span></p><p>凤凰网科技讯 11月1日消息，京东商城图书频道今日正式上线，这同时也意味着京东商城正式向当当网、卓越两大国内在线图书零售市场霸主发起挑战。</p><p>登陆京东商城发现，新开通的图书频道目前处在首页全部商品分类的第一位，其下才是手机数码、电脑办公商品等京东商城传统强势产品大分类。</p><p>据悉，京东网上商城今日试运行销售的图书商品将涵盖文艺、社科、经管励志、教育考试、科技、生活、少儿等7大品类39个大分类超过10万种。而京东方面也表示，人民出版社、人民文学出版社，商务印书馆，机械工业出版社、中华书局，中信出版社等国内出版巨头对于京东网上商城全面进军网购图书市场寄予厚望，并拿出最好的资源鼎力支持。</p><p>另据了解，为配合图书销售，京东商城进一步扩大货到付款的范围，全国500多个城市将支持图书类商品的货到付款，未来这一范围还会进一步增加。同时，京东网上商城还会继续加速图书单品的完善，预计图书品类将迅速扩张到25万种。据透露，前卓越亚马逊分管图书副总裁石涛目前担任京东商城图书采销副总裁。</p>'),(156,'2021-01-17 23:37:13','三联韬奋书店美术馆店重张营业 推出网购图书快送服务','http://localhost:8080/ssmre1kx/upload/news_picture6.jpg','<p>	人民网北京4月26日电（池梦蕊）4月23日上午10时，三联韬奋书店美术馆店停业两个多月后重新对外营业。重张后的书店调整了店内布局，同时推出多种促销活动。</p><p>	<strong>加强店内通风，阅读区暂时关闭</strong></p><p>	当天下午，记者在书店门口出示“健康宝”、测温、登记后进入书店，此时店内读者并不多，有的倚窗阅读，有的在书架前流连。店内供读者看书的座椅已经全部撤掉，一层的阅读区也暂时关闭。通往地下一层的楼梯口拦上了警戒线，并贴有“疫情期间地下一层暂不开放”的通告。</p>'),(1610928560571,'2021-01-18 00:09:20','这里添加系统公告','http://localhost:8080/ssmre1kx/upload/1610928555289.jpg','<p>或者一些相关的新闻资讯</p><p><img src=\"http://localhost:8080/ssmre1kx/upload/1610928559509.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'tejiaqu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928101977 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1610927758558,'2021-01-17 23:55:57','20211187555770134090','tejiaqu',61,41,'图书名称1','http://localhost:8080/ssmre1kx/upload/tejiaqu_tupian1.jpg',2,99.9,99.9,199.8,199.8,1,'已发货','黑龙江省双鸭山市宝清县八五二农场036乡道'),(1610927767489,'2021-01-17 23:56:06','2021118756669361297','xinshubang',61,32,'图书名称2','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian2.jpg',2,19,19,38,38,1,'已发货','黑龙江省双鸭山市宝清县八五二农场036乡道'),(1610928022720,'2021-01-18 00:00:22','2021118802195182543','xinshubang',1610927858152,31,'图书1','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian1.jpg',1,22,22,22,22,1,'已完成','青海省黄南藏族自治州同仁市兰采乡'),(1610928101417,'2021-01-18 00:01:41','2021118814097337941','tejiaqu',1610927858152,41,'图书名称1','http://localhost:8080/ssmre1kx/upload/tejiaqu_tupian1.jpg',1,99.9,99.9,137.9,99.9,1,'已完成','青海省黄南藏族自治州同仁市兰采乡'),(1610928101976,'2021-01-18 00:01:41','2021118814099299236','xinshubang',1610927858152,32,'图书名称2','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian2.jpg',2,19,19,137.9,38,1,'已完成','青海省黄南藏族自治州同仁市兰采乡');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1610928016060 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610928016059,'2021-01-18 00:00:15',1610927858152,31,'xinshubang','图书1','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tejiaqu`
--

DROP TABLE IF EXISTS `tejiaqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tejiaqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `faxingriqi` date DEFAULT NULL COMMENT '发行日期',
  `tushujieshao` longtext COMMENT '图书介绍',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='特价区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tejiaqu`
--

LOCK TABLES `tejiaqu` WRITE;
/*!40000 ALTER TABLE `tejiaqu` DISABLE KEYS */;
INSERT INTO `tejiaqu` VALUES (41,'2021-01-17 23:37:13','图书名称1','图书','文学','http://localhost:8080/ssmre1kx/upload/tejiaqu_tupian1.jpg','作者1','出版社1','2019-01-07','<p>图书介绍1</p>','2021-01-28 00:00:00',99.9),(42,'2021-01-17 23:37:13','图书名称2','剧本','话剧','http://localhost:8080/ssmre1kx/upload/tejiaqu_tupian2.jpg','作者2','出版社2','2018-01-02','<p>图书介绍2</p>','2021-01-11 00:00:00',66),(43,'2021-01-17 23:37:13','图书名称3','分类3','标签3','http://localhost:8080/ssmre1kx/upload/tejiaqu_tupian3.jpg','作者3','出版社3','2021-01-18','图书介绍3','2021-01-19 00:00:00',99.9),(44,'2021-01-17 23:37:13','图书名称4','分类4','标签4','http://localhost:8080/ssmre1kx/upload/tejiaqu_tupian4.jpg','作者4','出版社4','2021-01-18','图书介绍4','2021-01-19 00:00:00',99.9),(45,'2021-01-17 23:37:13','图书名称5','分类5','标签5','http://localhost:8080/ssmre1kx/upload/tejiaqu_tupian5.jpg','作者5','出版社5','2021-01-18','图书介绍5','2021-01-19 00:00:00',99.9),(46,'2021-01-17 23:37:13','图书名称6','分类6','标签6','http://localhost:8080/ssmre1kx/upload/tejiaqu_tupian6.jpg','作者6','出版社6','2021-01-18','图书介绍6','2021-01-19 00:00:00',99.9);
/*!40000 ALTER TABLE `tejiaqu` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','tcatxdft7nsyjcyr3aomyarlbx3nb2ni','2021-01-17 23:43:41','2021-01-18 01:12:13'),(2,61,'001','yonghu','用户','zpjb0ue6a9njahjs1psvjpcqe6bzybcb','2021-01-17 23:53:15','2021-01-18 00:54:08'),(3,1610927858152,'666','yonghu','用户','7ifrf69azhz0z7k8kfpmcny3jvjbwdcu','2021-01-17 23:57:43','2021-01-18 01:12:31');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushufenlei`
--

DROP TABLE IF EXISTS `tushufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928255391 DEFAULT CHARSET=utf8 COMMENT='图书分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushufenlei`
--

LOCK TABLES `tushufenlei` WRITE;
/*!40000 ALTER TABLE `tushufenlei` DISABLE KEYS */;
INSERT INTO `tushufenlei` VALUES (11,'2021-01-17 23:37:13','图书'),(12,'2021-01-17 23:37:13','电子书'),(13,'2021-01-17 23:37:13','童书'),(14,'2021-01-17 23:37:13','诗歌'),(15,'2021-01-17 23:37:13','剧本'),(16,'2021-01-17 23:37:13','动漫'),(1610928255390,'2021-01-18 00:04:15','11');
/*!40000 ALTER TABLE `tushufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuhuishou`
--

DROP TABLE IF EXISTS `tushuhuishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuhuishou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huishoumingcheng` varchar(200) DEFAULT NULL COMMENT '回收名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `huishoujia` varchar(200) DEFAULT NULL COMMENT '回收价',
  `zhongliang` int(11) NOT NULL COMMENT '重量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `huishouriqi` date DEFAULT NULL COMMENT '回收日期',
  `dingdanzhuangtai` varchar(200) NOT NULL COMMENT '订单状态',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shangmendizhi` varchar(200) DEFAULT NULL COMMENT '上门地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928482090 DEFAULT CHARSET=utf8 COMMENT='图书回收';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuhuishou`
--

LOCK TABLES `tushuhuishou` WRITE;
/*!40000 ALTER TABLE `tushuhuishou` DISABLE KEYS */;
INSERT INTO `tushuhuishou` VALUES (91,'2021-01-17 23:37:13','回收名称1','类别1','标签1','http://localhost:8080/ssmre1kx/upload/tushuhuishou_tupian1.jpg','回收价1',1,'总价格1','2021-01-18','已完成','用户名1','手机1','上门地址1','未支付'),(92,'2021-01-17 23:37:13','回收名称2','类别2','标签2','http://localhost:8080/ssmre1kx/upload/tushuhuishou_tupian2.jpg','回收价2',2,'总价格2','2021-01-18','已完成','用户名2','手机2','上门地址2','未支付'),(93,'2021-01-17 23:37:13','回收名称3','类别3','标签3','http://localhost:8080/ssmre1kx/upload/tushuhuishou_tupian3.jpg','回收价3',3,'总价格3','2021-01-18','已完成','用户名3','手机3','上门地址3','未支付'),(94,'2021-01-17 23:37:13','回收名称4','类别4','标签4','http://localhost:8080/ssmre1kx/upload/tushuhuishou_tupian4.jpg','回收价4',4,'总价格4','2021-01-18','已完成','用户名4','手机4','上门地址4','未支付'),(95,'2021-01-17 23:37:13','回收名称5','类别5','标签5','http://localhost:8080/ssmre1kx/upload/tushuhuishou_tupian5.jpg','回收价5',5,'总价格5','2021-01-18','已完成','用户名5','手机5','上门地址5','未支付'),(96,'2021-01-17 23:37:13','回收名称6','类别6','标签6','http://localhost:8080/ssmre1kx/upload/tushuhuishou_tupian6.jpg','回收价6',6,'总价格6','2021-01-18','已完成','用户名6','手机6','上门地址6','已支付'),(1610928482089,'2021-01-18 00:08:01','回收名称4','杂志小说','标签4','http://localhost:8080/ssmre1kx/upload/1610927454030.jpg','5',6,'30','2021-01-30','已完成','666','16459878982','环市南路112号','已支付');
/*!40000 ALTER TABLE `tushuhuishou` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-17 23:37:13'),(2,'000','000','管理员','2021-01-18 00:08:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinshubang`
--

DROP TABLE IF EXISTS `xinshubang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinshubang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `biaoqian` varchar(200) NOT NULL COMMENT '标签',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `faxingriqi` date DEFAULT NULL COMMENT '发行日期',
  `tushujieshao` longtext COMMENT '图书介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610928311128 DEFAULT CHARSET=utf8 COMMENT='新书榜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinshubang`
--

LOCK TABLES `xinshubang` WRITE;
/*!40000 ALTER TABLE `xinshubang` DISABLE KEYS */;
INSERT INTO `xinshubang` VALUES (31,'2021-01-17 23:37:13','图书1','图书','历史','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian1.jpg','作者1','出版社1','2017-12-31','<p>图书介绍1</p>','2021-01-18 08:10:41',8,22),(32,'2021-01-17 23:37:13','图书名称2','电子书','网络文学','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian2.jpg','作者2','出版社2','2020-01-05','<p>图书介绍2</p>','2021-01-18 08:01:40',9,19),(33,'2021-01-17 23:37:13','图书名称3','图书','经营','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian3.jpg','作者3','出版社3','2018-01-07','<p>图书介绍3</p>','2021-01-18 08:03:08',6,20),(34,'2021-01-17 23:37:13','图书名称4','分类4','标签4','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian4.jpg','作者4','出版社4','2021-01-18','图书介绍4','2021-01-18 07:37:13',4,99.9),(35,'2021-01-17 23:37:13','图书名称5','分类5','标签5','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian5.jpg','作者5','出版社5','2021-01-18','图书介绍5','2021-01-18 07:37:13',5,99.9),(36,'2021-01-17 23:37:13','图书名称6','分类6','标签6','http://localhost:8080/ssmre1kx/upload/xinshubang_tupian6.jpg','作者6','出版社6','2021-01-18','图书介绍6','2021-01-18 07:37:13',6,99.9),(1610928311127,'2021-01-18 00:05:11','这里添加图书信息','图书','健身类','http://localhost:8080/ssmre1kx/upload/1610928280865.jpg','A','A','2019-01-01','<p><img src=\"http://localhost:8080/ssmre1kx/upload/1610928300356.jpg\"></p>','2021-01-18 08:11:03',1,28);
/*!40000 ALTER TABLE `xinshubang` ENABLE KEYS */;
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
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610927858153 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (61,'2021-01-17 23:37:13','001','001','小吴','男','http://localhost:8080/ssmre1kx/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',462.2),(62,'2021-01-17 23:37:13','用户2','123456','姓名2','男','http://localhost:8080/ssmre1kx/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(63,'2021-01-17 23:37:13','用户3','123456','姓名3','男','http://localhost:8080/ssmre1kx/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(64,'2021-01-17 23:37:13','用户4','123456','姓名4','男','http://localhost:8080/ssmre1kx/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(65,'2021-01-17 23:37:13','用户5','123456','姓名5','男','http://localhost:8080/ssmre1kx/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(66,'2021-01-17 23:37:13','用户6','123456','姓名6','男','http://localhost:8080/ssmre1kx/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1610927858152,'2021-01-17 23:57:38','666','666','小邹','男','http://localhost:8080/ssmre1kx/upload/1610927873272.jpg','16459878985','1656@123.com',2.2);
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

-- Dump completed on 2021-01-18 20:04:02
