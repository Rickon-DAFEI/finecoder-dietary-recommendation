DROP DATABASE IF EXISTS `deliciousFoods`;
CREATE DATABASE `deliciousFoods`;
use `deliciousFoods`;

set global innodb_large_prefix=on;

set global innodb_file_per_table=on;

set global innodb_file_format=BARRACUDA;

DROP DATABASE IF EXISTS `nx_system_file_info`;
CREATE TABLE `nx_system_file_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`originName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '原始文件名',
`fileName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存储文件名',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文件信息表';

DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '姓名',
`password` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '密码',
`nickName` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '昵称',
`sex` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '性别',
`age` int(10) COMMENT '年龄',
`birthday` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '生日',
`phone` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '手机号',
`address` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '地址',
`code` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '编号',
`email` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '邮箱',
`cardId` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '身份证',
`level` int(10) NOT NULL DEFAULT '1' COMMENT '权限等级',
UNIQUE KEY `uk_name` (`name`) USING BTREE,
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';


DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '姓名',
`password` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '密码',
`nickName` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '昵称',
`sex` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '性别',
`age` int(10) COMMENT '年龄',
`birthday` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '生日',
`phone` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '手机号',
`address` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '地址',
`email` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '邮箱',
`cardId` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '身份证',
`level` int(10) NOT NULL DEFAULT '2' COMMENT '权限等级',
UNIQUE KEY `uk_name` (`name`) USING BTREE,
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';


DROP TABLE IF EXISTS `classify_info`;
CREATE TABLE `classify_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`descroiption` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '描述',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='菜谱大类信息表';


DROP TABLE IF EXISTS `sub_classify_info`;
CREATE TABLE `sub_classify_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`description` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '描述',
`classifyId` bigint(20) NULL COMMENT '菜谱大类id',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='菜谱小类信息表';


DROP TABLE IF EXISTS `collect_info`;
CREATE TABLE `collect_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`time` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '时间',
`foodsId` bigint(20) NULL COMMENT '菜谱id',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='收藏信息表';


DROP TABLE IF EXISTS `praise_info`;
CREATE TABLE `praise_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`time` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '时间',
`notesId` bigint(20) NULL COMMENT '笔记id',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='笔记点赞信息表';


DROP TABLE IF EXISTS `news_info`;
CREATE TABLE `news_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`content` text COMMENT '内容',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='饮食资讯信息表';


DROP TABLE IF EXISTS `advertiser_info`;
CREATE TABLE `advertiser_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '公告名称',
`content` longtext COMMENT '公告内容',
`time` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '公告时间',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公告信息表';


DROP TABLE IF EXISTS `message_info`;
CREATE TABLE `message_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`content` text COMMENT '回答内容',
`time` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '回答时间',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='趣味答题信息表';


DROP TABLE IF EXISTS `foods_menu_info`;
CREATE TABLE `foods_menu_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`description` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '描述',
`tips` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '菜谱标签',
`subId` bigint(20) NULL COMMENT '菜谱小类id',
`fileId` bigint(20) DEFAULT NULL COMMENT '文件id',
`fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名',
`userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传人',
`level` int(10) DEFAULT NULL COMMENT '用户等级',
`uploadUserId` bigint(20) DEFAULT NULL COMMENT '用户id',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='菜谱信息表';


DROP TABLE IF EXISTS `foods_material_info`;
CREATE TABLE `foods_material_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`description` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '描述',
`fileId` bigint(20) DEFAULT NULL COMMENT '文件id',
`fileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名',
`userName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传人',
`level` int(10) DEFAULT NULL COMMENT '用户等级',
`uploadUserId` bigint(20) DEFAULT NULL COMMENT '用户id',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='食材信息表';


DROP TABLE IF EXISTS `notes_info`;
CREATE TABLE `notes_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
`time` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '上传时间',
`userId` bigint(20) NULL COMMENT '用户id',
`content` longtext COMMENT '公告内容',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='笔记信息表';


DROP TABLE IF EXISTS `comment_notes_info`;
CREATE TABLE `comment_notes_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
`content` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '评论内容',
`time` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '评论时间',
`name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '评论人',
`foreignId` bigint(20) NULL COMMENT '关联的模块id',
PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='笔记评论信息表';


INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 22, '2020-09-30 11:41:37', '18843232356', '上海市', '111', 'aa@163.com', '342425199001116372', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (2, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 23, '2020-09-30 11:41:37', '18843232356', '北京市', '222', 'bb@163.com', '342425199001116376', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (3, 'admin3', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 32, '2020-09-30 11:41:37', '18843232356', '合肥市', '333', 'cc@163.com', '342425199001116323', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (4, 'admin4', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 24, '2020-09-30 11:41:37', '18843232356', '北京市', '444', 'hahaha@126.com', '342425199001116837', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (5, 'admin5', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 25, '2020-09-30 11:41:37', '18843232356', '合肥市', '555', 'hello@126.com', '342425199001116309', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (6, 'admin6', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 26, '2020-09-30 11:41:37', '18843232356', '北京市', '666', '1212@qq.com', '342425199001116984', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (7, 'admin7', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 21, '2020-09-30 11:41:37', '18843232356', '合肥市', '777', '8765@qq.com', '342425199001116303', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (8, 'admin8', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 31, '2020-09-30 11:41:37', '18843232356', '北京市', '888', '9080@qq.com', '342425199001116910', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (9, 'admin9', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '男', 34, '2020-09-30 11:41:37', '18843232356', '合肥市', '999', 'shjs@126.com', '342425199001116345', 1);
INSERT INTO `admin_info` (id, name, password, nickName, sex, age, birthday, phone, address, code, email, cardId, level) VALUES (10, 'admin10', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '女', 33, '2020-09-30 11:41:37', '18843232356', '深圳市', '000', '666@qq.com', '342425199001116234', 1);


INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (1, '张天志', 'e10adc3949ba59abbe56e057f20f883e', '老张', '男', 22, '2020-09-30 11:41:37', '18843232356', '上海市', 'aa@163.com', '342425199001116372', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (2, '赵千里', 'e10adc3949ba59abbe56e057f20f883e', '老赵', '男', 23, '2020-09-30 11:41:37', '18843232356', '北京市', 'bb@163.com', '342425199001116376', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (3, '钱优优', 'e10adc3949ba59abbe56e057f20f883e', '老钱', '女', 32, '2020-09-30 11:41:37', '18843232356', '合肥市', 'cc@163.com', '342425199001116323', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (4, '贾宏鑫', 'e10adc3949ba59abbe56e057f20f883e', '老贾', '女', 24, '2020-09-30 11:41:37', '18843232356', '北京市', 'hahaha@126.com', '342425199001116837', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (5, '夏其林', 'e10adc3949ba59abbe56e057f20f883e', '老夏', '男', 25, '2020-09-30 11:41:37', '18843232356', '合肥市', 'hello@126.com', '342425199001116309', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (6, '倪标生', 'e10adc3949ba59abbe56e057f20f883e', '老倪', '男', 26, '2020-09-30 11:41:37', '18843232356', '北京市', '1212@qq.com', '342425199001116984', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (7, '孙晓哈', 'e10adc3949ba59abbe56e057f20f883e', '老孙', '男', 21, '2020-09-30 11:41:37', '18843232356', '合肥市', '8765@qq.com', '342425199001116303', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (8, '李锐', 'e10adc3949ba59abbe56e057f20f883e', '老李', '男', 31, '2020-09-30 11:41:37', '18843232356', '北京市', '9080@qq.com', '342425199001116910', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (9, '吴腊苏', 'e10adc3949ba59abbe56e057f20f883e', '老吴', '男', 34, '2020-09-30 11:41:37', '18843232356', '合肥市', 'shjs@126.com', '342425199001116345', 2);
INSERT INTO `user_info` (id, name, password, nickName, sex, age, birthday, phone, address, email, cardId, level) VALUES (10, '潘晓章', 'e10adc3949ba59abbe56e057f20f883e', '老潘', '女', 33, '2020-09-30 11:41:37', '18843232356', '深圳市', '666@qq.com', '342425199001116234', 2);


INSERT INTO `advertiser_info` (id, name, content, time) VALUES (1, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (2, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (3, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (4, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (5, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (6, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (7, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (8, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (9, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');
INSERT INTO `advertiser_info` (id, name, content, time) VALUES (10, '系统公告', '这是系统公告，管理员可以在后台修改', '2020-09-30 11:41:37');


INSERT INTO `message_info` (id, name, content, time) VALUES (1, '小李', '来了', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (2, '小张', '我觉得系统需要改进下', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (3, '老湿', '这个系统太棒了', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (4, '骑猪去旅行', '请问哪里有邮箱？', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (5, '一行清泪', '我该怎么联系管理员呢？', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (6, '小魔仙', '来过！', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (7, '水壶', '哈哈哈哈哈', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (8, '哈哈哈嗝', '我觉得帅的很', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (9, '我是一只小蚂蚱', '666', '2020-09-30 11:41:37');
INSERT INTO `message_info` (id, name, content, time) VALUES (10, '不要问问就是牛逼', '牛逼就完事了', '2020-09-30 11:41:37');


