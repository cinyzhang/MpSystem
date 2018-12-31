/*
Navicat MySQL Data Transfer

Source Server         : xmc
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : xmc

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-05-13 21:39:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area_backup
-- ----------------------------
DROP TABLE IF EXISTS `area_backup`;
CREATE TABLE `area_backup` (
  `AREAID` varchar(128) NOT NULL COMMENT '区域id',
  `AREACODE` varchar(128) DEFAULT NULL COMMENT '全国行政区代码',
  `AREANAME` varchar(128) NOT NULL COMMENT '区域名称',
  `AREALEVEL` char(1) NOT NULL COMMENT '区域级别，1：省级，2：市级，3，区县',
  `AREAFULLNAME` varchar(200) DEFAULT NULL COMMENT '区域全称',
  `PARENTID` varchar(128) NOT NULL COMMENT '父级区域id',
  `VCHAR1` varchar(32) DEFAULT NULL,
  `VCHAR2` varchar(32) DEFAULT NULL,
  `VCHAR3` varchar(32) DEFAULT NULL,
  `ISUSED` char(1) DEFAULT '1' COMMENT '是否使用，1：使用，0：不使用',
  PRIMARY KEY (`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area_backup
-- ----------------------------

-- ----------------------------
-- Table structure for basicinfo
-- ----------------------------
DROP TABLE IF EXISTS `basicinfo`;
CREATE TABLE `basicinfo` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `VALUE` varchar(512) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `TAG` varchar(30) DEFAULT NULL,
  `ISALIVE` char(1) NOT NULL,
  `VCHAR1` varchar(32) DEFAULT NULL,
  `VCHAR3` varchar(60) DEFAULT NULL,
  `VCHAR2` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础配置信息表';

-- ----------------------------
-- Records of basicinfo
-- ----------------------------
INSERT INTO `basicinfo` VALUES ('00101', '供货目录默认控制状态', '1', '001', null, '1', null, null, '1');
INSERT INTO `basicinfo` VALUES ('00201', '采购供货周期（天）', '10', '002', null, '1', null, null, '1');
INSERT INTO `basicinfo` VALUES ('00301', '导出文件物理路径', 'd:\\upload\\linshi\\', '003', null, '1', null, null, '1');
INSERT INTO `basicinfo` VALUES ('00302', '导出文件web下载路径', '/upload/', '003', null, '1', null, null, '1');
INSERT INTO `basicinfo` VALUES ('00401', '药品品目导出字段', 'bm#药品品目号,mc#通用名,jx#剂型,gg#规格,zhxs#转换系数,lbmc#类别,ztmc#状态', '004', null, '1', null, null, '1');
INSERT INTO `basicinfo` VALUES ('00402', '药品信息导出字段', 'bm#药品流水号,mc#通用名,jx#剂型,gg#规格,zhxs#转换系数,lbmc#药品类别,scqymc#生产企业名称,spmc#商品名称,dw#单位,zbjg#中标价格,pzwh#批准文号,pzwhyxq#批准文号有效期,jky#是否进口药,bzcz#包装材质,bzdw#包装单位,lsjg#最新零售价,lsjgcc#零售价出处 ,ypjybg#有无药品检验报告,ypjybgbm#药品检验报告编号,ypjybgyxq#药品检验报告有效期,cpsm#产品说明,jyztmc#药品交易状态', '004', null, '1', null, null, '1');
INSERT INTO `basicinfo` VALUES ('00403', '通用批量提示信息字段', 'index#序号,message#信息', '004', null, '1', null, null, '1');

-- ----------------------------
-- Table structure for bss_sys_area
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_area`;
CREATE TABLE `bss_sys_area` (
  `AREAID` varchar(32) NOT NULL,
  `AREANAME` varchar(128) NOT NULL,
  `AREALEVEL` decimal(8,0) NOT NULL,
  `AREAFULLNAME` varchar(200) DEFAULT NULL,
  `PARENTID` varchar(32) DEFAULT NULL,
  `SHORTNAME` varchar(32) DEFAULT NULL,
  `ISUNIT` char(1) DEFAULT NULL,
  `LASTUPDATE` varchar(14) DEFAULT NULL,
  `YZCODE` varchar(32) DEFAULT NULL,
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_area
-- ----------------------------
INSERT INTO `bss_sys_area` VALUES ('0', '区域根目录', '0', null, '-1', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.', '荥阳市', '1', null, '0', null, null, '20140423184716', null, '1.', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.', '崔庙镇', '2', null, '1.', null, null, null, null, 'cmz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.16.', '崔庙镇崔庙村', '3', null, '1.1.', null, null, null, null, 'cmzcmc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.17.', '崔庙镇盆窑村', '3', null, '1.1.', null, null, '20140423105817', null, '1.1.17.', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.18.', '崔庙镇项沟村', '3', null, '1.1.', null, null, null, null, 'cmzxgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.19.', '崔庙镇索坡村', '3', null, '1.1.', null, null, null, null, 'cmzspc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.20.', '崔庙镇竹园村', '3', null, '1.1.', null, null, null, null, 'cmzzyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.21.', '崔庙镇翟沟村', '3', null, '1.1.', null, null, null, null, 'cmzzgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.22.', '崔庙镇老庄村', '3', null, '1.1.', null, null, null, null, 'cmzlzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.23.', '崔庙镇石井村', '3', null, '1.1.', null, null, null, null, 'cmzsjc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.24.', '崔庙镇车厂村', '3', null, '1.1.', null, null, null, null, 'cmzccc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.25.', '崔庙镇石坡村', '3', null, '1.1.', null, null, null, null, 'cmzshpc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.26.', '崔庙镇王宗店村', '3', null, '1.1.', null, null, null, null, 'cmzwzdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.27.', '崔庙镇白赵村', '3', null, '1.1.', null, null, null, null, 'cmzbzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.28.', '崔庙镇栗树沟村', '3', null, '1.1.', null, null, null, null, 'cmzlsgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.29.', '崔庙镇马寨村', '3', null, '1.1.', null, null, null, null, 'cmzmzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.30.', '崔庙镇丁沟村', '3', null, '1.1.', null, null, null, null, 'cmzdgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.31.', '崔庙镇邵寨村', '3', null, '1.1.', null, null, null, null, 'cmzszc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.32.', '崔庙镇寺沟村', '3', null, '1.1.', null, null, null, null, 'cmzsgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.33.', '崔庙镇界沟村', '3', null, '1.1.', null, null, null, null, 'cmzjgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.34.', '崔庙镇郑岗村', '3', null, '1.1.', null, null, null, null, 'cmzzhgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.35.', '崔庙镇王泉村', '3', null, '1.1.', null, null, null, null, 'cmzwqc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.36.', '崔庙镇卢庄村', '3', null, '1.1.', null, null, null, null, 'cmzlzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.1.37.', '崔庙镇郑庄村', '3', null, '1.1.', null, null, null, null, 'cmzzzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.', '汜水镇', '2', null, '1.', null, null, null, null, 'ssz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.1.', '汜水镇寥峪村', '3', null, '1.10.', null, null, null, null, 'sszlyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.10.', '汜水镇清静沟村', '3', null, '1.10.', null, null, null, null, 'sszqjgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.11.', '汜水镇汜水村', '3', null, '1.10.', null, null, null, null, 'sszssc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.12.', '汜水镇滹沱村', '3', null, '1.10.', null, null, null, null, 'sszhtc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.13.', '汜水镇南屯村', '3', null, '1.10.', null, null, null, null, 'sszntc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.14.', '汜水镇赵村', '3', null, '1.10.', null, null, null, null, 'sszzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.2.', '汜水镇十里村', '3', null, '1.10.', null, null, null, null, 'sszslc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.3.', '汜水镇虎牢关村', '3', null, '1.10.', null, null, null, null, 'sszhlgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.4.', '汜水镇东河南村', '3', null, '1.10.', null, null, null, null, 'sszdhnc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.5.', '汜水镇老君堂村', '3', null, '1.10.', null, null, null, null, 'sszljtc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.6.', '汜水镇口子村', '3', null, '1.10.', null, null, null, null, 'sszkzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.7.', '汜水镇新沟村', '3', null, '1.10.', null, null, null, null, 'sszxgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.8.', '汜水镇周沟村', '3', null, '1.10.', null, null, null, null, 'sszzgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.10.9.', '汜水镇西邢村', '3', null, '1.10.', null, null, null, null, 'sszxxc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.', '高山镇', '2', null, '1.', null, null, null, null, 'gsz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.1.', '高山镇许村', '3', null, '1.11.', null, null, null, null, 'gszxc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.10.', '高山镇乔沟村', '3', null, '1.11.', null, null, null, null, 'gszqgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.11.', '高山镇杨桥村', '3', null, '1.11.', null, null, null, null, 'gszyqc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.12.', '高山镇余顶村', '3', null, '1.11.', null, null, null, null, 'gszydc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.13.', '高山镇妥要村', '3', null, '1.11.', null, null, null, null, 'gsztyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.14.', '高山镇苌岗村', '3', null, '1.11.', null, null, null, null, 'gszcgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.15.', '高山镇冢岗村', '3', null, '1.11.', null, null, null, null, 'gszzgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.16.', '高山镇苗顶村', '3', null, '1.11.', null, null, null, null, 'gszmdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.17.', '高山镇石洞村', '3', null, '1.11.', null, null, null, null, 'gszsdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.18.', '高山镇高山村', '3', null, '1.11.', null, null, null, null, 'gszgsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.19.', '高山镇竹川村', '3', null, '1.11.', null, null, null, null, 'gszzcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.2.', '高山镇潘窑村', '3', null, '1.11.', null, null, null, null, 'gszpyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.3.', '高山镇穆沟村', '3', null, '1.11.', null, null, null, null, 'gszmugc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.4.', '高山镇白水村', '3', null, '1.11.', null, null, null, null, 'gszbsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.5.', '高山镇冯沟村', '3', null, '1.11.', null, null, null, null, 'gszfgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.6.', '高山镇吴沟村', '3', null, '1.11.', null, null, null, null, 'gszwgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.7.', '高山镇庙沟村', '3', null, '1.11.', null, null, null, null, 'gszmgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.8.', '高山镇纸坊村', '3', null, '1.11.', null, null, null, null, 'gszzfc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.11.9.', '高山镇竹园村', '3', null, '1.11.', null, null, null, null, 'gszzyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.', '城关乡', '2', null, '1.', null, null, null, null, 'cgx', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.1.', '城关乡石板沟村', '3', null, '1.12.', null, null, null, null, 'cgxsbgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.10.', '城关乡汪沟村', '3', null, '1.12.', null, null, null, null, 'cgxwgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.11.', '城关乡北周村', '3', null, '1.12.', null, null, null, null, 'cgxbzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.12.', '城关乡张楼村', '3', null, '1.12.', null, null, null, null, 'cgxzlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.13.', '城关乡阴赵寨村', '3', null, '1.12.', null, null, null, null, 'cgxyzzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.14.', '城关乡南周村', '3', null, '1.12.', null, null, null, null, 'cgxnzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.15.', '城关乡柿园村', '3', null, '1.12.', null, null, null, null, 'cgxsyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.16.', '城关乡桃李村', '3', null, '1.12.', null, null, null, null, 'cgxtlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.17.', '城关乡竹叶河村', '3', null, '1.12.', null, null, null, null, 'cgxzyhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.18.', '城关乡西史村', '3', null, '1.12.', null, null, null, null, 'cgxxsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.19.', '城关乡小王村', '3', null, '1.12.', null, null, null, null, 'cgxxwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.2.', '城关乡大庙村', '3', null, '1.12.', null, null, null, null, 'cgxdmc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.20.', '城关乡皋砦村', '3', null, '1.12.', null, null, null, null, 'cgxgzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.21.', '城关乡三十里铺村', '3', null, '1.12.', null, null, null, null, 'cgxsslpc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.22.', '城关乡高袁寨村', '3', null, '1.12.', null, null, null, null, 'cgxgyzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.23.', '城关乡宫寨村', '3', null, '1.12.', null, null, null, null, 'cgxgzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.24.', '城关乡付河村', '3', null, '1.12.', null, null, null, null, 'cgxfhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.25.', '城关乡王庄村', '3', null, '1.12.', null, null, null, null, 'cgxwzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.26.', '城关乡龙泉寺村', '3', null, '1.12.', null, null, null, null, 'cgxlqsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.27.', '城关乡安庄村', '3', null, '1.12.', null, null, null, null, 'cgxazc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.28.', '城关乡瓦窑坡村', '3', null, '1.12.', null, null, null, null, 'cgxwypc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.29.', '城关乡上集村', '3', null, '1.12.', null, null, null, null, 'cgxsjc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.3.', '城关乡雷垌村', '3', null, '1.12.', null, null, null, null, 'cgxldc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.4.', '城关乡杨垌村', '3', null, '1.12.', null, null, null, null, 'cgxydc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.5.', '城关乡洪界村', '3', null, '1.12.', null, null, null, null, 'cgxhjc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.6.', '城关乡五龙寨村', '3', null, '1.12.', null, null, null, null, 'cgxwlzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.7.', '城关乡东史村', '3', null, '1.12.', null, null, null, null, 'cgxdsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.8.', '城关乡大王村', '3', null, '1.12.', null, null, null, null, 'cgxdwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.12.9.', '城关乡李克寨村', '3', null, '1.12.', null, null, null, null, 'cgxlkzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.', '刘河镇', '2', null, '1.', null, null, null, null, 'lhz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.1.', '刘河镇刘河村', '3', null, '1.13.', null, null, null, null, 'lhzlhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.10.', '刘河镇陈家岗村', '3', null, '1.13.', null, null, null, null, 'lhzcjgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.11.', '刘河镇分水岭村', '3', null, '1.13.', null, null, null, null, 'lhzfslc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.12.', '刘河镇石庄村', '3', null, '1.13.', null, null, null, null, 'lhzszc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.13.', '刘河镇申庄村', '3', null, '1.13.', null, null, null, null, 'lhzszhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.14.', '刘河镇任洼村', '3', null, '1.13.', null, null, null, null, 'lhzrwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.15.', '刘河镇王河村', '3', null, '1.13.', null, null, null, null, 'lhzwhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.2.', '刘河镇花河村', '3', null, '1.13.', null, null, null, null, 'lhzhhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.3.', '刘河镇窝张村', '3', null, '1.13.', null, null, null, null, 'lhzwzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.4.', '刘河镇架子沟村', '3', null, '1.13.', null, null, null, null, 'lhzjzgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.5.', '刘河镇官顶村', '3', null, '1.13.', null, null, null, null, 'lhzgdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.6.', '刘河镇小寨村', '3', null, '1.13.', null, null, null, null, 'lhzxzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.7.', '刘河镇庵上村', '3', null, '1.13.', null, null, null, null, 'lhzasc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.8.', '刘河镇反坡村', '3', null, '1.13.', null, null, null, null, 'lhzfpc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.13.9.', '刘河镇徐沟村', '3', null, '1.13.', null, null, null, null, 'lhzxgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.14.', '环翠峪', '2', null, '1.', null, null, null, null, 'hcy', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.14.1.', '环翠峪司庄村', '3', null, '1.14.', null, null, null, null, 'hcyszc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.14.2.', '环翠峪村', '3', null, '1.14.', null, null, null, null, 'hcyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.14.3.', '环翠峪陈庄村', '3', null, '1.14.', null, null, null, null, 'hcyczc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.14.4.', '环翠峪东沟村', '3', null, '1.14.', null, null, null, null, 'hcydgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.14.5.', '环翠峪二郎庙村', '3', null, '1.14.', null, null, null, null, 'hcyelmc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.', '贾峪镇', '2', null, '1.', null, null, null, null, 'jyz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.1.', '贾峪镇贾峪村', '3', null, '1.15.', null, null, null, null, 'jyzjyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.10.', '贾峪镇周垌村', '3', null, '1.15.', null, null, null, null, 'jyzzdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.11.', '贾峪镇邢村', '3', null, '1.15.', null, null, null, null, 'jyzxc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.12.', '贾峪镇南王村', '3', null, '1.15.', null, null, null, null, 'jyznwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.13.', '贾峪镇石碑沟村', '3', null, '1.15.', null, null, null, null, 'jyzsbgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.14.', '贾峪镇大堰村', '3', null, '1.15.', null, null, null, null, 'jyzdyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.15.', '贾峪镇梁沟村', '3', null, '1.15.', null, null, null, null, 'jyzlgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.16.', '贾峪镇朱顶村', '3', null, '1.15.', null, null, null, null, 'jyzzhdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.17.', '贾峪镇楚村', '3', null, '1.15.', null, null, null, null, 'jyzcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.18.', '贾峪镇楼李村', '3', null, '1.15.', null, null, null, null, 'jyzllc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.19.', '贾峪镇高河村', '3', null, '1.15.', null, null, null, null, 'jyzghc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.2.', '贾峪镇上湾村', '3', null, '1.15.', null, null, null, null, 'jyzswc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.20.', '贾峪镇洞林寺村', '3', null, '1.15.', null, null, null, null, 'jyzdlsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.21.', '贾峪镇鹿村', '3', null, '1.15.', null, null, null, null, 'jyzlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.22.', '贾峪镇郭岗村', '3', null, '1.15.', null, null, null, null, 'jyzggc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.23.', '贾峪镇北沟村', '3', null, '1.15.', null, null, null, null, 'jyzbgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.24.', '贾峪镇岵山村', '3', null, '1.15.', null, null, null, null, 'jyzhsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.25.', '贾峪镇塔山村', '3', null, '1.15.', null, null, null, null, 'jyztsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.26.', '贾峪镇槐林村', '3', null, '1.15.', null, null, null, null, 'jyzhlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.3.', '贾峪镇老邢村', '3', null, '1.15.', null, null, null, null, 'jyzlxc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.4.', '贾峪镇李家台村', '3', null, '1.15.', null, null, null, null, 'jyzljtc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.5.', '贾峪镇石硼村', '3', null, '1.15.', null, null, null, null, 'jyzspc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.6.', '贾峪镇龙卧洼村', '3', null, '1.15.', null, null, null, null, 'jyzlwwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.7.', '贾峪镇双楼郭村', '3', null, '1.15.', null, null, null, null, 'jyzslgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.8.', '贾峪镇马沟村', '3', null, '1.15.', null, null, null, null, 'jyzmgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.15.9.', '贾峪镇祖始村', '3', null, '1.15.', null, null, null, null, 'jyzzsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.', '豫龙镇', '2', null, '1.', null, null, null, null, 'ylz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.10.', '豫龙镇廿铺村', '3', null, '1.2.', null, null, null, null, 'ylzepc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.11.', '豫龙镇西张寨村', '3', null, '1.2.', null, null, null, null, 'ylzxzzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.13.', '豫龙镇翟砦村', '3', null, '1.2.', null, null, null, null, 'ylzzzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.14.', '豫龙镇碾徐村', '3', null, '1.2.', null, null, null, null, 'ylznxc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.16.', '豫龙镇王寨村', '3', null, '1.2.', null, null, null, null, 'ylzwzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.17.', '豫龙镇赵家垌村', '3', null, '1.2.', null, null, null, null, 'ylzzjdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.18.', '豫龙镇瓦屋孙村', '3', null, '1.2.', null, null, null, null, 'ylzwwsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.19.', '豫龙镇蒋寨村', '3', null, '1.2.', null, null, null, null, 'ylzjzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.20.', '豫龙镇京襄城村', '3', null, '1.2.', null, null, null, null, 'ylzjxcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.21.', '豫龙镇赵家庄村', '3', null, '1.2.', null, null, null, null, 'ylzzjzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.22.', '豫龙镇茹寨村', '3', null, '1.2.', null, null, null, null, 'ylzrzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.23.', '豫龙镇樊寨村', '3', null, '1.2.', null, null, null, null, 'ylzfzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.24.', '豫龙镇楚寨村', '3', null, '1.2.', null, null, null, null, 'ylzczc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.25.', '豫龙镇南张寨村', '3', null, '1.2.', null, null, null, null, 'ylznzzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.26.', '豫龙镇郝寨村', '3', null, '1.2.', null, null, null, null, 'ylzhzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.27.', '豫龙镇兴国寺村', '3', null, '1.2.', null, null, null, null, 'ylzxgsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.28.', '豫龙镇石柱岗村', '3', null, '1.2.', null, null, null, null, 'ylzszgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.29.', '豫龙镇陈庄村', '3', null, '1.2.', null, null, null, null, 'ylzczhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.30.', '豫龙镇关帝庙村', '3', null, '1.2.', null, null, null, null, 'ylzgdmc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.31.', '豫龙镇毛寨村', '3', null, '1.2.', null, null, null, null, 'ylzmzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.32.', '豫龙镇寨杨村', '3', null, '1.2.', null, null, null, null, 'ylzzyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.33.', '豫龙镇晏曲村', '3', null, '1.2.', null, null, null, null, 'ylzyqc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.34.', '豫龙镇焦寨村', '3', null, '1.2.', null, null, null, null, 'ylzjzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.35.', '豫龙镇刘村', '3', null, '1.2.', null, null, null, null, 'ylzlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.36.', '豫龙镇黑张村', '3', null, '1.2.', null, null, null, null, 'ylzhzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.37.', '豫龙镇罗垌村', '3', null, '1.2.', null, null, null, null, 'ylzldc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.8.', '豫龙镇柿园村', '3', null, '1.2.', null, null, null, null, 'ylzsyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.2.9.', '豫龙镇槐西村', '3', null, '1.2.', null, null, null, null, 'ylzhxc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.3.', '索河', '2', null, '1.', null, null, null, null, 'sh', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.3.1.', '索河杨五楼村', '3', null, '1.3.', null, null, null, null, 'shywlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.3.2.', '索河槐树洼村', '3', null, '1.3.', null, null, null, null, 'shhswc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.3.3.', '索河城关村', '3', null, '1.3.', null, null, null, null, 'shcgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.3.4.', '索河惠厂村', '3', null, '1.3.', null, null, null, null, 'shhcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.3.5.', '索河楚楼村', '3', null, '1.3.', null, null, null, null, 'shclc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.', '京城', '2', null, '1.', null, null, null, null, 'jc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.1.', '京城堡王村', '3', null, '1.4.', null, null, null, null, 'jcbwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.2.', '京城康砦村', '3', null, '1.4.', null, null, null, null, 'jckzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.3.', '京城石砦村', '3', null, '1.4.', null, null, null, null, 'jcszc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.4.', '京城吉家砦村', '3', null, '1.4.', null, null, null, null, 'jcjjzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.5.', '京城曹李村', '3', null, '1.4.', null, null, null, null, 'jcclc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.6.', '京城平庄村', '3', null, '1.4.', null, null, null, null, 'jcpzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.7.', '京城冯砦村', '3', null, '1.4.', null, null, null, null, 'jcfzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.4.8.', '京城狼窝刘村', '3', null, '1.4.', null, null, null, null, 'jclwlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.', '乔楼镇', '2', null, '1.', null, null, null, null, 'qlz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.1.', '乔楼镇东郭村', '3', null, '1.5.', null, null, null, null, 'qlzdgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.10.', '乔楼镇李沟村', '3', null, '1.5.', null, null, null, null, 'qlzlgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.11.', '乔楼镇付河村', '3', null, '1.5.', null, null, null, null, 'qlzfhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.12.', '乔楼镇狮村', '3', null, '1.5.', null, null, null, null, 'qlzsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.13.', '乔楼镇聂楼村', '3', null, '1.5.', null, null, null, null, 'qlznlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.14.', '乔楼镇冢子岗村', '3', null, '1.5.', null, null, null, null, 'qlzzzgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.15.', '乔楼镇张王庄村', '3', null, '1.5.', null, null, null, null, 'qlzzwzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.16.', '乔楼镇蔡寨村', '3', null, '1.5.', null, null, null, null, 'qlzczc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.17.', '乔楼镇韩村', '3', null, '1.5.', null, null, null, null, 'qlzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.18.', '乔楼镇楚堂村', '3', null, '1.5.', null, null, null, null, 'qlzctc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.2.', '乔楼镇孙砦村', '3', null, '1.5.', null, null, null, null, 'qlzszc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.3.', '乔楼镇沈洼村', '3', null, '1.5.', null, null, null, null, 'qlzswc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.4.', '乔楼镇七里村', '3', null, '1.5.', null, null, null, null, 'qlzqlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.5.', '乔楼镇陈寨村', '3', null, '1.5.', null, null, null, null, 'qlzczhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.6.', '乔楼镇任庄村', '3', null, '1.5.', null, null, null, null, 'qlzrzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.7.', '乔楼镇陈沟村', '3', null, '1.5.', null, null, null, null, 'qlzcgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.8.', '乔楼镇辛岗村', '3', null, '1.5.', null, null, null, null, 'qlzxgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.5.9.', '乔楼镇张村庙', '3', null, '1.5.', null, null, null, null, 'qlzzcm', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.', '广武镇', '2', null, '1.', null, null, null, null, 'gwz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.1.', '广武镇插闫村', '3', null, '1.6.', null, null, null, null, 'gwzcyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.10.', '广武镇霸王城村', '3', null, '1.6.', null, null, null, null, 'gwzbwcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.11.', '广武镇汉王城村', '3', null, '1.6.', null, null, null, null, 'gwzhwcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.12.', '广武镇白寨村', '3', null, '1.6.', null, null, null, null, 'gwzbzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.13.', '广武镇胡村', '3', null, '1.6.', null, null, null, null, 'gwzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.14.', '广武镇三官村', '3', null, '1.6.', null, null, null, null, 'gwzsgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.15.', '广武镇樊河村', '3', null, '1.6.', null, null, null, null, 'gwzfhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.16.', '广武镇张庄村', '3', null, '1.6.', null, null, null, null, 'gwzzzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.17.', '广武镇孙寨村', '3', null, '1.6.', null, null, null, null, 'gwzszc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.18.', '广武镇陈沟村', '3', null, '1.6.', null, null, null, null, 'gwzcgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.19.', '广武镇丁洼村', '3', null, '1.6.', null, null, null, null, 'gwzdwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.2.', '广武镇桃花峪村', '3', null, '1.6.', null, null, null, null, 'gwzthyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.20.', '广武镇冯庄村', '3', null, '1.6.', null, null, null, null, 'gwzfzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.21.', '广武镇黑李村', '3', null, '1.6.', null, null, null, null, 'gwzhlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.22.', '广武镇大师姑村', '3', null, '1.6.', null, null, null, null, 'gwzdsgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.23.', '广武镇王沟村', '3', null, '1.6.', null, null, null, null, 'gwzwgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.24.', '广武镇丁楼村', '3', null, '1.6.', null, null, null, null, 'gwzdlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.25.', '广武镇苏寨村', '3', null, '1.6.', null, null, null, null, 'gwzszhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.26.', '广武镇闫村', '3', null, '1.6.', null, null, null, null, 'gwzyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.27.', '广武镇桃园村', '3', null, '1.6.', null, null, null, null, 'gwztyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.28.', '广武镇任河村', '3', null, '1.6.', null, null, null, null, 'gwzrhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.29.', '广武镇中任村', '3', null, '1.6.', null, null, null, null, 'gwzzrc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.3.', '广武镇唐垌村', '3', null, '1.6.', null, null, null, null, 'gwztdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.30.', '广武镇北任村', '3', null, '1.6.', null, null, null, null, 'gwzbrc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.31.', '广武镇军张村', '3', null, '1.6.', null, null, null, null, 'gwzjzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.32.', '广武镇寨峪村', '3', null, '1.6.', null, null, null, null, 'gwzzyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.33.', '广武镇车大沟村', '3', null, '1.6.', null, null, null, null, 'gwzcdgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.34.', '广武镇董庄村', '3', null, '1.6.', null, null, null, null, 'gwzdzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.35.', '广武镇后王村', '3', null, '1.6.', null, null, null, null, 'gwzhwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.36.', '广武镇张河村', '3', null, '1.6.', null, null, null, null, 'gwzzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.37.', '广武镇陈垌村', '3', null, '1.6.', null, null, null, null, 'gwzcdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.38.', '广武镇王顶村', '3', null, '1.6.', null, null, null, null, 'gwzwdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.39.', '广武镇张垌村', '3', null, '1.6.', null, null, null, null, 'gwzzdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.4.', '广武镇西苏村', '3', null, '1.6.', null, null, null, null, 'gwzxsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.40.', '广武镇广武村', '3', null, '1.6.', null, null, null, null, 'gwzgwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.41.', '广武镇东魏营村', '3', null, '1.6.', null, null, null, null, 'gwzdwyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.42.', '广武镇西魏营村', '3', null, '1.6.', null, null, null, null, 'gwzxwyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.43.', '广武镇丹阳村', '3', null, '1.6.', null, null, null, null, 'gwzdyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.5.', '广武镇东苏村', '3', null, '1.6.', null, null, null, null, 'gwzdsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.6.', '广武镇南董村', '3', null, '1.6.', null, null, null, null, 'gwzndc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.7.', '广武镇车庄村', '3', null, '1.6.', null, null, null, null, 'gwzczc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.8.', '广武镇倪店村', '3', null, '1.6.', null, null, null, null, 'gwznidc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.6.9.', '广武镇水泉村', '3', null, '1.6.', null, null, null, null, 'gwzsqc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.', '高村乡', '2', null, '1.', null, null, null, null, 'gcx', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.1.', '高村乡官庄村', '3', null, '1.7.', null, null, null, null, 'gcxgzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.10.', '高村乡张常村', '3', null, '1.7.', null, null, null, null, 'gcxzcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.11.', '高村乡高村寺村', '3', null, '1.7.', null, null, null, null, 'gcxgcsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.12.', '高村乡张村', '3', null, '1.7.', null, null, null, null, 'gcxzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.13.', '高村乡马寨村', '3', null, '1.7.', null, null, null, null, 'gcxmzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.14.', '高村乡油坊村', '3', null, '1.7.', null, null, null, null, 'gcxyfc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.15.', '高村乡荆寨村', '3', null, '1.7.', null, null, null, null, 'gcxjzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.16.', '高村乡杜常村', '3', null, '1.7.', null, null, null, null, 'gcxdcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.17.', '高村乡穆寨村', '3', null, '1.7.', null, null, null, null, 'gcxmzhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.18.', '高村乡刘铺头村', '3', null, '1.7.', null, null, null, null, 'gcxlptc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.19.', '高村乡宋村', '3', null, '1.7.', null, null, null, null, 'gcxsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.2.', '高村乡吴村', '3', null, '1.7.', null, null, null, null, 'gcxwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.20.', '高村乡陈铺头村', '3', null, '1.7.', null, null, null, null, 'gcxcptc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.21.', '高村乡牛口峪村', '3', null, '1.7.', null, null, null, null, 'gcxnkyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.22.', '高村乡邙山村', '3', null, '1.7.', null, null, null, null, 'gcxmsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.23.', '高村乡枣树沟村', '3', null, '1.7.', null, null, null, null, 'gcxzsgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.24.', '高村乡秦铺头村', '3', null, '1.7.', null, null, null, null, 'gcxqptc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.25.', '高村乡安仁寨村', '3', null, '1.7.', null, null, null, null, 'gcxarzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.26.', '高村乡周寨村', '3', null, '1.7.', null, null, null, null, 'gcxzzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.27.', '高村乡高村', '3', null, '1.7.', null, null, null, null, 'gcxgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.28.', '高村乡官峪村', '3', null, '1.7.', null, null, null, null, 'gcxgyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.29.', '高村乡刘沟村', '3', null, '1.7.', null, null, null, null, 'gcxlgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.3.', '高村乡前卷子村', '3', null, '1.7.', null, null, null, null, 'gcxqjzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.30.', '高村乡李山村', '3', null, '1.7.', null, null, null, null, 'gcxlsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.4.', '高村乡后卷子村', '3', null, '1.7.', null, null, null, null, 'gcxhjzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.5.', '高村乡司马村', '3', null, '1.7.', null, null, null, null, 'gcxsmc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.6.', '高村乡真村', '3', null, '1.7.', null, null, null, null, 'gcxzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.7.', '高村乡马沟村', '3', null, '1.7.', null, null, null, null, 'gcxmgc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.8.', '高村乡韩常村', '3', null, '1.7.', null, null, null, null, 'gcxhcc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.7.9.', '高村乡史坊村', '3', null, '1.7.', null, null, null, null, 'gcxsfc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.8.', '金寨乡', '2', null, '1.', null, null, null, null, 'jzx', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.8.1.', '金寨乡金寨村', '3', null, '1.8.', null, null, null, null, 'jzxjzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.8.2.', '金寨乡楚楼村', '3', null, '1.8.', null, null, null, null, 'jzxclc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.', '王村镇', '2', null, '1.', null, null, null, null, 'wcz', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.1.', '王村镇王村', '3', null, '1.9.', null, null, null, null, 'wczwc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.10.', '王村镇前新庄村', '3', null, '1.9.', null, null, null, null, 'wczqxzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.11.', '王村镇丁村', '3', null, '1.9.', null, null, null, null, 'wczdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.12.', '王村镇段坊村', '3', null, '1.9.', null, null, null, null, 'wczdfc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.13.', '王村镇仁里村', '3', null, '1.9.', null, null, null, null, 'wczrlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.14.', '王村镇前白杨村', '3', null, '1.9.', null, null, null, null, 'wczqbyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.15.', '王村镇洼子村', '3', null, '1.9.', null, null, null, null, 'wczwzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.16.', '王村镇梁庄村', '3', null, '1.9.', null, null, null, null, 'wczlzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.17.', '王村镇许庄村', '3', null, '1.9.', null, null, null, null, 'wczxzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.18.', '王村镇韩村', '3', null, '1.9.', null, null, null, null, 'wczhc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.19.', '王村镇草庙村', '3', null, '1.9.', null, null, null, null, 'wczcmc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.2.', '王村镇房罗村', '3', null, '1.9.', null, null, null, null, 'wczflc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.20.', '王村镇薛村', '3', null, '1.9.', null, null, null, null, 'wczxc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.21.', '王村镇司村', '3', null, '1.9.', null, null, null, null, 'wczsc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.22.', '王村镇后白杨村', '3', null, '1.9.', null, null, null, null, 'wczhbyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.23.', '王村镇西大村', '3', null, '1.9.', null, null, null, null, 'wczxidc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.24.', '王村镇后殿村', '3', null, '1.9.', null, null, null, null, 'wczhdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.25.', '王村镇竹园村', '3', null, '1.9.', null, null, null, null, 'wczzyc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.3.', '王村镇木楼村', '3', null, '1.9.', null, null, null, null, 'wczmlc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.4.', '王村镇柏垛村', '3', null, '1.9.', null, null, null, null, 'wczbdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.5.', '王村镇小村', '3', null, '1.9.', null, null, null, null, 'wczxiaoc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.6.', '王村镇后新庄村', '3', null, '1.9.', null, null, null, null, 'wczhxzc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.7.', '王村镇蒋头村', '3', null, '1.9.', null, null, null, null, 'wczjtc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.8.', '王村镇新店村', '3', null, '1.9.', null, null, null, null, 'wczxdc', null, null, null, null, null);
INSERT INTO `bss_sys_area` VALUES ('1.9.9.', '王村镇留村', '3', null, '1.9.', null, null, null, null, 'wczlc', null, null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_deploynode
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_deploynode`;
CREATE TABLE `bss_sys_deploynode` (
  `NODEID` varchar(32) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `SYSID` varchar(32) NOT NULL,
  `URL` varchar(200) NOT NULL,
  `ICON` varchar(500) DEFAULT NULL,
  `SHOWORDER` decimal(8,0) NOT NULL,
  `VCHAR1` varchar(200) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  `VCHAR2` varchar(200) DEFAULT NULL,
  `VCHAR3` varchar(200) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_deploynode
-- ----------------------------
INSERT INTO `bss_sys_deploynode` VALUES ('1', '荥阳市药品集中采购系统', '2', 'http://', 'image/icons/server.png', '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_log`;
CREATE TABLE `bss_sys_log` (
  `LOGID` varchar(32) NOT NULL,
  `USERNAME` varchar(64) NOT NULL,
  `TRUENAME` varchar(20) NOT NULL,
  `CLIENTIP` varchar(32) DEFAULT NULL,
  `OPERTYPE` varchar(32) NOT NULL,
  `MODULENAME` varchar(32) NOT NULL,
  `OPERCONTENT` varchar(600) DEFAULT NULL,
  `OPERDATE` varchar(14) NOT NULL,
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`LOGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for bss_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_module`;
CREATE TABLE `bss_sys_module` (
  `MODULEID` varchar(32) NOT NULL,
  `SYSID` varchar(32) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `PARENTID` varchar(32) NOT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `ICON` varchar(500) DEFAULT NULL,
  `SHOWORDER` decimal(8,0) NOT NULL,
  `ISUSED` char(1) NOT NULL,
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MODULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_module
-- ----------------------------
INSERT INTO `bss_sys_module` VALUES ('1555C29C58D543A0A1B5FB98396F0B99', '2', '采购单审核', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdreview.action', null, '3', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('1EDA6EC82D604C96BCB794FC8A2EDCC6', '2', '统计分析', '0', null, null, '5', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('2035CD3FA7D34FD58F69CD16CA86BCB1', '2', '区域管理', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/arealist.action', null, '1', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('21119058662343958E4D2DFD797A2C0D', '2', '医院维护', 'CE05693B089C4E7B9BEE4805F0DB126B', 'user/useryyquery.action', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('23680783880C44B5BCEC75B6C042D57C', '2', '采购单查询', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdlist.action', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('289EC81D4EB943FBA46989DF42E674F3', '2', '药品目录', '0', null, null, '1', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('3072B118C1C54B02876B1A8252260765', '2', '开户', 'CE05693B089C4E7B9BEE4805F0DB126B', 'user/sysuserquery.action', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('3C3080C4A6DA410FB2E050FD9EA135EF', '2', '采购单管理', '0', null, null, '2', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('47CBF626B3124EA08ABE86B49B89166A', '2', '供货商药品目录维护', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/gysypmlquery.action', null, '3', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('4BCD34C8A6A3437A865469C985D63627', '2', '供货目录控制', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/gysypmlcontrolquery.action', null, '5', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('5067F9E2580B43EA9A4F7CA16A0F3F1D', '2', '退货单受理', 'DD50B9E62C374A6D9095ACF907D9967D', 'thd/yythddispose.action', null, '5', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('5DEF0BD1E6414A899EE7FC0212637EAE', '2', '采购入库', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdrkquery.action', null, '6', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('68A8C6C5DCDE4C4C9C1F33326DC33533', '2', '监督单位维护', 'CE05693B089C4E7B9BEE4805F0DB126B', 'user/userjdquery.action', null, '1', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('827309AD0F6B483C899B962BD25E6D42', '2', '退货单维护', 'DD50B9E62C374A6D9095ACF907D9967D', 'thd/yythdmanager.action', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('83F276069EEE46D88A9828F894D1338E', '2', '医院药品目录维护', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/yyypmlquery.action', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('8A3AD90CAC0041A9BCD99CBF0CD221E4', '2', '退货单查询', 'DD50B9E62C374A6D9095ACF907D9967D', 'thd/yythdlist.action', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('8BC194996994404A8A0143FA66C97740', '2', '结算单管理', '0', null, null, '4', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('8D7A81697FCD4680A2B200C1FB355D5F', '2', '药品目录维护', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/ypxxmanager.action', null, '1', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('99B1C9FADE34488281443EE94FF64719', '2', '模块操作管理', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/modulelist.action', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('A3337CF0A3524E18A2154BD36A42C981', '2', '系统参数配置', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/basicinfo.action', null, '5', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('A515189189D7416CBD82FBF6A345F6B2', '2', '采购单创建', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdadd.action', null, '1', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('A960E8CEF2794F3094FCC3D7E251EC79', '2', '供应商维护', 'CE05693B089C4E7B9BEE4805F0DB126B', 'user/usergysquery.action', null, '3', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('ABA86FC23E1E4874994093E2C28D9105', '2', '数据字典配置', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/dictmanager.action', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('ADF33CF8559E4F80A6403B270D49A52C', '2', '药品目录查询', '289EC81D4EB943FBA46989DF42E674F3', 'ypml/ypxxquery.action', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('C8EF4E9BF6B245A68C9B87BAA2CEFD74', '2', '角色管理', 'F17E3A1C73BE4F8EA92A9D812555B05F', 'sysconfig/rolelist.action', null, '3', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('CE05693B089C4E7B9BEE4805F0DB126B', '2', '用户管理', '0', null, null, '6', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('D9D57D7AF2D842089C03C987503F89A3', '2', '采购单维护', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgdmanager.action', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('DD50B9E62C374A6D9095ACF907D9967D', '2', '退货单管理', '0', null, null, '3', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('E6F1EED4BCA44B618C38838862B7BF98', '2', '退货单创建', 'DD50B9E62C374A6D9095ACF907D9967D', 'thd/yythdadd.action', null, '1', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('F17E3A1C73BE4F8EA92A9D812555B05F', '2', '系统管理', '0', null, null, '7', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_module` VALUES ('FD13C9EDAD50481F9F4C3D6C3CC9E28D', '2', '采购单受理', '3C3080C4A6DA410FB2E050FD9EA135EF', 'cgd/yycgddispose.action', null, '5', '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_operate
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_operate`;
CREATE TABLE `bss_sys_operate` (
  `OPERATEID` varchar(32) NOT NULL,
  `OPERATENAME` varchar(100) NOT NULL,
  `OPERATECODE` varchar(64) DEFAULT NULL,
  `METHOD` varchar(200) DEFAULT NULL,
  `MODULEID` varchar(32) DEFAULT NULL,
  `ICON` varchar(500) DEFAULT NULL,
  `SHOWORDER` decimal(8,0) NOT NULL,
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`OPERATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_operate
-- ----------------------------
INSERT INTO `bss_sys_operate` VALUES ('017A3CCB9F5C4B2AA716EEF99786972A', '医院信息保存', null, 'user/useryysave.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('02803DEC12EA47A1A53F6D6D69D6962B', '退货药品明细查询', null, 'thd/yythdedit_thdmxresult.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('02DDC4B1AF7D4E318C8BBDB722990CB0', '药品信息保存', null, 'ypml/ypxxsave.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', '8', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('03BBBFC85A184B44A76E801665AB1E4F', '采购单维护列表页面', null, 'cgd/yycgdmanager.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '8', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('095BB5715AFD490797FBF9AA84DD6B44', '退货药品添加查询列表', null, 'thd/yythdmxadd_result.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('0B98189F25FA48078F924CC273A38466', '供货目录控制提交', null, 'ypml/gysypmlcontrolsubmit.action', '4BCD34C8A6A3437A865469C985D63627', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('0BF1067911534A40B20701034B43F133', '退货单提交', null, 'thd/yythdsubmit.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '11', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('0CBA138A6F254129B3875637CF3BEFA6', '医院信息查询显示', null, 'user/useryyquery.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('0ED046E492AE4AAA873395C1952EE73D', '退货药品添加页面', null, 'thd/yythdmxadd.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('13C4C7C68B314AECA4B18D03757C9D83', '采购单详细信息', null, 'cgd/yycgdinfo.action', '23680783880C44B5BCEC75B6C042D57C', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('16201FA4BCB14180B4D453A9D2923254', '药品目录导出', null, 'ypml/ypxxexport.action', 'ADF33CF8559E4F80A6403B270D49A52C', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('186597EAF3C4425AB5763ABED69B5CB9', '系统用户信息保存', null, 'user/sysusersave.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('1C571D68DFDF42CDAB1E98F3AD3AB8D7', '退货单删除', null, 'thd/yythddelete.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '10', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('2051E5FBB6634FEBBBFAAFB055C959F0', '供应商查询结果', null, 'user/usergysquery_result.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('21A77A7E78E1407FAC5D007BDFBD0CBC', '退货药品删除', null, 'thd/yythdmxdelete.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '7', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('22E400771F624B418B2007B47B18E22B', '监督单位信息保存', null, 'user/userjdsave.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('2608A43FF97E4C68AA9E2B22B812F0C1', '采购药品添加页面', null, 'cgd/yycgdmxadd.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('29E8145A6A0E4729B916D2B06D7D88FC', '医院信息编辑', null, 'user/useryyedit.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('2B6082CAB6654CC99F7CBD4C00A5E423', '采购药品添加提交', null, 'cgd/yycgdmxaddsubmit.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '6', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('2B7A6A42A7BB41DEB0217E45C07FD7A0', '药品信息导入提交', null, 'ypml/ypxximportsubmit.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('2E77D3CA9F644ADCB0EE1E649C90309C', '退货单维护列表页面', null, 'thd/yythdmanager.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '8', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('3165EF94AB3640FF9CF56491DF6556AC', '采购药品添加提交', null, 'cgd/yycgdmxaddsubmit.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '6', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('31EBAA2FFF0D4510B7CC1DC7E5A039B3', '退货药品信息保存', null, 'thd/yythdmxsave.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '12', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('33DF45BC52124A97B9EDEAB3E0F22FDC', '监督单位信息删除', null, 'user/userjddel.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('3525DE239ABD4838B9BBFF414007575F', '监督单位信息编辑', null, 'user/userjdedit.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('3A117DC8B8AA4D1A901EB5FF5DC42329', '系统参数配置', null, 'sysconfig/basicinfo.action', 'A3337CF0A3524E18A2154BD36A42C981', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('401C9D20AF51446FB7CA12599FD2B721', '供货商药品目录查询页面', null, 'ypml/gysypmlquery.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('40B7B26B791B48238333A6A19541F82B', '药品信息查询显示', null, 'ypml/ypxxmanager.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('41E0B99157B345A8AAB48BC8A311F5D6', '供货商药品目录查询结果集', null, 'ypml/gysypmlquery_result.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('4400226A6AEB473E84F93746A7AA3B13', '供货商药品目录添加查询结果集', null, 'ypml/gysypmladdquery_result.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('465B9A59556C4AA4AD6AF82359A6723D', '采购药品添加查询列表', null, 'cgd/yycgdmxadd_result.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('48F9622CFF79451C80EFD1108E7FCC57', '医院药品目录添加查询', null, 'ypml/yyypmladdquery.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('4A2F773CF7C547429662B45F36CB1041', '采购单创建页面', null, 'cgd/yycgdedit.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('4D961A7C6983498CBC28E750561ABC1F', '退货单修改页面', null, 'thd/yythdedit.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('4F5312E270DA43AE9E16C6A0A5EFA5CD', '退货单提交', null, 'thd/yythdsubmit.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '11', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('4F62BA5DF09F41E7BC23D6CEFFC7449E', '采购药品信息保存', null, 'cgd/yycgdmxsave.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '12', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('5001872103EA479494FF3F55ABA15FD1', '采购单提交', null, 'cgd/yycgdsubmit.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '11', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('50CCDA1F84C94A539A76C7846A990E08', '采购单受理查询结果集', null, 'cgd/yycgddispose_result.action', 'FD13C9EDAD50481F9F4C3D6C3CC9E28D', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('55F8F56A208749DF90A5974EBEC79D08', '模块操作管理', null, 'sysconfig/modulelist.action', '99B1C9FADE34488281443EE94FF64719', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('57E7F16B5F2641DCABFC74D9CA839339', '采购单信息采购药品信息', null, 'cgd/yycgdlist_cgdmxresult.action', '23680783880C44B5BCEC75B6C042D57C', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('59408C7AB0EB497C9D2F9E010433EA92', '医院药品目录维护查询结果集', null, 'ypml/yyypmlquery_result.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('59F5ECA5BE204C9E918609D921579DB7', '退货单信息保存', null, 'thd/yythdsave.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('5C4CDE42A515401DB73417DB01C3339D', '供应商信息保存', null, 'user/usergyssave.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('5E0F6CBBF0C0420C8FB2158EDB2D0B30', '角色管理', null, 'sysconfig/rolelist.action', 'C8EF4E9BF6B245A68C9B87BAA2CEFD74', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('61ECC8D2C03B45418112F6F9B001B9FC', '采购药品明细查询', null, 'cgd/yycgdedit_cgdmxresult.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('65949AF5409040569DBB25FCB6A31304', '药品信息删除', null, 'ypml/ypxxdel.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', '6', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('697D544A6C974EA8882C13ED4755DEFF', '采购单受理页面', null, 'cgd/yycgddispose.action', 'FD13C9EDAD50481F9F4C3D6C3CC9E28D', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('6AAD7C364A874C0D9C4CFBE53058ACD5', '采购单受理提交', null, 'cgd/yycgddispose_submit.action', 'FD13C9EDAD50481F9F4C3D6C3CC9E28D', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('6EF1567D7E6A47BB97B5808581BD2BB5', '医院信息查询结果', null, 'user/useryyquery_result.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('7037AE4FE3DF463D90EDCFA14011E14D', '区域列表', null, 'sysconfig/arealist.action', '2035CD3FA7D34FD58F69CD16CA86BCB1', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('71BFC77E64F340B38B33DF5CFAE034EE', '供货目录查询结果集', null, 'ypml/gysypmlquery_result.action', '4BCD34C8A6A3437A865469C985D63627', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('73089A68B14A471A8336FAEE5593B1EC', '系统用户信息删除', null, 'user/sysuserdel.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('735F5FEC17D54DE3A6E92E714599CE0C', '退货药品明细查询', null, 'thd/yythdedit_thdmxresult.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('739E8A3131FA42DC932B46AEA27BFA41', '药品信息导入', null, 'ypml/ypxximport.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('740A9F73F173414B8393AC1FB042DEBF', '监督单位查询结果', null, 'user/userjdquery_result.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('7D4707F40C8148778E2EB21540A02609', '医院药品目录添加药品', null, 'ypml/yyypmladd.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('7EF85F0492CF4F6182E8BE1D9BE9EB63', '采购单提交', null, 'cgd/yycgdsubmit.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '11', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('81EA639E5AA6489291851396F93C0BED', '退货信息保存', null, 'thd/yythdsave.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('89576E891326448E968069B85E98F2A9', '退货单创建页面', null, 'thd/yythdedit.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('8AF71BD2BAB34961B7E1115F7A6E6B42', '数据字典配置', null, 'sysconfig/dictmanager.action', 'ABA86FC23E1E4874994093E2C28D9105', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('8E8C68F6DFBF4AD2ADC7721931EA836F', '采购药品删除', null, 'cgd/yycgdmxdelete.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '7', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('8ECD01A8501048449A0B6E466560B472', '药品信息导出', null, 'ypml/ypxxexport.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('8F6865A50A0C4F638E8064F9DD07E69E', '采购单审核列表数据集', null, 'cgd/yycgdreview_result.action', '1555C29C58D543A0A1B5FB98396F0B99', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('90383C65C56341E591F4542DB6297946', '采购单入库查询结果集', null, 'cgd/yycgdrkquery_result.action', '5DEF0BD1E6414A899EE7FC0212637EAE', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('9104D1033B08492CBDDC686E405743AB', '采购单入库提交', null, 'cgd/yycgdrk_submit.action', '5DEF0BD1E6414A899EE7FC0212637EAE', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('950F747B8DFB46588494CAE581EA29D1', '采购单查询页面', null, 'cgd/yycgdlist.action', '23680783880C44B5BCEC75B6C042D57C', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('97F15BD695C04E869AFBA20D40E974FB', '医院药品目录删除药品', null, 'ypml/yyypmldelete.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', '6', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('982FB20F0A6744C7A681CBE9E8B39951', '系统用户查询结果', null, 'user/sysuserquery_result.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('9B14D30AA25E4446AD0D70A324C8A024', '退货药品删除', null, 'thd/yythdmxdelete.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '7', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('9CC6579157DA4DD5AE60C5F0AFA2C83A', '系统用户查询显示', null, 'user/sysuserquery.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('9CC9B54E697A4F23A5FB75474134F2FD', '药品信息查询结果', null, 'ypml/ypxxquery_result.action', 'ADF33CF8559E4F80A6403B270D49A52C', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('9CD7A694A6C247C296458C9AE3D2EAF0', '采购药品添加页面', null, 'cgd/yycgdmxadd.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('9F6371C8E8F04578B5773454C1145A8E', '采购单维护列表结果集', null, 'cgd/yycgdmanager_result.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '9', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('A0A14FCC357B4343997600A713B26800', '采购单信息保存', null, 'cgd/yycgdsave.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('A257547E0C674074A8A1272C8CE88BD3', '供货商药品目录添加提交', null, 'ypml/gysypmladd.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('A3CCEB5FD0B4496CB51229284CEAC1F6', '退货药品信息保存', null, 'thd/yythdmxsave.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '12', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('A3D376C5164C49928C4A14435B7C477F', '采购药品明细查询', null, 'cgd/yycgdedit_cgdmxresult.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('A3E051A78F1342A98B9BC711EC991F75', '退货药品添加查询列表', null, 'thd/yythdmxadd_result.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('A5AE3357D17B4BEAB89C4242BB65BFCC', '供应商信息编辑', null, 'user/usergysedit.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('A7AD7A3A1AD449958902D53C98701060', '医院信息删除', null, 'user/useryydel.action', '21119058662343958E4D2DFD797A2C0D', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('AC484F0BB6874B3E80459E389AD6101E', '供货商药品目录添加查询', null, 'ypml/gysypmladdquery.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('B04DB8E121F54BCD96332B89A2671F98', '退货单维护列表结果集', null, 'thd/yythdmanager_result.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '9', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('B197355F286B4C61A850E372D7A67101', '采购药品信息保存', null, 'cgd/yycgdmxsave.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '12', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('B5C9537B85B64CCCBA86FBC450EFFDBD', '退货单添加页面', null, 'thd/yythdadd.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '10', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('B632E122738E4BAC9871699D2ECD9944', '采购单查询结果集', null, 'cgd/yycgdlist_result.action', '23680783880C44B5BCEC75B6C042D57C', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('B8C30D5CF5DC457795DD882D023C7B86', '医院药品维护查询页面', null, 'ypml/yyypmlquery.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('BC10F83B3D734691BAA18F9248410815', '供应商查询显示', null, 'user/usergysquery.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('BCBF81C932534519B7873F0BDF57627D', '采购单信息保存', null, 'cgd/yycgdsave.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('BD8D902F09E74E00881922C5AE03CEEF', '采购单修改页面', null, 'cgd/yycgdedit.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('C0EBF32065474AE98C7F7CAC46F247D3', '药品信息查询结果', null, 'ypml/ypxxquery_result.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', '2', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('C2C71210BB4D4D45A7F1952369C42925', '供货目录目录查询', null, 'ypml/gysypmlcontrolquery.action', '4BCD34C8A6A3437A865469C985D63627', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('CB864D89562D47BC980F39472869B469', '监督单位查询显示', null, 'user/userjdquery.action', '68A8C6C5DCDE4C4C9C1F33326DC33533', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('CE202E1F99C342FD838E4D05BCDAFFBE', '药品目录查询', null, 'ypml/ypxxquery.action', 'ADF33CF8559E4F80A6403B270D49A52C', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('CF76021FC84E40CA8D5AFD359C6DF4EC', '退货药品添加提交', null, 'thd/yythdmxaddsubmit.action', '827309AD0F6B483C899B962BD25E6D42', 'image/class.gif', '6', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('D29D6E7F3AFA465B9454C7E8D029A438', '医院药品目录添加查询结果集', null, 'ypml/yyypmladdquery_result.action', '83F276069EEE46D88A9828F894D1338E', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('D557E2D6B7CE493BA92458324C30E81D', '采购药品添加查询列表', null, 'cgd/yycgdmxadd_result.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('D8B029F8323D43D5BB73822216E70075', '采购单审核提交', null, 'cgd/yycgdreviewsubmit.action', '1555C29C58D543A0A1B5FB98396F0B99', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('DA5DCF7B3B0D477E9F614F60635BC9EE', '供应商信息删除', null, 'user/usergysdel.action', 'A960E8CEF2794F3094FCC3D7E251EC79', 'image/class.gif', '5', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('DF62946CB2384244AF031090D0C4BD2B', '采购单审核页面', null, 'cgd/yycgdreview.action', '1555C29C58D543A0A1B5FB98396F0B99', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('E6CACE75A0534A8EBC9C8CD8D6A95B69', '采购单入库查询页面', null, 'cgd/yycgdrkquery.action', '5DEF0BD1E6414A899EE7FC0212637EAE', 'image/class.gif', '1', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('E76435BFCC594E9FAC38C34513A4AB5B', '退货药品添加提交', null, 'thd/yythdmxaddsubmit.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '6', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('E8ECCF61BF9441CD84C5AF6012D91D38', '药品信息修改', null, 'ypml/ypxxedit.action', '8D7A81697FCD4680A2B200C1FB355D5F', 'image/class.gif', '7', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('F2120F82FE15496C8FBD5680BBFFB83B', '采购单添加页面', null, 'cgd/yycgdadd.action', 'A515189189D7416CBD82FBF6A345F6B2', 'image/class.gif', '10', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('F44970965F2A48E1A741526B961C4667', '退货药品添加页面', null, 'thd/yythdmxadd.action', 'E6F1EED4BCA44B618C38838862B7BF98', 'image/class.gif', '4', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('F52A863928F14BAAAD7ACA0E6FBB5C24', '供货商药品目录删除药品', null, 'ypml/gysypmldelete.action', '47CBF626B3124EA08ABE86B49B89166A', 'image/class.gif', '6', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('F575C2308D4D4DAAA2C599D6D62D8F9B', '系统用户信息编辑', null, 'user/sysuseredit.action', '3072B118C1C54B02876B1A8252260765', 'image/class.gif', '3', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('FBE19E1B14E0401D8041205562FA94CC', '采购药品删除', null, 'cgd/yycgdmxdelete.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '7', null, null, null, null, null, null);
INSERT INTO `bss_sys_operate` VALUES ('FC826CDE8D61447CB93A275F08346C55', '采购单删除', null, 'cgd/yycgddelete.action', 'D9D57D7AF2D842089C03C987503F89A3', 'image/class.gif', '10', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_role`;
CREATE TABLE `bss_sys_role` (
  `ROLEID` varchar(32) NOT NULL,
  `ROLENAME` varchar(128) NOT NULL,
  `ROLEDES` varchar(200) DEFAULT NULL,
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_role
-- ----------------------------
INSERT INTO `bss_sys_role` VALUES ('511A6F41419949C38122A94310DADD14', '卫生室', null, null, null, null, null, null, null);
INSERT INTO `bss_sys_role` VALUES ('58A90BFF6BFF461790E2FF034252C91D', '卫生院', null, null, null, null, null, null, null);
INSERT INTO `bss_sys_role` VALUES ('A1657D9C6C7D47B59A99132A5ACE1A2E', '卫生局', null, null, null, null, null, null, null);
INSERT INTO `bss_sys_role` VALUES ('D20A980F6BF54E8093B71DF096341236', '系统管理员', null, null, null, null, null, null, null);
INSERT INTO `bss_sys_role` VALUES ('DD5E37F61B4D4D79BE84C3B8FCEDDAF0', '供应商', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_rolemodule
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_rolemodule`;
CREATE TABLE `bss_sys_rolemodule` (
  `RMID` varchar(32) NOT NULL,
  `RNID` varchar(32) NOT NULL,
  `MODULEID` varchar(32) NOT NULL,
  `VCHAR1` varchar(100) DEFAULT NULL,
  `VCHAR2` varchar(100) DEFAULT NULL,
  `VCHAR3` varchar(200) DEFAULT NULL,
  `VCHAR4` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_rolemodule
-- ----------------------------
INSERT INTO `bss_sys_rolemodule` VALUES ('0A965B0B7FF94B6FA4A622C723793712', 'F7BF0971EC1440B5A93418EEEC86EA27', 'E6F1EED4BCA44B618C38838862B7BF98', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('17B84C67DBCA4235810D87E63F9C1536', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', 'ADF33CF8559E4F80A6403B270D49A52C', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('17D6F85E666648A5A2359CC6AE969EC6', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '1555C29C58D543A0A1B5FB98396F0B99', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('18BB5C984C714EDD95DA6D3205BCB72E', 'F7BF0971EC1440B5A93418EEEC86EA27', '23680783880C44B5BCEC75B6C042D57C', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('2AFA6A94726C4455AE7846BFCF89A0A8', 'EC8097C300874B938CE540F8535A908D', '99B1C9FADE34488281443EE94FF64719', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('3030CE7CE5B641798A9D8C9627179A63', '972BE9D1415A4A09A522417FA6A8F26A', '68A8C6C5DCDE4C4C9C1F33326DC33533', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('342B1A0DCA6B4F76A67A1338F518AF28', '972BE9D1415A4A09A522417FA6A8F26A', '21119058662343958E4D2DFD797A2C0D', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('348DBD4DF74D4D78A3DA1C7F15A51303', 'EC8097C300874B938CE540F8535A908D', 'C8EF4E9BF6B245A68C9B87BAA2CEFD74', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('573A3DDB601C431DAF350EA59F7F3562', 'F7BF0971EC1440B5A93418EEEC86EA27', '827309AD0F6B483C899B962BD25E6D42', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('5831B1525B154C7EA4D3434D097DE4FF', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '289EC81D4EB943FBA46989DF42E674F3', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('59F315D6EC8046C08A1960CDD86029F0', '972BE9D1415A4A09A522417FA6A8F26A', '3C3080C4A6DA410FB2E050FD9EA135EF', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('5A3175834DE2495E8FE88E92EFA0A930', 'F7BF0971EC1440B5A93418EEEC86EA27', 'DD50B9E62C374A6D9095ACF907D9967D', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('62D8CB9DB06545C3B830F91EB6D4860D', 'EC8097C300874B938CE540F8535A908D', 'A3337CF0A3524E18A2154BD36A42C981', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('63C00AA55724477DBEF8DE36BD74A9F1', 'F7BF0971EC1440B5A93418EEEC86EA27', 'D9D57D7AF2D842089C03C987503F89A3', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('65C574DF885C4ED0828930E6D6885105', '00EC021A8D4B4E7F8D240DACB09D9F88', '3C3080C4A6DA410FB2E050FD9EA135EF', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('66F822BC4A824A0D92938D31E5B692EF', '972BE9D1415A4A09A522417FA6A8F26A', 'CE05693B089C4E7B9BEE4805F0DB126B', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('6726CD178B1F4261BDF061DE6DE5347C', '972BE9D1415A4A09A522417FA6A8F26A', '23680783880C44B5BCEC75B6C042D57C', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('679E8DDAC68A48D39B28C50F02DF846D', '972BE9D1415A4A09A522417FA6A8F26A', 'A960E8CEF2794F3094FCC3D7E251EC79', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('6D8C32D26455457996B04EDEEAD46EE4', 'F7BF0971EC1440B5A93418EEEC86EA27', '289EC81D4EB943FBA46989DF42E674F3', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('889B0AF13B194C11AA3336358220659D', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '3C3080C4A6DA410FB2E050FD9EA135EF', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('8BE21E2EEBAD4E078339BB159CA30460', '972BE9D1415A4A09A522417FA6A8F26A', 'ADF33CF8559E4F80A6403B270D49A52C', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('8CFE8501E6894E8FA23F06DB7DDBD326', 'EC8097C300874B938CE540F8535A908D', '2035CD3FA7D34FD58F69CD16CA86BCB1', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('91A53FAB52374942BB0A4A15420013CD', '972BE9D1415A4A09A522417FA6A8F26A', '289EC81D4EB943FBA46989DF42E674F3', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('9B3430FD2EFA4898BDB2396F797D43EF', '00EC021A8D4B4E7F8D240DACB09D9F88', '47CBF626B3124EA08ABE86B49B89166A', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('9D0A82164FD0470CB582EFD686F6A673', 'F7BF0971EC1440B5A93418EEEC86EA27', 'A515189189D7416CBD82FBF6A345F6B2', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('B14249F72CAB4B29BD8101C551F5741E', 'F7BF0971EC1440B5A93418EEEC86EA27', '5DEF0BD1E6414A899EE7FC0212637EAE', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('B86303144ACF4379AA8A1C91F4EF98C1', 'F7BF0971EC1440B5A93418EEEC86EA27', '3C3080C4A6DA410FB2E050FD9EA135EF', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('B98EFD0FE1214CFEBD73C7C9BB4F666F', 'F7BF0971EC1440B5A93418EEEC86EA27', '83F276069EEE46D88A9828F894D1338E', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('BA3DC9B797564D16B2E23D606EA60553', 'EC8097C300874B938CE540F8535A908D', 'ABA86FC23E1E4874994093E2C28D9105', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('BFAE3CD5FF084F54BF5ED455C1242428', '972BE9D1415A4A09A522417FA6A8F26A', '3072B118C1C54B02876B1A8252260765', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('C24923A99C2D41E7BAC90B93DB8AABE9', 'EC8097C300874B938CE540F8535A908D', 'F17E3A1C73BE4F8EA92A9D812555B05F', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('C8BB32E48F054B24B302938AFD4ADBF0', '972BE9D1415A4A09A522417FA6A8F26A', '8D7A81697FCD4680A2B200C1FB355D5F', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('D756517F7AC041A080E1AC2A0C1B7496', 'F7BF0971EC1440B5A93418EEEC86EA27', 'ADF33CF8559E4F80A6403B270D49A52C', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('F55616D36E1C4508A49769D08BB25956', '00EC021A8D4B4E7F8D240DACB09D9F88', 'FD13C9EDAD50481F9F4C3D6C3CC9E28D', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('F61ED32108CA4F09B02437DD3467E062', '00EC021A8D4B4E7F8D240DACB09D9F88', 'ADF33CF8559E4F80A6403B270D49A52C', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('F7601D1439214858907FE1791F57DC22', '972BE9D1415A4A09A522417FA6A8F26A', '4BCD34C8A6A3437A865469C985D63627', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('F84C600EBD564072BB12DD4B1AF7DA67', '04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '23680783880C44B5BCEC75B6C042D57C', null, null, null, null);
INSERT INTO `bss_sys_rolemodule` VALUES ('FB82596DE5734399A164805456C34513', '00EC021A8D4B4E7F8D240DACB09D9F88', '289EC81D4EB943FBA46989DF42E674F3', null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_rolenode
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_rolenode`;
CREATE TABLE `bss_sys_rolenode` (
  `RNID` varchar(32) NOT NULL,
  `RSID` varchar(32) NOT NULL,
  `NODEID` varchar(32) NOT NULL,
  `VCHAR1` varchar(100) DEFAULT NULL,
  `VCHAR2` varchar(100) DEFAULT NULL,
  `VCHAR3` varchar(200) DEFAULT NULL,
  `VCHAR4` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RNID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_rolenode
-- ----------------------------
INSERT INTO `bss_sys_rolenode` VALUES ('00EC021A8D4B4E7F8D240DACB09D9F88', '1BDB977EC6A24AD0ADFCA89805ACE343', '1', null, null, null, null);
INSERT INTO `bss_sys_rolenode` VALUES ('04ECA5D1B1FE4B0AB81EA0A17EDD2D21', '0FD907D8021D4EC8992F2E4FA3FFF670', '1', null, null, null, null);
INSERT INTO `bss_sys_rolenode` VALUES ('972BE9D1415A4A09A522417FA6A8F26A', 'BCB6282AB9B9402EA43B5943310B9454', '1', null, null, null, null);
INSERT INTO `bss_sys_rolenode` VALUES ('EC8097C300874B938CE540F8535A908D', '255D228323B04008821B21B80E4C27A2', '1', null, null, null, null);
INSERT INTO `bss_sys_rolenode` VALUES ('F7BF0971EC1440B5A93418EEEC86EA27', 'FEF4A9CC211B47BEAE79E81BEB39F6F9', '1', null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_roleoperate
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_roleoperate`;
CREATE TABLE `bss_sys_roleoperate` (
  `ROID` varchar(32) NOT NULL,
  `RMID` varchar(32) NOT NULL,
  `OPERATEID` varchar(32) NOT NULL,
  `VCHAR1` varchar(100) DEFAULT NULL,
  `VCHAR2` varchar(100) DEFAULT NULL,
  `VCHAR3` varchar(200) DEFAULT NULL,
  `VCHAR4` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ROID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_roleoperate
-- ----------------------------
INSERT INTO `bss_sys_roleoperate` VALUES ('00871A2AF1054F5FB2C666E7FC29B8FB', '18BB5C984C714EDD95DA6D3205BCB72E', '950F747B8DFB46588494CAE581EA29D1', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('023043D8C57A46B8A847D699E323AB75', 'C8BB32E48F054B24B302938AFD4ADBF0', '2B7A6A42A7BB41DEB0217E45C07FD7A0', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('02595B229ECB4E8AB81677BE329E2793', '18BB5C984C714EDD95DA6D3205BCB72E', 'B632E122738E4BAC9871699D2ECD9944', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('03E73405940E4D1C952567306E0B62D3', '342B1A0DCA6B4F76A67A1338F518AF28', '017A3CCB9F5C4B2AA716EEF99786972A', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('04635C626494465386B35E3DDB1F6BCF', '17D6F85E666648A5A2359CC6AE969EC6', 'DF62946CB2384244AF031090D0C4BD2B', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('04B2045211B04EF48788048762B350C1', 'F84C600EBD564072BB12DD4B1AF7DA67', '950F747B8DFB46588494CAE581EA29D1', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('05F2E9439E114A4B9E82F62A10FA3049', '573A3DDB601C431DAF350EA59F7F3562', 'CF76021FC84E40CA8D5AFD359C6DF4EC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('095450856ED7444D956DDC7A99710BD4', 'BA3DC9B797564D16B2E23D606EA60553', '8AF71BD2BAB34961B7E1115F7A6E6B42', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('0A425FD156824AD99C9C0A213C006B0D', '9B3430FD2EFA4898BDB2396F797D43EF', 'A257547E0C674074A8A1272C8CE88BD3', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('0A5C322F66D240B993E4CCE177748B0B', '0A965B0B7FF94B6FA4A622C723793712', 'E76435BFCC594E9FAC38C34513A4AB5B', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('0B529FA02ECC42D49B51B3B54A0BA9BD', 'F55616D36E1C4508A49769D08BB25956', '6AAD7C364A874C0D9C4CFBE53058ACD5', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('0C94BA19A64C46CD9D2F8420ECAAED95', '573A3DDB601C431DAF350EA59F7F3562', 'B04DB8E121F54BCD96332B89A2671F98', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('10B008461E9949609BE82F83B0C9D6BD', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', '97F15BD695C04E869AFBA20D40E974FB', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('115F196606B64368833A8A658D2C7F00', '17D6F85E666648A5A2359CC6AE969EC6', 'D8B029F8323D43D5BB73822216E70075', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('151E9BEB989A441BB72F9D828339E2C9', '573A3DDB601C431DAF350EA59F7F3562', '735F5FEC17D54DE3A6E92E714599CE0C', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('1574C79FC83B4C9CB6C835EDEF0FA4E7', '63C00AA55724477DBEF8DE36BD74A9F1', 'FBE19E1B14E0401D8041205562FA94CC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('1A458CE366684FF297BC9E2F339FCBDB', '6726CD178B1F4261BDF061DE6DE5347C', '57E7F16B5F2641DCABFC74D9CA839339', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('1A80E2A7933D4292B071935534D4BD47', '63C00AA55724477DBEF8DE36BD74A9F1', 'BCBF81C932534519B7873F0BDF57627D', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('1C26570E1C844ABAA1E07458F40F93A1', 'F55616D36E1C4508A49769D08BB25956', '50CCDA1F84C94A539A76C7846A990E08', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('1FF47ACD25EE44E38762109CBF76F88A', '3030CE7CE5B641798A9D8C9627179A63', '22E400771F624B418B2007B47B18E22B', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('25DDCBA1BCBF4A08AB1BAA7603BC1A86', '573A3DDB601C431DAF350EA59F7F3562', '0BF1067911534A40B20701034B43F133', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('27323204F12C4E5D964A14AF9DF85227', 'F55616D36E1C4508A49769D08BB25956', '697D544A6C974EA8882C13ED4755DEFF', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('2C10FA7689FF48D09EDE2A700D9E3EDF', 'F84C600EBD564072BB12DD4B1AF7DA67', '13C4C7C68B314AECA4B18D03757C9D83', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('2E01BAD8C2494DD4AC1D2C839ECE8433', 'B14249F72CAB4B29BD8101C551F5741E', 'E6CACE75A0534A8EBC9C8CD8D6A95B69', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('350B4BB3B72446299F0466E5153B9DC4', '63C00AA55724477DBEF8DE36BD74A9F1', 'FC826CDE8D61447CB93A275F08346C55', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('38948847EAA24C88AE42F763792FCF06', '573A3DDB601C431DAF350EA59F7F3562', '89576E891326448E968069B85E98F2A9', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('3C66B66DF66C46CE97BAAA621D618F17', 'F61ED32108CA4F09B02437DD3467E062', 'CE202E1F99C342FD838E4D05BCDAFFBE', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('3E72AB0CB49147A3AB19EEA592F6FB4A', '3030CE7CE5B641798A9D8C9627179A63', '33DF45BC52124A97B9EDEAB3E0F22FDC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('42E6BD98347F4E00831BA8E6C6E3FC71', '9D0A82164FD0470CB582EFD686F6A673', 'A3D376C5164C49928C4A14435B7C477F', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('45E3E81560D74DA0803B400A71BDDA2E', 'C8BB32E48F054B24B302938AFD4ADBF0', '02DDC4B1AF7D4E318C8BBDB722990CB0', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('48457E8061CC4306AB31FB56A1BF0A99', '573A3DDB601C431DAF350EA59F7F3562', 'A3CCEB5FD0B4496CB51229284CEAC1F6', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('492501DE8DAE4AB58BF0B5E9EB96A0AB', '6726CD178B1F4261BDF061DE6DE5347C', 'B632E122738E4BAC9871699D2ECD9944', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('4C055FD2C4B342228E1DF66FCC6F87D8', '6726CD178B1F4261BDF061DE6DE5347C', '950F747B8DFB46588494CAE581EA29D1', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('4E31822ED994459A947EA559697F2CAD', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', '59408C7AB0EB497C9D2F9E010433EA92', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('4E9ED7952FCC49F789788B4AC459CB14', 'F61ED32108CA4F09B02437DD3467E062', '16201FA4BCB14180B4D453A9D2923254', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('4FCD85EEE69242C1A36C61A38DE5D804', 'F7601D1439214858907FE1791F57DC22', '0B98189F25FA48078F924CC273A38466', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('512D3EC379E04E5AA15255D4692A6ADD', '9D0A82164FD0470CB582EFD686F6A673', 'BD8D902F09E74E00881922C5AE03CEEF', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('5226E260A48D43C587BC0236A332E322', '573A3DDB601C431DAF350EA59F7F3562', '59F5ECA5BE204C9E918609D921579DB7', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('53785A7163154B5FA6724916E4ACE36E', '17D6F85E666648A5A2359CC6AE969EC6', '8F6865A50A0C4F638E8064F9DD07E69E', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('57A4627FEC2941B3BAFD14C32ECD472A', '63C00AA55724477DBEF8DE36BD74A9F1', '4A2F773CF7C547429662B45F36CB1041', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('57FDF3E06266480E93537CFEEA10EDCD', 'F84C600EBD564072BB12DD4B1AF7DA67', '57E7F16B5F2641DCABFC74D9CA839339', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('583D5B147B6C4DBBB626CE8B8038DACC', '0A965B0B7FF94B6FA4A622C723793712', '31EBAA2FFF0D4510B7CC1DC7E5A039B3', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('5B679FD5692246CC80A718052864E315', 'F7601D1439214858907FE1791F57DC22', '71BFC77E64F340B38B33DF5CFAE034EE', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('60836E6CCDAF407F9D75718FDFD3E99B', 'F7601D1439214858907FE1791F57DC22', 'C2C71210BB4D4D45A7F1952369C42925', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('64222F1C78A646C69C451C4A1F5B89D2', '0A965B0B7FF94B6FA4A622C723793712', '21A77A7E78E1407FAC5D007BDFBD0CBC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('65B023E8202A4B88B34F45E7F17254AB', '8BE21E2EEBAD4E078339BB159CA30460', '9CC9B54E697A4F23A5FB75474134F2FD', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('661D030A5BD8433D9FB84C904915895C', '18BB5C984C714EDD95DA6D3205BCB72E', '57E7F16B5F2641DCABFC74D9CA839339', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('68114792B55E473DADC5CB3C8BAEA5F1', '9D0A82164FD0470CB582EFD686F6A673', '8E8C68F6DFBF4AD2ADC7721931EA836F', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('685527B382E94966955FFEB3B8815166', 'BFAE3CD5FF084F54BF5ED455C1242428', '73089A68B14A471A8336FAEE5593B1EC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('68FE2352170E49A485DDCF079AEA8965', '63C00AA55724477DBEF8DE36BD74A9F1', '61ECC8D2C03B45418112F6F9B001B9FC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('695FE5C4EE1A4A97B534CE794672ACCE', '9B3430FD2EFA4898BDB2396F797D43EF', '401C9D20AF51446FB7CA12599FD2B721', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('7431FD048E7A4F069A4534F1E2BDE599', '342B1A0DCA6B4F76A67A1338F518AF28', 'A7AD7A3A1AD449958902D53C98701060', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('7536FADEEFA44D3C8B2BF4825F1E6DF8', '573A3DDB601C431DAF350EA59F7F3562', '0ED046E492AE4AAA873395C1952EE73D', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('765B6561D3D045F3B1AC93ADFAD94786', '679E8DDAC68A48D39B28C50F02DF846D', '5C4CDE42A515401DB73417DB01C3339D', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('7B7799842FEC448FAC95F9ADE7B0C9D6', '679E8DDAC68A48D39B28C50F02DF846D', 'DA5DCF7B3B0D477E9F614F60635BC9EE', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('7C0682255858404F96F18E12EE9D9405', '17B84C67DBCA4235810D87E63F9C1536', 'CE202E1F99C342FD838E4D05BCDAFFBE', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('7C0CC3AD511C4B958824A90DA3D59F12', '62D8CB9DB06545C3B830F91EB6D4860D', '3A117DC8B8AA4D1A901EB5FF5DC42329', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('7CAABA1B7952480D9567890F59B8D3C1', 'C8BB32E48F054B24B302938AFD4ADBF0', 'C0EBF32065474AE98C7F7CAC46F247D3', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('7FA0819B8EEB46EE876BB6073EB36E74', '0A965B0B7FF94B6FA4A622C723793712', '4D961A7C6983498CBC28E750561ABC1F', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('817A15D3E014499F85E8266BEB91F3B5', '9D0A82164FD0470CB582EFD686F6A673', '3165EF94AB3640FF9CF56491DF6556AC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('83586AE2A7354D4E8C7C54A645DFBDE7', 'D756517F7AC041A080E1AC2A0C1B7496', 'CE202E1F99C342FD838E4D05BCDAFFBE', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('84EA35B65DCC4F6E9B9C17D27241B33D', '573A3DDB601C431DAF350EA59F7F3562', '1C571D68DFDF42CDAB1E98F3AD3AB8D7', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('860779D17AC945F0A402DCA2204805B7', '6726CD178B1F4261BDF061DE6DE5347C', '13C4C7C68B314AECA4B18D03757C9D83', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('88A29DF2E4594C998A47FEB585599E29', '9D0A82164FD0470CB582EFD686F6A673', '465B9A59556C4AA4AD6AF82359A6723D', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('88DC181785AC468D982FA8F85699FA7F', 'BFAE3CD5FF084F54BF5ED455C1242428', 'F575C2308D4D4DAAA2C599D6D62D8F9B', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('8984CCDC85E54ECAA4023AA1BC47F1EC', '8CFE8501E6894E8FA23F06DB7DDBD326', '7037AE4FE3DF463D90EDCFA14011E14D', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('89DA81BD1F1E4397B37C7E3E0A14D76D', '679E8DDAC68A48D39B28C50F02DF846D', '2051E5FBB6634FEBBBFAAFB055C959F0', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('8ABABAB6955C448DAF12D027F45CEE1F', '573A3DDB601C431DAF350EA59F7F3562', 'A3E051A78F1342A98B9BC711EC991F75', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('8B864CE2D2D5460BA7CDB01CBE0B9B20', '342B1A0DCA6B4F76A67A1338F518AF28', '6EF1567D7E6A47BB97B5808581BD2BB5', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('8C5B5B87320C4F0C91487E5F5F4A31D4', 'F61ED32108CA4F09B02437DD3467E062', '9CC9B54E697A4F23A5FB75474134F2FD', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('8D7868EDBE0B41D7A2B4230B0428141C', '9B3430FD2EFA4898BDB2396F797D43EF', 'AC484F0BB6874B3E80459E389AD6101E', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('91E7AEBC87D64F77BC624C2118DF7C38', 'D756517F7AC041A080E1AC2A0C1B7496', '9CC9B54E697A4F23A5FB75474134F2FD', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('92D4408F60814CE6AB024973E53EB49B', 'B14249F72CAB4B29BD8101C551F5741E', '9104D1033B08492CBDDC686E405743AB', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('97204EFC1D7C41DD9BF8D3A87FBBF0A3', '573A3DDB601C431DAF350EA59F7F3562', '2E77D3CA9F644ADCB0EE1E649C90309C', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('972ACF7FB7C045BBACD2E3DF46FE0EE7', '9D0A82164FD0470CB582EFD686F6A673', 'B197355F286B4C61A850E372D7A67101', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('98CFF767795D49B6B094B4224A4C3F59', '679E8DDAC68A48D39B28C50F02DF846D', 'A5AE3357D17B4BEAB89C4242BB65BFCC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('98D42C1784BF4F9FB8797D56D7AA5E1A', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', 'B8C30D5CF5DC457795DD882D023C7B86', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('99CBBBB1671C40E5B99FDA9F9370ADC5', '0A965B0B7FF94B6FA4A622C723793712', '4F5312E270DA43AE9E16C6A0A5EFA5CD', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('9C1786D5778B483C86929218EBB2B337', '63C00AA55724477DBEF8DE36BD74A9F1', '2B6082CAB6654CC99F7CBD4C00A5E423', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('9FA7DFAE12CE4957B38393200B255C1B', '9D0A82164FD0470CB582EFD686F6A673', '2608A43FF97E4C68AA9E2B22B812F0C1', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('A22BBBEFCD8246E0AE6DE3D2EA0ADFEA', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', '7D4707F40C8148778E2EB21540A02609', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('A6F90045E7B44E7CADF6FB4816859DA0', '9B3430FD2EFA4898BDB2396F797D43EF', '41E0B99157B345A8AAB48BC8A311F5D6', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('A9B2A268C6194E7A856A1891BC2AFFDA', '3030CE7CE5B641798A9D8C9627179A63', '740A9F73F173414B8393AC1FB042DEBF', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('AA7D4E00F93C4CD2BAEF4E70EDC11B6E', '348DBD4DF74D4D78A3DA1C7F15A51303', '5E0F6CBBF0C0420C8FB2158EDB2D0B30', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('AE7D55825A2D4B288E37A46545C5D23E', '342B1A0DCA6B4F76A67A1338F518AF28', '0CBA138A6F254129B3875637CF3BEFA6', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('B1102F150B354DC28859E7EB73913187', 'F84C600EBD564072BB12DD4B1AF7DA67', 'B632E122738E4BAC9871699D2ECD9944', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('B1A99BB592D54090B72191EB413DD6BA', '63C00AA55724477DBEF8DE36BD74A9F1', '9CD7A694A6C247C296458C9AE3D2EAF0', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('B6D9CB676FCD469283881BA5A62C1BF7', '63C00AA55724477DBEF8DE36BD74A9F1', '4F62BA5DF09F41E7BC23D6CEFFC7449E', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('B74688BE872E49878E1CA99748C45606', '63C00AA55724477DBEF8DE36BD74A9F1', '9F6371C8E8F04578B5773454C1145A8E', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('B7E9DF19081F43DE90B7299D246AED57', 'BFAE3CD5FF084F54BF5ED455C1242428', '9CC6579157DA4DD5AE60C5F0AFA2C83A', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('B8C747C82AFE48A8B0906291D725BE11', '0A965B0B7FF94B6FA4A622C723793712', '095BB5715AFD490797FBF9AA84DD6B44', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('BA1D266586C34AAD8BD9BBA58688D0E1', '573A3DDB601C431DAF350EA59F7F3562', '9B14D30AA25E4446AD0D70A324C8A024', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('BAFAD9410010469FA1B80AB6DC74B973', '63C00AA55724477DBEF8DE36BD74A9F1', '03BBBFC85A184B44A76E801665AB1E4F', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('BC096225408B47E7836A8FEA6C1287C3', '17B84C67DBCA4235810D87E63F9C1536', '9CC9B54E697A4F23A5FB75474134F2FD', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('BD088571F3B649B6B5093C6F111812F4', 'BFAE3CD5FF084F54BF5ED455C1242428', '982FB20F0A6744C7A681CBE9E8B39951', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('C12B6D5F4D854BE083AF9A7AB5EDD64F', 'C8BB32E48F054B24B302938AFD4ADBF0', '8ECD01A8501048449A0B6E466560B472', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('C24504068C394C74820EB9D33446B2EB', '0A965B0B7FF94B6FA4A622C723793712', 'F44970965F2A48E1A741526B961C4667', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('C25AD77FC40A4438A625A0FF556C163B', '9D0A82164FD0470CB582EFD686F6A673', 'A0A14FCC357B4343997600A713B26800', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('C8F2138C858C44828BF6753A0D72B4E7', '8BE21E2EEBAD4E078339BB159CA30460', 'CE202E1F99C342FD838E4D05BCDAFFBE', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('CC42E1A0123D468782D24F044F0A3619', 'C8BB32E48F054B24B302938AFD4ADBF0', 'E8ECCF61BF9441CD84C5AF6012D91D38', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('CE7D4AC49B7F4348A35A7C3777E63FBA', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', '48F9622CFF79451C80EFD1108E7FCC57', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('CF220944BE714D78B751EB79CBE7C85D', '0A965B0B7FF94B6FA4A622C723793712', '02803DEC12EA47A1A53F6D6D69D6962B', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('D146741C9C574D6D9817C94D0E60954E', '0A965B0B7FF94B6FA4A622C723793712', 'B5C9537B85B64CCCBA86FBC450EFFDBD', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('D18B093F33A04C8BA52F946B562B7576', '9D0A82164FD0470CB582EFD686F6A673', '5001872103EA479494FF3F55ABA15FD1', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('D2D048E17EA34515871DE890F39350A3', '342B1A0DCA6B4F76A67A1338F518AF28', '29E8145A6A0E4729B916D2B06D7D88FC', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('D434F28D5B644A6398730B4CCC0E982B', '17B84C67DBCA4235810D87E63F9C1536', '16201FA4BCB14180B4D453A9D2923254', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('D45EFD28E9A347D48835725F56831524', '9D0A82164FD0470CB582EFD686F6A673', 'F2120F82FE15496C8FBD5680BBFFB83B', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('D4F27B0B928A45F2B9511CD0BC3C1E99', 'C8BB32E48F054B24B302938AFD4ADBF0', '65949AF5409040569DBB25FCB6A31304', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('D844E5FA67F84E3581354F631A571C15', 'C8BB32E48F054B24B302938AFD4ADBF0', '739E8A3131FA42DC932B46AEA27BFA41', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('D9475055A44F478EA1FF6C801A70E9AA', 'B98EFD0FE1214CFEBD73C7C9BB4F666F', 'D29D6E7F3AFA465B9454C7E8D029A438', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('DCB237AE7E7646128ED4536A6CD93AA5', 'C8BB32E48F054B24B302938AFD4ADBF0', '40B7B26B791B48238333A6A19541F82B', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('DE2A3BF4583A4752801FF392CDBAB313', '9B3430FD2EFA4898BDB2396F797D43EF', 'F52A863928F14BAAAD7ACA0E6FBB5C24', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('DE3825B0A5944F8AB22DA6F87ED00A87', '63C00AA55724477DBEF8DE36BD74A9F1', 'D557E2D6B7CE493BA92458324C30E81D', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('DF9935333CE1413A82B03D18B3192D9B', '3030CE7CE5B641798A9D8C9627179A63', '3525DE239ABD4838B9BBFF414007575F', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('DFE1399653A94468BED083DF1121A459', '18BB5C984C714EDD95DA6D3205BCB72E', '13C4C7C68B314AECA4B18D03757C9D83', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('E1F68CF6BC864934A1566AB9ACF0E869', 'BFAE3CD5FF084F54BF5ED455C1242428', '186597EAF3C4425AB5763ABED69B5CB9', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('E284C2041A114158A6040976D073C4DC', '8BE21E2EEBAD4E078339BB159CA30460', '16201FA4BCB14180B4D453A9D2923254', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('E97809BD41CA4A17A5B79474AA0571A2', '679E8DDAC68A48D39B28C50F02DF846D', 'BC10F83B3D734691BAA18F9248410815', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('EF5193D521694B8B8787C50446ECAC7E', 'D756517F7AC041A080E1AC2A0C1B7496', '16201FA4BCB14180B4D453A9D2923254', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('EFAC84A2A77B4910B399619F9F13F442', '9B3430FD2EFA4898BDB2396F797D43EF', '4400226A6AEB473E84F93746A7AA3B13', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('F54453C884194A29B938A1FEBBFA0608', '0A965B0B7FF94B6FA4A622C723793712', '81EA639E5AA6489291851396F93C0BED', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('F65BF7C3C05F4498AE2F43A6F482E1BA', '63C00AA55724477DBEF8DE36BD74A9F1', '7EF85F0492CF4F6182E8BE1D9BE9EB63', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('F8C102BD8D4E43D5B7030A249E13D289', 'B14249F72CAB4B29BD8101C551F5741E', '90383C65C56341E591F4542DB6297946', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('FBBEB1D6A34647F4BFD10013597D15AF', '3030CE7CE5B641798A9D8C9627179A63', 'CB864D89562D47BC980F39472869B469', null, null, null, null);
INSERT INTO `bss_sys_roleoperate` VALUES ('FC0C67FFA76E4E86B49A35B6EE8D8306', '2AFA6A94726C4455AE7846BFCF89A0A8', '55F8F56A208749DF90A5974EBEC79D08', null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_rolesys
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_rolesys`;
CREATE TABLE `bss_sys_rolesys` (
  `RSID` varchar(32) NOT NULL,
  `ROLEID` varchar(32) NOT NULL,
  `SYSID` varchar(32) NOT NULL,
  `VCHAR1` varchar(100) DEFAULT NULL,
  `VCHAR2` varchar(100) DEFAULT NULL,
  `VCHAR3` varchar(200) DEFAULT NULL,
  `VCHAR4` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_rolesys
-- ----------------------------
INSERT INTO `bss_sys_rolesys` VALUES ('0FD907D8021D4EC8992F2E4FA3FFF670', '58A90BFF6BFF461790E2FF034252C91D', '2', null, null, null, null);
INSERT INTO `bss_sys_rolesys` VALUES ('1BDB977EC6A24AD0ADFCA89805ACE343', 'DD5E37F61B4D4D79BE84C3B8FCEDDAF0', '2', null, null, null, null);
INSERT INTO `bss_sys_rolesys` VALUES ('255D228323B04008821B21B80E4C27A2', 'D20A980F6BF54E8093B71DF096341236', '2', null, null, null, null);
INSERT INTO `bss_sys_rolesys` VALUES ('BCB6282AB9B9402EA43B5943310B9454', 'A1657D9C6C7D47B59A99132A5ACE1A2E', '2', null, null, null, null);
INSERT INTO `bss_sys_rolesys` VALUES ('FEF4A9CC211B47BEAE79E81BEB39F6F9', '511A6F41419949C38122A94310DADD14', '2', null, null, null, null);

-- ----------------------------
-- Table structure for bss_sys_system
-- ----------------------------
DROP TABLE IF EXISTS `bss_sys_system`;
CREATE TABLE `bss_sys_system` (
  `SYSID` varchar(32) NOT NULL,
  `SYSNAME` varchar(64) NOT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `ICON` varchar(500) NOT NULL,
  `SHOWORDER` decimal(8,0) DEFAULT NULL,
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`SYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bss_sys_system
-- ----------------------------
INSERT INTO `bss_sys_system` VALUES ('2', '药品集中采购平台', null, '1', '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for dictinfo
-- ----------------------------
DROP TABLE IF EXISTS `dictinfo`;
CREATE TABLE `dictinfo` (
  `ID` varchar(32) NOT NULL,
  `DICTCODE` varchar(32) DEFAULT NULL COMMENT '字典代码',
  `TYPECODE` varchar(32) NOT NULL COMMENT '字典类型代码',
  `INFO` varchar(64) NOT NULL COMMENT '字典信息',
  `REMARK` varchar(256) DEFAULT NULL COMMENT '备注',
  `UPDATETIME` varchar(16) DEFAULT NULL COMMENT '修改时间',
  `DICTSORT` int(11) DEFAULT NULL COMMENT '排序',
  `ISENABLE` varchar(1) NOT NULL DEFAULT '1' COMMENT '是否启用。1启用；0停用',
  `VALUETYPE` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dictinfo
-- ----------------------------
INSERT INTO `dictinfo` VALUES ('00101', null, '001', '营养治疗药', null, null, '2', '1', null);
INSERT INTO `dictinfo` VALUES ('00102', null, '001', '妇科用药', null, null, '5', '1', null);
INSERT INTO `dictinfo` VALUES ('00103', null, '001', '生物制品', null, null, '3', '1', null);
INSERT INTO `dictinfo` VALUES ('00201', '1', '002', '正常', null, null, '1', '1', null);
INSERT INTO `dictinfo` VALUES ('00202', '2', '002', '取消', null, null, '2', '1', null);
INSERT INTO `dictinfo` VALUES ('00301', '1', '003', '正常', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('00302', '2', '003', '暂停交易', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('00401', null, '004', '国家一类新药', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('00402', null, '004', '国家科学进步奖', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('00403', null, '004', '专利', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('00501', null, '005', '一级', null, null, '1', '1', null);
INSERT INTO `dictinfo` VALUES ('00502', null, '005', '二级', null, null, '2', '1', null);
INSERT INTO `dictinfo` VALUES ('00601', null, '006', '市级医院', null, null, '2', '1', null);
INSERT INTO `dictinfo` VALUES ('00602', null, '006', '省级医院', null, null, '1', '1', null);
INSERT INTO `dictinfo` VALUES ('00701', null, '007', '生产企业', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('00702', null, '007', '经营企业', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('00801', '1', '008', '正常', null, null, '1', '1', null);
INSERT INTO `dictinfo` VALUES ('00802', '2', '008', '暂停', null, null, '1', '1', null);
INSERT INTO `dictinfo` VALUES ('01001', '1', '010', '未提交', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01002', '2', '010', '审核中', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01003', '3', '010', '审核通过', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01004', '4', '010', '审核不通过', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01101', '1', '011', '未确认送货', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01102', '2', '011', '已发货', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01103', '3', '011', '已入库', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01104', '4', '011', '无法供货', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01201', '1', '012', '未提交', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01202', '2', '012', '已提交至供货商', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01301', '1', '013', '未确认退货', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01302', '2', '013', '已确认退货', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01401', '1', '014', '未提交', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01402', '2', '014', '已提交至供货商', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01501', '1', '015', '未确认结算', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('01502', '2', '015', '已确认结算', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('03201', '1', '032', '药品品目号', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('03202', '2', '032', '药品信息流水号', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('03203', '3', '032', '采购单流水号', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('03204', '4', '032', '退货单流水号', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('03205', '5', '032', '结算单流水号', null, null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('108e0ad24de54bf28d3cf02065de508c', null, '001', '调节免疫功能药', null, null, '6', '1', null);
INSERT INTO `dictinfo` VALUES ('24e71cf02bb64d9d9e217f725e244afa', null, '001', '循环系统药物', null, null, '7', '1', null);
INSERT INTO `dictinfo` VALUES ('2bfd9aef0f5e4086b21c5da54b0fb001', null, '001', '内科用药', null, null, '8', '1', null);
INSERT INTO `dictinfo` VALUES ('4bd5ee426958442b940472accdb2aad3', null, '001', '其它', null, null, '16', '1', null);
INSERT INTO `dictinfo` VALUES ('58c36e2056714d87b19fe5ae8dbe3e77', null, '005', '三级', null, null, '3', '1', null);
INSERT INTO `dictinfo` VALUES ('5933d4269a734ed190ee383521b4965a', null, '001', '呼吸系统药物', null, null, '12', '1', null);
INSERT INTO `dictinfo` VALUES ('5dc58f16c10f443fa0c06ad40b522920', null, '001', '外科用药', null, null, '14', '1', null);
INSERT INTO `dictinfo` VALUES ('8e3f5978272d4694af52d85953a21d7c', null, '001', '泌尿系统药物', null, null, '4', '1', null);
INSERT INTO `dictinfo` VALUES ('a455fd65b3ff4433896dc9bac5384524', null, '001', '骨伤科用药', null, null, '9', '1', null);
INSERT INTO `dictinfo` VALUES ('b01a9327303e402393682fd99fba746a', null, '001', '耳鼻喉科用药', null, null, '15', '1', null);
INSERT INTO `dictinfo` VALUES ('c139e689963e43efbad4b667f3ede122', null, '001', '镇痛药', null, null, '10', '1', null);
INSERT INTO `dictinfo` VALUES ('e020a2b15dd94bcca4c854b1272c3f29', null, '001', '调节水、电解质及酸碱平衡药物', null, null, '13', '1', null);
INSERT INTO `dictinfo` VALUES ('e899156b4a0a4a09b813ff031459dad5', null, '001', '肿瘤用药', null, null, '11', '1', null);
INSERT INTO `dictinfo` VALUES ('s0100', '0', 's01', '系统管理员', 'D20A980F6BF54E8093B71DF096341236', null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('s0101', '1', 's01', '卫生局', 'A1657D9C6C7D47B59A99132A5ACE1A2E', null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('s0102', '2', 's01', '卫生院', '58A90BFF6BFF461790E2FF034252C91D', null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('s0103', '3', 's01', '卫生室', '511A6F41419949C38122A94310DADD14', null, null, '1', null);
INSERT INTO `dictinfo` VALUES ('s0104', '4', 's01', '供货商', 'DD5E37F61B4D4D79BE84C3B8FCEDDAF0', null, null, '1', null);

-- ----------------------------
-- Table structure for dicttype
-- ----------------------------
DROP TABLE IF EXISTS `dicttype`;
CREATE TABLE `dicttype` (
  `TYPECODE` varchar(32) NOT NULL COMMENT '字典类型代码',
  `TYPENAME` varchar(64) NOT NULL COMMENT '字典类型名称',
  `REMARK` varchar(256) DEFAULT NULL COMMENT '备注',
  `TYPESORT` int(11) DEFAULT NULL COMMENT '排序',
  `CODELENGTH` varchar(32) DEFAULT NULL COMMENT 'dictcode的字符长度',
  PRIMARY KEY (`TYPECODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dicttype
-- ----------------------------
INSERT INTO `dicttype` VALUES ('001', '药品类别', null, null, null);
INSERT INTO `dicttype` VALUES ('002', '药品状态', null, null, null);
INSERT INTO `dicttype` VALUES ('003', '药品交易状态', null, null, null);
INSERT INTO `dicttype` VALUES ('004', '药品质量导次', null, null, null);
INSERT INTO `dicttype` VALUES ('005', '医院级别', null, null, null);
INSERT INTO `dicttype` VALUES ('006', '医院类型', null, null, null);
INSERT INTO `dicttype` VALUES ('007', '企业类别', null, null, null);
INSERT INTO `dicttype` VALUES ('008', '供货状态', null, null, null);
INSERT INTO `dicttype` VALUES ('010', '采购单状态', null, null, null);
INSERT INTO `dicttype` VALUES ('011', '采购状态', null, null, null);
INSERT INTO `dicttype` VALUES ('012', '退货单状态', null, null, null);
INSERT INTO `dicttype` VALUES ('013', '退货状态', null, null, null);
INSERT INTO `dicttype` VALUES ('014', '结算单状态', null, null, null);
INSERT INTO `dicttype` VALUES ('015', '结算状态', null, null, null);
INSERT INTO `dicttype` VALUES ('032', '生成代码类型', null, null, null);
INSERT INTO `dicttype` VALUES ('s01', '用户类型', null, null, null);

-- ----------------------------
-- Table structure for error_task_backup
-- ----------------------------
DROP TABLE IF EXISTS `error_task_backup`;
CREATE TABLE `error_task_backup` (
  `TASKID` varchar(32) DEFAULT NULL,
  `WSURL` varchar(400) DEFAULT NULL,
  `WSMETHOD` varchar(100) DEFAULT NULL,
  `WSNAMESPACE` varchar(300) DEFAULT NULL,
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of error_task_backup
-- ----------------------------

-- ----------------------------
-- Table structure for gysypml
-- ----------------------------
DROP TABLE IF EXISTS `gysypml`;
CREATE TABLE `gysypml` (
  `ID` varchar(32) NOT NULL,
  `YPXXID` varchar(32) NOT NULL COMMENT '药品信息id',
  `USERGYSID` varchar(64) NOT NULL COMMENT '供应商id',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_GYSYPML` (`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商药品目录';

-- ----------------------------
-- Records of gysypml
-- ----------------------------

-- ----------------------------
-- Table structure for gysypml_control
-- ----------------------------
DROP TABLE IF EXISTS `gysypml_control`;
CREATE TABLE `gysypml_control` (
  `ID` varchar(32) NOT NULL,
  `YPXXID` varchar(32) NOT NULL COMMENT '药品信息id',
  `USERGYSID` varchar(64) NOT NULL COMMENT '供应商id',
  `CONTROL` char(1) NOT NULL COMMENT '监督机构控制状态(1：正常 ,2：暂停)',
  `ADVICE` varchar(128) DEFAULT NULL COMMENT '监督机构意见',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_GYSYPMLCONTROL` (`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商药品目录控制表';

-- ----------------------------
-- Records of gysypml_control
-- ----------------------------

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog` (
  `ID` varchar(64) NOT NULL,
  `USERID` varchar(32) DEFAULT NULL COMMENT '用户账号',
  `OPERATEDATE` datetime DEFAULT NULL COMMENT '操作时间',
  `USERIP` varchar(20) DEFAULT NULL COMMENT '用户ip',
  `USERNAME` varchar(64) DEFAULT NULL COMMENT '用户名称',
  `LOGTYPE` char(1) DEFAULT NULL COMMENT '日志类型1:操作成功日志，2：操作失败日志',
  `MESSAGES` varchar(200) DEFAULT NULL COMMENT '日志明细',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作日志表';

-- ----------------------------
-- Records of syslog
-- ----------------------------

-- ----------------------------
-- Table structure for sysmodule
-- ----------------------------
DROP TABLE IF EXISTS `sysmodule`;
CREATE TABLE `sysmodule` (
  `MODULEID` varchar(32) NOT NULL COMMENT '模块id',
  `MODULENAME` varchar(64) NOT NULL COMMENT '模块名称',
  `PARENTID` varchar(32) NOT NULL COMMENT '父模块id',
  `URL` varchar(200) DEFAULT NULL COMMENT '模块url即访问地址',
  `ICON` varchar(128) DEFAULT NULL COMMENT '模块图标',
  `SHOWORDER` decimal(8,0) NOT NULL COMMENT '显示顺序，用于菜单排列顺序',
  `ISUSED` char(1) NOT NULL COMMENT '状态标记： 1:使用， 2：暂不使用',
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MODULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysmodule
-- ----------------------------

-- ----------------------------
-- Table structure for sysoperation
-- ----------------------------
DROP TABLE IF EXISTS `sysoperation`;
CREATE TABLE `sysoperation` (
  `OPERATEID` varchar(32) NOT NULL COMMENT '操作id',
  `OPERATENAME` varchar(64) NOT NULL COMMENT '操作名称',
  `URL` varchar(200) DEFAULT NULL COMMENT '访问地址',
  `MODULEID` varchar(32) DEFAULT NULL COMMENT '所属模块id',
  `ICON` varchar(128) DEFAULT NULL COMMENT '图标',
  `SHOWORDER` decimal(8,0) NOT NULL COMMENT '显示顺序',
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `VCHAR6` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`OPERATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统模块操作表';

-- ----------------------------
-- Records of sysoperation
-- ----------------------------

-- ----------------------------
-- Table structure for sysrole
-- ----------------------------
DROP TABLE IF EXISTS `sysrole`;
CREATE TABLE `sysrole` (
  `ID` varchar(32) NOT NULL COMMENT '角色id',
  `ROLENAME` varchar(64) NOT NULL COMMENT '角色名称',
  `GROUPID` char(1) NOT NULL COMMENT '所属用户类型',
  `VCHAR1` varchar(64) DEFAULT NULL COMMENT '备用',
  `VCHAR2` varchar(64) DEFAULT NULL COMMENT '备用',
  `VCHAR3` varchar(64) DEFAULT NULL COMMENT '备用',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysrole
-- ----------------------------

-- ----------------------------
-- Table structure for sysrolemodule
-- ----------------------------
DROP TABLE IF EXISTS `sysrolemodule`;
CREATE TABLE `sysrolemodule` (
  `ROLEID` varchar(32) NOT NULL COMMENT '角色id，对应角色表主键',
  `MODULEID` varchar(32) NOT NULL COMMENT '模块id，对应模块表主键',
  PRIMARY KEY (`ROLEID`,`MODULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色对应模块权限表';

-- ----------------------------
-- Records of sysrolemodule
-- ----------------------------

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `USERID` varchar(20) NOT NULL COMMENT '用户账号',
  `USERNAME` varchar(128) NOT NULL COMMENT '用户名称',
  `GROUPID` char(1) NOT NULL COMMENT '用户类别 0:系统管理员,1：卫生局 2:卫生院 3：卫生室 4:供货商',
  `PWD` varchar(64) NOT NULL COMMENT '密码',
  `CONTACT` varchar(128) DEFAULT NULL COMMENT '联系方式',
  `ADDR` varchar(256) DEFAULT NULL COMMENT '地址',
  `EMAIL` varchar(64) DEFAULT NULL COMMENT '电子邮件',
  `USERSTATE` char(1) NOT NULL DEFAULT '1' COMMENT '用户状态：1正常，0暂停',
  `REMARK` varchar(256) DEFAULT NULL COMMENT '备注',
  `CREATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `SEX` varchar(4) DEFAULT NULL COMMENT '性别',
  `PHONE` varchar(20) DEFAULT NULL COMMENT '电话',
  `MOVEPHONE` varchar(11) DEFAULT NULL COMMENT '移动电话',
  `FAX` varchar(20) DEFAULT NULL COMMENT '传真',
  `LASTUPDATE` varchar(14) DEFAULT NULL COMMENT '最后修改时间',
  `VCHAR1` varchar(300) DEFAULT NULL,
  `VCHAR2` varchar(300) DEFAULT NULL,
  `VCHAR3` varchar(300) DEFAULT NULL,
  `VCHAR4` varchar(300) DEFAULT NULL,
  `VCHAR5` varchar(300) DEFAULT NULL,
  `SYSID` varchar(64) DEFAULT NULL COMMENT '单位id',
  PRIMARY KEY (`ID`),
  KEY `INDEX_UNIQUE_USERID` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('100', 'cgxwzc', '城关乡王庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c809b3eb-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('101', 'cgxlqsc', '城关乡龙泉寺村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c8132736-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('102', 'cgxazc', '城关乡安庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c81d9be6-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('103', 'cgxwypc', '城关乡瓦窑坡村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c8288c0e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('104', 'cgxsjc', '城关乡上集村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c83337d2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('105', 'cgxldc', '城关乡雷垌村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c840296e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('106', 'cgxydc', '城关乡杨垌村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c84a248d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('107', 'cgxhjc', '城关乡洪界村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c856d333-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('108', 'cgxwlzc', '城关乡五龙寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c861f01b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('109', 'cgxdsc', '城关乡东史村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c86dd695-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('110', 'cgxdwc', '城关乡大王村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c87d48cf-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('111', 'cgxlkzc', '城关乡李克寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c8882e78-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('112', 'lhz', '刘河镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c890f6ee-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('113', 'lhzlhc', '刘河镇刘河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9150eb7-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('114', 'lhzcjgc', '刘河镇陈家岗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c91f868e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('115', 'lhzfslc', '刘河镇分水岭村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c933330d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('116', 'lhzszc', '刘河镇石庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9396c43-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('117', 'lhzszhc', '刘河镇申庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9402d99-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('118', 'lhzrwc', '刘河镇任洼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c947245d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('119', 'lhzwhc', '刘河镇王河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c94e69c0-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('120', 'lhzhhc', '刘河镇花河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c957eeeb-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('121', 'lhzwzc', '刘河镇窝张村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c95fb297-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('122', 'lhzjzgc', '刘河镇架子沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c967425f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('123', 'lhzgdc', '刘河镇官顶村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c96e34de-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('124', 'lhzxzc', '刘河镇小寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c974b4d9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('125', 'lhzasc', '刘河镇庵上村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c97beb95-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('126', 'lhzfpc', '刘河镇反坡村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9879ebd-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('127', 'lhzxgc', '刘河镇徐沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c98e3eb6-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('128', 'hcy', '环翠峪卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c994c0bb-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('129', 'hcyszc', '环翠峪司庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c99baafd-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('130', 'hcyc', '环翠峪村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9aa9610-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('131', 'hcyczc', '环翠峪陈庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9b1f2a2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('132', 'hcydgc', '环翠峪东沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9bac0f8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('133', 'hcyelmc', '环翠峪二郎庙村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9c0f997-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('134', 'jyz', '贾峪镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9c7c495-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('135', 'jyzjyc', '贾峪镇贾峪村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9ce8ad7-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('136', 'jyzzdc', '贾峪镇周垌村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9d609f2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('137', 'jyzxc', '贾峪镇邢村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9dc0c1a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('138', 'jyznwc', '贾峪镇南王村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9e2d5a5-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('139', 'jyzsbgc', '贾峪镇石碑沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9e9dd34-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('140', 'jyzdyc', '贾峪镇大堰村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9f08a62-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('141', 'jyzlgc', '贾峪镇梁沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c9f919b8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('142', 'jyzzhdc', '贾峪镇朱顶村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'ca01a35c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('143', 'jyzcc', '贾峪镇楚村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'caed56e8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('144', 'jyzllc', '贾峪镇楼李村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'caf79508-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('145', 'jyzghc', '贾峪镇高河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'caffb2fe-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('146', 'jyzswc', '贾峪镇上湾村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb08316d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('147', 'jyzdlsc', '贾峪镇洞林寺村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb10c8b2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('148', 'jyzlc', '贾峪镇鹿村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb1b0f12-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('149', 'jyzggc', '贾峪镇郭岗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb236ce8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('150', 'jyzbgc', '贾峪镇北沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb2c2fce-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('151', 'jyzhsc', '贾峪镇岵山村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb349090-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('152', 'jyztsc', '贾峪镇塔山村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb3cecdf-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('153', 'jyzhlc', '贾峪镇槐林村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb45b487-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('154', 'jyzlxc', '贾峪镇老邢村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb511409-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('155', 'jyzljtc', '贾峪镇李家台村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb5c63eb-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('156', 'jyzspc', '贾峪镇石硼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb6671a5-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('157', 'jyzlwwc', '贾峪镇龙卧洼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb7911f6-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('158', 'jyzslgc', '贾峪镇双楼郭村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb92cb6a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('159', 'jyzmgc', '贾峪镇马沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cb9d1851-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('160', 'jyzzsc', '贾峪镇祖始村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cba9599e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('161', 'ylz', '豫龙镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cbb4d0be-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('162', 'ylzepc', '豫龙镇廿铺村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cbbf32c2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('163', 'ylzxzzc', '豫龙镇西张寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cbc9c0ab-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('164', 'ylzzzc', '豫龙镇翟砦村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cbd4f43b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('165', 'ylznxc', '豫龙镇碾徐村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cbdf17a4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('166', 'ylzwzc', '豫龙镇王寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cbe9684f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('167', 'ylzzjdc', '豫龙镇赵家垌村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cbf56688-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('168', 'ylzwwsc', '豫龙镇瓦屋孙村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cc017c53-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('169', 'ylzjzc', '豫龙镇蒋寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cc0eeb01-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('170', 'ylzjxcc', '豫龙镇京襄城村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cc1cc816-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('171', 'ylzzjzc', '豫龙镇赵家庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cc2ccdeb-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('172', 'ylzrzc', '豫龙镇茹寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cc37e52c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('173', 'ylzfzc', '豫龙镇樊寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'ccd23a52-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('174', 'ylzczc', '豫龙镇楚寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'ccdaa283-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('175', 'ylznzzc', '豫龙镇南张寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cce2fd53-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('176', 'ylzhzc', '豫龙镇郝寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cceb775e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('177', 'ylzxgsc', '豫龙镇兴国寺村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'ccf3ff2d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('178', 'ylzszgc', '豫龙镇石柱岗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'ccfcd220-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('179', 'ylzczhc', '豫龙镇陈庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cd04e374-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('180', 'ylzgdmc', '豫龙镇关帝庙村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cd0da0f8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('181', 'ylzmzc', '豫龙镇毛寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:15', null, null, null, null, null, null, null, null, null, null, 'cd1639d8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('182', 'ylzzyc', '豫龙镇寨杨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd225bfe-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('183', 'ylzyqc', '豫龙镇晏曲村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd2aa558-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('184', 'ylzjzhc', '豫龙镇焦寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd359eed-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('185', 'ylzlc', '豫龙镇刘村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd3f90a4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('186', 'ylzhzhc', '豫龙镇黑张村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd472487-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('187', 'ylzldc', '豫龙镇罗垌村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd505c28-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('188', 'ylzsyc', '豫龙镇柿园村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd58c3f5-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('189', 'ylzhxc', '豫龙镇槐西村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd609293-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('190', 'sh', '索河卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd69a32c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('191', 'shywlc', '索河杨五楼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd716c95-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('192', 'shhswc', '索河槐树洼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd79e573-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('193', 'shcgc', '索河城关村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd82736e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('194', 'shhcc', '索河惠厂村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd8ab06e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('195', 'shclc', '索河楚楼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd91bcde-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('196', 'jc', '京城卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cd9a55a7-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('197', 'jcbwc', '京城堡王村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cda26331-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('198', 'jckzc', '京城康砦村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cda943f0-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('199', 'jcszc', '京城石砦村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cdb1dd3f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('200', 'jcjjzc', '京城吉家砦村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cdb89865-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('201', 'jcclc', '京城曹李村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cdbf3f8a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('202', 'jcpzc', '京城平庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cdca4080-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('203', 'jcfzc', '京城冯砦村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'ce8b864c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('204', 'jclwlc', '京城狼窝刘村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'ce93f531-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('205', 'qlz', '乔楼镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'ce9ddaa9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('206', 'qlzdgc', '乔楼镇东郭村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cea5d9ed-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('207', 'qlzlgc', '乔楼镇李沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'ceace373-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('208', 'qlzfhc', '乔楼镇付河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'ceb50ea4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('209', 'qlzsc', '乔楼镇狮村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cebc2f36-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('210', 'qlznlc', '乔楼镇聂楼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cec66a21-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('211', 'qlzzzgc', '乔楼镇冢子岗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cece6cf3-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('212', 'qlzzwzc', '乔楼镇张王庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'ced53019-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('213', 'qlzczc', '乔楼镇蔡寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cedc1a58-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('214', 'qlzhc', '乔楼镇韩村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cee3188d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('215', 'qlzctc', '乔楼镇楚堂村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'ceeb9b67-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('216', 'qlzszc', '乔楼镇孙砦村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cef4795b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('217', 'qlzswc', '乔楼镇沈洼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf0442d4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('218', 'qlzqlc', '乔楼镇七里村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf0ba872-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('219', 'qlzczhc', '乔楼镇陈寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf14781c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('220', 'qlzrzc', '乔楼镇任庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf1cde38-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('221', 'qlzcgc', '乔楼镇陈沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf2a034d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('222', 'qlzxgc', '乔楼镇辛岗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf31409e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('223', 'qlzzcm', '乔楼镇张村庙卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf394b41-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('224', 'gwz', '广武镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf4025a8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('225', 'gwzcyc', '广武镇插闫村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:16', null, null, null, null, null, null, null, null, null, null, 'cf46d8d9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('226', 'gwzbwcc', '广武镇霸王城村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'cf4dbb32-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('227', 'gwzhwcc', '广武镇汉王城村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'cf5642f8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('228', 'gwzbzc', '广武镇白寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'cf5d5369-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('229', 'gwzhc', '广武镇胡村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'cf6563b6-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('230', 'gwzsgc', '广武镇三官村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'cf6cc77b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('231', 'gwzfhc', '广武镇樊河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'cf74e5ba-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('232', 'gwzzzc', '广武镇张庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'cf7b753f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('233', 'gwzszc', '广武镇孙寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd02b06d4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('234', 'gwzcgc', '广武镇陈沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd03ad3e2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('235', 'gwzdwc', '广武镇丁洼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd0463a04-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('236', 'gwzthyc', '广武镇桃花峪村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd04eb840-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('237', 'gwzfzc', '广武镇冯庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd0565ae9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('238', 'gwzhlc', '广武镇黑李村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd05d2040-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('239', 'gwzdsgc', '广武镇大师姑村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd063bfcd-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('24', 'xyswsj', '荥阳市卫生局', '1', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '0d498b73-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('240', 'gwzwgc', '广武镇王沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd06a8bbb-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('241', 'gwzdlc', '广武镇丁楼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd071766b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('242', 'gwzszhc', '广武镇苏寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd0787a4c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('243', 'gwzyc', '广武镇闫村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd0810bd6-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('244', 'gwztyc', '广武镇桃园村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd089d131-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('245', 'gwzrhc', '广武镇任河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd093e2ac-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('246', 'gwzzrc', '广武镇中任村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd09c2766-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('247', 'gwztdc', '广武镇唐垌村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd0a5cd3a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('248', 'gwzbrc', '广武镇北任村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd0ece86b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('249', 'gwzjzc', '广武镇军张村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd111d837-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('25', 'cmzcmc', '崔庙镇崔庙村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1f8b098b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('250', 'gwzzyc', '广武镇寨峪村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd1260ec7-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('251', 'gwzcdgc', '广武镇车大沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd1346f19-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('252', 'gwzdzc', '广武镇董庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd13eb060-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('253', 'gwzhwc', '广武镇后王村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd1483c14-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('254', 'gwzzhc', '广武镇张河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd1519ff9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('255', 'gwzcdc', '广武镇陈垌村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd16396ac-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('256', 'gwzwdc', '广武镇王顶村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd16d907c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('257', 'gwzzdc', '广武镇张垌村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd177bf39-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('258', 'gwzxsc', '广武镇西苏村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd1833015-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('259', 'gwzgwc', '广武镇广武村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd18c1fc1-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('26', 'cmzpyc', '崔庙镇盆窑村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1f95503c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('260', 'gwzdwyc', '广武镇东魏营村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd196c996-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('261', 'gwzxwyc', '广武镇西魏营村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd1a05aa0-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('262', 'gwzdyc', '广武镇丹阳村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd1aa8bda-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('263', 'gwzdsc', '广武镇东苏村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd290a118-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('264', 'gwzndc', '广武镇南董村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd298ad8b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('265', 'gwzczc', '广武镇车庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd29f18a0-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('266', 'gwznidc', '广武镇倪店村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:17', null, null, null, null, null, null, null, null, null, null, 'd2a5ee77-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('267', 'gwzsqc', '广武镇水泉村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2accb69-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('268', 'gcx', '高村乡卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2b358ef-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('269', 'gcxgzc', '高村乡官庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2ba1eb9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('27', 'cmzxgc', '崔庙镇项沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1f9db2d9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('270', 'gcxzcc', '高村乡张常村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2c3b338-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('271', 'gcxgcsc', '高村乡高村寺村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2cb6bb5-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('272', 'gcxzhc', '高村乡张村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2d1fa3b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('273', 'gcxmzc', '高村乡马寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2d8c9c4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('274', 'gcxyfc', '高村乡油坊村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2dfa98f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('275', 'gcxjzc', '高村乡荆寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2e668da-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('276', 'gcxdcc', '高村乡杜常村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2ed6234-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('277', 'gcxmzhc', '高村乡穆寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2f4283e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('278', 'gcxlptc', '高村乡刘铺头村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd2fcf5c2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('279', 'gcxsc', '高村乡宋村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd3058050-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('28', 'cmzspc', '崔庙镇索坡村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1fa7e0af-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('280', 'gcxwc', '高村乡吴村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd30f148a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('281', 'gcxcptc', '高村乡陈铺头村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd3181fab-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('282', 'gcxnkyc', '高村乡牛口峪村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd32856f8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('283', 'gcxmsc', '高村乡邙山村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd331539e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('284', 'gcxzsgc', '高村乡枣树沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd33879b6-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('285', 'gcxqptc', '高村乡秦铺头村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd340f9b6-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('286', 'gcxarzc', '高村乡安仁寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd3492a7d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('287', 'gcxzzc', '高村乡周寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd3518b1e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('288', 'gcxgc', '高村乡高村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd35adfb1-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('289', 'gcxgyc', '高村乡官峪村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd36347f0-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('29', 'cmzzyc', '崔庙镇竹园村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1fb339a7-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('290', 'gcxlgc', '高村乡刘沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd36bf68f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('291', 'gcxqjzc', '高村乡前卷子村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd374ce18-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('292', 'gcxlsc', '高村乡李山村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd37ec5ae-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('293', 'gcxhjzc', '高村乡后卷子村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd44fd6ed-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('294', 'gcxsmc', '高村乡司马村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd45937d7-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('295', 'gcxzc', '高村乡真村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd46804a2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('296', 'gcxmgc', '高村乡马沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4727f10-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('297', 'gcxhcc', '高村乡韩常村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd47af249-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('298', 'gcxsfc', '高村乡史坊村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd48386d1-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('299', 'jzx', '金寨乡卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd48cb84b-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('30', 'cmzzgc', '崔庙镇翟沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1fc324f5-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('300', 'jzxjzc', '金寨乡金寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd49646ab-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('301', 'jzxclc', '金寨乡楚楼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd49fcea4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('302', 'wcz', '王村镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4aaf7bd-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('303', 'wczwc', '王村镇王村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4b63a3a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('304', 'wczqxzc', '王村镇前新庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4beb451-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('305', 'wczdc', '王村镇丁村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4c96de3-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('306', 'wczdfc', '王村镇段坊村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4d38c4d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('307', 'wczrlc', '王村镇仁里村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4ddc50c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('308', 'wczqbyc', '王村镇前白杨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4e9c228-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('309', 'wczwzc', '王村镇洼子村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4f188d7-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('31', 'cmzlzc', '崔庙镇老庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1fd2610f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('310', 'wczlzc', '王村镇梁庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:18', null, null, null, null, null, null, null, null, null, null, 'd4fc558a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('311', 'wczxzc', '王村镇许庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd5043fd5-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('312', 'wczhc', '王村镇韩村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd510c5f8-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('313', 'wczcmc', '王村镇草庙村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd5198400-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('314', 'wczflc', '王村镇房罗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd523374e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('315', 'wczxc', '王村镇薛村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd52b96bf-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('316', 'wczsc', '王村镇司村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd533ebeb-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('317', 'wczhbyc', '王村镇后白杨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd53c4acd-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('318', 'wczxidc', '王村镇西大村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd545087e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('319', 'wczhdc', '王村镇后殿村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd54db35a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('32', 'cmzsjc', '崔庙镇石井村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1fde4a68-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('320', 'wczzyc', '王村镇竹园村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd555a4cd-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('321', 'wczmlc', '王村镇木楼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd55fe357-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('322', 'wczbdc', '王村镇柏垛村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd56839c2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('323', 'wczxiaoc', '王村镇小村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd6083059-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('324', 'wczhxzc', '王村镇后新庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd615390d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('325', 'wczjtc', '王村镇蒋头村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd61c7628-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('326', 'wczxdc', '王村镇新店村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd6264f49-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('327', 'wczlc', '王村镇留村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'd62dd736-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('328', 'ghshaien', '河南海恩药业有限公司', '4', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, '0dc94edc-08cf-11e3-8a4f-60a44cea4388');
INSERT INTO `sysuser` VALUES ('329', 'ghsjzt', '河南九州通医药有限公司', '4', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, '5197cdd2-08cf-11e3-8a4f-60a44cea4388');
INSERT INTO `sysuser` VALUES ('33', 'cmzccc', '崔庙镇车厂村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1fe714f4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('330', 'ghsxy', '荥阳市医药公司', '4', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, '701b09b8-08cf-11e3-8a4f-60a44cea4388');
INSERT INTO `sysuser` VALUES ('331', 'cmz', '崔庙镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, '15819c06-09a1-11e3-8a4f-60a44cea4388');
INSERT INTO `sysuser` VALUES ('332', 'gwcdg', '广武镇广武村东关卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, '8bef106a-1371-11e3-8a4f-60a44cea4388');
INSERT INTO `sysuser` VALUES ('333', 'ylzmxwc', '豫龙镇苜蓿凹村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'ae0a7c2e-1c46-11e3-8a4f-60a44cea4388');
INSERT INTO `sysuser` VALUES ('334', 'gwcnc', '广武镇广武村南城卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:19', null, null, null, null, null, null, null, null, null, null, 'fc078de0-4ff4-11e3-8a4f-60a44cea4388');
INSERT INTO `sysuser` VALUES ('34', 'cmzshpc', '崔庙镇石坡村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1ff45dda-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('35', 'cmzwzdc', '崔庙镇王宗店村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '1ffceb93-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('36', 'cmzbzc', '崔庙镇白赵村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '2005b95d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('37', 'cmzlsgc', '崔庙镇栗树沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '200f844e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('38', 'cmzmzc', '崔庙镇马寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '2020977c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('39', 'cmzdgc', '崔庙镇丁沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '202b4a47-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('40', 'cmzszc', '崔庙镇邵寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '203d85bf-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('41', 'cmzsgc', '崔庙镇寺沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2017-05-13 21:38:35', null, null, null, null, null, null, null, null, null, null, '204a1120-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('42', 'cmzjgc', '崔庙镇界沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '2052e16d-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('43', 'cmzzhgc', '崔庙镇郑岗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '2060dc90-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('44', 'cmzwqc', '崔庙镇王泉村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '206a29f9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('45', 'cmzlzhc', '崔庙镇卢庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '20735f8e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('46', 'cmzzzc', '崔庙镇郑庄村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '207b5723-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('47', 'ssz', '汜水镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '2084aa4a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('48', 'sszlyc', '汜水镇寥峪村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '208cbe58-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('49', 'sszqjgc', '汜水镇清静沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '20978193-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('50', 'sszssc', '汜水镇汜水村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '20a1103e-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('51', 'sszhtc', '汜水镇滹沱村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '20aa99df-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('52', 'sszntc', '汜水镇南屯村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, '20b345bf-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('53', 'sszzc', '汜水镇赵村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, 'c46a9db6-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('54', 'sszslc', '汜水镇十里村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, 'c47671fa-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('55', 'sszhlgc', '汜水镇虎牢关村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4841b92-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('56', 'sszdhnc', '汜水镇东河南村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c48dcfdf-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('57', 'sszljtc', '汜水镇老君堂村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4953967-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('58', 'sszkzc', '汜水镇口子村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c49d8df4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('59', 'sszxgc', '汜水镇新沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4a63efc-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('60', 'sszzgc', '汜水镇周沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4b0c8f4-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('61', 'sszxxc', '汜水镇西邢村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4b9bc43-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('62', 'gsz', '高山镇卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4c1c750-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('63', 'gszxc', '高山镇许村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4c9dc8c-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('64', 'gszqgc', '高山镇乔沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4d27204-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('65', 'gszyqc', '高山镇杨桥村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4db63c3-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('66', 'gszydc', '高山镇余顶村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4f11b45-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('67', 'gsztyc', '高山镇妥要村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c4fabe48-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('68', 'gszcgc', '高山镇苌岗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c503e120-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('69', 'gszzgc', '高山镇冢岗村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c50ca855-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('7', 'admin', '超级管理员', '0', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:12', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sysuser` VALUES ('70', 'gszmdc', '高山镇苗顶村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c514bbd5-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('71', 'gszsdc', '高山镇石洞村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c51e90ae-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('72', 'gszgsc', '高山镇高山村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c52c6f6f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('73', 'gszzcc', '高山镇竹川村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c536eaec-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('74', 'gszpyc', '高山镇潘窑村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c53f7790-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('75', 'gszmugc', '高山镇穆沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c548dc35-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('76', 'gszbsc', '高山镇白水村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c5519bd2-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('77', 'gszfgc', '高山镇冯沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c55b6a04-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('78', 'gszwgc', '高山镇吴沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c5666dff-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('79', 'gszmgc', '高山镇庙沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c56f0497-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('80', 'gszzfc', '高山镇纸坊村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c5777229-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('81', 'gszzyc', '高山镇竹园村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c582fc19-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('82', 'cgx', '城关乡卫生院', '2', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c58c043a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('83', 'cgxsbgc', '城关乡石板沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c76ab791-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('84', 'cgxwgc', '城关乡汪沟村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c775c53a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('85', 'cgxbzc', '城关乡北周村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c77f117f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('86', 'cgxzlc', '城关乡张楼村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7878797-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('87', 'cgxyzzc', '城关乡阴赵寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7909ddc-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('88', 'cgxnzc', '城关乡南周村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c798909f-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('89', 'cgxsyc', '城关乡柿园村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c79f17e9-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('90', 'cgxtlc', '城关乡桃李村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7aa7c84-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('91', 'cgxzyhc', '城关乡竹叶河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7b24418-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('92', 'cgxxsc', '城关乡西史村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7ba4761-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('93', 'cgxxwc', '城关乡小王村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7c2f1b3-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('94', 'cgxdmc', '城关乡大庙村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7ca265a-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('95', 'cgxgzc', '城关乡皋砦村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7d4ae47-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('96', 'cgxsslpc', '城关乡三十里铺村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7e15789-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('97', 'cgxgyzc', '城关乡高袁寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7ea0af3-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('98', 'cgxgzhc', '城关乡宫寨村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:13', null, null, null, null, null, null, null, null, null, null, 'c7f60501-067e-11e3-8a3c-0019d2ce5116');
INSERT INTO `sysuser` VALUES ('99', 'cgxfhc', '城关乡付河村卫生室', '3', '96e79218965eb72c92a549dd5a330112', null, null, null, '1', null, '2014-04-15 19:04:14', null, null, null, null, null, null, null, null, null, null, 'c80086fc-067e-11e3-8a3c-0019d2ce5116');

-- ----------------------------
-- Table structure for userarea
-- ----------------------------
DROP TABLE IF EXISTS `userarea`;
CREATE TABLE `userarea` (
  `USERID` varchar(32) NOT NULL,
  `AREAID` varchar(32) NOT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`USERID`,`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户区域表';

-- ----------------------------
-- Records of userarea
-- ----------------------------

-- ----------------------------
-- Table structure for usergys
-- ----------------------------
DROP TABLE IF EXISTS `usergys`;
CREATE TABLE `usergys` (
  `ID` varchar(64) NOT NULL,
  `MC` varchar(128) NOT NULL COMMENT '企业名称(中文)',
  `LB` varchar(32) DEFAULT NULL COMMENT '企业类别',
  `XKZ` varchar(128) DEFAULT NULL COMMENT '(生产或经营)许可证',
  `XKZYXQ` varchar(128) DEFAULT NULL COMMENT '许可证到期时间(年月日)',
  `LXR` varchar(64) DEFAULT NULL COMMENT '企业联系人',
  `DH` varchar(64) DEFAULT NULL COMMENT '企业联系电话',
  `JYFW` varchar(256) DEFAULT NULL COMMENT '经营范围',
  `ZCDZ` varchar(128) DEFAULT NULL COMMENT '注册地址(中文)',
  `LXDZ` varchar(128) DEFAULT NULL COMMENT '联系地址',
  `YZBM` varchar(32) DEFAULT NULL COMMENT '邮政编码',
  `ZZC` varchar(32) DEFAULT NULL COMMENT '总资产(万元)',
  `CZ` varchar(64) DEFAULT NULL COMMENT '企业传真',
  `FRMC` varchar(16) DEFAULT NULL COMMENT '法人代表姓名',
  `FRSFZ` varchar(64) DEFAULT NULL COMMENT '法人身份证',
  `ZCZJ` varchar(32) DEFAULT NULL COMMENT '企业注册资金(万元)',
  `XSE` varchar(32) DEFAULT NULL COMMENT '上年度销售金额(万元)',
  `DZYX` varchar(128) DEFAULT NULL COMMENT '电子信箱',
  `WZ` varchar(256) DEFAULT NULL COMMENT '网址',
  `DMZH` varchar(128) DEFAULT NULL COMMENT '企业代码证号',
  `DMZHYXQ` varchar(128) DEFAULT NULL COMMENT '企业代码有效期',
  `YYZZ` varchar(64) DEFAULT NULL COMMENT '营业执照',
  `YYZZYXQ` varchar(128) DEFAULT NULL COMMENT '营业执照有效期',
  `XYZ` char(1) DEFAULT NULL COMMENT '是否有企业信用证',
  `XYZBM` varchar(64) DEFAULT NULL COMMENT '信用证号',
  `XYZYXQ` varchar(128) DEFAULT NULL COMMENT '信用证有效期',
  `GDZC` varchar(32) DEFAULT NULL COMMENT '固定资产（万元）',
  `JJ` text COMMENT '公司简介(中文)',
  `BZ` varchar(200) DEFAULT NULL COMMENT '备注',
  `VCHAR1` varchar(128) DEFAULT NULL,
  `VCHAR2` varchar(128) DEFAULT NULL,
  `VCHAR3` varchar(128) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_USERGYS_NEWINDEX2_USERGYS` (`MC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergys
-- ----------------------------
INSERT INTO `usergys` VALUES ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '河南海恩药业有限公司', null, null, null, '张明明', '432432', null, null, '经济开发区', null, null, null, null, null, null, null, null, 'wwwfdsfafa', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `usergys` VALUES ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '河南九州通医药有限公司', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `usergys` VALUES ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '荥阳市医药公司', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for usergysarea
-- ----------------------------
DROP TABLE IF EXISTS `usergysarea`;
CREATE TABLE `usergysarea` (
  `USERGYSID` varchar(64) NOT NULL,
  `AREAID` varchar(32) NOT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`USERGYSID`,`AREAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供货商供货地区';

-- ----------------------------
-- Records of usergysarea
-- ----------------------------
INSERT INTO `usergysarea` VALUES ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.15.', null, null, null);
INSERT INTO `usergysarea` VALUES ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.2.', null, null, null);
INSERT INTO `usergysarea` VALUES ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.3.', null, null, null);
INSERT INTO `usergysarea` VALUES ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.4.', null, null, null);
INSERT INTO `usergysarea` VALUES ('0dc94edc-08cf-11e3-8a4f-60a44cea4388', '1.7.', null, null, null);
INSERT INTO `usergysarea` VALUES ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.1.', null, null, null);
INSERT INTO `usergysarea` VALUES ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.11.', null, null, null);
INSERT INTO `usergysarea` VALUES ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.12.', null, null, null);
INSERT INTO `usergysarea` VALUES ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.13.', null, null, null);
INSERT INTO `usergysarea` VALUES ('5197cdd2-08cf-11e3-8a4f-60a44cea4388', '1.14.', null, null, null);
INSERT INTO `usergysarea` VALUES ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.10.', null, null, null);
INSERT INTO `usergysarea` VALUES ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.5.', null, null, null);
INSERT INTO `usergysarea` VALUES ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.6.', null, null, null);
INSERT INTO `usergysarea` VALUES ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.8.', null, null, null);
INSERT INTO `usergysarea` VALUES ('701b09b8-08cf-11e3-8a4f-60a44cea4388', '1.9.', null, null, null);

-- ----------------------------
-- Table structure for userjd
-- ----------------------------
DROP TABLE IF EXISTS `userjd`;
CREATE TABLE `userjd` (
  `ID` varchar(64) NOT NULL,
  `MC` varchar(128) NOT NULL COMMENT '机构名称',
  `DZ` varchar(256) DEFAULT NULL COMMENT '联系地址',
  `YZBM` varchar(32) DEFAULT NULL COMMENT '邮政编码',
  `XLR` varchar(64) DEFAULT NULL COMMENT '联系人',
  `DH` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `CZ` varchar(64) DEFAULT NULL COMMENT '传真',
  `DZYX` varchar(128) DEFAULT NULL COMMENT 'email',
  `WZ` varchar(128) DEFAULT NULL COMMENT '网址',
  `VCHAR1` varchar(128) DEFAULT NULL,
  `VCHAR2` varchar(128) DEFAULT NULL,
  `VCHAR3` varchar(128) DEFAULT NULL,
  `DQ` varchar(1024) DEFAULT NULL COMMENT '所属地区',
  PRIMARY KEY (`ID`),
  KEY `AK_USERJD_NEWINDEX2_USERJD` (`MC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userjd
-- ----------------------------
INSERT INTO `userjd` VALUES ('0d498b73-067e-11e3-8a3c-0019d2ce5116', '荥阳市卫生局', null, null, null, null, null, null, null, null, null, null, '1.');
INSERT INTO `userjd` VALUES ('15819c06-09a1-11e3-8a4f-60a44cea4388', '崔庙镇卫生院', '崔庙镇工业路', '410131', null, '32', '432', 'fdsfds', '432', null, null, null, '1.1.');
INSERT INTO `userjd` VALUES ('2084aa4a-067e-11e3-8a3c-0019d2ce5116', '汜水镇卫生院', null, null, null, null, null, null, null, null, null, null, '1.10.');
INSERT INTO `userjd` VALUES ('c4c1c750-067e-11e3-8a3c-0019d2ce5116', '高山镇卫生院', null, null, null, null, null, null, null, null, null, null, '1.11.');
INSERT INTO `userjd` VALUES ('c58c043a-067e-11e3-8a3c-0019d2ce5116', '城关乡卫生院', null, null, null, null, null, null, null, null, null, null, '1.12.');
INSERT INTO `userjd` VALUES ('c890f6ee-067e-11e3-8a3c-0019d2ce5116', '刘河镇卫生院', '刘河镇兴刘路北段', '450132', null, null, null, null, null, null, null, null, '1.13.');
INSERT INTO `userjd` VALUES ('c994c0bb-067e-11e3-8a3c-0019d2ce5116', '环翠峪卫生院', '荥阳市环翠峪', '450132', null, null, null, null, null, null, null, null, '1.14.');
INSERT INTO `userjd` VALUES ('c9c7c495-067e-11e3-8a3c-0019d2ce5116', '贾峪镇卫生院', null, '450123', null, null, null, null, null, null, null, null, '1.15.');
INSERT INTO `userjd` VALUES ('cbb4d0be-067e-11e3-8a3c-0019d2ce5116', '豫龙镇卫生院', null, null, null, null, null, null, null, null, null, null, '1.2.');
INSERT INTO `userjd` VALUES ('cd69a32c-067e-11e3-8a3c-0019d2ce5116', '索河卫生院', null, '450100', null, null, null, null, null, null, null, null, '1.3.');
INSERT INTO `userjd` VALUES ('cd9a55a7-067e-11e3-8a3c-0019d2ce5116', '京城卫生院', null, '4501000', null, null, null, null, null, null, null, null, '1.4.');
INSERT INTO `userjd` VALUES ('ce9ddaa9-067e-11e3-8a3c-0019d2ce5116', '乔楼镇卫生院', null, null, null, null, null, null, null, null, null, null, '1.5.');
INSERT INTO `userjd` VALUES ('cf4025a8-067e-11e3-8a3c-0019d2ce5116', '广武镇卫生院', '荥阳市广武镇中心卫生院', '450100', null, null, null, null, null, null, null, null, '1.6.');
INSERT INTO `userjd` VALUES ('d2b358ef-067e-11e3-8a3c-0019d2ce5116', '高村乡卫生院', null, null, null, null, null, null, null, null, null, null, '1.7.');
INSERT INTO `userjd` VALUES ('d48cb84b-067e-11e3-8a3c-0019d2ce5116', '金寨乡卫生院', '荥阳市金寨同心路', '450100', null, null, null, null, null, null, null, null, '1.8.');
INSERT INTO `userjd` VALUES ('d4aaf7bd-067e-11e3-8a3c-0019d2ce5116', '王村镇卫生院', '王村镇金滩市场', '450142', null, null, null, null, null, null, null, null, '1.9.');

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `USERID` varchar(32) NOT NULL COMMENT '用户id，对应用户表主键',
  `USERROLE` varchar(32) NOT NULL COMMENT '用户角色id，对应角色表主键',
  `VCHAR1` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`USERID`,`USERROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of userrole
-- ----------------------------

-- ----------------------------
-- Table structure for useryy
-- ----------------------------
DROP TABLE IF EXISTS `useryy`;
CREATE TABLE `useryy` (
  `ID` varchar(64) NOT NULL,
  `MC` varchar(128) NOT NULL COMMENT '医院名称',
  `DZ` varchar(256) DEFAULT NULL COMMENT '通讯地址',
  `YZBM` varchar(32) DEFAULT NULL COMMENT '邮政编码',
  `DQ` varchar(128) DEFAULT NULL COMMENT '所属地区id',
  `JB` varchar(32) DEFAULT NULL COMMENT '医院级别',
  `CWS` varchar(64) DEFAULT NULL COMMENT '床位数',
  `FYLJG` char(1) DEFAULT NULL COMMENT '是否非营利性医疗机构',
  `DH` varchar(64) DEFAULT NULL COMMENT '院办电话',
  `YJKDH` varchar(64) DEFAULT NULL COMMENT '药剂科电话',
  `LB` varchar(64) DEFAULT NULL COMMENT '医院类型',
  `YPSR` varchar(32) DEFAULT NULL COMMENT '上年度药品收入',
  `YWSR` varchar(32) DEFAULT NULL COMMENT '上年度业务收入',
  `CZ` varchar(64) DEFAULT NULL COMMENT '院办传真',
  `VCHAR1` varchar(128) DEFAULT NULL,
  `VCHAR2` varchar(128) DEFAULT NULL,
  `VCHAR3` varchar(128) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_USERYY_MC_NEWINDEX_USERYY` (`MC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useryy
-- ----------------------------
INSERT INTO `useryy` VALUES ('001', '测试医院', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1f8b098b-067e-11e3-8a3c-0019d2ce5116', '崔庙镇崔庙村卫生室', null, null, '1.1.16.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1f95503c-067e-11e3-8a3c-0019d2ce5116', '崔庙镇盆窑村卫生室', null, null, '1.1.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1f9db2d9-067e-11e3-8a3c-0019d2ce5116', '崔庙镇项沟村卫生室', null, null, '1.1.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1fa7e0af-067e-11e3-8a3c-0019d2ce5116', '崔庙镇索坡村卫生室', null, null, '1.1.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1fb339a7-067e-11e3-8a3c-0019d2ce5116', '崔庙镇竹园村卫生室', null, null, '1.1.20.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1fc324f5-067e-11e3-8a3c-0019d2ce5116', '崔庙镇翟沟村卫生室', null, null, '1.1.21.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1fd2610f-067e-11e3-8a3c-0019d2ce5116', '崔庙镇老庄村卫生室', null, null, '1.1.22.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1fde4a68-067e-11e3-8a3c-0019d2ce5116', '崔庙镇石井村卫生室', null, null, '1.1.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1fe714f4-067e-11e3-8a3c-0019d2ce5116', '崔庙镇车厂村卫生室', null, null, '1.1.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1ff45dda-067e-11e3-8a3c-0019d2ce5116', '崔庙镇石坡村卫生室', null, null, '1.1.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('1ffceb93-067e-11e3-8a3c-0019d2ce5116', '崔庙镇王宗店村卫生室', null, null, '1.1.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('2005b95d-067e-11e3-8a3c-0019d2ce5116', '崔庙镇白赵村卫生室', null, null, '1.1.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('200f844e-067e-11e3-8a3c-0019d2ce5116', '崔庙镇栗树沟村卫生室', null, null, '1.1.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('2020977c-067e-11e3-8a3c-0019d2ce5116', '崔庙镇马寨村卫生室', null, null, '1.1.29.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('202b4a47-067e-11e3-8a3c-0019d2ce5116', '崔庙镇丁沟村卫生室', null, null, '1.1.30.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('203d85bf-067e-11e3-8a3c-0019d2ce5116', '崔庙镇邵寨村卫生室', null, null, '1.1.31.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('204a1120-067e-11e3-8a3c-0019d2ce5116', '崔庙镇寺沟村卫生室', null, null, '1.1.32.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('2052e16d-067e-11e3-8a3c-0019d2ce5116', '崔庙镇界沟村卫生室', '荥阳市，崔庙镇，界沟村', '450131', '1.1.33.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('2060dc90-067e-11e3-8a3c-0019d2ce5116', '崔庙镇郑岗村卫生室', null, null, '1.1.34.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('206a29f9-067e-11e3-8a3c-0019d2ce5116', '崔庙镇王泉村卫生室', null, '450131', '1.1.35.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('20735f8e-067e-11e3-8a3c-0019d2ce5116', '崔庙镇卢庄村卫生室', '荥阳市崔庙镇卢庄村', '450131', '1.1.36.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('207b5723-067e-11e3-8a3c-0019d2ce5116', '崔庙镇郑庄村卫生室', null, null, '1.1.37.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('208cbe58-067e-11e3-8a3c-0019d2ce5116', '汜水镇寥峪村卫生室', null, null, '1.10.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('20978193-067e-11e3-8a3c-0019d2ce5116', '汜水镇清静沟村卫生室', null, null, '1.10.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('20a1103e-067e-11e3-8a3c-0019d2ce5116', '汜水镇汜水村卫生室', null, null, '1.10.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('20aa99df-067e-11e3-8a3c-0019d2ce5116', '汜水镇滹沱村卫生室', null, null, '1.10.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('20b345bf-067e-11e3-8a3c-0019d2ce5116', '汜水镇南屯村卫生室', null, null, '1.10.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('8bef106a-1371-11e3-8a4f-60a44cea4388', '广武镇广武村东关卫生室', null, null, '1.6.40.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ae0a7c2e-1c46-11e3-8a4f-60a44cea4388', '豫龙镇苜蓿凹村卫生室', null, null, '1.2.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c46a9db6-067e-11e3-8a3c-0019d2ce5116', '汜水镇赵村卫生室', null, null, '1.10.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c47671fa-067e-11e3-8a3c-0019d2ce5116', '汜水镇十里村卫生室', null, null, '1.10.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4841b92-067e-11e3-8a3c-0019d2ce5116', '汜水镇虎牢关村卫生室', null, null, '1.10.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c48dcfdf-067e-11e3-8a3c-0019d2ce5116', '汜水镇东河南村卫生室', null, null, '1.10.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4953967-067e-11e3-8a3c-0019d2ce5116', '汜水镇老君堂村卫生室', null, null, '1.10.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c49d8df4-067e-11e3-8a3c-0019d2ce5116', '汜水镇口子村卫生室', null, null, '1.10.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4a63efc-067e-11e3-8a3c-0019d2ce5116', '汜水镇新沟村卫生室', null, null, '1.10.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4b0c8f4-067e-11e3-8a3c-0019d2ce5116', '汜水镇周沟村卫生室', null, null, '1.10.8.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4b9bc43-067e-11e3-8a3c-0019d2ce5116', '汜水镇西邢村卫生室', null, null, '1.10.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4c9dc8c-067e-11e3-8a3c-0019d2ce5116', '高山镇许村卫生室', null, null, '1.11.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4d27204-067e-11e3-8a3c-0019d2ce5116', '高山镇乔沟村卫生室', null, null, '1.11.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4db63c3-067e-11e3-8a3c-0019d2ce5116', '高山镇杨桥村卫生室', null, null, '1.11.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4f11b45-067e-11e3-8a3c-0019d2ce5116', '高山镇余顶村卫生室', null, null, '1.11.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c4fabe48-067e-11e3-8a3c-0019d2ce5116', '高山镇妥要村卫生室', null, null, '1.11.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c503e120-067e-11e3-8a3c-0019d2ce5116', '高山镇苌岗村卫生室', null, null, '1.11.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c50ca855-067e-11e3-8a3c-0019d2ce5116', '高山镇冢岗村卫生室', null, '450135', '1.11.15.', '00501', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c514bbd5-067e-11e3-8a3c-0019d2ce5116', '高山镇苗顶村卫生室', null, '450136', '1.11.16.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c51e90ae-067e-11e3-8a3c-0019d2ce5116', '高山镇石洞村卫生室', null, null, '1.11.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c52c6f6f-067e-11e3-8a3c-0019d2ce5116', '高山镇高山村卫生室', null, null, '1.11.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c536eaec-067e-11e3-8a3c-0019d2ce5116', '高山镇竹川村卫生室', null, null, '1.11.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c53f7790-067e-11e3-8a3c-0019d2ce5116', '高山镇潘窑村卫生室', '高山镇潘窑村', '450135', '1.11.2.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c548dc35-067e-11e3-8a3c-0019d2ce5116', '高山镇穆沟村卫生室', null, '450135', '1.11.3.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c5519bd2-067e-11e3-8a3c-0019d2ce5116', '高山镇白水村卫生室', null, null, '1.11.4.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c55b6a04-067e-11e3-8a3c-0019d2ce5116', '高山镇冯沟村卫生室', null, null, '1.11.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c5666dff-067e-11e3-8a3c-0019d2ce5116', '高山镇吴沟村卫生室', null, null, '1.11.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c56f0497-067e-11e3-8a3c-0019d2ce5116', '高山镇庙沟村卫生室', null, null, '1.11.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c5777229-067e-11e3-8a3c-0019d2ce5116', '高山镇纸坊村卫生室', null, null, '1.11.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c582fc19-067e-11e3-8a3c-0019d2ce5116', '高山镇竹园村卫生室', null, null, '1.11.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c76ab791-067e-11e3-8a3c-0019d2ce5116', '城关乡石板沟村卫生室', null, null, '1.12.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c775c53a-067e-11e3-8a3c-0019d2ce5116', '城关乡汪沟村卫生室', null, null, '1.12.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c77f117f-067e-11e3-8a3c-0019d2ce5116', '城关乡北周村卫生室', '荥阳市城关乡北周村卫生室', '450100', '1.12.11.', null, '5', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7878797-067e-11e3-8a3c-0019d2ce5116', '城关乡张楼村卫生室', null, null, '1.12.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7909ddc-067e-11e3-8a3c-0019d2ce5116', '城关乡阴赵寨村卫生室', null, null, '1.12.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c798909f-067e-11e3-8a3c-0019d2ce5116', '城关乡南周村卫生室', null, null, '1.12.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c79f17e9-067e-11e3-8a3c-0019d2ce5116', '城关乡柿园村卫生室', null, null, '1.12.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7aa7c84-067e-11e3-8a3c-0019d2ce5116', '城关乡桃李村卫生室', '城关乡桃李村卫生所', '450100', '1.12.16.', '58c36e2056714d87b19fe5ae8dbe3e77', '4', '1', null, null, '00601', '2万', '5万', null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7b24418-067e-11e3-8a3c-0019d2ce5116', '城关乡竹叶河村卫生室', '城关乡竹叶河村', '450100', '1.12.17.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7ba4761-067e-11e3-8a3c-0019d2ce5116', '城关乡西史村卫生室', null, null, '1.12.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7c2f1b3-067e-11e3-8a3c-0019d2ce5116', '城关乡小王村卫生室', '荥阳市城关乡小王村大街', '450100', '1.12.19.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7ca265a-067e-11e3-8a3c-0019d2ce5116', '城关乡大庙村卫生室', '荥阳市城关乡大庙村', '450100', '1.12.2.', null, '4', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7d4ae47-067e-11e3-8a3c-0019d2ce5116', '城关乡皋砦村卫生室', null, null, '1.12.20.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7e15789-067e-11e3-8a3c-0019d2ce5116', '城关乡三十里铺村卫生室', null, null, '1.12.21.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7ea0af3-067e-11e3-8a3c-0019d2ce5116', '城关乡高袁寨村卫生室', null, null, '1.12.22.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c7f60501-067e-11e3-8a3c-0019d2ce5116', '城关乡宫寨村卫生室', null, null, '1.12.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c80086fc-067e-11e3-8a3c-0019d2ce5116', '城关乡付河村卫生室', null, null, '1.12.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c809b3eb-067e-11e3-8a3c-0019d2ce5116', '城关乡王庄村卫生室', null, null, '1.12.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c8132736-067e-11e3-8a3c-0019d2ce5116', '城关乡龙泉寺村卫生室', null, null, '1.12.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c81d9be6-067e-11e3-8a3c-0019d2ce5116', '城关乡安庄村卫生室', null, null, '1.12.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c8288c0e-067e-11e3-8a3c-0019d2ce5116', '城关乡瓦窑坡村卫生室', null, null, '1.12.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c83337d2-067e-11e3-8a3c-0019d2ce5116', '城关乡上集村卫生室', null, null, '1.12.29.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c840296e-067e-11e3-8a3c-0019d2ce5116', '城关乡雷垌村卫生室', null, null, '1.12.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c84a248d-067e-11e3-8a3c-0019d2ce5116', '城关乡杨垌村卫生室', null, null, '1.12.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c856d333-067e-11e3-8a3c-0019d2ce5116', '城关乡洪界村卫生室', null, null, '1.12.5.', null, '7', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c861f01b-067e-11e3-8a3c-0019d2ce5116', '城关乡五龙寨村卫生室', null, null, '1.12.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c86dd695-067e-11e3-8a3c-0019d2ce5116', '城关乡东史村卫生室', null, null, '1.12.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c87d48cf-067e-11e3-8a3c-0019d2ce5116', '城关乡大王村卫生室', null, null, '1.12.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c8882e78-067e-11e3-8a3c-0019d2ce5116', '城关乡李克寨村卫生室', null, null, '1.12.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9150eb7-067e-11e3-8a3c-0019d2ce5116', '刘河镇刘河村卫生室', null, null, '1.13.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c91f868e-067e-11e3-8a3c-0019d2ce5116', '刘河镇陈家岗村卫生室', null, null, '1.13.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c933330d-067e-11e3-8a3c-0019d2ce5116', '刘河镇分水岭村卫生室', null, null, '1.13.11.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9396c43-067e-11e3-8a3c-0019d2ce5116', '刘河镇石庄村卫生室', null, null, '1.13.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9402d99-067e-11e3-8a3c-0019d2ce5116', '刘河镇申庄村卫生室', null, null, '1.13.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c947245d-067e-11e3-8a3c-0019d2ce5116', '刘河镇任洼村卫生室', null, null, '1.13.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c94e69c0-067e-11e3-8a3c-0019d2ce5116', '刘河镇王河村卫生室', null, null, '1.13.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c957eeeb-067e-11e3-8a3c-0019d2ce5116', '刘河镇花河村卫生室', null, null, '1.13.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c95fb297-067e-11e3-8a3c-0019d2ce5116', '刘河镇窝张村卫生室', null, null, '1.13.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c967425f-067e-11e3-8a3c-0019d2ce5116', '刘河镇架子沟村卫生室', null, null, '1.13.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c96e34de-067e-11e3-8a3c-0019d2ce5116', '刘河镇官顶村卫生室', null, null, '1.13.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c974b4d9-067e-11e3-8a3c-0019d2ce5116', '刘河镇小寨村卫生室', null, null, '1.13.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c97beb95-067e-11e3-8a3c-0019d2ce5116', '刘河镇庵上村卫生室', null, null, '1.13.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9879ebd-067e-11e3-8a3c-0019d2ce5116', '刘河镇反坡村卫生室', null, null, '1.13.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c98e3eb6-067e-11e3-8a3c-0019d2ce5116', '刘河镇徐沟村卫生室', null, null, '1.13.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c99baafd-067e-11e3-8a3c-0019d2ce5116', '环翠峪司庄村卫生室', null, null, '1.14.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9aa9610-067e-11e3-8a3c-0019d2ce5116', '环翠峪村卫生室', null, null, '1.14.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9b1f2a2-067e-11e3-8a3c-0019d2ce5116', '环翠峪陈庄村卫生室', null, null, '1.14.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9bac0f8-067e-11e3-8a3c-0019d2ce5116', '环翠峪东沟村卫生室', null, null, '1.14.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9c0f997-067e-11e3-8a3c-0019d2ce5116', '环翠峪二郎庙村卫生室', null, null, '1.14.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9ce8ad7-067e-11e3-8a3c-0019d2ce5116', '贾峪镇贾峪村卫生室', null, null, '1.15.1.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9d609f2-067e-11e3-8a3c-0019d2ce5116', '贾峪镇周垌村卫生室', null, null, '1.15.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9dc0c1a-067e-11e3-8a3c-0019d2ce5116', '贾峪镇邢村卫生室', null, null, '1.15.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9e2d5a5-067e-11e3-8a3c-0019d2ce5116', '贾峪镇南王村卫生室', null, null, '1.15.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9e9dd34-067e-11e3-8a3c-0019d2ce5116', '贾峪镇石碑沟村卫生室', null, null, '1.15.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9f08a62-067e-11e3-8a3c-0019d2ce5116', '贾峪镇大堰村卫生室', null, null, '1.15.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('c9f919b8-067e-11e3-8a3c-0019d2ce5116', '贾峪镇梁沟村卫生室', null, null, '1.15.15.', '58c36e2056714d87b19fe5ae8dbe3e77', null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ca01a35c-067e-11e3-8a3c-0019d2ce5116', '贾峪镇朱顶村卫生室', null, null, '1.15.16.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('caed56e8-067e-11e3-8a3c-0019d2ce5116', '贾峪镇楚村卫生室', null, null, '1.15.17.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('caf79508-067e-11e3-8a3c-0019d2ce5116', '贾峪镇楼李村卫生室', null, null, '1.15.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('caffb2fe-067e-11e3-8a3c-0019d2ce5116', '贾峪镇高河村卫生室', '荥阳市贾峪镇高河村', '450123', '1.15.19.', null, '3', '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb08316d-067e-11e3-8a3c-0019d2ce5116', '贾峪镇上湾村卫生室', '荥阳市贾峪镇上湾村', null, '1.15.2.', null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb10c8b2-067e-11e3-8a3c-0019d2ce5116', '贾峪镇洞林寺村卫生室', null, null, '1.15.20.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb1b0f12-067e-11e3-8a3c-0019d2ce5116', '贾峪镇鹿村卫生室', null, null, '1.15.21.', null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb236ce8-067e-11e3-8a3c-0019d2ce5116', '贾峪镇郭岗村卫生室', null, '450123', '1.15.22.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb2c2fce-067e-11e3-8a3c-0019d2ce5116', '贾峪镇北沟村卫生室', null, null, '1.15.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb349090-067e-11e3-8a3c-0019d2ce5116', '贾峪镇岵山村卫生室', null, null, '1.15.24.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb3cecdf-067e-11e3-8a3c-0019d2ce5116', '贾峪镇塔山村卫生室', null, null, '1.15.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb45b487-067e-11e3-8a3c-0019d2ce5116', '贾峪镇槐林村卫生室', null, null, '1.15.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb511409-067e-11e3-8a3c-0019d2ce5116', '贾峪镇老邢村卫生室', null, null, '1.15.3.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb5c63eb-067e-11e3-8a3c-0019d2ce5116', '贾峪镇李家台村卫生室', null, null, '1.15.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb6671a5-067e-11e3-8a3c-0019d2ce5116', '贾峪镇石硼村卫生室', null, null, '1.15.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb7911f6-067e-11e3-8a3c-0019d2ce5116', '贾峪镇龙卧洼村卫生室', null, null, '1.15.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb92cb6a-067e-11e3-8a3c-0019d2ce5116', '贾峪镇双楼郭村卫生室', '贾峪镇双楼郭村卫生室', null, '1.15.7.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cb9d1851-067e-11e3-8a3c-0019d2ce5116', '贾峪镇马沟村卫生室', null, null, '1.15.8.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cba9599e-067e-11e3-8a3c-0019d2ce5116', '贾峪镇祖始村卫生室', null, null, '1.15.9.', '58c36e2056714d87b19fe5ae8dbe3e77', null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cbbf32c2-067e-11e3-8a3c-0019d2ce5116', '豫龙镇廿铺村卫生室', null, null, '1.2.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cbc9c0ab-067e-11e3-8a3c-0019d2ce5116', '豫龙镇西张寨村卫生室', null, null, '1.2.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cbd4f43b-067e-11e3-8a3c-0019d2ce5116', '豫龙镇翟砦村卫生室', null, null, '1.2.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cbdf17a4-067e-11e3-8a3c-0019d2ce5116', '豫龙镇碾徐村卫生室', null, null, '1.2.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cbe9684f-067e-11e3-8a3c-0019d2ce5116', '豫龙镇王寨村卫生室', null, null, '1.2.16.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cbf56688-067e-11e3-8a3c-0019d2ce5116', '豫龙镇赵家垌村卫生室', null, null, '1.2.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cc017c53-067e-11e3-8a3c-0019d2ce5116', '豫龙镇瓦屋孙村卫生室', null, null, '1.2.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cc0eeb01-067e-11e3-8a3c-0019d2ce5116', '豫龙镇蒋寨村卫生室', null, null, '1.2.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cc1cc816-067e-11e3-8a3c-0019d2ce5116', '豫龙镇京襄城村卫生室', '荥阳市豫龙镇京襄城村', '410121', '1.2.20.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cc2ccdeb-067e-11e3-8a3c-0019d2ce5116', '豫龙镇赵家庄村卫生室', null, null, '1.2.21.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cc37e52c-067e-11e3-8a3c-0019d2ce5116', '豫龙镇茹寨村卫生室', null, null, '1.2.22.', '00501', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ccd23a52-067e-11e3-8a3c-0019d2ce5116', '豫龙镇樊寨村卫生室', null, null, '1.2.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ccdaa283-067e-11e3-8a3c-0019d2ce5116', '豫龙镇楚寨村卫生室', null, null, '1.2.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cce2fd53-067e-11e3-8a3c-0019d2ce5116', '豫龙镇南张寨村卫生室', null, null, '1.2.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cceb775e-067e-11e3-8a3c-0019d2ce5116', '豫龙镇郝寨村卫生室', null, null, '1.2.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ccf3ff2d-067e-11e3-8a3c-0019d2ce5116', '豫龙镇兴国寺村卫生室', null, null, '1.2.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ccfcd220-067e-11e3-8a3c-0019d2ce5116', '豫龙镇石柱岗村卫生室', null, null, '1.2.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd04e374-067e-11e3-8a3c-0019d2ce5116', '豫龙镇陈庄村卫生室', '豫龙镇陈庄村', '450121', '1.2.29.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd0da0f8-067e-11e3-8a3c-0019d2ce5116', '豫龙镇关帝庙村卫生室', null, null, '1.2.30.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd1639d8-067e-11e3-8a3c-0019d2ce5116', '豫龙镇毛寨村卫生室', null, null, '1.2.31.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd225bfe-067e-11e3-8a3c-0019d2ce5116', '豫龙镇寨杨村卫生室', null, null, '1.2.32.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd2aa558-067e-11e3-8a3c-0019d2ce5116', '豫龙镇晏曲村卫生室', null, null, '1.2.33.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd359eed-067e-11e3-8a3c-0019d2ce5116', '豫龙镇焦寨村卫生室', null, null, '1.2.34.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd3f90a4-067e-11e3-8a3c-0019d2ce5116', '豫龙镇刘村卫生室', null, null, '1.2.35.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd472487-067e-11e3-8a3c-0019d2ce5116', '豫龙镇黑张村卫生室', null, null, '1.2.36.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd505c28-067e-11e3-8a3c-0019d2ce5116', '豫龙镇罗垌村卫生室', null, null, '1.2.37.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd58c3f5-067e-11e3-8a3c-0019d2ce5116', '豫龙镇柿园村卫生室', null, null, '1.2.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd609293-067e-11e3-8a3c-0019d2ce5116', '豫龙镇槐西村卫生室', null, null, '1.2.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd716c95-067e-11e3-8a3c-0019d2ce5116', '索河杨五楼村卫生室', null, null, '1.3.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd79e573-067e-11e3-8a3c-0019d2ce5116', '索河槐树洼村卫生室', null, null, '1.3.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd82736e-067e-11e3-8a3c-0019d2ce5116', '索河城关村卫生室', null, null, '1.3.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd8ab06e-067e-11e3-8a3c-0019d2ce5116', '索河惠厂村卫生室', null, null, '1.3.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cd91bcde-067e-11e3-8a3c-0019d2ce5116', '索河楚楼村卫生室', null, null, '1.3.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cda26331-067e-11e3-8a3c-0019d2ce5116', '京城堡王村卫生室', '堡王村', null, '1.4.1.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cda943f0-067e-11e3-8a3c-0019d2ce5116', '京城康砦村卫生室', '京城办事处康寨村卫生室', '450100', '1.4.2.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cdb1dd3f-067e-11e3-8a3c-0019d2ce5116', '京城石砦村卫生室', null, null, '1.4.3.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cdb89865-067e-11e3-8a3c-0019d2ce5116', '京城吉家砦村卫生室', null, null, '1.4.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cdbf3f8a-067e-11e3-8a3c-0019d2ce5116', '京城曹李村卫生室', null, null, '1.4.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cdca4080-067e-11e3-8a3c-0019d2ce5116', '京城平庄村卫生室', null, null, '1.4.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ce8b864c-067e-11e3-8a3c-0019d2ce5116', '京城冯砦村卫生室', null, null, '1.4.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ce93f531-067e-11e3-8a3c-0019d2ce5116', '京城狼窝刘村卫生室', null, null, '1.4.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cea5d9ed-067e-11e3-8a3c-0019d2ce5116', '乔楼镇东郭村卫生室', '荥阳市乔楼镇东郭村村委', '450122', '1.5.1.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ceace373-067e-11e3-8a3c-0019d2ce5116', '乔楼镇李沟村卫生室', null, null, '1.5.10.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ceb50ea4-067e-11e3-8a3c-0019d2ce5116', '乔楼镇付河村卫生室', '荥阳市乔楼镇付河村', '450122', '1.5.11.', null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cebc2f36-067e-11e3-8a3c-0019d2ce5116', '乔楼镇狮村卫生室', null, null, '1.5.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cec66a21-067e-11e3-8a3c-0019d2ce5116', '乔楼镇聂楼村卫生室', null, null, '1.5.13.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cece6cf3-067e-11e3-8a3c-0019d2ce5116', '乔楼镇冢子岗村卫生室', null, null, '1.5.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ced53019-067e-11e3-8a3c-0019d2ce5116', '乔楼镇张王庄村卫生室', null, null, '1.5.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cedc1a58-067e-11e3-8a3c-0019d2ce5116', '乔楼镇蔡寨村卫生室', null, null, '1.5.16.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cee3188d-067e-11e3-8a3c-0019d2ce5116', '乔楼镇韩村卫生室', '荥阳市乔楼镇韩村', '450122', '1.5.17.', null, '2', '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('ceeb9b67-067e-11e3-8a3c-0019d2ce5116', '乔楼镇楚堂村卫生室', null, null, '1.5.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cef4795b-067e-11e3-8a3c-0019d2ce5116', '乔楼镇孙砦村卫生室', null, null, '1.5.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf0442d4-067e-11e3-8a3c-0019d2ce5116', '乔楼镇沈洼村卫生室', null, null, '1.5.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf0ba872-067e-11e3-8a3c-0019d2ce5116', '乔楼镇七里村卫生室', '乔楼镇七里村', null, '1.5.4.', null, null, '0', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf14781c-067e-11e3-8a3c-0019d2ce5116', '乔楼镇陈寨村卫生室', null, null, '1.5.5.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf1cde38-067e-11e3-8a3c-0019d2ce5116', '乔楼镇任庄村卫生室', '荥阳市乔楼镇任庄村卫生所', null, '1.5.6.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf2a034d-067e-11e3-8a3c-0019d2ce5116', '乔楼镇陈沟村卫生室', '荥阳市乔楼镇陈沟村', '450122', '1.5.7.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '0', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf31409e-067e-11e3-8a3c-0019d2ce5116', '乔楼镇辛岗村卫生室', null, null, '1.5.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf394b41-067e-11e3-8a3c-0019d2ce5116', '乔楼镇张村庙卫生室', '荥阳市乔楼镇张村庙村卫生室', null, '1.5.9.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf46d8d9-067e-11e3-8a3c-0019d2ce5116', '广武镇插闫村卫生室', null, null, '1.6.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf4dbb32-067e-11e3-8a3c-0019d2ce5116', '广武镇霸王城村卫生室', null, null, '1.6.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf5642f8-067e-11e3-8a3c-0019d2ce5116', '广武镇汉王城村卫生室', null, null, '1.6.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf5d5369-067e-11e3-8a3c-0019d2ce5116', '广武镇白寨村卫生室', '广武镇白寨村', '450103', '1.6.12.', null, null, '0', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf6563b6-067e-11e3-8a3c-0019d2ce5116', '广武镇胡村卫生室', null, null, '1.6.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf6cc77b-067e-11e3-8a3c-0019d2ce5116', '广武镇三官村卫生室', '广武镇', '45333', '1.6.14.', null, null, '1', '66777654', '66777654', null, '45', '56', '66777654', null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf74e5ba-067e-11e3-8a3c-0019d2ce5116', '广武镇樊河村卫生室', null, null, '1.6.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('cf7b753f-067e-11e3-8a3c-0019d2ce5116', '广武镇张庄村卫生室', '荥阳市广武镇张庄村', '450103', '1.6.16.', null, null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d02b06d4-067e-11e3-8a3c-0019d2ce5116', '广武镇孙寨村卫生室', null, null, '1.6.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d03ad3e2-067e-11e3-8a3c-0019d2ce5116', '广武镇陈沟村卫生室', '广武镇陈沟村卫生室', '450100', '1.6.18.', null, null, '1', null, null, null, null, '20000', null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d0463a04-067e-11e3-8a3c-0019d2ce5116', '广武镇丁洼村卫生室', null, null, '1.6.19.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d04eb840-067e-11e3-8a3c-0019d2ce5116', '广武镇桃花峪村卫生室', null, null, '1.6.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d0565ae9-067e-11e3-8a3c-0019d2ce5116', '广武镇冯庄村卫生室', null, null, '1.6.20.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d05d2040-067e-11e3-8a3c-0019d2ce5116', '广武镇黑李村卫生室', null, null, '1.6.21.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d063bfcd-067e-11e3-8a3c-0019d2ce5116', '广武镇大师姑村卫生室', null, null, '1.6.22.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d06a8bbb-067e-11e3-8a3c-0019d2ce5116', '广武镇王沟村卫生室', null, null, '1.6.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d071766b-067e-11e3-8a3c-0019d2ce5116', '广武镇丁楼村卫生室', null, null, '1.6.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d0787a4c-067e-11e3-8a3c-0019d2ce5116', '广武镇苏寨村卫生室', null, null, '1.6.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d0810bd6-067e-11e3-8a3c-0019d2ce5116', '广武镇闫村卫生室', null, null, '1.6.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d089d131-067e-11e3-8a3c-0019d2ce5116', '广武镇桃园村卫生室', null, null, '1.6.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d093e2ac-067e-11e3-8a3c-0019d2ce5116', '广武镇任河村卫生室', null, null, '1.6.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d09c2766-067e-11e3-8a3c-0019d2ce5116', '广武镇中任村卫生室', '广武镇中任村卫生室', '450103', '1.6.29.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d0a5cd3a-067e-11e3-8a3c-0019d2ce5116', '广武镇唐垌村卫生室', '荥阳市广武镇唐垌村卫生室', '450103', '1.6.3.', null, null, null, null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d0ece86b-067e-11e3-8a3c-0019d2ce5116', '广武镇北任村卫生室', null, null, '1.6.30.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d111d837-067e-11e3-8a3c-0019d2ce5116', '广武镇军张村卫生室', null, null, '1.6.31.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d1260ec7-067e-11e3-8a3c-0019d2ce5116', '广武镇寨峪村卫生室', null, null, '1.6.32.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d1346f19-067e-11e3-8a3c-0019d2ce5116', '广武镇车大沟村卫生室', '广武镇车大沟村,', null, '1.6.33.', null, '2', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d13eb060-067e-11e3-8a3c-0019d2ce5116', '广武镇董庄村卫生室', null, null, '1.6.34.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d1483c14-067e-11e3-8a3c-0019d2ce5116', '广武镇后王村卫生室', null, null, '1.6.35.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d1519ff9-067e-11e3-8a3c-0019d2ce5116', '广武镇张河村卫生室', null, null, '1.6.36.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d16396ac-067e-11e3-8a3c-0019d2ce5116', '广武镇陈垌村卫生室', null, null, '1.6.37.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d16d907c-067e-11e3-8a3c-0019d2ce5116', '广武镇王顶村卫生室', null, null, '1.6.38.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d177bf39-067e-11e3-8a3c-0019d2ce5116', '广武镇张垌村卫生室', null, null, '1.6.39.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d1833015-067e-11e3-8a3c-0019d2ce5116', '广武镇西苏村卫生室', null, null, '1.6.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d18c1fc1-067e-11e3-8a3c-0019d2ce5116', '广武镇广武村卫生室', null, null, '1.6.40.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d196c996-067e-11e3-8a3c-0019d2ce5116', '广武镇东魏营村卫生室', null, null, '1.6.41.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d1a05aa0-067e-11e3-8a3c-0019d2ce5116', '广武镇西魏营村卫生室', null, null, '1.6.42.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d1aa8bda-067e-11e3-8a3c-0019d2ce5116', '广武镇丹阳村卫生室', null, null, '1.6.43.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d290a118-067e-11e3-8a3c-0019d2ce5116', '广武镇东苏村卫生室', null, null, '1.6.5.', null, null, '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d298ad8b-067e-11e3-8a3c-0019d2ce5116', '广武镇南董村卫生室', null, null, '1.6.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d29f18a0-067e-11e3-8a3c-0019d2ce5116', '广武镇车庄村卫生室', null, null, '1.6.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2a5ee77-067e-11e3-8a3c-0019d2ce5116', '广武镇倪店村卫生室', null, null, '1.6.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2accb69-067e-11e3-8a3c-0019d2ce5116', '广武镇水泉村卫生室', null, null, '1.6.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2ba1eb9-067e-11e3-8a3c-0019d2ce5116', '高村乡官庄村卫生室', null, null, '1.7.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2c3b338-067e-11e3-8a3c-0019d2ce5116', '高村乡张常村卫生室', null, null, '1.7.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2cb6bb5-067e-11e3-8a3c-0019d2ce5116', '高村乡高村寺村卫生室', null, null, '1.7.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2d1fa3b-067e-11e3-8a3c-0019d2ce5116', '高村乡张村卫生室', null, null, '1.7.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2d8c9c4-067e-11e3-8a3c-0019d2ce5116', '高村乡马寨村卫生室', null, null, '1.7.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2dfa98f-067e-11e3-8a3c-0019d2ce5116', '高村乡油坊村卫生室', null, null, '1.7.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2e668da-067e-11e3-8a3c-0019d2ce5116', '高村乡荆寨村卫生室', null, null, '1.7.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2ed6234-067e-11e3-8a3c-0019d2ce5116', '高村乡杜常村卫生室', null, null, '1.7.16.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2f4283e-067e-11e3-8a3c-0019d2ce5116', '高村乡穆寨村卫生室', null, null, '1.7.17.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d2fcf5c2-067e-11e3-8a3c-0019d2ce5116', '高村乡刘铺头村卫生室', null, null, '1.7.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d3058050-067e-11e3-8a3c-0019d2ce5116', '高村乡宋村卫生室', null, null, '1.7.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d30f148a-067e-11e3-8a3c-0019d2ce5116', '高村乡吴村卫生室', null, null, '1.7.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d3181fab-067e-11e3-8a3c-0019d2ce5116', '高村乡陈铺头村卫生室', '高村乡陈铺头村', '450421', '1.7.20.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d32856f8-067e-11e3-8a3c-0019d2ce5116', '高村乡牛口峪村卫生室', null, null, '1.7.21.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d331539e-067e-11e3-8a3c-0019d2ce5116', '高村乡邙山村卫生室', '高村乡邙山村', '450101', '1.7.22.', null, null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d33879b6-067e-11e3-8a3c-0019d2ce5116', '高村乡枣树沟村卫生室', null, null, '1.7.23.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d340f9b6-067e-11e3-8a3c-0019d2ce5116', '高村乡秦铺头村卫生室', null, null, '1.7.24.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d3492a7d-067e-11e3-8a3c-0019d2ce5116', '高村乡安仁寨村卫生室', null, null, '1.7.25.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d3518b1e-067e-11e3-8a3c-0019d2ce5116', '高村乡周寨村卫生室', null, null, '1.7.26.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d35adfb1-067e-11e3-8a3c-0019d2ce5116', '高村乡高村卫生室', null, null, '1.7.27.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d36347f0-067e-11e3-8a3c-0019d2ce5116', '高村乡官峪村卫生室', null, null, '1.7.28.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d36bf68f-067e-11e3-8a3c-0019d2ce5116', '高村乡刘沟村卫生室', null, null, '1.7.29.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d374ce18-067e-11e3-8a3c-0019d2ce5116', '高村乡前卷子村卫生室', null, null, '1.7.3.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d37ec5ae-067e-11e3-8a3c-0019d2ce5116', '高村乡李山村卫生室', null, null, '1.7.30.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d44fd6ed-067e-11e3-8a3c-0019d2ce5116', '高村乡后卷子村卫生室', null, null, '1.7.4.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d45937d7-067e-11e3-8a3c-0019d2ce5116', '高村乡司马村卫生室', '高村乡司马村', '450101', '1.7.5.', null, '3', '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d46804a2-067e-11e3-8a3c-0019d2ce5116', '高村乡真村卫生室', null, null, '1.7.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4727f10-067e-11e3-8a3c-0019d2ce5116', '高村乡马沟村卫生室', null, null, '1.7.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d47af249-067e-11e3-8a3c-0019d2ce5116', '高村乡韩常村卫生室', null, null, '1.7.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d48386d1-067e-11e3-8a3c-0019d2ce5116', '高村乡史坊村卫生室', null, null, '1.7.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d49646ab-067e-11e3-8a3c-0019d2ce5116', '金寨乡金寨村卫生室', null, null, '1.8.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d49fcea4-067e-11e3-8a3c-0019d2ce5116', '金寨乡楚楼村卫生室', null, null, '1.8.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4b63a3a-067e-11e3-8a3c-0019d2ce5116', '王村镇王村卫生室', null, null, '1.9.1.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4beb451-067e-11e3-8a3c-0019d2ce5116', '王村镇前新庄村卫生室', null, null, '1.9.10.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4c96de3-067e-11e3-8a3c-0019d2ce5116', '王村镇丁村卫生室', null, null, '1.9.11.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4d38c4d-067e-11e3-8a3c-0019d2ce5116', '王村镇段坊村卫生室', null, null, '1.9.12.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4ddc50c-067e-11e3-8a3c-0019d2ce5116', '王村镇仁里村卫生室', null, null, '1.9.13.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4e9c228-067e-11e3-8a3c-0019d2ce5116', '王村镇前白杨村卫生室', null, null, '1.9.14.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4f188d7-067e-11e3-8a3c-0019d2ce5116', '王村镇洼子村卫生室', null, null, '1.9.15.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d4fc558a-067e-11e3-8a3c-0019d2ce5116', '王村镇梁庄村卫生室', '荥阳市王村镇梁庄村', '450142', '1.9.16.', null, '2', '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d5043fd5-067e-11e3-8a3c-0019d2ce5116', '王村镇许庄村卫生室', null, null, '1.9.17.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d510c5f8-067e-11e3-8a3c-0019d2ce5116', '王村镇韩村卫生室', null, null, '1.9.18.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d5198400-067e-11e3-8a3c-0019d2ce5116', '王村镇草庙村卫生室', null, null, '1.9.19.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d523374e-067e-11e3-8a3c-0019d2ce5116', '王村镇房罗村卫生室', null, null, '1.9.2.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d52b96bf-067e-11e3-8a3c-0019d2ce5116', '王村镇薛村卫生室', '王村镇小村', '450142', '1.9.20.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', '2万', '5万', null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d533ebeb-067e-11e3-8a3c-0019d2ce5116', '王村镇司村卫生室', null, null, '1.9.21.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d53c4acd-067e-11e3-8a3c-0019d2ce5116', '王村镇后白杨村卫生室', null, null, '1.9.22.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d545087e-067e-11e3-8a3c-0019d2ce5116', '王村镇西大村卫生室', '王村镇西大村', '450142', '1.9.23.', '00501', null, '1', null, null, '00601', '10万', '2万', null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d54db35a-067e-11e3-8a3c-0019d2ce5116', '王村镇后殿村卫生室', null, '450142', '1.9.24.', '00501', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d555a4cd-067e-11e3-8a3c-0019d2ce5116', '王村镇竹园村卫生室', '王村镇竹园村,', '450142', '1.9.25.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d55fe357-067e-11e3-8a3c-0019d2ce5116', '王村镇木楼村卫生室', null, '450142', '1.9.3.', '00501', null, '1', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d56839c2-067e-11e3-8a3c-0019d2ce5116', '王村镇柏垛村卫生室', '荥阳市王村镇柏朵村', '450142', '1.9.4.', null, null, '0', null, null, '00601', null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d6083059-067e-11e3-8a3c-0019d2ce5116', '王村镇小村卫生室', '王村镇小村', '450142', '1.9.5.', '58c36e2056714d87b19fe5ae8dbe3e77', null, '1', null, null, '00601', '2万', '5万', null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d615390d-067e-11e3-8a3c-0019d2ce5116', '王村镇后新庄村卫生室', null, null, '1.9.6.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d61c7628-067e-11e3-8a3c-0019d2ce5116', '王村镇蒋头村卫生室', null, null, '1.9.7.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d6264f49-067e-11e3-8a3c-0019d2ce5116', '王村镇新店村卫生室', null, null, '1.9.8.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('d62dd736-067e-11e3-8a3c-0019d2ce5116', '王村镇留村卫生室', null, null, '1.9.9.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('fc078de0-4ff4-11e3-8a4f-60a44cea4388', '广武镇广武村南城卫生室', null, null, '1.6.40.', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `useryy` VALUES ('testid', '北京第一医院', '地址', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for yppmbackup
-- ----------------------------
DROP TABLE IF EXISTS `yppmbackup`;
CREATE TABLE `yppmbackup` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `BM` varchar(10) NOT NULL COMMENT '药品品目号',
  `MC` varchar(128) NOT NULL COMMENT '通用名',
  `JX` varchar(32) NOT NULL COMMENT '剂型',
  `DW` varchar(64) DEFAULT NULL COMMENT '单位',
  `ZHXS` varchar(16) NOT NULL COMMENT '转换系数',
  `LB` varchar(32) DEFAULT NULL COMMENT '药品类别',
  `ZT` char(1) DEFAULT NULL COMMENT '状态',
  `ZL` varchar(16) DEFAULT NULL COMMENT '装量',
  `HL` varchar(16) DEFAULT NULL COMMENT '含量',
  `YB` char(1) DEFAULT NULL COMMENT '是否医保',
  `YBBM` varchar(128) DEFAULT NULL COMMENT '医保编码',
  `BZ` varchar(200) DEFAULT NULL COMMENT '备注',
  `VCHAR1` varchar(768) DEFAULT NULL,
  `VCHAR2` varchar(128) DEFAULT NULL,
  `VCHAR3` varchar(128) DEFAULT NULL,
  `GG` varchar(128) DEFAULT NULL COMMENT '规格',
  PRIMARY KEY (`ID`),
  KEY `AK_YYPM_NEWINDEX1_YPPM` (`BM`),
  KEY `AK_YYPM_NEWINDEX2_YPPM` (`ZHXS`,`GG`,`MC`,`JX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yppmbackup
-- ----------------------------

-- ----------------------------
-- Table structure for ypxx
-- ----------------------------
DROP TABLE IF EXISTS `ypxx`;
CREATE TABLE `ypxx` (
  `ID` varchar(32) NOT NULL,
  `BM` varchar(32) NOT NULL COMMENT '药品流水号',
  `SCQYMC` varchar(128) NOT NULL COMMENT '生产企业名称',
  `SPMC` varchar(64) NOT NULL COMMENT '商品名',
  `ZBJG` float NOT NULL COMMENT '中标价',
  `ZPDZ` varchar(128) DEFAULT NULL COMMENT '产品照片',
  `PZWH` varchar(64) DEFAULT NULL COMMENT '批准文号',
  `PZWHYXQ` datetime DEFAULT NULL COMMENT '批准文号有效期',
  `JKY` char(1) DEFAULT NULL COMMENT '是否进口药',
  `BZCZ` varchar(64) DEFAULT NULL COMMENT '包装材质',
  `BZDW` varchar(64) DEFAULT NULL COMMENT '包装单位',
  `LSJG` float DEFAULT NULL COMMENT '最新零售价',
  `LSJGCC` varchar(64) DEFAULT NULL COMMENT '零售价出处',
  `ZLCC` varchar(32) DEFAULT NULL COMMENT '质量层次',
  `ZLCCSM` varchar(200) DEFAULT NULL COMMENT '质量层次说明',
  `YPJYBG` char(1) DEFAULT NULL COMMENT '有无药品检验报告',
  `YPJYBGBM` varchar(128) DEFAULT NULL COMMENT '药品检验报告编号',
  `YPJYBGYXQ` datetime DEFAULT NULL COMMENT '药品检验报告有效期',
  `CPSM` text COMMENT '产品说明',
  `JYZT` char(1) NOT NULL COMMENT '药品交易状态',
  `VCHAR1` varchar(128) DEFAULT NULL,
  `VCHAR2` varchar(128) DEFAULT NULL,
  `VCHAR3` varchar(128) DEFAULT NULL,
  `DW` varchar(32) DEFAULT NULL COMMENT '单位',
  `MC` varchar(128) DEFAULT NULL COMMENT '通用名',
  `JX` varchar(32) DEFAULT NULL COMMENT '剂型',
  `GG` varchar(128) DEFAULT NULL COMMENT '规格',
  `ZHXS` varchar(16) DEFAULT NULL COMMENT '转换系数',
  `PINYIN` varchar(768) DEFAULT NULL COMMENT '通用名拼音',
  `LB` varchar(32) DEFAULT NULL COMMENT '药品类别',
  PRIMARY KEY (`ID`),
  KEY `AK_YYXX_NEWINDEX1_YPXX` (`BM`),
  KEY `AK_YYXX_NEWINDEX2_YPXX` (`SCQYMC`,`SPMC`,`MC`,`JX`,`GG`,`ZHXS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ypxx
-- ----------------------------
INSERT INTO `ypxx` VALUES ('002fe86ad6d44d209a34b802bca46d34', '200084', '山东罗欣药业股份有限公司', '左氧氟沙星', '0.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '左氧氟沙星', '片剂', '0.1g', '10', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('0035e28a704c414ea0d957739a1c998d', '200085', '北京利祥制药有限公司', '?', '6.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '水溶性维生素', '粉针', '/', '1', 'srxwss', null);
INSERT INTO `ypxx` VALUES ('005aacc7a5a24b1087da0d76ff7146e5', '200086', '河南省宛西制药股份有限公司', '复方丹参丸', '13.18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方丹参丸', '水丸', '0.2g', '120', 'ffdsw,ffdcw', null);
INSERT INTO `ypxx` VALUES ('0072e55c308c41d2b4a39960ac98d45b', '200087', '江苏润邦药业有限公司', '邦利甘欣', '17.74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甘草酸二铵', '胶囊', '50mg', '36', 'gcsea', null);
INSERT INTO `ypxx` VALUES ('007698f6ac20453fba40266261718a96', '200088', '江西药都樟树制药有限公司', '六味地黄丸', '3.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '六味地黄丸', '水蜜丸', '6g', '10', 'lwdhw', null);
INSERT INTO `ypxx` VALUES ('0091756e0a4b4029ab0031a4e7a58a3c', '200089', '贵州圣济堂制药有限公司', '盐酸二甲双胍肠溶片', '6.39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '二甲双胍', '肠溶片', '0.5g', '30', 'ejsg', null);
INSERT INTO `ypxx` VALUES ('01628775298146cb848e5f1fc69c66a8', '200090', '浙江康恩贝制药股份有限公司', '盐酸氨溴索注射液', '3.03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨溴索', '注射液', '2ml:15mg', '1', 'axs', null);
INSERT INTO `ypxx` VALUES ('021a69980e874d5781460c3bd7e3b994', '200407', '远大医药（中国）有限公司', '酒石酸美托洛尔片', '6.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '美托洛尔', '片剂', '50mg', '20', 'mtle', null);
INSERT INTO `ypxx` VALUES ('0227319a4140473e844219275ce806b7', '200091', '海口奇力制药股份有限公司', '阿奇霉素分散片', '1.86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿奇霉素', '分散片', '0.125g', '6', 'ajms,ejms,aqms,eqms', null);
INSERT INTO `ypxx` VALUES ('0230f23805f348ef81a6deb6a7880fcb', '200092', '黑龙江珍宝岛药业股份有限公司', '血塞通', '23.46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '血塞通', '粉针', '0.2g', '1', 'xst', null);
INSERT INTO `ypxx` VALUES ('02a84b6e2c4e40c484ff76d1bc186570', '200093', '北京星昊医药股份有限公司', '甲钴胺胶囊', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甲钴胺', '胶囊', '0.5mg', '24', 'jga', null);
INSERT INTO `ypxx` VALUES ('0314d7c46595495ab38b736286fb9423', '200094', '海南中宝制药股份有限公司', '对乙酰氨基酚', '1.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '对乙酰氨基酚', '胶囊', '0.3g', '20', 'dyxajf', null);
INSERT INTO `ypxx` VALUES ('032aaa036c3542798eb0049a96309def', '200095', '天津市中央药业有限公司', '无', '4.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '冠心苏合软胶囊', '软胶囊', '0.31g', '20', 'gxsgrjn,gxshrjn', null);
INSERT INTO `ypxx` VALUES ('034db1a65659488d89fd3ddebaa2e435', '200096', '上海现代哈森(商丘)药业有限公司', '甘草酸二铵注射液', '0.67', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '甘草酸二铵', '注射液', '10ml:50mg', '1', 'gcsea', null);
INSERT INTO `ypxx` VALUES ('03c5eac24a9f4fb7839ffca7c038f7e6', '200097', '天津药业集团新郑股份有限公司', '无', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氟康唑', '片剂', '0.1g', '6', 'fkz', null);
INSERT INTO `ypxx` VALUES ('03c7afd143414bf78617d48721a6dff8', '200098', '宜昌人福药业有限责任公司', '乙酰螺旋霉素片', '0.56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '乙酰螺旋霉素', '片剂', '0.1g', '12', 'yxlxms', null);
INSERT INTO `ypxx` VALUES ('03d23f9392354be3b2b102529281ab5c', '200099', '哈尔滨华雨制药集团有限公司', '银黄片', '1.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银黄片', '片剂', '0.25g', '24', 'yhp', null);
INSERT INTO `ypxx` VALUES ('045befb855604a49a85fd35651558473', '200100', '济南永宁制药股份有限公司', '氨苯蝶啶', '5.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氨苯蝶啶', '片剂', '50mg', '100', 'abdd', null);
INSERT INTO `ypxx` VALUES ('04605292170b4a8d89e92cef56a3a88f', '200408', '四川逢春制药有限公司', '复方丹参片', '3.76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '复方丹参片', '片剂', '/', '60', 'ffdsp,ffdcp', null);
INSERT INTO `ypxx` VALUES ('0498f9597ae3489bbef15ecd502611d5', '200101', '江苏润邦药业有限公司', '邦利甘欣', '12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甘草酸二铵', '胶囊', '50mg', '24', 'gcsea', null);
INSERT INTO `ypxx` VALUES ('04cb0d607cd440c286fa3f8fc3816340', '200102', '武汉健民药业集团股份有限公司', '耳聋左慈丸', '5.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '耳聋左慈丸', '水蜜丸', '60g', '1', 'elzcw', null);
INSERT INTO `ypxx` VALUES ('04f12f0e8de34d0ab6fe104a28eea0e9', '200206', '河北天成药业股份有限公司', '碳酸氢钠注射液', '0.14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '碳酸氢钠', '注射液', '10ml:0.5g', '1', 'tsqn', null);
INSERT INTO `ypxx` VALUES ('052bd08468054a508945edc0663ef907', '200207', '天津力生制药股份有限公司', '维生素B4', '3.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '维生素B4', '片剂', '10mg', '100', 'wssb4', null);
INSERT INTO `ypxx` VALUES ('05c4a8928cfa4cd3b27f250a563f7159', '200208', '浙江泰利森药业有限公司', '纳欣同', '26.17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '硝苯地平', '缓释片', '20mg', '60', 'xbdp', null);
INSERT INTO `ypxx` VALUES ('067bd0c00aa34e8e860a2842f46865a3', '200209', '悦康药业集团北京凯悦制药有限公司', '阿昔洛韦', '0.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '阿昔洛韦', '软膏剂', '10g:0.3g', '1', 'axlw,exlw', null);
INSERT INTO `ypxx` VALUES ('070d3f60e1964ef98cefadf3f9519525', '200210', '西安安健药业有限公司', '无', '36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '口服补液盐Ⅲ', '散剂', '5.125g', '6', 'kfbyyⅲ', null);
INSERT INTO `ypxx` VALUES ('07269f7292594b419ff703da7df3bb4c', '200211', '辽宁好护士药业(集团)有限责任公司', '尪痹片', '35.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '尪痹片', '片剂', '0.5g', '48', 'wbp', null);
INSERT INTO `ypxx` VALUES ('0740a64ebb9a4c88b9fc8e00d0536a1c', '200212', '湖北东信药业有限公司', '甲硝唑栓', '2.46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甲硝唑', '栓剂', '0.5g', '10', 'jxz', null);
INSERT INTO `ypxx` VALUES ('07e12db4a973415b844e31ac60059bdd', '200409', '上海旭东海普药业有限公司', '无', '2.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '加兰他敏', '注射液', '1ml:5mg', '1', 'jltm', null);
INSERT INTO `ypxx` VALUES ('086ea1e0ca6e4b22a8d49b1118fcf33b', '200213', '西南药业股份有限公司', '阿莫西林分散片', '1.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林', '分散片', '0.125g', '12', 'amxl,emxl', null);
INSERT INTO `ypxx` VALUES ('0893333f6d6d471a96f18979267cc8fa', '200214', '吉林省集安益盛药业股份有限公司', '心脑康胶囊', '4.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '心脑康胶囊', '胶囊', '0.25g', '36', 'xnkjn', null);
INSERT INTO `ypxx` VALUES ('08fbc75ee63f40718770b4ca671ad75a', '200215', '江西汇仁药业有限公司', '邦能', '9.03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '多潘立酮', '分散片', '10mg', '30', 'dplt', null);
INSERT INTO `ypxx` VALUES ('0947a91fc1c04c6fbd70c20a1c9b6b3f', '200216', '开封制药', '甘草片', '8.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甘草片', '片剂', '复方', '100', 'gcp', null);
INSERT INTO `ypxx` VALUES ('09ba295471b7453e92443155b1ac77b5', '200789', '上海信谊药厂有限公司', '无', '16.97', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甲氨蝶呤', '片剂', '2.5mg', '100', 'jadl', null);
INSERT INTO `ypxx` VALUES ('09ef367a3eb14edeadbecfbd13d2f718', '200217', '桂林华信制药有限公司', '缬沙坦分散片', '24.32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '缬沙坦', '分散片', '80mg', '14', 'xst', null);
INSERT INTO `ypxx` VALUES ('09faeb5d29ee4b10adf42a6b6a433272', '200218', '安徽宏业药业有限公司', '干酵母', '0.37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '干酵母', '片剂', '0.2g', '100', 'gjm,gxm', null);
INSERT INTO `ypxx` VALUES ('0abf9139cd7942e09655a707b83a8237', '200219', '河南科伦药业有限公司', '5%葡萄糖', '1.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '5%葡萄糖', '大输液', '500ml(塑瓶)', '1', '5%ptt', null);
INSERT INTO `ypxx` VALUES ('0b9dca622532445383ede91dd4ecf509', '200410', '石家庄四药有限公司', '右旋糖酐40氯化钠', '3.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '右旋糖酐40氯化钠', '大输液', '500ml:30g:4.5g', '1', 'yxtg40lhn', null);
INSERT INTO `ypxx` VALUES ('0bc5fbcc037e4ed08d803f060a10a62d', '200220', '亚宝药业集团股份有限公司', '亚宝力维', '6.49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甲钴胺', '片剂', '0.5mg', '20', 'jga', null);
INSERT INTO `ypxx` VALUES ('0bf087a5ab8a49c6b5cbbffe953bd1ff', '200221', '西南药业股份有限公司', '散列通', '5.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '复方对乙酰氨基酚(II)', '片剂', '对乙酰氨基酚0.25g:无水咖啡因50mg:异丙安替比林0.15g', '10', 'ffdyxajf(ii)', null);
INSERT INTO `ypxx` VALUES ('0c437a8b2ef94d77b8e332516be8bf8b', '200222', '广州白云山天心制药股份有限公司', '施迪欣', '5.81', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '阿莫西林/克拉维酸钾', '粉针', '0.3g(5:1)', '1', 'emxl/klwsj,amxl/klwsj', null);
INSERT INTO `ypxx` VALUES ('0cc65179571d4bf79288241a9c8b5c09', '200223', '武汉五景药业有限公司', '利福平', '0.62', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '利福平', '滴眼液', '10ml:5mg', '1', 'lfp', null);
INSERT INTO `ypxx` VALUES ('0ce5764adb6942089d8656c038d5fd55', '200224', '江苏亚邦爱普森药业有限公司', '盐酸左氧氟沙星滴眼液', '4.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '左氧氟沙星', '滴眼液', '5ml:15mg', '1', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('0d66d3b2c5c44a6b86c41005cc69e0d6', '200225', '东药集团沈阳施德药业有限公司', '泰洛平', '25.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '吡格列酮', '胶囊', '15mg', '20', 'pglt,bglt', null);
INSERT INTO `ypxx` VALUES ('0d958164677e4d64a23b25e145b4c3fd', '200411', '烟台只楚药业有限公司', '硫酸庆大霉素片', '8.05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '庆大霉素', '片剂', '40mg', '100', 'qdms', null);
INSERT INTO `ypxx` VALUES ('0d96f45f6023450daef5bacb8c2b8be4', '200226', '天津药业集团新郑股份有限公司', '无', '1.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '肾上腺素', '注射液', '1ml:1mg', '1', 'ssxs', null);
INSERT INTO `ypxx` VALUES ('0da3e9def2ad4002bb1ffce8324cd9eb', '200227', '雷允上药业有限公司', '六神丸', '10.45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '六神丸', '水丸', '10(3.125g/1000)', '6', 'lsw', null);
INSERT INTO `ypxx` VALUES ('0db63f8dc6ee4bee844b12d2a54402c4', '200384', '上海信谊药厂有限公司', '无', '15.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氢化可的松', '片剂', '20mg', '100', 'qhkds', null);
INSERT INTO `ypxx` VALUES ('0dc9b8d94643428488fbc7bcf6826a84', '200228', '武汉人福药业有限责任公司', '迪尔诺', '2.51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '布洛芬', '混悬液', '25ml:0.5g', '1', 'blf', null);
INSERT INTO `ypxx` VALUES ('0df54ee3f0aa4b339b7b81569938e792', '200229', '山东健康药业有限公司', '咪康唑', '1.05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '咪康唑', '软膏剂', '10g:0.2g', '1', 'mkz', null);
INSERT INTO `ypxx` VALUES ('0e64c6a4e76f45ea9cead3cb44a6319a', '200230', '湖南千金湘江药业股份有限公司', '缬沙坦', '7.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '缬沙坦', '胶囊', '80mg', '7', 'xst', null);
INSERT INTO `ypxx` VALUES ('0f28ec9fcd8c4f90af5bea7253edb026', '200231', '通化东宝药业股份有限公司', '甘舒霖30R', '46.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '30/70混合重组人胰岛素', '注射液', '10ml:400IU', '1', '30/70hhczryds,30/70hgzzryds,30/70hgczryds,30/70hhzzryds', null);
INSERT INTO `ypxx` VALUES ('0f2b57c01238482ea8eb816081782baf', '200232', '广东益和堂制药有限公司', '无', '3.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '槐角丸', '水蜜丸', '60g', '1', 'hjw', null);
INSERT INTO `ypxx` VALUES ('0f4cd71400ff400c9ae752518a529199', '200233', '辅仁药业集团有限公司', '双嘧达莫', '1.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '双嘧达莫', '片剂', '25mg', '100', 'smdm', null);
INSERT INTO `ypxx` VALUES ('0f71ca345cee465e8d7898f7fd5589b2', '200234', '马鞍山丰原制药有限公司', '缩宫素', '0.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '缩宫素', '注射液', '1ml:10U', '1', 'sgs', null);
INSERT INTO `ypxx` VALUES ('0f81075ffd8149a5be9953850820a6f2', '200235', '亚宝药业集团股份有限公司', '葛根素', '1.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '葛根素', '注射液', '5ml:0.2g', '1', 'ggs', null);
INSERT INTO `ypxx` VALUES ('0fa4efc77f6941acbf690c5e6c793d92', '200236', '苏州第三制药厂有限责任公司', '尼莫地平胶囊', '3.54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '尼莫地平', '胶囊', '20mg', '50', 'nmdp', null);
INSERT INTO `ypxx` VALUES ('10ab120cecb540cb894280efbd99c4be', '200412', '哈药集团三精制药股份有限公司', '氨茶碱', '0.22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨茶碱', '注射液', '10ml:0.25g', '1', 'acj', null);
INSERT INTO `ypxx` VALUES ('10eaea9fbd434bf39096cf6268057445', '200237', '深圳信立泰药业股份有限公司', '信希汀', '26.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢西丁', '粉针', '1.0g', '1', 'tbxd,tbxz', null);
INSERT INTO `ypxx` VALUES ('1115dd8d105940d99a93c52a849b1735', '200238', '河南百年康鑫药业有限公司', '黄连上清丸', '3.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '黄连上清丸', '水丸', '6g', '10', 'hlsqw', null);
INSERT INTO `ypxx` VALUES ('1136d643e1ce4e5dac51bf0f471ee73c', '200239', '山东罗欣药业股份有限公司', '罗欣快宇', '1.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿奇霉素', '颗粒剂', '0.1g', '4', 'ajms,ejms,aqms,eqms', null);
INSERT INTO `ypxx` VALUES ('113ed8a58b904d399f2b8953f3c511d6', '200240', '芜湖张恒春药业有限公司', '香砂六君丸', '3.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '香砂六君丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'xsljw', null);
INSERT INTO `ypxx` VALUES ('1163be770fac40ffbd89ec681d13ac07', '200241', '河南太龙药业股份有限公司', '10%葡萄糖', '1.24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '10%葡萄糖', '大输液', '500ml', '1', '10%ptt', null);
INSERT INTO `ypxx` VALUES ('11af73a58269462b958d5e6ab7e78b17', '200242', '江西银涛药业有限公司', '布洛芬胶囊', '1.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '布洛芬', '胶囊', '0.2g', '20', 'blf', null);
INSERT INTO `ypxx` VALUES ('1203a215994e4948a5c718c180ba6d6f', '200243', '杭州民生药业有限公司', '无', '2.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '山莨菪碱', '片剂', '5mg', '100', 'sldj', null);
INSERT INTO `ypxx` VALUES ('120d5e41f9634390b3112a1f43fd5b9e', '200244', '广东环球制药有限公司', '/', '14.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '生脉胶囊', '胶囊', '/', '30', 'smjn', null);
INSERT INTO `ypxx` VALUES ('123ffec8da544c15948be6fa3cd5924c', '200413', '河南天地药业股份有限公司', '醒脑静注射液', '8.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '醒脑静注射液', '注射液', '2ml', '1', 'xnjzyy,xnjzsy', null);
INSERT INTO `ypxx` VALUES ('135c294b1178417aa22a99873a2fe647', '200245', '天津金耀集团湖北天药药业股份有限公司', '利巴韦林', '0.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '利巴韦林', '注射液', '2ml:0.25g', '1', 'lbwl', null);
INSERT INTO `ypxx` VALUES ('1369c8e22f4d46e7aac6c875bc546d0a', '200246', '山西杨文水', '银翘解毒丸', '3.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银翘解毒丸', '大蜜丸', '9g', '10', 'yqjdw,yqxdw', null);
INSERT INTO `ypxx` VALUES ('1374ac5a82d547c48ec9def9d6488511', '200247', '山东华鲁制药有限公司', '非诺贝特胶囊', '2.02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '非诺贝特', '胶囊', '0.1g', '20', 'fnbt', null);
INSERT INTO `ypxx` VALUES ('147104c23dcc4de78a464f40248c9283', '200248', '上海禾丰制药有限公司', '洛贝林', '0.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '洛贝林', '注射液', '1ml:3mg', '1', 'lbl', null);
INSERT INTO `ypxx` VALUES ('14cd5dea3eff4f11919fa13667045a43', '200249', '开封制药(集团)有限公司', '50%葡萄糖', '0.26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '50%葡萄糖', '注射液', '20ml', '1', '50%ptt', null);
INSERT INTO `ypxx` VALUES ('16118b75471343d5b2a7a5e72ee22612', '200250', '浙江众益药业有限公司', '盐酸环丙沙星胶囊', '1.02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '环丙沙星', '胶囊', '0.25g', '10', 'hbsx', null);
INSERT INTO `ypxx` VALUES ('16162f8aaebc49d0a00ffc3d8d60a7c9', '200251', '湖北诺得胜制药有限公司', '天王补心丸', '3.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '天王补心丸', '水蜜丸', '60g', '1', 'twbxw', null);
INSERT INTO `ypxx` VALUES ('175f0c9d3f2e4d8a8e6cb8eedceebda6', '200252', '河南天方药业股份有限公司', '曲克芦丁', '4.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '曲克芦丁', '片剂', '60mg', '100', 'qklz,qkld', null);
INSERT INTO `ypxx` VALUES ('1777a34e931a4d4b9b0e3e80752252da', '200253', '河北神威药业有限公司', '清开灵注射液', '1.21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '清开灵注射液', '注射液', '10ml', '1', 'qklzsy,qklzyy', null);
INSERT INTO `ypxx` VALUES ('17c2b806bb0b46ebaaf482d40457cb34', '200254', '百善（唐山）药业有限公司', '人参健脾片', '16.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '人参健脾片', '片剂', '0.25g', '24', 'rcjpp,rsjpp', null);
INSERT INTO `ypxx` VALUES ('17c80d1031244812b1134e64bf91e4a2', '200414', '九寨沟天然药业集团有限责任公司', '壮骨麝香止痛膏', '2.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '壮骨麝香止痛膏', '橡胶膏剂', '7cm*10cm', '10', 'zgsxztg', null);
INSERT INTO `ypxx` VALUES ('18162392eecc40dead7ec721644096a5', '200255', '亚宝药业大同制药有限公司', '牛黄上清丸', '2.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '牛黄上清丸', '大蜜丸', '6g', '10', 'nhsqw', null);
INSERT INTO `ypxx` VALUES ('1817b2127f5549fc8ad7d5579778208b', '200256', '成都康弘制药有限公司', '松龄血脉康胶囊', '49.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '松龄血脉康胶囊', '胶囊', '0.5g', '60', 'slxmkjn', null);
INSERT INTO `ypxx` VALUES ('18b869252b814daca4b06dc363d11f5a', '200257', '四川禾润制药有限公司', '元胡止痛片', '4.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '元胡止痛片', '片剂', '/', '100', 'yhztp', null);
INSERT INTO `ypxx` VALUES ('18e228817fb745fa8cfd1e0c025aa6e9', '200258', '上海现代制药股份有限公司', '依那普利', '3.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '依那普利', '片剂', '5mg', '16', 'ynpl', null);
INSERT INTO `ypxx` VALUES ('190c9d851bd6447386ea3750b21e8468', '200103', '雷允上药业有限公司', '无', '28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '六神丸', '水丸', '10(3.125g/1000)', '12', 'lsw', null);
INSERT INTO `ypxx` VALUES ('1a51b21691b048e397cd8c93e0a96e8d', '200104', '海口奇力制药股份有限公司', '银杏叶片', '1.28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银杏叶片', '片剂', '总黄酮醇苷9.6mg:萜类内酯2.4mg', '24', 'yxyp,yxxp', null);
INSERT INTO `ypxx` VALUES ('1a60fc7daf91429f9e9057beb5bfd6bb', '200105', '山东省平原制药厂', '硝酸甘油片', '2.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '硝酸甘油', '片剂', '0.5mg', '100', 'xsgy', null);
INSERT INTO `ypxx` VALUES ('1aa03c627911414db92c25d54a208b01', '200415', '远大医药（中国）有限公司', '复方阿司匹林', '2.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方阿司匹林', '片剂', '乙酰水杨酸0.22g:非那西丁0.15g:咖啡因35mg', '100', 'ffesyl,ffespl,ffasyl,ffaspl', null);
INSERT INTO `ypxx` VALUES ('1aaa915e053f40a4bb357cccfcef0865', '200106', '浙江昂利康制药有限公司', '多潘立酮片', '2.77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '多潘立酮', '片剂', '10mg', '30', 'dplt', null);
INSERT INTO `ypxx` VALUES ('1b16482b4ee2434887ec529c13faa46f', '200107', '云南白药集团股份有限公司', '云南白药酊', '7.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '云南白药酊', '酊剂', '30ml', '1', 'ynbyd', null);
INSERT INTO `ypxx` VALUES ('1b7152e2c2964dfeb53ef3ddd6b1dd92', '200108', '悦康药业集团有限公司', '更昔洛韦', '1.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '更昔洛韦', '粉针', '0.25g', '1', 'gxlw', null);
INSERT INTO `ypxx` VALUES ('1bd5f3b689834a9ba8f8c5f6ffbba35f', '200109', '浙江海正药业股份有限公司', '马来酸依那普利胶囊', '10.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '马来酸依那普利胶囊', '胶囊', '10mg', '10', 'mlsynpljn', null);
INSERT INTO `ypxx` VALUES ('1bf07719447e44ee9db74115fc8bb3a0', '200110', '沈阳红药制药股份有限公司', '冠心苏合丸', '5.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '冠心苏合丸', '大蜜丸', '1.12g', '30', 'gxshw,gxsgw', null);
INSERT INTO `ypxx` VALUES ('1c0b56e3bd4140878dc95836dd312d54', '200111', '石家庄四药有限公司', '甘油果糖', '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甘油果糖', '大输液', '250ml:25g:12.5g:2.25g', '1', 'gygt', null);
INSERT INTO `ypxx` VALUES ('1c235969061842d699bd96717e8860de', '200112', '辰欣药业股份有限公司', '地塞米松磷酸钠注射液', '0.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '地塞米松磷酸钠', '注射液', '1ml:5mg', '1', 'dsmslsn', null);
INSERT INTO `ypxx` VALUES ('1c7a3942860547dca572acabea052dd9', '200113', '天津药业集团新郑股份有限公司', '无', '0.29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '开塞露', '溶液剂', '20ml', '1', 'ksl', null);
INSERT INTO `ypxx` VALUES ('1ce3333f192544369d3f452ace6741ad', '200114', '药都制药集团股份有限公司', '艾附暖宫丸', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '艾附暖宫丸', '大蜜丸', '9g', '10', 'yfngw,afngw', null);
INSERT INTO `ypxx` VALUES ('1d0178b9b21e4819bc573b514bd1adf2', '200115', '必康制药江苏有限公司', '洛伐他汀', '4.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '洛伐他汀', '胶囊', '20mg', '12', 'lftt', null);
INSERT INTO `ypxx` VALUES ('1d194c40b8fd48729ec8ecd555f8ae2e', '200416', '深圳致君制药有限公司', '联力克', '20.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '愈酚伪麻待因', '口服液', '60ml(每10ml溶液含磷酸可待因20mg:愈创木酚甘油醚200mg:盐酸伪麻黄碱60mg)', '1', 'yfwmdy', null);
INSERT INTO `ypxx` VALUES ('1dc13a2ab4204d629a0431dc117d7c62', '200385', '江西荣裕药业集团有限公司', '元胡止痛胶囊', '3.62', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '元胡止痛胶囊', '胶囊', '0.25g', '24', 'yhztjn', null);
INSERT INTO `ypxx` VALUES ('1e94554188204afe88dcc9ce5422971c', '200116', '哈尔滨圣泰药业有限公司', '?', '17.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '小儿热速清颗粒', '注射液', '2g', '8', 'xrrsqkl,xersqkl', null);
INSERT INTO `ypxx` VALUES ('1f10ac2dc1ba4b3ea481854e883d5ede', '200117', '河南科伦药业有限公司', '葡萄糖氯化钠', '1.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '葡萄糖氯化钠', '大输液', '500ml(塑瓶)', '1', 'pttlhn', null);
INSERT INTO `ypxx` VALUES ('1f3806865be74f95b47ccf610b0fb43b', '200118', '湖南五洲通药业有限责任公司', '尼莫地平', '1.69', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '尼莫地平', '注射液', '10ml:2mg', '1', 'nmdp', null);
INSERT INTO `ypxx` VALUES ('1f52761d33b242ad948de7018fb6b707', '200119', '湖北潜江制药股份有限公司', '阿昔洛韦', '0.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '阿昔洛韦', '粉针', '0.25g', '1', 'axlw,exlw', null);
INSERT INTO `ypxx` VALUES ('1f5fcf911f534472a87b8be7135ee72b', '200120', '山东沃华医药科技股份有限公司', '补中益气丸', '3.49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '补中益气丸', '大蜜丸', '9g', '10', 'bzyqw', null);
INSERT INTO `ypxx` VALUES ('1fa5eef6df3d45db839902870e5a3ea3', '200121', '哈药集团三精制药股份有限公司', '阿米卡星', '0.27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '阿米卡星', '注射液', '2ml:0.2g', '1', 'amqx,amkx,emkx,emqx', null);
INSERT INTO `ypxx` VALUES ('1fae266bd1324b8881c70bd3154a283b', '200417', '河南禹州市药王制药有限公司', '人参健脾丸', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '人参健脾丸', '大蜜丸', '6g', '10', 'rsjpw,rcjpw', null);
INSERT INTO `ypxx` VALUES ('1fb005a44a5c429592218b5367dc10ae', '200122', '瑞阳制药有限公司', '无', '0.69', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '青霉素钠', '粉针', '400WU', '1', 'qmsn', null);
INSERT INTO `ypxx` VALUES ('20ba154eb76d407cb1055b0b759b4a39', '200123', '甘肃陇神戎发制药有限公司', '元胡止痛滴丸', '22.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '元胡止痛滴丸', '滴丸', '0.5g/10', '180', 'yhztdw', null);
INSERT INTO `ypxx` VALUES ('20bc317dca9547e39126031f09ba1971', '200124', '上海金不换兰考制药有限公司', '吲哚美辛', '2.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '吲哚美辛', '片剂', '25mg', '100', 'ydmx', null);
INSERT INTO `ypxx` VALUES ('20d61eab0e6e4cb09edc1f0560f2c6c5', '200125', '河南科伦药业有限公司', '0.9%氯化钠', '1.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '0.9%氯化钠', '大输液', '250ml(塑瓶)', '1', '0.9%lhn', null);
INSERT INTO `ypxx` VALUES ('213cd1891f1f43a8997ad0d5049583e5', '200126', '山东罗欣药业股份有限公司', '克林霉素', '2.39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '克林霉素', '粉针', '0.6g', '1', 'klms', null);
INSERT INTO `ypxx` VALUES ('2187a10f74994a4e8d9acf8e1f5b48f3', '200127', '江西银涛药业有限公司', '环磷腺苷注射液', '9.52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '环磷腺苷', '注射液', '5ml:20mg', '1', 'hlxg', null);
INSERT INTO `ypxx` VALUES ('21c25a089a1b4c7fa440fe81f3dfa252', '200128', '山东百草药业有限公司', '如意金黄散', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '如意金黄散', '散剂', '9g', '10', 'ryjhs', null);
INSERT INTO `ypxx` VALUES ('21d2e95dea7e440180809b3e0bcd5ebe', '200129', '海南海灵化学制药有限公司', '辛伐他汀', '2.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '辛伐他汀', '片剂', '20mg', '7', 'xftt', null);
INSERT INTO `ypxx` VALUES ('2256d6e3c1ef41b6bd0e964f7be667a5', '200130', '成都地奥集团天府药业股份有限公司', '川芎茶调片', '12.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '川芎茶调片', '片剂', '0.48g', '48', 'cxcdp,cxctp', null);
INSERT INTO `ypxx` VALUES ('227bd6d535b94832b1a36e9b36ec0901', '200418', '安徽联谊药业股份有限公司', '无', '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '格列齐特', '缓释片', '30mg', '30', 'gljt,glqt', null);
INSERT INTO `ypxx` VALUES ('228223b576ce4becb3b5f85781b9567e', '200131', '河南辅仁怀庆堂', '安痛定', '0.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨基比林', '针剂', '2ml', '1', 'ajbl', null);
INSERT INTO `ypxx` VALUES ('2290cb2228fa4f119fcc3535a37ec3a3', '200132', '云南省腾冲制药厂', '参苓白术颗粒', '23.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '参苓白术颗粒', '颗粒剂', '6g', '10', 'clbzkl,slbzkl,slbskl,clbskl', null);
INSERT INTO `ypxx` VALUES ('22d0394edbcc4d0abc46f70d5daa9dfe', '200133', '郑州卓峰制药', '地塞米松磷酸钠', '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '地塞米松磷酸钠', '注射液', '1ml:2mg', '1', 'dsmslsn', null);
INSERT INTO `ypxx` VALUES ('22e6340b8d8b42e6b433c9a2faf34b46', '200134', '石药集团欧意药业有限公司', '苯妥英钠片', '1.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '苯妥英钠', '片剂', '50mg', '100', 'btyn', null);
INSERT INTO `ypxx` VALUES ('23167d3511c64a718fb1b382709d3121', '200135', '石药集团中诺药业(石家庄)有限公司', '苯唑西林', '0.45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '苯唑西林', '粉针', '0.5g', '1', 'bzxl', null);
INSERT INTO `ypxx` VALUES ('2340c610758241e18a147d11ade8d24e', '200136', '辰欣药业股份有限公司', '奥美拉唑肠溶片', '1.37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '奥美拉唑', '肠溶片', '10mg', '14', 'amlz', null);
INSERT INTO `ypxx` VALUES ('2346896172e840f8b830d25f42b86087', '200137', '湖北午时药业股份有限公司', '通宣理肺颗粒', '9.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '通宣理肺颗粒', '颗粒剂', '9g', '12', 'txlfkl', null);
INSERT INTO `ypxx` VALUES ('23547ad5440f4d18948a56b304894184', '200138', '桂林三金药业股份有限公司', '三金片', '22.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '三金片', '片剂', '相当于原药材3.5g', '72', 'sjp', null);
INSERT INTO `ypxx` VALUES ('239e326dd9c04034a440e25beaff5d83', '200419', '四川省宜宾五粮液集团宜宾制药有限责任公司', '生脉注射液', '19.83', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '生脉注射液', '注射液', '20ml', '3', 'smzyy,smzsy', null);
INSERT INTO `ypxx` VALUES ('23a594bd15b645f292e0bd502bed9e02', '200139', '河南太龙药业股份有限公司', '0.9%氯化钠', '1.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '0.9%氯化钠', '大输液', '500ml', '1', '0.9%lhn', null);
INSERT INTO `ypxx` VALUES ('23af66af483b4a4295fbbd5b4f9da50e', '200140', '南昌弘益药业有限公司', '弘旭光', '13.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氟康唑', '分散片', '50mg', '6', 'fkz', null);
INSERT INTO `ypxx` VALUES ('23e9fd96c92e4dc7a557df97dc1631b0', '200141', '江苏鹏鹞药业有限公司', '炉甘石洗剂', '1.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '炉甘石洗剂', '洗剂', '100ml', '1', 'lgsxj,lgdxj', null);
INSERT INTO `ypxx` VALUES ('242c4245c83642a098b2314223e1348c', '200142', '海口市制药厂有限公司', '海克洛', '4.46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢克洛', '片剂', '0.25g', '6', 'tbkl', null);
INSERT INTO `ypxx` VALUES ('2445acbc9616437981803909826fd263', '200143', '哈尔滨儿童制药厂有限公司', '双黄连颗粒', '18.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '双黄连颗粒', '颗粒剂', '5g', '15', 'shlkl', null);
INSERT INTO `ypxx` VALUES ('24cc4d5c97c84484a45cadf61ddfff67', '200144', '广州欧化药业有限公司', '欧化达', '2.88', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '雷尼替丁', '片剂', '0.15g', '20', 'lntd,lntz', null);
INSERT INTO `ypxx` VALUES ('25be889b26eb4811bd4261b0ba590ec0', '200145', '济南永宁制药股份有限公司', '硫酸亚铁', '2.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '硫酸亚铁', '片剂', '0.3g', '100', 'lsyt', null);
INSERT INTO `ypxx` VALUES ('25c3c91e9aa24757906b11f058720ec5', '200146', '成都华宇制药有限公司', '苏顺', '12.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '特布他林', '注射液', '1ml:0.25mg', '1', 'tbtl', null);
INSERT INTO `ypxx` VALUES ('25e38198d5ea4c5bb4f6dc240365d9c0', '200147', '珠海润都制药股份有限公司', '吲哒帕胺', '5.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '吲哒帕胺', '胶囊', '2.5mg', '28', 'ydpa', null);
INSERT INTO `ypxx` VALUES ('25eb571c4a184001bc7693600eabd483', '200148', '石药集团欧意药业有限公司', '勤可息', '2.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '依那普利', '片剂', '10mg', '10', 'ynpl', null);
INSERT INTO `ypxx` VALUES ('26a6ab67b9b8453d94adc60f6c57354d', '200149', '开封制药(集团)有限公司', '维拉帕米', '2.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '维拉帕米', '片剂', '40mg', '24', 'wlpm', null);
INSERT INTO `ypxx` VALUES ('26f5981f2f8345fe84bde3f6daaacc5b', '200420', '辅仁药业集团有限公司', '清热解毒口服液', '6.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '清热解毒口服液', '口服液', '10ml', '10', 'qrxdkfy,qrjdkfy', null);
INSERT INTO `ypxx` VALUES ('26fa02fec8984567847dc9718a3c87f4', '200150', '吉林市鹿王制药股份有限公司', '蛤蚧定喘丸', '5.83', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '蛤蚧定喘丸', '大蜜丸', '9g', '10', 'gjdcw,hjdcw', null);
INSERT INTO `ypxx` VALUES ('271680f98c7740689f06efbe68a1f792', '200151', '开封制药(集团)有限公司', '苯妥英钠片', '1.58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '苯妥英钠片', '片剂', '0.1g', '100', 'btynp', null);
INSERT INTO `ypxx` VALUES ('27a1973f121e4420b7afa6dd7c663adb', '200152', '湖南麓山天然植物制药有限公司', '无', '28.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银杏叶胶囊', '胶囊', '总黄酮醇苷40mg:萜类内酯10mg', '20', 'yxxjn,yxyjn', null);
INSERT INTO `ypxx` VALUES ('27dcec481305474c87eb8fd42329ea12', '200153', '瑞阳制药有限公司', '的可', '1.47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '胞磷胆碱', '粉针', '0.25g', '1', 'bldj', null);
INSERT INTO `ypxx` VALUES ('28e8f64d979040179512fe460354ea50', '200154', '开封制药(集团)有限公司', '25%葡萄糖', '0.24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '25%葡萄糖', '注射液', '20ml', '1', '25%ptt', null);
INSERT INTO `ypxx` VALUES ('2904282525e84cfdacad80553e307bba', '200155', '上海信谊药厂有限公司委托上海信谊黄河制药有限公司', '吡嗪酰胺片', '11.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '吡嗪酰胺片', '片剂', '0.25g', '100', 'bqxap,pqxap', null);
INSERT INTO `ypxx` VALUES ('29269e57e88c4f6495534c68cc30d517', '200156', '河北长天药业有限公司', '硝酸异山梨酯', '7.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '硝酸异山梨酯', '注射液', '10ml:10mg', '1', 'xsyslz', null);
INSERT INTO `ypxx` VALUES ('29a5a29829d547889cd35b0df2f7603a', '200157', '广州南新制药有限公司', '辛伐他汀分散片', '15.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '辛伐他汀', '分散片', '10mg', '7', 'xftt', null);
INSERT INTO `ypxx` VALUES ('2a22e69f9f5e4806be9ef860a2346254', '200386', '江苏万邦生化医药股份有限公司', '肝素钠', '7.86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '肝素钠', '注射液', '2ml:1.25WIU', '1', 'gsn', null);
INSERT INTO `ypxx` VALUES ('2a2a20857cdf420789aad79d7df3c3c3', '200421', '海口市制药厂有限公司', '海维素', '1.21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素C', '粉针', '0.5g', '1', 'wssc', null);
INSERT INTO `ypxx` VALUES ('2a3f86ef52ab458482d655bdccaa2616', '200158', '成都锦华药业有限责任公司', '利福平胶囊', '10.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '利福平', '胶囊', '0.15g', '100', 'lfp', null);
INSERT INTO `ypxx` VALUES ('2a4377b7d5c445ecb631cdc9dd09754b', '200000', '江苏恒瑞医药股份有限公司', '诺邦', '3.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '克拉霉素', '片剂', '50mg', '12', 'klms', null);
INSERT INTO `ypxx` VALUES ('2a791556623a49009c6007577d2f5017', '200001', '济南利民制药有限责任公司', '更昔洛韦', '7.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '更昔洛韦', '注射液', '5ml:0.25g', '1', 'gxlw', null);
INSERT INTO `ypxx` VALUES ('2ab1bb4f45414bda8f7b25567ad481ab', '200002', '江西天之海药业股份有限公司', '西咪替丁', '1.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '西咪替丁', '片剂', '0.4g', '20', 'xmtd,xmtz', null);
INSERT INTO `ypxx` VALUES ('2b450e8cfbf64827854d02fcfb368b67', '200003', '石药集团中诺药业(石家庄)有限公司', '阿林新', '2.01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林', '分散片', '0.25g', '18', 'amxl,emxl', null);
INSERT INTO `ypxx` VALUES ('2bd18719b0414fb9b4876f60115f760c', '200004', '湖南汉森制药股份有限公司', '四磨汤口服液', '20.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '四磨汤口服液', '口服液', '10ml', '10', 'smskfy,smtkfy', null);
INSERT INTO `ypxx` VALUES ('2d3f324e78c94600b169577089021f0b', '200005', '山西普德药业股份有限公司', '欣美佳', '14.21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '门冬氨酸钾镁', '粉针', '2.0g(门冬氨酸钾1g,门冬氨酸镁1g)', '1', 'mdasjm', null);
INSERT INTO `ypxx` VALUES ('2deacc28ec5042f6a93b4a7f8e1c967c', '200396', '河南爱民药业集团股份有限公司', '感冒清热颗粒', '2.61', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '感冒清热颗粒', '颗粒剂', '12g', '9', 'gmqrkl', null);
INSERT INTO `ypxx` VALUES ('2e6fed61710d499cba435a4052fd412e', '200006', '浙江众益制药股份有限公司', '红霉素肠溶胶囊', '19.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '红霉素', '肠溶胶囊', '0.25g', '10', 'hms,gms', null);
INSERT INTO `ypxx` VALUES ('2f02a7e6ef794db5bc9f4fcecc6e25e1', '200007', '成都天银制药有限公司', '银杏蜜环口服溶液', '29.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银杏蜜环口服溶液', '口服液', '10ml', '12', 'yxmhkfry', null);
INSERT INTO `ypxx` VALUES ('2f7dd370f1cc4c729d12f1be97b9b48c', '200008', '江西药都樟树制药有限公司', '乌鸡白凤丸', '4.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '乌鸡白凤丸', '水蜜丸', '6g', '10', 'wjbfw', null);
INSERT INTO `ypxx` VALUES ('2f8c128759e54901946571dbae9a80e9', '200009', '四川奥邦药业有限公司', '?', '26.31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '琥珀酸亚铁', '片剂', '0.1g', '24', 'hpsyt', null);
INSERT INTO `ypxx` VALUES ('2fb4df2e8c0f4795bc03970e1485781d', '200010', '晋城海斯制药有限公司', '海斯必妥', '1.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '曲克芦丁', '粉针', '0.3g', '1', 'qklz,qkld', null);
INSERT INTO `ypxx` VALUES ('2fc8d7c2125c4d749bbd9d5d84e66148', '200011', '山西康威制药有限责任公司', '冰硼散', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '冰硼散', '散剂', '3g', '10', 'bps', null);
INSERT INTO `ypxx` VALUES ('306c515a9727452cb2063d96580a734b', '200012', '湖南恒生制药股份有限公司', '注射用灯盏花素', '11.97', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '灯盏花素', '粉针', '10mg', '1', 'dzhs', null);
INSERT INTO `ypxx` VALUES ('30be911509954fcbb3c863c3bca7474a', '200013', '广东南国药业有限公司', '盐酸左旋咪唑片', '8.64', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '左旋咪唑', '片剂', '25mg', '1000', 'zxmz', null);
INSERT INTO `ypxx` VALUES ('311276aefc7a406ebc158d9d8679acda', '200014', '天津中新药业集团股份有限公司新新制药厂', '速效救心丸', '25.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '速效救心丸', '滴丸', '40mg', '150', 'sxjxw', null);
INSERT INTO `ypxx` VALUES ('31fde24225da47bdb21008ff728350da', '200015', '西安天一秦昆制药有限责任公司', '银翘解毒颗粒', '13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银翘解毒颗粒', '颗粒剂', '5g（无糖型）', '20', 'yqxdkl,yqjdkl', null);
INSERT INTO `ypxx` VALUES ('3341ca189cbe4e55b791a9e735411404', '200397', '湖南洞庭药业股份有限公司', '无', '16.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氨甲苯酸', '片剂', '0.25g', '100', 'ajbs', null);
INSERT INTO `ypxx` VALUES ('334ea3ebcc8f4372a7b95cb58fa9be00', '200016', '国药集团工业有限公司', '奥美拉唑', '1.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '奥美拉唑', '肠溶片', '20mg', '14', 'amlz', null);
INSERT INTO `ypxx` VALUES ('3365db167fee44a4b115d9e201891570', '200017', '山西正元盛邦制药有限公司', '明目地黄丸', '2.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '明目地黄丸', '水蜜丸', '36g', '1', 'mmdhw', null);
INSERT INTO `ypxx` VALUES ('3440c68ab3264e5c9c13557a86ecf4a9', '200018', '河南同源制药有限公司', '维生素B6', '0.06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素B6', '注射液', '1ml:50mg', '1', 'wssb6', null);
INSERT INTO `ypxx` VALUES ('354c5cd20e9a437898823bd04b817cb6', '200019', '上海新亚药业有限公司', '锋克林', '3.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '阿莫西林/克拉维酸钾', '粉针', '1.2g(5:1)', '1', 'emxl/klwsj,amxl/klwsj', null);
INSERT INTO `ypxx` VALUES ('35a458a2148247a993d7ca880598ae59', '200020', '药都制药集团股份有限公司', '艾附暖宫丸', '3.64', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '艾附暖宫丸', '小蜜丸', '54g(9g/45粒)', '1', 'yfngw,afngw', null);
INSERT INTO `ypxx` VALUES ('36128e67f5d24145a5c7f67b434429a1', '200788', '株洲千金药业股份有限公司', '妇科千金片', '23.83', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '妇科千金片', '片剂', '复方', '144', 'fkqjp', null);
INSERT INTO `ypxx` VALUES ('3630c3269ebe48d89a8ef15ba107cf30', '200021', '江苏润邦药业有限公司', '邦利甘欣', '23.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甘草酸二铵', '胶囊', '50mg', '48', 'gcsea', null);
INSERT INTO `ypxx` VALUES ('364ce09e41044380aae60fd591fe993a', '200022', '亚宝药业大同制药有限公司', '开胸顺气丸', '4.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '开胸顺气丸', '水丸', '9g', '10', 'kxsqw', null);
INSERT INTO `ypxx` VALUES ('3664cde69bec4bb798f8bc2446b11931', '200398', '江西民济药业有限公司', '归脾合剂', '20.01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '归脾合剂', '口服液', '10ml', '18', 'gpgj,gphj', null);
INSERT INTO `ypxx` VALUES ('36e2aaf5b9074dc99c6bc991a0dd2654', '200023', '广州白云山奇星药业有限公司', '华佗再造丸', '36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '华佗再造丸', '浓缩丸', '8g', '12', 'htzzw', null);
INSERT INTO `ypxx` VALUES ('37307c92f7fc417284ce8eb6df19d826', '200024', '河北神威药业有限公司', '参麦注射液', '4.88', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '参麦注射液', '注射液', '10ml', '1', 'smzyy,cmzsy,cmzyy,smzsy', null);
INSERT INTO `ypxx` VALUES ('3755766c9e6344ccae64d8fe50a5ac43', '200025', '葛兰素史克制药(苏州)有限公司', '万托林', '19.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '沙丁胺醇', '气雾剂', '100ug/揿*200', '1', 'sdac,szac', null);
INSERT INTO `ypxx` VALUES ('38b221c483534248b8cd24fd3d56ead8', '200026', '云南白药集团股份有限公司', '香砂养胃片', '18.84', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '香砂养胃片', '片剂', '0.6g', '48', 'xsywp', null);
INSERT INTO `ypxx` VALUES ('39092830a8fd458b8f80ea848dc62182', '200027', '重庆巨琪诺美制药有限公司', '天王补心片', '21.67', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '天王补心片', '片剂', '0.5g', '24', 'twbxp', null);
INSERT INTO `ypxx` VALUES ('3951fdebc9bc4a779ae48c6e25bdd1ae', '200028', '大连美罗中药厂有限公司', '无', '3.13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银杏叶片', '片剂', '总黄酮醇苷19.2mg:萜类内酯4.8mg', '24', 'yxyp,yxxp', null);
INSERT INTO `ypxx` VALUES ('395cd731ec904ad3aca204227d4aaf89', '200399', '湖南科伦制药有限公司', '甲硝唑氯化钠', '0.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甲硝唑氯化钠', '大输液', '100ml:0.5g:0.9g', '1', 'jxzlhn', null);
INSERT INTO `ypxx` VALUES ('39986696637e4af3a03c43739148978c', '200029', '北京市永康药业有限公司', '尼可刹米注射液', '4.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '尼可刹米注射液', '注射液', '1.5ml：0.375g', '10', 'nksmzyy,nkcmzyy,nkcmzsy,nksmzsy', null);
INSERT INTO `ypxx` VALUES ('39b8a6c407ca435b92126f3d0e3f76ce', '200030', '广东嘉博制药有限公司', '丙泊酚注射液', '15.79', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '丙泊酚', '注射液', '10ml:0.1g', '1', 'bpf,bbf', null);
INSERT INTO `ypxx` VALUES ('39cce3f440f5411aa1fb4086d0f0c484', '200031', '山东润泽制药有限公司', '头孢他啶', '4.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢他啶', '粉针', '2.0g', '10', 'tbtd', null);
INSERT INTO `ypxx` VALUES ('39f99968ea90499694b415695e54d603', '200032', '黄石飞云制药有限公司', '抗病毒口服液', '3.69', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '抗病毒口服液', '口服液', '10ml', '10', 'kbdkfy', null);
INSERT INTO `ypxx` VALUES ('3a2b79ab0d8248aab2ecc22f5fddb82c', '200033', '山东沃华医药科技股份有限公司', '防风通圣丸', '2.71', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '防风通圣丸', '水丸', '6g', '10', 'fftsw', null);
INSERT INTO `ypxx` VALUES ('3a338f1c9107406ba11ae7d00ea3e10f', '200034', '天士力制药集团股份有限公司', '复方丹参滴丸', '25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方丹参滴丸', '滴丸', '薄膜衣丸27mg', '180', 'ffdcdw,ffdsdw', null);
INSERT INTO `ypxx` VALUES ('3a43452e6ece49c5a810078bb279b981', '200035', '四川科伦药业股份有限公司', '葡萄糖注射液', '2.61', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '葡萄糖注射液', '大输液', '250ml:12.5g(塑瓶)', '1', 'pttzyy,pttzsy', null);
INSERT INTO `ypxx` VALUES ('3a4df240c5e442a1b0ad6124e2cbabe7', '200036', '哈尔滨儿童制药厂有限公司', '?', '20.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '小儿泻速停颗粒', '胶囊', '3g', '12', 'xexstkl,xrxstkl', null);
INSERT INTO `ypxx` VALUES ('3a665a407b6c445f9edb8f9134e8593b', '200400', '安徽九方制药有限公司', '保和颗粒', '11.88', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '保和颗粒', '颗粒剂', '4.5g', '20', 'bhkl', null);
INSERT INTO `ypxx` VALUES ('3ac517d3567645fdb61cf7179d5d897b', '200037', '石药集团中诺药业(石家庄)有限公司', '青霉素钠', '0.21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '青霉素钠', '粉针', '80WU', '1', 'qmsn', null);
INSERT INTO `ypxx` VALUES ('3af39529587f40edb6fcd18741a0deaa', '200038', '江苏万邦生化医药股份有限公司', '精蛋白锌胰岛素(30%)', '24.39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '精蛋白锌胰岛素(30%)', '注射液', '10ml:400IU', '1', 'jdbxyds(30%)', null);
INSERT INTO `ypxx` VALUES ('3c5195a7c72c41698eab1cb08ce912ad', '200039', '河南太龙药业股份有限公司', '10%葡萄糖', '0.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '10%葡萄糖', '大输液', '100ml', '1', '10%ptt', null);
INSERT INTO `ypxx` VALUES ('3c80158a806240b3906ba9013b50e104', '200040', '成都第一制药有限公司', '益母草片', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '益母草片', '片剂', '盐酸水苏碱15mg', '48', 'ymcp', null);
INSERT INTO `ypxx` VALUES ('3ca9d45b437442b8a9f1b8ef6f83f3ad', '200383', '河南天方药业股份有限公司', '维生素B6', '0.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素B6', '注射液', '2ml:0.1g', '1', 'wssb6', null);
INSERT INTO `ypxx` VALUES ('3cfe38d6289442d8af1f852854a9740d', '200041', '武汉东信医药科技有限责任公司', '阿苯达唑胶囊', '1.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿苯达唑', '胶囊', '0.1g', '10', 'ebdz,abdz', null);
INSERT INTO `ypxx` VALUES ('3d3be6567abb43528c260414b6f1d5d9', '200042', '辅仁药业集团有限公司', '头孢曲松', '0.81', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢曲松', '粉针', '0.5g', '1', 'tbqs', null);
INSERT INTO `ypxx` VALUES ('3d6b1bab47c444028257c2c33f96a96e', '200401', '山东鲁北药业有限公司', '甲状腺片', '2.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甲状腺', '片剂', '40mg', '100', 'jzx', null);
INSERT INTO `ypxx` VALUES ('3d7aba3db5a0466f8af4bbcca85e3624', '200043', '南京易亨制药有限公司', '双氯芬酸钠', '10.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '双氯芬酸钠', '缓释胶囊', '50mg', '24', 'slfsn', null);
INSERT INTO `ypxx` VALUES ('3da5c436a3ae40b88e83ff57882f8cc4', '200044', '四川升和药业股份有限公司', '丹参注射液', '0.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '丹参注射液', '注射液', '10ml', '1', 'dszyy,dszsy,dczyy,dczsy', null);
INSERT INTO `ypxx` VALUES ('3da9d295ec9e4bed8f34fd9a72429db2', '200045', '林州市亚神制药有限公司', '硫酸镁注射液', '0.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '硫酸镁', '注射液', '10ml:1.0g', '1', 'lsm', null);
INSERT INTO `ypxx` VALUES ('3ddf40fc4ec74a78b393053778559d66', '200046', '西南药业股份有限公司', '布洛芬', '7.37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '布洛芬', '缓释片', '0.3g', '20', 'blf', null);
INSERT INTO `ypxx` VALUES ('3eb9a718d5d64648856bf5e88fb34dee', '200047', '山东方健制药有限公司', '无', '5.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '参苓白术丸', '水丸', '6g', '10', 'clbsw,slbzw,slbsw,clbzw', null);
INSERT INTO `ypxx` VALUES ('3eba64e22c4c45368c20f6f571d1c735', '200048', '山东罗欣药业股份有限公司', '左氧氟沙星', '0.81', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '左氧氟沙星', '片剂', '0.2g', '6', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('3eca844c938f46c3a6d964b0313bc0e0', '200049', '昆明制药集团股份有限公司', '灯盏花素片', '2.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '灯盏花素片', '片剂', '20mg', '24', 'dzhsp', null);
INSERT INTO `ypxx` VALUES ('3efa55d8d02749ac9b1a11bcec873075', '200050', '济南利民制药有限责任公司', '左氧氟沙星', '0.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '左氧氟沙星', '注射液', '2ml:0.2g', '1', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('3f83f745436344d6aeeeccf63eaaafb5', '200051', '鲁南厚普制药有限公司', '小儿消积止咳口服液', '13.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '小儿消积止咳口服液', '口服液', '10ml', '6', 'xexjzkkfy,xrxjzhkfy,xrxjzkkfy,xexjzhkfy', null);
INSERT INTO `ypxx` VALUES ('3f94129556714597a7a681026535371c', '200402', '河南科伦药业有限公司', '10%葡萄糖', '0.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '10%葡萄糖', '大输液', '100ml(塑瓶)', '1', '10%ptt', null);
INSERT INTO `ypxx` VALUES ('3fc18b2cf9814612b156f0d4a752591f', '200052', '吉林省利华制药有限公司', '头孢拉定', '4.83', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '头孢拉定', '片剂', '0.5g', '12', 'tbld', null);
INSERT INTO `ypxx` VALUES ('400f4a7b425d44caa6a23a00cc16acd8', '200053', '苏州东瑞制药有限公司', '安内真', '7.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氨氯地平', '片剂', '2.5mg', '14', 'aldp', null);
INSERT INTO `ypxx` VALUES ('401ecbb3c34a4b98924ddb9b59633900', '200054', '马应龙药业集团股份有限公司', '吲哚美辛栓', '1.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '吲哚美辛', '栓剂', '50mg', '10', 'ydmx', null);
INSERT INTO `ypxx` VALUES ('401fba424c2142a48a4dfaccbaf504e0', '200055', '华北制药河北华民药业有限责任公司', '头孢氨苄', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢氨苄', '胶囊', '0.125g', '50', 'tbab', null);
INSERT INTO `ypxx` VALUES ('40c192ba97bd4aa39e206db91f5983b4', '200056', '河南科伦药业有限公司', '0.9%氯化钠', '1.43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '0.9%氯化钠', '大输液', '500ml(塑瓶)', '1', '0.9%lhn', null);
INSERT INTO `ypxx` VALUES ('411fc7dbf44347278234f904f8d7d106', '200057', '河南禹州市药王制药有限公司', '牛黄解毒丸', '2.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '牛黄解毒丸', '大蜜丸', '3g', '10', 'nhjdw,nhxdw', null);
INSERT INTO `ypxx` VALUES ('412a9d0dd4314ad6b4f04fb9eaca115f', '200058', '四川绿叶宝光药业股份有限公司', '贝希', '43.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿卡波糖', '胶囊', '50mg', '30', 'eqpt,ekpt,akbt,aqpt,aqbt,akpt,eqbt,ekbt', null);
INSERT INTO `ypxx` VALUES ('4167c66a12da4e17a86357bf3c69184d', '200059', '天津药业集团新郑股份有限公司', '无', '0.11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '安乃近', '注射液', '2ml:0.5g', '1', 'anj', null);
INSERT INTO `ypxx` VALUES ('41dc60b4380e4b37924ce939bca5be84', '200403', '药都制药集团', '四神丸', '6.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '四神丸', '水丸', '6g', '10', 'ssw', null);
INSERT INTO `ypxx` VALUES ('41fd72d98ae44db88204d167c845a727', '200060', '天津金耀氨基酸有限公司', '无', '0.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '利血平', '注射液', '1ml:1mg', '1', 'lxp', null);
INSERT INTO `ypxx` VALUES ('42a044c781044853835132e422e40194', '200061', '马应龙药业集团股份有限公司', '马应龙麝香痔疮膏', '7.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '马应龙麝香痔疮膏', '软膏剂', '10g', '1', 'mylsxzcg', null);
INSERT INTO `ypxx` VALUES ('432c55d4eb9f4e62ae434f0f4af70e33', '200062', '上海禾丰制药有限公司', '维拉帕米', '0.74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维拉帕米', '注射液', '2ml:5mg', '1', 'wlpm', null);
INSERT INTO `ypxx` VALUES ('434d9c3770a4487bbadc22bdc7897eae', '200063', '海南普利制药有限公司', '茶碱缓释胶囊', '7.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '茶碱', '缓释胶囊', '0.1g', '24', 'cj', null);
INSERT INTO `ypxx` VALUES ('434f3f2847a94071b523456c112fd9f2', '200064', '瑞阳制药有限公司', '常欣', '1.91', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '茶碱', '缓释片', '0.1g', '15', 'cj', null);
INSERT INTO `ypxx` VALUES ('4389e4c2dced49b693fac4b167dee705', '200065', '广东嘉应制药股份有限公司', '壮腰健肾丸', '4.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '壮腰健肾丸', '水蜜丸', '52g', '1', 'zyjsw', null);
INSERT INTO `ypxx` VALUES ('4397034547364824be180365f80d25ec', '200066', '石药集团中诺药业(石家庄)有限公司', '青霉素钠', '0.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '青霉素钠', '粉针', '160WU', '1', 'qmsn', null);
INSERT INTO `ypxx` VALUES ('43bb185316e447928e64b86ae700f613', '200404', '深圳致君制药有限公司', '达力清', '19.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢唑肟', '粉针', '0.5g', '1', 'tbzw', null);
INSERT INTO `ypxx` VALUES ('43cd9ed91c0a42598e44339363231376', '200067', '新乡华青药业有限公司', '无', '0.49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '克霉唑', '软膏剂', '10g:0.1g(1%)', '1', 'kmz', null);
INSERT INTO `ypxx` VALUES ('43e94694392e49c08fe279a9e08d03df', '200068', '山东罗欣药业股份有限公司', '克林霉素', '1.42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '克林霉素', '粉针', '0.3g', '1', 'klms', null);
INSERT INTO `ypxx` VALUES ('43e9eb51cca64525ab6a79c02c16cfd5', '200069', '北京同仁堂科技发展股份有限公司制药厂', '麻仁润肠软胶囊', '9.84', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '麻仁润肠软胶囊', '软胶囊', '0.5g', '24', 'mrrcrjn', null);
INSERT INTO `ypxx` VALUES ('442f97869f014291968b6d7679ad71d3', '200070', '安徽华佗国药厂', '跌打丸', '5.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '跌打丸', '小蜜丸', '3g/15', '150', 'ddw', null);
INSERT INTO `ypxx` VALUES ('445304889ec440ad85d314dcfcb328ea', '200071', '珠海联邦制药股份有限公司', '优思灵USLIN50R', '42.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '精蛋白重组人胰岛素混合(50/50)', '注射液', '3ml:300IU(笔芯)', '1', 'jdbzzrydshg(50/50),jdbczrydshg(50/50),jdbczrydshh(50/50),jdbzzrydshh(50/50)', null);
INSERT INTO `ypxx` VALUES ('447dddd0ae7e4fc3944d9870b59eec60', '200072', '华中药业股份有限公司', '阿苯达唑', '0.87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿苯达唑', '片剂', '0.2g', '10', 'ebdz,abdz', null);
INSERT INTO `ypxx` VALUES ('44b737323b54483988c30f8c34173c8c', '200073', '北京四环制药有限公司', '欣浦澳', '12.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '纳洛酮', '粉针', '2mg', '1', 'nlt', null);
INSERT INTO `ypxx` VALUES ('44e4018dc2464a9f83829f3b6225ef08', '200074', '辅仁药业集团有限公司', '喷托维林', '1.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '喷托维林', '片剂', '25mg', '100', 'ptwl', null);
INSERT INTO `ypxx` VALUES ('44f068dbb53d4bed9af82d469cc8f88e', '200405', '华北制药股份有限公司', '注射用氨苄西林钠', '0.58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨苄西林', '粉针', '1.0g', '1', 'abxl', null);
INSERT INTO `ypxx` VALUES ('455d7b92bb2b4b2a8f50f290bcf9f437', '200075', '浙江京新药业股份有限公司', '格列齐特', '6.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '格列齐特', '片剂', '80mg', '60', 'gljt,glqt', null);
INSERT INTO `ypxx` VALUES ('4593738f01e140f189203f4422845ef7', '200076', '天津太平洋制药有限公司', '氟轻松', '1.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氟轻松', '软膏剂', '10g:2.5mg', '1', 'fqs', null);
INSERT INTO `ypxx` VALUES ('45eb3e66ead34217bfc6100eb7e2f577', '200077', '齐鲁制药有限公司', '注射用哌拉西林钠', '0.77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '哌拉西林', '粉针', '1.0g', '1', 'plxl', null);
INSERT INTO `ypxx` VALUES ('462b9884a37e4c0980dbda4b48bfd15f', '200078', '齐鲁制药有限公司', '华法林钠片', '15.45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '华法林钠', '片剂', '2.5mg', '80', 'hfln', null);
INSERT INTO `ypxx` VALUES ('462fadc149b64f848da8b7db93897d5f', '200079', '黑龙江珍宝岛药业股份有限公司', '血塞通注射液', '3.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '血塞通注射液', '注射液', '10ml:0.25g', '1', 'xstzyy,xstzsy', null);
INSERT INTO `ypxx` VALUES ('46bc312d96cf4d44a0b8a8c4786cd1d8', '200080', '河南省宛西制药股份有限公司', '小柴胡汤丸', '9.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '小柴胡汤丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'xchtw,xchsw', null);
INSERT INTO `ypxx` VALUES ('46bd8e20ae0b4112be54b383bfedf510', '200081', '华北制药股份有限公司', '阿莫西林胶囊', '1.87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林', '胶囊', '0.5g', '10', 'amxl,emxl', null);
INSERT INTO `ypxx` VALUES ('47445a4aefb34820a04b75e3f2002727', '200082', '山东罗欣药业股份有限公司', '左氧氟沙星', '0.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '左氧氟沙星', '片剂', '0.1g', '6', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('48a167a4f621474bbfe0f12b80cc8939', '200406', '上海现代制药股份有限公司', '替硝唑', '18.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '替硝唑', '栓剂', '1.0g', '6', 'txz', null);
INSERT INTO `ypxx` VALUES ('48e841ef7cff4168a0e88946efd7495d', '200083', '天津药业集团新郑股份有限公司', '无', '1.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氟康唑', '片剂', '50mg', '3', 'fkz', null);
INSERT INTO `ypxx` VALUES ('491207c17cf24bccb11d19610eec773e', '200159', '东芝堂药业(安徽)有限公司', '健脾丸', '3.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '健脾丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'jpw', null);
INSERT INTO `ypxx` VALUES ('4927cab078914b9db1e9da7b002f4fb9', '200160', '山东鲁抗医药股份有限公司', '制霉素', '19.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '制霉素', '片剂', '50WIU', '100', 'zms', null);
INSERT INTO `ypxx` VALUES ('4958152ba04444af9f27ebae2c5f02d7', '200161', '江西仁丰药业有限公司', '六味地黄丸', '3.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '六味地黄丸', '小蜜丸', '60g', '1', 'lwdhw', null);
INSERT INTO `ypxx` VALUES ('49637b1cf48e416fac619713cef1d688', '200162', '杭州民生药业有限公司', '毛果芸香碱', '5.03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '毛果芸香碱', '滴眼液', '5ml:25mg', '1', 'mgyxj', null);
INSERT INTO `ypxx` VALUES ('498d8cf828454f8380f0f881a524d81e', '200163', '江苏涟水制药', '地塞米松磷酸钠', '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '地塞米松磷酸钠', '注射液', '1ml:2mg', '1', 'dsmslsn', null);
INSERT INTO `ypxx` VALUES ('4a049b0a4aaa48e8b50ddeb2e5cc7d0a', '200422', '陕西步长制药有限公司', '脑心通胶囊', '25.51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '脑心通胶囊', '胶囊', '0.4g', '36', 'nxtjn', null);
INSERT INTO `ypxx` VALUES ('4a2872d5775c446e9bd08c3669cbf8e2', '200164', '华润三九医药股份有限公司', '正天丸', '18.26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '正天丸', '水丸', '6g', '15', 'ztw', null);
INSERT INTO `ypxx` VALUES ('4a5762b07f4a4bdfb31e1e593454f5ff', '200165', '海口奇力制药股份有限公司', '格列吡嗪片', '1.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '格列吡嗪', '片剂', '5mg', '24', 'glbq,glpq', null);
INSERT INTO `ypxx` VALUES ('4a90b2ea4db44729a643a162403abcaf', '200166', '北京四环科宝制药有限公司', '杏灵分散片', '40.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '杏灵分散片', '分散片', '每片重0.3g(含银杏酮酯40mg)', '12', 'xlfsp', null);
INSERT INTO `ypxx` VALUES ('4ac1370ca4d147e197b971695ea95c1c', '200167', '悦康药业集团有限公司', '奥美拉唑', '1.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '奥美拉唑', '肠溶胶囊', '10mg', '14', 'amlz', null);
INSERT INTO `ypxx` VALUES ('4ad8117ab5d74cafba485ae678594269', '200168', '四川禾润制药有限公司', '藿香正气颗粒', '4.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '藿香正气颗粒', '颗粒剂', '10g', '10', 'hxzqkl', null);
INSERT INTO `ypxx` VALUES ('4adb310111744036a352d731049b0765', '200169', '山东沃华医药科技股份有限公司', '通宣理肺丸', '2.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '通宣理肺丸', '大蜜丸', '6g', '10', 'txlfw', null);
INSERT INTO `ypxx` VALUES ('4ae1dcabee9d4e4483a51017253dc5c8', '200170', '江西药都樟树制药有限公司', '通宣理肺片', '3.84', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '通宣理肺片', '片剂', '0.3g', '48', 'txlfp', null);
INSERT INTO `ypxx` VALUES ('4b3fe0c59c63461bbb4f5a001265a35d', '200423', '上海信谊金朱药业有限公司', '无', '2.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '精氨酸', '注射液', '20ml:5.0g', '1', 'jas', null);
INSERT INTO `ypxx` VALUES ('4b9d2aef759c4ee9bee52ce02ea43216', '200171', '杭州民生药业有限公司', '无', '4.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '山莨菪碱', '片剂', '10mg', '100', 'sldj', null);
INSERT INTO `ypxx` VALUES ('4bf5fa098bd34416b8bf5fb3e495f121', '200172', '吉林龙鑫药业有限公司', '柏子养心片', '17.76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '柏子养心片', '片剂', '0.35g', '60', 'bzyxp', null);
INSERT INTO `ypxx` VALUES ('4c14171fd470404fa5c6be11a652f4bc', '200173', '湖南迪诺制药有限公司', '氟桂利嗪', '0.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氟桂利嗪', '胶囊', '5mg', '20', 'fglq', null);
INSERT INTO `ypxx` VALUES ('4c46a203d7c54104a4f455f4cd14bc7c', '200174', '黑龙江珍宝岛药业股份有限公司', '黄芪注射液', '0.76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '黄芪注射液', '注射液', '10ml', '1', 'hqzyy,hqzsy', null);
INSERT INTO `ypxx` VALUES ('4c68f28571974ff7b55ca356fe839f9a', '200175', '上海现代制药股份有限公司', '申优', '7.28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢拉定', '分散片', '0.25g', '24', 'tbld', null);
INSERT INTO `ypxx` VALUES ('4c7c18fa633748568c1f5aecb3d98e1b', '200176', '河南省百泉制药有限公司', '舒肝健胃丸', '22.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '袋', '舒肝健胃丸', '水丸', '12g', '40', 'sgjww', null);
INSERT INTO `ypxx` VALUES ('4cc4e8160f7641f88a25ef3cd29a2caf', '200177', '商丘市金马药业有限公司', '知柏地黄丸', '3.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '知柏地黄丸', '水蜜丸', '60g', '1', 'zbdhw', null);
INSERT INTO `ypxx` VALUES ('4dc12e14a6944559b6b592d0efbe0f8b', '200178', '四川志远嘉宝药业有限责任公司', '明目上清片', '9.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '明目上清片', '片剂', '0.64g', '60', 'mmsqp', null);
INSERT INTO `ypxx` VALUES ('4dd7e4b6faa84d9da58c787346048437', '200179', '河南天地药业股份有限公司', '醒脑静注射液', '30.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '醒脑静注射液', '注射液', '10ml', '1', 'xnjzyy,xnjzsy', null);
INSERT INTO `ypxx` VALUES ('4e42f8ea371a4d2abd7096eaac29728f', '200424', '上海玉丹药业有限公司', '无', '28.84', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '参桂胶囊', '胶囊', '0.3g', '30', 'cgjn,sgjn', null);
INSERT INTO `ypxx` VALUES ('4eb16cf5d09f42f78a6899bf270b04cd', '200180', '广东恒诚制药有限公司', '结石通片', '4.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '结石通片', '片剂', '干浸膏0.25g', '100', 'jdtp,jstp', null);
INSERT INTO `ypxx` VALUES ('4f00404998f844fd91f72cf4fedd520c', '200181', '杭州中美华东制药有限公司', '卡博平', '45.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿卡波糖片', '片剂', '50mg', '30', 'eqbtp,ekbtp,akbtp,aqptp,akptp,ekptp,aqbtp,eqptp', null);
INSERT INTO `ypxx` VALUES ('4fd91a66a78b4a7f9dd20d3f566bf5a6', '200182', '山西华康药业股份有限公司', '壮腰健肾丸', '4.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '壮腰健肾丸', '大蜜丸', '5.6g', '10', 'zyjsw', null);
INSERT INTO `ypxx` VALUES ('4fe5a49a5a30468c9a42415caf1f5bb1', '200183', '广东强基药业有限公司', '长建宁', '29.79', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '柳氮磺吡啶', '肠溶胶囊', '0.25g', '24', 'ldhpd,ldhbd', null);
INSERT INTO `ypxx` VALUES ('4fe9076d6fbd4651b1b9185da2339e03', '200184', '河南润弘制药股份有限公司', '无', '0.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '甲氧氯普胺', '注射液', '1ml:10mg', '1', 'jylpa', null);
INSERT INTO `ypxx` VALUES ('4ff078a50c5e4b498e90243a4e71d4fd', '200185', '上海衡山药业有限公司', '非诺贝特', '4.93', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '非诺贝特', '片剂', '0.1g', '100', 'fnbt', null);
INSERT INTO `ypxx` VALUES ('50b7d506a40a41fe8c2bb3e2cd1ae1fc', '200186', '四川禾润制药有限公司', '复方黄连素片', '2.11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方黄连素片', '片剂', '30mg', '100', 'ffhlsp', null);
INSERT INTO `ypxx` VALUES ('512a8f89b25841e794e1b29b563497c5', '200425', '山东罗欣药业股份有限公司', '左沙', '0.86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '左氧氟沙星', '片剂', '0.1g', '12', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('5155f8d1753a49d58fea8e9d208f7d23', '200187', '河南华峰制药有限公司', '麻仁润肠丸', '8.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '麻仁润肠丸', '水蜜丸', '3.2g（1.6g/10）', '12', 'mrrcw', null);
INSERT INTO `ypxx` VALUES ('51a68eb4f40d46a8b661d0ab9ec18a51', '200188', '上海现代哈森(商丘)药业有限公司', '二羟丙茶碱注射液', '0.11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '二羟丙茶碱', '注射液', '2ml:0.25g', '1', 'eqbcj', null);
INSERT INTO `ypxx` VALUES ('528bbec5eae34b25a228e606995fcc9b', '200189', '成都天银制药有限公司', '银杏蜜环口服溶液', '25.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银杏蜜环口服溶液', '口服液', '10ml', '10', 'yxmhkfry', null);
INSERT INTO `ypxx` VALUES ('538ba7f2cff04dd0811ccabf9db9d8f3', '200190', '河南灵佑药业有限公司', '清热解毒口服液', '9.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '清热解毒口服液', '口服液', '10ml(无糖型)', '10', 'qrxdkfy,qrjdkfy', null);
INSERT INTO `ypxx` VALUES ('53f7e251f3f5480ba88b505a8ea1f31c', '200191', '上海旭东海普药业有限公司', '无', '1.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '谷氨酸钾', '注射液', '20ml:6.3g', '1', 'yasj,gasj', null);
INSERT INTO `ypxx` VALUES ('5405995fbba44f14a7e052b8bba32a58', '200192', '宜昌人福药业有限责任公司', '辛伐他汀胶囊', '12.87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '辛伐他汀', '胶囊', '10mg', '24', 'xftt', null);
INSERT INTO `ypxx` VALUES ('5410a6c1fb0e4caf9e0fac8e79b737cc', '200193', '天士力制药集团股份有限公司', '柴胡滴丸', '12.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '柴胡滴丸', '滴丸', '0.551g', '10', 'chdw', null);
INSERT INTO `ypxx` VALUES ('541cd9a3cd8b4896ab3cd22607f4d11e', '200426', '宜昌长江药业有限公司', '氟康唑', '1.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氟康唑', '胶囊', '50mg', '6', 'fkz', null);
INSERT INTO `ypxx` VALUES ('545cc7658f394f968f165a38a1667d37', '200194', '武汉中联药业集团股份有限公司', '乌鸡白凤丸', '4.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '乌鸡白凤丸', '大蜜丸', '9g', '10', 'wjbfw', null);
INSERT INTO `ypxx` VALUES ('5478c41194f04e75bb4c671d0f6e1bf3', '200195', '湖南科伦制药有限公司', '头孢拉定', '1.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢拉定', '粉针', '1.0g', '1', 'tbld', null);
INSERT INTO `ypxx` VALUES ('55340070b44f49f7b1c789ec048d3cf2', '200196', '上海朝晖药业有限公司', '盐酸布比卡因注射液', '0.74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '布比卡因', '注射液', '5ml:37.5mg', '1', 'bbqy,bbky', null);
INSERT INTO `ypxx` VALUES ('55890b034e234712b159dfacc34b40cc', '200197', '河北天成药业股份有限公司', '氯化钠注射液', '0.14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '0.9%氯化钠', '注射液', '10ml', '1', '0.9%lhn', null);
INSERT INTO `ypxx` VALUES ('55c08af7724746e6896330d3999afacb', '200198', '辰欣药业股份有限公司', '马来噻吗洛尔滴眼液', '1.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '噻吗洛尔', '滴眼液', '5ml:25mg', '1', 'smle', null);
INSERT INTO `ypxx` VALUES ('563723fdae09473ea241337f80e14192', '200199', '江苏恒瑞医药股份有限公司', '吉浩', '7.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '布洛芬', '混悬液', '100ml:2.0g', '1', 'blf', null);
INSERT INTO `ypxx` VALUES ('567c91aa949b4c14904cf603aae316d7', '200427', '南宁康诺生化制药有限责任公司', '大黄碳酸氢钠片', '1.54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '大黄碳酸氢钠', '片剂', '大黄0.15g，碳酸氢钠0.15g，薄荷油0.001ml', '100', 'dhtsqn', null);
INSERT INTO `ypxx` VALUES ('579624a400cd442ba930572492053557', '200387', '杭州国光药业有限公司', '佐凯', '7.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '左氧氟沙星', '滴眼液', '8ml:24mg', '1', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('57d15cbc5ee048288ef0782875b89612', '200200', '沈阳永大制药有限公司', '益母草胶囊', '21.24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '益母草胶囊', '胶囊', '0.35g', '36', 'ymcjn', null);
INSERT INTO `ypxx` VALUES ('5883b0de354c4873bdb601cb5d8a1eea', '200201', '河南康祺药业股份有限公司', '藿香正气片', '4.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '藿香正气片', '片剂', '0.3g', '36', 'hxzqp', null);
INSERT INTO `ypxx` VALUES ('58b7d7f3b11246b49a20edc74c478226', '200629', '新乡市常乐制药有限责任公司', '维生素B6', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '维生素B6', '片剂', '10mg', '1000', 'wssb6', null);
INSERT INTO `ypxx` VALUES ('599260dda45f4190a4d8e298c3805fb4', '200630', '上海雷允上药业有限公司', '藿胆滴丸', '36.47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '藿胆滴丸', '滴丸', '0.05g', '60', 'hddw', null);
INSERT INTO `ypxx` VALUES ('599ae0549d9d4052b88710a0209e246a', '200448', '福建太平洋制药有限公司', '布洛芬', '2.39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '布洛芬', '缓释胶囊', '0.3g', '10', 'blf', null);
INSERT INTO `ypxx` VALUES ('5a621014fa8a4b3cacf37f051039b5fa', '200631', '深圳致君制药有限公司', '氨溴索', '6.63', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氨溴索', '口服液', '100ml:0.3g(无糖型)', '1', 'axs', null);
INSERT INTO `ypxx` VALUES ('5a62b1236c0947dc9ffe4efd9cb91b88', '200632', '海南惠普森医药生物技术有限公司', '倍沙', '1.77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '罗红霉素', '分散片', '0.15g', '6', 'lgms,lhms', null);
INSERT INTO `ypxx` VALUES ('5a9783aa349f4ef988e04163f52a6b93', '200633', '上海现代哈森(商丘)药业有限公司', '氢化可的松注射液', '0.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氢化可的松', '注射液', '2ml:10mg', '1', 'qhkds', null);
INSERT INTO `ypxx` VALUES ('5b0292282f1b46cc9f178fce96cc3459', '200634', '石药集团中诺药业(石家庄)有限公司', '阿林新', '1.36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林', '分散片', '0.25g', '12', 'amxl,emxl', null);
INSERT INTO `ypxx` VALUES ('5b0942fb6f15450884f3382a9e48a907', '200635', '河南省百泉制药有限公司', '柴胡口服液', '6.56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '柴胡口服液', '口服液', '10ml', '12', 'chkfy', null);
INSERT INTO `ypxx` VALUES ('5b972dfb841e44e9af507ba88c4f614d', '200636', '新乡华青药业有限公司', '无', '0.51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '克霉唑', '溶液剂', '8ml:0.12g(1.5%)', '1', 'kmz', null);
INSERT INTO `ypxx` VALUES ('5d7f597675c848fa83bc7d23b051930b', '200801', '丹东医创药业有限责任公司', '盐酸二氧丙嗪片', '1.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '二氧丙嗪', '片剂', '5mg', '100', 'eybq', null);
INSERT INTO `ypxx` VALUES ('5d87628cc5f74315b275375055a63fe6', '200637', '扬州市三药制药有限公司', '氨溴索', '5.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氨溴索', '口服液', '100ml:0.3g', '1', 'axs', null);
INSERT INTO `ypxx` VALUES ('5e09d3361d0a48b98e31a7faa2d53c3b', '200638', '辽宁海思科制药有限公司', '中/长链脂肪乳(C8-24)', '83.79', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '中/长链脂肪乳(C8-24)', '大输液', '500ml(10%)', '1', 'z/clzfr(c8-24),z/zlzfr(c8-24)', null);
INSERT INTO `ypxx` VALUES ('5e4502488ff4490b900c1288c7863687', '200639', '华北制药股份有限公司', '注射用头孢他啶', '1.95', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢他啶', '粉针', '1.0g', '1', 'tbtd', null);
INSERT INTO `ypxx` VALUES ('5e9f3538f9e448c3bc8b23a2d4631235', '200640', '武汉人福药业有限责任公司', '万祥', '7.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '硝普钠', '粉针', '50mg', '1', 'xpn', null);
INSERT INTO `ypxx` VALUES ('5eecaee339d34eaca3d416500e39ebe5', '200641', '开封制药(集团)有限公司', '卡托普利', '1.54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '卡托普利', '片剂', '12.5mg', '100', 'ktpl,qtpl', null);
INSERT INTO `ypxx` VALUES ('5ef880f0a2ad4fabbf2441fa1557af5b', '200642', '江西生物制品研究所', '破伤风抗毒素', '2.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '破伤风抗毒素', '注射液', '1500IU', '1', 'psfkds', null);
INSERT INTO `ypxx` VALUES ('5f1218a457c049fab7a3cf648ca4ca7b', '200643', '河南润弘制药股份有限公司', '无', '0.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素C', '注射液', '2ml:0.25g', '1', 'wssc', null);
INSERT INTO `ypxx` VALUES ('5f63dcf472f64497b1db3f9a59e5e75a', '200644', '深圳信立泰药业股份有限公司', '信立欣', '4.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢呋辛', '粉针', '0.5g', '1', 'tbfx', null);
INSERT INTO `ypxx` VALUES ('5f8901d60c1b4d6892a0709108c31648', '200645', '上海信谊药厂有限公司', '格列本脲片', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '格列本脲片', '片剂', '2.5mg', '100', 'glbnp', null);
INSERT INTO `ypxx` VALUES ('5fb313814f434a73b36bf02582f32bdf', '200802', '太极集团重庆涪陵制药厂有限公司', '急支糖浆', '9.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '急支糖浆', '糖浆剂', '200ml', '1', 'jztj', null);
INSERT INTO `ypxx` VALUES ('5fbaca9af0764e00b3b08feba6caaba8', '200646', '河南太龙药业股份有限公司', '0.9%氯化钠', '0.86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '0.9%氯化钠', '大输液', '250ml', '1', '0.9%lhn', null);
INSERT INTO `ypxx` VALUES ('5fd952631ec94be381520e07bac6767b', '200647', '河南天方药业股份有限公司', '西咪替丁', '2.47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '西咪替丁', '片剂', '0.2g', '100', 'xmtd,xmtz', null);
INSERT INTO `ypxx` VALUES ('5fda3a2daa434a54b015fdbaa68d60f2', '200648', '兰州太宝制药有限公司', '川芎茶调丸', '6.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '川芎茶调丸', '浓缩丸', '每8丸相当于原药材3g', '192', 'cxcdw,cxctw', null);
INSERT INTO `ypxx` VALUES ('604e8946a90d40808ba20010a482f24d', '200649', '广州白云山中一药业有限公司', '消渴丸', '24.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '消渴丸', '丸剂', '每10丸重2.5g（含格列本脲2.5mg）', '210', 'xkw', null);
INSERT INTO `ypxx` VALUES ('6058d0f33b7c4cccaad9b538e634acad', '200650', '开开援生制药股份有限公司', '乳酸左氧氟沙星氯化钠注射液', '2.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '乳酸左氧氟沙星氯化钠注射液', '大输液', '100ml:0.2g', '1', 'rszyfsxlhnzyy,rszyfsxlhnzsy', null);
INSERT INTO `ypxx` VALUES ('61671ccab3f041b2b0981b5f9eec66f4', '200651', '山东罗欣药业股份有限公司', '阿奇霉素', '0.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '阿奇霉素', '粉针', '0.125g', '1', 'ajms,ejms,aqms,eqms', null);
INSERT INTO `ypxx` VALUES ('616cfd4611404dd0b61fcd572fbf798b', '200803', '广东益和堂制药有限公司', '排石颗粒', '11.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '排石颗粒', '颗粒剂', '20g', '10', 'pskl,pdkl', null);
INSERT INTO `ypxx` VALUES ('61c797e1bdf3474fb099d3574c3e596d', '200652', '湖北午时药业股份有限公司', '妇科十味片', '3.74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '妇科十味片', '片剂', '0.3g', '100', 'fkswp', null);
INSERT INTO `ypxx` VALUES ('62110d8b2cca4187aeb03cea9e40c28f', '200653', '重庆东方药业股份有限公司', '五苓片', '14.45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '五苓片', '片剂', '0.35g', '100', 'wlp', null);
INSERT INTO `ypxx` VALUES ('626f37a66b82444d9f7b60b672f65bbc', '200654', '山东华鲁制药有限公司', '利多卡因', '0.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '利多卡因', '注射液', '10ml:0.2g', '1', 'ldky,ldqy', null);
INSERT INTO `ypxx` VALUES ('62b2a2281a59473d9c0228d5a09825ea', '200655', '湖南恒生制药股份有限公司', '注射用灯盏花素', '41.95', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '灯盏花素', '粉针', '50mg', '1', 'dzhs', null);
INSERT INTO `ypxx` VALUES ('63125a4e20054ff7af70e9a106b8e17c', '200656', '三门峡赛诺维制药有限公司', '乳酶生', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '乳酶生', '片剂', '0.15g', '1000', 'rms', null);
INSERT INTO `ypxx` VALUES ('636ed5ab5ab24f84a183fe2a3ce97679', '200657', '湖南金沙药业有限责任公司', '接骨七厘片', '40.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '接骨七厘片', '片剂', '相当于原生药量0.3g', '75', 'jgqlp', null);
INSERT INTO `ypxx` VALUES ('637afbcae68147669d9b505c94a5cb12', '200804', '湖北午时药业股份有限公司', '保和丸', '4.33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '保和丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'bhw', null);
INSERT INTO `ypxx` VALUES ('6393e96a1f4d4b3081cf9fb5fd07aa85', '200658', '株洲千金药业股份有限公司', '妇科千金胶囊', '36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '妇科千金胶囊', '胶囊', '0.4g', '36', 'fkqjjn', null);
INSERT INTO `ypxx` VALUES ('64f2be1fc08c4979915f3f014622dce0', '200659', '江苏康缘药业股份有限公司', '逍遥丸', '2.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '逍遥丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'xyw', null);
INSERT INTO `ypxx` VALUES ('65640b32e11c4632af3e71fb08cf9c2c', '200660', '上海现代制药股份有限公司', '浦虹', '1.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '罗红霉素', '片剂', '50mg', '10', 'lgms,lhms', null);
INSERT INTO `ypxx` VALUES ('659f6917051349288ec4edc5c8e931cf', '200661', '河北天成药业股份有限公司', '氯化钾注射液', '0.14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氯化钾', '注射液', '10ml:1.0g', '1', 'lhj', null);
INSERT INTO `ypxx` VALUES ('662a6d83dd3841b6ad123ba70a08e42a', '200662', '辰欣药业股份有限公司', '四环素可的松眼膏', '0.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '四环素可的松', '眼膏剂', '2.0g', '1', 'shskds', null);
INSERT INTO `ypxx` VALUES ('664e7ef3006c4a0098485e61703b3b6b', '200663', '海口市制药厂有限公司', '橘红片', '7.51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '橘红片', '片剂', '0.3g', '40', 'jgp,jhp', null);
INSERT INTO `ypxx` VALUES ('66575cd57a17483dafc4c6db213eb463', '200664', '贵州圣济堂制药有限公司', '盐酸二甲双胍肠溶片', '9.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '二甲双胍', '肠溶片', '0.5g', '45', 'ejsg', null);
INSERT INTO `ypxx` VALUES ('66a5a6c996324beebf0b4571dbdd2772', '200665', '马应龙药业集团股份有限公司', '水杨酸软膏', '1.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '水杨酸', '软膏剂', '10g:0.5g', '1', 'sys', null);
INSERT INTO `ypxx` VALUES ('66ac6980b6de4a30bd46c97a2c520f9a', '200666', '山东步长制药有限公司', '稳心颗粒', '24.54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '稳心颗粒', '颗粒剂', '9g', '9', 'wxkl', null);
INSERT INTO `ypxx` VALUES ('675bfa44762f41dfac50673d00015ddc', '200392', '山东鲁抗医药股份有限公司', '无', '0.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢唑林', '粉针', '0.5g', '1', 'tbzl', null);
INSERT INTO `ypxx` VALUES ('67d7b863da7d40348220e68fb8b925bd', '200805', '河南太龙药业股份有限公司', '0.9%氯化钠', '0.68', null, null, '2014-04-01 00:00:00', '1', null, null, null, null, '00401', null, '1', null, '2014-04-02 00:00:00', null, '2', null, null, null, '瓶', '0.9%氯化钠', '大输液', '100ml', '1', '0.9%lhn', null);
INSERT INTO `ypxx` VALUES ('67f0d60a5dd148caabfa6dd95ab4ee83', '200667', '上海信谊金朱药业有限公司', '无', '0.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨基己酸', '注射液', '10ml:2.0g', '1', 'ajjs', null);
INSERT INTO `ypxx` VALUES ('67f5a7a216f3441a9f3bcdef1487e99a', '200668', '辰欣药业股份有限公司', '维生素K1注射液', '0.76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素K1', '注射液', '1ml:10mg', '1', 'wssk1', null);
INSERT INTO `ypxx` VALUES ('684339be2be44eee8541013b7713a96f', '200669', '悦康药业集团北京凯悦制药有限公司', '头孢氨苄', '1.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢氨苄', '片剂', '0.125g', '30', 'tbab', null);
INSERT INTO `ypxx` VALUES ('68d4692e94354413bd341a4d9166db09', '200670', '朗致集团万荣药业有限公司', '桂枝茯苓丸', '35.94', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '桂枝茯苓丸', '水丸', '2.2g/10', '120', 'gqflw,gzflw', null);
INSERT INTO `ypxx` VALUES ('690862a7004647a6a73396b775f315d7', '200671', '河南禹州市药王制药有限公司', '八珍益母丸', '2.87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '八珍益母丸', '大蜜丸', '9g', '10', 'bzymw', null);
INSERT INTO `ypxx` VALUES ('690e110d41bf4277abfad2e1011d3f93', '200672', '开封制药(集团)有限公司', '环丙沙星', '0.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '环丙沙星', '片剂', '0.25g', '10', 'hbsx', null);
INSERT INTO `ypxx` VALUES ('69150c43c1f34189b806d71a68610095', '200806', '河南禹州市药王制药有限公司', '归脾丸', '3.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '归脾丸', '大蜜丸', '9g', '10', 'gpw', null);
INSERT INTO `ypxx` VALUES ('69197f9f90e14fe3971c2800c56baba0', '200673', '上海现代哈森(商丘)药业有限公司', '曲克芦丁注射液', '1.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '曲克芦丁', '注射液', '10ml:0.3g', '1', 'qklz,qkld', null);
INSERT INTO `ypxx` VALUES ('6979e47cb0674b1aa00664b666fa1412', '200259', '华北制药股份有限公司', '注射用头孢噻肟钠', '0.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢噻肟', '粉针', '1.0g', '1', 'tbsw', null);
INSERT INTO `ypxx` VALUES ('6a17ce71523e433799ee8f9f1ad0ba93', '200794', '成都康弘制药有限公司', '松龄血脉康胶囊', '25.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '松龄血脉康胶囊', '胶囊', '0.5g', '30', 'slxmkjn', null);
INSERT INTO `ypxx` VALUES ('6a516d400b4846fda944c50241518ff9', '200260', '哈尔滨圣泰生物制药有限公司', '血栓通', '2.63', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '血栓通', '注射液', '2ml:70mg', '1', 'xst', null);
INSERT INTO `ypxx` VALUES ('6a941e35409542438460ac93788eaaed', '200261', '浙江众益药业有限公司', '门冬氨酸钾镁片', '7.64', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '门冬氨酸钾镁', '片剂', '无水门冬氨酸钾79mg:无水门冬氨酸镁70mg', '100', 'mdasjm', null);
INSERT INTO `ypxx` VALUES ('6b44848eaee14786b6165f3adbd8e06b', '200262', '河南科伦药业有限公司', '10%葡萄糖', '1.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '10%葡萄糖', '大输液', '500ml(塑瓶)', '1', '10%ptt', null);
INSERT INTO `ypxx` VALUES ('6bcdec36519a4e21b29d46459032f646', '200807', '华北制药秦皇岛有限公司', '头孢拉定胶囊', '3.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢拉定', '胶囊', '0.25g', '24', 'tbld', null);
INSERT INTO `ypxx` VALUES ('6bdaf0e4a68e49a0a4ed2986e2443a74', '200263', '杭州民生药业有限公司', '螺内酯', '6.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '螺内酯', '片剂', '20mg', '100', 'lnz', null);
INSERT INTO `ypxx` VALUES ('6d308572837645bcb7a0c5f37d09fd55', '200264', '山东方明药业集团股份有限公司', '维A酸乳膏', '7.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维A酸', '乳膏剂', '15g:15mg', '1', 'was', null);
INSERT INTO `ypxx` VALUES ('6d77a12479a74f778d7916297c24ce1a', '200265', '山西正元盛邦制药有限公司', '养阴清肺丸', '4.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '养阴清肺丸', '大蜜丸', '9g', '10', 'yyqfw', null);
INSERT INTO `ypxx` VALUES ('6db80c96679f4546a5da693ddb534b64', '200266', '江西佑美制药有限公司', '三七伤药片', '4.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '三七伤药片', '片剂', '0.3g', '36', 'sqsyp', null);
INSERT INTO `ypxx` VALUES ('6e0ff7c60c6e4abeac9373a36e8899fd', '200267', '安徽新和成皖南药业有限公司', '地塞米松', '0.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '地塞米松', '乳膏剂', '10g:5mg', '1', 'dsms', null);
INSERT INTO `ypxx` VALUES ('6e90f5d6b51f4f28903c5e13a58cbcdc', '200268', '广东环球制药有限公司', '/', '23.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '玉屏风颗粒', '颗粒剂', '5g', '15', 'ypfkl,ybfkl', null);
INSERT INTO `ypxx` VALUES ('6ed9ed461c1a4b74912391c2457eae21', '200269', '开封制药(集团)有限公司', '卡托普利', '1.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '卡托普利', '片剂', '25mg', '100', 'ktpl,qtpl', null);
INSERT INTO `ypxx` VALUES ('6fe789f257994e1bae3199b484596aa0', '200270', '上海旭东海普药业有限公司', '舒可捷', '13.53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '硫糖铝', '混悬液', '5ml:1.0g', '12', 'ltl', null);
INSERT INTO `ypxx` VALUES ('6ff4a2a459a34b1f88a4cc77777a9648', '200271', '石药集团中诺药业(石家庄)有限公司', '中诺新', '11.39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '地尔硫卓', '粉针', '10mg', '1', 'delz', null);
INSERT INTO `ypxx` VALUES ('705686b622674a838190bcf5060367b3', '200808', '河南天方药业股份有限公司', '麦克罗辛', '15.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '盐酸二甲双胍缓释片', '缓释片', '0.5g', '64', 'ysejsghsp', null);
INSERT INTO `ypxx` VALUES ('7087e11ce08548aa8197a7f0a83330ea', '200272', '广东科伦药业有限公司', '柳氮磺吡啶', '17.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '柳氮磺吡啶', '栓剂', '0.5g', '6', 'ldhpd,ldhbd', null);
INSERT INTO `ypxx` VALUES ('716b6cf33408448ca41a20a8e50aa30d', '200273', '开封制药(集团)有限公司', '枸橼酸喷托维林片', '2.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '枸橼酸喷托维林片', '片剂', '25mg', '100', 'jysptwlp,gysptwlp', null);
INSERT INTO `ypxx` VALUES ('719ea6ea93e94eaea17835fa429f032b', '200274', '浙江一新制药股份有限公司', '必利那', '19.94', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '依那普利', '胶囊', '5mg', '36', 'ynpl', null);
INSERT INTO `ypxx` VALUES ('71d543e7dd524aae8f5b576505fa57b8', '200275', '四川科伦药业股份有限公司', '阿昔洛韦片', '2.22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿昔洛韦片', '片剂', '0.1g', '24', 'axlwp,exlwp', null);
INSERT INTO `ypxx` VALUES ('72171a6bb3a04fd8a7c5076322fd4262', '200276', '湖南五洲通药业有限责任公司', '氧氟沙星', '2.77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氧氟沙星', '粉针', '0.4g', '1', 'yfsx', null);
INSERT INTO `ypxx` VALUES ('72972e11db6c41ad945ad3d45b5d0a59', '200277', '贵州同济堂制药有限公司', '仙灵骨葆胶囊', '28.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '仙灵骨葆胶囊', '胶囊', '0.5g', '40', 'xlgbjn', null);
INSERT INTO `ypxx` VALUES ('72a266d54e5e4f5ebe47837ea6b030ac', '200278', '武汉中联集团四药药业有限公司', '酮康唑胶囊', '5.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '酮康唑', '胶囊', '0.2g', '12', 'tkz', null);
INSERT INTO `ypxx` VALUES ('72e7844eae97404ab5fff33a99e8eb14', '200279', '上海现代哈森(商丘)药业有限公司', '曲克芦丁注射液', '0.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '曲克芦丁', '注射液', '2ml:60mg', '1', 'qklz,qkld', null);
INSERT INTO `ypxx` VALUES ('731eae09c63d40d78eda5620eef75cd8', '200280', '湖南百草制药有限公司', '头孢拉定片', '5.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢拉定', '片剂', '0.25g', '24', 'tbld', null);
INSERT INTO `ypxx` VALUES ('7369bed2e64242d49c17bb8eebc90627', '200281', '四川升和药业股份有限公司', '参麦注射液', '1.79', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '参麦注射液', '注射液', '2ml', '1', 'smzyy,cmzsy,cmzyy,smzsy', null);
INSERT INTO `ypxx` VALUES ('738d6286925d486a96656efaac3a557e', '200809', '上海玉瑞生物科技（安阳）药业有限公司', '呋喃唑酮片', '1.69', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '呋喃唑酮', '片剂', '0.1g', '100', 'fnzt', null);
INSERT INTO `ypxx` VALUES ('73b1dc51f66143c99bb85d42339de4f5', '200282', '上海复旦复华药业有限公司', '酚妥拉明', '1.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '酚妥拉明', '粉针', '10mg', '1', 'ftlm', null);
INSERT INTO `ypxx` VALUES ('73ea12afacd84cf098c054558b5122d6', '200283', '河南科伦药业有限公司', '0.9%氯化钠', '0.93', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '0.9%氯化钠', '大输液', '100ml(塑瓶)', '1', '0.9%lhn', null);
INSERT INTO `ypxx` VALUES ('73f7360a9d404946af74451701456de1', '200284', '武汉福星生物药业有限公司', '甲硝唑', '1.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甲硝唑', '大输液', '250ml:1.25g', '1', 'jxz', null);
INSERT INTO `ypxx` VALUES ('7403a26afc0d43cd835edbdf32c4ca25', '200285', '上海爱的发制药有限公司', '利必非', '31.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '非诺贝特', '缓释胶囊', '0.25g', '10', 'fnbt', null);
INSERT INTO `ypxx` VALUES ('7447ffa30c4d4408b35265d5606e4c5d', '200286', '河南省宛西制药股份有限公司', '藿香正气丸', '6.99', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '藿香正气丸', '水丸', '6g', '10', 'hxzqw', null);
INSERT INTO `ypxx` VALUES ('7472990959574422a0e6073fe593ce77', '200287', '河南天方药业股份有限公司', '麦克罗辛', '7.74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '二甲双胍', '缓释片', '0.5g', '32', 'ejsg', null);
INSERT INTO `ypxx` VALUES ('74b02231f3e64abaa36cc0a31fc95d8a', '200288', '辰欣药业股份有限公司', '中/长链脂肪乳(C8-24)注射液', '81.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '中/长链脂肪乳(C8-24)', '大输液', '250ml(20%)', '1', 'z/clzfr(c8-24),z/zlzfr(c8-24)', null);
INSERT INTO `ypxx` VALUES ('756b8b3211784943a1384ef8c24c0ea6', '200289', '浙江震元制药有限公司', '泰罗', '1.09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '罗红霉素', '片剂', '0.15g', '6', 'lgms,lhms', null);
INSERT INTO `ypxx` VALUES ('7578ce34534046f8b2da7ab29d13b1e4', '200290', '西南药业股份有限公司', '布洛芬', '3.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '布洛芬', '缓释片', '0.3g', '10', 'blf', null);
INSERT INTO `ypxx` VALUES ('757ba73b9a5b40409fd5648b70a31c88', '200291', '陕西步长制药有限公司', '脑心通胶囊', '33.66', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '脑心通胶囊', '胶囊', '0.4g', '48', 'nxtjn', null);
INSERT INTO `ypxx` VALUES ('7581b2b895a9498396d40383c0673baf', '200810', '西安利君制药有限责任公司', '颠茄片', '5.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '颠茄', '片剂', '10mg', '1000', 'dj,dq', null);
INSERT INTO `ypxx` VALUES ('7634afa372764b959aea15e1e1c7b431', '200292', '江西药都樟树制药有限公司', '杞菊地黄丸', '2.52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '杞菊地黄丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'qjdhw', null);
INSERT INTO `ypxx` VALUES ('76785f61dc3348de906fd6e72f223303', '200293', '石药集团中诺药业(石家庄)有限公司', '氨苄西林', '0.32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨苄西林', '粉针', '0.5g', '1', 'abxl', null);
INSERT INTO `ypxx` VALUES ('769cae6d859d4aef980cc76eb759a694', '200294', '四川科伦药业股份有限公司', '葡萄糖注射液', '2.02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '葡萄糖注射液', '大输液', '100ml：5g(塑瓶)', '1', 'pttzyy,pttzsy', null);
INSERT INTO `ypxx` VALUES ('76d15eb3b7fa4bd8a033dc7476ae14cd', '200295', '上海黄海制药有限责任公司', '氯化钾', '4.52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氯化钾', '缓释片', '0.5g', '24', 'lhj', null);
INSERT INTO `ypxx` VALUES ('7733abc9a10c402cb433e4d2c502ff1c', '200296', '广州白云山明兴制药有限公司', '清开灵颗粒', '15.36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '清开灵颗粒', '颗粒剂', '3g', '12', 'qklkl', null);
INSERT INTO `ypxx` VALUES ('776f4381510a416f87567e4d0aaa2a4c', '200297', '华北制药股份有限公司', '注射用头孢噻肟钠', '0.66', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢噻肟', '粉针', '0.5g', '1', 'tbsw', null);
INSERT INTO `ypxx` VALUES ('777a66de1d854a288f500a5e2540a4af', '200298', '湖北航天杜勒制药有限公司', '复方氨基酸注射液18AA', '13.39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方氨基酸(18AA)', '大输液', '250ml:30g', '1', 'ffajs(18aa)', null);
INSERT INTO `ypxx` VALUES ('77ced6cdf88e4e1aac57cd948b91b92c', '200299', '河南康祺药业股份有限公司', '龙胆泻肝丸', '2.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '龙胆泻肝丸', '水丸', '6g', '10', 'ldxgw', null);
INSERT INTO `ypxx` VALUES ('781f949b0cf74aa58b072a0551dc11f2', '200300', '山东方明药业集团股份有限公司', '维A酸乳膏', '5.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维A酸', '乳膏剂', '15g:3.75mg', '1', 'was', null);
INSERT INTO `ypxx` VALUES ('785be4fdc07445b2804a6e56facc9083', '200811', '河北天成药业股份有限公司', '硫酸镁注射液', '0.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '硫酸镁', '注射液', '10ml:2.5g', '1', 'lsm', null);
INSERT INTO `ypxx` VALUES ('785bfdec61c347adaed1f9c470dfdfff', '200301', '石药集团中诺药业(石家庄)有限公司', '中诺立新', '1.05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢呋辛', '粉针', '0.75g', '1', 'tbfx', null);
INSERT INTO `ypxx` VALUES ('78b962622aa24e7c83e8584faefa481f', '200302', '天津金耀集团湖北天药药业股份有限公司', '三磷酸腺苷二钠', '0.11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '三磷酸腺苷二钠', '注射液', '2ml:20mg', '1', 'slsxgen', null);
INSERT INTO `ypxx` VALUES ('78e321aca48344c49993b22679d53aca', '200303', '东北制药集团沈阳第一制药有限公司', '无', '1.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '磷霉素钠', '粉针', '1.0g', '1', 'lmsn', null);
INSERT INTO `ypxx` VALUES ('79c107fc0ac64c91ac4dd1c426548fc9', '200304', '上海普康药业有限公司', '熊去氧胆酸', '6.13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '熊去氧胆酸', '片剂', '50mg', '30', 'xqyds', null);
INSERT INTO `ypxx` VALUES ('7a679107a4b645938014f4a9c7b5713c', '200305', '浙江亚太药业股份有限公司', '普罗帕酮', '2.87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '普罗帕酮', '片剂', '50mg', '100', 'plpt', null);
INSERT INTO `ypxx` VALUES ('7b65916811354281b4a3adad9f49a596', '200306', '广州白云山明兴制药有限公司', '东莨菪碱', '0.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '东莨菪碱', '注射液', '1ml:0.3mg', '1', 'dldj', null);
INSERT INTO `ypxx` VALUES ('7c0717abaea842838c18e50ac4a1cb5d', '200307', '石药银湖制药有限公司', '舒血宁注射液', '6.28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '舒血宁注射液', '注射液', '5ml', '1', 'sxnzyy,sxnzsy', null);
INSERT INTO `ypxx` VALUES ('7c0f6d5dbcad4121aff8a2187e9af4cf', '200308', '河南润弘制药股份有限公司', '无', '0.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '硝酸甘油', '注射液', '1ml:5mg', '1', 'xsgy', null);
INSERT INTO `ypxx` VALUES ('7c177a1e82854d69868316e41478e6a8', '200309', '上海现代制药股份有限公司', '欣然', '15.23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '硝苯地平控释片', '控释片', '30mg', '6', 'xbdpksp', null);
INSERT INTO `ypxx` VALUES ('7c4e13842a9c40dcb54716eb2bb316ca', '200812', '安徽精方药业股份有限公司', '颈舒颗粒', '36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '颈舒颗粒', '颗粒剂', '6g', '9', 'gskl,jskl', null);
INSERT INTO `ypxx` VALUES ('7d205d31529a4eca8e2919f18804c4e3', '200310', '辅仁药业集团有限公司', '枸橼酸铋钾', '9.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '枸橼酸铋钾', '胶囊', '0.3g(0.11g)', '40', 'jysbj,gysbj', null);
INSERT INTO `ypxx` VALUES ('7d4096abe3db4af9a8c1f03bfec13105', '200311', '上海旭东海普药业有限公司', '无', '4.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '曲安奈德', '注射液', '5ml:50mg', '1', 'qand', null);
INSERT INTO `ypxx` VALUES ('7deae9b879cb49079cc8018e02b0896c', '200312', '浙江天瑞药业有限公司', '氯化钾', '0.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氯化钾', '注射液', '10ml:1.5g', '1', 'lhj', null);
INSERT INTO `ypxx` VALUES ('7dedadad3512487d937e9e383f543c50', '200313', '石家庄四药有限公司', '无', '5.97', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '地尔硫卓', '片剂', '30mg', '60', 'delz', null);
INSERT INTO `ypxx` VALUES ('7e52483bc4304e6ea37e8ece76d77eb4', '200314', '四川依科制药有限公司', '多酶', '2.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '多酶', '片剂', '胰酶0.3g:胃蛋白酶13mg', '100', 'dm', null);
INSERT INTO `ypxx` VALUES ('7e6d914cf1ee441dac78054e60c2f9f8', '200315', '山东健康药业有限公司', '氟桂利嗪', '9.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氟桂利嗪', '片剂', '5mg', '40', 'fglq', null);
INSERT INTO `ypxx` VALUES ('7e6f21748f5d4688960553dc6d42fe0a', '200316', '华润三九医药股份有限公司', '补脾益肠丸', '11.13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '补脾益肠丸', '水蜜丸', '90g', '1', 'bpycw', null);
INSERT INTO `ypxx` VALUES ('7e73ad419510435a8fe4800f269a1cf6', '200813', '宜昌长江药业有限公司', '法莫替丁胶囊', '1.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '法莫替丁胶囊', '胶囊', '20mg', '24', 'fmtzjn,fmtdjn', null);
INSERT INTO `ypxx` VALUES ('7efd9e96bd6b424ab180f930a683fb34', '200317', '河南润弘制药股份有限公司', '无', '0.22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '门冬氨酸钾镁', '注射液', '10ml:0.85g:0.114g:42mg', '1', 'mdasjm', null);
INSERT INTO `ypxx` VALUES ('7f216de2f4af450d9a39b67907c5aec6', '200318', '重庆科瑞制药（集团）有限公司', '利巴韦林', '2.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '利巴韦林', '片剂', '0.1g', '20', 'lbwl', null);
INSERT INTO `ypxx` VALUES ('7fd4aed67c3243529ce270a2a363583b', '200319', '华润三九医药股份有限公司', '三九胃泰颗粒', '14.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '三九胃泰颗粒', '颗粒剂', '2.5g（无糖型）', '10', 'sjwtkl', null);
INSERT INTO `ypxx` VALUES ('7fdd90eab1ac4055b95380e678b65c30', '200320', '江西药都仁和制药有限公司', '杞菊地黄丸', '3.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '杞菊地黄丸', '水蜜丸', '6g', '10', 'qjdhw', null);
INSERT INTO `ypxx` VALUES ('7ffa850b596b4334ad0d413002226c67', '200321', '江苏万邦生化医药股份有限公司', '精蛋白锌胰岛素', '12.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '精蛋白锌胰岛素', '注射液', '10ml:400IU', '1', 'jdbxyds', null);
INSERT INTO `ypxx` VALUES ('80160429d3a34e36805a2592b31e8883', '200322', '上海福达制药有限公司', '左旋多巴', '15.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '左旋多巴', '片剂', '0.25g', '100', 'zxdb', null);
INSERT INTO `ypxx` VALUES ('811874538aab425a8bf65e209888a71f', '200323', '安徽福康药业有限责任公司', '益母草膏', '6.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '益母草膏', '煎膏剂', '250g', '1', 'ymcg', null);
INSERT INTO `ypxx` VALUES ('81286286ef2a42ab9d557deecca0366b', '200324', '北京嘉林药业股份有限公司', '胺碘酮', '9.02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '胺碘酮', '片剂', '0.2g', '24', 'adt', null);
INSERT INTO `ypxx` VALUES ('81393aa920004c7182897250812de77d', '200814', '辅仁药业集团有限公司', '炎琥宁', '0.88', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '炎琥宁', '粉针', '80mg', '1', 'yhn', null);
INSERT INTO `ypxx` VALUES ('815082459c1a43b5a6f00dd9d4222b0b', '200325', '河南太龙药业股份有限公司', '葡萄糖氯化钠', '1.26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '葡萄糖氯化钠', '大输液', '500ml', '1', 'pttlhn', null);
INSERT INTO `ypxx` VALUES ('8184e03103ac4ed2a9f6850db5cde399', '200326', '华夏药业集团有限公司原(华夏药业有限公司)', '元坦', '19.27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '格列吡嗪分散片', '分散片', '5mg', '40', 'glbqfsp,glpqfsp', null);
INSERT INTO `ypxx` VALUES ('82678db3ce444b9a9d2812a65bd5d929', '200327', '广州白云山明兴制药有限公司', '普罗帕酮', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '普罗帕酮', '注射液', '10ml:35mg', '1', 'plpt', null);
INSERT INTO `ypxx` VALUES ('826fcc8916f840c5a1d35e85832d5612', '200328', '成都锦华药业有限责任公司', '阿莫西林胶囊', '2.53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林', '胶囊', '0.125g', '50', 'amxl,emxl', null);
INSERT INTO `ypxx` VALUES ('8275157efe7b47a7b635f3f573c75075', '200329', '辰欣药业股份有限公司', '红霉素软膏', '0.54', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '红霉素', '软膏剂', '10g:0.1g(1%)', '1', 'hms,gms', null);
INSERT INTO `ypxx` VALUES ('8291628c992f46be881786de8cf342ee', '200330', '上海通用药业股份有限公司', '丙酸睾酮注射液', '0.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '丙酸睾酮', '注射液', '1ml:25mg', '1', 'bsgt', null);
INSERT INTO `ypxx` VALUES ('838703579dac4138ad036440ad56c228', '200815', '广州白云山明兴制药有限公司', '氨茶碱', '0.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨茶碱', '注射液', '2ml:0.5g', '1', 'acj', null);
INSERT INTO `ypxx` VALUES ('83ca759a00e0479c8b303f0b83dcd936', '200331', '辰欣药业股份有限公司', '克霉唑', '0.62', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '克霉唑', '软膏剂', '10g:0.3g(3%)', '1', 'kmz', null);
INSERT INTO `ypxx` VALUES ('8401e81d57e744adb455003d1c4a0293', '200332', '安阳市华安药业有限责任公司', '冬凌草片', '6.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '冬凌草片', '片剂', '0.25g', '100', 'dlcp', null);
INSERT INTO `ypxx` VALUES ('853f86f2e9e548cb99c564d12cfd93ed', '200333', '湖北汇瑞药业股份有限公司', '吲达帕胺缓释片', '17.49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '吲哒帕胺', '缓释片', '1.5mg', '30', 'ydpa', null);
INSERT INTO `ypxx` VALUES ('8540fbc178594e95906e38780da970a4', '200334', '天津药业集团新郑股份有限公司', '无', '0.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '灭菌注射用水', '注射液', '5ml', '1', 'mjzyys,mjzsys', null);
INSERT INTO `ypxx` VALUES ('855a471edd20484c996f821595d1c064', '200335', '江西药都樟树制药有限公司', '归脾丸', '3.21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '归脾丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'gpw', null);
INSERT INTO `ypxx` VALUES ('8579112e67534c49bc3881d984844b14', '200336', '成都恒瑞制药有限公司', '亦明', '12.47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '克拉霉素', '分散片', '0.125g', '12', 'klms', null);
INSERT INTO `ypxx` VALUES ('85832d2699734e398118c86c90fc9e41', '200337', '天津红日药业股份有限公司', '博璞青', '28.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '低分子肝素钙', '注射液', '0.6ml:6000AXaIU', '1', 'dfzgsg', null);
INSERT INTO `ypxx` VALUES ('85869e40455945648864c9073e74dabd', '200816', '颈复康药业集团有限公司', '颈复康颗粒', '20.67', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '颈复康颗粒', '颗粒剂', '5g', '10', 'jfkkl,gfkkl', null);
INSERT INTO `ypxx` VALUES ('8588889818184c5b84c7ae2dccc288f3', '200338', '天津中新药业集团股份有限公司乐仁堂制药厂', '乌鸡白凤片', '26.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '乌鸡白凤片', '片剂', '0.5g', '24', 'wjbfp', null);
INSERT INTO `ypxx` VALUES ('85aa0dec365b4f248abfb631761486e0', '200339', '石药集团中诺药业(石家庄)有限公司', '舒配', '1.95', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢噻肟', '粉针', '2.0g', '1', 'tbsw', null);
INSERT INTO `ypxx` VALUES ('86b883c9b69545bd8b6c79bd90515896', '200202', '浙江仙琚制药股份有限公司', '醋酸泼尼松片', '3.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '醋酸泼尼松片', '片剂', '5mg', '100', 'cspnsp', null);
INSERT INTO `ypxx` VALUES ('86b962408f8840f6a05a58aac720b8b2', '200203', '上海医疗器械(集团)有限公司卫生材料厂', '关节止痛膏', '0.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '袋', '关节止痛膏', '橡胶膏剂', '7cm*10cm', '2', 'gjztg', null);
INSERT INTO `ypxx` VALUES ('86f8f0650fcd4eaf9ca8ed931e5013be', '200204', '芜湖张恒春药业有限公司', '香砂养胃丸', '2.95', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '香砂养胃丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'xsyww', null);
INSERT INTO `ypxx` VALUES ('8714835dd68a470f92d88b5deeb6c5bd', '200428', '安徽宏业药业有限公司', '硫糖铝', '1.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '硫糖铝', '片剂', '0.25g', '100', 'ltl', null);
INSERT INTO `ypxx` VALUES ('8716ba5a0c4e447c9859cdaa220ef49f', '200205', '石家庄以岭药业股份有限公司', '连花清瘟胶囊', '11.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '连花清瘟胶囊', '胶囊', '0.35g', '24', 'lhqwjn', null);
INSERT INTO `ypxx` VALUES ('8743a95fb3d34107bfab4870741932ea', '200466', '江苏吴中医药集团有限公司苏州制药厂', '盐酸纳洛酮注射液', '7.29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '纳洛酮', '注射液', '2ml:2mg', '1', 'nlt', null);
INSERT INTO `ypxx` VALUES ('87644063ad9c40259117ee26e896d846', '200467', '山东健康药业有限公司', '尼莫地平', '3.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '尼莫地平', '片剂', '30mg', '100', 'nmdp', null);
INSERT INTO `ypxx` VALUES ('87b2bb249f974044a664536234f05ee1', '200468', '长春海悦药业有限公司', '乙酰谷酰胺', '3.87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '乙酰谷酰胺', '粉针', '0.25g', '1', 'yxgxa,yxyxa', null);
INSERT INTO `ypxx` VALUES ('87d11329049d4209b6b318db774dba41', '200469', '浙江奥托康制药集团股份有限公司', '阿奇霉素片', '64.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '硫唑嘌呤', '片剂', '50mg', '100', 'lzpl', null);
INSERT INTO `ypxx` VALUES ('87d24184ba0a467da5756189f82adfd2', '200470', '蓬莱诺康药业有限公司', '注射用血凝酶', '39.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '血凝酶', '粉针', '1IU', '1', 'xnm', null);
INSERT INTO `ypxx` VALUES ('87dbcc2fe29c4cc48e7c0c50326358fd', '200471', '天津天药药业股份有限公司', '无', '1.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '地塞米松', '片剂', '0.75mg', '100', 'dsms', null);
INSERT INTO `ypxx` VALUES ('8845cb2b448143838cb9e11e554561b2', '200472', '江西南昌济生制药厂', '?', '18.91', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '排石颗粒', '颗粒剂', '5g(无糖型)', '10', 'pskl,pdkl', null);
INSERT INTO `ypxx` VALUES ('887cb5f86b174b40b22962698f086163', '200429', '江苏克胜药业有限公司', '辅酶Q10胶囊', '2.74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '辅酶Q10', '胶囊', '5mg', '30', 'fmq10', null);
INSERT INTO `ypxx` VALUES ('88b4815bd5b7462b91146183462a03dd', '200473', '河南怀庆药业有限责任公司', '槐角丸', '2.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '槐角丸', '大蜜丸', '9g', '10', 'hjw', null);
INSERT INTO `ypxx` VALUES ('88ebadddad5045b2a82198242957e691', '200474', '石药集团中诺药业(石家庄)有限公司', '氨溴索', '6.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氨溴索', '口服液', '10ml:30mg', '10', 'axs', null);
INSERT INTO `ypxx` VALUES ('8902fe3737544717985f72cafc587907', '200475', '石药集团中诺药业(石家庄)有限公司', '头孢曲松钠', '0.95', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢曲松钠', '粉针', '1.0g', '1', 'tbqsn', null);
INSERT INTO `ypxx` VALUES ('895501c3fac5404283cf744d076e340d', '200476', '湖南科伦制药有限公司', '红霉素', '1.03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '红霉素', '粉针', '0.25g', '1', 'hms,gms', null);
INSERT INTO `ypxx` VALUES ('8976adc2d0f64991a21917f9d49857ee', '200477', '哈尔滨珍宝制药有限公司', '刺五加注射液', '1.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '刺五加注射液', '注射液', '20ml:0.1g', '1', 'cwjzyy,cwjzsy', null);
INSERT INTO `ypxx` VALUES ('8a1aea11cd9a4990a5a2b241d96fceb0', '200478', '广东台城制药股份有限公司', '金匮肾气片', '24.33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '金匮肾气片', '片剂', '0.27g', '100', 'jksqp', null);
INSERT INTO `ypxx` VALUES ('8a6ed42d416d470e8136ac1bf22e35d6', '200479', '河南康祺药业股份有限公司', '银翘解毒片', '3.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '银翘解毒片', '片剂', '/', '48', 'yqjdp,yqxdp', null);
INSERT INTO `ypxx` VALUES ('8aa3bee08f7f4fd1903dfd5205cef411', '200480', '江苏四环生物制药有限公司', '甲钴胺', '26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甲钴胺', '分散片', '0.5mg　　', '20', 'jga', null);
INSERT INTO `ypxx` VALUES ('8aee814ecd394c04b291213ef76a72bc', '200430', '桂龙药业（安徽）有限公司', '更年安片', '8.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '更年安片', '片剂', '0.3g', '100', 'gnap', null);
INSERT INTO `ypxx` VALUES ('8b13f47d76ec452e9dae39e202c47144', '200481', '河北万岁药业有限公司', '脑立清胶囊', '3.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '脑立清胶囊', '胶囊', '0.33g', '24', 'nlqjn', null);
INSERT INTO `ypxx` VALUES ('8b299d0c04674bdabb2e2d71b0316585', '200482', '哈尔滨一洲制药有限公司', '旨泰', '12.95', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '辛伐他汀', '胶囊', '20mg', '10', 'xftt', null);
INSERT INTO `ypxx` VALUES ('8b669f75d964462f911799c63a357bc7', '200483', '武汉五景药业有限公司', '氧氟沙星滴耳液', '1.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氧氟沙星', '滴耳液', '5ml:15mg', '1', 'yfsx', null);
INSERT INTO `ypxx` VALUES ('8bfc9364b93d4c01a65b5d6b687d4bb2', '200484', '济南利民制药有限责任公司', '克霉唑', '10.45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '克霉唑', '阴道片', '0.5g', '2', 'kmz', null);
INSERT INTO `ypxx` VALUES ('8c1d809fa27a4d6e97cfa2a0181e81f4', '200790', '山东华鲁制药有限公司', '灭菌注射用水', '1.79', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '灭菌注射用水', '大输液', '500ml(塑瓶)', '1', 'mjzyys,mjzsys', null);
INSERT INTO `ypxx` VALUES ('8c285b91ac07457ab8686668fa740a6d', '200485', '河北天成药业股份有限公司', '注射用维生素C', '1.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素C', '粉针', '1.0g', '1', 'wssc', null);
INSERT INTO `ypxx` VALUES ('8ca78455c9f2452898e2e61e0ccb1c2a', '200486', '西安天一秦昆制药有限责任公司', '银黄颗粒', '18.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银黄颗粒', '颗粒剂', '4g(无糖型)', '16', 'yhkl', null);
INSERT INTO `ypxx` VALUES ('8cb157bed4cd44b6bed3edca34de2798', '200487', '山东罗欣药业股份有限公司', '阿奇霉素', '0.81', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '阿奇霉素', '粉针', '0.25g', '1', 'ajms,ejms,aqms,eqms', null);
INSERT INTO `ypxx` VALUES ('8cfab39efad64a1da64775568a9fe239', '200488', '山东罗欣药业股份有限公司', '氯雷他定', '2.18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氯雷他定', '胶囊', '10mg', '6', 'lltd', null);
INSERT INTO `ypxx` VALUES ('8d9f30a063ec49f09d5cde51043f10ec', '200431', '石药集团欧意药业有限公司', '腺苷钴胺片', '2.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '腺苷钴胺', '片剂', '0.25mg', '100', 'xgga', null);
INSERT INTO `ypxx` VALUES ('8da40830742e4657884e6179d0ccd891', '200489', '郑州瑞康制药有限公司', '盐酸特拉唑嗪片', '6.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '特拉唑嗪', '片剂', '2mg', '28', 'tlzq', null);
INSERT INTO `ypxx` VALUES ('8e1d53a6d63c46b8b78365feee416d33', '200490', '拜耳医药保健有限公司', '拜阿司匹灵', '13.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿司匹林', '肠溶片', '0.1g（增加适应症）', '30', 'aspl,espl,asyl,esyl', null);
INSERT INTO `ypxx` VALUES ('8e42d9d098a3433cac8337f3c737ab1a', '200491', '河南省百泉制药有限公司', '柴胡口服液', '5.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '柴胡口服液', '口服液', '10ml', '10', 'chkfy', null);
INSERT INTO `ypxx` VALUES ('8e5d807ff8ca4a829a25f4e14d0308c3', '200492', '上海现代哈森(商丘)药业有限公司', '西咪替丁注射液', '0.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '西咪替丁', '注射液', '2ml:0.2g', '1', 'xmtd,xmtz', null);
INSERT INTO `ypxx` VALUES ('8ed2f8cc77154b40bd3f76ff0cb359c7', '200493', '无锡济民可信山禾药业股份有限公司', '黄氏响声丸', '18.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '黄氏响声丸', '水丸', '0.133g', '108', 'hsxsw,hzxsw', null);
INSERT INTO `ypxx` VALUES ('8f33724ecc5c4aeebded9cc3bd321ec5', '200494', '国药集团容生制药有限公司', '辅酶A', '0.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '辅酶A', '粉针', '100U', '1', 'fma', null);
INSERT INTO `ypxx` VALUES ('8f452d16345a4bd78ee6d15e33772c5c', '200495', '云南个旧生物药业有限公司', '顺铂注射液', '9.32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '顺铂', '注射液', '2ml:10mg', '1', 'sb', null);
INSERT INTO `ypxx` VALUES ('8f8944a533194d5f9315abda29555255', '200432', '科伦集团(四川科伦)', '脂肪乳注射液(C14-24)', '27.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '脂肪乳注射液(C14-24)', '大输液', '20% 250ml:50g:3g', '1', 'zfrzyy(c14-24),zfrzsy(c14-24)', null);
INSERT INTO `ypxx` VALUES ('8f8c55351de649579286ba2809a4ff33', '200496', '河北万岁药业有限公司', '脑立清丸', '0.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '脑立清丸', '水丸', '1.1g/10', '100', 'nlqw', null);
INSERT INTO `ypxx` VALUES ('8fadbcc4fcf44aadb277779355906ba1', '200497', '石药银湖制药有限公司', '红花注射液', '1.46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '红花注射液', '注射液', '5ml', '1', 'hhzsy,ghzsy,hhzyy,ghzyy', null);
INSERT INTO `ypxx` VALUES ('8fb022716f4b4cc6945c2eae867f825b', '200498', '湖南方盛制药股份有限公司', '蒙脱石散', '5.97', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '蒙脱石', '散剂', '3.0g', '10', 'mts,mtd', null);
INSERT INTO `ypxx` VALUES ('8fce5c2a18c545369f2dabde73ece92e', '200499', '上海信谊药厂有限公司', '无', '8.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '丙米嗪', '片剂', '25mg', '100', 'bmq', null);
INSERT INTO `ypxx` VALUES ('8fe9ca1f221e4612b8712007a11934fe', '200500', '湖南科伦制药有限公司', '倍斯平', '1.33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '穿琥宁', '粉针', '0.2g', '1', 'chn', null);
INSERT INTO `ypxx` VALUES ('9051c1b4d16e44cdabb287ed7332b6b1', '200388', '湖南洞庭药业股份有限公司', '无', '2.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氟哌啶醇', '注射液', '1ml:5mg', '1', 'fpdc', null);
INSERT INTO `ypxx` VALUES ('90847ff258b440ffbfe0b75150af619e', '200501', '浙江普洛康裕天然药物有限公司', '雷公藤多苷片', '9.24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '雷公藤多甙片', '片剂', '10mg', '50', 'lgtddp', null);
INSERT INTO `ypxx` VALUES ('90ac734f3b7a4f8eaada414d58e8e0ed', '200502', '常州四药制药有限公司', '美托洛尔', '4.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '美托洛尔', '片剂', '25mg', '20', 'mtle', null);
INSERT INTO `ypxx` VALUES ('90bbfaa46f4f47bc83ec517f84d438cb', '200503', '太极集团重庆涪陵制药厂有限公司', '急支颗粒', '12.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '急支颗粒', '颗粒剂', '4g', '12', 'jzkl', null);
INSERT INTO `ypxx` VALUES ('90cfd057c5fc46b2a43a9ac90da47f2b', '200587', '河南太龙药业股份有限公司', '5%葡萄糖', '1.24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '5%葡萄糖', '大输液', '500ml', '1', '5%ptt', null);
INSERT INTO `ypxx` VALUES ('90ff35714f3142b0ad758139cd611c83', '200588', '兰州太宝制药有限公司', '耳聋左慈丸', '8.64', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '耳聋左慈丸', '浓缩丸', '每8丸相当于原药材3g', '192', 'elzcw', null);
INSERT INTO `ypxx` VALUES ('915b1a077b184c1a806c86b51595c567', '200443', '成都百裕科技制药有限公司', '盐酸氨溴索注射液', '7.36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨溴索', '注射液', '4ml:30mg', '1', 'axs', null);
INSERT INTO `ypxx` VALUES ('9176a950542346ecab0cfdb58b9e04bc', '200589', '云南白药集团股份有限公司', '藿香正气胶囊', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '藿香正气胶囊', '胶囊', '0.3g', '24', 'hxzqjn', null);
INSERT INTO `ypxx` VALUES ('918a7ce568aa4d1997294882f46ccfb1', '200590', '荣昌制药（淄博）有限公司', '痔疮栓', '14.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '痔疮栓', '栓剂', '2g', '5', 'zcs', null);
INSERT INTO `ypxx` VALUES ('91b72a742be5431886f83ad674cd38a7', '200591', '上海禾丰制药有限公司', '多巴胺', '0.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '多巴胺', '注射液', '2ml:20mg', '1', 'dba', null);
INSERT INTO `ypxx` VALUES ('926265d70b4345daadf3ff2ac7e59ef0', '200793', '通化东宝药业股份有限公司', '甘舒霖30R(笔芯)', '46.22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '30/70混合重组人胰岛素', '注射液', '3ml:300IU', '1', '30/70hgczryds,30/70hhzzryds,30/70hgzzryds,30/70hhczryds', null);
INSERT INTO `ypxx` VALUES ('928133006e084036870a35e844828c39', '200592', '悦康药业集团有限公司', '豪林钠', '1.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '炎琥宁', '粉针', '0.2g', '1', 'yhn', null);
INSERT INTO `ypxx` VALUES ('92a20865d989406ab927355ee686e2b0', '200593', '河南龙都药业有限公司', '晕痛定胶囊', '20.97', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '晕痛定胶囊', '胶囊', '0.4g', '27', 'ytdjn', null);
INSERT INTO `ypxx` VALUES ('92c334bb3c994f84907681fdc53c2e18', '200594', '浙江仙琚制药股份有限公司', '益玛欣', '31.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '黄体酮', '胶囊', '50mg', '20', 'hbt,htt', null);
INSERT INTO `ypxx` VALUES ('935ca3063bd24a02b091572257e8d137', '200595', '马鞍山丰原制药有限公司', '尿激酶', '4.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '尿激酶', '粉针', '1WIU', '1', 'sjm,njm', null);
INSERT INTO `ypxx` VALUES ('935f8bedb4844454aa0f2224a59f34b9', '200596', '浙江亚太药业股份有限公司', '亚力希', '1.49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '罗红霉素', '胶囊', '50mg', '10', 'lgms,lhms', null);
INSERT INTO `ypxx` VALUES ('9390406eb3be4f3cba22b92c92a7c768', '200597', '江西赣南海欣药业股份有限公司', '无', '19.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素D2', '注射液', '1ml:5mg(20WIU)', '1', 'wssd2', null);
INSERT INTO `ypxx` VALUES ('93cc9d26c2ac4d69bc2e627e7c86dba5', '200444', '天津金耀氨基酸有限公司', '甲氧氯普胺', '0.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '甲氧氯普胺', '注射液', '2ml:10mg', '1', 'jylpa', null);
INSERT INTO `ypxx` VALUES ('93e9feb76297423984d4ae9a7c81de44', '200598', '山西普德药业股份有限公司', '甲氨蝶呤', '2.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '甲氨蝶呤', '粉针', '5mg', '1', 'jadl', null);
INSERT INTO `ypxx` VALUES ('9408033439aa4bd0b3bc05e2d337e1e5', '200599', '扬子江药业集团江苏制药股份有限公司', '无', '7.79', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '胃苏颗粒', '颗粒剂', '5g(无糖型)', '3', 'wskl', null);
INSERT INTO `ypxx` VALUES ('94548226629a405f82ae0d364bf57889', '200600', '北京益民药业有限公司', '普鲁卡因', '0.56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '普鲁卡因', '注射液', '10ml:0.1g', '1', 'plky,plqy', null);
INSERT INTO `ypxx` VALUES ('945aee1f58ff4efba6d50723d49555f0', '200601', '广州白云山天心制药股份有限公司', '司佩定', '6.42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢呋辛酯', '片剂', '0.25g', '6', 'tbfxz', null);
INSERT INTO `ypxx` VALUES ('945e9eeff215496294985ca6eec229f7', '200602', '四川禾润制药有限公司', '逍遥丸', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '逍遥丸', '水丸', '6g', '20', 'xyw', null);
INSERT INTO `ypxx` VALUES ('94cada274bfd4964a774a97ce00c147f', '200603', '浙江万邦药业股份有限公司', '万邦信诺康', '25.58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银杏叶滴丸', '滴丸', '63mg(相当于银杏叶提取物16mg)', '60', 'yxxdw,yxydw', null);
INSERT INTO `ypxx` VALUES ('94f71020e25f4ef1beab33b0dcad4c55', '200604', '辰欣药业股份有限公司', '甲硝唑氯化钠注射液', '0.92', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甲硝唑', '大输液', '250ml:0.5g', '1', 'jxz', null);
INSERT INTO `ypxx` VALUES ('95b455abf7d04c3ca1629459389a30d8', '200445', '山东罗欣药业股份有限公司', '宁沙', '1.06', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '左氧氟沙星', '粉针', '0.2g', '1', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('95b521d957e646ac80b2d748b48f818f', '200605', '河南天方药业股份有限公司', '倍他司汀', '0.93', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '倍他司汀', '注射液', '2ml:10mg', '1', 'btst', null);
INSERT INTO `ypxx` VALUES ('95c199ba2266491aa0926b59485d40bc', '200606', '山东罗欣药业股份有限公司', '辛伐他汀', '1.66', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '辛伐他汀', '片剂', '5mg', '20', 'xftt', null);
INSERT INTO `ypxx` VALUES ('95e8a59670b94abcaf59fead537dd215', '200607', '上海新亚药业闵行有限公司', '单硝酸异山梨酯', '10.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '单硝酸异山梨酯', '缓释片', '40mg', '14', 'cxsyslz,sxsyslz,dxsyslz', null);
INSERT INTO `ypxx` VALUES ('960a7e3b940e409985a7cd910523da92', '200608', '宜昌人福药业有限责任公司', '头孢氨苄颗粒', '1.27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢氨苄', '颗粒剂', '0.125g', '12', 'tbab', null);
INSERT INTO `ypxx` VALUES ('96c554ac17264ffd97ddd2d4b5f2d4ce', '200609', '江西南昌济生制药厂', '生脉饮(党参)', '5.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '生脉饮(党参)', '口服液', '10ml（无糖型）', '10', 'smy(dc),smy(ds)', null);
INSERT INTO `ypxx` VALUES ('9748817e24f14599b1aa63cb9b0aa2e7', '200610', '北京北大维信生物科技有限公司', '血脂康胶囊', '24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '血脂康胶囊', '胶囊', '0.3g', '24', 'xzkjn', null);
INSERT INTO `ypxx` VALUES ('97bc3913d34e41d2a6c95f6c8fc51ffa', '200611', '重庆东方药业股份有限公司', '黄连上清颗粒', '12.99', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '黄连上清颗粒', '颗粒剂', '2g', '12', 'hlsqkl', null);
INSERT INTO `ypxx` VALUES ('9816fef12b144f188d86bf00af2f33af', '200612', '山东淄博新达制药有限公司', '道奇', '1.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿奇霉素', '片剂', '0.25g', '6', 'ajms,ejms,aqms,eqms', null);
INSERT INTO `ypxx` VALUES ('98737f88856b4792af9aab61141fb75d', '200446', '黄石三九药业有限公司', '八珍益母丸', '4.61', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '八珍益母丸', '水蜜丸', '60g', '1', 'bzymw', null);
INSERT INTO `ypxx` VALUES ('988e5274fb6c4989878cd84f11883bb6', '200613', '辰欣药业股份有限公司', '克林霉素磷酸酯注射液', '0.67', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '克林霉素磷酸酯', '注射液', '2ml:0.3g', '1', 'klmslsz', null);
INSERT INTO `ypxx` VALUES ('98e0d02bf7334c138ee88b736445bff1', '200614', '河南百年康鑫药业有限公司', '木香顺气丸', '3.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '木香顺气丸', '水丸', '6g(3g/50)', '10', 'mxsqw', null);
INSERT INTO `ypxx` VALUES ('997f35834c0a469aab4185872a686d69', '200615', '扬子江药业集团江苏制药股份有限公司', '无', '7.41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '胃苏颗粒', '颗粒剂', '15g', '3', 'wskl', null);
INSERT INTO `ypxx` VALUES ('99b59540f851408f97718282a0d151c3', '200616', '新乡恒久远药业有限公司', '无', '1.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '对乙酰氨基酚', '片剂', '0.3g', '100', 'dyxajf', null);
INSERT INTO `ypxx` VALUES ('99c612ff7bfa4d138d09c3fef2ce1e56', '200617', '辰欣药业股份有限公司', '乳酸钠林格注射液', '1.77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '乳酸钠林格', '大输液', '500ml(玻瓶)', '1', 'rsnlg', null);
INSERT INTO `ypxx` VALUES ('9a2233dafe984117b8c2de01df0918b0', '200618', '河南科伦药业有限公司', '葡萄糖氯化钠', '1.18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '葡萄糖氯化钠', '大输液', '250ml(塑瓶)', '1', 'pttlhn', null);
INSERT INTO `ypxx` VALUES ('9a2925e2edc3424fb361acd0e0ddab60', '200619', '山东罗欣药业股份有限公司', '洛伐他汀', '3.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '洛伐他汀', '片剂', '10mg', '20', 'lftt', null);
INSERT INTO `ypxx` VALUES ('9a2c10956f274dbdbf7ae6769a152aea', '200620', '西南药业股份有限公司', '阿托品', '3.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '阿托品', '片剂', '0.3mg', '1000', 'etp,atp', null);
INSERT INTO `ypxx` VALUES ('9a38111f32f942a2893e72115d485c4f', '200447', '河南省洛正制药厂', '筋骨痛消丸', '26.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '筋骨痛消丸', '颗粒剂', '6g', '12', 'jgtxw', null);
INSERT INTO `ypxx` VALUES ('9a85a5eb17d143e3852f6f2704c15803', '200621', '山东罗欣药业股份有限公司', '宁沙', '0.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '左氧氟沙星', '粉针', '0.1g', '1', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('9ac4a69acccd4d999a1061a7e14cc3bf', '200622', '常州四药制药有限公司', '阿米替林', '13.45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '阿米替林', '片剂', '25mg', '100', 'amtl,emtl', null);
INSERT INTO `ypxx` VALUES ('9ad11ca401054dce95b8c5735066aabc', '200623', '云南维和药业股份有限公司', '活血止痛散', '9.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '活血止痛散', '散剂', '3g', '6', 'hxzts', null);
INSERT INTO `ypxx` VALUES ('9b3f2038caef49ac913891ace2daaf53', '200624', '通化东宝药业股份有限公司', '镇脑宁胶囊', '16.67', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '镇脑宁胶囊', '胶囊', '0.3g', '60', 'znnjn', null);
INSERT INTO `ypxx` VALUES ('9b804bc43d5a4b5f8f0431eb1a7b96cd', '200625', '辰欣药业股份有限公司', '复方氨基酸注射液(18AA)', '3.04', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方氨基酸(18AA)', '大输液', '250ml:12.5g', '1', 'ffajs(18aa)', null);
INSERT INTO `ypxx` VALUES ('9bb97df8bbbd4efea86079f880110b58', '200391', '河南省百泉制药有限公司', '舒筋活血片', '1.61', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '舒筋活血片', '片剂', '/', '100', 'sjhxp', null);
INSERT INTO `ypxx` VALUES ('9beb14a3e1d2499fa6e675643b8c122f', '200626', '成都锦华药业有限责任公司', '吡嗪酰胺片', '5.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '吡嗪酰胺', '片剂', '0.25g', '100', 'pqxa,bqxa', null);
INSERT INTO `ypxx` VALUES ('9c6ceb52455749ddbab6f3d6f0fc1888', '200627', '河南怀庆药业有限责任公司', '银翘解毒丸', '2.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '银翘解毒丸', '大蜜丸', '9g', '10', 'yqjdw,yqxdw', null);
INSERT INTO `ypxx` VALUES ('9c9a51d073e246268afbb6af53519688', '200628', '开封制药(集团)有限公司', '复方硫黄乳膏', '4.56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方硫黄乳膏', '软膏剂', '250g', '1', 'fflhrg', null);
INSERT INTO `ypxx` VALUES ('9c9fec88fbc64ab3a6a0ff7ae0ae392c', '200504', '海口市制药厂有限公司', '盐酸克林霉素注射液', '7.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '盐酸克林霉素注射液', '注射液', '2ml:0.15g', '10', 'ysklmszyy,ysklmszsy', null);
INSERT INTO `ypxx` VALUES ('9ca85be39b0644a5ace19ea5e0324d85', '200505', '神威药业集团有限公司', '茵栀黄注射液', '1.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '茵栀黄注射液', '注射液', '10ml', '1', 'yzhzsy,yzhzyy', null);
INSERT INTO `ypxx` VALUES ('9cd0981bc9614e1c9ad62d36e35a1972', '200506', '湖南汉森制药股份有限公司', '缩泉胶囊', '33.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '缩泉胶囊', '胶囊', '0.3g', '60', 'sqjn', null);
INSERT INTO `ypxx` VALUES ('9ce45cd8150e4c69ba897da6039bf383', '200507', '河南太龙药业股份有限公司', '双黄连合剂', '5.86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '双黄连合剂', '口服液', '100ml', '1', 'shlgj,shlhj', null);
INSERT INTO `ypxx` VALUES ('9cef6b129d2f4cbd8380b2a1414cfc1b', '200508', '安徽安科余良卿药业有限公司', '狗皮膏', '24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '狗皮膏', '膏药', '15g', '10', 'gpg', null);
INSERT INTO `ypxx` VALUES ('9cfd5f4c59044020bca5522fb9b9773e', '200433', '济南利民制药有限责任公司', '克霉唑', '15.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '克霉唑', '阴道片', '0.5g', '3', 'kmz', null);
INSERT INTO `ypxx` VALUES ('9d01fac0f77e44f3b073d99417000a86', '200509', '广西玉林制药集团有限责任公司', '无', '10.05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '三七伤药胶囊', '胶囊', '0.25g', '24', 'sqsyjn', null);
INSERT INTO `ypxx` VALUES ('9d048f7b37c04cc7aca2625b1d4ad5ad', '200510', '河南科伦药业有限公司', '5%葡萄糖', '1.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '5%葡萄糖', '大输液', '250ml(塑瓶)', '1', '5%ptt', null);
INSERT INTO `ypxx` VALUES ('9d628616e28a477b99caacd4d2275b14', '200511', '昆明制药集团', '血塞通注射液', '1.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '血塞通注射液', '注射液', '2ml:0.1g', '10', 'xstzyy,xstzsy', null);
INSERT INTO `ypxx` VALUES ('9dc2b134053e4feeb3c54d0d51b410e9', '200512', '山东罗欣药业股份有限公司', '叶酸', '13.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '叶酸', '粉针', '30mg', '1', 'xs,ys', null);
INSERT INTO `ypxx` VALUES ('9e1c7893d13c477c9342783a7ce57e26', '200513', '常州康普药业有限公司', '苯海索', '2.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '苯海索', '片剂', '2mg', '100', 'bhs', null);
INSERT INTO `ypxx` VALUES ('9e40273bc8044750811bb91dddb9531f', '200514', '齐鲁制药有限公司', '氯氮平片', '1.95', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氯氮平', '片剂', '25mg', '100', 'ldp', null);
INSERT INTO `ypxx` VALUES ('9e51e06f8b9e495997521e54e9918bc4', '200515', '天津药业集团新郑股份有限公司', '无', '0.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '雷尼替丁', '注射液', '2ml:50mg', '1', 'lntd,lntz', null);
INSERT INTO `ypxx` VALUES ('9f7e1b49a6644244b7734cefab44d98e', '200516', '上海美优制药有限公司', '复方甘草口服溶液', '5.37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '复方甘草合剂', '口服液', '10ml', '10', 'ffgcgj,ffgchj', null);
INSERT INTO `ypxx` VALUES ('9fc0ebec8e3d44b787f68e0d6bf9e4aa', '200434', '广东一力集团', '复方丹参片', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方丹参片', '片剂', '/', '60', 'ffdsp,ffdcp', null);
INSERT INTO `ypxx` VALUES ('9ffd740773534ce48341843651c4b1da', '200517', '河南禹州市药王制药有限公司', '香砂养胃丸', '3.51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '香砂养胃丸', '水丸', '6g', '10', 'xsyww', null);
INSERT INTO `ypxx` VALUES ('a01f09d252b348c48a89dbc1721a12e3', '200518', '天津药业集团有限公司', '无', '0.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '鱼石脂', '软膏剂', '10g:1g', '1', 'ysz,ydz', null);
INSERT INTO `ypxx` VALUES ('a13b4d6d47a544d49291a1a5140cf6be', '200519', '山东罗欣药业股份有限公司', '洛伐他汀', '2.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '洛伐他汀', '片剂', '20mg', '10', 'lftt', null);
INSERT INTO `ypxx` VALUES ('a1893931748a472f8f5f1ffdb2ceff91', '200520', '山东方明药业集团股份有限公司', '无', '6.39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '单硝酸异山梨酯', '片剂', '20mg', '48', 'cxsyslz,sxsyslz,dxsyslz', null);
INSERT INTO `ypxx` VALUES ('a1983f6ce18b463c8fe3b8d41b38720d', '200521', '四川禾润制药有限公司', '小柴胡颗粒', '1.64', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '小柴胡颗粒', '颗粒剂', '10g', '6', 'xchkl', null);
INSERT INTO `ypxx` VALUES ('a22fd0807ea44f7caf0c24ccc1149d9a', '200522', '河南天方药业股份有限公司', '麦克罗辛', '5.87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '盐酸二甲双胍缓释片', '缓释片', '0.5g', '24', 'ysejsghsp', null);
INSERT INTO `ypxx` VALUES ('a23997cfd6e74835a6d0f8859cdcb13c', '200523', '上海现代哈森(商丘)药业有限公司', '门冬氨酸钾镁注射液', '0.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '门冬氨酸钾镁', '注射液', '10ml:0.452g:0.4g', '1', 'mdasjm', null);
INSERT INTO `ypxx` VALUES ('a239a1a29d004b5daeb6ea9b7b7b0385', '200524', '宜昌人福药业有限责任公司', '甲硝唑片', '1.56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甲硝唑', '片剂', '0.2g', '100', 'jxz', null);
INSERT INTO `ypxx` VALUES ('a274f15a7b6f4659918cf5383e9e47e4', '200435', '西南药业股份有限公司', '异丙嗪', '6.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '异丙嗪', '片剂', '12.5mg', '1000', 'ybq', null);
INSERT INTO `ypxx` VALUES ('a28cf1908f8540c3bc69ebe52f59bf6e', '200525', '苏州二叶制药有限公司', '苯唑西林', '0.93', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '苯唑西林', '粉针', '1.0g', '1', 'bzxl', null);
INSERT INTO `ypxx` VALUES ('a2c2e925e89a4b7dbcfcabce50fb2055', '200526', '齐鲁制药有限公司', '洛伐他汀分散片', '14.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '洛伐他汀', '分散片', '20mg', '12', 'lftt', null);
INSERT INTO `ypxx` VALUES ('a31ca46bcb91441d89ca190cb68358a6', '200527', '华中药业股份有限公司', '泼尼松龙', '1.29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '泼尼松龙', '注射液', '5ml:0.125g', '1', 'pnsl', null);
INSERT INTO `ypxx` VALUES ('a37caa4cce7642078c5a7ea8f133c19e', '200528', '河南同源制药有限公司', '维生素C', '0.07', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素C', '注射液', '2ml:0.1g', '1', 'wssc', null);
INSERT INTO `ypxx` VALUES ('a3eb4a2777964821aed55df0036b1b6e', '200529', '山东华信制药集团股份有限公司', '护肝片', '3.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '护肝片', '片剂', '0.36g', '100', 'hgp', null);
INSERT INTO `ypxx` VALUES ('a3f349a3c5cb4facb267b912eed43ba4', '200530', '上海现代哈森(商丘)药业有限公司', '磺胺嘧啶钠注射液', '0.33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '磺胺嘧啶', '注射液', '2ml:0.4g', '1', 'hamd', null);
INSERT INTO `ypxx` VALUES ('a431fbe79f2748db89c2bdef23869bb5', '200531', '湖北东信药业有限公司', '吲哚美辛栓', '2.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '吲哚美辛', '栓剂', '0.1g', '10', 'ydmx', null);
INSERT INTO `ypxx` VALUES ('a4ac7040a2d8424b8f6f514836ae3c01', '200532', '上海海虹实业（集团）巢湖今辰药业有限公司', '黄连上清胶囊', '18.86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '黄连上清胶囊', '胶囊', '0.4g', '30', 'hlsqjn', null);
INSERT INTO `ypxx` VALUES ('a4c824d9423f46a1a1d2e9e441b4ae0f', '200436', '华润三九医药股份有限公司', '三九胃泰颗粒', '12.99', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '三九胃泰颗粒', '颗粒剂', '20g', '10', 'sjwtkl', null);
INSERT INTO `ypxx` VALUES ('a502856ca0cf4f14bb871ad3ec9f56b3', '200791', '河南福森药业有限公司', '森克', '31.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '克拉霉素缓释片', '缓释片', '0.5g', '6', 'klmshsp', null);
INSERT INTO `ypxx` VALUES ('a5a7f2272cfe44b8aa677babae3d76b5', '200533', '山东鲁抗医药股份有限公司', '无', '1.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢唑林', '粉针', '1.0g', '1', 'tbzl', null);
INSERT INTO `ypxx` VALUES ('a5c443ec83b647fea5a10c65935a31db', '200534', '辰欣药业股份有限公司', '氧氟沙星滴眼液', '0.92', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氧氟沙星', '滴眼液', '5ml:15mg', '1', 'yfsx', null);
INSERT INTO `ypxx` VALUES ('a5c8ef8014bf49ecbced613ee558bd62', '200535', '新乡华青药业有限公司', '无', '0.46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '红霉素', '软膏剂', '8g:80mg(1%)', '1', 'hms,gms', null);
INSERT INTO `ypxx` VALUES ('a5dfa2efadab4bf49af227f2319e64fa', '200536', '上海玉瑞生物科技（安阳）药业有限公司', '维生素B1片', '5.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '维生素B1', '片剂', '5mg', '1000', 'wssb1', null);
INSERT INTO `ypxx` VALUES ('a660cb1fec894aac8b49d76fdc4e3290', '200537', '南京白敬宇制药有限责任公司', '酮康唑', '4.88', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '酮康唑', '乳膏剂', '15g:0.3g', '1', 'tkz', null);
INSERT INTO `ypxx` VALUES ('a6dbe8fdf8514d018f5c37d45e79318b', '200538', '瑞阳制药有限公司', '无', '1.93', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '地芬尼多', '片剂', '25mg', '100', 'dfnd', null);
INSERT INTO `ypxx` VALUES ('a723d0e20165445a9a0b94fefd4d7312', '200539', '东北制药集团沈阳第一制药有限公司', '无', '7.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '对乙酰氨基酚', '片剂', '0.5g', '400', 'dyxajf', null);
INSERT INTO `ypxx` VALUES ('a74564066e4f40b99aacfd2a37898ad3', '200540', '药都制药集团股份有限公司', '血府逐瘀丸', '4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '血府逐瘀丸', '大蜜丸', '9g', '10', 'xfzyw', null);
INSERT INTO `ypxx` VALUES ('a7a559fb7dc748909d9ef133f4249d8d', '200437', '悦康药业集团有限公司', '悦康辛', '1.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '奥扎格雷钠', '粉针', '80mg', '1', 'azgln', null);
INSERT INTO `ypxx` VALUES ('a83981a230d5446697b393f5a96ca0ea', '200541', '华润双鹤药业股份有限公司', '复方利血平氨苯蝶啶片', '8.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '复方利血平氨苯蝶啶', '片剂', '复方', '10', 'fflxpabdd', null);
INSERT INTO `ypxx` VALUES ('a83ff4713c2d4de190d47f8a9a850579', '200542', '齐鲁制药有限公司', '硝酸异山梨酯注射液', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '硝酸异山梨酯', '注射液', '5ml:5mg', '1', 'xsyslz', null);
INSERT INTO `ypxx` VALUES ('a8464dd6e3e34009a07d549a65d86474', '200389', '石药集团中诺药业(石家庄)有限公司', '中诺奇奥', '1.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢他啶', '粉针', '0.5g', '1', 'tbtd', null);
INSERT INTO `ypxx` VALUES ('a85664a1b05d414db83b0aa0ac1b0220', '200543', '东北制药集团沈阳第一制药有限公司', '无', '2.28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '磷霉素钠', '粉针', '2.0g', '1', 'lmsn', null);
INSERT INTO `ypxx` VALUES ('a89406e8ad02457e96c6163aa3e7780e', '200544', '河南太龙药业股份有限公司', '10%葡萄糖', '0.91', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '10%葡萄糖', '大输液', '250ml', '1', '10%ptt', null);
INSERT INTO `ypxx` VALUES ('a8a9222a11ec4cd686069b842d9aae52', '200545', '江西药都仁和制药有限公司', '硝酸咪康唑栓', '2.53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '咪康唑', '栓剂', '0.2g', '7', 'mkz', null);
INSERT INTO `ypxx` VALUES ('a8d4d457795a460f935845dc85b3da1e', '200546', '华中药业股份有限公司', '硝酸异山梨酯', '15.59', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '硝酸异山梨酯', '缓释片', '20mg', '30', 'xsyslz', null);
INSERT INTO `ypxx` VALUES ('a95e48c393f2409a982bc4e078f70395', '200547', '河南华利制药股份有限公司', '葡萄糖氯化钠注射液', '1.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '葡萄糖氯化钠注射液', '大输液', '500ml:25g:4.5g((塑瓶)', '1', 'pttlhnzyy,pttlhnzsy', null);
INSERT INTO `ypxx` VALUES ('aa101489823e4043badfe327ff1da563', '200548', '临汾宝珠制药有限公司', '吲哚美辛', '0.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '吲哚美辛', '肠溶片', '25mg', '100', 'ydmx', null);
INSERT INTO `ypxx` VALUES ('aa9c36a328144b65b2b1b5013437ba99', '200549', '远大医药（中国）有限公司', '*', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '去甲肾上腺素', '注射液', '1ml:2mg', '1', 'qjssxs', null);
INSERT INTO `ypxx` VALUES ('aaa06e36203d4370bb966023da86b8a5', '200550', '马鞍山丰原制药有限公司', '绒促性素', '2.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '绒促性素', '粉针', '500IU', '1', 'rcxs', null);
INSERT INTO `ypxx` VALUES ('aabda4b52ed84e93a3b34690d10b9785', '200438', '河南太龙药业股份有限公司', '5%葡萄糖', '0.91', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '5%葡萄糖', '大输液', '250ml', '1', '5%ptt', null);
INSERT INTO `ypxx` VALUES ('aacd68e6dda542f7b5b3466ba2b093a9', '200551', '浙江泰利森药业有限公司', '纳欣同', '9.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '硝苯地平缓释片', '缓释片', '20mg', '20', 'xbdphsp', null);
INSERT INTO `ypxx` VALUES ('aad4d42b810a407f905add48e8cca52d', '200552', '陕西永寿制药有限责任公司', '四神片', '18.18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '四神片', '片剂', '0.35g', '36', 'ssp', null);
INSERT INTO `ypxx` VALUES ('aaf43b9420784963a6d4a51d3160d8af', '200553', '浙江仙琚制药股份有限公司', '甲羟孕酮', '3.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甲羟孕酮', '片剂', '2mg', '100', 'jqyt', null);
INSERT INTO `ypxx` VALUES ('ab0eea5fec71421c9d3ebb0f05fed044', '200554', '哈尔滨珍宝制药有限公司', '血塞通注射液', '1.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '血塞通注射液', '注射液', '2ml:0.1g', '1', 'xstzyy,xstzsy', null);
INSERT INTO `ypxx` VALUES ('ab0ffbca75964f1b810e7c395b316dab', '200555', '江西民康制药有限公司', '橘红颗粒', '4.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '橘红颗粒', '颗粒剂', '11g(相当于原生药7g)', '10', 'jhkl,jgkl', null);
INSERT INTO `ypxx` VALUES ('ab1a654ddd2246b7b51e5d3fc2a92ef0', '200556', '山东罗欣药业股份有限公司', '克霉唑', '7.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '克霉唑', '阴道泡腾片', '0.15g', '10', 'kmz', null);
INSERT INTO `ypxx` VALUES ('abfe920562794846b844f1d6c9512392', '200557', '河南怀庆药业有限责任公司', '杞菊地黄丸', '3.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '杞菊地黄丸', '大蜜丸', '9g', '10', 'qjdhw', null);
INSERT INTO `ypxx` VALUES ('ac069dc3a62e49d797e1deb702b1255e', '200439', '山东罗欣药业股份有限公司', '左氧氟沙星', '1.58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '左氧氟沙星', '片剂', '0.2g', '12', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('ad1dc1afed9c49d484ebc2ab215a8286', '200558', '山东方明药业集团股份有限公司', '无', '0.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '乙酰谷酰胺', '注射液', '2ml:0.1g', '1', 'yxgxa,yxyxa', null);
INSERT INTO `ypxx` VALUES ('ad956ceef6de4427a5d20c6cfcfab3b6', '200559', '湖北东信药业有限公司', '甲硝唑阴道泡腾片', '1.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甲硝唑', '阴道泡腾片', '0.2g', '14', 'jxz', null);
INSERT INTO `ypxx` VALUES ('add8f7a906f9466b862ad98240731a31', '200560', '海南中化联合制药工业股份有限公司', '头孢美唑', '11.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢美唑', '粉针', '0.5g', '1', 'tbmz', null);
INSERT INTO `ypxx` VALUES ('ae093d8e38c649a5a61b2bd85100ad14', '200561', '新乡华青药业有限公司', '无', '0.52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '诺氟沙星', '滴眼液', '8ml:24mg', '1', 'nfsx', null);
INSERT INTO `ypxx` VALUES ('ae5b6c7c65b8449aa5e38705435f9e07', '200562', '广州白云山明兴制药有限公司', '迪克司', '20.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '清开灵胶囊', '胶囊', '0.4g', '24', 'qkljn', null);
INSERT INTO `ypxx` VALUES ('af3b242712044c85abde65bb1b6ecaca', '200563', '江苏方强制药厂有限责任公司', '地巴唑', '1.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '地巴唑', '片剂', '10mg', '100', 'dbz', null);
INSERT INTO `ypxx` VALUES ('af6d253622a44c0cb9500d6e39a7dbfa', '200564', '四川百利药业有限责任公司', '新博林', '2.52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '利巴韦林', '颗粒剂', '0.15g', '12', 'lbwl', null);
INSERT INTO `ypxx` VALUES ('afa2174b65ec48538cde4a472d3977c8', '200565', '浙江南洋药业有限公司', '消咳喘片', '6.18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '消咳喘片', '片剂', '0.3g', '24', 'xkcp,xhcp', null);
INSERT INTO `ypxx` VALUES ('afbdb5ae0fc64fec9a78fbfecd8c5cf1', '200566', '海南碧凯药业有限公司', '晴尔', '12.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '奥扎格雷钠', '注射液', '2ml:40mg', '1', 'azgln', null);
INSERT INTO `ypxx` VALUES ('b04915d9fb134e0ba88c408393d58dc1', '200440', '辰欣药业股份有限公司', '胞磷胆碱钠注射液', '0.63', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '胞磷胆碱', '注射液', '2ml:0.25g', '1', 'bldj', null);
INSERT INTO `ypxx` VALUES ('b04dc599beea4714b36732e558d8e776', '200567', '武汉华龙生物制药有限公司', '菲克芯康', '16.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '单硝酸异山梨酯', '粉针', '25mg', '1', 'cxsyslz,sxsyslz,dxsyslz', null);
INSERT INTO `ypxx` VALUES ('b050f8b15afe48f79fee92be40e93e9d', '200568', '山东淄博新达制药有限公司', '新达贝宁', '1.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林', '颗粒剂', '0.125g', '12', 'amxl,emxl', null);
INSERT INTO `ypxx` VALUES ('b066ca1f23234453abc4b0b85ca0de36', '200569', '丽珠集团丽珠制药厂', '绒促性素', '5.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '绒促性素', '粉针', '2000IU', '1', 'rcxs', null);
INSERT INTO `ypxx` VALUES ('b0b39067c5ca49ffa1efb933bd7a10fb', '200570', '河南天方药业股份有限公司', '维生素C注射液', '0.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '维生素C注射液', '注射液', '2ml:0.5g', '10', 'wssczsy,wssczyy', null);
INSERT INTO `ypxx` VALUES ('b0b42065abc7470c8b2ecc21dd7eebaa', '200571', '云南白药集团', '血塞通注射液', '1.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '血塞通注射液', '注射液', '2ml:0.1g', '10', 'xstzyy,xstzsy', null);
INSERT INTO `ypxx` VALUES ('b1aafb82f3594c7da158d501a7bf7265', '200572', '济南利民制药有限责任公司', '浓氯化钠注射液', '0.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '浓氯化钠注射液', '注射液', '10ml', '5', 'nlhnzyy,nlhnzsy', null);
INSERT INTO `ypxx` VALUES ('b20e96632ed54c02b038216320e30efe', '200573', '辽宁华润本溪三药有限公司', '气滞胃痛颗粒', '20.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '气滞胃痛颗粒', '颗粒剂', '2.5g(无糖型)', '12', 'qzwtkl', null);
INSERT INTO `ypxx` VALUES ('b32861e5658a43ecb5d0129a54762eed', '200441', '江西药都樟树制药有限公司', '知柏地黄丸', '2.42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '知柏地黄丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'zbdhw', null);
INSERT INTO `ypxx` VALUES ('b32d10f7a49a4012a9319b6eefbf82e8', '200574', '西南药业股份有限公司', '氨茶碱', '4.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氨茶碱', '缓释片', '0.1g', '20', 'acj', null);
INSERT INTO `ypxx` VALUES ('b36893914bd744ff9801f670d271afdb', '200575', '北京双鹭药业股份有限公司', '雷宁', '13.13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氯雷他定', '分散片', '10mg', '6', 'lltd', null);
INSERT INTO `ypxx` VALUES ('b3d9abd4d89446f5abd484b2de52a874', '200576', '佛山德众药业A', '银翘解毒片', '3.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银翘解毒片', '片剂', '0.52g*12s*2板 薄膜衣', '1', 'yqjdp,yqxdp', null);
INSERT INTO `ypxx` VALUES ('b3f0d8f877ee4ae6b4cd3b30355b5de2', '200577', '北京赛升药业股份有限公司', '注射用葛根素', '9.51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '葛根素', '粉针', '0.1g', '1', 'ggs', null);
INSERT INTO `ypxx` VALUES ('b41ca64433f048e19c3ea784abdd10c1', '200578', '齐鲁制药有限公司', '舒必利片', '4.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '舒必利', '片剂', '0.1g', '100', 'sbl', null);
INSERT INTO `ypxx` VALUES ('b42ac170d1624e38b6a097ea19b462de', '200579', '辅仁药业集团有限公司', '红霉素', '8.99', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '红霉素', '肠溶片', '0.125g', '100', 'hms,gms', null);
INSERT INTO `ypxx` VALUES ('b464078d5d704b67884d5698130d96d4', '200580', '江西泽众制药股份有限公司', '鲜竹沥', '1.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '鲜竹沥', '口服液', '10ml', '6', 'xzl', null);
INSERT INTO `ypxx` VALUES ('b49bc84560614bc5af94f4b4eec87837', '200581', '莱阳永康制药有限公司', '丹栀逍遥丸', '4.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '丹栀逍遥丸', '水丸', '6g', '10', 'dzxyw', null);
INSERT INTO `ypxx` VALUES ('b4a798240cc7475ea179c9b9ff3fdc0f', '200792', '吉林市鹿王制药股份有限公司', '龙胆泻肝丸', '3.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '龙胆泻肝丸', '大蜜丸', '6g', '10', 'ldxgw', null);
INSERT INTO `ypxx` VALUES ('b4a94ecaf1fc4dbda0a1ca7b7377a717', '200442', '天津药业集团新郑股份有限公司', '法莫替丁注射液', '3.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '法莫替丁注射液', '注射剂', '2ml:20mg', '10', 'fmtzzyy,fmtdzyy,fmtzzsy,fmtdzsy', null);
INSERT INTO `ypxx` VALUES ('b54327096b0d4a8588fc0f1a0b3740bd', '200582', '河北天成药业股份有限公司', '盐酸利多卡因注射液', '0.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '利多卡因', '注射液', '20ml:0.4g', '1', 'ldky,ldqy', null);
INSERT INTO `ypxx` VALUES ('b5c8bbaf32724fb098cb8b8dc01993ba', '200583', '成都天台山制药有限公司', '注射用盐酸罗哌卡因', '26.47', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '罗哌卡因', '粉针', '75mg', '1', 'lpky,lpqy', null);
INSERT INTO `ypxx` VALUES ('b61b880916274ea683dff56dbf212e3b', '200584', '上海新亚药业高邮有限公司', '丹参注射液', '0.18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '丹参注射液', '注射液', '2ml', '1', 'dszyy,dszsy,dczyy,dczsy', null);
INSERT INTO `ypxx` VALUES ('b69db0f329514388bae6d0c143e01135', '200585', '浙江九旭药业有限公司', '/', '12.76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '丁卡因', '粉针', '25mg', '1', 'dky,zky,zqy,dqy', null);
INSERT INTO `ypxx` VALUES ('b751154e058e4529886ab955cfc78b07', '200586', '华北制药股份有限公司', '注射用头孢拉定', '0.63', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢拉定', '粉针', '0.5g', '1', 'tbld', null);
INSERT INTO `ypxx` VALUES ('b775c07e5c074d3ba724f2e2f5f6aef0', '200390', '广州贵港冠峰药业', '刺五加片', '1.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '刺五加片', '片剂', '0.2g', '100', 'cwjp', null);
INSERT INTO `ypxx` VALUES ('b820283c6c9541bc83826e46718c44eb', '200819', '河南双鹤华利药业有限公司', '氯化钠注射液', '1.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氯化钠注射液', '大输液', '500ml：4.5g(玻璃瓶)', '1', 'lhnzyy,lhnzsy', null);
INSERT INTO `ypxx` VALUES ('b90fbe788f794c998fbfa9129b29d6c3', '200820', '湖南五洲通药业有限责任公司', '林可霉素', '1.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '林可霉素', '粉针', '0.6g', '1', 'lkms', null);
INSERT INTO `ypxx` VALUES ('b92af38b86f34a91b3eaf750c8c3b47a', '200821', '四川科伦药业股份有限公司', '阿昔洛韦', '2.03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿昔洛韦', '片剂', '0.2g', '24', 'axlw,exlw', null);
INSERT INTO `ypxx` VALUES ('bbafa0d8e5794e9c8b0450fb2108b5aa', '200822', '杭州胡庆余堂药业有限公司', '金匮肾气丸', '7.03', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '金匮肾气丸', '水蜜丸', '60g', '1', 'jksqw', null);
INSERT INTO `ypxx` VALUES ('bc5963c6aebd4644922a7d14dded8056', '200796', '哈尔滨圣泰药业有限公司', '清开灵片', '23.81', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '清开灵片', '片剂', '0.5g', '36', 'qklp', null);
INSERT INTO `ypxx` VALUES ('bc6d4e73aeb24673b89334a3b0186871', '200823', '上海海虹实业（集团）巢湖今辰药业有限公司', '牛黄上清片', '2.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '牛黄上清片', '片剂', '0.25g', '48', 'nhsqp', null);
INSERT INTO `ypxx` VALUES ('bcbe3e3a16854daca75fcadfd94ee446', '200824', '湖南科伦制药有限公司', '瑞美特', '1.11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氧氟沙星', '粉针', '0.2g', '1', 'yfsx', null);
INSERT INTO `ypxx` VALUES ('bce6817b1a9c4568a014cd4b3b487df9', '200773', '河南科伦药业有限公司', '葡萄糖氯化钠', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '葡萄糖氯化钠', '大输液', '100ml(塑瓶)', '1', 'pttlhn', null);
INSERT INTO `ypxx` VALUES ('bd74e6b65bcb44dbb5634e0f93694f4d', '200825', '悦康药业集团有限公司', '悦康辛', '1.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '奥扎格雷钠', '粉针', '40mg', '1', 'azgln', null);
INSERT INTO `ypxx` VALUES ('bdec8586b60b40618afb08a2df901231', '200826', '南京中山制药有限公司', '活血止痛胶囊', '19.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '活血止痛胶囊', '胶囊', '0.25g', '60', 'hxztjn', null);
INSERT INTO `ypxx` VALUES ('be8cd74148b741c5b4b841c9213bd29e', '200827', '江西药都樟树制药有限公司', '柏子养心丸', '5.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '柏子养心丸', '水蜜丸', '120g', '1', 'bzyxw', null);
INSERT INTO `ypxx` VALUES ('bedae1ea6b804054bf3a25d716e45d80', '200828', '华中药业股份有限公司', '维生素B6', '0.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '维生素B6', '片剂', '10mg', '100', 'wssb6', null);
INSERT INTO `ypxx` VALUES ('bf01b2b0920b4308acf6d51c52111a45', '200829', '四川禾邦阳光制药股份有限公司', '藿香正气水', '2.36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '藿香正气水', '酊剂', '10ml', '10', 'hxzqs', null);
INSERT INTO `ypxx` VALUES ('bf0a2c69dee14ef99df216b27faeb975', '200830', '浙江巨泰药业有限公司', '巨泰', '25.49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林/克拉维酸钾', '胶囊', '0.15625g(4:1)', '18', 'emxl/klwsj,amxl/klwsj', null);
INSERT INTO `ypxx` VALUES ('bf735bd3a9a842b1baa1e8ecb836cf2a', '200831', '江苏正大天晴药业股份有限公司', '天晴甘平', '26.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '甘草酸二铵', '肠溶胶囊', '50mg', '24', 'gcsea', null);
INSERT INTO `ypxx` VALUES ('bf7f44c9c4ba4af8a7cc0e41d5444095', '200832', '国药集团容生制药有限公司', '氢化可的松', '1.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氢化可的松', '注射液', '20ml:0.1g', '1', 'qhkds', null);
INSERT INTO `ypxx` VALUES ('bfa73499e98441078a92aa3d630c12a1', '200833', '吉林市鹿王制药股份有限公司', '蛤蚧定喘丸', '6.28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '蛤蚧定喘丸', '水蜜丸', '6g', '10', 'gjdcw,hjdcw', null);
INSERT INTO `ypxx` VALUES ('bfdaeabbd76e47c8825b9789f4ec3573', '200774', '湖北人民制药有限公司', '更昔洛韦注射液', '7.09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '更昔洛韦', '注射液', '5ml:0.15g', '1', 'gxlw', null);
INSERT INTO `ypxx` VALUES ('c0699c0611a84d2e88c69076a30259d6', '200834', '广州白云山制药股份有限公司广州白云山制药总厂', '侨合安', '8.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氨氯地平', '片剂', '5mg', '14', 'aldp', null);
INSERT INTO `ypxx` VALUES ('c073cc82860e458e9c5cdb18f9fa9aac', '200835', '华北制药股份有限公司', '注射用葛根素', '16.63', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '葛根素', '粉针', '0.2g', '1', 'ggs', null);
INSERT INTO `ypxx` VALUES ('c09cf270036d43d99aca9659eae4dfc8', '200836', '鲁南厚普制药有限公司', '茵栀黄颗粒', '19.81', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '茵栀黄颗粒', '颗粒剂', '3g', '10', 'yzhkl', null);
INSERT INTO `ypxx` VALUES ('c0a0d01fa68b4d86ae887fc991c3cc55', '200837', '四川科伦药业股份有限公司', '奥美拉唑', '1.17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '奥美拉唑', '肠溶胶囊', '20mg', '14', 'amlz', null);
INSERT INTO `ypxx` VALUES ('c0ac174764d84c4484b15aad0d727d6f', '200838', '华北制药河北华民药业有限责任公司', '头孢氨苄', '2.51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢氨苄', '片剂', '0.25g', '24', 'tbab', null);
INSERT INTO `ypxx` VALUES ('c16993becae7492b99c187dd8118bab4', '200839', '圣大（张家口）药业有限公司', '尤林加', '23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林/克拉维酸钾', '分散片', '0.1875g(2:1)', '12', 'emxl/klwsj,amxl/klwsj', null);
INSERT INTO `ypxx` VALUES ('c19c1db5ac0c4fe0a832f9daadda76b8', '200840', '山东华鲁制药有限公司', '左氧氟沙星', '1.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '左氧氟沙星', '大输液', '100ml:0.3g', '1', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('c1e77e369dcf4e5fa90c89f2a38d9e7a', '200841', '天士力制药集团股份有限公司', '藿香正气滴丸', '8.27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '藿香正气滴丸', '滴丸', '2.6g', '9', 'hxzqdw', null);
INSERT INTO `ypxx` VALUES ('c20d1ecfbaf84f58b9225061abee134c', '200842', '河南怀庆药业有限责任公司', '四神丸', '2.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '四神丸', '水丸', '9g', '10', 'ssw', null);
INSERT INTO `ypxx` VALUES ('c23fdfc4910c413e8545a3b476c36637', '200775', '天津药业集团新郑股份有限公司', '无', '2.39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '过氧化氢', '溶液剂', '500ml', '1', 'gyhq', null);
INSERT INTO `ypxx` VALUES ('c2663f7982c04bf38d6744caca1c72c3', '200843', '亚宝药业集团股份有限公司', '红花注射液', '8.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '红花注射液', '注射液', '20ml', '1', 'hhzsy,ghzsy,hhzyy,ghzyy', null);
INSERT INTO `ypxx` VALUES ('c2c2d7cfe1d34ad28e33ca64b2ad6fb4', '200844', '宜昌长江药业有限公司', '辛伐他汀片', '0.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '辛伐他汀片', '片剂', '10mg', '10', 'xfttp', null);
INSERT INTO `ypxx` VALUES ('c2f83a037abd4a75800deb110e5556e3', '200845', '上海信谊黄河制药有限公司受托于上海信谊药', '异烟肼片', '2.83', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '异烟肼片', '片剂', '100mg', '100', 'yyjp', null);
INSERT INTO `ypxx` VALUES ('c36b2db1be5c464eb2404b385c12ddeb', '200846', '湖南五洲通药业有限责任公司', '?', '28.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '泮托拉唑', '粉针', '60mg', '1', 'ptlz', null);
INSERT INTO `ypxx` VALUES ('c3bc3f73fcff4b0c89f3767e33cb684a', '200847', '瑞阳制药有限公司', '知力', '2.29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '头孢呋辛', '粉针', '1.5g', '1', 'tbfx', null);
INSERT INTO `ypxx` VALUES ('c3bcb00fa4084b6f86eed56b2fca12b2', '200848', '郑州瑞康制药有限公司', '特拉唑嗪', '3.28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '特拉唑嗪', '片剂', '2mg', '14', 'tlzq', null);
INSERT INTO `ypxx` VALUES ('c42a19775600447ea9c5a5fcc8369ea6', '200674', '华北制药股份有限公司', '注射用硫酸链霉素', '0.46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '链霉素', '粉针', '100WU', '1', 'lms', null);
INSERT INTO `ypxx` VALUES ('c5a9c15e69414b14b68a06aa9bad4d6d', '200675', '辅仁药业集团有限公司', '尼群地平', '0.76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '尼群地平', '片剂', '10mg', '100', 'nqdp', null);
INSERT INTO `ypxx` VALUES ('c5b20e7d0df24f4091570645d697693a', '200676', '宜昌长江药业有限公司', '克拉霉素分散片', '6.24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '克拉霉素分散片', '分散片', '0.25g', '6', 'klmsfsp', null);
INSERT INTO `ypxx` VALUES ('c5e7ec3e5db44d1db44313d96d002f05', '200776', '湖北福人药业股份有限公司', '龙胆泻肝胶囊', '26.17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '龙胆泻肝胶囊', '胶囊', '0.25g', '48', 'ldxgjn', null);
INSERT INTO `ypxx` VALUES ('c5f6ece950bc4e12bf39d454146db4c8', '200677', '山西正元盛邦制药有限公司', '保和丸', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '保和丸', '大蜜丸', '9g', '10', 'bhw', null);
INSERT INTO `ypxx` VALUES ('c6020fac8d7348178ded2393e6613d67', '200678', '黑龙江珍宝岛药业股份有限公司', '血塞通注射液', '3.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '血塞通注射液', '注射液', '5ml:0.25g', '1', 'xstzyy,xstzsy', null);
INSERT INTO `ypxx` VALUES ('c6b892525d8846309145980ebd9858b8', '200679', '河南润弘制药股份有限公司', '无', '0.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氨茶碱', '注射液', '2ml:0.25g', '1', 'acj', null);
INSERT INTO `ypxx` VALUES ('c6e49851d9d54b39a93eca778dc05f4b', '200680', '神威药业集团有限公司', '藿香正气软胶囊', '8.49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '藿香正气软胶囊', '软胶囊', '0.45g', '24', 'hxzqrjn', null);
INSERT INTO `ypxx` VALUES ('c6ec2b52dc144d26b6ebd238de8c49d5', '200681', '海南三风友制药有限公司', '复方氨酚愈敏', '12.94', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方氨酚愈敏', '口服液', '60ml', '1', 'ffafym', null);
INSERT INTO `ypxx` VALUES ('c7c6fde5a9134e2a90bf4a6aa7158635', '200682', '药都制药集团股份有限公司', '石斛夜光丸', '13.02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '石斛夜光丸', '大蜜丸', '9g', '10', 'shygw,dhygw', null);
INSERT INTO `ypxx` VALUES ('c82e23efe33e437aa74900a35ddbe6ed', '200683', '山东新华制药股份有限公司', '地塞米松磷酸钠', '0.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '地塞米松磷酸钠', '注射液', '1ml:2mg', '1', 'dsmslsn', null);
INSERT INTO `ypxx` VALUES ('c83fa745f67c40ecb1412cd0ebbc8806', '200394', '九寨沟天然药业集团有限责任公司', '银翘解毒颗粒', '2.95', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银翘解毒颗粒', '颗粒剂', '15g', '10', 'yqxdkl,yqjdkl', null);
INSERT INTO `ypxx` VALUES ('c84f0d9528654f6d8119dc424a5ed2cf', '200684', '惠州市九惠制药股份有限公司', '无', '24.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '安胃疡胶囊', '胶囊', '0.2g', '24', 'awyjn', null);
INSERT INTO `ypxx` VALUES ('c854f23aceed482cad4aacff529c4b5a', '200685', '海口奇力制药股份有限公司', '盐酸克林霉素胶囊', '1.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '克林霉素', '胶囊', '0.15g', '10', 'klms', null);
INSERT INTO `ypxx` VALUES ('c8be6c86565d4cf79d94a2130f7a119c', '200686', '成都永康制药有限公司', '消咳喘胶囊', '17.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '消咳喘胶囊', '胶囊', '0.35g', '36', 'xkcjn,xhcjn', null);
INSERT INTO `ypxx` VALUES ('c907b7b8790e463c95cfa290717dd9ad', '200687', '江西泽众制药股份有限公司', '红霉素', '22.28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '红霉素', '肠溶片', '0.25g', '100', 'hms,gms', null);
INSERT INTO `ypxx` VALUES ('c933a417fbb94c09947ce089dbf4449e', '200688', '通化东宝药业股份有限公司', '甘舒霖R', '46.43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '重组人胰岛素', '注射液', '10ml:400IU', '1', 'czryds,zzryds', null);
INSERT INTO `ypxx` VALUES ('c99c01ca0182466f922eb2508fb78b96', '200689', '上海信谊金朱药业有限公司', '无', '3.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '新斯的明', '注射液', '2ml:1mg', '1', 'xsdm', null);
INSERT INTO `ypxx` VALUES ('c99ec832ae704f9f80da453acfea0dfd', '200690', '湖南迪诺制药有限公司', '法莫替丁', '1.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '法莫替丁', '片剂', '20mg', '24', 'fmtz,fmtd', null);
INSERT INTO `ypxx` VALUES ('ca0b0646371944d2a0261df2d521d76c', '200777', '江西南昌桑海制药厂', '八珍益母胶囊', '22.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '八珍益母胶囊', '胶囊', '0.28g', '36', 'bzymjn', null);
INSERT INTO `ypxx` VALUES ('ca100c434e6844cca04dce4372f73f44', '200691', '山西华康药业股份有限公司', '橘红丸', '3.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '橘红丸', '水蜜丸', '7.2g(10g/100）', '6', 'jgw,jhw', null);
INSERT INTO `ypxx` VALUES ('ca65802b4d55429dab1b5f5126d725b9', '200692', '辰欣药业股份有限公司', '桂利嗪片', '1.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '桂利嗪', '片剂', '25mg', '100', 'glq', null);
INSERT INTO `ypxx` VALUES ('cbd09dd39d55452ea8aba836ec49c784', '200693', '华中药业股份有限公司', '葡醛内酯片', '1.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '葡醛内酯', '片剂', '0.1g', '100', 'pqnz', null);
INSERT INTO `ypxx` VALUES ('cbf0c00b6094420f81f098655f19bcee', '200694', '美吉斯制药（厦门）有限公司', '惠滋养', '1.76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氯雷他定', '片剂', '10mg', '6', 'lltd', null);
INSERT INTO `ypxx` VALUES ('cc04d6df62a245abaf1413383911bf59', '200695', '北京嘉林药业股份有限公司', '硫唑嘌呤', '28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '硫唑嘌呤', '片剂', '0.1g', '36', 'lzpl', null);
INSERT INTO `ypxx` VALUES ('cc451c455a9d4099be0cf6c45a99f754', '200696', '天士力制药集团股份有限公司', '柴胡滴丸', '7.92', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '柴胡滴丸', '滴丸', '0.551g', '6', 'chdw', null);
INSERT INTO `ypxx` VALUES ('cc518215bd0345a3ae9c19bdd5a0ea58', '200697', '鲁南贝特制药有限公司', '吉舒', '52.11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '布地奈德', '气雾剂', '100ug/喷*200', '1', 'bdnd', null);
INSERT INTO `ypxx` VALUES ('cc56541a644b43bba7cd8b5d0f68b2f0', '200698', '湖南迪诺制药有限公司', '替硝唑', '0.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '替硝唑', '片剂', '0.5g', '8', 'txz', null);
INSERT INTO `ypxx` VALUES ('cc7400bccdea43c2889892101fd79cd5', '200699', '江苏晨牌药业集团股份有限公司', '复方氯唑沙宗', '22.36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '复方氯唑沙宗', '胶囊', '0.125g:0.15g', '48', 'fflzsz', null);
INSERT INTO `ypxx` VALUES ('cd1913df11f4491bbebe654a44ca4131', '200778', '海南惠普森医药生物技术有限公司', '倍沙', '2.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '罗红霉素', '分散片', '0.15g', '8', 'lgms,lhms', null);
INSERT INTO `ypxx` VALUES ('cdae9dfbce424e08904d3d1320ca11e3', '200700', '江苏吉贝尔药业有限公司', '利可君', '33.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '利可君', '片剂', '20mg', '48', 'lkj', null);
INSERT INTO `ypxx` VALUES ('cf1c4ab918f44a2ea12228d6ca8c03ff', '200701', '湖南千金湘江药业股份有限公司', '利巴韦林', '2.05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '利巴韦林', '颗粒剂', '50mg', '18', 'lbwl', null);
INSERT INTO `ypxx` VALUES ('cfb14d6917174aedab247179fec490df', '200702', '云南白药集团无锡药业有限公司', '云南白药膏', '42.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '云南白药膏', '橡胶膏剂', '6.5cm*10cm', '10', 'ynbyg', null);
INSERT INTO `ypxx` VALUES ('d0d8e1fa42f84d688315a04f4c2d1999', '200703', '河南太龙药业股份有限公司', '葡萄糖氯化钠', '0.94', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '葡萄糖氯化钠', '大输液', '250ml', '1', 'pttlhn', null);
INSERT INTO `ypxx` VALUES ('d12b5368326341e4804e64feb4273d79', '200704', '江西桔王药业有限公司', '?', '18.59', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '宫炎平胶囊', '片剂', '0.2g', '36', 'gypjn', null);
INSERT INTO `ypxx` VALUES ('d1dd346156a34ace97afcaea7a30a859', '200705', '药都制药集团股份有限公司', '跌打丸', '4.45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '跌打丸', '大蜜丸', '3g', '10', 'ddw', null);
INSERT INTO `ypxx` VALUES ('d219da987e1d4289af803f363ae4e647', '200706', '沈阳红旗制药有限公司', '盐酸乙胺丁醇胶囊', '15.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '乙胺丁醇', '胶囊', '0.25g', '100', 'yadc,yazc', null);
INSERT INTO `ypxx` VALUES ('d24276345f844fd4a52e507b9e856acb', '200707', '南宁市维威制药', '益母草膏', '3.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '益母草膏', '煎膏剂', '125g', '1', 'ymcg', null);
INSERT INTO `ypxx` VALUES ('d2dd8a7bc8fc46e3af57672cae6c2bc9', '200708', '上海信谊药厂有限公司', '美唯宁', '24.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '莫沙必利', '胶囊', '5mg', '24', 'msbl', null);
INSERT INTO `ypxx` VALUES ('d3119280d78d44729b74ce4acceaa67b', '200779', '赤峰丹龙药业有限公司', '连翘败毒丸', '3.42', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '连翘败毒丸', '水丸', '9g', '6', 'lqbdw', null);
INSERT INTO `ypxx` VALUES ('d34f8025c7d74c57b866f71ea8a0f076', '200709', '海口市制药厂有限公司', '头孢克洛颗粒', '3.05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢克洛', '颗粒剂', '0.125g', '6', 'tbkl', null);
INSERT INTO `ypxx` VALUES ('d3516afc4ac2413b9e3ee4794780b2f3', '200710', '深圳致君制药有限公司', '达力新', '8.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢呋辛酯', '胶囊', '0.125g', '12', 'tbfxz', null);
INSERT INTO `ypxx` VALUES ('d357409542fb4ddfad677e5c90741bc1', '200711', '西南药业股份有限公司', '?', '27.41', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '天麻素', '粉针', '5ml:0.5g', '1', 'tms', null);
INSERT INTO `ypxx` VALUES ('d3c5082c22f1472287bf7c6beef03e02', '200712', '辰欣药业股份有限公司', '盐酸金霉素眼膏', '0.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '金霉素', '眼膏剂', '2g:10mg(0.5%)', '1', 'jms', null);
INSERT INTO `ypxx` VALUES ('d44112fe297942ca8f618bf54edd7c5e', '200713', '山东省平原制药厂', '富马酸酮替芬片', '2.46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '酮替芬', '片剂', '1mg', '100', 'ttf', null);
INSERT INTO `ypxx` VALUES ('d45118b3a8244b4ea2c28ed78cdb4475', '200714', '广东省罗浮山白鹤制药厂', '保济丸', '5.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '保济丸', '水丸', '3.7g', '20', 'bjw', null);
INSERT INTO `ypxx` VALUES ('d45b0f45eb8d4004966ec29f58fc248d', '200715', '海口奇力制药股份有限公司', '注射用阿莫西林钠克拉维酸钾', '1.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '阿莫西林/克拉维酸钾', '粉针', '0.6g(5:1)', '1', 'emxl/klwsj,amxl/klwsj', null);
INSERT INTO `ypxx` VALUES ('d63f204d290946e88d90201965ea36ff', '200780', '丹东医创药业有限责任公司', '复方氢氧化铝片', '1.45', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '复方氢氧化铝', '片剂', '氢氧化铝0.245g/三硅酸镁0.105g/颠茄流浸膏0.0026ml', '100', 'ffqyhl', null);
INSERT INTO `ypxx` VALUES ('d66e3c9d6bbd4873afd595e6f2aecee8', '200797', '山东罗欣药业股份有限公司', '罗欣快宇', '1.13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿奇霉素', '颗粒剂', '0.25g', '2', 'ajms,ejms,aqms,eqms', null);
INSERT INTO `ypxx` VALUES ('d68622a325d1473db985c86550cc66d6', '200716', '晋城海斯制药有限公司', '曲克芦丁', '1.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '曲克芦丁', '粉针', '0.48g', '1', 'qklz,qkld', null);
INSERT INTO `ypxx` VALUES ('d6a6dbf624524fed86297ba6a9024d4e', '200717', '河南科伦药业有限公司', '5%葡萄糖', '0.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '5%葡萄糖', '大输液', '100ml(塑瓶)', '1', '5%ptt', null);
INSERT INTO `ypxx` VALUES ('d6a78044a49e450d9f3fc8d91775fc3e', '200718', '河南太龙药业股份有限公司', '5%葡萄糖', '0.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '5%葡萄糖', '大输液', '100ml', '1', '5%ptt', null);
INSERT INTO `ypxx` VALUES ('d6a908446e6a4588a60a39bd9b4d1af9', '200719', '河南润弘制药股份有限公司', '无', '1.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '新斯的明', '注射液', '1ml:0.5mg', '1', 'xsdm', null);
INSERT INTO `ypxx` VALUES ('d6c8b594c842442b885ae6a4971dee4c', '200720', '石药集团中诺药业(石家庄)有限公司', '阿莫西林', '3.12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿莫西林', '胶囊', '0.25g', '50', 'amxl,emxl', null);
INSERT INTO `ypxx` VALUES ('d6e00f1b27394a9a9ad51e3d788366dd', '200721', '山东鲁西药业有限公司', '布洛芬片', '2.58', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '布洛芬', '片剂', '0.2g', '100', 'blf', null);
INSERT INTO `ypxx` VALUES ('d6ed482eec5c49f9b4231730edf6283f', '200722', '成都第一制药有限公司', '克霉唑', '2.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '克霉唑', '栓剂', '0.15g', '10', 'kmz', null);
INSERT INTO `ypxx` VALUES ('d70a9e7d285446a69d6cccec171bc299', '200723', '山东华信制药', '20%甘露醇', '2.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '20%甘露醇', '大输液', '250ml', '1', '20%glc', null);
INSERT INTO `ypxx` VALUES ('d730a4d7c517463f985614f50ae7c22e', '200724', '上海现代哈森(商丘)药业有限公司', '单硝酸异山梨酯注射液', '1.27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '单硝酸异山梨酯', '注射液', '5ml:20mg', '1', 'cxsyslz,sxsyslz,dxsyslz', null);
INSERT INTO `ypxx` VALUES ('d747ac7618d94c06b4ecd47668fa20c5', '200781', '晋城海斯制药有限公司', '胞磷胆碱', '3.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '胞磷胆碱', '粉针', '0.5g', '1', 'bldj', null);
INSERT INTO `ypxx` VALUES ('d748686eaeb64dab90db742bc8707eb4', '200725', '河南禹州市药王制药有限公司', '保和丸', '3.17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '保和丸', '水丸', '6g', '10', 'bhw', null);
INSERT INTO `ypxx` VALUES ('d78ff6b6fb0c427daa97f6a152e571d1', '200726', '河南中杰药业有限公司', '布洛芬片', '1.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '布洛芬', '片剂', '0.1g', '100', 'blf', null);
INSERT INTO `ypxx` VALUES ('d80e1bce4a3641e7a3aee87aca8129b1', '200727', '南京天朗制药有限公司', '氧氟沙星滴耳液', '1.69', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氧氟沙星', '滴耳液', '8ml:24mg', '1', 'yfsx', null);
INSERT INTO `ypxx` VALUES ('d8e4dcb0536c4c48b9a39937a535f6a4', '200728', '齐鲁制药有限公司', '注射用顺铂', '8.14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '顺铂', '粉针', '20mg', '1', 'sb', null);
INSERT INTO `ypxx` VALUES ('d8f456b6a75d424abf650613e993d39d', '200729', '哈尔滨泰华药业股份有限公司', '乳癖消颗粒', '21.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '乳癖消颗粒', '颗粒剂', '8g(相当于原药材6g)', '6', 'rpxkl', null);
INSERT INTO `ypxx` VALUES ('d9927c1e020f4e14a2e8cafcfe83ea6f', '200730', '珠海联邦制药股份有限公司', '重组人胰岛素', '42.89', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '重组人胰岛素', '注射液', '3ml:300IU', '1', 'czryds,zzryds', null);
INSERT INTO `ypxx` VALUES ('d9b5d1f5cae347d49b13f7799f35874a', '200782', '西南药业股份有限公司', '泼尼松', '17.78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '泼尼松', '片剂', '5mg', '1000', 'pns', null);
INSERT INTO `ypxx` VALUES ('d9f3c4422ffb49109dfc40f9431dd01d', '200731', '成都蓉药集团四川长威制药有限公司', '口服补液盐散(Ⅰ)', '7.18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '口服补液盐Ⅰ', '散剂', '14.75g', '20', 'kfbyyⅰ', null);
INSERT INTO `ypxx` VALUES ('da207317cf174dce9875eb6e367d3f5b', '200732', '精华制药集团股份有限公司', '王氏保赤丸', '28.72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '王氏保赤丸', '水丸', '0.15g(0.15g/60)', '20', 'wsbcw,wzbcw', null);
INSERT INTO `ypxx` VALUES ('da82dfae1923417faaac79dd3f7b2c42', '200733', '北京华润高科天然药物有限公司', '茵栀黄口服液', '29.61', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '茵栀黄口服液', '口服液', '10ml', '10', 'yzhkfy', null);
INSERT INTO `ypxx` VALUES ('da90291a932d4f08bc7aafc2d632dba2', '200734', '江苏远恒药业有限公司', '制霉素', '17.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '制霉素', '栓剂', '20WU', '14', 'zms', null);
INSERT INTO `ypxx` VALUES ('db890a8915bd4e4ea99aa6e8920c044d', '200735', '通化茂祥制药有限公司', '环磷酰胺', '3.44', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '环磷酰胺', '注射液', '0.2g', '10', 'hlxa', null);
INSERT INTO `ypxx` VALUES ('dbdfb66449c941a3b94d4c242424b3a7', '200736', '四川依科制药有限公司', '双氯芬酸钠', '0.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '双氯芬酸钠', '肠溶片', '25mg', '100', 'slfsn', null);
INSERT INTO `ypxx` VALUES ('dc334b70b1ee436fab37f256f4b7e17b', '200737', '开封康诺药业有限公司', '法莫替丁', '1.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '法莫替丁', '粉针', '20mg', '1', 'fmtz,fmtd', null);
INSERT INTO `ypxx` VALUES ('dc8a290c0b9a449f8426f2a969cee35d', '200783', '鲁南贝特制药有限公司', '鲁南贝特', '14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '复方氯唑沙宗分散片', '分散片', '（0.15+0.125）', '12', 'fflzszfsp', null);
INSERT INTO `ypxx` VALUES ('dca7f43153da44cf9dcd0ffb2f09413c', '200738', '天津中新药业集团股份有限公司第六中药厂', '清咽滴丸', '23.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '清咽滴丸', '滴丸', '20mg', '100', 'qydw', null);
INSERT INTO `ypxx` VALUES ('dcc4ed4cf6a843b8959274b62f04b3f3', '200739', '北京以岭药业有限公司', '参松养心胶囊', '26.01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '参松养心胶囊', '胶囊', '0.4g', '36', 'csyxjn,ssyxjn', null);
INSERT INTO `ypxx` VALUES ('dd3e24fc3f124c689b761743160cf390', '200740', '云南个旧生物药业有限公司', '参麦注射液', '9.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '参麦注射液', '注射液', '20ml', '1', 'smzyy,cmzsy,cmzyy,smzsy', null);
INSERT INTO `ypxx` VALUES ('dda1d882853c440b9009a58def30d7b0', '200741', '马鞍山丰原制药有限公司', '三磷酸腺苷二钠', '1.14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '三磷酸腺苷二钠', '粉针', '20mg', '1', 'slsxgen', null);
INSERT INTO `ypxx` VALUES ('de55e55530cc42b79193f555fa1df04a', '200742', '湖南汉森制药股份有限公司', '泛影葡胺', '12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '泛影葡胺', '注射液', '20ml:12g', '1', 'fypa', null);
INSERT INTO `ypxx` VALUES ('dfbc19498e9a4a60af55fce22f5f5dc0', '200743', '哈尔滨一洲制药有限公司', '正舒', '5.26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '特拉唑嗪', '胶囊', '2mg', '14', 'tlzq', null);
INSERT INTO `ypxx` VALUES ('dfc14eabd54744d8a63d23362718f2a8', '200744', '海口奇力制药股份有限公司', '注射用利巴韦林', '0.88', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '利巴韦林', '粉针', '0.25g', '1', 'lbwl', null);
INSERT INTO `ypxx` VALUES ('e0817b62caf0441b8c67c98e089a055e', '200745', '保定市金钟制药有限公司', '无', '0.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '过氧化氢', '溶液剂', '100ml', '1', 'gyhq', null);
INSERT INTO `ypxx` VALUES ('e0a6cdb9a6b9400ab4955e4ea4ee166d', '200746', '安徽辉克药业有限公司', '维生素C', '0.81', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '维生素C', '片剂', '50mg', '100', 'wssc', null);
INSERT INTO `ypxx` VALUES ('e1028caa072942c0aa0220607636bc27', '200747', '天津药业集团有限公司', '无', '1.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '酮康唑', '乳膏剂', '10g:0.2g', '1', 'tkz', null);
INSERT INTO `ypxx` VALUES ('e108cc9b0b8b4ce2a14fc46b0377d88a', '200784', '珠海经济特区生物化学制药厂', '盐酸氨溴索分散片', '10.69', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氨溴索', '分散片', '30mg', '30', 'axs', null);
INSERT INTO `ypxx` VALUES ('e1ebeb5616904091bdae58929b184ad5', '200748', '海口奇力制药股份有限公司', '盐酸左氧氟沙星胶囊', '1.18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '左氧氟沙星', '胶囊', '0.1g', '12', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('e2454624ffbb430fb103cbc3f97bed51', '200749', '武汉健民集团随州药业有限公司', '健胃消食片', '4.05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '健胃消食片', '片剂', '0.8g', '32', 'jwxsp,jwxyp', null);
INSERT INTO `ypxx` VALUES ('e2a06dd4750841d2b3cb6309b0b3f890', '200750', '湖北潜江制药股份有限公司', '珍珠明目滴眼液', '0.99', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '珍珠明目滴眼液', '滴眼液', '8ml', '1', 'zzmmdyy', null);
INSERT INTO `ypxx` VALUES ('e3b9754a7968433fa398247bbec8f9dc', '200751', '河南天方药业股份有限公司', '麦克罗辛', '3.97', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '盐酸二甲双胍缓释片', '缓释片', '0.5g', '16', 'ysejsghsp', null);
INSERT INTO `ypxx` VALUES ('e3c877a2627f446aa2a52fa5e6df5138', '200752', '江苏万邦生化医药股份有限公司', '万苏敏', '44.83', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '盐酸吡格列酮分散片', '分散片', '15mg', '30', 'yspgltfsp,ysbgltfsp', null);
INSERT INTO `ypxx` VALUES ('e3e325fc2b26496586c862f02303408a', '200753', '九寨沟天然药业集团有限责任公司', '九味羌活颗粒', '10.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '九味羌活颗粒', '颗粒剂', '15g', '20', 'jwqhkl', null);
INSERT INTO `ypxx` VALUES ('e46bcca9f8c340d69cbd79a5a32bae9b', '200754', '天津金耀氨基酸有限公司', '氟尿嘧啶', '1.17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氟尿嘧啶', '注射液', '10ml:0.25g', '1', 'fsmd,fnmd', null);
INSERT INTO `ypxx` VALUES ('e4da056d0f984f678e7b6389f8968b5c', '200755', '东北制药集团沈阳第一制药有限公司', '无', '0.99', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '金刚烷胺', '片剂', '0.1g', '24', 'jgwa', null);
INSERT INTO `ypxx` VALUES ('e5a30d71da984f998b8b3c18c852fc44', '200756', '山东华鲁制药有限公司', '布比卡因', '0.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '布比卡因', '注射液', '5ml:25mg', '1', 'bbqy,bbky', null);
INSERT INTO `ypxx` VALUES ('e5bb2e93211a48429687dd7d596c1306', '200757', '辽宁好护士药业(集团)有限责任公司', '乳癖消片', '15.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '乳癖消片', '片剂', '0.34g', '60', 'rpxp', null);
INSERT INTO `ypxx` VALUES ('e5e2c073e115443cb7056caf6cc0f478', '200785', '莱阳市江波制药有限责任公司', '无', '3.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '益母草膏', '煎膏剂', '125g', '1', 'ymcg', null);
INSERT INTO `ypxx` VALUES ('e64903a37b4748acb6cc09f34dfb589d', '200758', '上海宝龙安庆药业有限公司', '明目地黄丸', '3.63', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '明目地黄丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'mmdhw', null);
INSERT INTO `ypxx` VALUES ('e683f49dd38540a9aa43d938923fc880', '200759', '贵州天安药业股份有限公司', '盐酸吡格列酮分散片', '41.21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '盐酸吡格列酮分散片', '分散片', '30mg', '14', 'yspgltfsp,ysbgltfsp', null);
INSERT INTO `ypxx` VALUES ('e70a326038a8455484db3c8ff847ab42', '200760', '成都地奥制药集团有限公司', '地奥心血康胶囊', '8.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '地奥心血康胶囊', '胶囊', '含甾体总皂苷100mg(相当于甾体总皂苷元35mg)', '20', 'daxxkjn', null);
INSERT INTO `ypxx` VALUES ('e726466bacdb481894ea1f3525e3dc4f', '200761', '石家庄四药有限公司', '羟乙基淀粉40氯化钠', '2.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '羟乙基淀粉40氯化钠', '大输液', '500ml:30g:4.5g', '1', 'qyjdf40lhn', null);
INSERT INTO `ypxx` VALUES ('e7270059f0f24bddb9f3781fa76eb183', '200786', '湖南五洲通药业有限责任公司', '氢化可的松', '8.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氢化可的松', '乳膏剂', '10g:10mg', '1', 'qhkds', null);
INSERT INTO `ypxx` VALUES ('e77d0cf047eb419f84293ebf92c0c30c', '200762', '哈尔滨一洲制药有限公司', '消炎利胆胶囊', '5.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '消炎利胆胶囊', '胶囊', '0.45g', '36', 'xyldjn', null);
INSERT INTO `ypxx` VALUES ('e7d62445698d4d72be74f8330fe6ce22', '200763', '河南信心药业有限公司', '清肝利胆口服液', '23.64', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '清肝利胆口服液', '口服液', '10ml', '12', 'qgldkfy', null);
INSERT INTO `ypxx` VALUES ('e81c7d4bd28140eebada9e405ed6b260', '200764', '安徽新陇海药业有限公司', '普乐安片', '3.61', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '普乐安片', '片剂', '0.5g', '60', 'plap,pyap', null);
INSERT INTO `ypxx` VALUES ('e8a2459b0c914879a425e80a17cf88c8', '200765', '山西正元盛邦制药有限公司', '六味地黄丸', '3.68', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '六味地黄丸', '大蜜丸', '9g', '10', 'lwdhw', null);
INSERT INTO `ypxx` VALUES ('e8b25eb142194adb9b6d515dff856d53', '200766', '杭州民生药业有限公司', '无', '0.09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '山莨菪碱', '注射液', '1ml:10mg', '1', 'sldj', null);
INSERT INTO `ypxx` VALUES ('e8fb33e4b52b4d5d953ad28964dcff70', '200767', '江苏吴中医药集团有限公司苏州制药厂', '盐酸纳洛酮注射液', '1.46', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '纳洛酮', '注射液', '1ml:0.4mg', '1', 'nlt', null);
INSERT INTO `ypxx` VALUES ('e9cbc95f4eb344c1a2deee8380d822c2', '200395', '烟台益生药业有限公司', '博尔卡', '13.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '乳酸菌素', '咀嚼片', '0.4g', '24', 'rsjs', null);
INSERT INTO `ypxx` VALUES ('e9d253ee9e254d008e13358d5a549bd6', '200768', '上海衡山药业有限公司', '溴己新', '1.77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '溴己新', '片剂', '8mg', '100', 'xjx', null);
INSERT INTO `ypxx` VALUES ('e9ea9776d0174ea59b7ab0ce57a0944c', '200769', '山东步长制药有限公司', '稳心颗粒(无蔗糖)', '27.38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '稳心颗粒', '颗粒剂', '5g(无糖型)', '9', 'wxkl', null);
INSERT INTO `ypxx` VALUES ('ea480b446e9d49e9ab8aa8bcda11aca0', '200787', '山东绿因药业有限公司', '埃利雅', '31.82', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '马来酸依那普利分散片', '分散片', '5mg', '36', 'mlsynplfsp', null);
INSERT INTO `ypxx` VALUES ('ea4d687bdc35455dbb2cb891893397d1', '200340', '亚宝药业集团股份有限公司', '莫沙必利', '17.49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '莫沙必利', '片剂', '5mg', '24', 'msbl', null);
INSERT INTO `ypxx` VALUES ('ea64ed5a06354f2a8884e93a65d79cde', '200341', '广西梧州制药集团股份有限公司', '注射用血栓通', '33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '注射用血栓通', '冻干粉针剂', '0.15g', '1', 'zsyxst,zyyxst', null);
INSERT INTO `ypxx` VALUES ('ea9d86cd77e44763b20a0c8f39cb3f7e', '200342', '黑龙江科伦制药有限公司', '环丙沙星氯化钠', '0.84', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '环丙沙星氯化钠', '大输液', '100ml:0.2g', '1', 'hbsxlhn', null);
INSERT INTO `ypxx` VALUES ('eab3812405074c899ef53f207c955683', '200343', '浙江普洛康裕天然药物有限公司', '板蓝根颗粒', '4.55', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '包', '板蓝根颗粒', '颗粒剂', '3g', '20', 'blgkl', null);
INSERT INTO `ypxx` VALUES ('eb498b7eb0254a109ca8cfe3a8477d6b', '200344', '宜昌长江药业有限公司', '阿奇霉素', '2.24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿奇霉素', '分散片', '0.25g', '6', 'ajms,ejms,aqms,eqms', null);
INSERT INTO `ypxx` VALUES ('eb9128117118467d88446139bde1542a', '200345', '浙江康恩贝制药股份有限公司', '前列康', '13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '普乐安胶囊', '胶囊', '0.375g', '120', 'plajn,pyajn', null);
INSERT INTO `ypxx` VALUES ('eba67f8a507b4ea992371e874bb7a463', '200346', '重庆科瑞制药（集团）有限公司', '阿奇霉素', '3.77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿奇霉素', '片剂', '0.125g', '12', 'ajms,ejms,aqms,eqms', null);
INSERT INTO `ypxx` VALUES ('ec06c1a3b07c42aa89b4bb5eba4a1a0d', '200817', '雅安三九药业有限公司', '参附注射液', '21.69', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '参附注射液', '注射液', '10ml', '1', 'sfzsy,sfzyy,cfzyy,cfzsy', null);
INSERT INTO `ypxx` VALUES ('ec18ce5788264824b8896c14fa3b8bc2', '200347', '上海旭东海普药业有限公司', '无', '6.5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '辅酶Q10', '胶囊', '10mg', '60', 'fmq10', null);
INSERT INTO `ypxx` VALUES ('ec19b738a1b64f7ba253c4b0c89ddef0', '200348', '天津力生制药股份有限公司', '甲睾酮', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '甲睾酮', '片剂', '5mg', '100', 'jgt', null);
INSERT INTO `ypxx` VALUES ('ed4f138d412a4283b802e387513b324a', '200349', '四川升和药业股份有限公司', '银黄颗粒', '2.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '银黄颗粒', '颗粒剂', '4g', '10', 'yhkl', null);
INSERT INTO `ypxx` VALUES ('edcb314a41d24d608514eec9ae3c0ae4', '200350', '河北天成药业股份有限公司', '阿司匹林肠溶片', '0.63', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '阿司匹林', '肠溶片', '25mg', '100', 'aspl,espl,asyl,esyl', null);
INSERT INTO `ypxx` VALUES ('edfe3f293efe4c6b87cf831770583c86', '200351', '江西南昌济生制药厂', '板蓝根颗粒', '5.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '袋', '板蓝根颗粒', '颗粒剂', '10g', '24', 'blgkl', null);
INSERT INTO `ypxx` VALUES ('ee2e80202d3741a5af1839a5492f0cc4', '200352', '四川奇力制药有限公司', '道安', '8.96', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '法莫替丁', '分散片', '20mg', '36', 'fmtz,fmtd', null);
INSERT INTO `ypxx` VALUES ('ee70cafa59e14d17bbf402f58f166bf3', '200353', '瑞阳制药有限公司', '达力平', '1.27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '阿昔洛韦', '片剂', '0.1g', '30', 'axlw,exlw', null);
INSERT INTO `ypxx` VALUES ('eeb5ff3f7b33444694363fbedeebb75d', '200354', '三门峡赛诺维制药有限公司', '乳酶生', '0.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '乳酶生', '片剂', '0.15g', '100', 'rms', null);
INSERT INTO `ypxx` VALUES ('eee95a025e1146aaa8c9de27b04344fc', '200355', '江西泽众制药股份有限公司', '鲜竹沥', '2.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '鲜竹沥', '口服液', '30ml', '8', 'xzl', null);
INSERT INTO `ypxx` VALUES ('eeebf885ff874480aa01f45cba7f0255', '200818', '山东罗欣药业股份有限公司', '头孢氨苄', '2.99', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢氨苄', '胶囊', '0.25g', '24', 'tbab', null);
INSERT INTO `ypxx` VALUES ('f08d50951abe4a4bbce949bc0eb636c6', '200356', '马鞍山丰原制药有限公司', '辅酶A', '1.26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '辅酶A', '粉针', '200U', '1', 'fma', null);
INSERT INTO `ypxx` VALUES ('f09bd5ff8814402194c86c3067138c1d', '200357', '兰州太宝制药有限公司', '内消瘰疬丸', '19.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '内消瘰疬丸', '浓缩丸', '1.85g/10', '96', 'nxllw', null);
INSERT INTO `ypxx` VALUES ('f0c6dfbf5a4648b78f562cc401203290', '200358', '国药集团容生制药有限公司', '氯苯那敏', '3.2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氯苯那敏', '片剂', '4mg', '1000', 'lbnm', null);
INSERT INTO `ypxx` VALUES ('f1136433271645f68dd52ef2a8bd002e', '200795', '宜昌长江药业有限公司', '格列吡嗪胶囊', '2.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '格列吡嗪胶囊', '胶囊', '5mg', '30', 'glbqjn,glpqjn', null);
INSERT INTO `ypxx` VALUES ('f2072d1d12e84c959b95c3902629845b', '200359', '悦康药业集团有限公司', '奥美拉唑', '0.86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '奥美拉唑', '粉针', '40mg', '1', 'amlz', null);
INSERT INTO `ypxx` VALUES ('f2ad0c9e44794f3fa4b2b8a670062c75', '200360', '哈尔滨华雨制药集团有限公司', '刺五加片', '1.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '刺五加片', '片剂', '0.2g', '100', 'cwjp', null);
INSERT INTO `ypxx` VALUES ('f30ccd5c66cb4c01a4eb2ff5fb510b1d', '200361', '河南辅仁怀庆堂制药有限公司', '川芎嗪', '0.09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '川芎嗪', '注射液', '2ml:40mg', '1', 'cxq', null);
INSERT INTO `ypxx` VALUES ('f3393e3870b043cd9b411f88ee1623aa', '200362', '江西药都樟树制药有限公司', '补中益气丸', '2.53', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '补中益气丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'bzyqw', null);
INSERT INTO `ypxx` VALUES ('f33f36860f614464b4db2ef762aafb21', '200770', '天津金世制药有限公司', '抗病毒片', '10.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '抗病毒片', '片剂', '0.32g', '36', 'kbdp', null);
INSERT INTO `ypxx` VALUES ('f34f5fc6b69c44ac820f04d9346b5a82', '200363', '山东科伦药业有限公司', '氧氟沙星氯化钠', '0.86', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '氧氟沙星氯化钠', '大输液', '100ml:0.2g:0.9g', '1', 'yfsxlhn', null);
INSERT INTO `ypxx` VALUES ('f37a59b45c5746d7b117f96a6bbb659d', '200364', '河南同源制药有限公司', '香丹注射液', '0.57', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '香丹注射液', '注射液', '10ml', '1', 'xdzyy,xdzsy', null);
INSERT INTO `ypxx` VALUES ('f39303d518194aa69dc8b384c0658ba9', '200365', '江西药都樟树制药有限公司', '六味地黄丸', '3.51', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '六味地黄丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'lwdhw', null);
INSERT INTO `ypxx` VALUES ('f3a91ba502584eb1bc06c1c5f590545a', '200366', '河北瑞森药业', '阿司匹林', '0.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '阿司匹林', '肠溶片', '25mg', '100', 'aspl,espl,asyl,esyl', null);
INSERT INTO `ypxx` VALUES ('f3c806965f8642be9d4e78c84249848b', '200367', '珠海联邦制药股份有限公司中山分公司', '头孢呋辛酯片', '9.29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢呋辛酯片', '片剂', '0.125g', '12', 'tbfxzp', null);
INSERT INTO `ypxx` VALUES ('f3cd8e3b5bbc44d1bb3080411d4655b9', '200368', '云南白药集团股份有限公司', '云南白药气雾剂', '29.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '云南白药气雾剂', '气雾剂', '50g:60g', '1', 'ynbyqwj', null);
INSERT INTO `ypxx` VALUES ('f3df74760e15482cbbf16c07e9bcd20d', '200771', '江苏万邦生化医药股份有限公司', '万苏林', '17.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '低精蛋白锌胰岛素', '注射液', '10ml:400IU', '1', 'djdbxyds', null);
INSERT INTO `ypxx` VALUES ('f450af0387604205b7ce23c283eacfb9', '200369', '珠海经济特区生物化学制药厂', '恩久平', '17.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '盐酸氨溴索分散片', '分散片', '30mg', '50', 'ysaxsfsp', null);
INSERT INTO `ypxx` VALUES ('f49d0bd14b784e70a64bf402fdca051b', '200370', '河南禹州市药王制药有限公司', '明目地黄丸', '3.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '明目地黄丸', '大蜜丸', '9g', '10', 'mmdhw', null);
INSERT INTO `ypxx` VALUES ('f4f30ddd6e0644ad8c0a12e83014505f', '200371', '芜湖张恒春药业有限公司', '附子理中丸', '3.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '附子理中丸', '浓缩丸', '每8丸相当于原药材3g', '200', 'fzlzw', null);
INSERT INTO `ypxx` VALUES ('f56f78235e7941ec902a41dcb3ff5164', '200372', '海南惠普森医药生物技术有限公司', '希诺', '9.6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '头孢克洛', '分散片', '0.125g', '12', 'tbkl', null);
INSERT INTO `ypxx` VALUES ('f58e5e4887c34b4b9069f0aed1c872c0', '200373', '辅仁药业集团有限公司', '异丙嗪', '1.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '异丙嗪', '片剂', '25mg', '100', 'ybq', null);
INSERT INTO `ypxx` VALUES ('f5f1be7323584e57980f72a7a0198fc3', '200374', '四川科伦药业股份有限公司', '替硝唑氯化钠', '0.85', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '替硝唑氯化钠', '大输液', '100ml:0.4g:0.9g', '1', 'txzlhn', null);
INSERT INTO `ypxx` VALUES ('f7445f59bf6b481d9d52cc1b0e74fcb9', '200375', '山东齐都药业有限公司', '20%甘露醇', '1.83', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '瓶', '20%甘露醇', '大输液', '250ml', '1', '20%glc', null);
INSERT INTO `ypxx` VALUES ('f744915a53014f20b3bfbf7ca9bc9dd1', '200376', '山东罗欣药业股份有限公司', '氨溴索', '1.73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '氨溴索', '片剂', '30mg', '20', 'axs', null);
INSERT INTO `ypxx` VALUES ('f7bc2fc97daf45caa5a33f4c295830a5', '200772', '湖北民康制药有限公司', '美怡欣', '19.25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '银杏达莫', '注射液', '10ml', '1', 'yxdm', null);
INSERT INTO `ypxx` VALUES ('f7be5ba0a7fe4d6d8244da42ef4365dc', '200377', '江苏亚邦爱普森药业有限公司', '呋塞米片', '2.52', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '呋塞米片', '片剂', '20mg', '100', 'fsmp', null);
INSERT INTO `ypxx` VALUES ('f8249a85dd73480198e73e180ac1fd9b', '200378', '山东方明药业集团股份有限公司', '丙戊酸钠片', '8.65', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '丙戊酸钠', '片剂', '0.2g', '100', 'bwsn', null);
INSERT INTO `ypxx` VALUES ('f83499b85b804910a7396ce0b52b681a', '200379', '上海玉丹药业有限公司', '无', '36.22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '荣心丸', '大蜜丸', '1.5g', '36', 'rxw', null);
INSERT INTO `ypxx` VALUES ('f87653e12ca547e492ae2779f45e25a4', '200380', '山东华信制药集团股份有限公司', '葛根素', '0.48', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '葛根素', '注射液', '2ml:0.1g', '1', 'ggs', null);
INSERT INTO `ypxx` VALUES ('f8939741e16749a8be469f2691bb24bf', '200393', '河北天成药业股份有限公司', '葡萄糖酸钙注射液', '0.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '葡萄糖酸钙', '注射液', '10ml:1.0g', '1', 'pttsg', null);
INSERT INTO `ypxx` VALUES ('f91593131ed640269eb4a6d7b4b7b5e4', '200381', '烟台天正药业有限公司', '防风通圣颗粒', '23.76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '防风通圣颗粒', '颗粒剂', '3g', '18', 'fftskl', null);
INSERT INTO `ypxx` VALUES ('f961fbe96c414819a86a41140c4eae19', '200382', '北京华润高科天然药物有限公司', '茵栀黄口服液', '18.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '茵栀黄口服液', '口服液', '10ml', '6', 'yzhkfy', null);
INSERT INTO `ypxx` VALUES ('f99c542b87ca482e8b321e3ba52b4cbe', '200449', '上海旭东海普药业有限公司', '无', '1.62', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '谷氨酸钠', '注射液', '20ml:5.75g', '1', 'yasn,gasn', null);
INSERT INTO `ypxx` VALUES ('fa2438c3f61b4edcba6db03c0e881e2a', '200450', '南京天朗制药有限公司', '氧氟沙星滴眼液', '1.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '氧氟沙星', '滴眼液', '8ml:24mg', '1', 'yfsx', null);
INSERT INTO `ypxx` VALUES ('fa6ee2d5cb304b41bd5d44a37ffdf7f5', '200451', '宜昌人福药业有限责任公司', '维生素C注射液', '0.19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '维生素C', '注射液', '5ml:1.0g', '1', 'wssc', null);
INSERT INTO `ypxx` VALUES ('fb71d409055f419fa66913e60f39f361', '200452', '上海现代制药股份有限公司', '欣然', '29.1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '硝苯地平控释片', '控释片', '30mg', '12', 'xbdpksp', null);
INSERT INTO `ypxx` VALUES ('fba13efe35b7412ea82f665c55ed28de', '200453', '新乡恒久远药业有限公司', '无', '2.16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '倍他司汀', '片剂', '4mg', '100', 'btst', null);
INSERT INTO `ypxx` VALUES ('fba872f2c845467f8fa683909cd37337', '200454', '吉林省集安益盛药业股份有限公司', '生脉注射液', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '支', '生脉注射液', '注射液', '10ml', '1', 'smzyy,smzsy', null);
INSERT INTO `ypxx` VALUES ('fc036e664cfb4641a61b0515f762a8c1', '200455', '河南科伦药业有限公司', '10%葡萄糖', '1.15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '10%葡萄糖', '大输液', '250ml(塑瓶)', '1', '10%ptt', null);
INSERT INTO `ypxx` VALUES ('fc4535139c7c47d8b9351fe7f57bf36a', '200456', '山东健康药业有限公司', '美西律', '8.75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '美西律', '片剂', '0.1g', '100', 'mxl', null);
INSERT INTO `ypxx` VALUES ('fc98d27ef5e24d48a557915bf1e8c96a', '200457', '山东罗欣药业股份有限公司', '叶酸', '8.08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '支', '叶酸', '粉针', '15mg', '1', 'xs,ys', null);
INSERT INTO `ypxx` VALUES ('fc9ce3913e774d018b3aa074f19dc13a', '200458', '江西药都樟树制药有限公司', '逍遥颗粒', '5.56', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, '盒', '逍遥颗粒', '颗粒剂', '15g', '10', 'xykl', null);
INSERT INTO `ypxx` VALUES ('fd58d9907c6a4540a644c38f9fabef42', '200459', '海口奇力制药股份有限公司', '盐酸左氧氟沙星胶囊', '2.02', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '左氧氟沙星', '胶囊', '0.2g', '12', 'zyfsx', null);
INSERT INTO `ypxx` VALUES ('fddf8bc0c65c4617be6db136462160b5', '200460', '广州白云山星群(药业)股份有限公司', '安神补脑液', '9.98', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '安神补脑液', '口服液', '10ml', '10', 'asbny', null);
INSERT INTO `ypxx` VALUES ('fdf9147d54e0414caddea72dcbb858b9', '200461', '四川省宜宾五粮液集团宜宾制药有限责任公司', '益母草颗粒', '4.7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '益母草颗粒', '颗粒剂', '15g', '20', 'ymckl', null);
INSERT INTO `ypxx` VALUES ('fe53a71997ab4eabbacd1b39b2e84cf0', '200462', '宜昌人福药业有限责任公司', '卡马西平片', '2.87', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '卡马西平', '片剂', '0.1g', '100', 'qmxp,kmxp', null);
INSERT INTO `ypxx` VALUES ('fe77af3aa95e40d48575f8b77a70d0eb', '200463', '江西天施康弋阳制药有限公司', '牛黄上清胶囊', '22.91', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '牛黄上清胶囊', '胶囊', '0.3g', '36', 'nhsqjn', null);
INSERT INTO `ypxx` VALUES ('ff1a0b01ffbc4e54abc869cdda08e7db', '200464', '华中药业股份有限公司', '葡醛内酯', '0.88', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '瓶', '葡醛内酯', '片剂', '50mg', '100', 'pqnz', null);
INSERT INTO `ypxx` VALUES ('ff3042c999bd43c6b122d3381ca089b7', '200465', '河南同源制药有限公司', '生脉饮(党参)', '3.9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '生脉饮(党参)', '口服液', '10ml', '10', 'smy(dc),smy(ds)', null);
INSERT INTO `ypxx` VALUES ('ff7cf4efcfda4813b10516f189c71791', '200798', '四川好医生制药有限公司', '罗红霉素', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '罗红霉素', '分散片', '50mg', '12', 'lgms,lhms', null);
INSERT INTO `ypxx` VALUES ('ffb4e018b4c04b59b32af607eb26b60c', '200799', '云南白药集团股份有限公司', '黄连上清片', '0.8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '黄连上清片', '片剂', '相当于原生药0.655g', '36', 'hlsqp', null);
INSERT INTO `ypxx` VALUES ('ffdb605748164b59af0e508e1e5ae2bd', '200800', '山东沃华医药科技股份有限公司', '橘红丸', '3.31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, '盒', '橘红丸', '大蜜丸', '6g', '10', 'jgw,jhw', null);

-- ----------------------------
-- Table structure for ypxx_backup
-- ----------------------------
DROP TABLE IF EXISTS `ypxx_backup`;
CREATE TABLE `ypxx_backup` (
  `ID` varchar(32) NOT NULL,
  `BM` varchar(32) NOT NULL,
  `SCQYMC` varchar(128) NOT NULL,
  `SPMC` varchar(64) NOT NULL,
  `ZBJG` float NOT NULL,
  `ZPDZ` varchar(128) DEFAULT NULL,
  `PZWH` varchar(64) DEFAULT NULL,
  `PZWHYXQ` datetime DEFAULT NULL,
  `JKY` char(1) DEFAULT NULL,
  `BZCZ` varchar(64) DEFAULT NULL,
  `BZDW` varchar(64) DEFAULT NULL,
  `LSJG` float DEFAULT NULL,
  `LSJGCC` varchar(64) DEFAULT NULL,
  `ZLCC` varchar(32) DEFAULT NULL,
  `ZLCCSM` varchar(200) DEFAULT NULL,
  `YPJYBG` char(1) DEFAULT NULL,
  `YPJYBGBM` varchar(128) DEFAULT NULL,
  `YPJYBGYXQ` datetime DEFAULT NULL,
  `JYZT` char(1) NOT NULL,
  `VCHAR1` varchar(128) DEFAULT NULL,
  `VCHAR2` varchar(128) DEFAULT NULL,
  `VCHAR3` varchar(128) DEFAULT NULL,
  `DW` varchar(32) DEFAULT NULL,
  `MC` varchar(128) DEFAULT NULL,
  `JX` varchar(32) DEFAULT NULL,
  `GG` varchar(128) DEFAULT NULL,
  `ZHXS` varchar(16) DEFAULT NULL,
  `PINYIN` varchar(768) DEFAULT NULL,
  `LB` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ypxx_backup
-- ----------------------------

-- ----------------------------
-- Table structure for yybusiness
-- ----------------------------
DROP TABLE IF EXISTS `yybusiness`;
CREATE TABLE `yybusiness` (
  `ID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL COMMENT '采购单id',
  `USERYYID` varchar(64) NOT NULL COMMENT '医院id',
  `YPXXID` varchar(32) NOT NULL COMMENT '药品信息id',
  `ZBJG` float NOT NULL COMMENT '中标价',
  `JYJG` float NOT NULL COMMENT '交易价',
  `CGL` int(11) NOT NULL COMMENT '采购量',
  `CGJE` float NOT NULL COMMENT '采购金额',
  `CGZT` char(1) NOT NULL COMMENT '存储数据字典：1、未确认送货  2、已发货、3、已入库',
  `RKL` int(11) DEFAULT NULL COMMENT '入库量',
  `RKJE` float DEFAULT NULL COMMENT '入库金额',
  `RKDH` varchar(32) DEFAULT NULL COMMENT '发票号或入库单号',
  `YPPH` varchar(32) DEFAULT NULL COMMENT '药品批号',
  `YPYXQ` float DEFAULT NULL COMMENT '药品有效期(年)',
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '入库时间（年月日时分秒）',
  `FHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发货时间（年月日时分秒）',
  `YYTHDID` varchar(32) DEFAULT NULL COMMENT '退货单id',
  `THL` varchar(32) DEFAULT NULL COMMENT '退货量',
  `THJE` float DEFAULT NULL COMMENT '退货金额',
  `THZT` char(1) DEFAULT NULL COMMENT '退货状态 1、未确认退货 2、已确认退货',
  `THYY` varchar(100) DEFAULT NULL COMMENT '退货原因',
  `YYJSDID` varchar(32) DEFAULT NULL COMMENT '结算单id',
  `JSL` int(11) DEFAULT NULL COMMENT '结算量',
  `JSJE` float DEFAULT NULL COMMENT '结算金额',
  `JSZT` char(1) DEFAULT NULL COMMENT '结算状态1、未确认结算 2、已确认结算',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `USERGYSID` varchar(64) DEFAULT NULL COMMENT '供货商id',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESS` (`YYCGDID`,`YPXXID`),
  KEY `INDEX_YYBUSINESS_1` (`CGZT`,`THZT`,`YYCGDID`,`YYJSDID`,`USERGYSID`,`YYTHDID`,`JSZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院交易明细表(用于交易查询统计)';

-- ----------------------------
-- Records of yybusiness
-- ----------------------------

-- ----------------------------
-- Table structure for yybusiness2014
-- ----------------------------
DROP TABLE IF EXISTS `yybusiness2014`;
CREATE TABLE `yybusiness2014` (
  `ID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL,
  `USERYYID` varchar(64) NOT NULL,
  `YPXXID` varchar(32) NOT NULL,
  `ZBJG` float NOT NULL,
  `JYJG` float NOT NULL,
  `CGL` int(11) NOT NULL,
  `CGJE` float NOT NULL,
  `CGZT` char(1) NOT NULL,
  `RKL` int(11) DEFAULT NULL,
  `RKJE` float DEFAULT NULL,
  `RKDH` varchar(32) DEFAULT NULL,
  `YPPH` varchar(32) DEFAULT NULL,
  `YPYXQ` float DEFAULT NULL,
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `YYTHDID` varchar(32) DEFAULT NULL,
  `THL` varchar(32) DEFAULT NULL,
  `THJE` float DEFAULT NULL,
  `THZT` char(1) DEFAULT NULL,
  `THYY` varchar(100) DEFAULT NULL,
  `YYJSDID` varchar(32) DEFAULT NULL,
  `JSL` int(11) DEFAULT NULL,
  `JSJE` float DEFAULT NULL,
  `JSZT` char(1) DEFAULT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `USERGYSID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESS2014` (`YYCGDID`,`YPXXID`),
  KEY `INDEX_YYBUSINESS2014_1` (`CGZT`,`THZT`,`YYCGDID`,`YYJSDID`,`USERGYSID`,`YYTHDID`,`JSZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yybusiness2014
-- ----------------------------

-- ----------------------------
-- Table structure for yybusiness2015
-- ----------------------------
DROP TABLE IF EXISTS `yybusiness2015`;
CREATE TABLE `yybusiness2015` (
  `ID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL,
  `USERYYID` varchar(64) NOT NULL,
  `YPXXID` varchar(32) NOT NULL,
  `ZBJG` float NOT NULL,
  `JYJG` float NOT NULL,
  `CGL` int(11) NOT NULL,
  `CGJE` float NOT NULL,
  `CGZT` char(1) NOT NULL,
  `RKL` int(11) DEFAULT NULL,
  `RKJE` float DEFAULT NULL,
  `RKDH` varchar(32) DEFAULT NULL,
  `YPPH` varchar(32) DEFAULT NULL,
  `YPYXQ` float DEFAULT NULL,
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `YYTHDID` varchar(32) DEFAULT NULL,
  `THL` varchar(32) DEFAULT NULL,
  `THJE` float DEFAULT NULL,
  `THZT` char(1) DEFAULT NULL,
  `THYY` varchar(100) DEFAULT NULL,
  `YYJSDID` varchar(32) DEFAULT NULL,
  `JSL` int(11) DEFAULT NULL,
  `JSJE` float DEFAULT NULL,
  `JSZT` char(1) DEFAULT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `USERGYSID` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESS2015` (`YYCGDID`,`YPXXID`),
  KEY `INDEX_YYBUSINESS2015_1` (`CGZT`,`THZT`,`YYCGDID`,`YYJSDID`,`USERGYSID`,`YYTHDID`,`JSZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yybusiness2015
-- ----------------------------

-- ----------------------------
-- Table structure for yycgd
-- ----------------------------
DROP TABLE IF EXISTS `yycgd`;
CREATE TABLE `yycgd` (
  `ID` varchar(32) NOT NULL,
  `BM` varchar(10) NOT NULL COMMENT '采购单编号',
  `MC` varchar(128) NOT NULL COMMENT '采购单名称',
  `USERYYID` varchar(64) NOT NULL COMMENT '医院id',
  `LXR` varchar(64) DEFAULT NULL COMMENT '联系人',
  `LXDH` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `CJR` varchar(64) DEFAULT NULL COMMENT '建单人',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建单时间(年月日时分秒)',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间(年月日时分秒)',
  `BZ` varchar(256) DEFAULT NULL COMMENT '备注',
  `ZT` char(1) NOT NULL COMMENT '采购单状态(存储数据字典：1：未提交、2：已提交未审核、3：审核通过、4：审核不通过)',
  `SHYJ` varchar(256) DEFAULT NULL COMMENT '审核意见',
  `SHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间(年月日时分秒)',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最近修改时间',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGD` (`BM`),
  KEY `INDEX_YYCGD_1` (`USERYYID`,`ZT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院采购单表';

-- ----------------------------
-- Records of yycgd
-- ----------------------------

-- ----------------------------
-- Table structure for yycgd2014
-- ----------------------------
DROP TABLE IF EXISTS `yycgd2014`;
CREATE TABLE `yycgd2014` (
  `ID` varchar(32) NOT NULL,
  `BM` varchar(10) NOT NULL,
  `MC` varchar(128) NOT NULL,
  `USERYYID` varchar(64) NOT NULL,
  `LXR` varchar(64) DEFAULT NULL,
  `LXDH` varchar(64) DEFAULT NULL,
  `CJR` varchar(64) DEFAULT NULL,
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BZ` varchar(256) DEFAULT NULL,
  `KSGHDATE` datetime DEFAULT NULL,
  `JSGHDATE` datetime DEFAULT NULL,
  `ZT` char(1) NOT NULL,
  `SHYJ` varchar(256) DEFAULT NULL,
  `SHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGD2014` (`BM`),
  KEY `INDEX_YYCGD2014_1` (`USERYYID`,`ZT`),
  KEY `INDEX_YYCGD2014_2` (`CJTIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yycgd2014
-- ----------------------------

-- ----------------------------
-- Table structure for yycgdmx
-- ----------------------------
DROP TABLE IF EXISTS `yycgdmx`;
CREATE TABLE `yycgdmx` (
  `ID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL COMMENT '采购单id',
  `YPXXID` varchar(32) NOT NULL COMMENT '药品信息id',
  `USERGYSID` varchar(64) NOT NULL COMMENT '供货企业id',
  `ZBJG` float DEFAULT NULL COMMENT '中标价',
  `JYJG` float DEFAULT NULL COMMENT '交易价',
  `CGL` int(11) DEFAULT NULL COMMENT '采购量',
  `CGJE` float DEFAULT NULL COMMENT '采购金额',
  `CGZT` char(1) DEFAULT NULL COMMENT '存储数据字典：1、未确认送货  2、已发货、3、已入库、4无法供货',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_YYCGDMX_NEWINDEX1_YYCGDMX` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院采购单明细表';

-- ----------------------------
-- Records of yycgdmx
-- ----------------------------

-- ----------------------------
-- Table structure for yycgdmx2014
-- ----------------------------
DROP TABLE IF EXISTS `yycgdmx2014`;
CREATE TABLE `yycgdmx2014` (
  `ID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL,
  `USERGYSID` varchar(64) NOT NULL,
  `YPXXID` varchar(32) NOT NULL,
  `ZBJG` float NOT NULL,
  `JYJG` float DEFAULT NULL,
  `CGL` int(11) DEFAULT NULL,
  `CGJE` float DEFAULT NULL,
  `CGZT` char(1) NOT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGDMX2014` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yycgdmx2014
-- ----------------------------

-- ----------------------------
-- Table structure for yycgdrk
-- ----------------------------
DROP TABLE IF EXISTS `yycgdrk`;
CREATE TABLE `yycgdrk` (
  `ID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL COMMENT '采购单id',
  `YPXXID` varchar(32) NOT NULL COMMENT '药品信息id',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  `RKL` int(11) NOT NULL COMMENT '入库量',
  `RKJE` float NOT NULL COMMENT '入库金额',
  `RKDH` varchar(32) NOT NULL COMMENT '发票号或入库单号',
  `YPPH` varchar(32) NOT NULL COMMENT '药品批号',
  `YPYXQ` float NOT NULL COMMENT '药品有效期(年)',
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入库时间（年月日时分秒）',
  `CGZT` char(1) DEFAULT NULL COMMENT '采购状态,已入库',
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESSCGDRK` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院交易采购单入库表';

-- ----------------------------
-- Records of yycgdrk
-- ----------------------------

-- ----------------------------
-- Table structure for yycgdrk2014
-- ----------------------------
DROP TABLE IF EXISTS `yycgdrk2014`;
CREATE TABLE `yycgdrk2014` (
  `ID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL,
  `YPXXID` varchar(32) NOT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  `RKL` int(11) NOT NULL,
  `CGZT` char(1) NOT NULL,
  `RKJE` float NOT NULL,
  `RKDH` varchar(32) NOT NULL,
  `YPPH` varchar(32) NOT NULL,
  `YPYXQ` float NOT NULL,
  `RKTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYCGDRK2014` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yycgdrk2014
-- ----------------------------

-- ----------------------------
-- Table structure for yyjsd
-- ----------------------------
DROP TABLE IF EXISTS `yyjsd`;
CREATE TABLE `yyjsd` (
  `ID` varchar(32) NOT NULL COMMENT '结算单id',
  `BM` varchar(10) NOT NULL COMMENT '结算单编号',
  `MC` varchar(128) NOT NULL COMMENT '结算单名称',
  `USERYYID` varchar(64) NOT NULL COMMENT '医院id',
  `LXR` varchar(64) DEFAULT NULL COMMENT '联系人',
  `LXDH` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `CJR` varchar(64) DEFAULT NULL COMMENT '建单人',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建单时间(年月日时分秒)',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最近修改时间',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间(年月日时分秒)',
  `BZ` varchar(256) DEFAULT NULL COMMENT '备注',
  `ZT` char(1) DEFAULT NULL COMMENT '存储数据字典：1：未提交、2：已提交至供货商',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSSINESSJSD` (`BM`),
  KEY `INDEX_YYBUSINESSJSD_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院交易结算单表(用于交易查询统计)';

-- ----------------------------
-- Records of yyjsd
-- ----------------------------

-- ----------------------------
-- Table structure for yyjsd2014
-- ----------------------------
DROP TABLE IF EXISTS `yyjsd2014`;
CREATE TABLE `yyjsd2014` (
  `ID` varchar(32) NOT NULL,
  `BM` varchar(10) NOT NULL,
  `MC` varchar(128) NOT NULL,
  `USERYYID` varchar(64) NOT NULL,
  `LXR` varchar(64) DEFAULT NULL,
  `LXDH` varchar(64) DEFAULT NULL,
  `CJR` varchar(64) DEFAULT NULL,
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BZ` varchar(256) DEFAULT NULL,
  `ZT` char(1) NOT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYJSD2014` (`BM`),
  KEY `INDEX_YYJSD2014_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyjsd2014
-- ----------------------------

-- ----------------------------
-- Table structure for yyjsdmx
-- ----------------------------
DROP TABLE IF EXISTS `yyjsdmx`;
CREATE TABLE `yyjsdmx` (
  `ID` varchar(32) NOT NULL,
  `YYJSDID` varchar(32) NOT NULL COMMENT '结算单id',
  `YPXXID` varchar(32) NOT NULL COMMENT '药品信息id',
  `YYCGDID` varchar(32) NOT NULL COMMENT '采购单id',
  `JSL` int(11) NOT NULL COMMENT '结算量',
  `JSJE` float NOT NULL COMMENT '结算金额',
  `JSZT` char(1) NOT NULL COMMENT '结算状态1、未确认结算 2、已确认结算',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESSJSDMX` (`YPXXID`,`YYCGDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyjsdmx
-- ----------------------------

-- ----------------------------
-- Table structure for yyjsdmx2014
-- ----------------------------
DROP TABLE IF EXISTS `yyjsdmx2014`;
CREATE TABLE `yyjsdmx2014` (
  `ID` varchar(32) NOT NULL,
  `YYJSDID` varchar(32) NOT NULL,
  `YPXXID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL,
  `JSL` int(11) NOT NULL,
  `JSJE` float NOT NULL,
  `JSZT` char(1) NOT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYJSDMX2014` (`YPXXID`,`YYCGDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yyjsdmx2014
-- ----------------------------

-- ----------------------------
-- Table structure for yythd
-- ----------------------------
DROP TABLE IF EXISTS `yythd`;
CREATE TABLE `yythd` (
  `ID` varchar(32) NOT NULL COMMENT '退货单id',
  `BM` varchar(10) DEFAULT NULL COMMENT '退货单编号',
  `MC` varchar(128) DEFAULT NULL COMMENT '退货单名称',
  `USERYYID` varchar(64) DEFAULT NULL COMMENT '医院id',
  `LXR` varchar(64) DEFAULT NULL COMMENT '联系人',
  `LXDH` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `CJR` varchar(64) DEFAULT NULL COMMENT '建单人',
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建单时间(年月日时分秒)',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间(年月日时分秒)',
  `BZ` varchar(256) DEFAULT NULL COMMENT '备注',
  `ZT` char(1) DEFAULT NULL COMMENT '存储数据字典：1：未提交、2：已提交至供货商',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSSINESSTHD` (`BM`),
  KEY `INDEX_YYBUSSINESSTHD_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院交易退货单表(用于交易查询统计)';

-- ----------------------------
-- Records of yythd
-- ----------------------------

-- ----------------------------
-- Table structure for yythd2014
-- ----------------------------
DROP TABLE IF EXISTS `yythd2014`;
CREATE TABLE `yythd2014` (
  `ID` varchar(32) NOT NULL,
  `BM` varchar(10) NOT NULL,
  `MC` varchar(128) NOT NULL,
  `USERYYID` varchar(64) NOT NULL,
  `LXR` varchar(64) DEFAULT NULL,
  `LXDH` varchar(64) DEFAULT NULL,
  `CJR` varchar(64) DEFAULT NULL,
  `CJTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TJTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `XGTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BZ` varchar(256) DEFAULT NULL,
  `ZT` char(1) NOT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYTHD2014` (`BM`),
  KEY `INDEX_YYTHD2014_1` (`USERYYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yythd2014
-- ----------------------------

-- ----------------------------
-- Table structure for yythdmx
-- ----------------------------
DROP TABLE IF EXISTS `yythdmx`;
CREATE TABLE `yythdmx` (
  `ID` varchar(32) NOT NULL,
  `YYTHDID` varchar(32) NOT NULL COMMENT '退货单id',
  `YYCGDID` varchar(32) NOT NULL COMMENT '采购单id',
  `YPXXID` varchar(32) NOT NULL COMMENT '药品信息id',
  `THL` int(11) NOT NULL COMMENT '退货量',
  `THJE` float NOT NULL COMMENT '退货金额',
  `THZT` char(1) NOT NULL COMMENT '退货状态 1、未确认退货 2、已确认退货',
  `THYY` varchar(100) DEFAULT NULL COMMENT '退货原因',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYBUSINESSTHDM` (`YYCGDID`,`YPXXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yythdmx
-- ----------------------------

-- ----------------------------
-- Table structure for yythdmx2014
-- ----------------------------
DROP TABLE IF EXISTS `yythdmx2014`;
CREATE TABLE `yythdmx2014` (
  `ID` varchar(32) NOT NULL,
  `YYTHDID` varchar(32) NOT NULL,
  `YPXXID` varchar(32) NOT NULL,
  `YYCGDID` varchar(32) NOT NULL,
  `THL` int(11) NOT NULL,
  `THJE` float NOT NULL,
  `THZT` char(1) NOT NULL,
  `THYY` varchar(100) DEFAULT NULL,
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  `VCHAR3` varchar(64) DEFAULT NULL,
  `VCHAR4` varchar(128) DEFAULT NULL,
  `VCHAR5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `UNI_YYTHDMX2014` (`YPXXID`,`YYCGDID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yythdmx2014
-- ----------------------------

-- ----------------------------
-- Table structure for yyypml
-- ----------------------------
DROP TABLE IF EXISTS `yyypml`;
CREATE TABLE `yyypml` (
  `ID` varchar(32) NOT NULL,
  `USERYYID` varchar(64) NOT NULL COMMENT '医院id',
  `YPXXID` varchar(32) NOT NULL COMMENT '药品信息id',
  `USERGYSID` varchar(64) NOT NULL COMMENT '药品供货企业id',
  `VCHAR1` varchar(64) DEFAULT NULL,
  `VCHAR2` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_YYYPML_NEWINDEX1` (`USERYYID`,`YPXXID`,`USERGYSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院药品目录表';

-- ----------------------------
-- Records of yyypml
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
