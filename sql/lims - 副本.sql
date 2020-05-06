create database if not exists lims default character set utf8mb4;
use lims;
drop table if exists lims_user;
create table lims_user (
	id varchar(32) not null comment '用户id(主键)',
	username varchar(32) not null comment '用户名',
	password varchar(32) not null comment '密码',
	tel varchar(32) not null comment '电话',
	address varchar(32) not null comment '地址',
    usertype enum('管理员','学生','教师'),
    sex enum('男','女'),
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
		('001','管理员1','123456','18888888888','管理员地址1','管理员' ,'男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
		('002','管理员2','123456','18811811882','管理员地址2','管理员','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('101','教师1','123456','22222222221','教师地址1','教师','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('102','教师2','123456','22222222222','教师地址2','教师','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('103','教师3','123456','22222222223','教师地址3','教师','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('104','教师4','123456','22222222224','教师地址4','教师','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('105','教师5','123456','22222222225','教师地址5','教师','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('106','教师6','123456','22222222226','教师地址6','教师','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('107','教师7','123456','22222222227','教师地址7','教师','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('108','教师8','123456','22222222228','教师地址8','教师','女');
        INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('201','学生1','123456','22222222221','学生地址1','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('202','学生2','123456','22222222222','学生地址2','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('203','学生3','123456','22222222223','学生地址3','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('204','学生4','123456','22222222224','学生地址4','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('205','学生5','123456','22222222225','学生地址5','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('206','学生6','123456','22222222226','学生地址6','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('207','学生7','123456','22222222227','学生地址7','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('208','学生8','123456','22222222228','学生地址8','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('209','学生9','123456','22222222229','学生地址9','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2010','学生10','123456','222222222210','学生地址10','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2011','学生11','123456','222222222211','学生地址11','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2012','学生12','123456','222222222212','学生地址12','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2013','学生13','123456','222222222213','学生地址13','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2014','学生14','123456','222222222214','学生地址14','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2015','学生15','123456','222222222215','学生地址15','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2016','学生16','123456','222222222216','学生地址16','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2017','学生17','123456','222222222217','学生地址17','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2018','学生18','123456','222222222218','学生地址18','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2019','学生19','123456','222222222219','学生地址19','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2020','学生20','123456','222222222220','学生地址20','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2021','学生21','123456','222222222221','学生地址21','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2022','学生22','123456','222222222222','学生地址22','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2023','学生23','123456','222222222223','学生地址23','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2024','学生24','123456','222222222224','学生地址24','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2025','学生25','123456','222222222225','学生地址25','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2026','学生26','123456','222222222226','学生地址26','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2027','学生27','123456','222222222227','学生地址27','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2028','学生28','123456','222222222228','学生地址28','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2029','学生29','123456','222222222229','学生地址29','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2030','学生30','123456','222222222230','学生地址30','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2031','学生31','123456','222222222231','学生地址31','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2032','学生32','123456','222222222232','学生地址32','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2033','学生33','123456','222222222233','学生地址33','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2034','学生34','123456','222222222234','学生地址34','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2035','学生35','123456','222222222235','学生地址35','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2036','学生36','123456','222222222236','学生地址36','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2037','学生37','123456','222222222237','学生地址37','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2038','学生38','123456','222222222238','学生地址38','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2039','学生39','123456','222222222239','学生地址39','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2040','学生40','123456','222222222240','学生地址40','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2041','学生41','123456','222222222241','学生地址41','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2042','学生42','123456','222222222242','学生地址42','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2043','学生43','123456','222222222243','学生地址43','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2044','学生44','123456','222222222244','学生地址44','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2045','学生45','123456','222222222245','学生地址45','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2046','学生46','123456','222222222246','学生地址46','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2047','学生47','123456','222222222247','学生地址47','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2048','学生48','123456','222222222248','学生地址48','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2049','学生49','123456','222222222249','学生地址49','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2050','学生50','123456','222222222250','学生地址50','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2051','学生51','123456','222222222251','学生地址51','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2052','学生52','123456','222222222252','学生地址52','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2053','学生53','123456','222222222253','学生地址53','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2054','学生54','123456','222222222254','学生地址54','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2055','学生55','123456','222222222255','学生地址55','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2056','学生56','123456','222222222256','学生地址56','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2057','学生57','123456','222222222257','学生地址57','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2058','学生58','123456','222222222258','学生地址58','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2059','学生59','123456','222222222259','学生地址59','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2060','学生60','123456','222222222260','学生地址60','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2061','学生61','123456','222222222261','学生地址61','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2062','学生62','123456','222222222262','学生地址62','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2063','学生63','123456','222222222263','学生地址63','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2064','学生64','123456','222222222264','学生地址64','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2065','学生65','123456','222222222265','学生地址65','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2066','学生66','123456','222222222266','学生地址66','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2067','学生67','123456','222222222267','学生地址67','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2068','学生68','123456','222222222268','学生地址68','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2069','学生69','123456','222222222269','学生地址69','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2070','学生70','123456','222222222270','学生地址70','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2071','学生71','123456','222222222271','学生地址71','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2072','学生72','123456','222222222272','学生地址72','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2073','学生73','123456','222222222273','学生地址73','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2074','学生74','123456','222222222274','学生地址74','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2075','学生75','123456','222222222275','学生地址75','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2076','学生76','123456','222222222276','学生地址76','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2077','学生77','123456','222222222277','学生地址77','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2078','学生78','123456','222222222278','学生地址78','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2079','学生79','123456','222222222279','学生地址79','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2080','学生80','123456','222222222280','学生地址80','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2081','学生81','123456','222222222281','学生地址81','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2082','学生82','123456','222222222282','学生地址82','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2083','学生83','123456','222222222283','学生地址83','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2084','学生84','123456','222222222284','学生地址84','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2085','学生85','123456','222222222285','学生地址85','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2086','学生86','123456','222222222286','学生地址86','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2087','学生87','123456','222222222287','学生地址87','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2088','学生88','123456','222222222288','学生地址88','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2089','学生89','123456','222222222289','学生地址89','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2090','学生90','123456','222222222290','学生地址90','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2091','学生91','123456','222222222291','学生地址91','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2092','学生92','123456','222222222292','学生地址92','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2093','学生93','123456','222222222293','学生地址93','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2094','学生94','123456','222222222294','学生地址94','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2095','学生95','123456','222222222295','学生地址95','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2096','学生96','123456','222222222296','学生地址96','学生','女');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2097','学生97','123456','222222222297','学生地址97','学生','男');
INSERT INTO `lims`.`lims_user` (`id`,`username`,`password`,`tel`,`address`,`usertype`,`sex`) VALUES
        ('2098','学生98','123456','222222222298','学生地址98','学生','女');
drop table if exists lims_lab;
drop table if exists lab_apl;


create table lab_apl(
	labid varchar(32) not null,
    address varchar(50) not null,
    apler varchar(32),
    labstatus enum('审核中','空闲中','已预订'),
    apltime datetime not null,
    primary key(labid)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
CREATE INDEX lims_lab_labstatus ON lab_apl(labstatus);
INSERT INTO `lims`.`lab_apl`(`labid`,`address`,`apler`,`labstatus`,`apltime`)
VALUES ('实验室1','地址1',null,'空闲中',NOW());
INSERT INTO `lims`.`lab_apl`(`labid`,`address`,`apler`,`labstatus`,`apltime`)
VALUES ('实验室2','地址2','教师1','已预订',NOW());
INSERT INTO `lims`.`lab_apl`(`labid`,`address`,`apler`,`labstatus`,`apltime`)
VALUES ('实验室3','地址3','教师2','审核中',NOW());
INSERT INTO `lims`.`lab_apl`(`labid`,`address`,`apler`,`labstatus`,`apltime`)
VALUES ('实验室4','地址4','教师3','审核中',NOW());
create table lims_lab(
	labid varchar(32) not null comment '实验室号',
    address varchar(50) not null comment '实验室地址',
    labstatus enum('审核中','空闲中','已预订'),
    primary key(labid),
    CONSTRAINT fk_l_a FOREIGN KEY(labstatus) REFERENCES lab_apl(labstatus)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

INSERT INTO `lims`.`lims_lab`(`labid`,`address`,`labstatus`) VALUES ('实验室1','地址1','空闲中');
INSERT INTO `lims`.`lims_lab`(`labid`,`address`,`labstatus`) VALUES ('实验室2','地址2','已预订');
INSERT INTO `lims`.`lims_lab`(`labid`,`address`,`labstatus`) VALUES ('实验室3','地址3','审核中');
INSERT INTO `lims`.`lims_lab`(`labid`,`address`,`labstatus`) VALUES ('实验室4','地址4','审核中');

drop table if exists equip;
create table equip(
	ename varchar(32) not null,
    enumber int not null,
    primary key(ename)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
INSERT INTO `lims`.`equip`(`ename`,`enumber`) VALUES ('设备1',4);
INSERT INTO `lims`.`equip`(`ename`,`enumber`) VALUES ('设备2',4);
INSERT INTO `lims`.`equip`(`ename`,`enumber`) VALUES ('设备3',4);
drop table if exists consume;
create table consume(
	cname varchar(32) not null,
    cnumber int not null,
    primary key(cname)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
INSERT INTO `lims`.`consume`(`cname`,`cnumber`) VALUES ('材料1',4);
INSERT INTO `lims`.`consume`(`cname`,`cnumber`) VALUES ('材料2',4);
INSERT INTO `lims`.`consume`(`cname`,`cnumber`) VALUES ('材料3',4);
drop table if exists notice;
create table notice(
	username varchar(32) not null,
    puttime datetime not null,
    content char(100) not null,
    primary key(username)
)ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
