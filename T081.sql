/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t081`;
CREATE DATABASE IF NOT EXISTS `t081` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t081`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootj2zt8/upload/1618998521947.jpeg'),
	(2, 'picture2', 'http://localhost:8080/springbootj2zt8/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootj2zt8/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='大创资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(131, '2021-04-21 08:29:14', '标题1', '简介1', 'http://localhost:8080/springbootj2zt8/upload/news_picture1.jpg', '<p>内容1srjk</p>'),
	(132, '2021-04-21 08:29:14', '标题2', '简介2', 'http://localhost:8080/springbootj2zt8/upload/news_picture2.jpg', '内容2'),
	(133, '2021-04-21 08:29:14', '标题3', '简介3', 'http://localhost:8080/springbootj2zt8/upload/news_picture3.jpg', '内容3'),
	(134, '2021-04-21 08:29:14', '标题4', '简介4', 'http://localhost:8080/springbootj2zt8/upload/news_picture4.jpg', '内容4'),
	(135, '2021-04-21 08:29:14', '标题5', '简介5', 'http://localhost:8080/springbootj2zt8/upload/news_picture5.jpg', '内容5'),
	(136, '2021-04-21 08:29:14', '标题6', '简介6', 'http://localhost:8080/springbootj2zt8/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `pingshenfangan`;
CREATE TABLE IF NOT EXISTS `pingshenfangan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `chuangxindian` longtext COMMENT '创新点',
  `qianqizhunbei` longtext COMMENT '前期准备',
  `shishifangan` longtext COMMENT '实施方案',
  `yuqichengguo` longtext COMMENT '预期成果',
  `jingfeiyusuan` longtext COMMENT '经费预算',
  `chengyuansuzhi` longtext COMMENT '成员素质',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='评审方案';

DELETE FROM `pingshenfangan`;
INSERT INTO `pingshenfangan` (`id`, `addtime`, `biaoti`, `chuangxindian`, `qianqizhunbei`, `shishifangan`, `yuqichengguo`, `jingfeiyusuan`, `chengyuansuzhi`, `tupian`) VALUES
	(121, '2021-04-21 08:29:14', '标题1', '创新点1', '前期准备1', '实施方案1', '预期成果1tfgh', '经费预算1', '成员素质1', 'http://localhost:8080/springbootj2zt8/upload/pingshenfangan_tupian1.jpg'),
	(122, '2021-04-21 08:29:14', '标题2', '创新点2', '前期准备2', '实施方案2', '预期成果2', '经费预算2', '成员素质2', 'http://localhost:8080/springbootj2zt8/upload/pingshenfangan_tupian2.jpg'),
	(123, '2021-04-21 08:29:14', '标题3', '创新点3', '前期准备3', '实施方案3', '预期成果3', '经费预算3', '成员素质3', 'http://localhost:8080/springbootj2zt8/upload/pingshenfangan_tupian3.jpg'),
	(124, '2021-04-21 08:29:14', '标题4', '创新点4', '前期准备4', '实施方案4', '预期成果4', '经费预算4', '成员素质4', 'http://localhost:8080/springbootj2zt8/upload/pingshenfangan_tupian4.jpg'),
	(125, '2021-04-21 08:29:14', '标题5', '创新点5', '前期准备5', '实施方案5', '预期成果5', '经费预算5', '成员素质5', 'http://localhost:8080/springbootj2zt8/upload/pingshenfangan_tupian5.jpg'),
	(126, '2021-04-21 08:29:14', '标题6', '创新点6', '前期准备6', '实施方案6', '预期成果6', '经费预算6', '成员素质6', 'http://localhost:8080/springbootj2zt8/upload/pingshenfangan_tupian6.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1618997881889, '1', 'xuesheng', '学生', '7afwcib9hp4q8snhj1d1zlal2qd60su4', '2021-04-21 09:38:06', '2021-04-21 10:38:07'),
	(2, 1618998012905, '1', 'zhidaolaoshi', '指导老师', 'aeiiow4goqhjd3kcssie2usod0ppkej7', '2021-04-21 09:40:18', '2021-04-21 10:40:19'),
	(3, 1618998175946, '1', 'yuanxiguanliyuan', '院系管理员', 'mtumby7peogm7gi4hx256bpz8mkvzcp2', '2021-04-21 09:43:00', '2021-04-21 10:43:01'),
	(4, 1, 'abo', 'users', '管理员', '47kltuctyamz665pf5vw28x2lddfl67w', '2021-04-21 09:45:33', '2024-02-10 11:37:39'),
	(5, 11, '学生1', 'xuesheng', '学生', 'pim0j6yf0ybod780omj0aix4q2b7mfqx', '2024-02-10 10:33:09', '2024-02-10 11:33:09');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-21 08:29:14');

DROP TABLE IF EXISTS `xiangmujiexiang`;
CREATE TABLE IF NOT EXISTS `xiangmujiexiang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmujianjie` longtext COMMENT '项目简介',
  `lilunyiju` longtext COMMENT '理论依据',
  `zhuyaochengguo` longtext COMMENT '主要成果',
  `zhongjiechengguo` longtext COMMENT '终结成果',
  `zhidaolaoshiyijian` longtext COMMENT '指导老师意见',
  `yuanxiguanliyuanyijian` longtext COMMENT '院系管理员意见',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='项目结项';

DELETE FROM `xiangmujiexiang`;
INSERT INTO `xiangmujiexiang` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `xiangmujianjie`, `lilunyiju`, `zhuyaochengguo`, `zhongjiechengguo`, `zhidaolaoshiyijian`, `yuanxiguanliyuanyijian`, `wenjian`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(91, '2021-04-21 08:29:14', '项目名称1', '项目类型1', '项目简介1', '理论依据1', '主要成果1', '终结成果1', '指导老师意见11111111', '院系管理员意见111111111111111111111', '', '1', '1', '是', ''),
	(92, '2021-04-21 08:29:14', '项目名称2', '项目类型2', '项目简介2', '理论依据2', '主要成果2', '终结成果2', '指导老师意见2', '院系管理员意见2', '', '账号2', '姓名2', '是', ''),
	(93, '2021-04-21 08:29:14', '项目名称3', '项目类型3', '项目简介3', '理论依据3', '主要成果3', '终结成果3', '指导老师意见3', '院系管理员意见3', '', '账号3', '姓名3', '是', ''),
	(94, '2021-04-21 08:29:14', '项目名称4', '项目类型4', '项目简介4', '理论依据4', '主要成果4', '终结成果4', '指导老师意见4', '院系管理员意见4', '', '账号4', '姓名4', '是', ''),
	(95, '2021-04-21 08:29:14', '项目名称5', '项目类型5', '项目简介5', '理论依据5', '主要成果5', '终结成果5', '指导老师意见5', '院系管理员意见5', '', '账号5', '姓名5', '是', ''),
	(96, '2021-04-21 08:29:14', '项目名称6', '项目类型6', '项目简介6', '理论依据6', '主要成果6', '终结成果6', '指导老师意见6', '院系管理员意见6', '', '账号6', '姓名6', '是', '');

DROP TABLE IF EXISTS `xiangmuleixing`;
CREATE TABLE IF NOT EXISTS `xiangmuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='项目类型';

DELETE FROM `xiangmuleixing`;
INSERT INTO `xiangmuleixing` (`id`, `addtime`, `xiangmuleixing`) VALUES
	(51, '2021-04-21 08:29:13', '项目类型1drfyg'),
	(52, '2021-04-21 08:29:13', '项目类型2'),
	(53, '2021-04-21 08:29:13', '项目类型3'),
	(54, '2021-04-21 08:29:13', '项目类型4'),
	(55, '2021-04-21 08:29:13', '项目类型5'),
	(56, '2021-04-21 08:29:13', '项目类型6');

DROP TABLE IF EXISTS `xiangmupingshen`;
CREATE TABLE IF NOT EXISTS `xiangmupingshen` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmumiaoshu` longtext COMMENT '项目描述',
  `xueshengtuandui` longtext COMMENT '学生团队',
  `chengyuanjieshao` longtext COMMENT '成员介绍',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='项目评审';

DELETE FROM `xiangmupingshen`;
INSERT INTO `xiangmupingshen` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `xiangmumiaoshu`, `xueshengtuandui`, `chengyuanjieshao`, `wenjian`, `zhanghao`, `xingming`) VALUES
	(101, '2021-04-21 08:29:14', '项目名称1', '项目类型1', '项目描述1', '学生团队1', '成员介绍1', '', '账号1', '姓名1'),
	(102, '2021-04-21 08:29:14', '项目名称2', '项目类型2', '项目描述2', '学生团队2', '成员介绍2', '', '账号2', '姓名2'),
	(103, '2021-04-21 08:29:14', '项目名称3', '项目类型3', '项目描述3', '学生团队3', '成员介绍3', '', '账号3', '姓名3'),
	(104, '2021-04-21 08:29:14', '项目名称4', '项目类型4', '项目描述4', '学生团队4', '成员介绍4', '', '账号4', '姓名4'),
	(105, '2021-04-21 08:29:14', '项目名称5', '项目类型5', '项目描述5', '学生团队5', '成员介绍5', '', '账号5', '姓名5'),
	(106, '2021-04-21 08:29:14', '项目名称6', '项目类型6', '项目描述6', '学生团队6', '成员介绍6', '', '账号6', '姓名6');

DROP TABLE IF EXISTS `xiangmushenbao`;
CREATE TABLE IF NOT EXISTS `xiangmushenbao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmumiaoshu` varchar(200) DEFAULT NULL COMMENT '项目描述',
  `shejilingyu` varchar(200) DEFAULT NULL COMMENT '涉及领域',
  `xueshengtuandui` longtext NOT NULL COMMENT '学生团队',
  `chengyuanjieshao` longtext COMMENT '成员介绍',
  `zhidaolaoshi` varchar(200) DEFAULT NULL COMMENT '指导老师',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhidaolaoshiyijian` longtext COMMENT '指导老师意见',
  `yuanxiguanliyuanyijian` longtext COMMENT '院系管理员意见',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618997989836 DEFAULT CHARSET=utf8mb3 COMMENT='项目申报';

DELETE FROM `xiangmushenbao`;
INSERT INTO `xiangmushenbao` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `xiangmumiaoshu`, `shejilingyu`, `xueshengtuandui`, `chengyuanjieshao`, `zhidaolaoshi`, `zhanghao`, `xingming`, `tupian`, `zhidaolaoshiyijian`, `yuanxiguanliyuanyijian`, `beizhu`, `sfsh`, `shhf`) VALUES
	(71, '2021-04-21 08:29:13', '项目名称1', '项目类型1', '项目描述1', '涉及领域1', '学生团队1', '成员介绍1', '指导老师1', '账号1', '姓名1', 'http://localhost:8080/springbootj2zt8/upload/xiangmushenbao_tupian1.jpg', '指导老师意见1', '院系管理员意见1', '备注1', '是', ''),
	(72, '2021-04-21 08:29:13', '项目名称2', '项目类型2', '项目描述2', '涉及领域2', '学生团队2', '成员介绍2', '指导老师2', '账号2', '姓名2', 'http://localhost:8080/springbootj2zt8/upload/xiangmushenbao_tupian2.jpg', '指导老师意见2', '院系管理员意见2', '备注2', '是', ''),
	(73, '2021-04-21 08:29:13', '项目名称3', '项目类型3', '项目描述3', '涉及领域3', '学生团队3', '成员介绍3', '指导老师3', '账号3', '姓名3', 'http://localhost:8080/springbootj2zt8/upload/xiangmushenbao_tupian3.jpg', '指导老师意见3', '院系管理员意见3', '备注3', '是', ''),
	(74, '2021-04-21 08:29:13', '项目名称4', '项目类型4', '项目描述4', '涉及领域4', '学生团队4', '成员介绍4', '指导老师4', '账号4', '姓名4', 'http://localhost:8080/springbootj2zt8/upload/xiangmushenbao_tupian4.jpg', '指导老师意见4', '院系管理员意见4', '备注4', '是', ''),
	(75, '2021-04-21 08:29:13', '项目名称5', '项目类型5', '项目描述5', '涉及领域5', '学生团队5', '成员介绍5', '指导老师5', '账号5', '姓名5', 'http://localhost:8080/springbootj2zt8/upload/xiangmushenbao_tupian5.jpg', '指导老师意见5', '院系管理员意见5', '备注5', '是', ''),
	(76, '2021-04-21 08:29:13', '项目名称6', '项目类型6', '项目描述6', '涉及领域6', '学生团队6', '成员介绍6', '指导老师6', '账号6', '姓名6', 'http://localhost:8080/springbootj2zt8/upload/xiangmushenbao_tupian6.jpg', '指导老师意见6', '院系管理员意见6', '备注6', '是', ''),
	(1618997989835, '2021-04-21 09:39:49', '项目名称2', '项目类型2', '项目描述2', '涉及领域2', '1111', '11111', NULL, '1', '1', 'http://localhost:8080/springbootj2zt8/upload/xiangmuxinxi_tupian2.jpg', '111111111111', '111111111111', NULL, '是', '1111111');

DROP TABLE IF EXISTS `xiangmuxinxi`;
CREATE TABLE IF NOT EXISTS `xiangmuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmumiaoshu` longtext COMMENT '项目描述',
  `shejilingyu` longtext COMMENT '涉及领域',
  `wendang` varchar(200) DEFAULT NULL COMMENT '文档',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='项目信息';

DELETE FROM `xiangmuxinxi`;
INSERT INTO `xiangmuxinxi` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `xiangmumiaoshu`, `shejilingyu`, `wendang`, `tupian`) VALUES
	(61, '2021-04-21 08:29:13', '项目名称1', '项目类型1', '项目描述1', '涉及领域1', '', 'http://localhost:8080/springbootj2zt8/upload/xiangmuxinxi_tupian1.jpg'),
	(62, '2021-04-21 08:29:13', '项目名称2', '项目类型2', '项目描述2fgh', '涉及领域2fh', '', 'http://localhost:8080/springbootj2zt8/upload/xiangmuxinxi_tupian2.jpg'),
	(63, '2021-04-21 08:29:13', '项目名称3', '项目类型3', '项目描述3', '涉及领域3', '', 'http://localhost:8080/springbootj2zt8/upload/xiangmuxinxi_tupian3.jpg'),
	(64, '2021-04-21 08:29:13', '项目名称4', '项目类型4', '项目描述4', '涉及领域4', '', 'http://localhost:8080/springbootj2zt8/upload/xiangmuxinxi_tupian4.jpg'),
	(65, '2021-04-21 08:29:13', '项目名称5', '项目类型5', '项目描述5', '涉及领域5', '', 'http://localhost:8080/springbootj2zt8/upload/xiangmuxinxi_tupian5.jpg'),
	(66, '2021-04-21 08:29:13', '项目名称6', '项目类型6', '项目描述6', '涉及领域6', '', 'http://localhost:8080/springbootj2zt8/upload/xiangmuxinxi_tupian6.jpg');

DROP TABLE IF EXISTS `xiangmuzhongjian`;
CREATE TABLE IF NOT EXISTS `xiangmuzhongjian` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) NOT NULL COMMENT '项目类型',
  `xiangmumiaoshu` varchar(200) DEFAULT NULL COMMENT '项目描述',
  `xueshengtuandui` varchar(200) DEFAULT NULL COMMENT '学生团队',
  `chengyuanjieshao` varchar(200) DEFAULT NULL COMMENT '成员介绍',
  `lixiangshijian` date DEFAULT NULL COMMENT '立项时间',
  `jihuajieshushijian` date DEFAULT NULL COMMENT '计划结束时间',
  `xiangmujinzhanqingkuang` longtext COMMENT '项目进展情况',
  `xiangmuchengyuanshifoubianhua` varchar(200) DEFAULT NULL COMMENT '项目成员是否变化',
  `nengfouanshiwanchengjihua` varchar(200) DEFAULT NULL COMMENT '能否按时完成计划',
  `qianqijingfeishiyongqingkuang` longtext COMMENT '前旗经费使用情况',
  `qitaxushuomingdewenti` longtext COMMENT '其他需说明的问题',
  `zhidaolaoshiyijian` longtext COMMENT '指导老师意见',
  `yuanxiguanliyuanyijian` longtext COMMENT '院系管理员意见',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='项目中检';

DELETE FROM `xiangmuzhongjian`;
INSERT INTO `xiangmuzhongjian` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `xiangmumiaoshu`, `xueshengtuandui`, `chengyuanjieshao`, `lixiangshijian`, `jihuajieshushijian`, `xiangmujinzhanqingkuang`, `xiangmuchengyuanshifoubianhua`, `nengfouanshiwanchengjihua`, `qianqijingfeishiyongqingkuang`, `qitaxushuomingdewenti`, `zhidaolaoshiyijian`, `yuanxiguanliyuanyijian`, `wenjian`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(81, '2021-04-21 08:29:14', '项目名称1', '项目类型1', '项目描述1', '学生团队1', '成员介绍1', '2021-04-21', '2021-04-21', '项目进展情况111', '是', '是', '前旗经费使用情况111', '其他需说明的问题111', '指导老师意见111', '院系管理员意见111111111', '', '1', '1', '是', ''),
	(82, '2021-04-21 08:29:14', '项目名称2', '项目类型2', '项目描述2', '学生团队2', '成员介绍2', '2021-04-21', '2021-04-21', '项目进展情况2', '是', '是', '前旗经费使用情况2', '其他需说明的问题2', '指导老师意见2', '院系管理员意见2', '', '账号2', '姓名2', '是', ''),
	(83, '2021-04-21 08:29:14', '项目名称3', '项目类型3', '项目描述3', '学生团队3', '成员介绍3', '2021-04-21', '2021-04-21', '项目进展情况3', '是', '是', '前旗经费使用情况3', '其他需说明的问题3', '指导老师意见3', '院系管理员意见3', '', '账号3', '姓名3', '是', ''),
	(84, '2021-04-21 08:29:14', '项目名称4', '项目类型4', '项目描述4', '学生团队4', '成员介绍4', '2021-04-21', '2021-04-21', '项目进展情况4', '是', '是', '前旗经费使用情况4', '其他需说明的问题4', '指导老师意见4', '院系管理员意见4', '', '账号4', '姓名4', '是', ''),
	(85, '2021-04-21 08:29:14', '项目名称5', '项目类型5', '项目描述5', '学生团队5', '成员介绍5', '2021-04-21', '2021-04-21', '项目进展情况5', '是', '是', '前旗经费使用情况5', '其他需说明的问题5', '指导老师意见5', '院系管理员意见5', '', '账号5', '姓名5', '是', ''),
	(86, '2021-04-21 08:29:14', '项目名称6', '项目类型6', '项目描述6', '学生团队6', '成员介绍6', '2021-04-21', '2021-04-21', '项目进展情况6', '是', '是', '前旗经费使用情况6', '其他需说明的问题6', '指导老师意见6', '院系管理员意见6', '', '账号6', '姓名6', '是', '');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618997881890 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `touxiang`) VALUES
	(11, '2021-04-21 08:29:13', '学生1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootj2zt8/upload/xuesheng_touxiang1.jpg'),
	(13, '2021-04-21 08:29:13', '学生3', '123456', '姓名3', '女', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootj2zt8/upload/xuesheng_touxiang3.jpg'),
	(14, '2021-04-21 08:29:13', '学生4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbootj2zt8/upload/xuesheng_touxiang4.jpg'),
	(15, '2021-04-21 08:29:13', '学生5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootj2zt8/upload/xuesheng_touxiang5.jpg'),
	(16, '2021-04-21 08:29:13', '学生6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootj2zt8/upload/xuesheng_touxiang6.jpg'),
	(1618997881889, '2021-04-21 09:38:01', '1', '1', '1', '女', '12345678999', '31@qq.com', 'http://localhost:8080/springbootj2zt8/upload/1618997939332.jpeg');

DROP TABLE IF EXISTS `youxiuxiangmu`;
CREATE TABLE IF NOT EXISTS `youxiuxiangmu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) NOT NULL COMMENT '项目类型',
  `xiangmujianjie` longtext COMMENT '项目简介',
  `xueshengfuzeren` varchar(200) DEFAULT NULL COMMENT '学生负责人',
  `zhidaolaoshi` varchar(200) DEFAULT NULL COMMENT '指导老师',
  `pingshenyijian` longtext COMMENT '评审意见',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='优秀项目';

DELETE FROM `youxiuxiangmu`;
INSERT INTO `youxiuxiangmu` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `xiangmujianjie`, `xueshengfuzeren`, `zhidaolaoshi`, `pingshenyijian`, `tupian`) VALUES
	(41, '2021-04-21 08:29:13', '项目名称1', '项目类型1', '项目简介1dtfyg', '学生负责人1', '指导老师1', '评审意见1', 'http://localhost:8080/springbootj2zt8/upload/youxiuxiangmu_tupian1.jpg'),
	(42, '2021-04-21 08:29:13', '项目名称2', '项目类型2', '项目简介2', '学生负责人2', '指导老师2', '评审意见2', 'http://localhost:8080/springbootj2zt8/upload/youxiuxiangmu_tupian2.jpg'),
	(43, '2021-04-21 08:29:13', '项目名称3', '项目类型3', '项目简介3', '学生负责人3', '指导老师3', '评审意见3', 'http://localhost:8080/springbootj2zt8/upload/youxiuxiangmu_tupian3.jpg'),
	(45, '2021-04-21 08:29:13', '项目名称5', '项目类型5', '项目简介5', '学生负责人5', '指导老师5', '评审意见5', 'http://localhost:8080/springbootj2zt8/upload/youxiuxiangmu_tupian5.jpg'),
	(46, '2021-04-21 08:29:13', '项目名称6', '项目类型6', '项目简介6', '学生负责人6', '指导老师6', '评审意见6', 'http://localhost:8080/springbootj2zt8/upload/youxiuxiangmu_tupian6.jpg');

DROP TABLE IF EXISTS `yuanxiguanliyuan`;
CREATE TABLE IF NOT EXISTS `yuanxiguanliyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618998175947 DEFAULT CHARSET=utf8mb3 COMMENT='院系管理员';

DELETE FROM `yuanxiguanliyuan`;
INSERT INTO `yuanxiguanliyuan` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `touxiang`) VALUES
	(31, '2021-04-21 08:29:13', '院系管理员1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootj2zt8/upload/yuanxiguanliyuan_touxiang1.jpg'),
	(32, '2021-04-21 08:29:13', '院系管理员2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springbootj2zt8/upload/yuanxiguanliyuan_touxiang2.jpg'),
	(33, '2021-04-21 08:29:13', '院系管理员3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootj2zt8/upload/yuanxiguanliyuan_touxiang3.jpg'),
	(35, '2021-04-21 08:29:13', '院系管理员5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootj2zt8/upload/yuanxiguanliyuan_touxiang5.jpg'),
	(36, '2021-04-21 08:29:13', '院系管理员6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootj2zt8/upload/yuanxiguanliyuan_touxiang6.jpg'),
	(1618998175946, '2021-04-21 09:42:55', '1', '1', '1', '女', '12345678999', '12@qq.com', 'http://localhost:8080/springbootj2zt8/upload/1618998237657.jpeg');

DROP TABLE IF EXISTS `zhidaolaoshi`;
CREATE TABLE IF NOT EXISTS `zhidaolaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618998012906 DEFAULT CHARSET=utf8mb3 COMMENT='指导老师';

DELETE FROM `zhidaolaoshi`;
INSERT INTO `zhidaolaoshi` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `touxiang`) VALUES
	(21, '2021-04-21 08:29:13', '指导老师1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootj2zt8/upload/zhidaolaoshi_touxiang1.jpg'),
	(23, '2021-04-21 08:29:13', '指导老师3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootj2zt8/upload/zhidaolaoshi_touxiang3.jpg'),
	(24, '2021-04-21 08:29:13', '指导老师4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbootj2zt8/upload/zhidaolaoshi_touxiang4.jpg'),
	(25, '2021-04-21 08:29:13', '指导老师5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootj2zt8/upload/zhidaolaoshi_touxiang5.jpg'),
	(26, '2021-04-21 08:29:13', '指导老师6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootj2zt8/upload/zhidaolaoshi_touxiang6.jpg'),
	(1618998012905, '2021-04-21 09:40:12', '1', '1', '1', '女', '12345678999', '321@qq.com', 'http://localhost:8080/springbootj2zt8/upload/1618998081229.jpeg');

DROP TABLE IF EXISTS `zhuanjiapingshen`;
CREATE TABLE IF NOT EXISTS `zhuanjiapingshen` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmumiaoshu` longtext COMMENT '项目描述',
  `xueshengtuandui` longtext COMMENT '学生团队',
  `chengyuanjieshao` longtext COMMENT '成员介绍',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `pingshenzhuanjia` varchar(200) DEFAULT NULL COMMENT '评审专家',
  `pingweiyijian` longtext COMMENT '评委意见',
  `pingshenriqi` date DEFAULT NULL COMMENT '评审日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618998475015 DEFAULT CHARSET=utf8mb3 COMMENT='专家评审';

DELETE FROM `zhuanjiapingshen`;
INSERT INTO `zhuanjiapingshen` (`id`, `addtime`, `xiangmumingcheng`, `xiangmuleixing`, `xiangmumiaoshu`, `xueshengtuandui`, `chengyuanjieshao`, `wenjian`, `zhanghao`, `xingming`, `pingshenzhuanjia`, `pingweiyijian`, `pingshenriqi`) VALUES
	(111, '2021-04-21 08:29:14', '项目名称1', '项目类型1', '项目描述1', '学生团队1', '成员介绍1', '', '账号1', '姓名1', '评审专家1', '评委意见1', '2021-04-21'),
	(112, '2021-04-21 08:29:14', '项目名称2', '项目类型2', '项目描述2', '学生团队2', '成员介绍2', '', '账号2', '姓名2', '评审专家2', '评委意见2', '2021-04-21'),
	(113, '2021-04-21 08:29:14', '项目名称3', '项目类型3', '项目描述3', '学生团队3', '成员介绍3', '', '账号3', '姓名3', '评审专家3', '评委意见3', '2021-04-21'),
	(114, '2021-04-21 08:29:14', '项目名称4', '项目类型4', '项目描述4', '学生团队4', '成员介绍4', '', '账号4', '姓名4', '评审专家4', '评委意见4erdtfygu', '2021-04-21'),
	(116, '2021-04-21 08:29:14', '项目名称6', '项目类型6', '项目描述6', '学生团队6', '成员介绍6', '', '账号6', '姓名6', '评审专家6', '评委意见6', '2021-04-21'),
	(1618998475014, '2021-04-21 09:47:54', '项目名称6', '项目类型6', '项目描述6', '学生团队6', '成员介绍6', NULL, '账号6', '姓名6', NULL, 'srdtfyuitfygu', '2021-04-02');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
