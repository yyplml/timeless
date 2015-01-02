/*
SQLyog v10.2 
MySQL - 5.5.15 : Database - timeless
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`timeless` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `timeless`;

/*Table structure for table `t_faq` */

DROP TABLE IF EXISTS `t_faq`;

CREATE TABLE `t_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `q_content` text,
  `a_content` text,
  `shop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Data for the table `t_faq` */

insert  into `t_faq`(`id`,`q_content`,`a_content`,`shop_id`) values (1,'您好！请问你们的地址在哪里？怎么去？','（Let me talk to the driver,please.）--丽江古城区金虹路 北门坡加油站石油公司 斜对面文明村路口(去市一中北门的路)进古城第一个十字路口右拐第二个客栈 久居丽江客栈。',3),(2,'有毛巾租吗？ （住多人间的客人会问）','是的,3元/条',3),(3,'有接站、接机服务吗？','有的，请尽量提前预约以便安排车辆接送。',3),(4,'你们能帮忙订车票吗？ ','有的。',3),(5,'可以把行李寄存在这儿吗？','可以的，我们提供免费住客行李寄存服务。',3),(6,'有洗衣服务吗？洗衣房在哪里？衣服晾在哪里？','有的，8元/次 ,二楼的后院；洗衣房楼上有阳台可以晾衣服。',3),(7,'丽江什么时候来最好？','一年四季都适合旅游，5—10月来的人多，旅游旺季。',3),(8,'去黑龙潭怎么走？','距离—2KM.时间：20分钟 ； 沿着金虹路走到750M，再延玉缘路向西北走300米。',3),(9,'你能推荐好吃的餐馆吗？','当地食物推荐--88号小吃店（NAXI SNACKS），天天鲜； 西餐---N’s kitchen (小四方街)，当然，Robin’s dinner也会就近推荐咯。 当然，还是在地图上指路。（地图的可视性很强大，第一眼就能让客人心里有底）',3),(10,'去束河、白沙，怎么走？','拿出地图，去束河8KM，自行车 40分钟（推荐）；白沙10KM，自行车50分钟（推荐）。11路公交，从忠义市场到束河。',3),(11,'去玉龙雪山，多少钱？怎么走？','雪山专线车，前一天预定（只针对会说中文的客人）；包车一日游，我们可以联系（淡季250-300，旺季350）。 到红太阳广场搭乘面包车20/人。',3),(12,'我要去大理，你觉得那种方式好？ 火车还是大巴？','火车，省钱；汽车，省时间，直达古城；',3),(13,'丽江古城附近有什么推荐去的地方吗？','狮子山，黑龙潭，四方街，大水车。',3),(14,'我想去沙溪，怎么去？','做公交车到剑川，2小时，23元/人；转面包车 ，15元左右/人。或者，包车，我们可以安排。',3),(15,'去香格里拉，多远？','大巴，4-4.5小时',3),(16,'去泸沽胡，多远？(太远，从丽江去的人相对少)','大巴，7-9 小时 。可以自己买票去，100元。也可搭乘我们的shuttle bus。',3),(17,'你们这儿有接送站、接送机服务吗？价格多少？','是的。火车站50/车，飞机场 100元/车（7：00am-11:00pm）,其他时间120元。',3),(18,'火车站多远？ 去飞机场多远？怎么走？','12KM，25分钟；28.7公里，35—40分钟。',3),(19,'你觉得明天的天气适合虎跳峡徒步吗？','不在雨季，虎跳峡是山区气候，比较多变，即使有雨，经常下一会儿就停了。  ',3),(20,'我只有一天时间，想去虎跳峡，怎么办？','可以坐车到中峡，3小时，然后可以参观景色最好的中虎跳。',3),(21,'去虎跳峡，怎么去？ 您能否给我介绍下虎跳峡徒步吗？','我们有安排班车，每天早上7：20 出发。如果是徒步，经2.5个小时到桥头，开始徒步，第一天晚上要在山上过夜，一般情况下，会走到茶马客栈5-6小时到； 或者中途（halfway）客栈，7-8小时到。照着地图，指出路线、途径的几个点。第二天下到中峡旅店，2小时；花2-3小时参观中虎跳； 下午回丽江或者去香格里拉的班车，都是3：30PM，中峡旅店出发。',3),(22,'需要提前定山上的住宿吗？我明天虎跳峡徒步。','淡季不需要预定。旺季，如果客人强烈要求，可以帮联系预定。但，之前出现过预定了中途旅店，但客人走不到；所以，个人建议，一般不要帮订，因各人徒步的体力情况不确定性很高。',3),(23,'那么早出发，有时间吃早餐吗？','可以提前一晚向Robin预定早餐，这样第二天就有足够时间用餐。',3),(24,'我预定了明天的房间，但我明天要去虎跳峡，能否把预定挪到后天？','当然可以。',3),(25,'你觉得徒步的路难走吗？你觉得我能hold住吗？','去徒步的，都回来了，不用太担心',3),(26,'我想从虎跳峡直接去香格里拉，可以吗？','当然可以，有班车从中峡旅店直接去香格里拉',3),(27,'这样，我行李怎么办？','我们可以安排行李托运到中峡，第二天您到达时取回即可。',3),(28,'当天往返，可否买返票？','可以的',3),(29,'Hello? Is that Timeless hostel? How to get there, please? ','Let me talk to the driver ,please. I will tell the driver the address in Chinese--丽江古城区金虹路 北门坡加油站石油公司 斜对面文明村路口(去市一中北门的路)进古城第一个十字路口右拐第二个客栈 久居丽江客栈。Then I will talk to you about what I told the driver. what you only to do is just call me when you get off the taxi.(see? no problem.)',6),(30,'Can I rent a towel？ （some customers who live in dormitory might ask）','Sure, by the way, 3RMB per towel.',6),(31,'Can you arrange pick up service from the airport  or train station?','Yes, we can.',6),(32,'Could you book bus tickets or train tickets for customers? ','No problem, we can do that.',6),(33,'Can I leave my luggage here?','No doubt，you can put you luggage into our storage room ,for free definitely.',6),(34,'Can I do laundry？Where’s the laundry room？And where can I hang my clothes？','We have a laundry room in the backyard on the second floor (the staffs can lead you there )，we got automatic washing machines and a dryer.8元/load ,please. The roof is just above the laundry room, you can hang clothes up there.',6),(35,'What’s the best tour season in Lijiang？','Lijiang is a place where you can have a look in four seasons. However, more travelers come here from  May to the end of October.',6),(36,'How can I get to the Black Dragon pool park？','distance—2KM.time：20 minutes walking ； Theoretically, walk along with the JIN HONG Rd. for 750M you will get Yu Yuan Rd，then turn to north to walk for 300m plus。（The easier way is that I will show you the map, and point out the location and routes to get there, I even can jot the name down in Chinese, so that you can show people in case you get lost.）',6),(37,'Do you have any restaurants to recommend？','Local food--88号小吃店（NAXI SNACKS），天天鲜(Tian tian xian)； Western food---N’s kitchen (tiny square street)。 Of course，our staffs will point out the locations and the routes on the map ,for you.',6),(38,'Can you tell me how to get to SHUHE,BAISHA, please?','we prepared  a  map of this area ,you can take copies  for free .distance to SHUHE is 8KM 40minutes by bike（recommended ）；To BAISHA is 10KM， 50minutes by bike（recommended）。By the way, you can take  the bus NO.11 to SHUHE, you have to go to ZHONGYI Market to get one.',6),(39,'I want go to Jade Dragon snow mount. How much? How to get there?','Hire a minivan，we can arrange a one-day tour mini van ( the driver is yours in the whole day, you can ask to visit Baisha, Jade Water village, Yuhu village after the snow mountain.) ,low season is 300RMB，normally,350RMB）. Or you can take a minivan to the snow mount. One way,20/人.definitely, you can take a taxi ,it takes 50 about minutes.',6),(40,'I will go to DALI，by train or by bus? Which one is better?','By train, cheaper, but the train station is in the new town ；By bus，the driver can drop you off in the old town, more convenient.',6),(41,'Do you recommend any places in the old town?','Like Lion Hill，Black dragon pool，Mu’s house, square street ,water wheels, ect. normally, we would like to communicate with customers, try to know their unique requirements ,then we recommend based on that.（For instance, someone likes saving money, some prefer quiet places，some people would like to visit as many as possible；so, it should be more flexible to recommend, isn’t it?）',6),(42,'How to get to Shaxi？','You have to take a bus to JianChuan county，2 hours，23RMB/person；Then, transmit to the minivan ，approximately ,15 /person .Or，hire a minivan，we can arrange it if you want.',6),(43,'How far from Lijiang to Shangri-la？','It takes about  4 hours ,by bus.',6),(44,'How far from Lijiang to Lugu Lake?','it takes 7-9 hours by bus,100RMB.Or,you still can book the seats of our shuttle bus.',6),(45,'What’s the price of the pick-up service from your hostel?','50RMB/van  from the train station ; 100RMB/van,from the airport（7：00am-11:00pm）,120RMB/van,earlier than 7 am or later than 11pam.',6),(46,'How far to the train station?  The airport?','12KM，25minutes by taxi；28.7km，35—40minutes by taxi.',6),(47,'I would like to go to the TLG for hiking. Could you please introduce tiger leaping gorge to me？Thank you.','There is a map of  Tiger leaping gorge on the wall .I will introduce all the information based on the map.----Firstly, we arrange the shuttle bus at 7:20 am every morning,40RMB per person .It takes 2.5 hours from Lijiang to QiaoTou  where you will start hiking. You will spend the first night on the mountain. mostly, hikers can cover the way to the Tea Horse guesthouse after  5-6 hours hiking；or the Halfway Hostel( you have to walk for more 1.5-2 hours from Tea Horse).The next morning, you will keep going to get Tina’s guesthouse，it takes 2 hours；Then, you can 2-3hours to visit the whole middle tiger leaping gorge area, After, you will take the shuttle bus from Tina’s to Lijiang at 3:30 pm,55RMB,3 hours .By the way, you ca n also take the shuttle bus to Shangri-la from Tina’s at the same time.',6),(48,'I have only one day to visit Tiger Leaping Gorge? What should I do?   (sometimes, some senior people who think the hiking is too much will also have the same question)','You can take the same shuttle bus to the Tina’s, that means you don’t need to climb the mountain .However, you will have enough time to visit the one of the most breathtaking part ---the area of middle tiger leaping gorge.',6),(49,'Do I need to book the guesthouse or hostel on the mountain?','normally, you don’t need to .There are  guesthouse out there, and much less travelers compare to Lijiang. not that easy to cover the way for everyone. To some extend, only hikers get there.  ',6),(50,'Oh,the shuttle bus is pretty early, can I have breakfast before leaving?','You can order breakfast in Robin’s dinner which is inside our hostel the night before if you want. So that you will get enough time to have your breakfast before leaving. Definitely, you can also buy snacks to eat or just go outside to find something to eat. Just make sure that you won’t be late to catch the shuttle bus with us.',6),(51,'I already booked the room for tomorrow night. But I would like to go to TLG tomorrow. Could you change my reservation to the day after tomorrow?','Of course, no problem.',6),(52,'I would like to go to Shangri-la directly from the TLG, is that possible？','Yes, you can do that .there is a shuttle bus from Tina’s to Shangri-La at 3:30 every afternoon.',6),(53,'So, what about my luggage？','Our driver can carry your luggage to Tina’s，so that you can pick them from Tina’s storage room when you get there the next day.',6),(54,'If I choose one-day trip in TLG，can I buy the return way ticket?','Sure, no problem.',6);

/*Table structure for table `t_language_info` */

DROP TABLE IF EXISTS `t_language_info`;

CREATE TABLE `t_language_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `num` varchar(64) DEFAULT NULL,
  `locale` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_language_info` */

insert  into `t_language_info`(`id`,`name`,`num`,`locale`) values (1,'中文','1','zh_CN'),(2,'English','2','en_US');

/*Table structure for table `t_marker_info` */

DROP TABLE IF EXISTS `t_marker_info`;

CREATE TABLE `t_marker_info` (
  `id` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `is_start` tinyint(1) DEFAULT '1' COMMENT '0-未启用,1-启用',
  `x_value` varchar(32) DEFAULT NULL COMMENT '地图坐标第一个参数',
  `y_value` varchar(32) DEFAULT NULL COMMENT '地图坐标第二个参数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='百度地图标注表';

/*Data for the table `t_marker_info` */

insert  into `t_marker_info`(`id`,`key`,`is_start`,`x_value`,`y_value`) values ('11','dali',1,'100.241314','25.652572'),('12','lijiang',1,'100.241314','26.880058'),('13','yuanyang',1,'102.849463','23.228705');

/*Table structure for table `t_menu_info` */

DROP TABLE IF EXISTS `t_menu_info`;

CREATE TABLE `t_menu_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `t_menu_info` */

insert  into `t_menu_info`(`id`,`name`,`path`,`num`) values (1,'语言管理','goLanguageManage.do',1),(2,'首页轮播管理','goSliderManage.do',2),(3,'店铺管理','goShopManage.do',3),(4,'招聘信息管理','goRecruitManage.do',4),(5,'账户管理','goUserManage.do',7),(6,'角色管理','goRoleManage.do',8),(7,'优惠信息管理','goSaleManage.do',5),(8,'旅游信息管理','goTravelManage.do',6);

/*Table structure for table `t_recruit_info` */

DROP TABLE IF EXISTS `t_recruit_info`;

CREATE TABLE `t_recruit_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `language_id` int(11) DEFAULT NULL COMMENT '语言版本ID',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='招聘信息表';

/*Data for the table `t_recruit_info` */

insert  into `t_recruit_info`(`id`,`title`,`create_time`,`language_id`,`description`) values (1,'招聘测试数据','2014-12-04 20:40:12',1,'招聘测试数据'),(2,'Test Data','2014-12-04 20:40:15',2,'Test Data');

/*Table structure for table `t_role_info` */

DROP TABLE IF EXISTS `t_role_info`;

CREATE TABLE `t_role_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_role_info` */

insert  into `t_role_info`(`id`,`name`) values (1,'超级管理员'),(5,'店铺管理员');

/*Table structure for table `t_role_menu_rec` */

DROP TABLE IF EXISTS `t_role_menu_rec`;

CREATE TABLE `t_role_menu_rec` (
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role_menu_rec` */

insert  into `t_role_menu_rec`(`menu_id`,`role_id`) values (1,1),(2,1),(2,5),(3,1),(3,5),(4,1),(4,5),(5,1),(6,1),(7,1),(7,5),(8,1),(8,5);

/*Table structure for table `t_sale_info` */

DROP TABLE IF EXISTS `t_sale_info`;

CREATE TABLE `t_sale_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL,
  `description` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `language_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sale_info` */

/*Table structure for table `t_shop_detail_info` */

DROP TABLE IF EXISTS `t_shop_detail_info`;

CREATE TABLE `t_shop_detail_info` (
  `shop_id` int(11) NOT NULL,
  `shop_hours` text COMMENT '前台营业时间',
  `shop_facility` text COMMENT '设施',
  `shop_notice` text COMMENT '注意事项',
  `shop_cancel` text COMMENT '取消订房',
  `shop_desc` text COMMENT '描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_shop_detail_info` */

insert  into `t_shop_detail_info`(`shop_id`,`shop_hours`,`shop_facility`,`shop_notice`,`shop_cancel`,`shop_desc`) values (1,'<p><i class=\"icon-tag\"></i> 柜台营业时间：AM08:00 - PM21:00</p>\n<p><i class=\"icon-tag\"></i> Check-in：PM15:00 - PM21:00</p> \n<p><i class=\"icon-tag\"></i> Check-out：早上11:00以前 </p>\n<p><i class=\"icon-tag\"></i> 免费行李寄放：AM08:00 - PM20:00 </p>\n<p><i class=\"icon-tag\"></i> 希望于晚间9点过后Check-in的话请事先告知 </p>\n<p><i class=\"icon-tag\"></i> 早上11:00到下午14:00位馆内清掃時間，如有冒犯请见谅</p>','<p><i class=\"icon-check\"></i> 免费网路/连接Wi-Fi</p>\n<p><i class=\"icon-check\"></i> 公用厨房（备齐各种调理具以及食具）</p>\n<p><i class=\"icon-check\"></i> 公用客厅（大型液晶荧幕电视、DVD播放器、DVD、有线电视）</p>\n<p><i class=\"icon-check\"></i> 热水淋浴</p>\n<p><i class=\"icon-check\"></i> 免费咖啡及红茶</p>\n<p><i class=\"icon-check\"></i> 免费置物柜 设置于多人房, 混合房內洗衣机, 烘干机〈8元／桶〉</p>\n<p><i class=\"icon-check\"></i> 枕头, 床单, 棉被的费用全部包含在住宿费用</p>\n','<p><i class=\"icon-map-marker\"></i> 付款方式：请您准备好到付时的现金，我们不接受信用卡或借记卡到付方式，对您的不便深感歉意。请事先向银行兑换一些人民币；</p>\n<p><i class=\"icon-map-marker\"></i> 我们为家庭成员出行提供宽敞而且舒心的亲子家庭房。为了您的孩子和公共多人间的秩序，6岁（包括6岁以下）孩子不适宜入住多人间宿舍。</p>\n<p><i class=\"icon-map-marker\"></i> 我们是全球背包客提供经济型、环保型的住宿环境，请大家自觉爱护公共区域的秩序和设施。</p>','<p><i class=\"icon-warning-sign\"></i> <strong>此物业有至少提前3 天取消预订规定。</strong></p>\n<p><i class=\"icon-warning-sign\"></i> 如果逾期取消，您将支付等同于预订单第一晚房费的违约金，除非物业另有说明（参阅\"注意事项\"信息）</p>','<p>大理坐落于云南省中部，古城建于明朝。</p>\n<p>古城是一个安静又平和的地方，现在仍有许多古老的白族建筑坐落于古城各个角落。</p>\n<p>大理生产各式各样的大理石，他们多用于建造或者装饰房屋，\n实际上大理石也是用大理这个地名来命名的。\n</p>\n<p>\n大理也是云南一个注明的旅行地，她以她的历史，美景，温暖舒服的环境吸引着很多人，\n甚至还有人称大理为小纽约，那是因为这里有很多地方可以提供西式的食物 ，\n音乐，甚至你可以看到街上各色肤色的人群，这些使大理更佳的出名，\n所以很多人延长的他们在大理的旅行计划。久居大理客栈一个与人的生活息息相关的地方，\n你可以在这里谈论的你旅行，生活，讲你的故事，你喜欢的音乐，书籍，\n电影甚至你喜欢的游戏。目前我们拥有两个院子，\n这里有23间舒服的客房，有小酒吧，小餐厅，台球桌 ，桌上足球和投篮机。\n从客栈走到古城中心你只需要十分钟。我们的愿望是提供一个舒服，\n干净，友好的地方给全世界的旅行者。请你们和我们一起在享受大理的宁静还有美丽。\n最后欢迎大家过来玩！\n</p>'),(2,'<p><i class=\"icon-tag\"></i> 柜台营业时间：AM08:00 - PM21:00</p>\r\n<p><i class=\"icon-tag\"></i> Check-in：PM15:00 - PM21:00</p> \r\n<p><i class=\"icon-tag\"></i> Check-out：早上11:00以前 </p>\r\n<p><i class=\"icon-tag\"></i> 免费行李寄放：AM08:00 - PM20:00 </p>\r\n<p><i class=\"icon-tag\"></i> 希望于晚间9点过后Check-in的话请事先告知 </p>\r\n<p><i class=\"icon-tag\"></i> 早上11:00到下午14:00位馆内清掃時間，如有冒犯请见谅</p>','<p><i class=\"icon-check\"></i> 免费网路/连接Wi-Fi</p>\r\n<p><i class=\"icon-check\"></i> 公用厨房（备齐各种调理具以及食具）</p>\r\n<p><i class=\"icon-check\"></i> 公用客厅（大型液晶荧幕电视、DVD播放器、DVD、有线电视）</p>\r\n<p><i class=\"icon-check\"></i> 热水淋浴</p>\r\n<p><i class=\"icon-check\"></i> 免费咖啡及红茶</p>\r\n<p><i class=\"icon-check\"></i> 免费置物柜 设置于多人房, 混合房內洗衣机, 烘干机〈8元／桶〉</p>\r\n<p><i class=\"icon-check\"></i> 枕头, 床单, 棉被的费用全部包含在住宿费用</p>\r\n','<p><i class=\"icon-map-marker\"></i> 付款方式：请您准备好到付时的现金，我们不接受信用卡或借记卡到付方式，对您的不便深感歉意。请您在到达元阳县新街镇提前准备好现金，因为新街镇只有中国农业银行24小时银联卡自动取款机。</p>\r\n<p><i class=\"icon-map-marker\"></i> 入住年龄：我们为家庭成员出行提供宽敞而且舒心的亲子家庭房。为了您的孩子和公共多人间的秩序，6岁（包括6岁以下）孩子不适宜入住多人间宿舍。</p>\r\n<p><i class=\"icon-map-marker\"></i> 我们是全球背包客提供经济型、环保型的住宿环境，请大家自觉爱护公共区域的秩序和设施。请在晚上10:30后轻声漫步。</p>\r\n<p><i class=\"icon-map-marker\"></i> 请大家不要在室内吸烟，节约水电并共同保护梯田的周边环境。</p>\r\n<p><i class=\"icon-map-marker\"></i> 提前2天通知取消预定不收取费用。</p>','<p><i class=\"icon-warning-sign\"></i> <strong>此物业有至少提前3 天取消预订规定。</strong></p>\r\n<p><i class=\"icon-warning-sign\"></i> 如果逾期取消，您将支付等同于预订单第一晚房费的违约金，除非物业另有说明（参阅\"注意事项\"信息）</p>','<p>您想探索神奇的哈尼梯田和哀牢山脉？您想体验参观原始蘑菇房，\r\n百年土司房，梯田抓鱼？选择久居元阳客栈，这里是您和每一位旅行者舒适、\r\n温馨的家园。我们位于元阳县山水环抱多依树景区普高老寨民俗村，\r\n每天生活在哈尼人家居住的寨子，门前小溪和四周梨树。\r\n2014 年开业崭新的五楼 60 平 360 度全景的观景台是每天观看多依树梯田日出和\r\n东观音山绝佳的位置。您只需步行 30 米到 1000 平梯田大广场领域多依树千亩梯田， \r\n您也可以方便步行 15 分钟到多依树景区观景台。\r\n</p>\r\n<p>\r\n我们倡导“七彩元阳，世人分享”。久居元阳客栈为您提供四人床位房，六人床位房，大床房，观景双人标间，标准三人间，普通和观景家庭房，所有房间覆盖免费 WiFi，24 小时热水和独立的卫浴。我们期待和您分享旅行中精彩的故事和元阳哈尼梯田多彩的文化。\r\n</p>'),(3,'<p><i class=\"icon-tag\"></i> 柜台营业时间：AM08:00 - PM21:00</p>\r\n<p><i class=\"icon-tag\"></i> Check-in：PM15:00 - PM21:00</p> \r\n<p><i class=\"icon-tag\"></i> Check-out：早上11:00以前 </p>\r\n<p><i class=\"icon-tag\"></i> 免费行李寄放：AM08:00 - PM20:00 </p>\r\n<p><i class=\"icon-tag\"></i> 希望于晚间9点过后Check-in的话请事先告知 </p>\r\n<p><i class=\"icon-tag\"></i> 早上11:00到下午14:00位馆内清掃時間，如有冒犯请见谅</p>','<p><i class=\"icon-check\"></i> 免费网路/连接Wi-Fi</p>\r\n<p><i class=\"icon-check\"></i> 公用厨房（备齐各种调理具以及食具）</p>\r\n<p><i class=\"icon-check\"></i> 公用客厅（大型液晶荧幕电视、DVD播放器、DVD、有线电视）</p>\r\n<p><i class=\"icon-check\"></i> 热水淋浴</p>\r\n<p><i class=\"icon-check\"></i> 免费咖啡及红茶</p>\r\n<p><i class=\"icon-check\"></i> 免费置物柜 设置于多人房, 混合房內洗衣机, 烘干机〈8元／桶〉</p>\r\n<p><i class=\"icon-check\"></i> 枕头, 床单, 棉被的费用全部包含在住宿费用</p>\r\n','<p><i class=\"icon-map-marker\"></i> 久居丽江是一座纳西民宿建筑，很难做到统一的房间格局，如有出入敬请谅解；</p>\r\n<p><i class=\"icon-map-marker\"></i> 久居丽江是一座庭院，房间院落自成一体，清晨夜深请您放低声音；</p>\r\n<p><i class=\"icon-map-marker\"></i> 房间及公共区域内禁烟（有特定可吸烟处）如有不便敬请谅解；</p>\r\n<p><i class=\"icon-map-marker\"></i> 恕不提供一次性洗漱用品；</p>\r\n<p><i class=\"icon-map-marker\"></i> 為保证客人安全及休息本店有深夜足禁，时间为凌晨2点自6点，如有不便敬请谅解.</p>','<p><i class=\"icon-warning-sign\"></i> <strong>此物业有至少提前3 天取消预订规定。</strong></p>\r\n<p><i class=\"icon-warning-sign\"></i> 如果逾期取消，您将支付等同于预订单第一晚房费的违约金，\r\n除非物业另有说明（参阅\"注意事项\"信息）</p>','<p>久居丽江，坐落在丽江大研古镇的五一街。沿著石板铺就的老街，一座纳西的庭院。</p>\r\n<p>在丽江的喧嚣中我们想寻找一种最初的宁静，\r\n那份曾经当地族人与自然的一唱一和、悠然自得。\r\n我们的房间不奢华，但求实用，给您睡个好觉，\r\n洗个热水澡；在天臺看看天看看云，听听风声雨声\r\n；在公共的休息空间和来自各地的人们分享旅途的感悟；\r\n在Adam的酒吧开怀畅饮；我们的员工会帮您做好下一段旅程的安排\r\n。这就是久居丽江的人想為您做的——在丽江有段美好的旅程。\r\n</p> '),(4,'<p><i class=\"icon-tag\"></i> The counter business hours：AM08:00 - PM21:00</p>\r\n<p><i class=\"icon-tag\"></i> Check-in：PM 15:00 - PM 21:00</p> \r\n<p><i class=\"icon-tag\"></i> Check-out：By 11:00 AM </p>\r\n<p><i class=\"icon-tag\"></i> The baggage check：AM08:00 - PM20:00 </p>\r\n<p><i class=\"icon-tag\"></i> Hope in the evening after 9 PM Check-in,Please inform me in advance</p>\r\n<p><i class=\"icon-tag\"></i> Cleaning time: 11:00 AM - 14:00 PM,if you have offended please forgive me</p>','<p><i class=\"icon-check\"></i> Free Internet/Wi-Fi</p>\r\n<p><i class=\"icon-check\"></i> Public Kitchen (documented regulate and tableware.)</p>\r\n<p><i class=\"icon-check\"></i> Public Living Room (a large LCD screen TV, DVD player, DVD, cable TV)</p>\r\n<p><i class=\"icon-check\"></i> Hot Showers</p>\r\n<p><i class=\"icon-check\"></i> Free coffee and tea</p>\r\n<p><i class=\"icon-check\"></i> Free locker Set up in many rooms, mix inside the washing machine, dryer (8 yuan/barrel) </p>\r\n<p><i class=\"icon-check\"></i> Pillow, bed sheet, quilt all fees included in the accommodation costs</p>\r\n','<p><i class=\"icon-map-marker\"></i> ARRIVAL PAYMENT: please complete your payment in Chinese RMB. We are terribly sorry to inconvenience you, but we do not accept credit cards/debit cards. Please make sure to exchange some currency into Chinese RMB. </p>\r\n<p><i class=\"icon-map-marker\"></i> AGE RESTRICTION: We are child-friendly and we have spacious family room for three members. Because of this, please note that\r\n children aged six and under are not suited to stay in dorm rooms. </p>\r\n<p><i class=\"icon-map-marker\"></i> We are backpackers\' hostel and all of our facilities are on a shared basis.</p>','<p><i class=\"icon-warning-sign\"></i> <strong>This property has a 3 day cancellation policy. </strong></p>\r\n<p><i class=\"icon-warning-sign\"></i> Failure to cancel within this time will result in a cancellation charge equal to the first night of your stay, unless otherwise stated below (see \'Things to Note\' information).</p> ','<p>\r\nDali is located in middle of Yunnan province. The old city was built during Ming Dynasty. The old city is peaceful and quiet and is still marked with the old traditional Bai ethnic minority houses. Dali is also famous for the many types of marble it produces, which are used primarily in construction and for decorative objects. In fact, Dali is so famous for the stone that the name of marble in Chinese is literally \"Dali Stone\" (Chinese: dali shi).</p><p>Dali is also one of Yunnan\'s most popular tourist destinations for its historic sites, amazing view, comfortable environment and the people also called Mini New York City that features western-style food, music, people of all colors and English-speaking business owners, making it popular among both western and Chinese tourists, so some tourists have an extended stay in this beautiful old town\r\n</p>\r\n<p>\r\nTimeless Hostel Dali is based on people\'s lives, like your travels, stories, music, movie, books and even games, if you want to talk, so let\'s talk. <br>Timeless Dali is a homely hostel located in the peaceful north gate of Dali old town. We provide 23 comfortable rooms, bar, dining-room，pool table, table soccer and basketball shooting machine. Everything you could need or want in Dali Old Town is within a 10 minutes walk (2 minutes from Yeyu Road Bus Station, 10 minutes from Renmin Road, the heart of Old Town, etc.). Our idea is provide a comfortable, clean, and friendly stay for all global travelers in Dali at a great value. Each of our members speaks fluent English, and we promise to help you with the warmest hospitality. Please stay with us at this home away from home and relax in the beauty of Dali WelCome!\r\n</p>'),(5,'<p><i class=\"icon-tag\"></i> The counter business hours：AM08:00 - PM21:00</p>\r\n<p><i class=\"icon-tag\"></i> Check-in：PM 15:00 - PM 21:00</p> \r\n<p><i class=\"icon-tag\"></i> Check-out：By 11:00 AM </p>\r\n<p><i class=\"icon-tag\"></i> The baggage check：AM08:00 - PM20:00 </p>\r\n<p><i class=\"icon-tag\"></i> Hope in the evening after 9 PM Check-in,Please inform me in advance</p>\r\n<p><i class=\"icon-tag\"></i> Cleaning time: 11:00 AM - 14:00 PM,if you have offended please forgive me</p>','<p><i class=\"icon-check\"></i> Free Internet/Wi-Fi</p>\r\n<p><i class=\"icon-check\"></i> Public Kitchen (documented regulate and tableware.)</p>\r\n<p><i class=\"icon-check\"></i> Public Living Room (a large LCD screen TV, DVD player, DVD, cable TV)</p>\r\n<p><i class=\"icon-check\"></i> Hot Showers</p>\r\n<p><i class=\"icon-check\"></i> Free coffee and tea</p>\r\n<p><i class=\"icon-check\"></i> Free locker Set up in many rooms, mix inside the washing machine, dryer (8 yuan/barrel) </p>\r\n<p><i class=\"icon-check\"></i> Pillow, bed sheet, quilt all fees included in the accommodation costs</p>\r\n','<p><i class=\"icon-map-marker\"></i> ARRIVAL PAYMENT: Please complete your payment by Chinese RMB. It is terribly sorry for your inconvenience that we do not accept credit cards/debit cards, thus make sure to exchange some currency into Chinese RMB in Kunming in advance . Because of Xinjie Town only get one Agricultural Bank China (ABC) for 24-H ATM.</p>\r\n<p><i class=\"icon-map-marker\"></i> AGE RESTRICTION: We are child-friendly and spacious family room for three members. Importantly, Please note that children aged six and under are not suited to stay in the dorms.</p>\r\n<p><i class=\"icon-map-marker\"></i> We are backpackers\' hostel and all our facilities are shared basis. Please keep the common area orderly and quite surrounding after 22:30</p>\r\n<p><i class=\"icon-map-marker\"></i> Please save water and energy and consider our environment before littering . We did not sell tobacco and no smoking in room and common area.</p>\r\n<p><i class=\"icon-map-marker\"></i> 2 days advance notice for free cancellation.</p>\r\n<p><i class=\"icon-map-marker\"></i> Check in from 6am-11pm and check out at 12 noon.</p>','<p><i class=\"icon-warning-sign\"></i> <strong>This property has a 2 day cancellation policy. </strong></p>\r\n<p><i class=\"icon-warning-sign\"></i> Failure to cancel within this time will result in a cancellation charge equal to the first night of your stay, unless otherwise stated below (see \'Things to Note\' information). </p>','<p>\r\nTimeless Yuanyang was a homely hostel located in the original and peaceful Hani Village, ONLY 30-meter close to Grand Rice Terraces Square,here is brand-new 5-floorwith panoramic sunrising view is your peaceful oasis nestled in the heart of Duoyishu.Everything you need as follows is accessible within 15 minutes walk to Duoyishu Secnic Site.\r\n</p>\r\n<p>\r\nOur idea is to provide a Great Value, Comfortable, Clean and Friendly home stay.ALL the room, including 4-bed dorm ,6-bed dorm,double bed,twin bed,triple-bedroom and superion family room provie 24-H hot water and FREE WiFi and privatebathroom,. Each of our members will help you with fluent English and warm hospitali-ty. We are warmly invite all of our guest to explore fruitful and colorful Hani Culturalwith your eyes and hiking in the rice field and village.\r\n</p>'),(6,'<p><i class=\"icon-tag\"></i> The counter business hours：AM08:00 - PM21:00</p>\r\n<p><i class=\"icon-tag\"></i> Check-in：PM 15:00 - PM 21:00</p> \r\n<p><i class=\"icon-tag\"></i> Check-out：By 11:00 AM </p>\r\n<p><i class=\"icon-tag\"></i> The baggage check：AM08:00 - PM20:00 </p>\r\n<p><i class=\"icon-tag\"></i> Hope in the evening after 9 PM Check-in,Please inform me in advance</p>\r\n<p><i class=\"icon-tag\"></i> Cleaning time: 11:00 AM - 14:00 PM,if you have offended please forgive me</p>','<p><i class=\"icon-check\"></i> Free Internet/Wi-Fi</p>\r\n<p><i class=\"icon-check\"></i> Public Kitchen (documented regulate and tableware.)</p>\r\n<p><i class=\"icon-check\"></i> Public Living Room (a large LCD screen TV, DVD player, DVD, cable TV)</p>\r\n<p><i class=\"icon-check\"></i> Hot Showers</p>\r\n<p><i class=\"icon-check\"></i> Free coffee and tea</p>\r\n<p><i class=\"icon-check\"></i> Free locker Set up in many rooms, mix inside the washing machine, dryer (8 yuan/barrel) </p>\r\n<p><i class=\"icon-check\"></i> Pillow, bed sheet, quilt all fees included in the accommodation costs</p>\r\n','<p><i class=\"icon-map-marker\"></i> Timeless Hostel is the architecture with local Naxi Minority Group style. Please kindly note that all the rooms cannot be with the same layout.</p>\r\n<p><i class=\"icon-map-marker\"></i> The hotel is with a courtyard and please low down the voice in the late evening.</p>\r\n<p><i class=\"icon-map-marker\"></i> Non-smoking in the rooms and common area; there is specific smoking area available.</p>\r\n<p><i class=\"icon-map-marker\"></i> There are no one-time toiletries provided in the room.</p>\r\n<p><i class=\"icon-map-marker\"></i> Curfew in the hostel: 2am-6am everyday</p>','<p><i class=\"icon-warning-sign\"></i> This property has a 3 day cancellation policy.</p>\r\n<p><i class=\"icon-warning-sign\"></i> Failure to cancel within this time will result in a cancellation charge equal to the first night of your stay, unless otherwise stated below (see \'Things to Note\' information). </p>','<p>\r\nLiJiang，located in lijiang dayan ancient town of wruyi street.Along the stone slabs of the old street, a naxi courtyard.\r\n</p>\r\n<p>\r\nTimeless Hostel boasts comfortable dormitory rooms and private guest rooms, a patio that offers a view of Lijiang Old City and the surrounding mountains, WiFi and 24-hour hot water, a social common room and DVD room. \r\n</p>');

/*Table structure for table `t_shop_img_info` */

DROP TABLE IF EXISTS `t_shop_img_info`;

CREATE TABLE `t_shop_img_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `shop_id` int(11) DEFAULT NULL COMMENT '分店图片',
  `num` int(11) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL COMMENT 'room-客房预定中的照片，aboutus-关于我们中的照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Data for the table `t_shop_img_info` */

insert  into `t_shop_img_info`(`id`,`name`,`shop_id`,`num`,`type`) values (1,'lijiang1.jpg',3,1,'aboutus'),(2,'lijiang2.jpg',3,2,'aboutus'),(3,'lijiang3.jpg',3,3,'aboutus'),(4,'lijiang1.jpg',6,1,'aboutus'),(5,'lijiang2.jpg',6,2,'aboutus'),(6,'lijiang3.jpg',6,3,'aboutus'),(7,'dali1.jpg',1,1,'aboutus'),(8,'dali2.jpg',1,2,'aboutus'),(9,'dali3.jpg',1,3,'aboutus'),(10,'dali1.jpg',4,1,'aboutus'),(11,'dali2.jpg',4,2,'aboutus'),(12,'dali3.jpg',4,3,'aboutus'),(13,'yuanyang1.jpg',2,1,'aboutus'),(14,'yuanyang2.jpg',2,2,'aboutus'),(15,'yuanyang3.jpg',2,3,'aboutus'),(16,'yuanyang1.jpg',5,1,'aboutus'),(17,'yuanyang2.jpg',5,2,'aboutus'),(18,'yuanyang3.jpg',5,3,'aboutus'),(19,'room1.jpg',3,1,'room'),(20,'room2.jpg',3,2,'room'),(21,'room3.jpg',3,3,'room'),(22,'room4.jpg',3,4,'room'),(23,'room5.jpg',3,5,'room'),(24,'room6.jpg',3,6,'room'),(25,'room1.jpg',1,1,'room'),(26,'room2.jpg',1,2,'room'),(27,'room3.jpg',1,3,'room'),(28,'room4.jpg',1,4,'room'),(29,'room5.jpg',1,5,'room'),(30,'room6.jpg',1,6,'room'),(31,'room1.jpg',2,1,'room'),(32,'room2.jpg',2,2,'room'),(33,'room3.jpg',2,3,'room'),(34,'room4.jpg',2,4,'room'),(35,'room5.jpg',2,5,'room'),(36,'room6.jpg',2,6,'room'),(37,'room1.jpg',4,1,'room'),(38,'room2.jpg',4,2,'room'),(39,'room3.jpg',4,3,'room'),(40,'room4.jpg',4,4,'room'),(41,'room5.jpg',4,5,'room'),(42,'room6.jpg',4,6,'room'),(43,'room1.jpg',5,1,'room'),(44,'room2.jpg',5,2,'room'),(45,'room3.jpg',5,3,'room'),(46,'room4.jpg',5,4,'room'),(47,'room5.jpg',5,5,'room'),(48,'room6.jpg',5,6,'room'),(49,'room1.jpg',6,1,'room'),(50,'room2.jpg',6,2,'room'),(51,'room3.jpg',6,3,'room'),(52,'room4.jpg',6,4,'room'),(53,'room5.jpg',6,5,'room'),(54,'room6.jpg',6,6,'room');

/*Table structure for table `t_shop_info` */

DROP TABLE IF EXISTS `t_shop_info`;

CREATE TABLE `t_shop_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL COMMENT '语言ID',
  `name` varchar(64) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `num` varchar(64) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0-关店 1-开店',
  `url` text,
  PRIMARY KEY (`id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='分店信息主表';

/*Data for the table `t_shop_info` */

insert  into `t_shop_info`(`id`,`language_id`,`name`,`create_time`,`update_time`,`num`,`status`,`url`) values (1,1,'久居大理','2014-11-28 22:51:35','2014-11-28 10:51:35','1',1,'http://www.chinese.hostelworld.com/hosteldetails.php/Timeless-Hostel-Dali/dali/80535?'),(2,1,'久居元阳','2014-11-28 22:51:43','2014-11-28 10:51:43','2',1,'http://www.chinese.hostelworld.com/hosteldetails.php/Timeless-Hostel-Yuanyang/yuanyang/85725?'),(3,1,'久居丽江','2014-11-28 22:51:49','2014-11-28 10:51:49','3',1,'http://www.chinese.hostelworld.com/hosteldetails.php/Timeless-Hostel/lijiang/79206?'),(4,2,'Da Li','2014-11-28 22:51:54','2014-11-28 10:51:54','1',1,'http://www.chinese.hostelworld.com/hosteldetails.php/Timeless-Hostel-Dali/dali/80535?'),(5,2,'Yuan Yang','2014-11-28 22:51:59','2014-11-28 10:51:59','2',1,'http://www.chinese.hostelworld.com/hosteldetails.php/Timeless-Hostel-Yuanyang/yuanyang/85725?'),(6,2,'Li Jiang','2014-11-28 22:52:04','2014-11-28 10:52:04','3',1,'http://www.chinese.hostelworld.com/hosteldetails.php/Timeless-Hostel/lijiang/79206?');

/*Table structure for table `t_slider_info` */

DROP TABLE IF EXISTS `t_slider_info`;

CREATE TABLE `t_slider_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(256) DEFAULT NULL,
  `num` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='首页滚动信息表';

/*Data for the table `t_slider_info` */

insert  into `t_slider_info`(`id`,`image`,`num`) values (1,'1.jpg','1'),(2,'2.jpg','2'),(3,'3.jpg','3');

/*Table structure for table `t_traffic_info` */

DROP TABLE IF EXISTS `t_traffic_info`;

CREATE TABLE `t_traffic_info` (
  `shop_id` int(11) DEFAULT NULL,
  `desc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_traffic_info` */

insert  into `t_traffic_info`(`shop_id`,`desc`) values (1,'<span style=\"white-space:pre\">	</span>久居大理位于古城东北，8路公交车附近，60医院附近，如果您有任何问题请拨打电话18987216863 或者 0872－2514322<br /><p>如何到达：<br /></p><p>【昆明 】</p><p><span style=\"white-space:pre\">	</span>如果您乘坐汽车，在昆明乘车大概5－6小时到达下关（新城）客运站，然后换成8路公交车到达终点站 60医院下车，或者打车过来大概是50－60元。</p><p><span style=\"white-space:pre\">	</span>如果您乘坐火车，火车站出站口乘坐8路公交车，终点站60医院下车即可，打车的费用在50 －60元。</p><p><span style=\"white-space:pre\">	</span>如果您乘坐飞机，可以先做机场巴士到达火车站然后换成8路车到达终点站60医院下车即可。</p><p>【丽江】</p><p><span style=\"white-space:pre\">	</span>如果您乘坐汽车，到达才村路口下车，然后沿着中和路朝西走500m,到达中和路叶榆路交汇口向左转到达60医院即可。</p><p><span style=\"white-space:pre\">	</span>如果您乘坐火车，出站口乘坐8路车，到达终点站60医院下车即可。</p>'),(2,'<h1><img src=\"http://localhost:80/timeless/images/shop/traffic/3d862efaedb749dfaf9ba590a0f5d7c8.png\" alt=\"\" style=\"white-space: pre; font-size: 12px;\" /><br /></h1><p><span style=\"white-space:pre\">	</span>久居元阳客栈具体位于哀牢山脉海拔 1864 米的普高老寨民俗村的正中心，距离元阳县新街镇（老城海拔 1600 米）25 公路 50 分钟车程，距离元阳县南沙镇镇（新城海拔 300 米）55 公路 100 分钟车程。这里山路崎岖，路段多雾，注意安全，为了您出行方便，请及时联系我们 24小时热线 153-6837-6718。</p><p>★温馨提示:如何找到我们 How to find us:</p><p><span style=\"white-space:pre\">	</span>==云南省红河州Yuan元yang阳 县Xin新Jie街 镇Duo多Yi依Shu树Pu普Gao高Lao老Zhai寨 停车场JiuJuYuanYang久居元阳 客栈【24 小时热线 153-6837-6718 白天新街接车到客栈 100 元 】==</p><p>★温馨提示:如何找到我们 How to find us:</p><p>【From KM South bus station】(昆明南部汽车枢纽客运站)</p><p><span style=\"white-space:pre\">	</span>1. 乘坐从昆明到元阳新街镇直达巴士，大约 7 小时 136 元----- 请注意每天从南部汽车枢纽站有三趟车 10:20 12:10 19:00，我们建议您乘坐 10 点以方便在新街乘换班车</p><p><span style=\"white-space:pre\">	</span>2. 从新街客运站当地面包车到多依树 普高老寨停车场 ( 15 元/50 分钟)</p><p>【From KM train station】 昆明火车站</p><p><span style=\"white-space:pre\">	</span>1.搭乘火车站正门右边永胜路 No. 209 bus( 07:00-20:30； 3RMB/1 hour) 直达昆明南部汽车枢纽客运站终点站</p><p><span style=\"white-space:pre\">	</span>2. 或者搭乘地铁一号线 NO 1# (3 元/20 分钟) 直达昆明南部汽车枢纽客运站</p><p>【From the KM Changshui Airport】(昆明长水国际机场)</p><p><span style=\"white-space:pre\">	</span>A- line: 搭乘机场昆明南部汽车枢纽客运站专线巴士 （25RMB/1 hour）</p><p><span style=\"white-space:pre\">	</span>B- line: 搭乘地铁 6 号线机场到终点站 东部客运站:</p><p><span style=\"white-space:pre\">		</span>1) 搭乘 昆明到个旧的循环班车 （104RMB/4.5- hour）</p><p><span style=\"white-space:pre\">		</span>2) 搭乘 个旧到新街的循环班车 （30RMB/3-hour）</p><p><span style=\"white-space:pre\">		</span>3） 从新街客运站当地面包车到多依树 普高老寨停车场 ( 15 元/50 分钟)</p><p>【From Jianshui bus station】(建水汽车客运站)</p><p><span style=\"white-space:pre\">	</span>1.搭乘 建水到元阳新街镇的班车 注意每天只有 11:30 一趟班车（40RMB/4 hour）到元阳新街</p><p><span style=\"white-space:pre\">	</span>2. 从新街客运站当地面包车到多依树 普高老寨停车场 ( 15 元/50 分钟)</p><p>【From Xishuangbanna bus station】(西双版纳汽车客运站)</p><p><span style=\"white-space:pre\">	</span>1.搭乘版纳到河口途径到元阳南沙镇的班车 注意每天只有 12:00 一趟班车（150RMB/8 hour）</p><p><span style=\"white-space:pre\">	</span>2. 从南沙客运站当地面包车到新街镇客运站 ( 15 元/50 分钟)</p><p><span style=\"white-space:pre\">	</span>3. 从新街客运站当地面包车到多依树 普高老寨停车场 ( 15 元/50 分钟)</p><p>【From Hekou bus station】(河口汽车客运站)</p><p><span style=\"white-space:pre\">	</span>1.搭乘 河口客运站到元阳新街镇的班车 注意每天有两趟班车（48RMB/4.5 hour）到元阳新街</p><p><span style=\"white-space:pre\">	</span>2. 从新街客运站当地面包车到多依树 普高老寨停车场 ( 15 元/50 分钟)</p>'),(3,'<p><span style=\"white-space:pre\">	</span>久居丽江位于丽江古城区金虹路 北门坡加油站石油公司 斜对面煤炭招待所文明村路口(去市一中北门的路)进古城第一个十字路口右拐第二个客栈 久居丽江。</p><p><span style=\"white-space:pre\">	</span>乘出租车—— 机场、从火车站或汽车站乘出租车到北门坡石油公司斜对面路口下车（出租车不能进入古城），步行进入古城第一个路口右转100米既是。</p><p><span style=\"white-space:pre\">	</span>乘公交车—— 从火车站可乘坐18路公交到“白龙广场”下车，换乘2路公交到“石油公司”下车，步行入古城第一个路口右转100米既是。 &nbsp;从高快客运站可乘13路公交到“石油公司”下车，步行进入古城第一个路口右转100米既是。 &nbsp;从新客运站可乘8路公交到“古城口”下车，换乘2路公交在”石油公司“下车，步行进入古城第一个路口右转100米既是。 &nbsp;从机场可乘坐机场巴士到新城区机场巴士站下车后在路对面乘坐13路公交到“石油公司”下车，步行进入古城第一个路口右转100米既是。</p>'),(4,NULL),(5,NULL),(6,NULL);

/*Table structure for table `t_travel_info` */

DROP TABLE IF EXISTS `t_travel_info`;

CREATE TABLE `t_travel_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL,
  `description` text,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `num` varchar(64) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_travel_info` */

/*Table structure for table `t_user_info` */

DROP TABLE IF EXISTS `t_user_info`;

CREATE TABLE `t_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `isLock` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_info` */

insert  into `t_user_info`(`id`,`username`,`password`,`name`,`role_id`,`isLock`) values (1,'timeless','e10adc3949ba59abbe56e057f20f883e','管理员',1,1),(2,'dali','e10adc3949ba59abbe56e057f20f883e','管理员',5,1),(3,'yuanyang','e10adc3949ba59abbe56e057f20f883e','管理员',5,1),(4,'lijiang','e10adc3949ba59abbe56e057f20f883e','管理员',5,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
