create database if not exists lims default character set utf8mb4;
use lims;
drop table if exists lims_user;
create table lims_user (
	ucode int(32) NOT NULL AUTO_INCREMENT,
	id varchar(32) not null comment '用户id(主键)',
	username varchar(32) not null comment '用户名',
	password varchar(32) not null comment '密码',
	tel varchar(32) not null comment '电话',
	address varchar(32) not null comment '地址',
    usertype enum('管理员','学生','教师'),
    sex enum('男','女'),
    primary key(ucode)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
		(1,'m001','管理员1','123456','18888888888','管理员地址1','管理员' ,'男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
		(2,'m002','管理员2','123456','18811811882','管理员地址2','管理员','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (3,'t001','教师1','123456','22222222221','教师地址1','教师','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (4,'t002','教师2','123456','22222222222','教师地址2','教师','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (5,'t003','教师3','123456','22222222223','教师地址3','教师','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (6,'t004','教师4','123456','22222222224','教师地址4','教师','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (7,'t005','教师5','123456','22222222225','教师地址5','教师','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (8,'t006','教师6','123456','22222222226','教师地址6','教师','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (9,'t007','教师7','123456','22222222227','教师地址7','教师','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (10,'t008','教师8','123456','22222222228','教师地址8','教师','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (11,'t009','教师9','123456','22222222229','教师地址9','教师','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (12,'s001','学生1','123456','22222222221','学生地址1','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (13,'s002','学生2','123456','22222222222','学生地址2','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (14,'s003','学生3','123456','22222222223','学生地址3','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (15,'s004','学生4','123456','22222222224','学生地址4','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (16,'s005','学生5','123456','22222222225','学生地址5','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (17,'s006','学生6','123456','22222222226','学生地址6','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (18,'s007','学生7','123456','22222222227','学生地址7','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (19,'s008','学生8','123456','22222222228','学生地址8','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (20,'s009','学生9','123456','22222222229','学生地址9','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (21,'s010','学生10','123456','222222222210','学生地址10','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (22,'s011','学生11','123456','222222222211','学生地址11','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (23,'s012','学生12','123456','222222222212','学生地址12','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (24,'s013','学生13','123456','222222222213','学生地址13','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (25,'s014','学生14','123456','222222222214','学生地址14','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (26,'s015','学生15','123456','222222222215','学生地址15','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (27,'s016','学生16','123456','222222222216','学生地址16','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (28,'s017','学生17','123456','222222222217','学生地址17','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (29,'s018','学生18','123456','222222222218','学生地址18','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (30,'s019','学生19','123456','222222222219','学生地址19','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (31,'s020','学生20','123456','222222222220','学生地址20','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (32,'s021','学生21','123456','222222222221','学生地址21','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (33,'s022','学生22','123456','222222222222','学生地址22','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (34,'s023','学生23','123456','222222222223','学生地址23','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (35,'s024','学生24','123456','222222222224','学生地址24','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (36,'s025','学生25','123456','222222222225','学生地址25','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (37,'s026','学生26','123456','222222222226','学生地址26','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (38,'s027','学生27','123456','222222222227','学生地址27','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (39,'s028','学生28','123456','222222222228','学生地址28','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (40,'s029','学生29','123456','222222222229','学生地址29','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (41,'s030','学生30','123456','222222222230','学生地址30','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (42,'s031','学生31','123456','222222222231','学生地址31','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (43,'s032','学生32','123456','222222222232','学生地址32','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (44,'s033','学生33','123456','222222222233','学生地址33','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (45,'s034','学生34','123456','222222222234','学生地址34','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (46,'s035','学生35','123456','222222222235','学生地址35','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (47,'s036','学生36','123456','222222222236','学生地址36','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (48,'s037','学生37','123456','222222222237','学生地址37','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (49,'s038','学生38','123456','222222222238','学生地址38','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (50,'s039','学生39','123456','222222222239','学生地址39','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (51,'s040','学生40','123456','222222222240','学生地址40','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (52,'s041','学生41','123456','222222222241','学生地址41','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (53,'s042','学生42','123456','222222222242','学生地址42','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (54,'s043','学生43','123456','222222222243','学生地址43','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (55,'s044','学生44','123456','222222222244','学生地址44','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (56,'s045','学生45','123456','222222222245','学生地址45','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (57,'s046','学生46','123456','222222222246','学生地址46','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (58,'s047','学生47','123456','222222222247','学生地址47','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (59,'s048','学生48','123456','222222222248','学生地址48','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (60,'s049','学生49','123456','222222222249','学生地址49','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (61,'s050','学生50','123456','222222222250','学生地址50','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (62,'s051','学生51','123456','222222222251','学生地址51','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (63,'s052','学生52','123456','222222222252','学生地址52','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (64,'s053','学生53','123456','222222222253','学生地址53','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (65,'s054','学生54','123456','222222222254','学生地址54','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (66,'s055','学生55','123456','222222222255','学生地址55','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (67,'s056','学生56','123456','222222222256','学生地址56','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (68,'s057','学生57','123456','222222222257','学生地址57','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (69,'s058','学生58','123456','222222222258','学生地址58','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (70,'s059','学生59','123456','222222222259','学生地址59','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (71,'s060','学生60','123456','222222222260','学生地址60','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (72,'s061','学生61','123456','222222222261','学生地址61','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (73,'s062','学生62','123456','222222222262','学生地址62','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (74,'s063','学生63','123456','222222222263','学生地址63','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (75,'s064','学生64','123456','222222222264','学生地址64','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (76,'s065','学生65','123456','222222222265','学生地址65','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (77,'s066','学生66','123456','222222222266','学生地址66','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (78,'s067','学生67','123456','222222222267','学生地址67','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (79,'s068','学生68','123456','222222222268','学生地址68','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (80,'s069','学生69','123456','222222222269','学生地址69','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (81,'s070','学生70','123456','222222222270','学生地址70','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (82,'s071','学生71','123456','222222222271','学生地址71','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (83,'s072','学生72','123456','222222222272','学生地址72','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (84,'s073','学生73','123456','222222222273','学生地址73','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (85,'s074','学生74','123456','222222222274','学生地址74','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (86,'s075','学生75','123456','222222222275','学生地址75','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (87,'s076','学生76','123456','222222222276','学生地址76','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (88,'s077','学生77','123456','222222222277','学生地址77','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (89,'s078','学生78','123456','222222222278','学生地址78','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (90,'s079','学生79','123456','222222222279','学生地址79','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (91,'s080','学生80','123456','222222222280','学生地址80','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (92,'s081','学生81','123456','222222222281','学生地址81','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (93,'s082','学生82','123456','222222222282','学生地址82','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (94,'s083','学生83','123456','222222222283','学生地址83','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (95,'s084','学生84','123456','222222222284','学生地址84','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (96,'s085','学生85','123456','222222222285','学生地址85','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (97,'s086','学生86','123456','222222222286','学生地址86','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (98,'s087','学生87','123456','222222222287','学生地址87','学生','女');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (99,'s088','学生88','123456','222222222288','学生地址88','学生','男');
INSERT INTO `lims`.`lims_user` (`ucode`,`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        (100,'s089','学生89','123456','222222222289','学生地址89','学生','女');
drop table if exists lims_lab;
create table lims_lab(
	lcode int(32) NOT NULL AUTO_INCREMENT,
	labid varchar(32) not null comment '实验室号',
    labname varchar(32) not null comment '实验室名',
    address varchar(50) not null comment '实验室地址',
    labstatus enum('空闲中','审核中','已预订') default '空闲中',
    apler varchar(32) default null,
    apltime datetime not null default now(),
    primary key(lcode)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
INSERT INTO `lims`.`lims_lab`(`lcode`,`labid`,`labname`,`address`,`labstatus`,`apler`,`apltime`)
		VALUES (1,'1001','实验室1','地址1','空闲中',null,now());
INSERT INTO `lims`.`lims_lab`(`lcode`,`labid`,`labname`,`address`,`labstatus`,`apler`,`apltime`)
		VALUES (2,'1002','实验室2','地址2','审核中','教师1',now());
INSERT INTO `lims`.`lims_lab`(`lcode`,`labid`,`labname`,`address`,`labstatus`,`apler`,`apltime`)
		VALUES (3,'1003','实验室3','地址3','已预订','教师2',now());
INSERT INTO `lims`.`lims_lab`(`lcode`,`labid`,`labname`,`address`,`labstatus`,`apler`,`apltime`)
		VALUES (4,'1004','实验室4','地址4','已预订','教师3',now());
drop table if exists equip;
create table equip(
	ecode int(32) NOT NULL AUTO_INCREMENT,
	eid varchar(32) not null,
	ename varchar(32) not null,
    enumber int not null,
    primary key(ecode,eid)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
INSERT INTO `lims`.`equip`(`ecode`,`eid`,`ename`,`enumber`) VALUES (1,'0001','漏斗',10);
INSERT INTO `lims`.`equip`(`ecode`,`eid`,`ename`,`enumber`) VALUES (2,'0002','试管',10);
INSERT INTO `lims`.`equip`(`ecode`,`eid`,`ename`,`enumber`) VALUES (3,'0003','砝码2g',10);
INSERT INTO `lims`.`equip`(`ecode`,`eid`,`ename`,`enumber`) VALUES (4,'0004','砝码5g',10);
INSERT INTO `lims`.`equip`(`ecode`,`eid`,`ename`,`enumber`) VALUES (5,'0005','砝码10g',10);
INSERT INTO `lims`.`equip`(`ecode`,`eid`,`ename`,`enumber`) VALUES (6,'0006','镊子',10);
INSERT INTO `lims`.`equip`(`ecode`,`eid`,`ename`,`enumber`) VALUES (7,'0007','砝码50g',10);
INSERT INTO `lims`.`equip`(`ecode`,`eid`,`ename`,`enumber`) VALUES (8,'0008','托盘天平',10);
drop table if exists equipapl;
create table equipapl(
	ecode int(32) NOT NULL AUTO_INCREMENT,
	eid varchar(32) not null,
	ename varchar(32) not null,
    enumber integer not null,
	apler varchar(32) default null,
    apltime datetime not null default now(),
    estatus enum('审核中','已通过','已拒绝') default '审核中',
    primary key(ecode)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
INSERT INTO `lims`.`equipapl`(`ecode`,`eid`,`ename`,`enumber`,`apler`,`apltime`,`estatus`) VALUES (1,'0001','漏斗',1,'教师1',now(),'审核中');
drop table if exists equiplog;
create table equiplog(
	ecode int(32) NOT NULL AUTO_INCREMENT,
	eid varchar(32) not null,
	ename varchar(32) not null,
    enumber integer not null,
	apler varchar(32) default null,
    apltime datetime not null default now(),
    primary key(ecode)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
INSERT INTO `lims`.`equiplog`(`ecode`,`eid`,`ename`,`enumber`,`apler`,`apltime`) VALUES (1,'0001','漏斗',1,'教师1',now());