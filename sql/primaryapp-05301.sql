/*
 Navicat Premium Data Transfer

 Source Server         : 华为mysql
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : 139.159.238.19:3306
 Source Schema         : primaryapp

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 30/05/2024 13:37:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_chinese
-- ----------------------------
DROP TABLE IF EXISTS `app_chinese`;
CREATE TABLE `app_chinese`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `grade` tinyint(4) NOT NULL COMMENT '年级',
  `term` tinyint(4) NOT NULL COMMENT '学期',
  `unit` tinyint(4) NOT NULL COMMENT '单元',
  `lesson_no` tinyint(4) NOT NULL COMMENT '第几课',
  `word` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '词语',
  `mean` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '含义',
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `word_type` tinyint(4) NULL DEFAULT NULL COMMENT '词语分类',
  `word_sort` smallint(6) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2845 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '语文词语表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_chinese
-- ----------------------------
INSERT INTO `app_chinese` VALUES (21, 4, 2, 1, 2, '装饰', NULL, 'zhuāng shì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (22, 4, 2, 1, 2, '构成', NULL, 'gòu chéng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (23, 4, 2, 1, 2, '屋檐', NULL, 'wū yán', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (24, 4, 2, 1, 2, '独特', NULL, 'dú tè', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (25, 4, 2, 1, 2, '华丽', NULL, 'huá lì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (26, 4, 2, 1, 2, '顺序', NULL, 'shùn xù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (27, 4, 2, 1, 2, '照例', NULL, 'zhào lì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (28, 4, 2, 1, 2, '催眠曲', NULL, 'cuī mián qǔ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (29, 4, 2, 1, 2, '率领', NULL, 'shuài lǐng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (30, 4, 2, 1, 2, '踏步', NULL, 'tà bù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (31, 4, 2, 1, 2, '倘若', NULL, 'tǎng ruò', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (32, 4, 2, 1, 2, '和谐', NULL, 'hé xié', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (33, 4, 2, 1, 2, '甜蜜', NULL, 'tián mì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (34, 4, 2, 1, 2, '梦乡', NULL, 'mèng xiāng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (35, 4, 2, 1, 2, '投球', NULL, 'tóu qiú', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (36, 4, 2, 1, 2, '描绘', NULL, 'miáo huì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (37, 4, 2, 1, 2, '寄信', NULL, 'jì xìn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (38, 4, 2, 1, 2, '蹲下', NULL, 'dūn xià', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (39, 4, 2, 1, 2, '凤凰', NULL, 'fèng huáng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (40, 4, 2, 1, 2, '耸立', NULL, 'sǒng lì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (41, 4, 2, 1, 3, '威力', NULL, 'wēi lì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (42, 4, 2, 1, 3, '扫荡', NULL, 'sǎo dàng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (43, 4, 2, 1, 3, '慰藉', NULL, 'wèi jiè', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (44, 4, 2, 1, 3, '帐子', NULL, 'zhàng zǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (45, 4, 2, 1, 3, '锐利', NULL, 'ruì lì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (46, 4, 2, 1, 3, '河滩', NULL, 'hé tān', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (47, 4, 2, 1, 3, '闪烁', NULL, 'shǎn shuò', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (48, 4, 2, 1, 3, '奇幻', NULL, 'qí huàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (49, 4, 2, 1, 3, '猫头鹰', NULL, 'māo tóu yīng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (50, 4, 2, 1, 3, '霸气', NULL, 'bà qì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (51, 4, 2, 1, 3, '蝙蝠', NULL, 'biān fú', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (52, 4, 2, 1, 3, '复杂', NULL, 'fù zá', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (53, 4, 2, 2, 5, '美餐', NULL, 'měi cān', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (54, 4, 2, 2, 5, '怒吼', NULL, 'nù hǒu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (55, 4, 2, 2, 5, '灰尘', NULL, 'huī chén', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (56, 4, 2, 2, 5, '松脂', NULL, 'sōng zhī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (57, 4, 2, 2, 5, '拂拭', NULL, 'fú shì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (58, 4, 2, 2, 5, '晌午', NULL, 'shǎng wǔ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (59, 4, 2, 2, 5, '挣扎', NULL, 'zhēng zhá', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (60, 4, 2, 2, 5, '成千上万', NULL, 'chéng qiān shàng wàn', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (61, 4, 2, 2, 5, '淹没', NULL, 'yān mò', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (62, 4, 2, 2, 5, '热辣辣', NULL, 'rè là là', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (63, 4, 2, 2, 5, '冲刷', NULL, 'chōng shuā', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (64, 4, 2, 2, 5, '断绝', NULL, 'duàn jué', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (65, 4, 2, 2, 5, '详细', NULL, 'xiáng xì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (66, 4, 2, 2, 5, '情形', NULL, 'qíng xíng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (67, 4, 2, 2, 5, '推测', NULL, 'tuī cè', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (68, 4, 2, 2, 5, '三番五次', NULL, 'sān fān wǔ cì', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (69, 4, 2, 2, 5, '渗透', NULL, 'shèn tòu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (70, 4, 2, 2, 5, '埋没', NULL, 'mái mò', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (71, 4, 2, 2, 5, '计划', NULL, 'jì huà', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (72, 4, 2, 2, 6, '恐龙', NULL, 'kǒng lóng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (73, 4, 2, 2, 6, '迟钝', NULL, 'chí dùn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (74, 4, 2, 2, 6, '鸽子', NULL, 'gē zi', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (75, 4, 2, 2, 6, '根据', NULL, 'gēn jù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (76, 4, 2, 2, 6, '凌空', NULL, 'líng kōng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (77, 4, 2, 2, 6, '末期', NULL, 'mò qī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (78, 4, 2, 2, 6, '描绘', NULL, 'miáo huì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (79, 4, 2, 2, 6, '隧道', NULL, 'suì dào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (80, 4, 2, 2, 6, '形态', NULL, 'xíng tài', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (81, 4, 2, 2, 6, '地球', NULL, 'dì qiú', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (82, 4, 2, 2, 6, '笨重', NULL, 'bèn zhòng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (83, 4, 2, 2, 6, '前肢', NULL, 'qián zhī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (84, 4, 2, 2, 6, '膨大', NULL, 'péng dà', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (85, 4, 2, 2, 6, '具备', NULL, 'jù bèi', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (86, 4, 2, 2, 6, '脱离', NULL, 'tuō lí', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (87, 4, 2, 2, 6, '开辟', NULL, 'kāi pì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (88, 4, 2, 2, 7, '纳米', NULL, 'nà mǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (89, 4, 2, 2, 7, '冰箱', NULL, 'bīng xiāng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (90, 4, 2, 2, 7, '无能为力', NULL, 'wú néng wéi lì', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (91, 4, 2, 2, 7, '拥有', NULL, 'yōng yǒu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (92, 4, 2, 2, 7, '功能', NULL, 'gōng néng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (93, 4, 2, 2, 7, '蔬菜', NULL, 'shū cài', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (94, 4, 2, 2, 7, '钢铁', NULL, 'gāng tiě', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (95, 4, 2, 2, 7, '健康', NULL, 'jiàn kāng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (96, 4, 2, 2, 7, '隐形', NULL, 'yǐn xíng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (97, 4, 2, 2, 7, '细胞', NULL, 'xì bāo', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (98, 4, 2, 2, 7, '预防', NULL, 'yù fáng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (99, 4, 2, 2, 7, '疾病', NULL, 'jí bìng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (100, 4, 2, 2, 7, '病灶', NULL, 'bìng zào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (101, 4, 2, 2, 7, '需要', NULL, 'xū yào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (102, 4, 2, 2, 7, '深刻', NULL, 'shēn kè', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (103, 4, 2, 2, 7, '低碳', NULL, 'dī tàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (104, 4, 2, 2, 7, '除臭', NULL, 'chú chòu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (105, 4, 2, 3, 9, '繁星', NULL, 'fán xīng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (106, 4, 2, 3, 9, '藤萝', NULL, 'téng luó', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (107, 4, 2, 3, 9, '波涛', NULL, 'bō tāo', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (108, 4, 2, 3, 10, '墨绿', NULL, 'mò lǜ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (109, 4, 2, 3, 10, '嫩绿', NULL, 'nèn lǜ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (110, 4, 2, 3, 10, '交叉', NULL, 'jiāo chā', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (111, 4, 2, 3, 10, '集中', NULL, 'jí zhōng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (112, 4, 2, 3, 10, '教练', NULL, 'jiào liàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (113, 4, 2, 3, 10, '指挥', NULL, 'zhǐ huī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (114, 4, 2, 3, 10, '整齐', NULL, 'zhěng qí', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (115, 4, 2, 3, 10, '节拍', NULL, 'jié pāi', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (116, 4, 2, 3, 11, '毛茸茸', NULL, 'máo róng róng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (117, 4, 2, 3, 11, '白桦', NULL, 'bái huà', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (118, 4, 2, 3, 11, '潇洒', NULL, 'xiāo sǎ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (119, 4, 2, 3, 11, '朦胧', NULL, 'méng lóng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (120, 4, 2, 3, 11, '寂静', NULL, 'jì jìng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (121, 4, 2, 3, 11, '朝霞', NULL, 'zhāo xiá', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (139, 4, 2, 4, 15, '即将', NULL, 'jí jiāng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (140, 4, 2, 4, 15, '姿态', NULL, 'zī tài', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (141, 4, 2, 4, 15, '音调', NULL, 'yīn diào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (142, 4, 2, 4, 15, '局促', NULL, 'jú cù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (143, 4, 2, 4, 15, '高傲', NULL, 'gāo ào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (144, 4, 2, 4, 15, '京剧', NULL, 'jīng jù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (145, 4, 2, 4, 15, '一丝不苟', NULL, 'yì sī bù gǒu', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (146, 4, 2, 4, 15, '譬如', NULL, 'pì rú', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (147, 4, 2, 4, 15, '饭馆', NULL, 'fàn guǎn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (148, 4, 2, 4, 15, '侍候', NULL, 'shì hòu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (149, 4, 2, 4, 15, '附近', NULL, 'fù jìn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (150, 4, 2, 4, 15, '脾气', NULL, 'pí qì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (151, 4, 2, 4, 15, '空空如也', NULL, 'kōng kōng rú yě', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (152, 4, 2, 4, 15, '敏捷', NULL, 'mǐn jié', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (153, 4, 2, 4, 15, '昂首', NULL, 'áng shǒu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (154, 4, 2, 4, 15, '供养', NULL, 'gòng yǎng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (155, 4, 2, 4, 15, '刹那', NULL, 'chà nà', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (156, 4, 2, 4, 15, '努力', NULL, 'nǔ lì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (157, 4, 2, 4, 15, '分辨', NULL, 'fēn biàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (158, 4, 2, 4, 15, '夺目', NULL, 'duó mù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (159, 4, 2, 5, 16, '清静', NULL, 'qīng jìng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (160, 4, 2, 5, 16, '范围', NULL, 'fàn wéi', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (161, 4, 2, 5, 16, '气势', NULL, 'qì shì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (162, 4, 2, 5, 16, '扩大', NULL, 'kuò dà', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (163, 4, 2, 5, 16, '灿烂', NULL, 'càn làn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (164, 4, 2, 5, 16, '不仅', NULL, 'bù jǐn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (165, 4, 2, 5, 16, '心情', NULL, 'xīn qíng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (166, 4, 2, 5, 16, '脚跟', NULL, 'jiǎo gēn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (167, 4, 2, 5, 16, '聚集', NULL, 'jù jí', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (168, 4, 2, 5, 16, '拥挤', NULL, 'yōng jǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (169, 4, 2, 5, 16, '移动', NULL, 'yí dòng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (170, 4, 2, 5, 17, '挤压', NULL, 'jǐ yā', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (171, 4, 2, 5, 17, '石钟乳', NULL, 'shí zhōng rǔ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (172, 4, 2, 5, 17, '杜鹃', NULL, 'dù juān', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (173, 4, 2, 5, 17, '昏暗', NULL, 'hūn àn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (174, 4, 2, 5, 17, '石笋', NULL, 'shí sǔn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (175, 4, 2, 5, 17, '额角', NULL, 'é jiǎo', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (176, 4, 2, 5, 17, '登陆', NULL, 'dēng lù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (177, 4, 2, 5, 17, '观赏', NULL, 'guān shǎng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (178, 4, 2, 5, 17, '宽广', NULL, 'kuān guǎng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (179, 4, 2, 6, 19, '芦花', NULL, 'lú huā', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (180, 4, 2, 6, 19, '枪栓', NULL, 'qiāng shuān', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (181, 4, 2, 6, 19, '摇晃', NULL, 'yáo huàng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (182, 4, 2, 6, 19, '铅笔', NULL, 'qiān bǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (183, 4, 2, 6, 19, '发愣', NULL, 'fā lèng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (184, 4, 2, 6, 19, '胳膊', NULL, 'gē bo', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (185, 4, 2, 6, 19, '劫难', NULL, 'jié nán', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (186, 4, 2, 6, 19, '绸子', NULL, 'chóu zǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (187, 4, 2, 6, 19, '尸首', NULL, 'shī shǒu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (188, 4, 2, 6, 19, '敌人', NULL, 'dí rén', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (189, 4, 2, 6, 19, '慌忙', NULL, 'huāng máng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (190, 4, 2, 6, 19, '防备', NULL, 'fáng bèi', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (191, 4, 2, 6, 19, '鬼脸', NULL, 'guǐ liǎn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (192, 4, 2, 6, 19, '戒指', NULL, 'jiè zhǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (193, 4, 2, 7, 23, '占领', NULL, 'zhàn lǐng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (194, 4, 2, 7, 23, '命令', NULL, 'mìng lìng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (195, 4, 2, 7, 23, '战场', NULL, 'zhàn chǎng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (196, 4, 2, 7, 23, '持续', NULL, 'chí xù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (197, 4, 2, 7, 23, '射击', NULL, 'shè jī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (198, 4, 2, 7, 23, '突击', NULL, 'tū jī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (199, 4, 2, 7, 23, '枪弹', NULL, 'qiāng dàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (200, 4, 2, 4, 14, '讨厌', NULL, 'tǎo yàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (201, 4, 2, 4, 14, '理由心事', NULL, 'lǐ yóu xīn shì', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (202, 4, 2, 4, 14, '成绩', NULL, 'chéng jì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (203, 4, 2, 4, 14, '忠厚', NULL, 'zhōng hòu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (204, 4, 2, 4, 14, '反抗', NULL, 'fǎn kàng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (205, 4, 2, 4, 14, '毒手', NULL, 'dú shǒu', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (206, 4, 2, 4, 14, '预备', NULL, 'yù bèi', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (207, 4, 2, 4, 14, '警戒', NULL, 'jǐng jiè', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (208, 4, 2, 4, 14, '汤圆', NULL, 'tāng yuán', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (209, 4, 2, 4, 13, '呼唤', NULL, 'hū huàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (210, 4, 2, 4, 13, '响动', NULL, 'xiǎng dòng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (211, 4, 2, 4, 13, '尽职', NULL, 'jìn zhí', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (212, 4, 2, 4, 13, '稿纸', NULL, 'gǎo zhǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (213, 4, 2, 4, 13, '屏息', NULL, 'bǐng xī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (214, 4, 2, 4, 13, '梅花', NULL, 'méi huā', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (215, 4, 2, 4, 13, '解闷', NULL, 'jiě mèn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (216, 4, 2, 4, 13, '淘气', NULL, 'táo qì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (217, 4, 2, 4, 13, '满月', NULL, 'mǎn yuè', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (218, 4, 2, 4, 13, '勇猛', NULL, 'yǒng měng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (242, 4, 2, 7, 23, '愤怒', NULL, 'fèn nù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (243, 4, 2, 7, 23, '注视', NULL, 'zhù shì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (244, 4, 2, 7, 23, '艰巨', NULL, 'jiān jù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (245, 4, 2, 7, 23, '光荣', NULL, 'guāng róng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (246, 4, 2, 7, 23, '消息', NULL, 'xiāo xī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (247, 4, 2, 7, 23, '炮弹', NULL, 'pào dàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (248, 4, 2, 7, 23, '爆炸', NULL, 'bào zhà', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (249, 4, 2, 7, 23, '烈火', NULL, 'liè huǒ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (250, 4, 2, 7, 23, '子弹', NULL, 'zǐ dàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (251, 4, 2, 7, 23, '不料', NULL, 'bú liào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (252, 4, 2, 7, 23, '规定', NULL, 'guī dìng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (253, 4, 2, 7, 23, '消灭', NULL, 'xiāo miè', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (254, 4, 2, 7, 23, '惊天动地', NULL, 'jīng tiān dòng dì', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (255, 4, 2, 7, 24, '窟窿', NULL, 'kū lóng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (256, 4, 2, 7, 24, '维持', NULL, 'wéi chí', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (257, 4, 2, 7, 24, '秩序', NULL, 'zhì xù', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (258, 4, 2, 7, 24, '混乱', NULL, 'hùn luàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (259, 4, 2, 7, 24, '行驶', NULL, 'xíng shǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (260, 4, 2, 7, 24, '凌晨', NULL, 'líng chén', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (261, 4, 2, 7, 24, '岗位', NULL, 'gǎng wèi', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (262, 4, 2, 7, 24, '调遣', NULL, 'diào qiǎn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (263, 4, 2, 7, 24, '主宰', NULL, 'zhǔ zǎi', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (264, 4, 2, 7, 24, '践行', NULL, 'jiàn xíng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (265, 4, 2, 8, 26, '劈面', NULL, 'pī miàn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (266, 4, 2, 8, 26, '妖怪', NULL, 'yāo guài', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (267, 4, 2, 8, 26, '声明', NULL, 'shēng míng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (268, 4, 2, 8, 26, '幸福', NULL, 'xìng fú', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (269, 4, 2, 8, 26, '介绍', NULL, 'jiè shào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (270, 4, 2, 8, 26, '规矩', NULL, 'guī jǔ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (271, 4, 2, 8, 26, '向日葵', NULL, 'xiàng rì kuí', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (272, 4, 2, 8, 27, '丰硕', NULL, 'fēng shuò', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (273, 4, 2, 8, 27, '柔嫩', NULL, 'róu nèn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (274, 4, 2, 8, 27, '禁止', NULL, 'jìn zhǐ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (275, 4, 2, 8, 27, '踪迹', NULL, 'zōng jì', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (276, 4, 2, 8, 27, '允许', NULL, 'yǔn xǔ', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (277, 4, 2, 8, 27, '呼啸', NULL, 'hū xiào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (278, 4, 2, 8, 27, '始终', NULL, 'shǐ zhōng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (279, 4, 2, 8, 27, '举动', NULL, 'jǔ dòng', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (280, 4, 2, 8, 27, '脸颊', NULL, 'liǎn jiá', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (281, 4, 2, 8, 27, '吼叫', NULL, 'hǒu jiào', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (282, 4, 2, 8, 27, '自私', NULL, 'zì sī', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (283, 4, 2, 8, 27, '凶狠', NULL, 'xiōng hěn', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (284, 4, 2, 8, 27, '拆除', NULL, 'chāi chú', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (760, 2, 1, 1, 1, '看见', NULL, 'kàn jiàn', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (761, 2, 1, 1, 1, '哪里', NULL, 'nǎ lǐ', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (762, 2, 1, 1, 1, '那边', NULL, 'nà biān', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (763, 2, 1, 1, 1, '眼睛', NULL, 'yǎn jīng', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (764, 2, 1, 1, 1, '雪白', NULL, 'xuě bái', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (765, 2, 1, 1, 1, '头顶', NULL, 'tóu dǐng', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (766, 2, 1, 1, 1, '肚皮', NULL, 'dù pí', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (767, 2, 1, 1, 2, '天空', NULL, 'tiān kōng', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (768, 2, 1, 1, 1, '孩子', NULL, 'hái zi', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (769, 2, 1, 1, 2, '傍晚', NULL, 'bàng wǎn', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (770, 2, 1, 1, 2, '人们', NULL, 'rén men', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (771, 2, 1, 1, 2, '冬天', NULL, 'dōng tiān', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (772, 2, 1, 1, 2, '江河', NULL, 'jiāng hé', 1, 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (773, 2, 1, 1, 2, '平常', NULL, 'píng cháng', 1, 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (774, 2, 1, 1, 2, '海洋', NULL, 'hǎi yáng', 1, 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (775, 2, 1, 1, 2, '花朵', NULL, 'huā duǒ', 1, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (776, 2, 1, 1, 2, '田地', NULL, 'tián dì', 1, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (777, 2, 1, 1, 3, '如果', NULL, 'rú guǒ', 1, 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (778, 2, 1, 1, 3, '长大', NULL, 'zhǎng dà', 1, 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (779, 2, 1, 1, 3, '四海为家', NULL, 'sì hǎi wéi jiā', 1, 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (780, 2, 1, 1, 3, '娃娃', NULL, 'wá wa', 1, 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (781, 2, 1, 1, 3, '知识', NULL, 'zhī shi', 1, 27, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (782, 2, 1, 1, 3, '那里', NULL, 'nà lǐ', 1, 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (783, 2, 1, 1, 3, '皮毛', NULL, 'pí máo', 1, 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (784, 2, 1, 1, 3, '只要', NULL, 'zhǐ yào', 1, 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (785, 2, 1, 1, 1, '石桥', NULL, 'shí qiáo', 1, 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (786, 2, 1, 1, 1, '队旗', NULL, 'duì qí', 1, 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (787, 2, 1, 1, 1, '铜号', NULL, 'tóng hào', 1, 31, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (788, 2, 1, 1, 1, '红领巾', NULL, 'hóng lǐng jīn', 1, 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (789, 2, 1, 1, 1, '欢笑', NULL, 'huān xiào', 1, 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (790, 2, 1, 1, 2, '杨树', NULL, 'yáng shù', 1, 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (791, 2, 1, 1, 2, '树叶', NULL, 'shù yè', 1, 35, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (792, 2, 1, 1, 2, '枫树', NULL, 'fēng shù', 1, 36, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (793, 2, 1, 1, 2, '松柏', NULL, 'sōng bǎi', 1, 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (794, 2, 1, 1, 2, '木棉', NULL, 'mù mián', 1, 38, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (795, 2, 1, 1, 2, '水杉', NULL, 'shuǐ shān', 1, 39, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (796, 2, 1, 1, 2, '化石', NULL, 'huà shí', 1, 40, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (797, 2, 1, 1, 2, '金桂', NULL, 'jīn guì', 1, 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (798, 2, 1, 1, 3, '写字', NULL, 'xiě zì', 1, 42, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (799, 2, 1, 1, 3, '丛林', NULL, 'cóng lín', 1, 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (800, 2, 1, 1, 3, '深处', NULL, 'shēn chù', 1, 44, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (801, 2, 1, 1, 3, '竹林', NULL, 'zhú lín', 1, 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (802, 2, 1, 1, 2, '工作', NULL, 'gōng zuò', 1, 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (803, 2, 1, 1, 3, '办法', NULL, 'bàn fǎ', 1, 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (804, 2, 1, 1, 3, '朋友', NULL, 'péng yǒu', 1, 47, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (805, 2, 1, 3, 4, '四季', NULL, 'sì jì', 1, 48, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (806, 2, 1, 3, 4, '月光', NULL, 'yuè guāng', 1, 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (807, 2, 1, 3, 4, '辛苦', NULL, 'xīn kǔ', 1, 51, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (808, 2, 1, 3, 4, '棉衣', NULL, 'mián yī', 1, 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (809, 2, 1, 1, 1, '花园', NULL, 'huā yuán', 1, 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (810, 2, 1, 3, 4, '一同', NULL, 'yì tóng', 1, 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (811, 2, 1, 3, 4, '柱子', NULL, 'zhù zi', 1, 54, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (812, 2, 1, 3, 4, '到底', NULL, 'dào dǐ', 1, 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (813, 2, 1, 3, 4, '秤杆', NULL, 'chèng gǎn', 1, 57, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (814, 2, 1, 3, 4, '力气', NULL, 'lì qi', 1, 58, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (815, 2, 1, 3, 4, '出来', NULL, 'chū lái', 1, 59, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (816, 2, 1, 1, 3, '熊猫', NULL, 'xióng māo', 1, 46, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (817, 2, 1, 3, 4, '船身', NULL, 'chuán shēn', 1, 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (818, 2, 1, 3, 4, '石头', NULL, 'shí tou', 1, 61, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (819, 2, 1, 3, 4, '地方', NULL, 'dì fāng', 1, 62, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (820, 2, 1, 3, 4, '果然', NULL, 'guǒ rán', 1, 63, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (821, 2, 1, 3, 5, '时间', NULL, 'shí jiān', 1, 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (822, 2, 1, 3, 4, '农事', NULL, 'nóng shì', 1, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (823, 2, 1, 3, 5, '报纸', NULL, 'bào zhǐ', 1, 66, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (825, 2, 1, 3, 5, '来不及', NULL, 'lái bù jí', 1, 67, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (826, 2, 1, 3, 5, '事情', NULL, 'shì qíng', 1, 68, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (827, 2, 1, 3, 5, '坏事', NULL, 'huài shì', 1, 69, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (828, 2, 1, 3, 4, '一边', NULL, 'yì biān', 1, 55, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (829, 2, 1, 3, 5, '好事', NULL, 'hǎo shì', 1, 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (830, 2, 1, 3, 6, '出国', NULL, 'chū guó', 1, 71, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (831, 2, 1, 3, 6, '今天', NULL, 'jīn tiān', 1, 72, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (832, 2, 1, 3, 6, '圆珠笔', NULL, 'yuán zhū bǐ', 1, 73, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (833, 2, 1, 3, 6, '还有', NULL, 'hái yǒu', 1, 76, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (834, 2, 1, 3, 6, '以前', NULL, 'yǐ qián', 1, 75, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (835, 2, 1, 3, 6, '开心', NULL, 'kāi xīn', 1, 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (836, 2, 1, 3, 6, '台灯', NULL, 'tái dēng', 1, 77, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (837, 2, 1, 3, 6, '电影', NULL, 'diàn yǐng', 1, 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (838, 2, 1, 3, 6, '阳光', NULL, 'yáng guāng', 1, 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (839, 2, 1, 3, 7, '故事', NULL, 'gù shì', 1, 82, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (840, 2, 1, 3, 7, '窗外', NULL, 'chuāng wài', 1, 84, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (841, 2, 1, 3, 7, '头发', NULL, 'tóu fa', 1, 83, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (842, 2, 1, 3, 5, '评奖', NULL, 'píng jiǎng', 1, 64, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (843, 2, 1, 4, 9, '黄山', NULL, 'huáng shān', 1, 85, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (844, 2, 1, 4, 9, '南部', NULL, 'nán bù', 1, 86, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (845, 2, 1, 4, 9, '一动不动', NULL, 'yí dòng bu dòng', 1, 89, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (846, 2, 1, 3, 6, '这时', NULL, 'zhè shí', 1, 78, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (847, 2, 1, 3, 7, '明亮', NULL, 'míng liàng', 1, 81, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (848, 2, 1, 4, 9, '前方', NULL, 'qián fāng', 1, 92, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (849, 2, 1, 4, 9, '那些', NULL, 'nà xiē', 1, 87, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (850, 2, 1, 4, 9, '山顶', NULL, 'shān dǐng', 1, 88, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (851, 2, 1, 4, 9, '每当', NULL, 'měi dāng', 1, 93, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (852, 2, 1, 4, 9, '金光闪闪', NULL, 'jīn guāng shǎn shǎn', 1, 94, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (853, 2, 1, 4, 9, '它们', NULL, 'tā men', 1, 95, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (854, 2, 1, 4, 10, '群山', NULL, 'qún shān', 1, 96, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (855, 2, 1, 4, 10, '树木', NULL, 'shù mù', 1, 97, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (856, 2, 1, 4, 9, '云海', NULL, 'yún hǎi', 1, 90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (857, 2, 1, 4, 9, '巨石', NULL, 'jù shí', 1, 91, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (858, 2, 1, 4, 10, '展现', NULL, 'zhǎn xiàn', 1, 103, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (859, 2, 1, 4, 10, '风光', NULL, 'fēng guāng', 1, 104, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (860, 2, 1, 4, 11, '水果', NULL, 'shuǐ guǒ', 1, 105, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (861, 2, 1, 4, 11, '月份', NULL, 'yuè fèn', 1, 106, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (862, 2, 1, 4, 10, '名胜古迹', NULL, 'míng shèng gǔ jì', 1, 98, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (863, 2, 1, 4, 10, '中央', NULL, 'zhōng yāng', 1, 99, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (864, 2, 1, 4, 11, '山坡', NULL, 'shān pō', 1, 107, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (865, 2, 1, 4, 10, '美丽', NULL, 'měi lì', 1, 100, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (866, 2, 1, 4, 11, '枝叶', NULL, 'zhī yè', 1, 108, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (867, 2, 1, 4, 10, '灯光', NULL, 'dēng guāng', 1, 101, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (868, 2, 1, 4, 11, '展开', NULL, 'zhǎn kāi', 1, 109, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (869, 2, 1, 4, 11, '五光十色', NULL, 'wǔ guāng shí sè', 1, 110, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (870, 2, 1, 4, 11, '好客', NULL, 'hào kè', 1, 111, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (871, 2, 1, 4, 10, '中午', NULL, 'zhōng wǔ', 1, 102, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (872, 2, 1, 4, 11, '城市', NULL, 'chéng shì', 1, 113, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (873, 2, 1, 4, 11, '空气', NULL, 'kōng qì', 1, 115, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (874, 2, 1, 4, 11, '水分', NULL, 'shuǐ fèn', 1, 116, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (875, 2, 1, 5, 12, '坐井观天', NULL, 'zuò jǐng guān tiān', 1, 117, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (876, 2, 1, 5, 12, '井沿', NULL, 'jǐng yán', 1, 118, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (877, 2, 1, 5, 12, '回答', NULL, 'huí dá', 1, 119, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (878, 2, 1, 5, 12, '口渴', NULL, 'kǒu kě', 1, 120, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (879, 2, 1, 5, 12, '井口', NULL, 'jǐng kǒu', 1, 122, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (880, 2, 1, 5, 12, '无边无际', NULL, 'wú biān wú jì', 1, 123, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (881, 2, 1, 5, 13, '山脚', NULL, 'shān jiǎo', 1, 124, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (882, 2, 1, 5, 12, '大话', NULL, 'dà huà', 1, 121, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (883, 2, 1, 5, 13, '枯草', NULL, 'kū cǎo', 1, 128, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (884, 2, 1, 4, 11, '老乡', NULL, 'lǎo xiāng', 1, 112, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (885, 2, 1, 5, 13, '正好', NULL, 'zhèng hǎo', 1, 129, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (886, 2, 1, 5, 13, '清早', NULL, 'qīng zǎo', 1, 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (887, 2, 1, 5, 13, '现在', NULL, 'xiàn zài', 1, 131, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (888, 2, 1, 5, 13, '当作', NULL, 'dàng zuò', 1, 125, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (889, 2, 1, 5, 13, '前面', NULL, 'qián miàn', 1, 126, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (890, 2, 1, 5, 13, '晴朗', NULL, 'qíng lǎng', 1, 127, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (891, 2, 1, 5, 13, '大雪纷飞', NULL, 'dà xuě fēn fēi', 1, 133, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (892, 2, 1, 5, 14, '从前', NULL, 'cóng qián', 1, 136, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (893, 2, 1, 5, 13, '夜里', NULL, 'yè lǐ', 1, 135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (894, 2, 1, 5, 14, '细长', NULL, 'xì cháng', 1, 137, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (895, 2, 1, 5, 14, '可爱', NULL, 'kě ài', 1, 138, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (896, 2, 1, 5, 14, '每天', NULL, 'měi tiān', 1, 139, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (897, 2, 1, 5, 14, '自言自语', NULL, 'zì yán zì yǔ', 1, 140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (898, 2, 1, 5, 14, '南瓜', NULL, 'nán guā', 1, 141, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (899, 2, 1, 5, 13, '枝头', NULL, 'zhī tóu', 1, 134, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (900, 2, 1, 4, 11, '利用', NULL, 'lì yòng', 1, 114, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (901, 2, 1, 5, 14, '奇怪', NULL, 'qí guài', 1, 143, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (902, 2, 1, 6, 15, '经常', NULL, 'jīng cháng', 1, 145, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (903, 2, 1, 6, 15, '灾难', NULL, 'zāi nàn', 1, 147, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (904, 2, 1, 6, 15, '知道', NULL, 'zhī dào', 1, 148, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (905, 2, 1, 6, 15, '百姓', NULL, 'bǎi xìng', 1, 146, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (906, 2, 1, 6, 15, '可是', NULL, 'kě shì', 1, 150, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (907, 2, 1, 6, 15, '认为', NULL, 'rèn wéi', 1, 151, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (908, 2, 1, 6, 15, '农业', NULL, 'nóng yè', 1, 153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (909, 2, 1, 6, 15, '生产', NULL, 'shēng chǎn', 1, 154, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (910, 2, 1, 5, 13, '将来', NULL, 'jiāng lái', 1, 132, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (911, 2, 1, 6, 15, '家乡', NULL, 'jiā xiāng', 1, 149, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (912, 2, 1, 6, 16, '同志', NULL, 'tóng zhì', 1, 156, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (913, 2, 1, 6, 16, '带领', NULL, 'dài lǐng', 1, 157, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (914, 2, 1, 6, 16, '队伍', NULL, 'duì wu', 1, 158, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (915, 2, 1, 6, 16, '会师', NULL, 'huì shī', 1, 159, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (916, 2, 1, 6, 16, '红军', NULL, 'hóng jūn', 1, 160, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (917, 2, 1, 5, 14, '邻居', NULL, 'lín jū', 1, 142, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (918, 2, 1, 6, 16, '战士', NULL, 'zhàn shì', 1, 162, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (919, 2, 1, 6, 16, '扁担', NULL, 'biǎn dàn', 1, 155, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (920, 2, 1, 6, 15, '洪水', NULL, 'hóng shuǐ', 1, 144, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (921, 2, 1, 6, 16, '白天', NULL, 'bái tiān', 1, 163, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (922, 2, 1, 6, 16, '起来', NULL, 'qǐ lái', 1, 164, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (923, 2, 1, 6, 17, '泼水节', NULL, 'pō shuǐ jié', 1, 166, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (924, 2, 1, 6, 17, '四面八方', NULL, 'sì miàn bā fāng', 1, 168, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (925, 2, 1, 6, 17, '龙船', NULL, 'lóng chuán', 1, 169, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (926, 2, 1, 6, 17, '花炮', NULL, 'huā pào', 1, 170, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (927, 2, 1, 6, 17, '欢呼', NULL, 'huān hū', 1, 171, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (928, 2, 1, 6, 17, '人群', NULL, 'rén qún', 1, 172, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (929, 2, 1, 6, 17, '欢乐', NULL, 'huān lè', 1, 173, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (930, 2, 1, 6, 16, '来回', NULL, 'lái huí', 1, 161, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (931, 2, 1, 6, 17, '柏树枝', NULL, 'bǎi shù zhī', 1, 174, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (932, 2, 1, 6, 17, '多么', NULL, 'duō me', 1, 175, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (933, 2, 1, 7, 19, '于是', NULL, 'yú shì', 1, 176, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (934, 2, 1, 7, 19, '无论', NULL, 'wú lùn', 1, 177, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (935, 2, 1, 7, 19, '船只', NULL, 'chuán zhī', 1, 178, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (936, 2, 1, 6, 17, '难忘', NULL, 'nán wàng', 1, 165, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (937, 2, 1, 7, 19, '连同', NULL, 'lián tóng', 1, 179, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (938, 2, 1, 7, 19, '岸边', NULL, 'àn biān', 1, 180, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (939, 2, 1, 7, 19, '一切', NULL, 'yí qiè', 1, 183, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (940, 2, 1, 7, 19, '不久', NULL, 'bù jiǔ', 1, 184, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (941, 2, 1, 7, 19, '散步', NULL, 'sàn bù', 1, 186, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (942, 2, 1, 7, 20, '空地', NULL, 'kòng dì', 1, 187, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (943, 2, 1, 6, 15, '采用', NULL, 'cǎi yòng', 1, 152, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (944, 2, 1, 7, 20, '唱歌', NULL, 'chàng gē', 1, 188, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (945, 2, 1, 7, 20, '回家', NULL, 'huí jiā', 1, 189, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (946, 2, 1, 7, 20, '赶快', NULL, 'gǎn kuài', 1, 190, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (947, 2, 1, 7, 20, '旁边', NULL, 'páng biān', 1, 191, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (948, 2, 1, 7, 19, '出现', NULL, 'chū xiàn', 1, 185, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (949, 2, 1, 7, 20, '连忙', NULL, 'lián máng', 1, 193, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (950, 2, 1, 7, 20, '浑身', NULL, 'hún shēn', 1, 194, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (951, 2, 1, 7, 20, '时候', NULL, 'shí hòu', 1, 195, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (952, 2, 1, 7, 20, '谢谢', NULL, 'xiè xiè', 1, 196, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (953, 2, 1, 7, 20, '水汽', NULL, 'shuǐ qì', 1, 197, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (954, 2, 1, 7, 21, '身边', NULL, 'shēn biān', 1, 199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (955, 2, 1, 7, 21, '为什么', NULL, 'wèi shén me', 1, 200, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (956, 2, 1, 7, 19, '房屋', NULL, 'fáng wū', 1, 182, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (957, 2, 1, 7, 21, '爪子', NULL, 'zhuǎ zi', 1, 201, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (958, 2, 1, 7, 21, '面前', NULL, 'miàn qián', 1, 202, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (959, 2, 1, 6, 17, '一年一度', NULL, 'yì nián yí dù', 1, 167, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (960, 2, 1, 7, 21, '神气活现', NULL, 'shén qì huó xiàn', 1, 203, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (961, 2, 1, 7, 21, '野猪', NULL, 'yě zhū', 1, 204, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (962, 2, 1, 7, 21, '往常', NULL, 'wǎng cháng', 1, 205, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (963, 2, 1, 7, 21, '身后', NULL, 'shēn hòu', 1, 206, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (964, 2, 1, 7, 21, '食物', NULL, 'shí wù', 1, 198, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (965, 2, 1, 7, 21, '信以为真', NULL, 'xìn yǐ wéi zhēn', 1, 207, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (966, 2, 1, 8, 22, '仔细', NULL, 'zǐ xì', 1, 210, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (967, 2, 1, 8, 22, '生气', NULL, 'shēng qì', 1, 211, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (968, 2, 1, 8, 22, '开始', NULL, 'kāi shǐ', 1, 208, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (969, 2, 1, 8, 22, '公平', NULL, 'gōng píng', 1, 212, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (970, 2, 1, 8, 23, '纸船', NULL, 'zhǐ chuán', 1, 213, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (971, 2, 1, 8, 23, '难过', NULL, 'nán guò', 1, 216, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (972, 2, 1, 7, 19, '同时', NULL, 'tóng shí', 1, 181, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (973, 2, 1, 8, 23, '但是', NULL, 'dàn shì', 1, 217, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (974, 2, 1, 8, 23, '屋顶', NULL, 'wū dǐng', 1, 218, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (975, 2, 1, 8, 23, '松果', NULL, 'sōng guǒ', 1, 214, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (976, 2, 1, 8, 23, '纸条', NULL, 'zhǐ tiáo', 1, 215, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (977, 2, 1, 8, 24, '风车', NULL, 'fēng chē', 1, 221, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (978, 2, 1, 8, 24, '秧苗', NULL, 'yāng miáo', 1, 223, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (979, 2, 1, 8, 24, '不住', NULL, 'bú zhù', 1, 224, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (980, 2, 1, 8, 23, '和好', NULL, 'hé hǎo', 1, 219, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (981, 2, 1, 8, 24, '点头', NULL, 'diǎn tóu', 1, 225, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (982, 2, 1, 8, 24, '田野', NULL, 'tián yě', 1, 220, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (983, 2, 1, 8, 24, '广场', NULL, 'guǎng chǎng', 1, 227, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (984, 2, 1, 8, 24, '伤心', NULL, 'shāng xīn', 1, 228, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (985, 2, 1, 8, 24, '还要', NULL, 'hái yào', 1, 230, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (987, 2, 2, 1, 2, '春天', NULL, 'chūn tiān', 1, 233, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (988, 2, 1, 8, 22, '过来', NULL, 'guò lái', 1, 209, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (989, 2, 1, 8, 24, '路边', NULL, 'lù biān', 1, 229, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (990, 2, 2, 1, 2, '野花', NULL, 'yě huā', 1, 236, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (991, 2, 2, 1, 2, '姑娘', NULL, 'gū niáng', 1, 235, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (992, 2, 2, 1, 2, '桃花', NULL, 'táo huā', 1, 238, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (993, 2, 2, 1, 2, '杏花', NULL, 'xìng huā', 1, 239, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (994, 2, 1, 8, 24, '飞快', NULL, 'fēi kuài', 1, 222, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (995, 2, 2, 1, 2, '寻找', NULL, 'xún zhǎo', 1, 234, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (996, 2, 2, 1, 3, '邮递员', NULL, 'yóu dì yuán', 1, 241, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (997, 2, 2, 1, 3, '先生', NULL, 'xiān shēng', 1, 242, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (998, 2, 2, 1, 3, '原来', NULL, 'yuán lái', 1, 243, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (999, 2, 2, 1, 3, '大叔', NULL, 'dà shū', 1, 244, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1000, 2, 2, 1, 3, '鲜花', NULL, 'xiān huā', 1, 240, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1001, 2, 2, 1, 3, '邮局', NULL, 'yóu jú', 1, 245, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1002, 2, 2, 1, 3, '东西', NULL, 'dōng xī', 1, 246, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1003, 2, 2, 1, 3, '太太', NULL, 'tài tài', 1, 247, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1004, 2, 2, 1, 3, '做客', NULL, 'zuò kè', 1, 248, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1005, 2, 2, 1, 3, '惊奇', NULL, 'jīng qí', 1, 249, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1006, 2, 2, 1, 3, '去年', NULL, 'qù nián', 1, 251, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1007, 2, 2, 1, 3, '美好', NULL, 'měi hǎo', 1, 252, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1008, 2, 2, 1, 3, '礼物', NULL, 'lǐ wù', 1, 253, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1009, 2, 2, 1, 4, '植树', NULL, 'zhí shù', 1, 255, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1010, 2, 2, 1, 4, '碧空如洗', NULL, 'bì kōng rú xǐ', 2, 256, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1011, 2, 2, 1, 3, '快活', NULL, 'kuài huó', 1, 250, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1012, 2, 2, 1, 4, '万里无云', NULL, 'wàn lǐ wú yún', 2, 257, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1013, 2, 2, 1, 4, '爷爷', NULL, 'yé ye', 1, 254, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1014, 2, 2, 1, 4, '公园', NULL, 'gōng yuán', 1, 258, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1015, 2, 2, 1, 4, '格外', NULL, 'gé wài', 1, 259, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1016, 2, 2, 1, 4, '引人注目', NULL, 'yǐn rén zhù mù', 2, 260, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1017, 2, 2, 1, 4, '休息', NULL, 'xiū xi', 1, 262, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1018, 2, 2, 1, 4, '树苗', NULL, 'shù miáo', 1, 264, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1019, 2, 2, 1, 4, '小心', NULL, 'xiǎo xīn', 1, 265, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1020, 2, 2, 1, 4, '笔直', NULL, 'bǐ zhí', 1, 266, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1021, 2, 2, 1, 4, '汗珠', NULL, 'hàn zhū', 1, 261, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1022, 2, 2, 1, 4, '柏树', NULL, 'bǎi shù', 1, 263, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1023, 2, 2, 2, 5, '昨天', NULL, 'zuó tiān', 1, 269, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1024, 2, 2, 2, 5, '迷路', NULL, 'mí lù', 1, 270, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1025, 2, 2, 2, 5, '足迹', NULL, 'zú jì', 1, 268, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1026, 2, 2, 2, 5, '爱心', NULL, 'ài xīn', 1, 272, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1027, 2, 2, 1, 2, '柳枝', NULL, 'liǔ zhī', 1, 237, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1028, 2, 2, 2, 6, '也许', NULL, 'yě xǔ', 1, 273, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1029, 2, 2, 2, 6, '桌子', NULL, 'zhuō zi', 1, 274, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1030, 2, 2, 2, 6, '难道', NULL, 'nán dào', 1, 276, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1031, 2, 2, 2, 6, '味道', NULL, 'wèi dào', 1, 277, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1032, 2, 2, 2, 5, '温暖', NULL, 'wēn nuǎn', 1, 271, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1033, 2, 2, 2, 6, '就是', NULL, 'jiù shì', 1, 278, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1034, 2, 2, 2, 5, '叔叔', NULL, 'shū shu', 1, 267, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1035, 2, 1, 7, 20, '火星', NULL, 'huǒ xīng', 1, 192, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1036, 2, 2, 2, 6, '加工', NULL, 'jiā gōng', 1, 279, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1037, 2, 2, 2, 6, '农具', NULL, 'nóng jù', 1, 281, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1038, 2, 2, 2, 6, '甜莱', NULL, 'tián lái', 1, 282, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1039, 2, 2, 2, 6, '工具', NULL, 'gōng jù', 1, 283, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1040, 2, 2, 2, 6, '劳动', NULL, 'láo dòng', 1, 284, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1041, 2, 2, 2, 6, '经过', NULL, 'jīng guò', 1, 285, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1042, 2, 2, 2, 7, '河水', NULL, 'hé shuǐ', 1, 287, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1043, 2, 2, 2, 7, '碧绿', NULL, 'bì lǜ', 1, 288, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1044, 2, 2, 2, 7, '波纹', NULL, 'bō wén', 1, 289, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1045, 2, 2, 2, 7, '河岸', NULL, 'hé àn', 1, 290, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1046, 2, 2, 2, 7, '柳叶', NULL, 'liǔ yè', 1, 291, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1047, 2, 2, 2, 7, '景色', NULL, 'jǐng sè', 1, 292, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1048, 2, 2, 2, 7, '出色', NULL, 'chū sè', 1, 286, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1049, 2, 2, 2, 7, '恋恋不舍', NULL, 'liàn liàn bù shě', 2, 293, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1050, 2, 2, 2, 7, '枝条', NULL, 'zhī tiáo', 1, 295, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1051, 2, 2, 1, 1, '神州', NULL, 'shén zhōu', 1, 296, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1052, 2, 2, 1, 1, '山川', NULL, 'shān chuān', 1, 298, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1053, 2, 2, 2, 6, '种子', NULL, 'zhǒng zi', 1, 280, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1054, 2, 2, 1, 1, '中华', NULL, 'zhōng huá', 1, 297, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1055, 2, 2, 1, 1, '长城', NULL, 'cháng chéng', 1, 301, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1056, 2, 2, 2, 7, '柳树', NULL, 'liǔ shù', 1, 294, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1057, 2, 2, 1, 1, '海峡', NULL, 'hǎi xiá', 1, 303, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1058, 2, 2, 1, 1, '民族', NULL, 'mín zú', 1, 304, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1059, 2, 2, 1, 1, '奋发', NULL, 'fèn fā', 1, 305, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1060, 2, 2, 1, 2, '节日', NULL, 'jié rì', 1, 306, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1061, 2, 2, 1, 1, '台湾岛', NULL, 'tái wān dǎo', 1, 302, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1062, 2, 2, 1, 2, '春节', NULL, 'chūn jié', 1, 307, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1063, 2, 2, 1, 2, '清明节', NULL, 'qīng míng jié', 1, 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1064, 2, 2, 1, 1, '黄河', NULL, 'huáng hé', 1, 299, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1065, 2, 2, 1, 2, '先人', NULL, 'xiān rén', 1, 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1066, 2, 2, 1, 2, '龙舟', NULL, 'lóng zhōu', 1, 311, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1067, 2, 2, 1, 2, '中秋', NULL, 'zhōng qiū', 1, 312, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1068, 2, 1, 8, 24, '急忙', NULL, 'jí máng', 1, 226, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1069, 2, 2, 1, 2, '圆月', NULL, 'yuán yuè', 1, 313, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1070, 2, 2, 1, 2, '全家', NULL, 'quán jiā', 1, 315, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1071, 2, 2, 1, 1, '长江', NULL, 'cháng jiāng', 1, 300, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1072, 2, 2, 1, 2, '热闹', NULL, 'rè nào', 1, 317, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1073, 2, 2, 1, 2, '花灯', NULL, 'huā dēng', 1, 308, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1074, 2, 2, 1, 3, '贝壳', NULL, 'bèi ké', 1, 319, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1075, 2, 2, 1, 3, '甲骨文', NULL, 'jiǎ gǔ wén', 1, 320, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1076, 2, 2, 1, 3, '张开', NULL, 'zhāng kāi', 1, 321, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1077, 2, 2, 1, 3, '可以', NULL, 'kě yǐ', 1, 323, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1078, 2, 2, 1, 3, '钱币', NULL, 'qián bì', 1, 324, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1079, 2, 2, 1, 3, '钱财', NULL, 'qián cái', 1, 325, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1080, 2, 2, 1, 2, '转眼', NULL, 'zhuǎn yǎn', 1, 314, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1081, 2, 2, 1, 4, '美食', NULL, 'měi shí', 1, 327, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1082, 2, 2, 1, 3, '动物', NULL, 'dòng wù', 1, 318, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1083, 2, 2, 1, 3, '样子', NULL, 'yàng zi', 1, 322, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1084, 2, 2, 1, 4, '茄子', NULL, 'qié zi', 1, 329, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1085, 2, 2, 1, 3, '有关', NULL, 'yǒu guān', 1, 326, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1086, 2, 2, 1, 4, '蛋炒饭', NULL, 'dàn chǎo fàn', 1, 332, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1087, 2, 2, 1, 4, '红烧', NULL, 'hóng shāo', 1, 328, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1088, 2, 2, 4, 8, '彩色', NULL, 'cǎi sè', 1, 334, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1089, 2, 2, 1, 4, '烤鸭', NULL, 'kǎo yā', 1, 330, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1090, 2, 2, 4, 8, '森林', NULL, 'sēn lín', 1, 336, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1091, 2, 2, 1, 4, '羊肉', NULL, 'yáng ròu', 1, 331, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1092, 2, 2, 1, 2, '团圆', NULL, 'tuán yuán', 1, 316, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1094, 2, 2, 4, 8, '苹果', NULL, 'píng guǒ', 1, 339, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1095, 2, 2, 4, 8, '脚尖', NULL, 'jiǎo jiān', 1, 335, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1096, 2, 2, 4, 8, '季节', NULL, 'jì jié', 1, 341, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1097, 2, 2, 4, 9, '说话', NULL, 'shuō huà', 1, 343, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1098, 2, 2, 4, 9, '好像', NULL, 'hǎo xiàng', 1, 342, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1099, 2, 2, 4, 9, '童话', NULL, 'tóng huà', 1, 344, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1100, 2, 2, 4, 8, '雪松', NULL, 'xuě sōng', 1, 337, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1101, 2, 2, 4, 9, '对岸', NULL, 'duì àn', 1, 346, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1102, 2, 2, 4, 8, '精灵', NULL, 'jīng líng', 1, 340, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1103, 2, 2, 4, 9, '阿姨', NULL, 'ā yí', 1, 345, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1104, 2, 2, 4, 9, '发明', NULL, 'fā míng', 1, 349, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1105, 2, 2, 4, 10, '周围', NULL, 'zhōu wéi', 1, 351, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1106, 2, 2, 4, 8, '歌声', NULL, 'gē shēng', 1, 338, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1107, 2, 2, 4, 10, '补充', NULL, 'bǔ chōng', 1, 352, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1108, 2, 2, 4, 9, '字母', NULL, 'zì mǔ', 1, 350, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1109, 2, 2, 4, 10, '勇士', NULL, 'yǒng shì', 1, 354, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1110, 2, 2, 4, 10, '飞机', NULL, 'fēi jī', 1, 355, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1111, 2, 2, 4, 10, '地道', NULL, 'dì dào', 1, 356, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1112, 2, 2, 4, 10, '火药', NULL, 'huǒ yào', 1, 357, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1113, 2, 2, 4, 10, '公主', NULL, 'gōng zhǔ', 1, 353, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1114, 2, 2, 4, 10, '胜利', NULL, 'shèng lì', 1, 358, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1115, 2, 2, 4, 9, '弟弟', NULL, 'dì di', 1, 347, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1116, 2, 2, 4, 10, '叫喊', NULL, 'jiào hǎn', 1, 359, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1117, 2, 2, 4, 10, '忘记', NULL, 'wàng jì', 1, 360, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1118, 2, 2, 4, 11, '苍耳', NULL, 'cāng ěr', 1, 362, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1119, 2, 2, 4, 11, '屁股', NULL, 'pì gǔ', 1, 361, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1120, 2, 2, 4, 11, '干净', NULL, 'gān jìng', 1, 364, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1121, 2, 2, 4, 9, '游戏', NULL, 'yóu xì', 1, 348, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1122, 2, 2, 4, 11, '比如', NULL, 'bǐ rú', 1, 367, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1123, 2, 2, 4, 11, '使劲', NULL, 'shǐ jìn', 1, 368, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1124, 2, 2, 4, 11, '幸运', NULL, 'xìng yùn', 1, 366, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1125, 2, 2, 5, 12, '劝告', NULL, 'quàn gào', 1, 370, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1126, 2, 2, 5, 12, '筋疲力尽', NULL, 'jīn pí lì jìn', 2, 371, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1127, 2, 2, 5, 13, '图画', NULL, 'tú huà', 1, 373, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1128, 2, 2, 5, 12, '明白', NULL, 'míng bái', 1, 372, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1129, 2, 2, 4, 11, '留神', NULL, 'liú shén', 1, 363, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1130, 2, 2, 5, 13, '老师', NULL, 'lǎo shī', 1, 374, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1131, 2, 2, 5, 13, '座位', NULL, 'zuò wèi', 1, 376, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1132, 2, 2, 4, 11, '从来', NULL, 'cóng lái', 1, 365, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1133, 2, 2, 5, 13, '哈哈大笑', NULL, 'hā hā dà xiào', 2, 377, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1134, 2, 2, 5, 13, '神情', NULL, 'shén qíng', 1, 380, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1135, 2, 2, 5, 12, '亡羊补牢', NULL, 'wáng yáng bǔ láo', 2, 369, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1136, 2, 2, 5, 13, '发现', NULL, 'fā xiàn', 1, 381, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1137, 2, 2, 5, 13, '角度', NULL, 'jiǎo dù', 1, 382, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1138, 2, 2, 5, 14, '愿意', NULL, 'yuàn yì', 1, 383, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1139, 2, 2, 5, 14, '麦子', NULL, 'mài zi', 1, 384, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1140, 2, 2, 5, 14, '为难', NULL, 'wéi nán', 1, 385, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1141, 2, 2, 5, 14, '立刻', NULL, 'lì kè', 1, 387, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1142, 2, 2, 5, 13, '讲桌', NULL, 'jiǎng zhuō', 1, 375, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1143, 2, 2, 5, 13, '然后', NULL, 'rán hòu', 1, 379, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1144, 2, 2, 5, 13, '五角星', NULL, 'wǔ jiǎo xīng', 1, 378, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1145, 2, 2, 5, 14, '认真', NULL, 'rèn zhēn', 1, 390, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1146, 2, 2, 5, 14, '脚步', NULL, 'jiǎo bù', 1, 391, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1147, 2, 2, 5, 14, '难为情', NULL, 'nán wéi qíng', 1, 392, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1148, 2, 2, 5, 14, '突然', NULL, 'tū rán', 1, 388, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1149, 2, 2, 6, 16, '乌云', NULL, 'wū yún', 1, 394, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1150, 2, 2, 5, 14, '吃惊', NULL, 'chī jīng', 1, 389, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1151, 2, 2, 6, 16, '雷声', NULL, 'léi shēng', 1, 396, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1152, 2, 2, 6, 16, '房子', NULL, 'fáng zi', 1, 397, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1153, 2, 2, 6, 16, '窗户', NULL, 'chuāng hù', 1, 398, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1154, 2, 2, 6, 16, '雷雨', NULL, 'léi yǔ', 1, 393, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1155, 2, 2, 6, 16, '清新', NULL, 'qīng xīn', 1, 399, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1156, 2, 2, 6, 17, '野外', NULL, 'yě wài', 1, 400, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1157, 2, 2, 6, 17, '大自然', NULL, 'dà zì rán', 1, 401, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1158, 2, 2, 6, 16, '闪电', NULL, 'shǎn diàn', 1, 395, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1159, 2, 2, 6, 17, '天然', NULL, 'tiān rán', 1, 402, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1160, 2, 2, 6, 17, '指南针', NULL, 'zhǐ nán zhēn', 1, 403, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1161, 2, 2, 6, 17, '向导', NULL, 'xiàng dǎo', 1, 405, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1162, 2, 2, 6, 17, '指点', NULL, 'zhǐ diǎn', 1, 406, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1163, 2, 2, 6, 17, '北极星', NULL, 'běi jí xīng', 1, 408, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1164, 2, 2, 6, 17, '帮助', NULL, 'bāng zhù', 1, 404, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1165, 2, 2, 6, 17, '黑夜', NULL, 'hēi yè', 1, 411, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1166, 2, 2, 6, 17, '永远', NULL, 'yǒng yuǎn', 1, 410, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1167, 2, 2, 6, 17, '南方特别', NULL, 'nán fāng tè bié', 2, 413, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1168, 2, 2, 6, 17, '积雪', NULL, 'jī xuě', 1, 414, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1169, 2, 2, 6, 18, '太空', NULL, 'tài kōng', 1, 415, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1170, 2, 2, 6, 18, '宇宙飞船', NULL, 'yǔ zhòu fēi chuán', 2, 417, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1171, 2, 2, 6, 18, '别处', NULL, 'bié chù', 1, 418, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1172, 2, 2, 6, 18, '喝水', NULL, 'hē shuǐ', 1, 419, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1173, 2, 2, 6, 18, '杯子', NULL, 'bēi zi', 1, 420, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1174, 2, 2, 6, 18, '生活', NULL, 'shēng huó', 1, 416, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1175, 2, 2, 6, 17, '北方', NULL, 'běi fāng', 1, 407, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1176, 2, 2, 6, 18, '使用', NULL, 'shǐ yòng', 1, 422, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1177, 2, 2, 6, 18, '失去', NULL, 'shī qù', 1, 421, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1178, 2, 2, 6, 17, '路灯', NULL, 'lù dēng', 1, 409, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1179, 2, 2, 6, 18, '容易', NULL, 'róng yì', 1, 425, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1180, 2, 2, 6, 18, '半空', NULL, 'bàn kōng', 1, 423, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1181, 2, 2, 6, 18, '地板', NULL, 'dì bǎn', 1, 424, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1182, 2, 2, 6, 18, '浴室', NULL, 'yù shì', 1, 426, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1183, 2, 2, 5, 14, '四周', NULL, 'sì zhōu', 1, 386, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1184, 2, 2, 6, 18, '方向', NULL, 'fāng xiàng', 1, 427, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1185, 2, 2, 7, 19, '耳朵', NULL, 'ěr duo', 1, 428, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1186, 2, 2, 7, 19, '遇到', NULL, 'yù dào', 1, 430, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1187, 2, 2, 7, 19, '兔子', NULL, 'tù zi', 1, 431, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1188, 2, 2, 7, 19, '头痛', NULL, 'tóu tòng', 1, 435, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1189, 2, 2, 7, 19, '扇子', NULL, 'shàn zi', 1, 429, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1190, 2, 2, 7, 19, '不安', NULL, 'bù ān', 1, 433, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1191, 2, 2, 7, 20, '飞虫', NULL, 'fēi chóng', 1, 438, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1192, 2, 2, 7, 19, '人家', NULL, 'rén jiā', 1, 437, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1193, 2, 2, 7, 20, '决定', NULL, 'jué dìng', 1, 439, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1194, 2, 2, 7, 19, '最后', NULL, 'zuì hòu', 1, 436, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1195, 2, 2, 7, 20, '木屋', NULL, 'mù wū', 1, 441, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1196, 2, 2, 7, 20, '终于', NULL, 'zhōng yú', 1, 443, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1197, 2, 2, 7, 19, '后来', NULL, 'hòu lái', 1, 432, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1198, 2, 2, 7, 20, '工夫', NULL, 'gōng fū', 1, 442, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1199, 2, 2, 7, 21, '青蛙', NULL, 'qīng wā', 1, 446, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1200, 2, 2, 7, 20, '星期', NULL, 'xīng qī', 1, 445, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1201, 2, 2, 6, 17, '帮忙', NULL, 'bāng máng', 1, 412, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1202, 2, 2, 7, 21, '草籽', NULL, 'cǎo zǐ', 1, 447, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1203, 2, 2, 7, 21, '野鸭', NULL, 'yě yā', 1, 448, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1204, 2, 2, 7, 21, '泉水', NULL, 'quán shuǐ', 1, 449, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1205, 2, 2, 7, 21, '竹子', NULL, 'zhú zi', 1, 450, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1206, 2, 2, 7, 21, '应该', NULL, 'yīng gāi', 1, 451, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1207, 2, 2, 7, 21, '花丛', NULL, 'huā cóng', 1, 452, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1208, 2, 2, 7, 21, '尽情', NULL, 'jìn qíng', 1, 453, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1209, 2, 2, 7, 20, '商店', NULL, 'shāng diàn', 1, 440, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1210, 2, 2, 7, 21, '道路', NULL, 'dào lù', 1, 454, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1211, 2, 2, 7, 22, '毛虫', NULL, 'máo chóng', 1, 455, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1212, 2, 2, 7, 22, '叶子', NULL, 'yè zi', 1, 456, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1213, 2, 2, 7, 22, '纺织', NULL, 'fǎng zhī', 1, 459, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1214, 2, 2, 7, 22, '周游', NULL, 'zhōu yóu', 1, 458, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1215, 2, 2, 7, 22, '编织', NULL, 'biān zhī', 1, 460, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1216, 2, 2, 7, 22, '声音', NULL, 'shēng yīn', 1, 462, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1217, 2, 2, 7, 22, '花纹', NULL, 'huā wén', 1, 463, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1218, 2, 2, 7, 22, '消失', NULL, 'xiāo shī', 1, 464, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1219, 2, 2, 7, 20, '围巾', NULL, 'wéi jīn', 1, 444, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1220, 2, 2, 8, 23, '祖先', NULL, 'zǔ xiān', 1, 465, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1221, 2, 2, 8, 23, '原始', NULL, 'yuán shǐ', 1, 466, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1222, 2, 2, 8, 23, '一望无边', NULL, 'yí wàng wú biān', 2, 469, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1223, 2, 2, 7, 22, '怎样', NULL, 'zěn yàng', 1, 461, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1224, 2, 2, 8, 23, '野果', NULL, 'yě guǒ', 1, 471, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1225, 2, 2, 8, 23, '意思', NULL, 'yì sī', 1, 467, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1226, 2, 2, 8, 23, '赛跑', NULL, 'sài pǎo', 1, 473, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1227, 2, 2, 8, 23, '野兔', NULL, 'yě tù', 1, 472, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1228, 2, 2, 8, 23, '回忆', NULL, 'huí yì', 1, 474, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1229, 2, 2, 8, 24, '学习', NULL, 'xué xí', 1, 476, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1230, 2, 2, 7, 22, '目光', NULL, 'mù guāng', 1, 457, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1231, 2, 2, 8, 24, '成功', NULL, 'chéng gōng', 1, 477, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1232, 2, 2, 8, 24, '月亮', NULL, 'yuè liàng', 1, 478, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1233, 2, 2, 8, 23, '蓝天', NULL, 'lán tiān', 1, 470, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1234, 2, 2, 8, 24, '一直', NULL, 'yì zhí', 1, 480, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1235, 2, 2, 8, 24, '只好', NULL, 'zhǐ hǎo', 1, 481, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1236, 2, 2, 8, 23, '浓绿', NULL, 'nóng lǜ', 1, 468, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1237, 2, 2, 8, 24, '变化', NULL, 'biàn huà', 1, 483, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1238, 2, 2, 8, 24, '主意', NULL, 'zhǔ yì', 1, 479, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1239, 2, 2, 8, 24, '自由', NULL, 'zì yóu', 1, 486, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1240, 2, 2, 8, 24, '反反复复', NULL, 'fǎn fǎn fù fù', 2, 482, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1241, 2, 2, 8, 24, '生长', NULL, 'shēng zhǎng', 1, 487, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1242, 2, 2, 8, 24, '泥土', NULL, 'ní tǔ', 1, 488, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1243, 2, 2, 8, 24, '相当', NULL, 'xiāng dāng', 1, 489, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1244, 2, 2, 8, 24, '简单', NULL, 'jiǎn dān', 1, 485, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1245, 2, 2, 8, 24, '世界', NULL, 'shì jiè', 1, 475, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1246, 2, 2, 8, 24, '最好', NULL, 'zuì hǎo', 1, 490, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1247, 2, 2, 8, 25, '觉得', NULL, 'jué de', 1, 495, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1248, 2, 2, 8, 25, '值日', NULL, 'zhí rì', 1, 496, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1249, 2, 2, 8, 25, '火球', NULL, 'huǒ qiú', 1, 497, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1250, 2, 2, 8, 25, '沙石', NULL, 'shā shí', 1, 498, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1251, 2, 2, 8, 25, '人类', NULL, 'rén lèi', 1, 499, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1252, 2, 2, 8, 25, '决心', NULL, 'jué xīn', 1, 501, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1253, 2, 2, 8, 25, '害怕', NULL, 'hài pà', 1, 504, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1254, 2, 2, 8, 25, '炎热', NULL, 'yán rè', 1, 503, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1255, 2, 2, 8, 24, '结局', NULL, 'jié jú', 1, 491, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1256, 2, 2, 8, 24, '开头', NULL, 'kāi tóu', 1, 492, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1257, 2, 2, 8, 25, '花草树木', NULL, 'huā cǎo shù mù', 2, 507, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1258, 2, 2, 8, 25, '生机', NULL, 'shēng jī', 1, 508, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1259, 3, 1, 1, 1, '早晨', NULL, 'zǎo chén', 1, 509, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1260, 3, 1, 1, 1, '穿戴', NULL, 'chuān dài', 1, 510, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1261, 3, 1, 1, 1, '鲜艳', NULL, 'xiān yàn', 1, 511, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1262, 3, 1, 1, 1, '打扮', NULL, 'dǎ bàn', 1, 513, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1263, 3, 1, 1, 1, '服装', NULL, 'fú zhuāng', 1, 512, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1264, 3, 1, 1, 1, '敬爱', NULL, 'jìng ài', 1, 514, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1265, 2, 2, 8, 25, '苦海', NULL, 'kǔ hǎi', 1, 502, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1266, 3, 1, 1, 1, '教室', NULL, 'jiào shì', 1, 517, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1267, 2, 2, 8, 25, '西方', NULL, 'xī fāng', 1, 506, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1268, 2, 2, 8, 25, '光明', NULL, 'guāng míng', 1, 494, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1269, 3, 1, 1, 1, '安静', NULL, 'ān jìng', 1, 519, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1270, 3, 1, 1, 1, '朗读', NULL, 'lǎng dú', 1, 518, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1271, 2, 2, 8, 25, '东边', NULL, 'dōng biān', 1, 493, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1272, 3, 1, 1, 1, '粗壮', NULL, 'cū zhuàng', 1, 523, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1273, 3, 1, 1, 1, '好奇', NULL, 'hào qí', 1, 521, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1274, 2, 2, 8, 25, '从此', NULL, 'cóng cǐ', 1, 505, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1275, 3, 1, 1, 1, '敬礼', NULL, 'jìng lǐ', 1, 516, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1276, 3, 1, 1, 2, '阵雨', NULL, 'zhèn yǔ', 1, 526, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1277, 3, 1, 1, 2, '荒野', NULL, 'huāng yě', 1, 527, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1278, 3, 1, 1, 2, '跳舞', NULL, 'tiào wǔ', 1, 528, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1279, 3, 1, 1, 1, '招引', NULL, 'zhāo yǐn', 1, 522, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1280, 3, 1, 1, 2, '狂欢', NULL, 'kuáng huān', 1, 529, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1281, 3, 1, 1, 1, '枝干', NULL, 'zhī gàn', 1, 524, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1282, 3, 1, 1, 2, '放假', NULL, 'fàng jià', 1, 531, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1283, 3, 1, 1, 2, '狂风', NULL, 'kuáng fēng', 1, 533, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1284, 3, 1, 1, 2, '急急忙忙', NULL, 'jí jí máng máng', 2, 534, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1285, 3, 1, 1, 1, '影子', NULL, 'yǐng zi', 1, 525, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1286, 2, 2, 7, 19, '毛病', NULL, 'máo bìng', 1, 434, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1287, 3, 1, 1, 2, '能够', NULL, 'néng gòu', 1, 536, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1288, 3, 1, 1, 1, '树枝', NULL, 'shù zhī', 1, 520, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1289, 3, 1, 2, 5, '水泥', NULL, 'shuǐ ní', 1, 538, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1290, 3, 1, 2, 5, '放晴', NULL, 'fàng qíng', 1, 539, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1291, 3, 1, 2, 5, '明朗', NULL, 'míng lǎng', 1, 540, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1292, 3, 1, 2, 5, '亮晶晶', NULL, 'liàng jīng jīng', 1, 541, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1293, 3, 1, 2, 5, '雨珠', NULL, 'yǔ zhū', 1, 543, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1294, 3, 1, 1, 2, '互相', NULL, 'hù xiāng', 1, 532, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1295, 3, 1, 1, 2, '功课', NULL, 'gōng kè', 1, 530, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1296, 3, 1, 2, 5, '落叶', NULL, 'luò yè', 1, 544, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1297, 3, 1, 2, 5, '闪闪发光', NULL, 'shǎn shǎn fā guāng', 2, 545, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1298, 3, 1, 2, 5, '尽头', NULL, 'jìn tóu', 1, 546, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1299, 3, 1, 2, 5, '金黄', NULL, 'jīn huáng', 1, 542, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1300, 3, 1, 2, 5, '规则', NULL, 'guī zé', 1, 549, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1301, 3, 1, 2, 5, '歌唱', NULL, 'gē chàng', 1, 550, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1302, 3, 1, 2, 5, '迟到', NULL, 'chí dào', 1, 551, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1303, 3, 1, 2, 6, '清凉', NULL, 'qīng liáng', 1, 552, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1304, 3, 1, 2, 6, '留意', NULL, 'liú yì', 1, 553, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1305, 3, 1, 2, 6, '颜料', NULL, 'yán liào', 1, 554, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1306, 3, 1, 2, 6, '枫叶', NULL, 'fēng yè', 1, 555, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1307, 2, 2, 8, 24, '方式', NULL, 'fāng shì', 1, 484, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1308, 3, 1, 2, 6, '果树', NULL, 'guǒ shù', 1, 557, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1309, 3, 1, 2, 5, '排列', NULL, 'pái liè', 1, 548, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1310, 3, 1, 2, 6, '菊花', NULL, 'jú huā', 1, 558, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1311, 3, 1, 2, 6, '气味', NULL, 'qì wèi', 1, 560, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1312, 3, 1, 1, 2, '自然', NULL, 'zì rán', 1, 535, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1313, 3, 1, 1, 2, '双臂', NULL, 'shuāng bì', 1, 537, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1314, 3, 1, 1, 1, '国旗', NULL, 'guó qí', 1, 515, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1315, 3, 1, 2, 6, '过冬', NULL, 'guò dōng', 1, 563, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1316, 3, 1, 2, 6, '香甜', NULL, 'xiāng tián', 1, 561, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1317, 3, 1, 2, 6, '丰收', NULL, 'fēng shōu', 1, 564, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1318, 3, 1, 3, 8, '火柴', NULL, 'huǒ chái', 1, 565, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1319, 3, 1, 3, 8, '可怜', NULL, 'kě lián', 1, 567, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1320, 3, 1, 2, 6, '仙子', NULL, 'xiān zǐ', 1, 559, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1321, 3, 1, 2, 6, '香味', NULL, 'xiāng wèi', 1, 562, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1322, 3, 1, 3, 8, '几乎', NULL, 'jī hū', 1, 568, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1323, 3, 1, 2, 6, '邮票', NULL, 'yóu piào', 1, 556, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1324, 3, 1, 3, 8, '哪怕', NULL, 'nǎ pà', 1, 569, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1325, 3, 1, 3, 8, '暖和', NULL, 'nuǎn huo', 1, 570, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1326, 3, 1, 2, 5, '平展', NULL, 'píng zhǎn', 1, 547, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1327, 3, 1, 3, 8, '火焰', NULL, 'huǒ yàn', 1, 571, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1328, 3, 1, 3, 8, '烛光', NULL, 'zhú guāng', 1, 574, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1329, 3, 1, 3, 8, '亮光', NULL, 'liàng guāng', 1, 573, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1330, 3, 1, 3, 8, '温和', NULL, 'wēn hé', 1, 577, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1331, 3, 1, 3, 8, '赶紧', NULL, 'gǎn jǐn', 1, 578, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1332, 3, 1, 3, 8, '蜡烛', NULL, 'là zhú', 1, 572, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1333, 3, 1, 3, 8, '痛苦', NULL, 'tòng kǔ', 1, 580, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1334, 3, 1, 3, 8, '清晨', NULL, 'qīng chén', 1, 581, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1335, 3, 1, 3, 8, '告诉', NULL, 'gào sù', 1, 575, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1336, 3, 1, 3, 10, '要好', NULL, 'yào hǎo', 1, 583, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1337, 3, 1, 3, 10, '旅行', NULL, 'lǚ xíng', 1, 582, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1338, 3, 1, 3, 10, '作声', NULL, 'zuò shēng', 1, 586, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1339, 3, 1, 3, 10, '咱们', NULL, 'zán men', 1, 584, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1340, 3, 1, 3, 10, '答应', NULL, 'dā ying', 1, 587, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1341, 3, 1, 3, 10, '草堆', NULL, 'cǎo duī', 1, 585, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1342, 3, 1, 3, 8, '离去', NULL, 'lí qù', 1, 576, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1343, 3, 1, 3, 10, '做梦', NULL, 'zuò mèng', 1, 588, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1344, 3, 1, 3, 10, '救命', NULL, 'jiù mìng', 1, 590, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1345, 3, 1, 3, 10, '拼命', NULL, 'pīn mìng', 1, 591, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1346, 2, 2, 8, 25, '艰难', NULL, 'jiān nán', 1, 500, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1347, 3, 1, 3, 10, '消化', NULL, 'xiāo huà', 1, 593, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1348, 3, 1, 3, 10, '当然', NULL, 'dāng rán', 1, 594, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1349, 3, 1, 3, 10, '光亮', NULL, 'guāng liàng', 1, 596, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1350, 3, 1, 3, 10, '来得及', NULL, 'lái de jí', 1, 589, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1351, 3, 1, 4, 12, '变成', NULL, 'biàn chéng', 1, 598, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1352, 3, 1, 3, 8, '围裙', NULL, 'wéi qún', 1, 566, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1353, 3, 1, 4, 12, '门板', NULL, 'mén bǎn', 1, 599, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1354, 3, 1, 4, 12, '准备', NULL, 'zhǔn bèi', 1, 600, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1355, 3, 1, 4, 12, '暴风雨', NULL, 'bào fēng yǔ', 1, 601, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1356, 3, 1, 3, 10, '刚才知觉', NULL, 'gāng cái zhī jué', 2, 595, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1357, 3, 1, 4, 12, '主人', NULL, 'zhǔ rén', 1, 603, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1358, 3, 1, 3, 10, '眼泪', NULL, 'yǎn lèi', 1, 597, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1359, 3, 1, 4, 12, '墙壁', NULL, 'qiáng bì', 1, 604, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1360, 3, 1, 3, 10, '大吃一惊', NULL, 'dà chī yì jīng', 2, 592, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1361, 3, 1, 4, 12, '母鸡', NULL, 'mǔ jī', 1, 605, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1362, 3, 1, 4, 12, '根本', NULL, 'gēn běn', 1, 607, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1363, 3, 1, 4, 12, '蜘蛛', NULL, 'zhī zhū', 1, 608, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1364, 3, 1, 4, 12, '漂亮', NULL, 'piào liang', 1, 609, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1365, 3, 1, 4, 12, '因此', NULL, 'yīn cǐ', 1, 610, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1366, 3, 1, 5, 15, '母亲', NULL, 'mǔ qīn', 1, 611, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1367, 3, 1, 5, 15, '外祖父', NULL, 'wài zǔ fù', 1, 612, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1368, 3, 1, 5, 15, '雨点', NULL, 'yǔ diǎn', 1, 613, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1369, 3, 1, 4, 12, '安心', NULL, 'ān xīn', 1, 602, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1370, 3, 1, 5, 15, '船夫', NULL, 'chuán fū', 1, 614, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1371, 3, 1, 5, 15, '用力', NULL, 'yòng lì', 1, 615, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1372, 3, 1, 5, 15, '船头', NULL, 'chuán tóu', 1, 616, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1373, 3, 1, 5, 15, '羽毛', NULL, 'yǔ máo', 1, 617, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1374, 3, 1, 5, 15, '翠鸟', NULL, 'cuì niǎo', 1, 620, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1375, 3, 1, 5, 16, '窗前', NULL, 'chuāng qián', 1, 622, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1376, 3, 1, 5, 16, '蒲公英', NULL, 'pú gōng yīng', 1, 623, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1377, 3, 1, 5, 15, '翠绿', NULL, 'cuì lǜ', 1, 618, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1378, 3, 1, 5, 16, '盛开', NULL, 'shèng kāi', 1, 624, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1379, 3, 1, 5, 16, '玩耍', NULL, 'wán shuǎ', 1, 625, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1380, 3, 1, 5, 16, '一本正经', NULL, 'yì běn zhèng jīng', 2, 626, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1381, 3, 1, 5, 16, '假装', NULL, 'jiǎ zhuāng', 1, 628, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1382, 3, 1, 5, 16, '哈欠', NULL, 'hā qian', 1, 629, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1383, 3, 1, 5, 15, '捕鱼', NULL, 'bǔ yú', 1, 621, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1384, 3, 1, 5, 16, '钓鱼', NULL, 'diào yú', 1, 630, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1385, 3, 1, 5, 16, '合拢', NULL, 'hé lǒng', 1, 632, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1386, 3, 1, 5, 16, '绒毛', NULL, 'róng máo', 1, 627, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1387, 3, 1, 5, 16, '有趣', NULL, 'yǒu qù', 1, 633, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1388, 3, 1, 5, 16, '睡觉起床', NULL, 'shuì jiào qǐ chuáng', 2, 635, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1389, 3, 1, 6, 18, '位于', NULL, 'wèi yú', 1, 636, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1390, 3, 1, 6, 18, '部分', NULL, 'bù fen', 1, 637, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1391, 3, 1, 5, 16, '喜爱', NULL, 'xǐ ài', 1, 634, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1392, 3, 1, 6, 18, '风景优美', NULL, 'fēng jǐng yōu měi', 2, 638, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1393, 3, 1, 6, 18, '相互', NULL, 'xiāng hù', 1, 640, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1394, 3, 1, 4, 12, '注意', NULL, 'zhù yì', 1, 606, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1395, 3, 1, 6, 18, '成群结队', NULL, 'chéng qún jié duì', 2, 642, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1396, 3, 1, 6, 18, '游动', NULL, 'yóu dòng', 1, 643, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1397, 3, 1, 6, 18, '物产丰富', NULL, 'wù chǎn fēng fù', 2, 639, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1398, 3, 1, 6, 18, '堆积', NULL, 'duī jī', 1, 644, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1399, 3, 1, 6, 18, '宝贵', NULL, 'bǎo guì', 1, 645, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1400, 3, 1, 6, 18, '祖国', NULL, 'zǔ guó', 1, 647, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1401, 3, 1, 6, 18, '事业发展', NULL, 'shì yè fā zhǎn', 2, 648, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1402, 3, 1, 6, 18, '交错', NULL, 'jiāo cuò', 1, 641, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1403, 3, 1, 6, 19, '海滨', NULL, 'hǎi bīn', 1, 649, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1404, 3, 1, 6, 19, '街道', NULL, 'jiē dào', 1, 650, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1405, 3, 1, 6, 19, '交界', NULL, 'jiāo jiè', 1, 651, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1406, 3, 1, 6, 19, '渔民', NULL, 'yú mín', 1, 653, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1407, 3, 1, 6, 19, '遍地', NULL, 'biàn dì', 1, 654, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1408, 3, 1, 6, 19, '来来往往', NULL, 'lái lái wǎng wǎng', 2, 652, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1409, 3, 1, 3, 8, '寒冷', NULL, 'hán lěng', 1, 579, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1410, 3, 1, 6, 18, '肥料', NULL, 'féi liào', 1, 646, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1411, 3, 1, 6, 19, '船队', NULL, 'chuán duì', 1, 657, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1412, 3, 1, 6, 19, '汽笛', NULL, 'qì dí', 1, 656, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1413, 3, 1, 6, 19, '满载', NULL, 'mǎn zài', 1, 658, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1414, 3, 1, 6, 19, '银光闪闪', NULL, 'yín guāng shǎn shǎn', 2, 659, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1415, 3, 1, 6, 19, '靠岸', NULL, 'kào àn', 1, 660, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1416, 3, 1, 6, 19, '除了', NULL, 'chú le', 1, 663, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1417, 3, 1, 6, 19, '散发', NULL, 'sàn fā', 1, 662, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1418, 3, 1, 6, 19, '整洁', NULL, 'zhěng jié', 1, 664, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1419, 3, 1, 6, 20, '东北', NULL, 'dōng běi', 1, 665, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1420, 3, 1, 6, 19, '远处', NULL, 'yuǎn chù', 1, 655, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1421, 3, 1, 6, 20, '严严实实', NULL, 'yán yán shí shí', 2, 667, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1422, 3, 1, 6, 19, '初夏', NULL, 'chū xià', 1, 661, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1423, 3, 1, 6, 20, '视线', NULL, 'shì xiàn', 1, 669, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1424, 3, 1, 6, 20, '花坛', NULL, 'huā tán', 1, 670, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1425, 3, 1, 6, 20, '脑袋', NULL, 'nǎo dài', 1, 666, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1426, 3, 1, 6, 20, '飞舞', NULL, 'fēi wǔ', 1, 673, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1427, 3, 1, 6, 20, '挡住', NULL, 'dǎng zhù', 1, 668, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1428, 3, 1, 6, 20, '名贵', NULL, 'míng guì', 1, 674, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1429, 3, 1, 6, 20, '药材', NULL, 'yào cái', 1, 675, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1430, 3, 1, 6, 20, '雪花', NULL, 'xuě huā', 1, 676, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1431, 3, 1, 6, 20, '巨大', NULL, 'jù dà', 1, 677, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1432, 3, 1, 6, 20, '宝库', NULL, 'bǎo kù', 1, 678, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1433, 3, 1, 7, 21, '美妙', NULL, 'měi miào', 1, 679, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1434, 3, 1, 7, 21, '音乐家', NULL, 'yīn yuè jiā', 1, 680, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1435, 3, 1, 7, 21, '演奏', NULL, 'yǎn zòu', 1, 681, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1436, 3, 1, 7, 21, '轻柔', NULL, 'qīng róu', 1, 682, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1437, 3, 1, 6, 20, '显得', NULL, 'xiǎn de', 1, 671, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1438, 3, 1, 6, 20, '苍翠', NULL, 'cāng cuì', 1, 672, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1439, 3, 1, 7, 21, '激动', NULL, 'jī dòng', 1, 685, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1440, 3, 1, 7, 21, '合奏', NULL, 'hé zòu', 1, 686, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1441, 3, 1, 7, 21, '温柔', NULL, 'wēn róu', 1, 684, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1442, 3, 1, 7, 21, '乐曲', NULL, 'yuè qǔ', 1, 687, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1443, 3, 1, 5, 15, '静悄悄', NULL, 'jìng qiāo qiāo', 1, 619, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1444, 3, 1, 7, 21, '乐器', NULL, 'yuè qì', 1, 689, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1445, 3, 1, 7, 21, '感受', NULL, 'gǎn shòu', 1, 683, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1446, 3, 1, 7, 21, '雨滴', NULL, 'yǔ dī', 1, 690, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1447, 3, 1, 7, 21, '滴答', NULL, 'dī dá', 1, 691, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1448, 3, 1, 7, 21, '所有', NULL, 'suǒ yǒu', 1, 692, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1449, 3, 1, 7, 22, '父亲', NULL, 'fù qīn', 1, 695, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1450, 3, 1, 7, 21, '轻快', NULL, 'qīng kuài', 1, 694, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1451, 3, 1, 7, 21, '河流', NULL, 'hé liú', 1, 693, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1452, 3, 1, 7, 22, '茫然', NULL, 'máng rán', 1, 698, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1453, 3, 1, 7, 22, '生怕', NULL, 'shēng pà', 1, 700, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1454, 3, 1, 7, 22, '惊动', NULL, 'jīng dòng', 1, 701, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1455, 3, 1, 7, 22, '雾蒙蒙', NULL, 'wù méng méng', 1, 697, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1456, 3, 1, 5, 16, '观察', NULL, 'guān chá', 1, 631, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1457, 3, 1, 7, 22, '总是', NULL, 'zǒng shì', 1, 703, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1458, 3, 1, 7, 22, '抖动', NULL, 'dǒu dòng', 1, 704, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1459, 3, 1, 7, 22, '露水', NULL, 'lù shuǐ', 1, 705, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1460, 3, 1, 7, 22, '呼吸', NULL, 'hū xī', 1, 706, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1461, 3, 1, 7, 22, '时刻', NULL, 'shí kè', 1, 707, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1462, 3, 1, 7, 22, '翅膀沉重', NULL, 'chì bǎng chén zhòng', 2, 709, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1463, 3, 1, 7, 21, '充满', NULL, 'chōng mǎn', 1, 688, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1464, 3, 1, 7, 22, '猎人', NULL, 'liè rén', 1, 708, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1465, 3, 1, 7, 23, '摆动', NULL, 'bǎi dòng', 1, 710, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1466, 3, 1, 7, 23, '如同', NULL, 'rú tóng', 1, 711, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1467, 3, 1, 7, 23, '无数', NULL, 'wú shù', 1, 712, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1468, 3, 1, 7, 23, '新月', NULL, 'xīn yuè', 1, 713, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1469, 3, 1, 7, 23, '忽然', NULL, 'hū rán', 1, 714, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1470, 3, 1, 7, 22, '童年', NULL, 'tóng nián', 1, 696, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1471, 3, 1, 7, 23, '赶忙', NULL, 'gǎn máng', 1, 715, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1472, 3, 1, 7, 23, '墙根', NULL, 'qiáng gēn', 1, 716, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1473, 3, 1, 7, 23, '暗暗', NULL, 'àn àn', 1, 718, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1474, 3, 1, 7, 23, '兴许', NULL, 'xīng xǔ', 1, 719, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1475, 3, 1, 7, 22, '轻声', NULL, 'qīng shēng', 1, 699, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1476, 3, 1, 7, 23, '匆匆', NULL, 'cōng cōng', 1, 722, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1477, 3, 1, 7, 22, '气息', NULL, 'qì xī', 1, 702, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1478, 3, 1, 7, 23, '清楚', NULL, 'qīng chǔ', 1, 720, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1479, 3, 1, 7, 23, '急火火聪明', NULL, 'jí huǒ huǒ cōng ming', 1, 724, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1480, 3, 1, 7, 23, '注视', NULL, 'zhù shì', 1, 717, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1481, 3, 1, 8, 25, '文静', NULL, 'wén jìng', 1, 727, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1482, 3, 1, 8, 25, '默默', NULL, 'mò mò', 1, 728, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1483, 3, 1, 8, 25, '轮流', NULL, 'lún liú', 1, 729, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1484, 3, 1, 8, 25, '讲台', NULL, 'jiǎng tái', 1, 730, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1485, 3, 1, 7, 23, '高明', NULL, 'gāo míng', 1, 725, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1486, 3, 1, 8, 25, '一齐', NULL, 'yì qí', 1, 731, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1487, 3, 1, 8, 25, '掌声', NULL, 'zhǎng shēng', 1, 726, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1488, 3, 1, 8, 25, '慢吞吞', NULL, 'màn tūn tūn', 1, 733, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1489, 3, 1, 7, 23, '散落', NULL, 'sàn luò', 1, 723, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1490, 3, 1, 8, 25, '持久', NULL, 'chí jiǔ', 1, 736, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1491, 3, 1, 8, 25, '平息', NULL, 'píng xī', 1, 738, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1492, 3, 1, 8, 25, '角落', NULL, 'jiǎo luò', 1, 732, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1493, 3, 1, 8, 25, '动听', NULL, 'dòng tīng', 1, 739, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1494, 3, 1, 8, 25, '勇气面对', NULL, 'yǒng qì miàn duì', 2, 740, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1495, 3, 1, 8, 25, '热烈', NULL, 'rè liè', 1, 735, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1496, 3, 1, 8, 26, '跳动', NULL, 'tiào dòng', 1, 743, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1497, 3, 1, 8, 26, '欢快', NULL, 'huān kuài', 1, 744, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1498, 3, 1, 8, 26, '郊外', NULL, 'jiāo wài', 1, 741, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1499, 3, 1, 8, 26, '养病', NULL, 'yǎng bìng', 1, 742, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1500, 3, 1, 8, 25, '刚刚', NULL, 'gāng gāng', 1, 734, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1501, 3, 1, 8, 25, '泪水', NULL, 'lèi shuǐ', 1, 737, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1502, 3, 1, 7, 23, '劲头', NULL, 'jìn tóu', 1, 721, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1503, 3, 1, 8, 26, '谷粒', NULL, 'gǔ lì', 1, 745, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1504, 3, 1, 8, 26, '严寒', NULL, 'yán hán', 1, 748, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1505, 3, 1, 8, 26, '男孩', NULL, 'nán hái', 1, 746, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1506, 3, 1, 8, 26, '肯定', NULL, 'kěn dìng', 1, 751, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1507, 3, 1, 8, 26, '或者', NULL, 'huò zhě', 1, 747, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1508, 3, 2, 1, 2, '乌黑', NULL, 'wū hēi', 1, 753, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1509, 3, 2, 1, 2, '轻风', NULL, 'qīng fēng', 1, 756, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1510, 3, 2, 1, 2, '吹拂', NULL, 'chuī fú', 1, 757, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1511, 3, 2, 1, 2, '活泼', NULL, 'huó pō', 1, 754, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1512, 3, 2, 1, 2, '洒落', NULL, 'sǎ luò', 1, 758, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1513, 3, 1, 8, 26, '可惜', NULL, 'kě xī', 1, 750, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1514, 3, 1, 8, 26, '本来', NULL, 'běn lái', 1, 749, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1515, 3, 2, 1, 2, '形成', NULL, 'xíng chéng', 1, 761, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1516, 3, 2, 1, 2, '春日', NULL, 'chūn rì', 1, 755, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1517, 3, 2, 1, 2, '春光', NULL, 'chūn guāng', 1, 763, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1518, 3, 2, 1, 2, '加入', NULL, 'jiā rù', 1, 762, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1519, 3, 2, 1, 2, '赶集', NULL, 'gǎn jí', 1, 759, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1520, 3, 2, 1, 2, '湖面', NULL, 'hú miàn', 1, 764, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1521, 3, 2, 1, 2, '偶尔', NULL, 'ǒu ěr', 1, 765, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1522, 3, 2, 1, 2, '闲散', NULL, 'xián sǎn', 1, 766, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1523, 3, 2, 1, 2, '纤细', NULL, 'xiān xì', 1, 767, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1524, 3, 2, 1, 3, '荷花', NULL, 'hé huā', 1, 768, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1525, 3, 2, 1, 2, '聚拢', NULL, 'jù lǒng', 1, 760, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1526, 3, 2, 1, 3, '清香', NULL, 'qīng xiāng', 1, 769, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1527, 3, 2, 1, 3, '圆盘', NULL, 'yuán pán', 1, 770, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1528, 3, 2, 1, 3, '花瓣', NULL, 'huā bàn', 1, 771, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1529, 3, 2, 1, 3, '莲蓬', NULL, 'lián péng', 1, 772, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1530, 3, 2, 1, 3, '眼前', NULL, 'yǎn qián', 1, 776, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1531, 3, 2, 1, 3, '破裂', NULL, 'pò liè', 1, 774, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1532, 3, 2, 1, 3, '姿势', NULL, 'zī shì', 1, 775, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1533, 3, 2, 1, 3, '本领', NULL, 'běn lǐng', 1, 777, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1534, 3, 2, 1, 3, '飘动', NULL, 'piāo dòng', 1, 780, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1535, 3, 1, 8, 26, '诚实', NULL, 'chéng shí', 1, 752, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1536, 3, 2, 2, 6, '国王', NULL, 'guó wáng', 1, 783, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1537, 3, 2, 1, 3, '停止', NULL, 'tíng zhǐ', 1, 782, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1538, 3, 2, 2, 6, '骄傲', NULL, 'jiāo ào', 1, 784, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1539, 3, 2, 2, 6, '傲慢', NULL, 'ào màn', 1, 785, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1540, 3, 2, 2, 6, '谦虚', NULL, 'qiān xū', 1, 786, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1541, 3, 2, 1, 3, '花骨朵儿', NULL, 'huā gū duǒ er', 2, 773, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1542, 3, 2, 2, 6, '神气', NULL, 'shén qì', 1, 788, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1543, 3, 2, 2, 6, '住嘴', NULL, 'zhù zuǐ', 1, 789, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1544, 3, 2, 2, 6, '相提并论', NULL, 'xiāng tí bìng lùn', 2, 790, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1545, 3, 2, 1, 3, '仿佛', NULL, 'fǎng fú', 1, 778, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1546, 3, 2, 2, 6, '王朝', NULL, 'wáng cháo', 1, 791, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1547, 3, 2, 1, 3, '随风', NULL, 'suí fēng', 1, 779, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1548, 3, 2, 2, 6, '古代', NULL, 'gǔ dài', 1, 795, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1549, 3, 2, 2, 6, '价值', NULL, 'jià zhí', 1, 796, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1550, 3, 2, 2, 6, '动手', NULL, 'dòng shǒu', 1, 797, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1551, 3, 2, 2, 7, '池塘', NULL, 'chí táng', 1, 798, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1552, 3, 2, 2, 6, '懦弱', NULL, 'nuò ruò', 1, 787, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1553, 3, 2, 2, 7, '倒映', NULL, 'dǎo yìng', 1, 800, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1554, 3, 2, 2, 6, '光洁', NULL, 'guāng jié', 1, 793, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1555, 3, 2, 2, 6, '尘土', NULL, 'chén tǔ', 1, 792, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1556, 3, 2, 2, 6, '美观', NULL, 'měi guān', 1, 794, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1557, 3, 2, 1, 3, '舞蹈', NULL, 'wǔ dǎo', 1, 781, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1558, 3, 2, 2, 7, '欣赏', NULL, 'xīn shǎng', 1, 802, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1559, 3, 2, 2, 7, '匀称', NULL, 'yún chèn', 1, 803, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1560, 3, 2, 2, 7, '别致', NULL, 'bié zhì', 1, 805, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1561, 3, 2, 2, 7, '哎呀', NULL, 'āi yā', 1, 808, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1562, 3, 2, 2, 7, '没精打采', NULL, 'méi jīng dǎ cǎi', 2, 806, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1563, 3, 2, 2, 7, '精美', NULL, 'jīng měi', 1, 804, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1564, 3, 2, 2, 7, '痛快', NULL, 'tòng kuài', 1, 799, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1565, 3, 2, 2, 7, '叹气', NULL, 'tàn qì', 1, 811, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1566, 3, 2, 3, 10, '造纸术', NULL, 'zào zhǐ shù', 1, 812, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1567, 3, 2, 2, 7, '狮子', NULL, 'shī zi', 1, 809, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1568, 3, 2, 3, 10, '伟大', NULL, 'wěi dà', 1, 813, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1569, 3, 2, 2, 7, '倒影', NULL, 'dǎo yǐng', 1, 801, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1570, 3, 2, 2, 7, '机会', NULL, 'jī huì', 1, 810, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1571, 3, 2, 3, 10, '大约', NULL, 'dà yuē', 1, 816, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1572, 3, 2, 3, 10, '吸收', NULL, 'xī shōu', 1, 817, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1573, 3, 2, 3, 10, '经验', NULL, 'jīng yàn', 1, 818, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1574, 3, 2, 3, 10, '原料', NULL, 'yuán liào', 1, 819, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1575, 3, 2, 3, 10, '满足', NULL, 'mǎn zú', 1, 820, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1576, 3, 2, 3, 10, '朝鲜', NULL, 'cháo xiān', 1, 821, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1577, 3, 2, 3, 10, '记录', NULL, 'jì lù', 1, 814, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1578, 3, 2, 3, 10, '半岛', NULL, 'bàn dǎo', 1, 822, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1579, 3, 2, 3, 10, '欧洲', NULL, 'ōu zhōu', 1, 825, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1580, 3, 2, 2, 7, '机灵', NULL, 'jī líng', 1, 807, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1581, 3, 2, 3, 11, '赵州桥', NULL, 'zhào zhōu qiáo', 1, 827, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1582, 3, 2, 3, 11, '石匠', NULL, 'shí jiàng', 1, 828, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1583, 3, 2, 3, 11, '设计', NULL, 'shè jì', 1, 829, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1584, 3, 2, 3, 11, '创举', NULL, 'chuàng jǔ', 1, 830, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1585, 3, 2, 3, 10, '日本', NULL, 'rì běn', 1, 823, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1586, 3, 2, 3, 11, '节省', NULL, 'jié shěng', 1, 832, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1587, 3, 2, 3, 10, '阿拉伯', NULL, 'ā lā bǎi', 1, 824, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1588, 3, 2, 3, 11, '而且', NULL, 'ér qiě', 1, 834, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1589, 3, 2, 3, 11, '冲击', NULL, 'chōng jī', 1, 831, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1590, 3, 2, 3, 11, '似乎', NULL, 'sì hū', 1, 836, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1591, 3, 2, 3, 11, '不但', NULL, 'bú dàn', 1, 833, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1592, 3, 2, 3, 11, '体现', NULL, 'tǐ xiàn', 1, 837, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1593, 3, 2, 3, 11, '才干', NULL, 'cái gàn', 1, 840, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1594, 3, 2, 3, 10, '社会', NULL, 'shè huì', 1, 826, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1595, 3, 2, 3, 11, '人民', NULL, 'rén mín', 1, 838, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1596, 3, 2, 4, 13, '争奇斗艳', NULL, 'zhēng qí dòu yàn', 2, 842, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1597, 3, 2, 3, 11, '各自', NULL, 'gè zì', 1, 835, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1598, 3, 2, 3, 11, '历史', NULL, 'lì shǐ', 1, 841, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1599, 3, 2, 4, 13, '艳丽', NULL, 'yàn lì', 1, 845, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1600, 3, 2, 4, 13, '迷人', NULL, 'mí rén', 1, 844, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1601, 3, 2, 4, 13, '醒来', NULL, 'xǐng lái', 1, 847, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1602, 3, 2, 4, 13, '欣然', NULL, 'xīn rán', 1, 849, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1603, 3, 2, 4, 13, '苏醒', NULL, 'sū xǐng', 1, 850, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1604, 3, 2, 4, 13, '含笑', NULL, 'hán xiào', 1, 851, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1605, 3, 2, 4, 13, '芬芳', NULL, 'fēn fāng', 1, 843, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1606, 3, 2, 4, 13, '展示', NULL, 'zhǎn shì', 1, 852, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1607, 3, 2, 4, 13, '组成', NULL, 'zǔ chéng', 1, 854, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1608, 3, 2, 4, 14, '蜜蜂', NULL, 'mì fēng', 1, 855, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1609, 3, 2, 4, 14, '辨认', NULL, 'biàn rèn', 1, 856, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1610, 3, 2, 4, 14, '能力', NULL, 'néng lì', 1, 857, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1611, 3, 2, 4, 13, '万寿菊', NULL, 'wàn shòu jú', 1, 848, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1612, 3, 2, 3, 11, '智慧', NULL, 'zhì huì', 1, 839, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1613, 3, 2, 4, 14, '将近', NULL, 'jiāng jìn', 1, 859, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1614, 3, 2, 3, 10, '保存', NULL, 'bǎo cún', 1, 815, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1615, 3, 2, 4, 13, '昆虫修建', NULL, 'kūn chóng xiū jiàn', 2, 853, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1616, 3, 2, 4, 14, '检查', NULL, 'jiǎn chá', 1, 861, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1617, 3, 2, 4, 14, '迷失', NULL, 'mí shī', 1, 862, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1618, 3, 2, 4, 14, '准确', NULL, 'zhǔn què', 1, 863, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1619, 3, 2, 4, 14, '无误', NULL, 'wú wù', 1, 864, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1620, 3, 2, 4, 14, '尽管', NULL, 'jǐn guǎn', 1, 865, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1621, 3, 2, 4, 14, '沿途', NULL, 'yán tú', 1, 866, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1622, 3, 2, 4, 14, '记忆', NULL, 'jì yì', 1, 868, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1623, 3, 2, 4, 14, '陌生确实', NULL, 'mò shēng què shí', 2, 867, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1624, 3, 2, 4, 14, '本能', NULL, 'běn néng', 1, 869, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1625, 3, 2, 4, 14, '阻力', NULL, 'zǔ lì', 1, 858, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1626, 3, 2, 5, 16, '星空', NULL, 'xīng kōng', 1, 870, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1627, 3, 2, 5, 16, '流淌', NULL, 'liú tǎng', 1, 871, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1628, 3, 2, 5, 16, '秘密', NULL, 'mì mì', 1, 872, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1629, 3, 2, 5, 16, '相遇', NULL, 'xiāng yù', 1, 874, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1630, 3, 2, 5, 16, '楼梯', NULL, 'lóu tī', 1, 873, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1631, 3, 2, 5, 16, '乘法', NULL, 'chéng fǎ', 1, 877, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1632, 3, 2, 5, 16, '思绪', NULL, 'sī xù', 1, 878, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1633, 3, 2, 5, 17, '形状', NULL, 'xíng zhuàng', 1, 879, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1634, 3, 2, 5, 17, '狐狸', NULL, 'hú li', 1, 880, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1635, 3, 2, 4, 14, '包括', NULL, 'bāo kuò', 1, 860, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1636, 3, 2, 5, 17, '丁零', NULL, 'dīng líng', 1, 882, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1637, 3, 2, 5, 17, '担心', NULL, 'dān xīn', 1, 881, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1638, 3, 2, 5, 17, '失望', NULL, 'shī wàng', 1, 883, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1639, 3, 2, 5, 17, '背包', NULL, 'bēi bāo', 1, 884, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1640, 3, 2, 4, 13, '睡莲', NULL, 'shuì lián', 1, 846, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1641, 3, 2, 5, 17, '香肠', NULL, 'xiāng cháng', 1, 886, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1642, 3, 2, 5, 17, '花生', NULL, 'huā shēng', 1, 888, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1643, 3, 2, 5, 17, '面包', NULL, 'miàn bāo', 1, 887, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1644, 3, 2, 5, 17, '继续', NULL, 'jì xù', 1, 890, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1645, 3, 2, 5, 16, '铃声', NULL, 'líng shēng', 1, 875, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1646, 3, 2, 5, 16, '万物', NULL, 'wàn wù', 1, 876, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1647, 3, 2, 5, 17, '麻烦', NULL, 'má fán', 1, 893, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1648, 3, 2, 6, 18, '垂柳', NULL, 'chuí liǔ', 1, 895, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1649, 3, 2, 5, 17, '巧克力', NULL, 'qiǎo kè lì', 1, 885, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1650, 3, 2, 5, 17, '牛奶', NULL, 'niú nǎi', 1, 889, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1651, 3, 2, 5, 17, '抬头', NULL, 'tái tóu', 1, 892, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1652, 3, 2, 6, 18, '扑腾', NULL, 'pū téng', 1, 897, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1653, 3, 2, 5, 17, '饭菜排骨', NULL, 'fàn cài pái gǔ', 2, 891, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1654, 3, 2, 6, 18, '扇动', NULL, 'shān dòng', 1, 898, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1655, 3, 2, 6, 18, '水墨画', NULL, 'shuǐ mò huà', 1, 894, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1656, 3, 2, 6, 18, '钓竿', NULL, 'diào gān', 1, 896, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1657, 3, 2, 6, 18, '葫芦', NULL, 'hú lu', 1, 902, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1658, 3, 2, 6, 18, '松树', NULL, 'sōng shù', 1, 903, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1659, 3, 2, 6, 18, '浪花', NULL, 'làng huā', 1, 901, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1660, 3, 2, 6, 18, '松针', NULL, 'sōng zhēn', 1, 905, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1661, 3, 2, 6, 18, '蘑菇', NULL, 'mó gu', 1, 906, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1662, 3, 2, 6, 18, '戏耍', NULL, 'xì shuǎ', 1, 899, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1663, 3, 2, 6, 19, '表弟', NULL, 'biǎo dì', 1, 908, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1664, 3, 2, 6, 19, '中药', NULL, 'zhōng yào', 1, 910, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1665, 3, 2, 6, 18, '清爽', NULL, 'qīng shuǎng', 1, 904, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1666, 3, 2, 6, 19, '理发', NULL, 'lǐ fā', 1, 912, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1667, 3, 2, 6, 19, '大师', NULL, 'dà shī', 1, 907, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1668, 3, 2, 6, 19, '欢迎', NULL, 'huān yíng', 1, 913, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1669, 3, 2, 6, 19, '胆小', NULL, 'dǎn xiǎo', 1, 909, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1670, 3, 2, 6, 19, '摆布', NULL, 'bǎi bù', 1, 915, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1671, 3, 2, 6, 19, '双倍', NULL, 'shuāng bèi', 1, 916, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1672, 3, 2, 6, 19, '姑父', NULL, 'gū fu', 1, 911, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1673, 3, 2, 6, 19, '过年', NULL, 'guò nián', 1, 917, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1674, 3, 2, 6, 19, '央求', NULL, 'yāng qiú', 1, 918, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1675, 3, 2, 6, 18, '拨动', NULL, 'bō dòng', 1, 900, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1676, 3, 2, 6, 19, '虽然', NULL, 'suī rán', 1, 919, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1677, 3, 2, 6, 19, '电灯泡', NULL, 'diàn dēng pào', 1, 921, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1678, 3, 2, 6, 20, '种类', NULL, 'zhǒng lèi', 1, 923, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1679, 3, 2, 6, 20, '网球', NULL, 'wǎng qiú', 1, 925, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1680, 3, 2, 6, 20, '透明', NULL, 'tòu míng', 1, 926, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1681, 3, 2, 6, 19, '仇人', NULL, 'chóu rén', 1, 914, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1682, 3, 2, 6, 20, '形式', NULL, 'xíng shì', 1, 928, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1683, 3, 2, 6, 20, '轻悠悠', NULL, 'qīng yōu yōu', 1, 930, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1684, 3, 2, 6, 20, '飞越', NULL, 'fēi yuè', 1, 931, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1685, 3, 2, 6, 20, '婴儿', NULL, 'yīng ér', 1, 932, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1686, 3, 2, 6, 19, '天分', NULL, 'tiān fèn', 1, 920, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1687, 3, 2, 6, 20, '目送', NULL, 'mù sòng', 1, 933, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1688, 3, 2, 6, 20, '肥皂泡', NULL, 'féi zào pào', 1, 922, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1689, 3, 2, 6, 20, '其中', NULL, 'qí zhōng', 1, 924, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1690, 3, 2, 7, 22, '奇妙', NULL, 'qí miào', 1, 935, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1691, 3, 2, 6, 20, '分裂', NULL, 'fēn liè', 1, 927, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1692, 3, 2, 6, 20, '圆满', NULL, 'yuán mǎn', 1, 929, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1693, 3, 2, 7, 22, '呈现', NULL, 'chéng xiàn', 1, 936, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1694, 3, 2, 7, 22, '圆润', NULL, 'yuán rùn', 1, 941, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1695, 3, 2, 7, 22, '感叹', NULL, 'gǎn tàn', 1, 942, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1696, 3, 2, 7, 22, '奇迹', NULL, 'qí jì', 1, 939, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1697, 3, 2, 7, 22, '诱人', NULL, 'yòu rén', 1, 940, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1698, 3, 2, 7, 22, '群星', NULL, 'qún xīng', 1, 938, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1699, 3, 2, 7, 22, '变幻', NULL, 'biàn huàn', 1, 937, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1700, 3, 2, 6, 20, '希望', NULL, 'xī wàng', 1, 934, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1701, 3, 2, 7, 22, '冰柱', NULL, 'bīng zhù', 1, 944, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1702, 3, 2, 7, 22, '刀剑', NULL, 'dāo jiàn', 1, 946, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1703, 3, 2, 7, 22, '模型', NULL, 'mó xíng', 1, 948, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1704, 3, 2, 7, 22, '无穷', NULL, 'wú qióng', 1, 950, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1705, 3, 2, 7, 22, '普通', NULL, 'pǔ tōng', 1, 947, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1706, 3, 2, 7, 23, '海底', NULL, 'hǎi dǐ', 1, 951, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1707, 3, 2, 7, 23, '器官', NULL, 'qì guān', 1, 953, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1708, 3, 2, 7, 22, '存在', NULL, 'cún zài', 1, 949, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1709, 3, 2, 7, 23, '行进', NULL, 'xíng jìn', 1, 954, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1710, 3, 2, 7, 23, '宁静', NULL, 'níng jìng', 1, 952, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1711, 3, 2, 7, 22, '锋利', NULL, 'fēng lì', 1, 945, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1712, 3, 2, 7, 23, '迅速', NULL, 'xùn sù', 1, 959, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1713, 3, 2, 7, 23, '后退', NULL, 'hòu tuì', 1, 960, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1714, 3, 2, 7, 23, '危险', NULL, 'wēi xiǎn', 1, 955, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1715, 3, 2, 7, 23, '海参', NULL, 'hǎi shēn', 1, 956, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1716, 3, 2, 7, 23, '长途', NULL, 'cháng tú', 1, 962, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1717, 3, 2, 7, 23, '地球生物', NULL, 'dì qiú shēng wù', 2, 963, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1718, 3, 2, 7, 23, '天然气', NULL, 'tiān rán qì', 1, 965, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1719, 3, 2, 7, 24, '火烧云', NULL, 'huǒ shāo yún', 1, 966, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1720, 3, 2, 7, 23, '轮船', NULL, 'lún chuán', 1, 961, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1721, 3, 2, 7, 24, '胡子', NULL, 'hú zi', 1, 968, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1722, 3, 2, 7, 23, '石油', NULL, 'shí yóu', 1, 964, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1723, 3, 2, 7, 24, '晚饭', NULL, 'wǎn fàn', 1, 967, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1724, 3, 2, 7, 24, '金灿灿', NULL, 'jīn càn càn', 1, 969, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1725, 3, 2, 7, 24, '凶猛', NULL, 'xiōng měng', 1, 970, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1726, 3, 2, 7, 23, '攻击', NULL, 'gōng jī', 1, 957, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1727, 3, 2, 8, 25, '性子', NULL, 'xìng zǐ', 1, 974, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1728, 3, 2, 7, 24, '接着', NULL, 'jiē zhe', 1, 971, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1729, 3, 2, 7, 24, '威武', NULL, 'wēi wǔ', 1, 972, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1730, 3, 2, 7, 23, '反推力', NULL, 'fǎn tuī lì', 1, 958, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1731, 3, 2, 8, 25, '笑话', NULL, 'xiào huà', 1, 977, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1732, 3, 2, 8, 25, '大方', NULL, 'dà fāng', 1, 978, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1733, 3, 2, 8, 25, '布料', NULL, 'bù liào', 1, 975, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1734, 3, 2, 8, 25, '道理', NULL, 'dào lǐ', 1, 980, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1735, 3, 2, 7, 22, '光芒', NULL, 'guāng máng', 1, 943, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1736, 3, 2, 8, 25, '夸奖', NULL, 'kuā jiǎng', 1, 979, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1737, 3, 2, 8, 25, '提前', NULL, 'tí qián', 1, 982, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1738, 3, 2, 8, 25, '衬衫', NULL, 'chèn shān', 1, 984, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1739, 3, 2, 8, 25, '负责', NULL, 'fù zé', 1, 985, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1740, 3, 2, 8, 25, '名声', NULL, 'míng shēng', 1, 986, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1741, 3, 2, 8, 25, '手艺', NULL, 'shǒu yì', 1, 987, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1742, 3, 2, 8, 25, '感动', NULL, 'gǎn dòng', 1, 988, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1743, 3, 2, 8, 27, '里屋', NULL, 'lǐ wū', 1, 989, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1744, 3, 2, 8, 27, '莫非', NULL, 'mò fēi', 1, 990, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1745, 3, 2, 8, 27, '厉害', NULL, 'lì hài', 1, 991, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1746, 3, 2, 8, 25, '服务', NULL, 'fú wù', 1, 983, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1747, 3, 2, 8, 25, '交货', NULL, 'jiāo huò', 1, 976, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1748, 3, 2, 8, 27, '松手', NULL, 'sōng shǒu', 1, 993, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1749, 3, 2, 8, 27, '发抖', NULL, 'fā dǒu', 1, 992, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1750, 4, 1, 1, 1, '奇观', NULL, 'qí guān', 1, 996, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1751, 4, 1, 1, 1, '农历', NULL, 'nóng lì', 1, 997, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1752, 4, 1, 1, 1, '据说', NULL, 'jù shuō', 1, 998, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1753, 3, 2, 8, 27, '跟前', NULL, 'gēn qián', 1, 994, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1754, 3, 2, 8, 27, '甘心', NULL, 'gān xīn', 1, 995, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1755, 4, 1, 1, 1, '滚动', NULL, 'gǔn dòng', 1, 1001, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1756, 4, 1, 1, 1, '顿时', NULL, 'dùn shí', 1, 1002, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1757, 4, 1, 1, 1, '宽阔', NULL, 'kuān kuò', 1, 999, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1758, 4, 1, 1, 1, '犹如', NULL, 'yóu rú', 1, 1004, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1759, 4, 1, 1, 1, '人山人海', NULL, 'rén shān rén hǎi', 2, 1000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1760, 3, 2, 8, 25, '实在', NULL, 'shí zài', 1, 981, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1761, 4, 1, 1, 1, '齐头并进', NULL, 'qí tóu bìng jìn', 2, 1005, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1762, 4, 1, 1, 1, '余波', NULL, 'yú bō', 1, 1008, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1763, 4, 1, 1, 1, '依旧', NULL, 'yī jiù', 1, 1009, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1764, 4, 1, 1, 2, '柔和', NULL, 'róu hé', 1, 1010, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1765, 4, 1, 1, 2, '鹅卵石', NULL, 'é luǎn shí', 1, 1011, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1766, 4, 1, 1, 1, '山崩地裂', NULL, 'shān bēng dì liè', 2, 1006, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1767, 4, 1, 1, 1, '逐渐', NULL, 'zhú jiàn', 1, 1003, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1768, 4, 1, 1, 2, '坑坑洼洼', NULL, 'kēng kēng wā wā', 2, 1015, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1769, 4, 1, 1, 2, '修补', NULL, 'xiū bǔ', 1, 1014, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1770, 4, 1, 1, 1, '霎时', NULL, 'shà shí', 1, 1007, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1771, 4, 1, 1, 2, '河床', NULL, 'hé chuáng', 1, 1012, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1772, 4, 1, 1, 2, '庄稼', NULL, 'zhuāng jia', 1, 1016, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1773, 4, 1, 1, 2, '新鲜', NULL, 'xīn xiān', 1, 1013, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1774, 3, 2, 7, 24, '镇静', NULL, 'zhèn jìng', 1, 973, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1775, 4, 1, 1, 2, '水稻', NULL, 'shuǐ dào', 1, 1020, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1776, 4, 1, 1, 2, '成熟', NULL, 'chéng shú', 1, 1021, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1777, 4, 1, 1, 2, '风俗', NULL, 'fēng sú', 1, 1017, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1778, 4, 1, 1, 2, '招待', NULL, 'zhāo dài', 1, 1022, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1779, 4, 1, 2, 5, '暖洋洋', NULL, 'nuǎn yáng yáng', 1, 1026, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1780, 4, 1, 2, 5, '按照', NULL, 'àn zhào', 1, 1025, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1781, 4, 1, 1, 2, '满意', NULL, 'mǎn yì', 1, 1019, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1782, 4, 1, 2, 5, '舒适', NULL, 'shū shì', 1, 1027, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1783, 4, 1, 1, 2, '葡萄', NULL, 'pú táo', 1, 1018, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1784, 4, 1, 2, 5, '丰满', NULL, 'fēng mǎn', 1, 1031, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1785, 4, 1, 2, 5, '等待', NULL, 'děng dài', 1, 1032, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1786, 4, 1, 1, 2, '传说', NULL, 'chuán shuō', 1, 1023, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1787, 4, 1, 2, 5, '豌豆', NULL, 'wān dòu', 1, 1024, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1788, 4, 1, 2, 5, '温和', NULL, 'wēn hé', 1, 1035, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1789, 4, 1, 2, 5, '耐心', NULL, 'nài xīn', 1, 1034, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1790, 4, 1, 2, 5, '暖和', NULL, 'nuǎn huo', 1, 1036, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1791, 4, 1, 2, 5, '僵硬', NULL, 'jiāng yìng', 1, 1030, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1792, 4, 1, 2, 5, '兴奋曾经', NULL, 'xīng fèn céng jīng', 2, 1038, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1793, 4, 1, 2, 5, '愉快', NULL, 'yú kuài', 1, 1037, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1794, 4, 1, 2, 6, '即使', NULL, 'jí shǐ', 1, 1041, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1795, 4, 1, 2, 6, '雷达', NULL, 'léi dá', 1, 1039, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1796, 4, 1, 2, 6, '灵巧', NULL, 'líng qiǎo', 1, 1042, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1797, 4, 1, 2, 6, '科学家', NULL, 'kē xué jiā', 1, 1043, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1798, 4, 1, 2, 6, '绳子', NULL, 'shéng zi', 1, 1045, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1799, 4, 1, 2, 5, '恐怕', NULL, 'kǒng pà', 1, 1029, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1800, 4, 1, 2, 5, '黑暗', NULL, 'hēi àn', 1, 1028, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1801, 4, 1, 2, 6, '研究', NULL, 'yán jiū', 1, 1048, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1802, 4, 1, 2, 6, '证明', NULL, 'zhèng míng', 1, 1047, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1803, 4, 1, 2, 6, '模仿', NULL, 'mó fǎng', 1, 1049, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1804, 4, 1, 2, 6, '显示', NULL, 'xiǎn shì', 1, 1050, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1805, 4, 1, 2, 6, '驾驶员', NULL, 'jià shǐ yuán', 1, 1051, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1806, 4, 1, 2, 7, '呼风唤雨', NULL, 'hū fēng huàn yǔ', 2, 1052, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1807, 4, 1, 2, 7, '技术', NULL, 'jì shù', 1, 1054, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1808, 4, 1, 2, 6, '苍蝇', NULL, 'cāng yíng', 1, 1046, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1809, 4, 1, 2, 5, '虚弱', NULL, 'xū ruò', 1, 1033, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1810, 4, 1, 2, 7, '改变', NULL, 'gǎi biàn', 1, 1055, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1811, 4, 1, 2, 7, '超过', NULL, 'chāo guò', 1, 1057, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1812, 4, 1, 2, 7, '腾云驾雾', NULL, 'téng yún jià wù', 2, 1058, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1813, 4, 1, 2, 7, '世纪', NULL, 'shì jì', 1, 1053, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1814, 4, 1, 2, 6, '蚊子', NULL, 'wén zǐ', 1, 1040, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1815, 4, 1, 2, 7, '奥秘', NULL, 'ào mì', 1, 1061, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1816, 4, 1, 2, 7, '日益', NULL, 'rì yì', 1, 1062, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1817, 4, 1, 2, 7, '原子核', NULL, 'yuán zǐ hé', 1, 1060, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1818, 4, 1, 2, 7, '物质', NULL, 'wù zhì', 1, 1064, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1819, 4, 1, 2, 7, '任何', NULL, 'rèn hé', 1, 1066, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1820, 4, 1, 2, 6, '横七竖八', NULL, 'héng qī shù bā', 2, 1044, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1821, 4, 1, 2, 7, '联系', NULL, 'lián xì', 1, 1063, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1822, 4, 1, 3, 10, '爬山虎', NULL, 'pá shān hǔ', 1, 1069, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1823, 4, 1, 2, 7, '创造', NULL, 'chuàng zào', 1, 1067, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1824, 4, 1, 2, 7, '程度', NULL, 'chéng dù', 1, 1056, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1825, 4, 1, 3, 10, '操场', NULL, 'cāo chǎng', 1, 1070, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1826, 4, 1, 3, 10, '嫩红', NULL, 'nèn hóng', 1, 1071, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1827, 4, 1, 3, 10, '舒服', NULL, 'shū fú', 1, 1072, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1828, 4, 1, 3, 10, '重叠', NULL, 'chóng dié', 1, 1074, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1829, 4, 1, 3, 10, '空隙', NULL, 'kòng xì', 1, 1075, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1830, 4, 1, 3, 10, '叶柄', NULL, 'yè bǐng', 1, 1076, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1831, 4, 1, 3, 10, '反面', NULL, 'fǎn miàn', 1, 1077, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1832, 4, 1, 2, 7, '哲学', NULL, 'zhé xué', 1, 1065, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1833, 4, 1, 3, 10, '均匀', NULL, 'jūn yún', 1, 1073, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1834, 4, 1, 3, 10, '触角', NULL, 'chù jiǎo', 1, 1078, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1835, 4, 1, 3, 10, '痕迹', NULL, 'hén jì', 1, 1081, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1836, 4, 1, 3, 10, '牢固', NULL, 'láo gù', 1, 1083, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1837, 4, 1, 3, 10, '休想', NULL, 'xiū xiǎng', 1, 1084, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1838, 4, 1, 2, 7, '改善', NULL, 'gǎi shàn', 1, 1068, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1839, 4, 1, 3, 11, '临时', NULL, 'lín shí', 1, 1086, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1840, 4, 1, 3, 10, '弯曲', NULL, 'wān qū', 1, 1079, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1841, 4, 1, 3, 11, '随遇而安', NULL, 'suí yù ér ān', 2, 1088, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1842, 4, 1, 3, 10, '瞧不起', NULL, 'qiáo bù qǐ', 1, 1082, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1843, 4, 1, 3, 11, '住宅', NULL, 'zhù zhái', 1, 1085, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1844, 4, 1, 3, 11, '慎重', NULL, 'shèn zhòng', 1, 1089, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1845, 4, 1, 3, 11, '功夫', NULL, 'gōng fū', 1, 1087, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1846, 4, 1, 3, 11, '选择', NULL, 'xuǎn zé', 1, 1090, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1847, 4, 1, 3, 11, '洞穴', NULL, 'dòng xué', 1, 1093, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1848, 4, 1, 2, 7, '幻想', NULL, 'huàn xiǎng', 1, 1059, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1849, 4, 1, 3, 11, '卧室', NULL, 'wò shì', 1, 1095, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1850, 4, 1, 3, 11, '专家', NULL, 'zhuān jiā', 1, 1096, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1851, 4, 1, 3, 11, '住址', NULL, 'zhù zhǐ', 1, 1091, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1852, 4, 1, 3, 11, '卫生', NULL, 'wèi shēng', 1, 1099, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1853, 4, 1, 3, 11, '疲劳', NULL, 'pí láo', 1, 1100, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1854, 4, 1, 3, 11, '优良', NULL, 'yōu liáng', 1, 1092, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1855, 4, 1, 4, 12, '黑乎乎', NULL, 'hēi hū hū', 1, 1101, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1856, 4, 1, 4, 12, '翻身', NULL, 'fān shēn', 1, 1102, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1857, 4, 1, 4, 12, '缓缓上升', NULL, 'huǎn huǎn shàng shēng', 2, 1103, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1858, 4, 1, 3, 11, '清洁', NULL, 'qīng jié', 1, 1098, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1859, 4, 1, 4, 12, '下降', NULL, 'xià jiàng', 1, 1104, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1860, 4, 1, 4, 12, '精疲力竭', NULL, 'jīng pí lì jié', 2, 1105, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1861, 4, 1, 4, 12, '汗毛', NULL, 'hàn máo', 1, 1108, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1862, 4, 1, 3, 11, '大厅', NULL, 'dà tīng', 1, 1094, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1863, 4, 1, 4, 12, '茂盛', NULL, 'mào shèng', 1, 1109, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1864, 4, 1, 4, 12, '滋润', NULL, 'zī rùn', 1, 1110, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1865, 4, 1, 4, 12, '血液', NULL, 'xuè yè', 1, 1106, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1866, 4, 1, 4, 12, '奔流不息', NULL, 'bēn liú bù xī', 2, 1107, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1867, 4, 1, 4, 14, '情景', NULL, 'qíng jǐng', 1, 1114, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1868, 4, 1, 4, 14, '危害', NULL, 'wēi hài', 1, 1115, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1869, 4, 1, 4, 12, '雨露', NULL, 'yǔ lù', 1, 1111, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1870, 4, 1, 4, 14, '猛兽', NULL, 'měng shòu', 1, 1116, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1871, 4, 1, 4, 14, '人间', NULL, 'rén jiān', 1, 1112, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1872, 4, 1, 4, 14, '严厉', NULL, 'yán lì', 1, 1117, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1873, 4, 1, 3, 11, '平整', NULL, 'píng zhěng', 1, 1097, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1874, 4, 1, 4, 14, '敬佩', NULL, 'jìng pèi', 1, 1118, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1875, 4, 1, 4, 14, '坚定', NULL, 'jiān dìng', 1, 1120, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1876, 4, 1, 4, 14, '违抗', NULL, 'wéi kàng', 1, 1121, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1877, 4, 1, 4, 14, '悲惨', NULL, 'bēi cǎn', 1, 1113, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1878, 4, 1, 4, 14, '尖利', NULL, 'jiān lì', 1, 1123, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1879, 4, 1, 4, 14, '著名', NULL, 'zhù míng', 1, 1124, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1880, 4, 1, 4, 14, '获得', NULL, 'huò dé', 1, 1126, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1881, 4, 1, 4, 14, '悄悄', NULL, 'qiāo qiāo', 1, 1119, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1882, 4, 1, 5, 16, '打猎', NULL, 'dǎ liè', 1, 1127, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1883, 4, 1, 5, 16, '无可奈何', NULL, 'wú kě nài hé', 2, 1129, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1884, 4, 1, 5, 16, '猛烈', NULL, 'měng liè', 1, 1128, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1885, 4, 1, 5, 16, '拍打', NULL, 'pāi dǎ', 1, 1130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1886, 4, 1, 4, 14, '狠心', NULL, 'hěn xīn', 1, 1122, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1887, 4, 1, 5, 16, '牙齿', NULL, 'yá chǐ', 1, 1133, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1888, 4, 1, 5, 16, '尖叫', NULL, 'jiān jiào', 1, 1135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1889, 4, 1, 5, 16, '绝望', NULL, 'jué wàng', 1, 1134, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1890, 4, 1, 5, 16, '掩护', NULL, 'yǎn hù', 1, 1137, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1891, 4, 1, 5, 16, '嘴角', NULL, 'zuǐ jiǎo', 1, 1131, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1892, 4, 1, 5, 16, '身躯', NULL, 'shēn qū', 1, 1136, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1893, 4, 1, 5, 16, '幼儿', NULL, 'yòu ér', 1, 1138, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1894, 4, 1, 5, 16, '搏斗', NULL, 'bó dòu', 1, 1139, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1895, 4, 1, 5, 16, '强大', NULL, 'qiáng dà', 1, 1142, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1896, 4, 1, 5, 16, '力量', NULL, 'lì liàng', 1, 1143, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1897, 4, 1, 5, 17, '假日', NULL, 'jiǎ rì', 1, 1144, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1898, 4, 1, 5, 17, '抬头', NULL, 'tái tóu', 1, 1145, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1899, 4, 1, 5, 16, '庞大', NULL, 'páng dà', 1, 1140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1900, 4, 1, 5, 16, '安然', NULL, 'ān rán', 1, 1141, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1901, 4, 1, 5, 17, '云彩', NULL, 'yún cǎi', 1, 1146, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1902, 4, 1, 5, 17, '年纪', NULL, 'nián jì', 1, 1149, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1903, 4, 1, 5, 17, '石级', NULL, 'shí jí', 1, 1147, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1904, 4, 1, 5, 17, '奋力', NULL, 'fèn lì', 1, 1150, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1905, 4, 1, 5, 17, '鲫鱼', NULL, 'jì yú', 1, 1152, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1906, 4, 1, 5, 17, '纪念', NULL, 'jì niàn', 1, 1153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1907, 4, 1, 5, 17, '辫子', NULL, 'biàn zi', 1, 1154, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1908, 4, 1, 5, 17, '笑呵呵', NULL, 'xiào hē hē', 1, 1155, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1909, 4, 1, 5, 17, '鼓舞', NULL, 'gǔ wǔ', 1, 1156, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1910, 4, 1, 3, 10, '细小', NULL, 'xì xiǎo', 1, 1080, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1911, 4, 1, 5, 17, '居然', NULL, 'jū rán', 1, 1157, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1912, 4, 1, 6, 18, '甚至', NULL, 'shèn zhì', 1, 1158, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1913, 4, 1, 6, 18, '故意', NULL, 'gù yì', 1, 1160, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1914, 4, 1, 6, 18, '顽皮', NULL, 'wán pí', 1, 1159, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1915, 4, 1, 6, 18, '脖子', NULL, 'bó zi', 1, 1161, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1916, 4, 1, 6, 18, '忙乱', NULL, 'máng luàn', 1, 1163, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1917, 4, 1, 6, 18, '大概', NULL, 'dà gài', 1, 1164, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1918, 4, 1, 6, 18, '助威', NULL, 'zhù wēi', 1, 1165, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1919, 4, 1, 6, 18, '昏乱', NULL, 'hūn luàn', 1, 1166, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1920, 4, 1, 6, 18, '结实', NULL, 'jiē shi', 1, 1167, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1921, 4, 1, 6, 18, '汉子', NULL, 'hàn zǐ', 1, 1168, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1922, 4, 1, 6, 18, '可笑', NULL, 'kě xiào', 1, 1169, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1923, 4, 1, 6, 18, '无缘无故', NULL, 'wú yuán wú gù', 2, 1170, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1924, 4, 1, 6, 18, '平白', NULL, 'píng bái', 1, 1171, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1925, 4, 1, 6, 19, '文艺', NULL, 'wén yì', 1, 1172, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1926, 4, 1, 6, 19, '表演', NULL, 'biǎo yǎn', 1, 1173, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1927, 4, 1, 6, 19, '角色', NULL, 'jué sè', 1, 1174, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1928, 4, 1, 5, 17, '猴子', NULL, 'hóu zi', 1, 1151, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1929, 4, 1, 6, 19, '期待', NULL, 'qī dài', 1, 1175, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1930, 4, 1, 6, 19, '危机', NULL, 'wēi jī', 1, 1177, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1931, 4, 1, 6, 19, '通情达理', NULL, 'tōng qíng dá lǐ', 2, 1178, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1932, 4, 1, 6, 19, '充分', NULL, 'chōng fèn', 1, 1179, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1933, 4, 1, 6, 19, '自信', NULL, 'zì xìn', 1, 1180, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1934, 4, 1, 6, 19, '提示', NULL, 'tí shì', 1, 1181, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1935, 4, 1, 6, 19, '撤换', NULL, 'chè huàn', 1, 1182, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1936, 4, 1, 6, 19, '紧张', NULL, 'jǐn zhāng', 1, 1183, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1937, 4, 1, 6, 19, '排练', NULL, 'pái liàn', 1, 1176, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1938, 4, 1, 6, 19, '砸锅', NULL, 'zá guō', 1, 1185, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1939, 4, 1, 6, 19, '至今', NULL, 'zhì jīn', 1, 1186, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1940, 4, 1, 6, 20, '冰天雪地', NULL, 'bīng tiān xuě dì', 2, 1187, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1941, 4, 1, 6, 20, '否则', NULL, 'fǒu zé', 1, 1188, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1942, 4, 1, 6, 18, '扑打', NULL, 'pū dǎ', 1, 1162, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1943, 4, 1, 6, 20, '奋勇', NULL, 'fèn yǒng', 1, 1190, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1944, 4, 1, 6, 20, '重整旗鼓', NULL, 'chóng zhěng qí gǔ', 2, 1191, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1945, 4, 1, 6, 20, '况且', NULL, 'kuàng qiě', 1, 1192, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1946, 4, 1, 6, 20, '得心应手', NULL, 'dé xīn yìng shǒu', 2, 1193, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1947, 4, 1, 6, 19, '哄堂大笑', NULL, 'hōng táng dà xiào', 2, 1184, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1948, 4, 1, 6, 20, '尤其', NULL, 'yóu qí', 1, 1195, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1949, 4, 1, 6, 20, '手舞足蹈', NULL, 'shǒu wǔ zú dǎo', 2, 1196, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1950, 4, 1, 6, 20, '恨不得', NULL, 'hèn bù dé', 1, 1197, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1951, 4, 1, 5, 17, '发颤', NULL, 'fā chàn', 1, 1148, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1952, 4, 1, 6, 20, '旋转', NULL, 'xuán zhuǎn', 1, 1189, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1953, 4, 1, 6, 20, '仍然', NULL, 'réng rán', 1, 1194, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1954, 4, 1, 6, 20, '摇头晃脑', NULL, 'yáo tóu huàng nǎo', 2, 1199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1955, 4, 1, 6, 20, '预料', NULL, 'yù liào', 1, 1198, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1956, 4, 1, 6, 20, '自豪', NULL, 'zì háo', 1, 1203, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1957, 4, 1, 7, 22, '严肃', NULL, 'yán sù', 1, 1204, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1958, 4, 1, 7, 22, '清晰', NULL, 'qīng xī', 1, 1205, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1959, 4, 1, 6, 20, '不动声色', NULL, 'bú dòng shēng sè', 2, 1200, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1960, 4, 1, 7, 22, '抱负', NULL, 'bào fù', 1, 1206, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1961, 4, 1, 7, 22, '赞叹', NULL, 'zàn tàn', 1, 1208, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1962, 4, 1, 7, 22, '疑惑', NULL, 'yí huò', 1, 1209, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1963, 4, 1, 7, 22, '表情', NULL, 'biǎo qíng', 1, 1210, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1964, 4, 1, 7, 22, '忘怀', NULL, 'wàng huái', 1, 1211, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1965, 4, 1, 7, 22, '胸怀', NULL, 'xiōng huái', 1, 1207, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1966, 4, 1, 7, 22, '非凡', NULL, 'fēi fán', 1, 1213, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1967, 4, 1, 7, 22, '左顾右盼', NULL, 'zuǒ gù yòu pàn', 2, 1214, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1968, 4, 1, 7, 22, '指望', NULL, 'zhǐ wàng', 1, 1215, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1969, 4, 1, 6, 20, '顽强', NULL, 'wán qiáng', 1, 1201, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1970, 4, 1, 7, 22, '分量', NULL, 'fèn liàng', 1, 1218, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1971, 4, 1, 7, 22, '果真', NULL, 'guǒ zhēn', 1, 1212, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1972, 4, 1, 7, 22, '训斥', NULL, 'xùn chì', 1, 1216, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1973, 4, 1, 8, 26, '人烟', NULL, 'rén yān', 1, 1221, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1974, 4, 1, 7, 22, '体会', NULL, 'tǐ huì', 1, 1217, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1975, 4, 1, 8, 26, '媳妇', NULL, 'xí fù', 1, 1222, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1976, 4, 1, 8, 26, '新娘', NULL, 'xīn niáng', 1, 1223, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1977, 4, 1, 8, 26, '眼睁睁', NULL, 'yǎn zhēng zhēng', 1, 1224, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1978, 4, 1, 8, 26, '迎接', NULL, 'yíng jiē', 1, 1226, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1979, 4, 1, 8, 26, '徒弟', NULL, 'tú dì', 1, 1227, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1980, 4, 1, 8, 26, '面如土色', NULL, 'miàn rú tǔ sè', 2, 1228, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1981, 4, 1, 7, 22, '响亮', NULL, 'xiǎng liàng', 1, 1219, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1982, 4, 1, 8, 26, '干旱', NULL, 'gān hàn', 1, 1225, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1983, 4, 1, 8, 26, '管理', NULL, 'guǎn lǐ', 1, 1220, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1984, 4, 1, 6, 20, '溃败', NULL, 'kuì bài', 1, 1202, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1985, 4, 1, 8, 26, '求饶', NULL, 'qiú ráo', 1, 1229, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1986, 5, 1, 1, 1, '身段', NULL, 'shēn duàn', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1987, 5, 1, 1, 1, '适宜', NULL, 'shì yí', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1988, 5, 1, 1, 1, '寻常', NULL, 'xún cháng', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1989, 5, 1, 1, 1, '精巧', NULL, 'jīng qiǎo', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1990, 5, 1, 1, 1, '配合', NULL, 'pèi hé', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1991, 5, 1, 1, 1, '生硬', NULL, 'shēng yìng', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1992, 5, 1, 1, 1, '忘却', NULL, 'wàng què', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1993, 5, 1, 1, 1, '流线型', NULL, 'liú xiàn xíng', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1994, 5, 1, 1, 1, '安稳', NULL, 'ān wěn', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1995, 5, 1, 1, 1, '清晨', NULL, 'qīng chén', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1996, 5, 1, 1, 1, '镜匣', NULL, 'jìng xiá', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1997, 5, 1, 1, 1, '悠然', NULL, 'yōu rán', 1, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1998, 5, 1, 1, 1, '嗜好', NULL, 'shì hào', 1, 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (1999, 5, 1, 1, 1, '形象化', NULL, 'xíng xiàng huà', 1, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2000, 5, 1, 1, 1, '清澄', NULL, 'qīng chéng', 1, 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2001, 5, 1, 1, 1, '黄昏恩惠', NULL, 'huáng hūn ēn huì', 2, 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2002, 5, 1, 1, 2, '播种', NULL, 'bō zhǒng', 1, 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2003, 5, 1, 1, 1, '美中不足', NULL, 'měi zhōng bù zú', 2, 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2004, 5, 1, 1, 2, '浇水', NULL, 'jiāo shuǐ', 1, 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2005, 5, 1, 1, 2, '吩咐', NULL, 'fēn fù', 1, 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2006, 5, 1, 1, 2, '榨油', NULL, 'zhà yóu', 1, 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2007, 5, 1, 1, 2, '深夜', NULL, 'shēn yè', 1, 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2008, 5, 1, 1, 3, '桂花', NULL, 'guì huā', 1, 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2009, 5, 1, 1, 3, '木兰花', NULL, 'mù lán huā', 1, 27, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2010, 5, 1, 1, 3, '糕饼', NULL, 'gāo bǐng', 1, 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2011, 5, 1, 1, 3, '茶叶', NULL, 'chá yè', 1, 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2012, 5, 1, 1, 2, '体面', NULL, 'tǐ miàn', 1, 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2013, 5, 1, 1, 1, '孤独', NULL, 'gū dú', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2014, 5, 1, 2, 5, '汛期', NULL, 'xùn qī', 1, 31, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2015, 5, 1, 2, 5, '山洪', NULL, 'shān hóng', 1, 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2016, 5, 1, 2, 5, '暴发', NULL, 'bào fā', 1, 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2017, 5, 1, 2, 5, '访友', NULL, 'fǎng yǒu', 1, 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2018, 5, 1, 2, 5, '间隔', NULL, 'jiàn gé', 1, 35, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2019, 5, 1, 2, 5, '唯独', NULL, 'wéi dú', 1, 36, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2020, 5, 1, 2, 5, '平稳', NULL, 'píng wěn', 1, 38, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2021, 5, 1, 2, 5, '懒惰', NULL, 'lǎn duò', 1, 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2022, 5, 1, 2, 5, '保持', NULL, 'bǎo chí', 1, 39, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2023, 5, 1, 2, 5, '平衡', NULL, 'píng héng', 1, 40, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2024, 5, 1, 2, 5, '协调', NULL, 'xié tiáo', 1, 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2025, 5, 1, 2, 5, '家常', NULL, 'jiā cháng', 1, 44, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2026, 5, 1, 2, 5, '美感', NULL, 'měi gǎn', 1, 42, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2027, 5, 1, 1, 2, '爱慕', NULL, 'ài mù', 1, 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2028, 5, 1, 2, 5, '理所当然', NULL, 'lǐ suǒ dāng rán', 2, 46, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2029, 5, 1, 2, 6, '无价之宝', NULL, 'wú jià zhī bǎo', 2, 48, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2030, 5, 1, 1, 3, '泡茶', NULL, 'pào chá', 1, 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2031, 5, 1, 2, 6, '商议', NULL, 'shāng yì', 1, 51, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2032, 5, 1, 2, 6, '勇敢', NULL, 'yǒng gǎn', 1, 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2033, 5, 1, 2, 6, '机智', NULL, 'jī zhì', 1, 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2034, 5, 1, 2, 6, '解决', NULL, 'jiě jué', 1, 54, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2035, 5, 1, 2, 5, '示意', NULL, 'shì yì', 1, 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2036, 5, 1, 2, 6, '难题', NULL, 'nán tí', 1, 55, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2037, 5, 1, 2, 5, '假如', NULL, 'jiǎ rú', 1, 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2038, 5, 1, 2, 5, '联结', NULL, 'lián jié', 1, 47, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2039, 5, 1, 2, 6, '称赞', NULL, 'chēng zàn', 1, 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2040, 5, 1, 2, 6, '召集', NULL, 'zhào jí', 1, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2041, 5, 1, 2, 6, '绝口不提', NULL, 'jué kǒu bù tí', 2, 57, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2042, 5, 1, 2, 6, '诚意', NULL, 'chéng yì', 1, 58, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2043, 5, 1, 2, 6, '理直气壮', NULL, 'lǐ zhí qì zhuàng', 2, 59, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2044, 5, 1, 2, 6, '交付商量', NULL, 'jiāo fù shāng liáng', 2, 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2045, 5, 1, 2, 6, '允诺', NULL, 'yǔn nuò', 1, 61, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2046, 5, 1, 2, 6, '大臣', NULL, 'dà chén', 1, 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2047, 5, 1, 2, 6, '划归', NULL, 'huà guī', 1, 62, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2048, 5, 1, 2, 6, '典礼', NULL, 'diǎn lǐ', 1, 63, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2049, 5, 1, 2, 6, '约定', NULL, 'yuē dìng', 1, 64, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2050, 5, 1, 2, 6, '丝毫', NULL, 'sī háo', 1, 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2051, 5, 1, 2, 6, '客舍', NULL, 'kè shè', 1, 66, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2052, 5, 1, 2, 6, '胆怯', NULL, 'dǎn qiè', 1, 67, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2053, 5, 1, 2, 6, '示弱', NULL, 'shì ruò', 1, 68, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2054, 5, 1, 2, 6, '随行', NULL, 'suí xíng', 1, 69, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2055, 5, 1, 2, 6, '拒绝', NULL, 'jù jué', 1, 71, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2056, 5, 1, 2, 6, '边境', NULL, 'biān jìng', 1, 72, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2057, 5, 1, 2, 6, '攻无不克', NULL, 'gōng wú bú kè', 2, 75, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2058, 5, 1, 2, 6, '战无不胜', NULL, 'zhàn wú bú shèng', 2, 76, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2059, 5, 1, 2, 6, '高头大马', NULL, 'gāo tóu dà mǎ', 2, 78, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2060, 5, 1, 2, 6, '顺眼', NULL, 'shùn yǎn', 1, 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2061, 5, 1, 2, 6, '诸位', NULL, 'zhū wèi', 1, 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2062, 5, 1, 2, 6, '乘机', NULL, 'chéng jī', 1, 81, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2063, 5, 1, 2, 6, '战袍', NULL, 'zhàn páo', 1, 82, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2064, 5, 1, 2, 6, '负荆请罪', NULL, 'fù jīng qǐng zuì', 2, 83, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2065, 5, 1, 2, 6, '同心协力', NULL, 'tóng xīn xié lì', 2, 84, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2066, 5, 1, 2, 7, '猎豹', NULL, 'liè bào', 1, 85, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2067, 5, 1, 2, 7, '冠军', NULL, 'guàn jūn', 1, 87, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2068, 5, 1, 2, 6, '推辞', NULL, 'tuī cí', 1, 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2069, 5, 1, 2, 6, '职位', NULL, 'zhí wèi', 1, 73, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2070, 5, 1, 2, 6, '服气', NULL, 'fú qì', 1, 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2071, 5, 1, 2, 7, '陆地', NULL, 'lù dì', 1, 88, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2072, 5, 1, 2, 7, '俯冲', NULL, 'fǔ chōng', 1, 89, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2073, 5, 1, 2, 6, '能耐', NULL, 'néng nài', 1, 77, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2074, 5, 1, 2, 7, '高速公路', NULL, 'gāo sù gōng lù', 2, 90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2075, 5, 1, 2, 7, '搭乘', NULL, 'dā chéng', 1, 91, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2076, 5, 1, 2, 7, '火箭', NULL, 'huǒ jiàn', 1, 92, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2077, 5, 1, 2, 7, '浩瀚', NULL, 'hào hàn', 1, 93, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2078, 5, 1, 2, 7, '发动机', NULL, 'fā dòng jī', 1, 94, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2079, 5, 1, 2, 7, '赤道', NULL, 'chì dào', 1, 97, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2080, 5, 1, 2, 7, '难以置信', NULL, 'nán yǐ zhì xìn', 2, 98, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2081, 5, 1, 2, 7, '轻易', NULL, 'qīng yì', 1, 99, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2082, 5, 1, 2, 8, '猎物', NULL, 'liè wù', 1, 101, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2083, 5, 1, 2, 8, '尊敬', NULL, 'zūn jìng', 1, 102, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2084, 5, 1, 2, 7, '鸵鸟', NULL, 'tuó niǎo', 1, 86, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2085, 5, 1, 2, 7, '呼啸而过', NULL, 'hū xiào ér guò', 2, 95, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2086, 5, 1, 2, 7, '手电筒', NULL, 'shǒu diàn tǒng', 1, 96, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2087, 5, 1, 2, 8, '酬谢', NULL, 'chóu xiè', 1, 105, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2088, 5, 1, 2, 8, '珍宝', NULL, 'zhēn bǎo', 1, 106, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2089, 5, 1, 2, 8, '报答', NULL, 'bào dá', 1, 104, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2090, 5, 1, 2, 8, '感激', NULL, 'gǎn jī', 1, 108, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2091, 5, 1, 2, 8, '恩人', NULL, 'ēn rén', 1, 103, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2092, 5, 1, 2, 8, '龙宫', NULL, 'lóng gōng', 1, 107, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2093, 5, 1, 2, 8, '重谢', NULL, 'zhòng xiè', 1, 109, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2094, 5, 1, 2, 8, '叮嘱', NULL, 'dīng zhǔ', 1, 111, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2095, 5, 1, 2, 8, '复活', NULL, 'fù huó', 1, 112, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2096, 5, 1, 2, 8, '焦急', NULL, 'jiāo jí', 1, 115, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2097, 5, 1, 2, 8, '纪念', NULL, 'jì niàn', 1, 110, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2098, 5, 1, 2, 8, '催促', NULL, 'cuī cù', 1, 116, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2099, 5, 1, 2, 8, '发誓', NULL, 'fā shì', 1, 117, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2100, 5, 1, 2, 8, '议论', NULL, 'yì lùn', 1, 113, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2101, 5, 1, 2, 8, '千真万确', NULL, 'qiān zhēn wàn què', 2, 118, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2102, 5, 1, 2, 8, '谎话', NULL, 'huǎng huà', 1, 119, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2103, 5, 1, 2, 8, '迟延', NULL, 'chí yán', 1, 120, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2104, 5, 1, 2, 8, '照实', NULL, 'zhào shí', 1, 122, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2105, 5, 1, 2, 8, '后悔', NULL, 'hòu huǐ', 1, 123, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2106, 5, 1, 2, 8, '自治区', NULL, 'zì zhì qū', 1, 100, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2107, 5, 1, 2, 8, '悲痛', NULL, 'bēi tòng', 1, 124, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2108, 5, 1, 2, 8, '乌云密布', NULL, 'wū yún mì bù', 2, 125, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2109, 5, 1, 2, 8, '震天动地', NULL, 'zhèn tiān dòng dì', 2, 127, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2110, 5, 1, 2, 8, '世世代代', NULL, 'shì shì dài dài', 2, 128, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2111, 5, 1, 3, 9, '嫂子', NULL, 'sǎo zi', 1, 129, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2112, 5, 1, 3, 9, '亲密', NULL, 'qīn mì', 1, 132, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2113, 5, 1, 3, 9, '床铺', NULL, 'chuáng pù', 1, 131, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2114, 5, 1, 3, 9, '爱理不理', NULL, 'ài lǐ bu lǐ', 2, 133, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2115, 5, 1, 3, 9, '蒲扇', NULL, 'pú shàn', 1, 134, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2116, 5, 1, 2, 8, '镇定', NULL, 'zhèn dìng', 1, 121, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2117, 5, 1, 3, 9, '一五一十', NULL, 'yī wǔ yī shí', 2, 137, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2118, 5, 1, 3, 9, '家产', NULL, 'jiā chǎn', 1, 138, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2119, 5, 1, 3, 9, '剩饭', NULL, 'shèng fàn', 1, 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2120, 5, 1, 3, 9, '成家立业', NULL, 'chéng jiā lì yè', 2, 139, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2121, 5, 1, 3, 9, '好歹对待', NULL, 'hǎo dǎi duì dài', 2, 140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2122, 5, 1, 3, 9, '稀罕', NULL, 'xī hǎn', 1, 141, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2123, 5, 1, 3, 9, '粮食', NULL, 'liáng shí', 1, 142, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2124, 5, 1, 3, 9, '笑嘻嘻', NULL, 'xiào xī xī', 1, 135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2125, 5, 1, 3, 9, '微弱', NULL, 'wēi ruò', 1, 143, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2126, 5, 1, 3, 9, '纱衣', NULL, 'shā yī', 1, 144, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2127, 5, 1, 2, 8, '崩塌搬家', NULL, 'bēng tā bān jiā', 2, 114, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2128, 5, 1, 3, 9, '妻子', NULL, 'qī zǐ', 1, 145, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2129, 5, 1, 3, 9, '晚霞', NULL, 'wǎn xiá', 1, 146, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2130, 5, 1, 3, 9, '晃晃荡荡', NULL, 'huàng huàng dang dàng', 2, 147, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2131, 5, 1, 3, 9, '云霞', NULL, 'yún xiá', 1, 148, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2132, 5, 1, 3, 9, '葡萄酒', NULL, 'pú táo jiǔ', 1, 150, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2133, 5, 1, 3, 9, '游泳结婚', NULL, 'yóu yǒng jié hūn', 2, 152, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2134, 5, 1, 4, 13, '毁灭', NULL, 'huǐ miè', 1, 154, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2135, 5, 1, 3, 9, '相依为命', NULL, 'xiāng yī wéi mìng', 2, 153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2136, 5, 1, 4, 13, '不可估量', NULL, 'bù kě gū liang', 2, 155, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2137, 5, 1, 4, 13, '举世闻名', NULL, 'jǔ shì wén míng', 2, 156, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2138, 5, 1, 4, 13, '皇家', NULL, 'huáng jiā', 1, 157, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2139, 5, 1, 4, 13, '众星拱月', NULL, 'zhòng xīng gǒng yuè', 2, 158, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2140, 5, 1, 3, 9, '无拘无束', NULL, 'wú jū wú shù', 2, 151, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2141, 5, 1, 4, 13, '亭台楼阁', NULL, 'tíng tái lóu gé', 2, 159, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2142, 5, 1, 2, 8, '狂风怒号', NULL, 'kuáng fēng nù háo', 2, 126, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2143, 5, 1, 3, 9, '成天成夜', NULL, 'chéng tiān chéng yè', 2, 149, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2144, 5, 1, 4, 13, '山乡村野', NULL, 'shān xiāng cūn yě', 2, 162, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2145, 5, 1, 4, 13, '诗情画意', NULL, 'shī qíng huà yì', 2, 164, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2146, 5, 1, 4, 13, '象征', NULL, 'xiàng zhēng', 1, 160, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2147, 5, 1, 3, 9, '眉开眼笑', NULL, 'méi kāi yǎn xiào', 2, 136, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2148, 5, 1, 4, 13, '漫步', NULL, 'màn bù', 1, 166, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2149, 5, 1, 4, 13, '漫游', NULL, 'màn yóu', 1, 167, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2150, 5, 1, 4, 13, '街市', NULL, 'jiē shì', 1, 161, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2151, 5, 1, 4, 13, '仿照', NULL, 'fǎng zhào', 1, 163, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2152, 5, 1, 4, 13, '饱览', NULL, 'bǎo lǎn', 1, 169, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2153, 5, 1, 4, 13, '流连', NULL, 'liú lián', 1, 171, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2154, 5, 1, 4, 13, '置身', NULL, 'zhì shēn', 1, 172, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2155, 5, 1, 4, 13, '建筑', NULL, 'jiàn zhù', 1, 165, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2156, 5, 1, 4, 13, '天南海北', NULL, 'tiān nán hǎi běi', 2, 168, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2157, 5, 1, 4, 13, '青铜', NULL, 'qīng tóng', 1, 175, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2158, 5, 1, 4, 13, '宏伟', NULL, 'hóng wěi', 1, 174, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2159, 5, 1, 4, 13, '礼器', NULL, 'lǐ qì', 1, 176, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2160, 5, 1, 4, 13, '奇珍异宝', NULL, 'qí zhēn yì bǎo', 2, 177, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2161, 5, 1, 4, 13, '博物馆', NULL, 'bó wù guǎn', 1, 178, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2162, 5, 1, 4, 13, '销毁', NULL, 'xiāo huǐ', 1, 181, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2163, 5, 1, 4, 13, '风景名胜', NULL, 'fēng jǐng míng shèng', 2, 170, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2164, 5, 1, 4, 13, '罪证', NULL, 'zuì zhèng', 1, 182, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2165, 5, 1, 4, 13, '侵略者', NULL, 'qīn lüè zhě', 1, 183, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2166, 5, 1, 4, 13, '奉命', NULL, 'fèng mìng', 1, 184, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2167, 5, 1, 4, 15, '寸草不生', NULL, 'cùn cǎo bù shēng', 2, 185, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2168, 5, 1, 4, 15, '日夜不停', NULL, 'rì yè bù tíng', 2, 186, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2169, 5, 1, 4, 13, '搬运', NULL, 'bān yùn', 1, 179, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2170, 5, 1, 4, 15, '繁殖', NULL, 'fán zhí', 1, 188, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2171, 5, 1, 4, 13, '境界', NULL, 'jìng jiè', 1, 173, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2172, 5, 1, 4, 13, '统统', NULL, 'tǒng tǒng', 1, 180, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2173, 5, 1, 4, 15, '粮食', NULL, 'liáng shí', 1, 189, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2174, 5, 1, 4, 15, '水滴', NULL, 'shuǐ dī', 1, 192, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2175, 5, 1, 4, 15, '水蒸气', NULL, 'shuǐ zhēng qì', 1, 191, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2176, 5, 1, 4, 15, '飘浮', NULL, 'piāo fú', 1, 193, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2177, 5, 1, 4, 15, '治疗', NULL, 'zhì liáo', 1, 195, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2178, 5, 1, 5, 16, '松鼠', NULL, 'sōng shǔ', 1, 196, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2179, 5, 1, 5, 16, '乖巧', NULL, 'guāi qiǎo', 1, 197, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2180, 5, 1, 4, 15, '钢铁', NULL, 'gāng tiě', 1, 187, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2181, 5, 1, 5, 16, '驯良', NULL, 'xùn liáng', 1, 198, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2182, 5, 1, 5, 16, '捕捉', NULL, 'bǔ zhuō', 1, 199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2183, 5, 1, 5, 16, '鸟雀', NULL, 'niǎo què', 1, 200, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2184, 5, 1, 5, 16, '杏仁', NULL, 'xìng rén', 1, 201, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2185, 5, 1, 5, 16, '机警', NULL, 'jī jǐng', 1, 204, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2186, 5, 1, 4, 15, '煤炭', NULL, 'méi tàn', 1, 190, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2187, 5, 1, 5, 16, '清秀', NULL, 'qīng xiù', 1, 202, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2188, 5, 1, 5, 16, '歇凉', NULL, 'xiē liáng', 1, 206, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2189, 5, 1, 5, 16, '触动', NULL, 'chù dòng', 1, 209, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2190, 5, 1, 5, 16, '追逐', NULL, 'zhuī zhú', 1, 207, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2191, 5, 1, 5, 16, '编扎', NULL, 'biān zhā', 1, 211, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2192, 5, 1, 4, 15, '杀菌', NULL, 'shā jūn', 1, 194, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2193, 5, 1, 5, 16, '端端正正', NULL, 'duān duān zhèng zhèng', 2, 212, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2194, 5, 1, 5, 16, '狭窄', NULL, 'xiá zhǎi', 1, 213, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2195, 5, 1, 5, 16, '玲珑', NULL, 'líng lóng', 1, 205, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2196, 5, 1, 5, 17, '连续', NULL, 'lián xù', 1, 216, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2197, 5, 1, 5, 16, '勉强', NULL, 'miǎn qiǎng', 1, 214, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2198, 5, 1, 5, 16, '警觉', NULL, 'jǐng jué', 1, 208, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2199, 5, 1, 5, 16, '脱落', NULL, 'tuō luò', 1, 215, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2200, 5, 1, 5, 17, '广播', NULL, 'guǎng bō', 1, 217, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2201, 5, 1, 5, 17, '铁路', NULL, 'tiě lù', 1, 218, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2202, 5, 1, 5, 16, '矫健', NULL, 'jiǎo jiàn', 1, 203, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2203, 5, 1, 5, 17, '挣钱', NULL, 'zhèng qián', 1, 220, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2204, 5, 1, 5, 17, '压抑', NULL, 'yā yì', 1, 221, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2205, 5, 1, 5, 17, '忙碌', NULL, 'máng lù', 1, 223, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2206, 5, 1, 5, 17, '辞退', NULL, 'cí tuì', 1, 219, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2207, 5, 1, 5, 17, '酷暑', NULL, 'kù shǔ', 1, 226, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2208, 5, 1, 5, 17, '潮湿', NULL, 'cháo shī', 1, 222, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2209, 5, 1, 5, 17, '蒸笼', NULL, 'zhēng lóng', 1, 228, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2210, 5, 1, 5, 17, '噪声', NULL, 'zào shēng', 1, 229, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2211, 5, 1, 5, 17, '瘦弱', NULL, 'shòu ruò', 1, 230, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2212, 5, 1, 5, 17, '脊背', NULL, 'jǐ bèi', 1, 231, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2213, 5, 1, 5, 17, '口罩', NULL, 'kǒu zhào', 1, 232, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2214, 5, 1, 5, 17, '阴暗', NULL, 'yīn àn', 1, 225, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2215, 5, 1, 5, 17, '忍心', NULL, 'rěn xīn', 1, 234, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2216, 5, 1, 5, 17, '数落', NULL, 'shǔ luò', 1, 235, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2217, 5, 1, 5, 17, '炎夏', NULL, 'yán xià', 1, 227, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2218, 5, 1, 6, 18, '渔船', NULL, 'yú chuán', 1, 237, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2219, 5, 1, 5, 17, '权利', NULL, 'quán lì', 1, 236, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2220, 5, 1, 6, 18, '旅店', NULL, 'lǚ diàn', 1, 239, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2221, 5, 1, 6, 18, '报考', NULL, 'bào kǎo', 1, 238, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2222, 5, 1, 6, 18, '心疼', NULL, 'xīn téng', 1, 240, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2223, 5, 1, 6, 18, '庙会', NULL, 'miào huì', 1, 242, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2224, 5, 1, 6, 18, '彩排', NULL, 'cǎi pái', 1, 244, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2225, 5, 1, 6, 18, '各式各样', NULL, 'gè shì gè yàng', 2, 245, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2226, 5, 1, 6, 18, '糖果', NULL, 'táng guǒ', 1, 246, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2227, 5, 1, 6, 18, '鸡鸭鱼肉', NULL, 'jī yā yú ròu', 2, 247, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2228, 5, 1, 6, 18, '纸屑', NULL, 'zhǐ xiè', 1, 248, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2229, 5, 1, 5, 17, '缝纫', NULL, 'féng rèn', 1, 224, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2230, 5, 1, 6, 18, '盛大', NULL, 'shèng dà', 1, 243, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2231, 5, 1, 6, 18, '千变万化', NULL, 'qiān biàn wàn huà', 2, 251, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2232, 5, 1, 6, 18, '抽象', NULL, 'chōu xiàng', 1, 252, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2233, 5, 1, 6, 18, '万花筒', NULL, 'wàn huā tǒng', 1, 249, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2234, 5, 1, 6, 18, '教训', NULL, 'jiào xùn', 1, 241, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2235, 5, 1, 6, 18, '启迪', NULL, 'qǐ dí', 1, 253, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2236, 5, 1, 6, 18, '毕业', NULL, 'bì yè', 1, 255, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2237, 5, 1, 5, 17, '龟裂', NULL, 'jūn liè', 1, 233, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2238, 5, 1, 6, 18, '学杂费', NULL, 'xué zá fèi', 1, 256, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2239, 5, 1, 6, 18, '寄宿', NULL, 'jì sù', 1, 257, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2240, 5, 1, 6, 18, '陪嫁', NULL, 'péi jià', 1, 254, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2241, 5, 1, 6, 18, '品尝', NULL, 'pǐn cháng', 1, 258, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2242, 5, 1, 6, 18, '法宝', NULL, 'fǎ bǎo', 1, 259, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2243, 5, 1, 6, 18, '轮换', NULL, 'lún huàn', 1, 261, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2244, 5, 1, 6, 18, '意识', NULL, 'yì shí', 1, 262, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2245, 5, 1, 6, 18, '路费', NULL, 'lù fèi', 1, 260, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2246, 5, 1, 6, 18, '严重性', NULL, 'yán zhòng xìng', 1, 263, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2247, 5, 1, 6, 18, '缓缓', NULL, 'huǎn huǎn', 1, 266, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2248, 5, 1, 6, 18, '领略', NULL, 'lǐng lüè', 1, 264, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2249, 5, 1, 6, 18, '满夭星斗', NULL, 'mǎn yāo xīng dòu', 2, 265, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2250, 5, 1, 6, 18, '师范', NULL, 'shī fàn', 1, 269, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2251, 5, 1, 6, 18, '棉被', NULL, 'mián bèi', 1, 270, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2252, 5, 1, 6, 18, '备齐', NULL, 'bèi qí', 1, 271, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2253, 5, 1, 6, 18, '唯一', NULL, 'wéi yī', 1, 250, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2254, 5, 1, 6, 18, '行装', NULL, 'xíng zhuāng', 1, 272, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2255, 5, 1, 6, 18, '精致', NULL, 'jīng zhì', 1, 274, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2256, 5, 1, 6, 18, '意境', NULL, 'yì jìng', 1, 267, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2257, 5, 1, 6, 18, '旅费', NULL, 'lǚ fèi', 1, 268, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2258, 5, 1, 7, 21, '漆黑', NULL, 'qī hēi', 1, 277, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2259, 5, 1, 6, 18, '磨灭', NULL, 'mó miè', 1, 273, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2260, 5, 1, 7, 21, '蒙蒙细雨', NULL, 'méng méng xì yǔ', 2, 280, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2261, 5, 1, 7, 21, '大雁', NULL, 'dà yàn', 1, 281, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2262, 5, 1, 7, 21, '萤火虫', NULL, 'yíng huǒ chóng', 1, 278, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2263, 5, 1, 7, 21, '黎明', NULL, 'lí míng', 1, 275, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2264, 5, 1, 7, 21, '夜幕降临', NULL, 'yè mù jiàng lín', 2, 283, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2265, 5, 1, 7, 21, '愈发', NULL, 'yù fā', 1, 284, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2266, 5, 1, 7, 21, '比翼而飞', NULL, 'bǐ yì ér fēi', 2, 282, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2267, 5, 1, 7, 21, '红晕', NULL, 'hóng yùn', 1, 276, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2268, 5, 1, 7, 21, '心旷神怡', NULL, 'xīn kuàng shén yí', 2, 285, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2269, 5, 1, 7, 21, '走廊', NULL, 'zǒu láng', 1, 288, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2270, 5, 1, 7, 21, '未免', NULL, 'wèi miǎn', 1, 290, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2271, 5, 1, 7, 21, '闲逸', NULL, 'xián yì', 1, 289, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2272, 5, 1, 7, 22, '白茫茫', NULL, 'bái máng máng', 1, 292, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2273, 5, 1, 7, 22, '规律', NULL, 'guī lǜ', 1, 293, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2274, 5, 1, 7, 22, '陆续', NULL, 'lù xù', 1, 291, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2275, 5, 1, 7, 22, '纠正', NULL, 'jiū zhèng', 1, 295, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2276, 5, 1, 7, 22, '不可计数', NULL, 'bù kě jì shù', 2, 296, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2277, 5, 1, 7, 21, '炭火', NULL, 'tàn huǒ', 1, 286, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2278, 5, 1, 7, 22, '木桩', NULL, 'mù zhuāng', 1, 297, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2279, 5, 1, 7, 21, '火盆', NULL, 'huǒ pén', 1, 287, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2280, 5, 1, 7, 22, '涨潮', NULL, 'zhǎng cháo', 1, 299, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2281, 5, 1, 7, 22, '树梢', NULL, 'shù shāo', 1, 300, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2282, 5, 1, 7, 22, '应接不暇', NULL, 'yìng jiē bù xiá', 2, 302, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2283, 5, 1, 7, 22, '榕树', NULL, 'róng shù', 1, 294, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2284, 5, 1, 7, 22, '画眉鸟', NULL, 'huà méi niǎo', 1, 303, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2285, 5, 1, 8, 25, '舅父', NULL, 'jiù fù', 1, 304, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2286, 5, 1, 8, 25, '津津有味', NULL, 'jīn jīn yǒu wèi', 2, 305, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2287, 5, 1, 7, 22, '颤动', NULL, 'chàn dòng', 1, 298, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2288, 5, 1, 8, 25, '无限', NULL, 'wú xiàn', 1, 308, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2289, 5, 1, 7, 22, '静寂', NULL, 'jìng jì', 1, 301, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2290, 5, 1, 8, 25, '一知半解', NULL, 'yì zhī bàn jiě', 2, 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2291, 5, 1, 8, 25, '勉勉强强', NULL, 'miǎn miǎn qiǎng qiáng', 2, 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2292, 5, 1, 8, 25, '哭哭啼啼', NULL, 'kū kū tí tí', 2, 311, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2293, 5, 1, 8, 25, '豪杰', NULL, 'háo jié', 1, 306, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2294, 5, 1, 8, 25, '英雄', NULL, 'yīng xióng', 1, 307, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2295, 5, 1, 8, 25, '辛酸', NULL, 'xīn suān', 1, 314, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2296, 5, 1, 8, 25, '兴亡盛衰', NULL, 'xīng wáng shèng shuāi', 2, 315, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2297, 5, 1, 8, 25, '总而言之', NULL, 'zǒng ér yán zhī', 2, 316, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2298, 5, 1, 8, 25, '统而言之', NULL, 'tǒng ér yán zhī', 2, 317, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2299, 5, 1, 8, 25, '访问', NULL, 'fǎng wèn', 1, 319, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2300, 5, 1, 8, 25, '做人处事', NULL, 'zuò rén chǔ shì', 2, 318, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2301, 5, 1, 8, 25, '荒唐', NULL, 'huāng táng', 1, 313, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2302, 5, 1, 8, 25, '精彩', NULL, 'jīng cǎi', 1, 320, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2303, 5, 1, 8, 25, '厌烦', NULL, 'yàn fán', 1, 312, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2304, 5, 1, 8, 25, '堆砌', NULL, 'duī qì', 1, 324, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2305, 5, 1, 8, 25, '索然无味', NULL, 'suǒ rán wú wèi', 2, 322, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2306, 5, 1, 7, 21, '翩翩飞舞', NULL, 'piān piān fēi wǔ', 2, 279, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2307, 5, 1, 8, 25, '自作多情', NULL, 'zì zuò duō qíng', 2, 325, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2308, 5, 1, 8, 25, '烦项', NULL, 'fán xiàng', 1, 321, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2309, 5, 1, 8, 25, '朦朦胧胧', NULL, 'méng méng lóng lóng', 2, 323, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2310, 5, 1, 8, 25, '浅显', NULL, 'qiǎn xiǎn', 1, 329, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2311, 5, 1, 8, 25, '心动神移', NULL, 'xīn dòng shén yí', 2, 331, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2312, 5, 1, 8, 25, '风花雪月', NULL, 'fēng huā xuě yuè', 2, 326, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2313, 5, 1, 8, 25, '国际', NULL, 'guó jì', 1, 332, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2314, 5, 1, 8, 25, '真情实感', NULL, 'zhēn qíng shí gǎn', 2, 327, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2315, 5, 1, 8, 25, '刊物', NULL, 'kān wù', 1, 333, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2316, 5, 2, 1, 2, '蜻蜓', NULL, 'qīng tíng', 1, 335, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2317, 5, 2, 1, 2, '蝴蝶', NULL, 'hú dié', 1, 334, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2318, 5, 2, 1, 2, '蚂蚱', NULL, 'mà zha', 1, 336, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2319, 5, 2, 1, 2, '圆滚滚', NULL, 'yuán gǔn gǔn', 1, 337, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2320, 5, 1, 8, 25, '质朴', NULL, 'zhì pǔ', 1, 328, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2321, 5, 2, 1, 2, '瞎闹', NULL, 'xiā nào', 1, 340, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2322, 5, 2, 1, 2, '锄头', NULL, 'chú tou', 1, 341, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2323, 5, 2, 1, 2, '随意', NULL, 'suí yì', 1, 343, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2324, 5, 2, 1, 2, '明晃晃', NULL, 'míng huǎng huǎng', 1, 338, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2325, 5, 2, 2, 5, '妒忌', NULL, 'dù jì', 1, 344, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2326, 5, 2, 2, 5, '委托', NULL, 'wěi tuō', 1, 345, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2327, 5, 2, 1, 2, '承认', NULL, 'chéng rèn', 1, 342, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2328, 5, 2, 2, 5, '军令状', NULL, 'jūn lìng zhuàng', 1, 349, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2329, 5, 2, 2, 5, '探听', NULL, 'tàn tīng', 1, 350, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2330, 5, 2, 2, 5, '私自', NULL, 'sī zì', 1, 351, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2331, 5, 2, 2, 5, '紧急', NULL, 'jǐn jí', 1, 348, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2332, 5, 2, 2, 5, '预计', NULL, 'yù jì', 1, 347, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2333, 5, 2, 2, 5, '布置', NULL, 'bù zhì', 1, 352, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2334, 5, 2, 1, 2, '樱桃', NULL, 'yīng táo', 1, 339, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2335, 5, 2, 2, 5, '吶喊', NULL, 'nà hǎn', 1, 354, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2336, 5, 2, 2, 5, '神机妙算', NULL, 'shén jī miào suàn', 2, 355, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2337, 5, 2, 2, 6, '寻思', NULL, 'xún si', 1, 357, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2338, 5, 2, 2, 6, '耻笑', NULL, 'chǐ xiào', 1, 358, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2339, 5, 2, 2, 6, '胸膛', NULL, 'xiōng táng', 1, 359, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2340, 5, 2, 2, 5, '照办', NULL, 'zhào bàn', 1, 346, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2341, 5, 2, 2, 6, '武艺', NULL, 'wǔ yì', 1, 360, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2342, 5, 2, 4, 10, '拟定', NULL, 'nǐ dìng', 1, 361, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2343, 5, 2, 2, 5, '调度', NULL, 'diào dù', 1, 353, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2344, 5, 2, 4, 10, '参谋', NULL, 'cān móu', 1, 362, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2345, 5, 1, 8, 25, '篇章', NULL, 'piān zhāng', 1, 330, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2346, 5, 2, 4, 10, '锻炼', NULL, 'duàn liàn', 1, 364, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2347, 5, 2, 2, 6, '半夜三更', NULL, 'bàn yè sān gēng', 2, 356, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2348, 5, 2, 4, 10, '慰问', NULL, 'wèi wèn', 1, 366, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2349, 5, 2, 4, 10, '繁忙', NULL, 'fán máng', 1, 369, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2350, 5, 2, 4, 10, '特殊', NULL, 'tè shū', 1, 370, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2351, 5, 2, 4, 10, '尊重', NULL, 'zūn zhòng', 1, 371, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2352, 5, 2, 4, 10, '签字', NULL, 'qiān zì', 1, 372, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2353, 5, 2, 4, 10, '下意识', NULL, 'xià yì shí', 1, 373, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2354, 5, 2, 4, 10, '情不自禁', NULL, 'qíng bú zì jīn', 2, 365, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2355, 5, 2, 4, 10, '眷恋', NULL, 'juàn liàn', 1, 367, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2356, 5, 2, 4, 11, '熟练', NULL, 'shú liàn', 1, 376, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2357, 5, 2, 4, 11, '惊疑', NULL, 'jīng yí', 1, 377, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2358, 5, 2, 4, 11, '审视', NULL, 'shěn shì', 1, 378, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2359, 5, 2, 4, 11, '一针见血', NULL, 'yì zhēn jiàn xuè', 2, 379, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2360, 5, 2, 4, 10, '损失', NULL, 'sǔn shī', 1, 363, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2361, 5, 2, 4, 11, '施行', NULL, 'shī xíng', 1, 380, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2362, 5, 2, 4, 11, '颤抖', NULL, 'chàn dǒu', 1, 382, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2363, 5, 2, 4, 11, '一声不吭', NULL, 'yì shēng bù kēng', 2, 383, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2364, 5, 2, 4, 11, '诊所', NULL, 'zhěn suǒ', 1, 374, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2365, 5, 2, 4, 11, '由衷', NULL, 'yóu zhōng', 1, 385, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2366, 5, 2, 4, 11, '慈祥', NULL, 'cí xiáng', 1, 387, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2367, 5, 2, 4, 11, '清醒', NULL, 'qīng xǐng', 1, 381, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2368, 5, 2, 4, 11, '崭新', NULL, 'zhǎn xīn', 1, 384, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2369, 5, 2, 4, 11, '苍白', NULL, 'cāng bái', 1, 386, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2370, 5, 2, 5, 13, '摔跤', NULL, 'shuāi jiāo', 1, 390, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2371, 5, 2, 5, 13, '手疾眼快', NULL, 'shǒu jí yǎn kuài', 2, 391, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2372, 5, 2, 5, 13, '欺负', NULL, 'qī fù', 1, 392, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2373, 5, 2, 5, 13, '挺脱', NULL, 'tǐng tuō', 1, 394, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2374, 5, 2, 4, 11, '肃然起敬', NULL, 'sù rán qǐ jìng', 2, 388, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2375, 5, 2, 5, 13, '脚腕子', NULL, 'jiǎo wàn zǐ', 1, 393, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2376, 5, 2, 4, 11, '荣幸', NULL, 'róng xìng', 1, 389, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2377, 5, 2, 5, 13, '格局', NULL, 'gé jú', 1, 396, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2378, 5, 2, 5, 13, '威严', NULL, 'wēi yán', 1, 397, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2379, 5, 2, 5, 13, '侄子', NULL, 'zhí zi', 1, 399, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2380, 5, 2, 4, 10, '奔赴', NULL, 'bēn fù', 1, 368, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2381, 5, 2, 5, 14, '师傅', NULL, 'shī fu', 1, 402, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2382, 5, 2, 5, 14, '绝活', NULL, 'jué huó', 1, 403, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2383, 5, 2, 4, 11, '年龄', NULL, 'nián líng', 1, 375, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2384, 5, 2, 5, 13, '肢体', NULL, 'zhī tǐ', 1, 395, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2385, 5, 2, 5, 14, '粉刷', NULL, 'fěn shuā', 1, 401, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2386, 5, 2, 5, 14, '手法', NULL, 'shǒu fǎ', 1, 407, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2387, 5, 2, 5, 14, '包袱', NULL, 'bāo fú', 1, 406, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2388, 5, 2, 5, 14, '派头', NULL, 'pài tóu', 1, 405, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2389, 5, 2, 5, 14, '衔接', NULL, 'xián jiē', 1, 409, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2390, 5, 2, 5, 14, '屏障', NULL, 'píng zhàng', 1, 410, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2391, 5, 2, 5, 14, '神圣', NULL, 'shén shèng', 1, 412, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2392, 5, 2, 5, 14, '鼓点', NULL, 'gǔ diǎn', 1, 408, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2393, 5, 2, 5, 14, '芝麻', NULL, 'zhī má', 1, 411, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2394, 5, 2, 5, 14, '侵犯', NULL, 'qīn fàn', 1, 413, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2395, 5, 2, 5, 14, '轰然', NULL, 'hōng rán', 1, 415, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2396, 5, 2, 5, 14, '半信半疑', NULL, 'bàn xìn bàn yí', 2, 404, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2397, 5, 2, 5, 14, '发怔', NULL, 'fā zhēng', 1, 417, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2398, 5, 2, 5, 14, '露馅儿', NULL, 'lòu xiàn ér', 1, 414, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2399, 5, 2, 6, 16, '赏识', NULL, 'shǎng shí', 1, 418, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2400, 5, 2, 5, 14, '难堪', NULL, 'nán kān', 1, 416, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2401, 5, 2, 6, 16, '摩拳擦掌', NULL, 'mó quán cā zhǎng', 2, 421, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2402, 5, 2, 6, 16, '跃跃欲试', NULL, 'yuè yuè yù shì', 2, 422, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2403, 5, 2, 6, 16, '兴致勃勃', NULL, 'xìng zhì bó bó', 2, 423, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2404, 5, 2, 6, 16, '脚力', NULL, 'jiǎo lì', 1, 419, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2405, 5, 2, 6, 16, '出谋划策', NULL, 'chū móu huà cè', 2, 424, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2406, 5, 2, 6, 16, '引荐', NULL, 'yǐn jiàn', 1, 425, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2407, 5, 2, 6, 17, '风平浪静', NULL, 'fēng píng làng jìng', 2, 427, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2408, 5, 2, 6, 16, '胸有成竹', NULL, 'xiōng yǒu chéng zhú', 2, 420, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2409, 5, 2, 6, 17, '放肆', NULL, 'fàng sì', 1, 429, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2410, 5, 2, 6, 17, '取乐', NULL, 'qǔ lè', 1, 428, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2411, 5, 2, 6, 17, '眼巴巴', NULL, 'yǎn bā bā', 1, 432, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2412, 5, 2, 6, 17, '吓唬', NULL, 'xià hu', 1, 433, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2413, 5, 2, 5, 13, '无疑', NULL, 'wú yí', 1, 398, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2414, 5, 2, 6, 17, '哭笑不得', NULL, 'kū xiào bù dé', 2, 431, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2415, 5, 2, 6, 17, '桅杆', NULL, 'wéi gān', 1, 430, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2416, 5, 2, 6, 17, '海鸥', NULL, 'hǎi ōu', 1, 435, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2417, 5, 2, 6, 17, '瞄准', NULL, 'miáo zhǔn', 1, 436, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2418, 5, 2, 6, 17, '心惊胆战', NULL, 'xīn jīng dǎn zhàn', 2, 437, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2419, 5, 2, 6, 17, '船舱', NULL, 'chuán cāng', 1, 434, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2420, 5, 2, 7, 18, '纵横', NULL, 'zòng héng', 1, 438, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2421, 5, 2, 7, 18, '窗帘', NULL, 'chuāng lián', 1, 441, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2422, 5, 2, 7, 18, '操纵', NULL, 'cāo zòng', 1, 442, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2423, 5, 2, 6, 17, '航行', NULL, 'háng xíng', 1, 426, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2424, 5, 2, 7, 18, '保姆', NULL, 'bǎo mǔ', 1, 444, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2425, 5, 2, 7, 18, '沉寂', NULL, 'chén jì', 1, 446, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2426, 5, 2, 7, 18, '停泊', NULL, 'tíng bó', 1, 447, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2427, 5, 2, 7, 18, '手忙脚乱', NULL, 'shǒu máng jiǎo luàn', 2, 443, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2428, 5, 2, 7, 19, '飞驰', NULL, 'fēi chí', 1, 456, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2429, 5, 2, 7, 19, '端庄', NULL, 'duān zhuāng', 1, 451, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2430, 5, 2, 7, 19, '远眺', NULL, 'yuǎn tiào', 1, 452, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2431, 5, 2, 7, 19, '仪态', NULL, 'yí tài', 1, 450, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2432, 5, 2, 7, 19, '骏马', NULL, 'jùn mǎ', 1, 453, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2433, 5, 2, 7, 18, '码头', NULL, 'mǎ tóu', 1, 448, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2434, 5, 2, 7, 19, '赞许', NULL, 'zàn xǔ', 1, 458, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2435, 5, 2, 7, 19, '吆喝', NULL, 'yāo he', 1, 460, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2436, 5, 2, 7, 19, '恢复', NULL, 'huī fù', 1, 462, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2437, 5, 2, 7, 18, '垫子', NULL, 'diàn zǐ', 1, 440, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2438, 5, 2, 7, 19, '板凳', NULL, 'bǎn dèng', 1, 459, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2439, 5, 2, 7, 19, '阻挡', NULL, 'zǔ dǎng', 1, 455, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2440, 5, 2, 7, 19, '灯塔', NULL, 'dēng tǎ', 1, 465, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2441, 5, 2, 7, 19, '辽阔', NULL, 'liáo kuò', 1, 457, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2442, 5, 2, 7, 19, '沉睡', NULL, 'chén shuì', 1, 463, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2443, 5, 2, 8, 22, '相貌', NULL, 'xiàng mào', 1, 469, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2444, 5, 2, 7, 19, '铃铛', NULL, 'líng dang', 1, 461, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2445, 5, 2, 7, 19, '遮掩', NULL, 'zhē yǎn', 1, 454, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2446, 5, 2, 8, 22, '拇指', NULL, 'mǔ zhǐ', 1, 466, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2447, 5, 2, 7, 18, '船艄', NULL, 'chuán shāo', 1, 439, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2448, 5, 2, 8, 22, '渺小', NULL, 'miǎo xiǎo', 1, 471, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2449, 5, 2, 7, 19, '牲畜', NULL, 'shēng chù', 1, 464, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2450, 5, 2, 8, 22, '纽扣', NULL, 'niǔ kòu', 1, 468, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2451, 5, 2, 8, 22, '附庸', NULL, 'fù yōng', 1, 473, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2452, 6, 1, 1, 1, '绿毯', NULL, 'lǜ tǎn', 1, 475, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2453, 5, 2, 8, 22, '团结', NULL, 'tuán jié', 1, 474, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2454, 6, 1, 1, 1, '线条', NULL, 'xiàn tiáo', 1, 476, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2455, 5, 2, 8, 22, '养尊处优', NULL, 'yǎng zūn chǔ yōu', 2, 470, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2456, 6, 1, 1, 1, '惊叹', NULL, 'jīng tàn', 1, 478, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2457, 6, 1, 1, 1, '回味', NULL, 'huí wèi', 1, 479, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2458, 5, 2, 8, 22, '接触', NULL, 'jiē chù', 1, 467, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2459, 6, 1, 1, 1, '乐趣', NULL, 'lè qù', 1, 480, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2460, 6, 1, 1, 1, '目的地', NULL, 'mù dì dì', 1, 481, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2461, 6, 1, 1, 1, '洒脱', NULL, 'sǎ tuō', 1, 482, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2462, 6, 1, 1, 1, '衣裳', NULL, 'yī shang', 1, 483, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2463, 6, 1, 1, 1, '彩虹', NULL, 'cǎi hóng', 1, 484, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2464, 5, 2, 7, 18, '笼罩', NULL, 'lǒng zhào', 1, 449, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2465, 6, 1, 1, 1, '马蹄', NULL, 'mǎ tí', 1, 485, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2466, 6, 1, 1, 1, '热乎乎', NULL, 'rè hū hū', 1, 486, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2467, 6, 1, 1, 1, '礼貌', NULL, 'lǐ mào', 1, 487, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2468, 6, 1, 1, 1, '举杯', NULL, 'jǔ bēi', 1, 489, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2469, 6, 1, 1, 1, '感人', NULL, 'gǎn rén', 1, 490, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2470, 6, 1, 1, 2, '宅院', NULL, 'zhái yuàn', 1, 493, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2471, 6, 1, 1, 1, '柔美', NULL, 'róu měi', 1, 477, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2472, 6, 1, 1, 2, '伏案', NULL, 'fú àn', 1, 495, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2473, 6, 1, 1, 2, '浑浊', NULL, 'hún zhuó', 1, 496, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2474, 6, 1, 1, 2, '笨拙', NULL, 'bèn zhuō', 1, 497, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2475, 6, 1, 1, 1, '会心', NULL, 'huì xīn', 1, 491, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2476, 6, 1, 1, 1, '微笑', NULL, 'wēi xiào', 1, 492, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2477, 5, 2, 7, 18, '簇拥', NULL, 'cù yōng', 1, 445, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2478, 6, 1, 1, 2, '单薄', NULL, 'dān bó', 1, 500, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2479, 6, 1, 1, 2, '参差', NULL, 'cēn cī', 1, 499, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2480, 6, 1, 1, 2, '照耀', NULL, 'zhào yào', 1, 501, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2481, 6, 1, 1, 2, '文思', NULL, 'wén sī', 1, 502, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2482, 6, 1, 1, 2, '幽雅', NULL, 'yōu yǎ', 1, 494, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2483, 6, 1, 1, 2, '梦想', NULL, 'mèng xiǎng', 1, 503, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2484, 6, 1, 1, 2, '迷蒙', NULL, 'mí méng', 1, 504, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2485, 6, 1, 1, 2, '花蕾', NULL, 'huā lěi', 1, 506, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2486, 6, 1, 1, 2, '恍然', NULL, 'huǎng rán', 1, 508, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2487, 6, 1, 1, 1, '拘束', NULL, 'jū shù', 1, 488, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2488, 6, 1, 1, 2, '顺心', NULL, 'shùn xīn', 1, 510, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2489, 6, 1, 1, 2, '模糊', NULL, 'mó hu', 1, 505, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2490, 6, 1, 1, 2, '衣襟', NULL, 'yī jīn', 1, 507, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2491, 6, 1, 1, 2, '愁怨', NULL, 'chóu yuàn', 1, 509, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2492, 6, 1, 2, 6, '日寇', NULL, 'rì kòu', 1, 512, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2493, 6, 1, 2, 6, '奋战', NULL, 'fèn zhàn', 1, 513, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2494, 6, 1, 2, 6, '险要', NULL, 'xiǎn yào', 1, 514, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2495, 6, 1, 1, 2, '眼帘', NULL, 'yǎn lián', 1, 498, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2496, 6, 1, 1, 2, '平淡', NULL, 'píng dàn', 1, 511, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2497, 6, 1, 2, 6, '手榴弹', NULL, 'shǒu liú dàn', 1, 515, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2498, 6, 1, 2, 6, '全神贯注', NULL, 'quán shén guàn zhù', 2, 516, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2499, 6, 1, 2, 6, '山涧', NULL, 'shān jiàn', 1, 522, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2500, 6, 1, 2, 6, '粉身碎骨', NULL, 'fěn shēn suì gǔ', 2, 523, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2501, 6, 1, 2, 6, '悬崖', NULL, 'xuán yá', 1, 517, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2502, 6, 1, 2, 6, '雹子', NULL, 'báo zǐ', 1, 524, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2503, 5, 2, 8, 22, '享乐', NULL, 'xiǎng lè', 1, 472, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2504, 6, 1, 2, 6, '屹立', NULL, 'yì lì', 1, 525, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2505, 6, 1, 2, 6, '居高临下', NULL, 'jū gāo lín xià', 2, 521, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2506, 6, 1, 2, 6, '热血沸腾', NULL, 'rè xuè fèi téng', 2, 519, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2507, 6, 1, 2, 6, '眺望', NULL, 'tiào wàng', 1, 526, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2508, 6, 1, 2, 6, '喜悦', NULL, 'xǐ yuè', 1, 527, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2509, 6, 1, 2, 6, '豪迈', NULL, 'háo mài', 1, 529, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2510, 6, 1, 2, 6, '惊天动地', NULL, 'jīng tiān dòng dì', 2, 531, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2511, 6, 1, 2, 7, '政府', NULL, 'zhèng fǔ', 1, 532, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2512, 6, 1, 2, 6, '不屈', NULL, 'bù qū', 1, 530, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2513, 6, 1, 2, 7, '外宾', NULL, 'wài bīn', 1, 533, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2514, 6, 1, 2, 7, '汇集', NULL, 'huì jí', 1, 534, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2515, 6, 1, 2, 7, '预定', NULL, 'yù dìng', 1, 535, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2516, 6, 1, 2, 7, '就位', NULL, 'jiù wèi', 1, 538, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2517, 6, 1, 2, 7, '排山倒海', NULL, 'pái shān dǎo hǎi', 2, 537, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2518, 6, 1, 2, 7, '宣告', NULL, 'xuān gào', 1, 539, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2519, 6, 1, 2, 7, '肃静', NULL, 'sù jìng', 1, 541, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2520, 6, 1, 2, 6, '壮烈', NULL, 'zhuàng liè', 1, 528, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2521, 6, 1, 2, 7, '旗帜', NULL, 'qí zhì', 1, 542, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2522, 6, 1, 2, 7, '语调', NULL, 'yǔ diào', 1, 543, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2523, 6, 1, 2, 7, '完毕', NULL, 'wán bì', 1, 544, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2524, 6, 1, 2, 7, '检阅', NULL, 'jiǎn yuè', 1, 545, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2525, 6, 1, 2, 6, '攀登', NULL, 'pān dēng', 1, 520, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2526, 6, 1, 2, 7, '制服', NULL, 'zhì fú', 1, 546, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2527, 6, 1, 2, 7, '坦克', NULL, 'tǎn kè', 1, 547, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2528, 6, 1, 2, 7, '距离', NULL, 'jù lí', 1, 549, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2529, 6, 1, 2, 7, '高潮', NULL, 'gāo cháo', 1, 550, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2530, 6, 1, 2, 7, '次序', NULL, 'cì xù', 1, 551, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2531, 6, 1, 2, 7, '爆发', NULL, 'bào fā', 1, 536, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2532, 6, 1, 2, 9, '疲倦', NULL, 'pí juàn', 1, 554, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2533, 6, 1, 2, 7, '一致', NULL, 'yí zhì', 1, 548, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2534, 6, 1, 2, 9, '冰棍', NULL, 'bīng gùn', 1, 556, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2535, 6, 1, 2, 9, '别出心裁', NULL, 'bié chū xīn cái', 2, 557, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2536, 6, 1, 2, 9, '技高一筹', NULL, 'jì gāo yī chóu', 2, 558, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2537, 6, 1, 2, 7, '雄伟', NULL, 'xióng wěi', 1, 540, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2538, 6, 1, 2, 9, '橡皮', NULL, 'xiàng pí', 1, 559, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2539, 6, 1, 2, 9, '威风凛凛', NULL, 'wēi fēng lǐn lǐn', 2, 552, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2540, 6, 1, 2, 9, '疙瘩', NULL, 'gē da', 1, 553, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2541, 6, 1, 2, 9, '呆头呆脑', NULL, 'dāi tóu dāi nǎo', 2, 555, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2542, 6, 1, 2, 9, '大步流星', NULL, 'dà bù liú xīng', 2, 561, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2543, 6, 1, 2, 9, '颓然', NULL, 'tuí rán', 1, 562, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2544, 6, 1, 2, 9, '沮丧', NULL, 'jǔ sàng', 1, 564, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2545, 6, 1, 2, 9, '念念有词', NULL, 'niàn niàn yǒu cí', 2, 566, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2546, 6, 1, 2, 9, '心满意足', NULL, 'xīn mǎn yì zú', 2, 568, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2547, 6, 1, 3, 10, '发达', NULL, 'fā dá', 1, 569, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2548, 6, 1, 2, 9, '抽屉', NULL, 'chōu tì', 1, 565, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2549, 6, 1, 2, 9, '跺脚', NULL, 'duò jiǎo', 1, 560, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2550, 6, 1, 2, 9, '忘乎所以', NULL, 'wàng hū suǒ yǐ', 2, 567, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2551, 6, 1, 3, 10, '类似', NULL, 'lèi sì', 1, 571, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2552, 6, 1, 3, 10, '起源', NULL, 'qǐ yuán', 1, 573, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2553, 6, 1, 3, 10, '适当', NULL, 'shì dàng', 1, 574, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2554, 6, 1, 3, 10, '猜测', NULL, 'cāi cè', 1, 572, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2555, 6, 1, 3, 10, '氧气', NULL, 'yǎng qì', 1, 575, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2556, 6, 1, 3, 10, '提供', NULL, 'tí gōng', 1, 576, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2557, 6, 1, 2, 9, '暴露无遗', NULL, 'bào lù wú yí', 2, 563, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2558, 6, 1, 3, 10, '神秘', NULL, 'shén mì', 1, 579, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2559, 6, 1, 3, 10, '观测', NULL, 'guān cè', 1, 580, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2560, 6, 1, 3, 10, '能源', NULL, 'néng yuán', 1, 577, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2561, 6, 1, 3, 10, '拍摄', NULL, 'pāi shè', 1, 581, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2562, 6, 1, 3, 10, '昼夜', NULL, 'zhòu yè', 1, 578, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2563, 6, 1, 3, 10, '斑点', NULL, 'bān diǎn', 1, 582, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2564, 6, 1, 3, 10, '枯萎', NULL, 'kū wěi', 1, 583, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2565, 6, 1, 3, 10, '磁场', NULL, 'cí chǎng', 1, 586, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2566, 6, 1, 3, 10, '沙漠', NULL, 'shā mò', 1, 585, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2567, 6, 1, 3, 10, '因素', NULL, 'yīn sù', 1, 588, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2568, 6, 1, 3, 10, '培养', NULL, 'péi yǎng', 1, 590, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2569, 6, 1, 3, 10, '干燥', NULL, 'gān zào', 1, 584, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2570, 6, 1, 3, 10, '考察', NULL, 'kǎo chá', 1, 589, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2571, 6, 1, 3, 10, '理论', NULL, 'lǐ lùn', 1, 570, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2572, 6, 1, 3, 10, '抵御', NULL, 'dǐ yù', 1, 587, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2573, 6, 1, 3, 12, '咆哮', NULL, 'páo xiào', 1, 591, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2574, 6, 1, 3, 12, '跌跌撞撞', NULL, 'diē diē zhuàng zhuàng', 2, 594, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2575, 6, 1, 3, 12, '嗓子', NULL, 'sǎng zi', 1, 593, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2576, 6, 1, 3, 12, '党员', NULL, 'dǎng yuán', 1, 597, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2577, 6, 1, 3, 12, '呻吟', NULL, 'shēn yín', 1, 598, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2578, 6, 1, 3, 12, '惊慌', NULL, 'jīng huāng', 1, 592, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2579, 6, 1, 3, 12, '废话', NULL, 'fèi huà', 1, 599, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2580, 6, 1, 2, 6, '斩钉截铁', NULL, 'zhǎn dīng jié tiě', 2, 518, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2581, 6, 1, 4, 13, '汹涌澎湃', NULL, 'xiōng yǒng péng pài', 2, 603, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2582, 6, 1, 3, 12, '沙哑', NULL, 'shā yǎ', 1, 596, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2583, 6, 1, 4, 13, '风暴', NULL, 'fēng bào', 1, 604, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2584, 6, 1, 4, 13, '轰鸣', NULL, 'hōng míng', 1, 605, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2585, 6, 1, 3, 12, '吞没', NULL, 'tūn mò', 1, 600, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2586, 6, 1, 4, 13, '沉思', NULL, 'chén sī', 1, 607, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2587, 6, 1, 4, 13, '抱怨', NULL, 'bào yuàn', 1, 608, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2588, 6, 1, 3, 12, '猛然', NULL, 'měng rán', 1, 601, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2589, 6, 1, 4, 13, '渔夫', NULL, 'yú fū', 1, 602, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2590, 6, 1, 4, 13, '心惊肉跳', NULL, 'xīn jīng ròu tiào', 2, 606, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2591, 6, 1, 4, 13, '探望', NULL, 'tàn wàng', 1, 610, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2592, 6, 1, 4, 13, '困难', NULL, 'kùn nán', 1, 612, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2593, 6, 1, 4, 13, '阴冷', NULL, 'yīn lěng', 1, 613, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2594, 6, 1, 4, 13, '自作自受', NULL, 'zì zuò zì shòu', 2, 614, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2595, 6, 1, 4, 13, '倾听', NULL, 'qīng tīng', 1, 609, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2596, 6, 1, 3, 12, '拥戴', NULL, 'yōng dài', 1, 595, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2597, 6, 1, 4, 13, '后脑勺', NULL, 'hòu nǎo sháo', 1, 619, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2598, 6, 1, 4, 13, '湿淋淋', NULL, 'shī lín lín', 1, 615, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2599, 6, 1, 4, 13, '渔网', NULL, 'yú wǎng', 1, 616, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2600, 6, 1, 4, 13, '苔藓', NULL, 'tái xiǎn', 1, 621, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2601, 6, 1, 4, 13, '草坪', NULL, 'cǎo píng', 1, 622, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2602, 6, 1, 4, 13, '瀑布', NULL, 'pù bù', 1, 624, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2603, 6, 1, 4, 13, '糟糕', NULL, 'zāo gāo', 1, 617, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2604, 6, 1, 4, 13, '增加', NULL, 'zēng jiā', 1, 625, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2605, 6, 1, 4, 13, '缝隙', NULL, 'fèng xì', 1, 626, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2606, 6, 1, 4, 13, '软绵绵', NULL, 'ruǎn mián mián', 1, 627, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2607, 6, 1, 4, 13, '农作物', NULL, 'nóng zuò wù', 1, 629, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2608, 6, 1, 4, 13, '谚语', NULL, 'yàn yǔ', 1, 628, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2609, 6, 1, 4, 13, '忧虑', NULL, 'yōu lǜ', 1, 618, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2610, 6, 1, 4, 13, '尽量', NULL, 'jǐn liàng', 1, 630, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2611, 6, 1, 4, 13, '甘蔗', NULL, 'gān zhè', 1, 623, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2612, 6, 1, 4, 13, '活生生', NULL, 'huó shēng shēng', 1, 620, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2613, 6, 1, 5, 16, '情况', NULL, 'qíng kuàng', 1, 632, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2614, 6, 1, 5, 16, '瓦蓝', NULL, 'wǎ lán', 1, 634, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2615, 6, 1, 5, 16, '衣柜', NULL, 'yī guì', 1, 635, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2616, 6, 1, 5, 16, '斗篷', NULL, 'dǒu peng', 1, 631, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2617, 6, 1, 5, 16, '喧闹', NULL, 'xuān nào', 1, 637, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2618, 6, 1, 5, 16, '酱油', NULL, 'jiàng yóu', 1, 640, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2619, 6, 1, 5, 16, '袖子', NULL, 'xiù zǐ', 1, 633, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2620, 6, 1, 5, 16, '预报', NULL, 'yù bào', 1, 636, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2621, 6, 1, 5, 16, '逗引', NULL, 'dòu yǐn', 1, 641, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2622, 6, 1, 6, 18, '晶莹', NULL, 'jīng yíng', 1, 644, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2623, 6, 1, 5, 16, '嘴唇', NULL, 'zuǐ chún', 1, 642, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2624, 6, 1, 5, 16, '楼梯', NULL, 'lóu tī', 1, 643, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2625, 6, 1, 6, 18, '壮观', NULL, 'zhuàng guān', 1, 646, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2626, 6, 1, 5, 16, '讲座', NULL, 'jiǎng zuò', 1, 639, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2627, 6, 1, 6, 18, '资源', NULL, 'zī yuán', 1, 648, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2628, 6, 1, 6, 18, '和蔼', NULL, 'hé ǎi', 1, 647, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2629, 6, 1, 6, 18, '矿产', NULL, 'kuàng chǎn', 1, 650, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2630, 6, 1, 6, 18, '摇篮', NULL, 'yáo lán', 1, 645, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2631, 6, 1, 6, 18, '慷慨', NULL, 'kāng kǎi', 1, 652, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2632, 6, 1, 6, 18, '枯竭', NULL, 'kū jié', 1, 654, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2633, 6, 1, 6, 18, '贡献', NULL, 'gòng xiàn', 1, 655, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2634, 6, 1, 6, 18, '无私', NULL, 'wú sī', 1, 651, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2635, 6, 1, 5, 16, '遮盖', NULL, 'zhē gài', 1, 638, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2636, 6, 1, 6, 18, '毁坏', NULL, 'huǐ huài', 1, 656, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2637, 6, 1, 6, 18, '滥用', NULL, 'làn yòng', 1, 657, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2638, 6, 1, 6, 18, '设想', NULL, 'shè xiǎng', 1, 659, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2639, 6, 1, 6, 18, '例如', NULL, 'lì rú', 1, 660, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2640, 6, 1, 6, 18, '目睹', NULL, 'mù dǔ', 1, 662, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2641, 6, 1, 4, 13, '照顾', NULL, 'zhào gù', 1, 611, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2642, 6, 1, 6, 18, '基地', NULL, 'jī dì', 1, 661, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2643, 6, 1, 7, 22, '钢琴', NULL, 'gāng qín', 1, 665, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2644, 6, 1, 6, 18, '子孙', NULL, 'zǐ sūn', 1, 663, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2645, 6, 1, 7, 22, '断断续续', NULL, 'duàn duàn xù xù', 2, 667, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2646, 6, 1, 6, 18, '节制', NULL, 'jié zhì', 1, 653, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2647, 6, 1, 7, 22, '谱写', NULL, 'pǔ xiě', 1, 664, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2648, 6, 1, 7, 22, '茅屋', NULL, 'máo wū', 1, 668, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2649, 6, 1, 7, 22, '烛光', NULL, 'zhú guāng', 1, 669, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2650, 6, 1, 7, 22, '失明', NULL, 'shī míng', 1, 670, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2651, 6, 1, 6, 18, '有限', NULL, 'yǒu xiàn', 1, 649, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2652, 6, 1, 7, 22, '景象', NULL, 'jǐng xiàng', 1, 674, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2653, 6, 1, 7, 22, '琴键', NULL, 'qín jiàn', 1, 673, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2654, 6, 1, 7, 22, '陶醉', NULL, 'táo zuì', 1, 675, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2655, 6, 1, 7, 24, '一望无际', NULL, 'yí wàng wú jì', 2, 676, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2656, 6, 1, 7, 24, '家景', NULL, 'jiā jǐng', 1, 677, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2657, 6, 1, 7, 22, '清幽', NULL, 'qīng yōu', 1, 672, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2658, 6, 1, 6, 18, '生态', NULL, 'shēng tài', 1, 658, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2659, 6, 1, 7, 24, '讲究', NULL, 'jiǎng jiū', 1, 681, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2660, 6, 1, 7, 24, '郑重', NULL, 'zhèng zhòng', 1, 678, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2661, 6, 1, 7, 24, '供品', NULL, 'gòng pǐn', 1, 679, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2662, 6, 1, 7, 24, '盼望', NULL, 'pàn wàng', 1, 682, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2663, 6, 1, 7, 24, '毡帽', NULL, 'zhān mào', 1, 684, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2664, 6, 1, 7, 24, '祭器', NULL, 'jì qì', 1, 680, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2665, 6, 1, 7, 24, '项圈', NULL, 'xiàng quān', 1, 685, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2666, 6, 1, 7, 22, '幽静', NULL, 'yōu jìng', 1, 666, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2667, 6, 1, 7, 24, '刺猬', NULL, 'cì wei', 1, 686, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2668, 6, 1, 7, 24, '伶俐', NULL, 'líng lì', 1, 687, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2669, 6, 1, 7, 24, '潮汛', NULL, 'cháo xùn', 1, 689, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2670, 6, 1, 8, 25, '烟雾', NULL, 'yān wù', 1, 691, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2671, 6, 1, 8, 25, '昏沉', NULL, 'hūn chén', 1, 692, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2672, 6, 1, 8, 25, '错综', NULL, 'cuò zōng', 1, 693, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2673, 6, 1, 7, 24, '经历', NULL, 'jīng lì', 1, 688, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2674, 6, 1, 8, 25, '澄碧', NULL, 'chéng bì', 1, 694, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2675, 6, 1, 8, 25, '荡漾', NULL, 'dàng yàng', 1, 695, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2676, 6, 1, 7, 22, '纯熟', NULL, 'chún shú', 1, 671, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2677, 6, 1, 8, 25, '瘦削', NULL, 'shòu xuē', 1, 698, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2678, 6, 1, 8, 25, '浮动', NULL, 'fú dòng', 1, 699, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2679, 6, 1, 8, 25, '瞬间', NULL, 'shùn jiān', 1, 700, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2680, 6, 1, 8, 25, '凝视', NULL, 'níng shì', 1, 701, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2681, 6, 1, 8, 25, '骤然', NULL, 'zhòu rán', 1, 702, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2682, 6, 1, 8, 25, '凌乱', NULL, 'líng luàn', 1, 703, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2683, 6, 1, 8, 25, '陡然', NULL, 'dǒu rán', 1, 704, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2684, 6, 1, 8, 25, '解散', NULL, 'jiě sàn', 1, 696, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2685, 6, 1, 8, 25, '退缩', NULL, 'tuì suō', 1, 697, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2686, 6, 2, 1, 1, '自傲', NULL, 'zì ào', 1, 706, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2687, 6, 2, 1, 1, '饺子', NULL, 'jiǎo zǐ', 1, 707, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2688, 6, 2, 1, 1, '万象更新', NULL, 'wàn xiàng gēng xīn', 2, 708, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2689, 6, 2, 1, 1, '鞭炮', NULL, 'biān pào', 1, 709, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2690, 6, 2, 1, 1, '眨眼', NULL, 'zhǎ yǎn', 1, 710, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2691, 6, 2, 1, 1, '通宵', NULL, 'tōng xiāo', 1, 711, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2692, 6, 2, 1, 1, '万不得已', NULL, 'wàn bù dé yǐ', 2, 713, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2693, 6, 2, 1, 1, '燃放', NULL, 'rán fàng', 1, 715, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2694, 6, 2, 1, 1, '热情', NULL, 'rè qíng', 1, 705, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2695, 6, 2, 1, 1, '截然', NULL, 'jié rán', 1, 714, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2696, 6, 2, 1, 1, '彼此', NULL, 'bǐ cǐ', 1, 717, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2697, 6, 2, 1, 1, '骆驼', NULL, 'luò tuó', 1, 719, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2698, 6, 2, 1, 1, '间断', NULL, 'jiàn duàn', 1, 712, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2699, 6, 2, 1, 1, '恰好', NULL, 'qià hǎo', 1, 720, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2700, 6, 2, 1, 1, '小贩摆摊儿', NULL, 'xiǎo fàn bǎi tān ér', 1, 716, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2701, 6, 2, 1, 1, '分外', NULL, 'fèn wài', 1, 723, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2702, 6, 2, 1, 1, '一律', NULL, 'yí lǜ', 1, 721, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2703, 6, 1, 7, 24, '厨房', NULL, 'chú fáng', 1, 683, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2704, 6, 2, 1, 2, '沸腾', NULL, 'fèi téng', 1, 726, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2705, 6, 2, 1, 2, '何况', NULL, 'hé kuàng', 1, 727, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2706, 6, 2, 1, 2, '搅和', NULL, 'jiǎo huo', 1, 728, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2707, 6, 2, 1, 2, '腊八粥', NULL, 'là bā zhōu', 1, 724, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2708, 6, 2, 1, 2, '资格', NULL, 'zī gé', 1, 729, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2709, 6, 2, 1, 2, '感觉', NULL, 'gǎn jué', 1, 725, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2710, 6, 2, 1, 2, '可靠', NULL, 'kě kào', 1, 730, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2711, 6, 1, 8, 25, '预告', NULL, 'yù gào', 1, 690, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2712, 6, 2, 1, 2, '猜想', NULL, 'cāi xiǎng', 1, 733, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2713, 6, 2, 1, 2, '要不然', NULL, 'yào bù rán', 1, 732, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2714, 6, 2, 1, 2, '罢了', NULL, 'bà le', 1, 731, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2715, 6, 2, 1, 2, '惊异', NULL, 'jīng yì', 1, 735, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2716, 6, 2, 1, 2, '粉碎', NULL, 'fěn suì', 1, 736, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2717, 6, 2, 1, 2, '肿胀', NULL, 'zhǒng zhàng', 1, 734, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2718, 6, 2, 1, 2, '染缸', NULL, 'rǎn gāng', 1, 738, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2719, 6, 2, 1, 1, '彩绘', NULL, 'cǎi huì', 1, 722, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2720, 6, 2, 2, 5, '流落', NULL, 'liú luò', 1, 742, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2721, 6, 2, 2, 5, '凄凉', NULL, 'qī liáng', 1, 743, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2722, 6, 2, 1, 2, '总之', NULL, 'zǒng zhī', 1, 737, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2723, 6, 2, 1, 2, '解释', NULL, 'jiě shì', 1, 739, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2724, 6, 2, 1, 2, '浪漫', NULL, 'làng màn', 1, 740, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2725, 6, 2, 1, 2, '奈何', NULL, 'nài hé', 1, 741, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2726, 6, 2, 2, 5, '恐惧', NULL, 'kǒng jù', 1, 745, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2727, 6, 2, 2, 5, '倒霉', NULL, 'dǎo méi', 1, 746, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2728, 6, 2, 2, 5, '忧伤', NULL, 'yōu shāng', 1, 747, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2729, 6, 2, 2, 5, '书籍', NULL, 'shū jí', 1, 748, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2730, 6, 2, 2, 5, '理智', NULL, 'lǐ zhì', 1, 750, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2731, 6, 2, 2, 5, '抛弃', NULL, 'pāo qì', 1, 753, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2732, 6, 2, 2, 5, '心平气和', NULL, 'xīn píng qì hé', 2, 752, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2733, 6, 2, 2, 5, '寂寞', NULL, 'jì mò', 1, 744, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2734, 6, 2, 2, 5, '侵袭', NULL, 'qīn xí', 1, 756, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2735, 6, 2, 2, 5, '倾覆', NULL, 'qīng fù', 1, 757, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2736, 6, 2, 2, 5, '宽慰', NULL, 'kuān wèi', 1, 758, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2737, 6, 2, 2, 5, '控制', NULL, 'kòng zhì', 1, 751, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2738, 6, 2, 2, 5, '困境', NULL, 'kùn jìng', 1, 760, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2739, 6, 2, 2, 5, '焉知非福', NULL, 'yān zhī fēi fú', 2, 761, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2740, 6, 2, 3, 8, '确乎', NULL, 'què hū', 1, 762, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2741, 6, 2, 2, 5, '深重', NULL, 'shēn zhòng', 1, 759, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2742, 6, 2, 3, 8, '空虚', NULL, 'kōng xū', 1, 763, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2743, 6, 2, 3, 8, '不禁', NULL, 'bù jīn', 1, 764, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2744, 6, 2, 3, 8, '挪移', NULL, 'nuó yí', 1, 765, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2745, 6, 2, 3, 8, '觉察', NULL, 'jué chá', 1, 766, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2746, 6, 2, 3, 8, '叹息', NULL, 'tàn xī', 1, 767, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2747, 6, 2, 3, 8, '徘徊', NULL, 'pái huái', 1, 768, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2748, 6, 2, 3, 8, '何曾', NULL, 'hé céng', 1, 770, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2749, 6, 2, 3, 8, '游丝', NULL, 'yóu sī', 1, 771, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2750, 6, 2, 3, 8, '微风', NULL, 'wēi fēng', 1, 769, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2751, 6, 2, 3, 8, '赤裸裸', NULL, 'chì luǒ luǒ', 1, 772, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2752, 6, 2, 3, 9, '拨弄', NULL, 'bō nòng', 1, 774, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2753, 6, 2, 3, 9, '草丛', NULL, 'cǎo cóng', 1, 775, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2754, 6, 2, 2, 5, '处境', NULL, 'chǔ jìng', 1, 749, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2755, 6, 2, 3, 9, '画报', NULL, 'huà bào', 1, 776, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2756, 6, 2, 3, 9, '念叨', NULL, 'niàn dāo', 1, 778, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2757, 6, 2, 2, 5, '重见天日', NULL, 'chóng jiàn tiān rì', 2, 754, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2758, 6, 2, 3, 9, '晃动', NULL, 'huàng dòng', 1, 780, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2759, 6, 2, 3, 9, '停顿', NULL, 'tíng dùn', 1, 779, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2760, 6, 2, 2, 5, '防御', NULL, 'fáng yù', 1, 755, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2761, 6, 2, 3, 9, '耽搁', NULL, 'dān gē', 1, 781, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2762, 6, 2, 3, 9, '沉郁', NULL, 'chén yù', 1, 782, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2763, 6, 2, 1, 1, '贺年', NULL, 'hè nián', 1, 718, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2764, 6, 2, 3, 9, '翻箱倒柜', NULL, 'fān xiāng dǎo guì', 2, 777, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2765, 6, 2, 3, 9, '漫长', NULL, 'màn cháng', 1, 783, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2766, 6, 2, 3, 9, '亲吻', NULL, 'qīn wěn', 1, 787, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2767, 6, 2, 3, 9, '挽回', NULL, 'wǎn huí', 1, 789, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2768, 6, 2, 3, 9, '时光', NULL, 'shí guāng', 1, 785, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2769, 6, 2, 3, 9, '休止', NULL, 'xiū zhǐ', 1, 784, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2770, 6, 2, 3, 9, '惊惶', NULL, 'jīng huáng', 1, 786, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2771, 6, 2, 4, 11, '埋头', NULL, 'mái tóu', 1, 791, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2772, 6, 2, 4, 11, '幼稚', NULL, 'yòu zhì', 1, 792, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2773, 6, 2, 4, 11, '局势', NULL, 'jú shì', 1, 795, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2774, 6, 2, 4, 11, '避免', NULL, 'bì miǎn', 1, 794, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2775, 6, 2, 4, 11, '含糊', NULL, 'hán hu', 1, 793, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2776, 6, 2, 4, 11, '严峻', NULL, 'yán jùn', 1, 796, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2777, 6, 2, 4, 11, '尖锐', NULL, 'jiān ruì', 1, 798, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2778, 6, 2, 4, 11, '僻静', NULL, 'pì jìng', 1, 799, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2779, 6, 2, 4, 11, '魔鬼', NULL, 'mó guǐ', 1, 800, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2780, 6, 2, 4, 11, '苦刑', NULL, 'kǔ xíng', 1, 801, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2781, 6, 2, 4, 11, '法庭', NULL, 'fǎ tíng', 1, 805, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2782, 6, 2, 4, 12, '压迫', NULL, 'yā pò', 1, 817, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2783, 6, 2, 4, 12, '批评', NULL, 'pī píng', 1, 818, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2784, 6, 2, 4, 12, '解放', NULL, 'jiě fàng', 1, 812, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2785, 6, 2, 4, 11, '执行', NULL, 'zhí xíng', 1, 809, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2786, 6, 2, 4, 12, '目标', NULL, 'mù biāo', 1, 821, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2787, 6, 2, 4, 12, '革命', NULL, 'gé mìng', 1, 811, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2788, 6, 2, 4, 11, '匪徒', NULL, 'fěi tú', 1, 804, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2789, 6, 2, 3, 9, '依偎', NULL, 'yī wēi', 1, 788, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2790, 6, 2, 4, 12, '死得其所', NULL, 'sǐ dé qí suǒ', 2, 824, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2791, 6, 2, 4, 12, '制度', NULL, 'zhì dù', 1, 825, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2792, 6, 2, 4, 11, '会意', NULL, 'huì yì', 1, 808, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2793, 6, 2, 4, 12, '剥削', NULL, 'bō xuē', 1, 816, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2794, 6, 2, 4, 12, '彻底', NULL, 'chè dǐ', 1, 813, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2795, 6, 2, 4, 12, '五湖四海', NULL, 'wǔ hú sì hǎi', 2, 820, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2796, 6, 2, 4, 12, '兴旺', NULL, 'xīng wàng', 1, 819, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2797, 6, 2, 4, 12, '牺牲', NULL, 'xī shēng', 1, 823, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2798, 6, 2, 4, 11, '轻易', NULL, 'qīng yì', 1, 797, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2799, 6, 2, 5, 15, '真理', NULL, 'zhēn lǐ', 1, 828, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2800, 6, 2, 4, 12, '哀思', NULL, 'āi sī', 1, 827, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2801, 6, 2, 5, 15, '疑问', NULL, 'yí wèn', 1, 832, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2802, 6, 2, 5, 15, '司空见惯', NULL, 'sī kōng jiàn guàn', 2, 831, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2803, 6, 2, 4, 11, '冷笑', NULL, 'lěng xiào', 1, 802, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2804, 6, 2, 5, 15, '敏感', NULL, 'mǐn gǎn', 1, 833, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2805, 6, 2, 5, 15, '提取', NULL, 'tí qǔ', 1, 834, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2806, 6, 2, 4, 12, '寄托', NULL, 'jì tuō', 1, 826, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2807, 6, 2, 5, 15, '建树', NULL, 'jiàn shù', 1, 830, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2808, 6, 2, 4, 11, '残暴', NULL, 'cán bào', 1, 803, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2809, 6, 2, 5, 15, '不可思议吻合', NULL, 'bù kě sī yì wěn hé', 1, 838, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2810, 6, 2, 5, 15, '明显', NULL, 'míng xiǎn', 1, 835, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2811, 6, 2, 5, 15, '无独有偶', NULL, 'wú dú yǒu ǒu', 2, 836, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2812, 6, 2, 5, 15, '偶然', NULL, 'ǒu rán', 1, 839, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2813, 6, 2, 5, 15, '文献', NULL, 'wén xiàn', 1, 840, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2814, 6, 2, 5, 15, '系统', NULL, 'xì tǒng', 1, 842, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2815, 6, 2, 5, 15, '整理', NULL, 'zhěng lǐ', 1, 843, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2816, 6, 2, 5, 15, '灵感', NULL, 'líng gǎn', 1, 845, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2817, 6, 2, 5, 15, '机遇', NULL, 'jī yù', 1, 846, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2818, 6, 2, 5, 16, '机器', NULL, 'jī qì', 1, 847, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2819, 6, 2, 5, 15, '无聊', NULL, 'wú liáo', 1, 837, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2820, 6, 2, 5, 16, '钟楼', NULL, 'zhōng lóu', 1, 848, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2821, 6, 2, 5, 15, '见微知著', NULL, 'jiàn wēi zhī zhù', 2, 844, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2822, 6, 2, 5, 16, '盲人', NULL, 'máng rén', 1, 851, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2823, 6, 2, 5, 15, '证据', NULL, 'zhèng jù', 1, 841, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2824, 6, 2, 5, 16, '清脆', NULL, 'qīng cuì', 1, 853, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2825, 6, 2, 5, 16, '单调', NULL, 'dān diào', 1, 854, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2826, 6, 2, 4, 11, '占据', NULL, 'zhàn jù', 1, 807, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2827, 6, 2, 5, 16, '洪亮', NULL, 'hóng liàng', 1, 849, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2828, 6, 2, 5, 16, '街心', NULL, 'jiē xīn', 1, 850, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2829, 6, 2, 5, 15, '领域', NULL, 'lǐng yù', 1, 829, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2830, 6, 2, 4, 12, '责任', NULL, 'zé rèn', 1, 822, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2831, 6, 2, 5, 16, '齿轮', NULL, 'chǐ lún', 1, 857, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2832, 6, 2, 5, 16, '请求', NULL, 'qǐng qiú', 1, 855, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2833, 6, 2, 5, 16, '加速', NULL, 'jiā sù', 1, 856, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2834, 6, 2, 5, 16, '玻璃', NULL, 'bō lí', 1, 858, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2835, 6, 2, 5, 16, '恐怖', NULL, 'kǒng bù', 1, 861, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2836, 6, 2, 5, 16, '唯恐', NULL, 'wéi kǒng', 1, 859, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2837, 6, 2, 5, 16, '蟋蟀', NULL, 'xī shuài', 1, 863, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2838, 6, 2, 5, 16, '丑恶', NULL, 'chǒu è', 1, 860, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2839, 6, 2, 4, 11, '安定', NULL, 'ān dìng', 1, 806, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2840, 6, 2, 5, 16, '坚硬', NULL, 'jiān yìng', 1, 852, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2841, 6, 2, 3, 9, '明媚', NULL, 'míng mèi', 1, 773, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2842, 6, 2, 5, 16, '证实', NULL, 'zhèng shí', 1, 862, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese` VALUES (2843, 6, 2, 3, 9, '荒凉', NULL, 'huāng liáng', 1, 790, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_chinese_poetry
-- ----------------------------
DROP TABLE IF EXISTS `app_chinese_poetry`;
CREATE TABLE `app_chinese_poetry`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sys_id` int(11) NOT NULL COMMENT '系统ID',
  `grade` tinyint(4) NULL DEFAULT NULL COMMENT '年级',
  `term` tinyint(4) NULL DEFAULT NULL COMMENT '学期',
  `unit` tinyint(4) NULL DEFAULT NULL COMMENT '单元',
  `category_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `dynasty` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '朝代',
  `author` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `content` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `pinyin` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `comment` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注释',
  `translation` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '译文',
  `child_category_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类1',
  `background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景',
  `emotion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表达情感',
  `truth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '道理',
  `word_search` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询字',
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提问',
  `must_write` bit(1) NULL DEFAULT NULL COMMENT '默写',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_sys_id`(`sys_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '诗词与日积月累汇总表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_chinese_poetry
-- ----------------------------
INSERT INTO `app_chinese_poetry` VALUES (16, 0, 4, 1, NULL, '1', '鹿柴', '唐', '王维', '空山不见人，但闻人语响。\r\n\r\n返景入深林，复照青苔上。', 'kōng shān bú jiàn rén ， dàn wén rén yǔ xiǎng 。 \r \n \r \n fǎn jǐng rù shēn lín ， fù zhào qīng tái shàng 。', '鹿柴（zhài）：王维在辋川别业的胜景之一（在今陕西省蓝田县西南）。柴：通“寨”、“砦”，用树木围成的栅栏。\r\n但：只。\r\n返景（yǐng）：同“返影”，太阳将落时通过云彩反射的阳光。\r\n复：又。', '幽静的山谷里看不见人，只听到人说话的声音。落日的影晕映入了深林，又照在幽暗处的青苔上。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (17, 0, 4, 1, NULL, '1', '暮江吟', '唐', '白居易', '一道残阳铺水中，半江瑟瑟半江红。\r\n\r\n可怜九月初三夜，露似真珠月似弓。', 'yí dào cán yáng pù shuǐ zhōng ， bàn jiāng sè sè bàn jiāng hóng 。 \r \n \r \n kě lián jiǔ yuè chū sān yè ， lù sì zhēn zhū yuè sì gōng 。', '暮江吟：黄昏时分在江边所作的诗。吟，古代诗歌的一种形式。\r\n残阳：快落山的太阳的光。也指晚霞。\r\n瑟瑟：原意为碧色珍宝，此处指碧绿色 。\r\n可怜：可爱。\r\n九月初三：农历九月初三的时候。\r\n真珠：即珍珠。\r\n月似弓：农历九月初三，上弦月，其弯如弓。', '快要落山的夕阳，霞光柔和的铺在江水上，江水一半碧绿，一半艳红。\r\n最可爱的是那九月初三之夜，露珠似颗颗珍珠，朗朗新月形如弯弓。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (18, 0, 4, 1, NULL, '1', '题西林壁', '宋', '苏轼', '横看成岭侧成峰，远近高低各不同。\r\n\r\n不识庐山真面目，只缘身在此山中。', 'héng kàn chéng lǐng cè chéng fēng ， yuǎn jìn gāo dī gè bù tóng 。 \r \n \r \n bù shí lú shān zhēn miàn mù ， zhī yuán shēn zài cǐ shān zhōng 。', '题西林壁：写在西林寺的墙壁上。西林寺在庐山西麓。题：书写，题写。西林：西林寺，在江西庐山。\r\n横看：从正面看。庐山总是南北走向，横看就是从东面西面看.\r\n侧：侧面。\r\n各不同：各不相同。\r\n不识：不能认识，辨别。\r\n真面目：指庐山真实的景色，形状。\r\n缘：因为；由于。\r\n此山：这座山，指庐山。\r\n西林：西林寺，在现在江西省的庐山上。这首诗是题在寺里墙壁上的。', '从正面、侧面看庐山山岭连绵起伏、山峰耸立，从远处、近处、高处、低处看都呈现不同的样子。之所以辨不清庐山真正的面目，是因为我身处在庐山之中。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (19, 0, 4, 1, NULL, '1', '雪梅', '宋', '卢钺', '梅雪争春未肯降，骚人搁笔费评章。\r\n\r\n梅须逊雪三分白，雪却输梅一段香。', 'méi xuě zhēng chūn wèi kěn jiàng ， sāo rén gē bǐ fèi píng zhāng 。 \r \n \r \n méi xū xùn xuě sān fēn bái ， xuě què shū méi yí duàn xiāng 。', '降（xiáng）：服输。\r\n骚人：诗人。\r\n阁笔：放下笔。阁，同“搁”放下。\r\n评章：评议。这里指评议梅与雪的高下。', '梅花和雪花都认为各自占尽了春色，谁也不肯服输。文人骚客难以评论高下，只得搁笔好好思量。\r\n梅花须逊让雪花三分晶莹洁白，雪花却输给梅花一段清香。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (20, 0, 4, 1, NULL, '1', '嫦娥', '唐', '李商隐', '云母屏风烛影深，长河渐落晓星沉。\r\n\r\n嫦娥应悔偷灵药，碧海青天夜夜心。', 'yún mǔ píng fēng zhú yǐng shēn ， cháng hé jiàn luò xiǎo xīng chén 。 \r \n \r \n cháng é yìng huǐ tōu líng yào ， bì hǎi qīng tiān yè yè xīn 。', '常娥：原作“姮娥”，今作“嫦娥”，神话中的月亮女神，传说是夏代东夷首领后羿的妻子。\r\n云母屏风：以云母石制作的屏风。云母，一种矿物，板状，晶体透明有光泽，古代常用来装饰窗户、屏风等物。\r\n深：暗淡。\r\n长河：银河。\r\n晓星：晨星。或谓指启明星，清晨时出现在东方。\r\n灵药：指长生不死药。\r\n碧海青天：指嫦娥的枯燥生活，只能见到碧色的海，深蓝色的天。碧海：形容蓝天苍碧如同大海。\r\n夜夜心：指嫦娥每晚都会感到孤单。', '云母屏风上烛影暗淡，银河渐渐斜落晨星也隐没低沉。嫦娥应该后悔偷取了长生不老之药，如今空对碧海青天夜夜孤寂。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (21, 0, 4, 1, NULL, '1', '出塞', '唐', '王昌龄', '秦时明月汉时关，万里长征人未还。\r\n\r\n但使龙城飞将在，不教胡马度阴山。\r\n\r\n秦时明月汉时关，万里长征人未还。\r\n\r\n但使龙城飞将在，不教胡马度阴山。\r\n\r\n秦时明月汉时关，万里长征人未还。\r\n\r\n但使龙城飞将在，不教胡马度阴山。', 'qín shí míng yuè hàn shí guān ， wàn lǐ cháng zhēng rén wèi hái 。 \r \n \r \n dàn shǐ lóng chéng fēi jiāng zài ， bú jiào hú mǎ dù yīn shān 。 \r \n \r \n qín shí míng yuè hàn shí guān ， wàn lǐ cháng zhēng rén wèi hái 。 \r \n \r \n dàn shǐ lóng chéng fēi jiāng zài ， bú jiào hú mǎ dù yīn shān 。 \r \n \r \n qín shí míng yuè hàn shí guān ， wàn lǐ cháng zhēng rén wèi hái 。 \r \n \r \n dàn shǐ lóng chéng fēi jiāng zài ， bú jiào hú mǎ dù yīn shān 。', '但使：只要。\r\n\r\n不教：不叫，不让。教，让。\r\n\r\n胡马：指侵扰内地的外族骑兵。\r\n\r\n度：越过。在漫长的边防线上，战争一直没有停止过，去边防线打仗的战士也还没有回来。 要是攻袭龙城的大将军卫青和飞将军李广今天还依然健在，绝不会让敌人的军队翻过阴山。', '依旧是秦汉时期的明月和边关，守边御敌鏖战万里征人未回还。\r\n\r\n倘若龙城的飞将李广如今还在，绝不让匈奴南下牧马度过阴山。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (22, 0, 4, 1, NULL, '1', '凉州词', '\r\n唐', '王翰', '葡萄美酒夜光杯，欲饮琵琶马上催。\r\n\r\n醉卧沙场君莫笑，古来征战几人回？', 'pú táo měi jiǔ yè guāng bēi ， yù yǐn pí pá mǎ shàng cuī 。 \r \n \r \n zuì wò shā chǎng jūn mò xiào ， gǔ lái zhēng zhàn jǐ rén huí ？', '欲：将要。\r\n\r\n琵琶：这里指作战时用来发出号角的声音时用的。\r\n\r\n催：催人出征；也有人解作鸣奏助兴。\r\n\r\n沙场：平坦空旷的沙地，古时多指战场。\r\n\r\n君：你。\r\n\r\n征战：打仗。', '酒筵上甘醇的葡萄美酒盛满在夜光杯之中，正要畅饮时，马上琵琶也声声响起，仿佛催人出征。\r\n\r\n如果醉卧在沙场上，也请你不要笑话，古来出外打仗的能有几人返回家乡？', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (23, 0, 4, 1, NULL, '1', '夏日绝句\r\n\r\n', '宋', '李清照', '生当作人杰，死亦为鬼雄。\r\n\r\n至今思项羽，不肯过江东。', 'shēng dàng zuò rén jié ， sǐ yì wèi guǐ xióng 。 \r \n \r \n zhì jīn sī xiàng yǔ ， bù kěn guò jiāng dōng 。', '人杰：人中的豪杰。汉高祖曾称赞开国功臣张良、萧何、韩信是“人杰”。\r\n\r\n鬼雄：鬼中的英雄。屈原《国殇》：“身既死兮神以灵，魂魄毅兮为鬼雄。”\r\n\r\n项羽：秦末下相（今江苏宿迁）人。曾领导起义军消灭秦军主力，自立为西楚霸王。后被刘邦打败，突围至乌江（在今安徽和县），自刎而死。', '活着的当作人中的豪杰，\r\n\r\n死了也应是鬼中的英雄。\r\n\r\n人们到现在还思念项羽，\r\n\r\n只因他不肯偷生回江东。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (24, 0, 4, 1, NULL, '1', '别董大\r\n\r\n', '唐', '高适', '千里黄云白日曛，北风吹雁雪纷纷。\r\n\r\n莫愁前路无知己，天下谁人不识君？', 'qiān lǐ huáng yún bái rì xūn ， běi fēng chuī yàn xuě fēn fēn 。 \r \n \r \n mò chóu qián lù wú zhī jǐ ， tiān xià shuí rén bù shí jūn ？', '董大：唐玄宗时著名的琴客董庭兰。在兄弟中排行第一，故称“董大”。\r\n\r\n曛：昏暗。\r\n\r\n君：指的是董大。', '千里黄云蔽天日色暗昏昏，北风吹着归雁大雪纷纷。\r\n\r\n不要担心前路茫茫没有知己，普天之下哪个不识君？', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (25, 0, 4, 1, NULL, '3', NULL, NULL, NULL, '好问则裕，自用则小。——《尚书》\r\n\r\n博学之，审问之，慎思之，明辨之，笃行之。——《礼记》\r\n\r\n智能之士，不学不成，不问不知。——王充\r\n\r\n人非生而知之者，孰能无惑?——韩愈', 'hào wèn zé yù ， zì yòng zé xiǎo 。 — — 《 shàng shū 》 \r \n \r \n bó xué zhī ， shěn wèn zhī ， shèn sī zhī ， míng biàn zhī ， dǔ xíng zhī 。 — — 《 lǐ jì 》 \r \n \r \n zhì néng zhī shì ， bù xué bù chéng ， bú wèn bù zhī 。 — — wáng chōng \r \n \r \n rén fēi shēng ér zhī zhī zhě ， shú néng wú huò ? — — hán yù', '', '勤学好问，学到的东西就多；骄傲自大，学到的东西就少。\r\n\r\n要博学多才，就要对学问详细地询问，彻底搞懂，要慎重地思考，要明白地辨别，要切实地力行。出自《小戴礼记、小宋礼记》。\r\n\r\n再聪明的人,不学他不会有成就,不问他永远不会知道。 \r\n\r\n人不是生出来就都懂得许多道理的，谁能没有疑惑呢?', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (26, 0, 4, 1, NULL, '3', NULL, NULL, NULL, '立了秋，把扇丢。\r\n\r\n二八月，乱穿衣。\r\n\r\n夏雨少，秋霜早。\r\n\r\n八月里来雁门开，雁儿脚上带霜来。\r\n\r\n一场秋雨一场寒，十场秋雨要穿棉。\r\n\r\n八月暖，九月温，十月还有小阳春。', 'lì le qiū ， bǎ shàn diū 。 \r \n \r \n èr bā yuè ， luàn chuān yī 。 \r \n \r \n xià yǔ shǎo ， qiū shuāng zǎo 。 \r \n \r \n bā yuè lǐ lái yàn mén kāi ， yàn ér jiǎo shàng dài shuāng lái 。 \r \n \r \n yì chǎng qiū yǔ yì chǎng hán ， shí chǎng qiū yǔ yào chuān mián 。 \r \n \r \n bā yuè nuǎn ， jiǔ yuè wēn ， shí yuè hái yǒu xiǎo yáng chūn 。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (27, 0, 4, 1, NULL, '2', '精卫填海', NULL, NULL, '炎帝之少女，名曰女娃。女娃游于东海，溺而不返，故为精卫，常衔西山之木石，以堙于东海。', 'yán dì zhī shào nǚ ， míng yuē nǚ wá 。 nǚ wá yóu yú dōng hǎi ， nì ér bù fǎn ， gù wèi jīng wèi ， cháng xián xī shān zhī mù shí ， yǐ yīn yú dōng hǎi 。', '炎帝之少女：炎帝的小女儿。\r\n\r\n溺：溺水，淹没。\r\n\r\n故：因此。\r\n\r\n堙：填塞。', '炎帝的小女儿，名叫女娃。有一次，女娃去东海游玩，溺水身亡，再也没有回来，因此化为精卫鸟。经常叼着西山上的树枝和石块，用来填塞东海。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (28, 0, 4, 1, NULL, '3', '', NULL, NULL, '尺有所短，寸有所长。\r\n\r\n机不可失，时不再来。\r\n\r\n差之毫厘，谬以千里。\r\n\r\n病从口入，祸从口出。\r\n\r\n一言既出，驷马难追。\r\n\r\n比上不足，比下有余。', 'chǐ yǒu suǒ duǎn ， cùn yǒu suǒ cháng 。 \r \n \r \n jī bù kě shī ， shí bú zài lái 。 \r \n \r \n chà zhī háo lí ， miù yǐ qiān lǐ 。 \r \n \r \n bìng cóng kǒu rù ， huò cóng kǒu chū 。 \r \n \r \n yì yán jì chū ， sì mǎ nán zhuī 。 \r \n \r \n bǐ shàng bù zú ， bǐ xià yǒu yú 。', NULL, '比喻人或事物各有其长处和短处。出自战国·楚·屈原《卜居》。\r\n\r\n指时机难得，必需抓紧，不可错过。作宾语、分句用；指时机难得，必需抓紧。\r\n\r\n指开始时虽然相差很微小，结果会造成很大的错误。\r\n\r\n指病毒常常因饮食不注意而入侵，灾祸往往因说话不谨慎而招致。\r\n\r\n既：已经。驷马：古代同驾一辆车的四匹马；或套着四匹马的车：～介（由四匹披甲的马所驾的战车）。一句话说出了口，就是套上四匹骏马拉的车也难追上。指话说出口，就不能再收回，一定要算数。\r\n\r\n意思是赶不上前面的，却超过了后面的。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (29, 0, 4, 1, NULL, '2', '王戎不取道旁李', NULL, NULL, '王戎七岁，尝与诸小儿游。看道边李树多子折枝，诸儿竞走取之，唯戎不动。人问之，答曰：“树在道边而多子，此必苦李。”取之，信然。', 'wáng róng qī suì ， cháng yǔ zhū xiǎo ér yóu 。 kàn dào biān lǐ shù duō zǐ zhé zhī ， zhū ér jìng zǒu qǔ zhī ， wéi róng bú dòng 。 rén wèn zhī ， dá yuē ： “ shù zài dào biān ér duō zǐ ， cǐ bì kǔ lǐ 。 ” qǔ zhī ， xìn rán 。', '王戎：西晋琅琊（今属山东）人，自幼聪明过人，为“竹林七贤”之一，官至尚书令，司徒。\r\n\r\n尝：曾经。\r\n\r\n诸：众多。\r\n\r\n游：嬉戏玩耍。\r\n\r\n子：李子。\r\n\r\n折枝：压弯树枝。\r\n\r\n竞走：争相地跑过去。\r\n\r\n竞：争逐。\r\n\r\n走：跑。\r\n\r\n唯：只有。\r\n\r\n信然：确实如此。', '\r\n王戎七岁的时候，曾经和许多小孩一起嬉戏玩耍。他们看见路边李子树上果实累累，把树枝都压弯了。许多孩子都争相跑过去摘李子，只有王戎没有动。有人问他为什么不去摘李子，王戎回答说：“李树在路边竟然还有这么多李子，这一定是苦李子。”摘来一尝，的确如此。', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (30, 0, 4, 1, NULL, '4', NULL, NULL, NULL, '眉清目秀 亭亭玉立 明眸皓齿 文质彬彬\r\n\r\n相貌堂堂 威风凛凛 膀大腰圆 浓眉大眼\r\n\r\n容光焕发 鹤发童颜 慈眉善目 老态龙钟', 'méi qīng mù xiù   tíng tíng yù lì   míng móu hào chǐ   wén zhì bīn bīn \r \n \r \n xiàng mào táng táng   wēi fēng lǐn lǐn   bǎng dà yāo yuán   nóng méi dà yǎn \r \n \r \n róng guāng huàn fā   hè fà tóng yán   cí méi shàn mù   lǎo tài lóng zhōng', '形容人的容貌清秀不俗气。\r\n\r\n形容女子身材细长。也形容花木等形体挺拔。\r\n\r\n明亮的眼睛，洁白的牙齿。形容女子容貌美丽，也指美丽的女子。出自三国 魏·曹植《洛神赋》。\r\n\r\n原是形容人既文雅又朴实，后形容人文雅有礼貌。出自《论语·雍也》。\r\n\r\n是形容人的仪表端庄帅气，举止大方。出自《三国志通俗演义》。\r\n\r\n形容声势或气派使人敬畏、恐惧。出自《三国演义》。\r\n\r\n形容魁梧粗壮的人。出自《彭公案》。\r\n\r\n又黑又密的眉毛，大大的眼睛；形容眉目有神的人。出自《二十年目睹之怪现状》。\r\n\r\n是脸上的光彩四射，形容身体好，精神饱满。出自方纪《歌声和笛音》。\r\n\r\n仙鹤羽毛般雪白的头发，儿童般红润的面色。形容老年人气色好。出自唐·田颖《梦游罗浮》。\r\n\r\n形容人的容貌一副善良的样子，出自《老张的哲学》。\r\n\r\n指行动不灵便。形容年老体衰，行动不灵便。出自唐·李端《赠薛戴》。', '', NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (71, 4264, 4, 2, 6, '2', '凿壁偷光', '', ' ', '匡衡字稚圭，勤学而无烛。邻舍有烛而不逮，衡乃穿壁引其光，以书映光而读之。', 'kuāng héng zì zhì guī ， qín xué ér wú zhú 。lín shè yǒu zhú ér bù dǎi ， héng nǎi chuān bì yǐn qí guāng ， yǐ shū yìng guāng ér dú zhī 。', '匡衡:东海承（今山东枣庄东南）人，西汉经学家，官至丞相;逮:（dài）到，及;穿壁:在墙上凿洞;', '西汉时期有一个叫匡衡的人，他勤奋好学，但家中贫困，晚上没有灯光供他读书。他看到邻居家的灯光透过墙壁照过来，于是就在墙上凿了一个洞，借着邻居家的灯光读书', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-26 18:54:47', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (72, 4265, 4, 2, 6, '2', '程门立雪', '', ' ', '又见程颐于洛，时盖年四十矣。一日见颐，颐偶瞑坐，时与游酢侍立不去，颐既觉，则门外雪深一尺矣。', 'yòu jiàn chéng yí yú luò ， shí gài nián sì shí yǐ 。yí rì jiàn yí ， yí ǒu míng zuò ， shí yǔ yóu cù shì lì bú qù ， yí jì jué ， zé mén wài xuě shēn yì chǐ yǐ 。', '盖:大概;偶:动词，假借为遇;瞑坐:打瞌睡;瞑:闭上眼睛;侍立:恭敬地站在一旁;去:离开;颐既觉:程颐睡醒后;', '杨时到洛阳求见程颐，杨时大概当时有四十岁了。一天拜见程颐的时候，程颐偶尔坐着打瞌睡。杨时与游酢站在门外等着没有离开。等到程颐醒后，门外积雪已经一尺多厚了。', NULL, NULL, '', '学生恭敬求教，比喻尊师重教', '', '', b'0', 'admin', '2024-05-26 18:55:56', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (78, 4273, 4, 2, 7, '0', '墨梅', '元', '王冕', '我家洗砚池头树，朵朵花开淡墨痕。不要人夸颜色好，只留清气满乾坤。', 'wǒ jiā xǐ yàn chí tóu shù ， duǒ duǒ huā kāi dàn mò hén 。bú yào rén kuā yán sè hǎo ， zhī liú qīng qì mǎn qián kūn 。', '洗砚池:传说会稽蕺山下有晋朝大书法家王羲之的洗砚池，池塘的水都染黑了。王冕称他家有家有洗砚池，意思是自己也像王羲之那样勤奋;池头:池边;头 :边上;淡墨:水墨画中将墨色分为四种，如，清墨、淡墨、浓墨、焦墨。这里是说那朵朵盛开的梅花，是用淡淡的墨迹点化成的;痕:痕迹。清气:梅花的清香之气;满乾坤:弥漫在天地间;满:弥漫;乾坤:天地间', '我家洗砚池边有一棵梅树，朵朵盛开的梅花都像是淡淡的墨痕点染而成。它不需要别人去夸赞它的颜色好看，只需要梅花的清香气味弥漫在这天地之间。', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-26 19:09:05', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (81, 4272, 4, 2, 7, '0', '塞下曲', '唐', '卢纶', '月黑雁飞高，单于夜遁逃。欲将轻骑逐，大雪满弓刀。', 'yuè hēi yàn fēi gāo ， chán yú yè dùn táo 。yù jiāng qīng qí zhú ， dà xuě mǎn gōng dāo 。', '单于（chán yú ）:匈奴的首领，这里指入侵者的最高统帅;遁:逃走;将:率领;轻骑:轻装快速的骑兵;逐:追赶;满:沾满', '死寂之夜，乌云遮月，天边大雁惊飞，单于的军队想要趁着夜色悄悄潜逃。正想要带领轻骑兵一路追赶，大雪纷纷扬扬落满了身上的弓刀。', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-26 21:14:46', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (82, 4231, 4, 2, 3, '4', '古代文人名言', '', ' ', '路漫漫其修远兮，吾将上下而求索。采菊东篱下，悠然见南山。春眠不觉晓，处处闻啼鸟。风急天高猿啸哀，渚清沙白鸟飞回。国破山河在，城春草木深。师者，所以传道受业解惑也。山不在高，有仙则名;水不在深，有龙则灵。先天下之忧而忧，后天下之乐而乐。落红不是无情物，化作春泥更护花。', 'lù màn màn qí xiū yuǎn xī ， wú jiāng shàng xià ér qiú suǒ 。cǎi jú dōng lí xià ， yōu rán jiàn nán shān 。chūn mián bù jué xiǎo ， chù chù wén tí niǎo 。fēng jí tiān gāo yuán xiào āi ， zhǔ qīng shā bái niǎo fēi huí 。guó pò shān hé zài ， chéng chūn cǎo mù shēn 。shī zhě ， suǒ yǐ chuán dào shòu yè jiě huò yě 。shān bú zài gāo ， yǒu xiān zé míng ; shuǐ bú zài shēn ， yǒu lóng zé líng 。xiān tiān xià zhī yōu ér yōu ， hòu tiān xià zhī lè ér lè 。luò hóng bú shì wú qíng wù ， huà zuò chūn ní gèng hù huā 。', '《离骚》战国 屈原;饮酒(其五) 东晋 陶渊明;《春晓》唐 孟浩然;《登高》唐 杜甫;《春望》唐 杜甫;《师说》唐 韩愈;《陋室铭》唐 刘禹锡;《岳阳楼记》范仲淹;《己亥杂诗·其五》龚自珍;', '前方的道路漫长而又遥远啊，我将不遗余力地上下追求探索。表达了诗人在人生道路上不断探索和追求真理的决心。在东篱之下采摘菊花，悠然间，那远处的南山映入眼帘。描绘了他归隐田园后悠闲自得的生活状态，展现了他超脱世俗、追求自然之美的情怀。描绘了春天的早晨，诗人被鸟儿的啼叫声唤醒，表达了诗人对春天的喜爱和珍惜。风急天高，猿猴啼叫显得十分悲哀;水清沙白的河洲上有鸟儿在盘旋飞翔。描绘了一幅萧瑟的秋景图，表达了诗人内心的孤独和凄凉。国都沦陷只有山河依旧，春日的城区里荒草丛生。表达了对国家衰亡的悲痛和对故土的深深眷恋。强调了教师的重要性和职责，即传授道理、教授学业、解答疑惑。山不在于它的高度，只要山上有神仙，它就会出名;水不在于它的深度，只要水里有龙，它就会显得有灵气。以山水作比喻，来说明一个道理:对于一个事物，我们不必过分关注它的外在形式或表面现象，而应该注重它的内在实质或内容。在天下人忧愁之前先忧愁，在天下人快乐之后才快乐。体现了作者忧国忧民的情怀和崇高的政治抱负。这句话表达了作者对自然的深刻理解，即使花朵凋零，它们的生命也没有结束，而是化作春泥，滋养着新的生命。', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-27 13:51:58', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (92, 4223, 4, 2, 2, '6', '识字加油站', '', '', '滨—宾(     ) 洁—吉(     ) 减—咸(     )挑—兆(     ) 挺—廷(     ) 预—矛(     )中—肿(     ) 介—阶(     ) 止—趾(      )凡—巩(     ) 正—政(     ) 刘—浏(     )', 'bīn — bīn (           )   jié — jí (           )   jiǎn — xián (           )tiāo — zhào (           )   tǐng — tíng (           )   yù — máo (           )zhōng — zhǒng (           )   jiè — jiē (           )   zhǐ — zhǐ (             )fán — gǒng (           )   zhèng — zhèng (           )   liú — liú (           )', '', '滨（海滨）—宾（宾馆） 洁（洁白）—吉（吉利） 减（减少）—咸（咸菜） 挑（挑战）—兆（预兆） 挺（挺立）—廷（宫廷） 预（预备）—矛（赠予）中（中国）—肿（肿胀） 介（介意）—阶（台阶） 止（停止）—趾（脚趾） 凡（平凡）—巩（巩固） 正（正好）—政（政府） 刘（刘海）—浏（浏览）', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 09:13:19', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (94, 4282, 4, 2, 8, '7', '表达情感', '', '', '《四时田园杂兴》《宿新市徐公店》《清平乐·村居》《乡下人家》《三月桃花水》《短诗三首》《繁星（七一）》《繁星（一五九）》《绿》《白桦》《在天晴了的时候》《猫》《母鸡》《白鹅》《海上日出》《囊萤夜读》《铁杵成针》《芙蓉楼送辛渐》《塞下曲》《墨梅》《宝葫芦的秘密（节选）》', '《 sì shí tián yuán zá xīng 》《 sù xīn shì xú gōng diàn 》《 qīng píng lè · cūn jū 》《 xiāng xià rén jiā 》《 sān yuè táo huā shuǐ 》《 duǎn shī sān shǒu 》《 fán xīng （ qī yī ） 》《 fán xīng （ yī wǔ jiǔ ） 》《 lǜ 》《 bái huà 》《 zài tiān qíng le de shí hòu 》《 māo 》《 mǔ jī 》《 bái é 》《 hǎi shàng rì chū 》《 náng yíng yè dú 》《 tiě chǔ chéng zhēn 》《 fú róng lóu sòng xīn jiàn 》《 sāi xià qū 》《 mò méi 》《 bǎo hú lu de mì mì （ jié xuǎn ） 》', '温馨:温暖、体贴依恋:情感上的依赖和信任', '对农村生活的喜爱之情对田园生活的赞美和对儿童的喜爱之情。对幸福和谐安居乐业乡村生活的欣赏和赞美之情。对乡下人家的欣赏和喜爱之情。对桃花水的喜爱和赞美之情。对母爱、童心和自然的赞美。对母亲的依恋和母爱的温馨。对母亲的依恋。对大自然的喜爱和赞美。对家乡和大自然的热爱之情。对大自然的热爱和赞美之情，也表现了作者对恬淡、超脱的生活的向往。对猫的喜爱之情。对母爱的赞颂之情对白鹅的喜爱。对这一自然奇观的喜爱之情及热爱大自然、追求光明的思想感情。无论环境有多么恶劣，我们都要勤奋苦学，这样才会有所成就。只要有毅力、肯下苦功，事情就能成功。送别诗，表达了诗人与友人的离情别意，以及诗人洁身自好的志向和品格。边塞诗，诗人描述了一个精彩的边塞战斗场景，赞扬了戍边将士的英勇威武，字里午间充溢着英雄气概。题画诗，借墨梅自喻，表达诗人的人生态度以及不向世俗献媚的高尚情操。幸福要靠自己的努力。', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 09:42:55', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (95, 4283, 4, 2, 8, '8', '表达品质', '', '', '《千年梦圆在今朝》《白桦》《猫》《母鸡》《白鹅》《小英雄雨来（节选）》《我们家的男子汉》《芦花鞋》《囊萤夜读》《铁杵成针》《“诺曼底号”遇难记》《墨梅》《黄继光》《宝葫芦的秘密（节选）》《巨人的花园》', '《 qiān nián mèng yuán zài jīn cháo 》《 bái huà 》《 māo 》《 mǔ jī 》《 bái é 》《 xiǎo yīng xióng yǔ lái （ jié xuǎn ） 》《 wǒ men jiā de nán zǐ hàn 》《 lú huā xié 》《 náng yíng yè dú 》 《 tiě chǔ chéng zhēn 》《 “ nuò màn dǐ hào ” yù nàn jì 》《 mò méi 》《 huáng jì guāng 》《 bǎo hú lu de mì mì （ jié xuǎn ） 》《 jù rén de huā yuán 》', '', '勇于探索、不懈努力、团结协作。高洁、挺拔、不畏严寒。古怪，淘气可爱。负责、慈爱、勇敢、辛苦。高傲。机智勇敢、热爱祖国、坚强不屈率真、自主独立、沉着勇敢。吃苦耐劳、勤快能干、为他人着想。勤奋学习、坚持不懈。忠于职守、舍己救人。高洁、清秀、淡雅、朴素。英勇顽强、视死如归、奋不顾身。淘气、顽皮、好奇的、爱听故事的、充满童真。纯真、善良、充满活力。', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 09:54:50', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (105, 4275, 4, 2, 7, '5', '描写心情', '', '', '悲戚 焦躁不安 心急如焚 ', 'bēi qī jiāo zào bù ān xīn jí rú fén ', '', '悲痛哀伤。 指焦急烦躁、心神不宁。 心里急得像着火一样，形容非常着急。 ', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 12:47:02', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (106, 4222, 4, 2, 2, '5', '计算机', '', '', '云技术 多媒体 互联网 克隆 桌面 窗口 潜水 文件夹 ', 'yún jì shù duō méi tǐ hù lián wǎng kè lóng zhuō miàn chuāng kǒu qián shuǐ wén jiàn jiá ', '匿名:使用虚拟身份，不透露真实姓名或个人信息，以保护自己的隐私 ', '云技术是一种将数据和计算任务存储在远程服务器上，而不是本地计算机上的技术。 多媒体是指结合文本、声音、图像、动画等多种媒体形式的信息展示方式。 互联网是一个由全球各地的计算机和网络设备相互连接而成的网络。 创建一个现有数据、文件、硬盘分区或整个硬盘的完全相同的副本。这个过程被称为克隆。 在计算机中，桌面是我们打开电脑后看到的屏幕界面，上面通常有各种图标和工具栏。 在计算机中，窗口是屏幕上用于显示和操作某个程序或文件的区域。 在互联网上，特别是在线社交媒体平台，匿名或伪装身份的个体积极参与并探索某个特定社区或话题，而不被其他用户所察觉。 在计算机中，文件夹用于存储和组织文件。 ', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 12:47:08', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (108, 4216, 4, 2, 1, '5', '描写农村', '', '', '肥沃 静谧 炊烟袅袅 依山傍水 鸡犬相闻 ', 'féi wò jìng mì chuī yān niǎo niǎo yī shān bàng shuǐ jī quǎn xiāng wén ', '', '农村的土地质量很好，含有适合植物生长的丰富养分和水分。这样的土地能够种植出更多的农作物 强调了农村的宁静、清幽和没有喧嚣打扰的特点;人们可以感受到一种宁静和放松，远离了城市的喧嚣和压力 形容烧火做饭时冒出的青烟缓缓上升，随风飘散。这个词语通常用来描绘乡村或家庭生活的宁静和平和。 形容建筑物或自然景色紧靠着山和水，环境优美，景色宜人。这个词语常用来形容风景秀丽的地区或是理想的居住地。 形容一个地方非常安静，连鸡鸣和狗吠的声音都能听得清清楚楚。这个词语常用来形容乡村或郊区的宁静和安详。 ', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 12:47:19', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (110, 4276, 4, 2, 7, '5', '人物品质', '', '', '和蔼 慷慨 贤惠 临危不惧 彬彬有礼 ', 'hé ǎi kāng kǎi xián huì lín wēi bú jù bīn bīn yǒu lǐ ', '', '性情温和，态度可亲。 充满正气，情绪激昂。大方，不吝啬 指妇女心地善良，通情达理，对人和蔼可亲。 面临着危险从容不迫，毫不畏惧。 形容文雅有礼貌的样子 ', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 12:49:21', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (111, 4242, 4, 2, 1, '5', '动物喻人', '', '', '千里马  老黄牛  百灵鸟  领头羊  小蜜蜂  纸老虎  变色龙  铁公鸡  应声虫  哈巴狗  ', 'qiān lǐ mǎ   lǎo huáng niú   bǎi líng niǎo   lǐng tóu yáng   xiǎo mì fēng   zhǐ lǎo hǔ   biàn sè lóng   tiě gōng jī   yìng shēng chóng   hǎ ba gǒu   ', '', '比喻有才干的人。 比喻默不作声、踏实工作的人。 比喻歌声甜润、清脆的歌手。 比喻在团队中起主导作用的人。 比喻勤劳的人。 比喻外强中干的人。外表看似强大，但内在却缺乏实力、底气不足的人或事物 比喻在生活中善于变化伪装的人，或者比喻立场不稳、见风使舵的人。 比喻吝啬钱财，一毛不拔的人。 比喻没有主见，随声附和的人。 比喻没有骨气、摇尾乞怜的人。 ', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 13:09:10', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (113, 4262, 4, 2, 6, '2', '铁杵成针', '', ' ', '磨针溪，在眉州象耳山下。 世传李白读书山中，未成，弃去。 过小溪，逢老媪，方磨铁杵，问之，曰:“欲作针。”。太白感其意，还卒业。 ', 'mó zhēn xī ， zài méi zhōu xiàng ěr shān xià 。 shì chuán lǐ bái dú shū shān zhōng ， wèi chéng ， qì qù 。 guò xiǎo xī ， féng lǎo ǎo ， fāng mó tiě chǔ ， wèn zhī ， yuē : “ yù zuò zhēn 。 ” tài bái gǎn qí yì ， hái zú yè 。 ', '眉州:地名，今四川省眉山一带; 世传:世世代代相传;成:完成;去:离开; 逢:碰上;媪:妇女的统称;方:正在;铁杵:用来舂米或捣衣的铁棒;欲:想要;感:被……感动;之:代词，指代老妇人在做的事 还卒业:回去完成了学业 ', ' 磨针溪是在眉州的象耳山脚下。世世代代相传李白在山中读书的时候，没有完成好自己的学业，就放弃学习离开了。他路过一条小溪，遇见一位老妇人在磨铁棒，于是问她在干什么，老妇人说:“我想把它磨成针。”。李白被她的精神感动，就回去完成学业。', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 13:38:03', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (121, 4243, 4, 2, 4, '6', '识字加油站', '', '', '杆—肝(     )—秆(     ) 消—俏(     )—峭(     )  捕—哺(     )—浦(     ) 轮—沦(     )—抡(     )  换—涣(     )—焕(     ) 骏—俊(     )—峻(     ) ', 'gān — gān )           ) — gǎn )           )   xiāo — qiào )           ) — qiào )           )   bǔ — bǔ )           ) — pǔ )           )   lún — lún )           ) — lūn )           )   huàn — huàn )           ) — huàn )           )   jùn — jùn )           ) — jùn )           ) ', '', '杆—肝(肝脏)—秆(麦秆) 消—俏(俏丽)—峭(陡峭)  捕—哺(哺育)—浦(黄浦江) 轮—沦(沦落)—抡(抡拳)  换—涣(涣散)—焕(焕发) 骏—俊(英俊)—峻(严峻) ', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 14:06:08', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (122, 4215, 4, 2, 1, '5', '描写城市', '', '', '繁华 璀璨 高楼林立 车水马龙 灯火辉煌 ', 'fán huá cuǐ càn gāo lóu lín lì chē shuǐ mǎ lóng dēng huǒ huī huáng ', '', '城市的经济、文化和人口等方面的繁荣和兴旺 在夜晚时灯光辉煌、光彩夺目，呈现出一种非常繁荣、美丽和充满活力的景象 形容城市中高层建筑密集，建筑物高耸入云，密密麻麻地排列在一起。这通常用来描述现代化的大都市景象。 形容车辆和行人密集，道路繁忙，交通状况非常繁忙和拥堵。这个词语常用来形容城市的繁华和热闹。 形容灯光璀璨，灯火通明，非常明亮。这通常用来描述城市夜晚的美丽景象，或者是庆祝活动的热闹场面。 ', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-28 14:07:59', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (141, 4214, 4, 2, 1, '1', '卜算子·咏梅', '', ' 毛泽东', '风雨送春归，飞雪迎春到。 已是悬崖百丈冰，犹有花枝俏。 俏也不争春，只把春来报。 待到山花烂漫时，她在丛中笑。 ', 'fēng yǔ sòng chūn guī ， fēi xuě yíng chūn dào 。 yǐ shì xuán yá bǎi zhàng bīng ， yóu yǒu huā zhī qiào 。 qiào yě bù zhēng chūn ， zhī bǎ chūn lái bào 。 dài dào shān huā làn màn shí ， tā zài cóng zhōng xiào 。 ', '冰:形容极度寒冷;犹:还，仍然;俏:俊俏，美好的样子 烂漫:颜色鲜明而美丽，花全部盛开的样子;丛中笑:百花盛开时，感到欣慰和高兴 ', '风雨把春天送归这里，飞舞的雪花又在迎接春天的来到。 已经是冰封雪冻最寒冷的时候，悬崖边上还盛开着俏丽的梅花。 梅花虽然俏丽，但并不炫耀自己，只是为了向人们报告春天到来的消息。 等到百花盛开的时候，她将会感到无比欣慰。 ', NULL, NULL, '', '', '', '', NULL, 'admin', '2024-05-28 21:38:44', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (147, 4211, 4, 2, 1, '0', '宿新市徐公店', '宋', '杨万里', '篱落疏疏一径深，树头新绿未成阴。 儿童急走追黄蝶，飞入菜花无处寻。 ', 'lí luò shū shū yí jìng shēn ， shù tóu xīn lǜ wèi chéng yīn 。 ér tóng jí zǒu zhuī huáng dié ， fēi rù cài huā wú chù xún 。 ', '篱落:篱笆;疏疏:稀疏，稀稀落落的样子;一径深:一条小路很远很远;深:深远;头:树枝头;未成阴:新叶还没有长得茂盛浓密，未形成树阴;阴:树叶茂盛浓密 急走:奔跑着、快追;走:是跑的意思;黄蝶:黄颜色的蝴蝶;无处:没有地方;寻:寻找 ', '在稀稀落落的篱笆旁，有一条小路伸向远方。小路旁边的树上花已经凋落了，而新叶却刚刚长出，还没有形成树阴。 儿童们奔跑着，追捕那翩翩飞舞的黄色蝴蝶。可是蝴蝶飞到黄色的菜花丛中后，孩子们就再也分不清、找不到它们了。 ', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-28 21:50:46', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (148, 4212, 4, 2, 1, '0', '四时田园杂兴（其二十五）', '宋', '范成大', '梅子金黄杏子肥，麦花雪白菜花稀。 日长篱落无人过，惟有蜻蜓蛱蝶飞。 ', 'méi zǐ jīn huáng xìng zǐ féi ， mài huā xuě bái cài huā xī 。 rì cháng lí luò wú rén guò ， wéi yǒu qīng tíng jiá dié fēi 。 ', '蛱蝶:蝴蝶的一种 ', '一树树梅子变得金黄，杏子也越长越大了;荞麦花一片雪白，油菜花倒显得稀稀落落。 白天长了，篱笆的影子随着太阳的升高变得越来越短，没有人经过;只有蜻蜓和蝴蝶绕着篱笆飞来飞去。 ', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-28 21:50:50', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (149, 4271, 4, 2, 7, '0', '芙蓉楼送辛渐', '唐', '王昌龄', '寒雨连江夜入吴，平明送客楚山孤。 洛阳亲友如相问，一片冰心在玉壶。 ', 'hán yǔ lián jiāng yè rù wú ， píng míng sòng kè chǔ shān gū 。 luò yáng qīn yǒu rú xiāng wèn ， yí piàn bīng xīn zài yù hú 。 ', '寒雨:秋冬时节的冷雨;连江:雨水与江面连成一片，形容雨很大;吴:古代国名，这里泛指江苏南部、浙江北部一带;平明:天亮的时候;客:指作者的好友辛渐;楚山:楚地的山。这里的楚也指南京一带，因为古代吴、楚先后统治过这里，所以吴、楚可以通称;孤:独自，孤单一人。 洛阳:现位于河南省西部、黄河南岸;冰心，比喻纯洁的心;玉壶，道教概念妙真道教义，专指自然无为虚无之心。 ', '迷蒙的烟雨，连夜洒遍吴地江天;清晨送走你，孤对楚山离愁无限！ 朋友啊，洛阳亲友若是问起我来;就说我依然冰心玉壶，坚守信念！ ', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-28 21:51:39', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (150, 4267, 4, 2, 6, '0', '独坐敬亭山', '唐', '李白', '众鸟高飞尽，孤云独去闲。 相看两不厌，只有敬亭山。 ', 'zhòng niǎo gāo fēi jìn ， gū yún dú qù xián 。 xiāng kàn liǎng bú yàn ， zhǐ yǒu jìng tíng shān 。 ', '尽:没有了;孤云:孤单的云彩;独去，独自去;闲:形容云彩飘来飘去，悠闲自在的样子 两不厌:指诗人和敬亭山而言;厌:满足 ', '群鸟高飞，直至无影无踪。一片孤云独自悠闲地飘去。 诗人与敬亭山相互凝视，彼此都不会感到厌倦。', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-28 21:51:43', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (151, 4261, 4, 2, 6, '2', '囊萤夜读', '', ' ', '胤恭勤不倦,博学多通。 家贫不常得油，夏月,则练囊盛数十萤火以照书，以夜继日焉。 ', 'yìn gōng qín bú juàn , bó xué duō tōng 。 jiā pín bù cháng dé yóu ， xià yuè , zé liàn náng shèng shù shí yíng huǒ yǐ zhào shū ， yǐ yè jì rì yān 。 ', '恭:谨慎 练囊:用白色绢子做袋;练:白绢,文中作动词用,用白绢做 ', '晋朝人车胤谨慎勤劳而不知疲倦,知识广博,学问精通。 (车胤)家境贫寒,不能经常得到香油(点灯,以便在灯下读书)。夏天的夜晚,(车胤)就用白绢做成(透光)的袋子,装几十个萤火虫照着书本,夜以继日地学习着。 ', NULL, NULL, '', '无论环境有多么恶劣,我们都要勤奋苦学,这样日后必有成就。', '', '', b'1', 'admin', '2024-05-28 21:51:46', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (152, 4241, 4, 2, 1, '0', '蜂', '唐', '罗隐', '不论平地与山尖，无限风光尽被占。 采得百花成蜜后，为谁辛苦为谁甜？ ', 'bú lùn píng dì yǔ shān jiān ， wú xiàn fēng guāng jìn bèi zhàn 。 cǎi dé bǎi huā chéng mì hòu ， wèi shuí xīn kǔ wèi shuí tián ？ ', '山尖:山峰;尽:都;占:占其所有 甜:醇香的蜂蜜 ', '无论是在平地，还是在那高山，哪里鲜花迎风盛开，哪里就有蜜蜂奔忙。 蜜蜂啊，你采尽百花酿成了花蜜，到底为谁付出辛苦，又想让谁品尝香甜？ ', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-28 21:51:50', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (154, 4221, 4, 2, 2, '0', '江畔独步寻花·其五', '唐', '杜甫', '黄师塔前江水东，春光懒困倚微风。 桃花一簇开无主，可爱深红爱浅红。 ', 'huáng shī tǎ qián jiāng shuǐ dōng ， chūn guāng lǎn kùn yǐ wēi fēng 。 táo huā yí cù kāi wú zhǔ ， kě ài shēn hóng ài qiǎn hóng 。 ', '黄师塔:黄师墓地;塔:墓地 主:主人 ', '黄师塔前那一江的碧波春水滚滚向东流，春天给人一种困倦让人想倚着春风小憩的感觉。 江畔盛开的那一簇无主的桃花映入眼帘，究竟是爱深红色的还是更爱浅红色的呢？ ', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-28 21:52:00', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (155, 4213, 4, 2, 1, '1', '清平乐·村居', '宋', '辛弃疾', '茅檐低小，溪上青青草。 醉里吴音相媚好，白发谁家翁媪？ 大儿锄豆溪东，中儿正织鸡笼。 最喜小儿亡赖，溪头卧剥莲蓬。 ', 'máo yán dī xiǎo ， xī shàng qīng qīng cǎo 。 zuì lǐ wú yīn xiāng mèi hǎo ， bái fà shuí jiā wēng ǎo ？ dà ér chú dòu xī dōng ， zhōng ér zhèng zhī jī lóng 。 zuì xǐ xiǎo ér wáng lài ， xī tóu wò bāo lián péng 。 ', '茅檐:茅屋的屋檐。 吴音:吴地的方言，作者当时住在信州)今上饶)，这一带的方言为吴音;相媚好:指相互逗趣，取乐;翁媪)ǎo):老翁、老妇 锄豆:锄掉豆田里的草;织:编织，指编织鸡笼 亡)wú)赖:这里指小孩顽皮、淘气;亡，通“无”;卧:趴。 ', '草屋的茅檐又低又小，溪边长满了碧绿的小草。 含有醉意的吴地方言，听起来温柔又美好，那满头白发的老人是谁家的呀？ 大儿子在溪东边的豆田锄草，二儿子正忙于编织鸡笼。 最令人喜爱的是小儿子，他正横卧在溪头草丛，剥着刚摘下的莲蓬。 ', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-28 21:52:06', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (156, 4232, 4, 2, 3, '3', '园地三', '', '', '诗和音乐一样，生命全在节奏。—朱光潜。诗是人类向未来寄发的信息，诗给人类以朝向理想的勇气。—艾青。诗是强烈感情的自然流露，它源于宁静中回忆起来的情感。—[英国]华兹华斯。', 'shī hé yīn yuè yí yàng ， shēng mìng quán zài jié zòu 。 — zhū guāng qián shī shì rén lèi xiàng wèi lái jì fā de xìn xī ， shī gěi rén lèi yǐ cháo xiàng lǐ xiǎng de yǒng qì 。 — ài qīng shī shì qiáng liè gǎn qíng de zì rán liú lù ， tā yuán yú níng jìng zhōng huí yì qǐ lái de qíng gǎn 。 — [ yīng guó ] huá zī huá sī ', '', '诗歌需要有鲜明的停顿和昂扬的节奏感，这与音乐所需要的节奏和旋律感是一致的。生命本身就是一个充满节奏的过程，从出生、成长、成熟到衰老，每一个阶段都有其独特的节奏。 通过诗歌，人类可以向未来传达自己的声音、经验和智慧，让后人从中汲取力量。诗歌具有强大的感染力和鼓舞力。人们可以找到坚持自己理想的勇气和动力，不断向前，追求更好的未来。 诗歌是情感的艺术，它最直接地表达了诗人的内心世界。“宁静”指的是一种内心的平静和安宁，是诗人在创作之前或创作过程中的一种心态。在这种状态下，诗人能够更好地回忆起过去的经历和情感，从中汲取灵感，并将这些情感转化为诗歌。 ', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-29 20:12:07', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (157, 4274, 4, 2, 7, '3', '园地七', '', '', '天行健,君子以自强不息。——《周易》。胜人者有力，自胜者强。——《老子》。不怨天，不尤人。——《论语》。生于忧患而死于安乐。——《孟子》。', 'tiān xíng jiàn , jūn zǐ yǐ zì qiáng bù xī 。 — — 《 zhōu yì 》 shèng rén zhě yǒu lì ， zì shèng zhě qiáng 。 — — 《 lǎo zǐ 》 bú yuàn tiān ， bù yóu rén 。 — — 《 lún yǔ 》 shēng yú yōu huàn ér sǐ yú ān lè 。 — — 《 mèng zǐ 》 ', '天:宇宙、自然或天命;行:运行、运转;健:刚强劲健;君子:有道德修养、有高尚品质的人;自强:自我奋发图强、努力向上;不息:表示永不停息、永不放弃。 生于忧患:强调了忧患意识对于个人成长和生存的重要性;死于安乐:警告人们过度安乐和享乐可能带来的危害 ', '比喻君子(有德之人)应该具有自强不息、不断奋斗、永不言败的精神。这种精神不仅要求个人在遭遇困难时不屈不挠，更要求个人在安逸的环境中也不忘初心，持续追求更高的目标和更好的自我。 仅仅战胜他人或外部环境显示出的力量是有限的，而能够战胜自己内心的弱点、恐惧、欲望等，实现自我提升和超越的人，才是真正的强者。 不抱怨天,不责怪人。在面对困难和挫折时，不要抱怨命运的不公或责怪他人的过错，而应该反思自己的行为和态度，寻找问题的根源，并努力改进自己。 困难和挑战(即“忧患”)能够激发人的斗志和潜能，使人变得更加强大和坚韧，从而能够生存下来;而过于安逸和舒适的环境(即“安乐”)则容易使人丧失警惕和斗志，最终导致失败甚至灭亡。', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-29 20:12:12', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (158, 4281, 4, 2, 8, '3', '园地八', '', '', '少年不知勤学苦，老来方知读书迟。 一日读书一日功，一日不读十日空。 学习不怕根底浅，只要迈步总不迟。 书山有路勤为径，学海无涯苦作舟。 ', 'shào nián bù zhī qín xué kǔ ， lǎo lái fāng zhī dú shū chí 。 yí rì dú shū yí rì gōng ， yí rì bù dú shí rì kōng 。 xué xí bú pà gēn dǐ qiǎn ， zhǐ yào mài bù zǒng bù chí 。 shū shān yǒu lù qín wèi jìng ， xué hǎi wú yá kǔ zuò zhōu 。 ', '书山有路勤为径:在知识的山峰上，只有勤奋才是通往成功的路径;学海无涯:比喻知识的海洋无边无际，它告诉我们，学习是一个永无止境的过程，无论我们学到多少知识，都只是冰山一角;苦作舟:强调了在学习和求知的道路上，需要付出努力和艰辛;舟:在求知的道路上，以刻苦努力和坚持不懈为动力，推动自己不断前进的工具 ', '年轻的时候不知道好好发奋读书学习,到年老无力再奋斗时才知道后悔当年没努力。 读一天书就有一天的收获，但如果有一天没读书就会丢失十天的读书的收获。因为读书是一个连续的过程，天天都要学习。 学习不怕基础差，只要迈步向前就不算晚。 在堆积如山的书籍中，要想攀登学问的高峰，勤奋就是那登顶的唯一路径;在无边无际的知识海洋里，要想畅游到达成功的彼岸，刻苦努力将化为一叶扁舟，助你前行。 ', NULL, NULL, '', '', '', '', b'1', 'admin', '2024-05-29 20:12:17', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry` VALUES (160, 4263, 4, 2, 6, '2', '悬梁刺骨', '', ' ', '孙敬字文宝，好学，晨夕不休。及至眠睡疲寝，以绳系头，悬屋梁。 (苏秦)读书欲睡，引锥自刺其股，血流至足。 ', 'sūn jìng zì wén bǎo ， hào xué ， chén xī bù xiū 。 jí zhì mián shuì pí qǐn ， yǐ shéng xì tóu ， xuán wū liáng 。 ) sū qín ) dú shū yù shuì ， yǐn zhuī zì cì qí gǔ ， xuè liú zhì zú 。 ', '', '汉朝人孙敬，字文宝，非常好学，从早到晚地读书。有时疲倦了，想睡觉，就用一根绳子系住头发，另一头拴在房梁上拉直。这时候如果再打瞌睡，就会被绳子拉醒。 战国时期，苏秦读书欲睡，就拿锥子扎大腿，使自己清醒起来，再坚持读书的事。 ', NULL, NULL, '', '', '', '', b'0', 'admin', '2024-05-29 21:15:36', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_chinese_poetry_accum
-- ----------------------------
DROP TABLE IF EXISTS `app_chinese_poetry_accum`;
CREATE TABLE `app_chinese_poetry_accum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_id` int(11) NOT NULL COMMENT '系统分配的ID',
  `grade` tinyint(4) NOT NULL COMMENT '年级',
  `term` tinyint(4) NOT NULL COMMENT '学期',
  `unit` tinyint(4) NULL DEFAULT NULL COMMENT '单元',
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `author` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `dynasty` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '朝代',
  `title_pinyin` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `title_word` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题字',
  `title_word_mean` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题字义',
  `title_word_pinyin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题字拼音',
  `emotion` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表达情感',
  `category_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '诗词分类',
  `child_category_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小类',
  `must_write` bit(1) NULL DEFAULT NULL COMMENT '默写',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_id`(`sys_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '诗词与日积月累主表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_chinese_poetry_accum
-- ----------------------------
INSERT INTO `app_chinese_poetry_accum` VALUES (44, 4264, 4, 2, 6, '凿壁偷光', ' ', '', 'záo bì tōu guāng', '', '', '', '', '2', NULL, b'0', 'admin', '2024-05-26 18:54:47', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (45, 4265, 4, 2, 6, '程门立雪', ' ', '', 'chéng mén lì xuě', '', '', '', '', '2', NULL, b'0', 'admin', '2024-05-26 18:55:56', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (52, 4273, 4, 2, 7, '墨梅', '王冕', '元', 'mò méi', '墨梅', '墨梅:用墨笔勾勒出来的梅花', '', '', '0', NULL, b'0', 'admin', '2024-05-26 19:09:05', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (55, 4272, 4, 2, 7, '塞下曲', '卢纶', '唐', 'sāi xià qū', '塞下曲', '塞下曲:古时边塞的一种军歌', '', '', '0', NULL, b'0', 'admin', '2024-05-26 21:14:46', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (56, 4231, 4, 2, 3, '古代文人名言', ' ', '', 'gǔ dài wén rén míng yán', '', '', '', '', '4', NULL, b'0', 'admin', '2024-05-27 13:51:58', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (69, 4223, 4, 2, 2, '识字加油站', '', '', 'shí zì jiā yóu zhàn', '', '', '', '', '6', NULL, b'0', 'admin', '2024-05-28 09:13:19', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (71, 4282, 4, 2, 8, '表达情感', '', '', 'biǎo dá qíng gǎn', '', '', '', '', '7', NULL, b'0', 'admin', '2024-05-28 09:42:55', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (72, 4283, 4, 2, 8, '表达品质', '', '', 'biǎo dá pǐn zhì', '', '', '', '', '8', NULL, b'0', 'admin', '2024-05-28 09:54:50', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (83, 4275, 4, 2, 7, '描写心情', '', '', 'miáo xiě xīn qíng', '', '', '', '', '5', NULL, b'0', 'admin', '2024-05-28 12:47:02', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (84, 4222, 4, 2, 2, '计算机', '', '', 'jì suàn jī', '', '', '', '', '5', NULL, b'0', 'admin', '2024-05-28 12:47:08', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (86, 4216, 4, 2, 1, '描写农村', '', '', 'miáo xiě nóng cūn', '', '', '', '', '5', NULL, b'0', 'admin', '2024-05-28 12:47:19', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (88, 4276, 4, 2, 7, '人物品质', '', '', 'rén wù pǐn zhì', '', '', '', '', '5', NULL, b'0', 'admin', '2024-05-28 12:49:21', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (89, 4242, 4, 2, 1, '动物喻人', '', '', 'dòng wù yù rén', '', '', '', '', '5', NULL, b'0', 'admin', '2024-05-28 13:09:10', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (91, 4262, 4, 2, 6, '铁杵成针', ' ', '', 'tiě chǔ chéng zhēn', '铁杵', '铁杵:', '杵', '', '2', NULL, b'0', 'admin', '2024-05-28 13:38:03', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (99, 4243, 4, 2, 4, '识字加油站', '', '', 'shí zì jiā yóu zhàn', '', '', '', '', '6', NULL, b'0', 'admin', '2024-05-28 14:06:08', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (100, 4215, 4, 2, 1, '描写城市', '', '', 'miáo xiě chéng shì', '', '', '', '', '5', NULL, b'0', 'admin', '2024-05-28 14:07:59', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (119, 4214, 4, 2, 1, '卜算子·咏梅', ' 毛泽东', '', 'bǔ suàn zǐ · yǒng méi', '', '', '卜', '', '1', NULL, NULL, 'admin', '2024-05-28 21:38:44', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (125, 4211, 4, 2, 1, '宿新市徐公店', '杨万里', '宋', 'sù xīn shì xú gōng diàn', '新市|徐公店|公', '新市:地名，在今湖南攸县北;徐公店:姓徐的人家开的旅店;公:古代对男子的尊称', '', '', '0', NULL, b'1', 'admin', '2024-05-28 21:50:46', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (126, 4212, 4, 2, 1, '四时田园杂兴（其二十五）', '范成大', '宋', 'sì shí tián yuán zá xīng （ qí èr shí wǔ ）', '', '', '', '', '0', NULL, b'1', 'admin', '2024-05-28 21:50:50', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (127, 4271, 4, 2, 7, '芙蓉楼送辛渐', '王昌龄', '唐', 'fú róng lóu sòng xīn jiàn', '芙蓉楼|辛渐', '芙蓉楼：原名西北楼，故址在今江苏镇江北，下临长江；辛渐：诗人的一位朋友。', '', '', '0', NULL, b'1', 'admin', '2024-05-28 21:51:39', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (128, 4267, 4, 2, 6, '独坐敬亭山', '李白', '唐', 'dú zuò jìng tíng shān', '敬亭山', '敬亭山:在今安徽宣城市北。:', '', '', '0', NULL, b'1', 'admin', '2024-05-28 21:51:43', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (129, 4261, 4, 2, 6, '囊萤夜读', ' ', '', 'náng yíng yè dú', '囊萤|囊', '囊萤:用袋子装萤火虫;囊:文中作动词用,用袋子装', '', '', '2', NULL, b'1', 'admin', '2024-05-28 21:51:46', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (130, 4241, 4, 2, 1, '蜂', '罗隐', '唐', 'fēng', '', '', '', '', '0', NULL, b'1', 'admin', '2024-05-28 21:51:50', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (132, 4221, 4, 2, 2, '江畔独步寻花·其五', '杜甫', '唐', 'jiāng pàn dú bù xún huā · qí wǔ', '', '', '', '', '0', NULL, b'1', 'admin', '2024-05-28 21:52:00', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (133, 4213, 4, 2, 1, '清平乐·村居', '辛弃疾', '宋', 'qīng píng lè · cūn jū', '清平乐|村居', '清平乐（yuè）:词牌名;村居:题目', '乐', '', '1', NULL, b'1', 'admin', '2024-05-28 21:52:06', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (134, 4232, 4, 2, 3, '园地三', '', '', 'yuán dì sān', '', '', '', '', '3', NULL, b'1', 'admin', '2024-05-29 20:12:07', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (135, 4274, 4, 2, 7, '园地七', '', '', 'yuán dì qī', '', '', '', '', '3', NULL, b'1', 'admin', '2024-05-29 20:12:12', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (136, 4281, 4, 2, 8, '园地八', '', '', 'yuán dì bā', '', '', '', '', '3', NULL, b'1', 'admin', '2024-05-29 20:12:17', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum` VALUES (138, 4263, 4, 2, 6, '悬梁刺骨', ' ', '', 'xuán liáng cì gǔ', '', '', '', '', '2', NULL, b'0', 'admin', '2024-05-29 21:15:36', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_chinese_poetry_accum_detail
-- ----------------------------
DROP TABLE IF EXISTS `app_chinese_poetry_accum_detail`;
CREATE TABLE `app_chinese_poetry_accum_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `p_sys_id` int(11) NOT NULL COMMENT '主表系统ID',
  `sentense` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '诗词句',
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `mean` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '句子含义',
  `word` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字词',
  `word_mean` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字词含义',
  `word_pinyin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字词拼音',
  `truth` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '哲理',
  `question` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '提问',
  `is_vip` bit(1) NULL DEFAULT NULL COMMENT '句言',
  `inner_sort_no` tinyint(4) NULL DEFAULT NULL COMMENT '内部序号',
  `word_search` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询字(比如春夏秋冬颜色花)',
  `create_time` datetime NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_p_sys_id`(`p_sys_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 496 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '诗词与日积月累明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_chinese_poetry_accum_detail
-- ----------------------------
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (127, 4264, '匡衡字稚圭，勤学而无烛。', 'kuāng héng zì zhì guī ， qín xué ér wú zhú 。', '西汉时期有一个叫匡衡的人，他勤奋好学，但家中贫困，晚上没有灯光供他读书。', '匡衡', '匡衡:东海承（今山东枣庄东南）人，西汉经学家，官至丞相;', '', '', '', b'0', 1, '', '2024-05-26 18:54:59', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (128, 4264, '邻舍有烛而不逮，衡乃穿壁引其光，以书映光而读之。', 'lín shè yǒu zhú ér bù dǎi ， héng nǎi chuān bì yǐn qí guāng ， yǐ shū yìng guāng ér dú zhī 。', '他看到邻居家的灯光透过墙壁照过来，于是就在墙上凿了一个洞，借着邻居家的灯光读书', '逮|穿壁', '逮:（dài）到，及;穿壁:在墙上凿洞;', '逮', '', '', b'0', 2, '', '2024-05-26 18:55:01', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (129, 4265, '又见程颐于洛，时盖年四十矣。', 'yòu jiàn chéng yí yú luò ， shí gài nián sì shí yǐ 。', '杨时到洛阳求见程颐，杨时大概当时有四十岁了。', '', '盖:大概;', '', '', '', b'0', 1, '', '2024-05-26 18:56:08', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (130, 4265, '一日见颐，颐偶瞑坐，时与游酢侍立不去，颐既觉，则门外雪深一尺矣。', 'yí rì jiàn yí ， yí ǒu míng zuò ， shí yǔ yóu cù shì lì bú qù ， yí jì jué ， zé mén wài xuě shēn yì chǐ yǐ 。', '一天拜见程颐的时候，程颐偶尔坐着打瞌睡。杨时与游酢站在门外等着没有离开。等到程颐醒后，门外积雪已经一尺多厚了。', '', '偶:动词，假借为遇;瞑坐:打瞌睡;瞑:闭上眼睛;侍立:恭敬地站在一旁;去:离开;颐既觉:程颐睡醒后;', '', '学生恭敬求教，比喻尊师重教', '', b'0', 2, '', '2024-05-26 18:56:10', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (141, 4273, '我家洗砚池头树，朵朵花开淡墨痕。', 'wǒ jiā xǐ yàn chí tóu shù ， duǒ duǒ huā kāi dàn mò hén 。', '我家洗砚池边有一棵梅树，朵朵盛开的梅花都像是淡淡的墨痕点染而成。', '洗砚池|池头|头', '洗砚池:传说会稽蕺山下有晋朝大书法家王羲之的洗砚池，池塘的水都染黑了。王冕称他家有家有洗砚池，意思是自己也像王羲之那样勤奋;池头:池边;头 :边上;淡墨:水墨画中将墨色分为四种，如，清墨、淡墨、浓墨、焦墨。这里是说那朵朵盛开的梅花，是用淡淡的墨迹点化成的;痕:痕迹。', '', '', '', b'0', 1, '', '2024-05-26 19:09:17', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (142, 4273, '不要人夸颜色好，只留清气满乾坤。', 'bú yào rén kuā yán sè hǎo ， zhī liú qīng qì mǎn qián kūn 。', '它不需要别人去夸赞它的颜色好看，只需要梅花的清香气味弥漫在这天地之间。', '清气|满乾坤|满|乾坤', '清气:梅花的清香之气;满乾坤:弥漫在天地间;满:弥漫;乾坤:天地间', '', '', '', b'1', 2, '', '2024-05-26 19:09:19', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (161, 4272, '月黑雁飞高，单于夜遁逃。', 'yuè hēi yàn fēi gāo ， chán yú yè dùn táo 。', '死寂之夜，乌云遮月，天边大雁惊飞，单于的军队想要趁着夜色悄悄潜逃。', '单于|遁', '单于（chán yú ）:匈奴的首领，这里指入侵者的最高统帅;遁:逃走;', '单', '', '', b'0', 1, '', '2024-05-26 21:14:47', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (162, 4272, '欲将轻骑逐，大雪满弓刀。', 'yù jiāng qīng qí zhú ， dà xuě mǎn gōng dāo 。', '正想要带领轻骑兵一路追赶，大雪纷纷扬扬落满了身上的弓刀。', '将|轻骑|逐|满', '将:率领;轻骑:轻装快速的骑兵;逐:追赶;满:沾满', '单', '', '', b'0', 2, '', '2024-05-26 21:14:47', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (163, 4231, '路漫漫其修远兮，吾将上下而求索。', 'lù màn màn qí xiū yuǎn xī ， wú jiāng shàng xià ér qiú suǒ 。', '前方的道路漫长而又遥远啊，我将不遗余力地上下追求探索。表达了诗人在人生道路上不断探索和追求真理的决心。', '', '《离骚》战国 屈原;', '', '', '', b'1', 1, '', '2024-05-27 13:51:58', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (164, 4231, '采菊东篱下，悠然见南山。', 'cǎi jú dōng lí xià ， yōu rán jiàn nán shān 。', '在东篱之下采摘菊花，悠然间，那远处的南山映入眼帘。描绘了他归隐田园后悠闲自得的生活状态，展现了他超脱世俗、追求自然之美的情怀。', '', '饮酒(其五) 东晋 陶渊明;', '', '', '', b'1', 2, '', '2024-05-27 13:51:58', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (165, 4231, '春眠不觉晓，处处闻啼鸟。', 'chūn mián bù jué xiǎo ， chù chù wén tí niǎo 。', '描绘了春天的早晨，诗人被鸟儿的啼叫声唤醒，表达了诗人对春天的喜爱和珍惜。', '', '《春晓》唐 孟浩然;', '', '', '', b'1', 3, '', '2024-05-27 13:51:58', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (166, 4231, '风急天高猿啸哀，渚清沙白鸟飞回。', 'fēng jí tiān gāo yuán xiào āi ， zhǔ qīng shā bái niǎo fēi huí 。', '风急天高，猿猴啼叫显得十分悲哀;水清沙白的河洲上有鸟儿在盘旋飞翔。描绘了一幅萧瑟的秋景图，表达了诗人内心的孤独和凄凉。', '', '《登高》唐 杜甫;', '啸|渚', '', '', b'1', 4, '', '2024-05-27 13:51:58', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (167, 4231, '国破山河在，城春草木深。', 'guó pò shān hé zài ， chéng chūn cǎo mù shēn 。', '国都沦陷只有山河依旧，春日的城区里荒草丛生。表达了对国家衰亡的悲痛和对故土的深深眷恋。', '', '《春望》唐 杜甫;', '', '', '', b'1', 5, '', '2024-05-27 13:51:59', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (168, 4231, '师者，所以传道受业解惑也。', 'shī zhě ， suǒ yǐ chuán dào shòu yè jiě huò yě 。', '强调了教师的重要性和职责，即传授道理、教授学业、解答疑惑。', '', '《师说》唐 韩愈;', '', '', '', b'1', 6, '', '2024-05-27 13:51:59', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (169, 4231, '山不在高，有仙则名;水不在深，有龙则灵。', 'shān bú zài gāo ， yǒu xiān zé míng ; shuǐ bú zài shēn ， yǒu lóng zé líng 。', '山不在于它的高度，只要山上有神仙，它就会出名;水不在于它的深度，只要水里有龙，它就会显得有灵气。以山水作比喻，来说明一个道理:对于一个事物，我们不必过分关注它的外在形式或表面现象，而应该注重它的内在实质或内容。', '', '《陋室铭》唐 刘禹锡;', '', '', '', b'0', 7, '', '2024-05-27 13:51:59', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (170, 4231, '先天下之忧而忧，后天下之乐而乐。', 'xiān tiān xià zhī yōu ér yōu ， hòu tiān xià zhī lè ér lè 。', '在天下人忧愁之前先忧愁，在天下人快乐之后才快乐。体现了作者忧国忧民的情怀和崇高的政治抱负。', '', '《岳阳楼记》范仲淹;', '', '', '', b'1', 8, '', '2024-05-27 13:51:59', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (171, 4231, '落红不是无情物，化作春泥更护花。', 'luò hóng bú shì wú qíng wù ， huà zuò chūn ní gèng hù huā 。', '这句话表达了作者对自然的深刻理解，即使花朵凋零，它们的生命也没有结束，而是化作春泥，滋养着新的生命。', '', '《己亥杂诗·其五》龚自珍;', '', '', '', b'0', 9, '', '2024-05-27 13:51:59', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (219, 4223, '滨—宾(     ) 洁—吉(     ) 减—咸(     )', 'bīn — bīn (           )   jié — jí (           )   jiǎn — xián (           )', '滨（海滨）—宾（宾馆） 洁（洁白）—吉（吉利） 减（减少）—咸（咸菜）', '', '', '', '', '', b'1', 1, '', '2024-05-28 09:13:20', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (220, 4223, '挑—兆(     ) 挺—廷(     ) 预—矛(     )', 'tiāo — zhào (           )   tǐng — tíng (           )   yù — máo (           )', ' 挑（挑战）—兆（预兆） 挺（挺立）—廷（宫廷） 预（预备）—矛（赠予）', '', '', '', '', '', b'1', 2, '', '2024-05-28 09:13:20', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (221, 4223, '中—肿(     ) 介—阶(     ) 止—趾(      )', 'zhōng — zhǒng (           )   jiè — jiē (           )   zhǐ — zhǐ (             )', '中（中国）—肿（肿胀） 介（介意）—阶（台阶） 止（停止）—趾（脚趾）', '', '', '', '', '', b'1', 3, '', '2024-05-28 09:13:20', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (222, 4223, '凡—巩(     ) 正—政(     ) 刘—浏(     )', 'fán — gǒng (           )   zhèng — zhèng (           )   liú — liú (           )', ' 凡（平凡）—巩（巩固） 正（正好）—政（政府） 刘（刘海）—浏（浏览）', '', '', '', '', '', b'1', 4, '', '2024-05-28 09:13:20', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (226, 4282, '《四时田园杂兴》', '《 sì shí tián yuán zá xīng 》', '对农村生活的喜爱之情', '', '', '', '', '', b'1', 1, '', '2024-05-28 09:42:55', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (227, 4282, '《宿新市徐公店》', '《 sù xīn shì xú gōng diàn 》', '对田园生活的赞美和对儿童的喜爱之情。', '', '', '', '', '', b'1', 2, '', '2024-05-28 09:42:55', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (228, 4282, '《清平乐·村居》', '《 qīng píng lè · cūn jū 》', '对幸福和谐安居乐业乡村生活的欣赏和赞美之情。', '', '', '', '', '', b'1', 3, '', '2024-05-28 09:42:55', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (229, 4282, '《乡下人家》', '《 xiāng xià rén jiā 》', '对乡下人家的欣赏和喜爱之情。', '', '', '', '', '', b'1', 4, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (230, 4282, '《三月桃花水》', '《 sān yuè táo huā shuǐ 》', '对桃花水的喜爱和赞美之情。', '', '', '', '', '', b'1', 5, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (231, 4282, '《短诗三首》', '《 duǎn shī sān shǒu 》', '对母爱、童心和自然的赞美。', '', '', '', '', '', b'1', 6, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (232, 4282, '《繁星（七一）》', '《 fán xīng （ qī yī ） 》', '对母亲的依恋和母爱的温馨。', '温馨', '温馨:温暖、体贴', '', '', '', b'1', 7, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (233, 4282, '《繁星（一五九）》', '《 fán xīng （ yī wǔ jiǔ ） 》', '对母亲的依恋。', '依恋', '依恋:情感上的依赖和信任', '', '', '', b'1', 8, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (234, 4282, '《绿》', '《 lǜ 》', '对大自然的喜爱和赞美。', '', '', '', '', '', b'1', 9, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (235, 4282, '《白桦》', '《 bái huà 》', '对家乡和大自然的热爱之情。', '', '', '', '', '', b'1', 10, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (236, 4282, '《在天晴了的时候》', '《 zài tiān qíng le de shí hòu 》', '对大自然的热爱和赞美之情，也表现了作者对恬淡、超脱的生活的向往。', '', '', '', '', '', b'1', 11, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (237, 4282, '《猫》', '《 māo 》', '对猫的喜爱之情。', '', '', '', '', '', b'1', 12, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (238, 4282, '《母鸡》', '《 mǔ jī 》', '对母爱的赞颂之情', '', '', '', '', '', b'1', 13, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (239, 4282, '《白鹅》', '《 bái é 》', '对白鹅的喜爱。', '', '', '', '', '', b'1', 14, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (240, 4282, '《海上日出》', '《 hǎi shàng rì chū 》', '对这一自然奇观的喜爱之情及热爱大自然、追求光明的思想感情。', '', '', '', '', '', b'1', 15, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (241, 4282, '《囊萤夜读》', '《 náng yíng yè dú 》', '无论环境有多么恶劣，我们都要勤奋苦学，这样才会有所成就。', '', '', '', '', '', b'1', 16, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (242, 4282, '《铁杵成针》', '《 tiě chǔ chéng zhēn 》', '只要有毅力、肯下苦功，事情就能成功。', '', '', '', '', '', b'1', 17, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (243, 4282, '《芙蓉楼送辛渐》', '《 fú róng lóu sòng xīn jiàn 》', '送别诗，表达了诗人与友人的离情别意，以及诗人洁身自好的志向和品格。', '', '', '', '', '', b'1', 18, '', '2024-05-28 09:42:56', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (244, 4282, '《塞下曲》', '《 sāi xià qū 》', '边塞诗，诗人描述了一个精彩的边塞战斗场景，赞扬了戍边将士的英勇威武，字里午间充溢着英雄气概。', '', '', '', '', '', b'1', 19, '', '2024-05-28 09:42:57', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (245, 4282, '《墨梅》', '《 mò méi 》', '题画诗，借墨梅自喻，表达诗人的人生态度以及不向世俗献媚的高尚情操。', '', '', '', '', '', b'1', 20, '', '2024-05-28 09:42:57', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (246, 4282, '《宝葫芦的秘密（节选）》', '《 bǎo hú lu de mì mì （ jié xuǎn ） 》', '幸福要靠自己的努力。', '', '', '', '', '', b'1', 21, '', '2024-05-28 09:42:57', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (247, 4283, '《千年梦圆在今朝》', '《 qiān nián mèng yuán zài jīn cháo 》', '勇于探索、不懈努力、团结协作。', '', '', '', '', '', b'1', 1, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (248, 4283, '《白桦》', '《 bái huà 》', '高洁、挺拔、不畏严寒。', '', '', '', '', '', b'1', 2, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (249, 4283, '《猫》', '《 māo 》', '古怪，淘气可爱。', '', '', '', '', '', b'1', 3, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (250, 4283, '《母鸡》', '《 mǔ jī 》', '负责、慈爱、勇敢、辛苦。', '', '', '', '', '', b'1', 4, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (251, 4283, '《白鹅》', '《 bái é 》', '高傲。', '', '', '', '', '', b'1', 5, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (252, 4283, '《小英雄雨来（节选）》', '《 xiǎo yīng xióng yǔ lái （ jié xuǎn ） 》', '机智勇敢、热爱祖国、坚强不屈', '', '', '', '', '', b'1', 6, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (253, 4283, '《我们家的男子汉》', '《 wǒ men jiā de nán zǐ hàn 》', '率真、自主独立、沉着勇敢。', '', '', '', '', '', b'1', 7, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (254, 4283, '《芦花鞋》', '《 lú huā xié 》', '吃苦耐劳、勤快能干、为他人着想。', '', '', '', '', '', b'1', 8, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (255, 4283, '《囊萤夜读》《铁杵成针》', '《 náng yíng yè dú 》 《 tiě chǔ chéng zhēn 》', '勤奋学习、坚持不懈。', '', '', '', '', '', b'1', 9, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (256, 4283, '《“诺曼底号”遇难记》', '《 “ nuò màn dǐ hào ” yù nàn jì 》', '忠于职守、舍己救人。', '', '', '', '', '', b'1', 10, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (257, 4283, '《墨梅》', '《 mò méi 》', '高洁、清秀、淡雅、朴素。', '', '', '', '', '', b'1', 11, '', '2024-05-28 09:54:51', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (258, 4283, '《黄继光》', '《 huáng jì guāng 》', '英勇顽强、视死如归、奋不顾身。', '', '', '', '', '', b'1', 12, '', '2024-05-28 09:54:52', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (259, 4283, '《宝葫芦的秘密（节选）》', '《 bǎo hú lu de mì mì （ jié xuǎn ） 》', '淘气、顽皮、好奇的、爱听故事的、充满童真。', '', '', '', '', '', b'1', 13, '', '2024-05-28 09:54:52', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (260, 4283, '《巨人的花园》', '《 jù rén de huā yuán 》', '纯真、善良、充满活力。', '', '', '', '', '', b'1', 14, '', '2024-05-28 09:54:52', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (311, 4275, '悲戚 ', 'bēi qī ', '悲痛哀伤。 ', '', '', '', '', '', b'1', 1, '', '2024-05-28 12:47:03', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (312, 4275, '焦躁不安 ', 'jiāo zào bù ān ', '指焦急烦躁、心神不宁。 ', '', '', '', '', '', b'1', 2, '', '2024-05-28 12:47:03', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (313, 4275, '心急如焚 ', 'xīn jí rú fén ', '心里急得像着火一样，形容非常着急。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 12:47:03', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (314, 4222, '云技术 ', 'yún jì shù ', '云技术是一种将数据和计算任务存储在远程服务器上，而不是本地计算机上的技术。 ', '', '', '', '', '', b'1', 1, '', '2024-05-28 12:47:08', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (315, 4222, '多媒体 ', 'duō méi tǐ ', '多媒体是指结合文本、声音、图像、动画等多种媒体形式的信息展示方式。 ', '', '', '', '', '', b'1', 2, '', '2024-05-28 12:47:08', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (316, 4222, '互联网 ', 'hù lián wǎng ', '互联网是一个由全球各地的计算机和网络设备相互连接而成的网络。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 12:47:08', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (317, 4222, '克隆 ', 'kè lóng ', '创建一个现有数据、文件、硬盘分区或整个硬盘的完全相同的副本。这个过程被称为克隆。 ', '', '', '', '', '', b'1', 4, '', '2024-05-28 12:47:08', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (318, 4222, '桌面 ', 'zhuō miàn ', '在计算机中，桌面是我们打开电脑后看到的屏幕界面，上面通常有各种图标和工具栏。 ', '', '', '', '', '', b'1', 5, '', '2024-05-28 12:47:08', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (319, 4222, '窗口 ', 'chuāng kǒu ', '在计算机中，窗口是屏幕上用于显示和操作某个程序或文件的区域。 ', '', '', '', '', '', b'1', 6, '', '2024-05-28 12:47:09', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (320, 4222, '潜水 ', 'qián shuǐ ', '在互联网上，特别是在线社交媒体平台，匿名或伪装身份的个体积极参与并探索某个特定社区或话题，而不被其他用户所察觉。 ', '匿名 ', '匿名:使用虚拟身份，不透露真实姓名或个人信息，以保护自己的隐私 ', '匿', '', '', b'1', 7, '', '2024-05-28 12:47:09', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (321, 4222, '文件夹 ', 'wén jiàn jiá ', '在计算机中，文件夹用于存储和组织文件。 ', '', '', '', '', '', b'1', 8, '', '2024-05-28 12:47:09', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (327, 4216, '肥沃 ', 'féi wò ', '农村的土地质量很好，含有适合植物生长的丰富养分和水分。这样的土地能够种植出更多的农作物 ', '', '', '', '', '', b'1', 1, '', '2024-05-28 12:47:19', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (328, 4216, '静谧 ', 'jìng mì ', '强调了农村的宁静、清幽和没有喧嚣打扰的特点;人们可以感受到一种宁静和放松，远离了城市的喧嚣和压力 ', '', '', '', '', '', b'1', 2, '', '2024-05-28 12:47:19', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (329, 4216, '炊烟袅袅 ', 'chuī yān niǎo niǎo ', '形容烧火做饭时冒出的青烟缓缓上升，随风飘散。这个词语通常用来描绘乡村或家庭生活的宁静和平和。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 12:47:19', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (330, 4216, '依山傍水 ', 'yī shān bàng shuǐ ', '形容建筑物或自然景色紧靠着山和水，环境优美，景色宜人。这个词语常用来形容风景秀丽的地区或是理想的居住地。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 12:47:19', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (331, 4216, '鸡犬相闻 ', 'jī quǎn xiāng wén ', '形容一个地方非常安静，连鸡鸣和狗吠的声音都能听得清清楚楚。这个词语常用来形容乡村或郊区的宁静和安详。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 12:47:19', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (342, 4276, '和蔼 ', 'hé ǎi ', '性情温和，态度可亲。 ', '', '', '', '', '', b'1', 1, '', '2024-05-28 12:49:21', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (343, 4276, '慷慨 ', 'kāng kǎi ', '充满正气，情绪激昂。大方，不吝啬 ', '', '', '', '', '', b'1', 2, '', '2024-05-28 12:49:21', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (344, 4276, '贤惠 ', 'xián huì ', '指妇女心地善良，通情达理，对人和蔼可亲。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 12:49:21', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (345, 4276, '临危不惧 ', 'lín wēi bú jù ', '面临着危险从容不迫，毫不畏惧。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 12:49:21', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (346, 4276, '彬彬有礼 ', 'bīn bīn yǒu lǐ ', '形容文雅有礼貌的样子 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 12:49:21', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (347, 4242, '千里马  ', 'qiān lǐ mǎ   ', '比喻有才干的人。 ', '', '', '', '', '', b'0', 1, '', '2024-05-28 13:09:13', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (348, 4242, '老黄牛  ', 'lǎo huáng niú   ', '比喻默不作声、踏实工作的人。 ', '', '', '', '', '', b'0', 2, '', '2024-05-28 13:09:29', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (349, 4242, '百灵鸟  ', 'bǎi líng niǎo   ', '比喻歌声甜润、清脆的歌手。 ', '', '', '', '', '', b'0', 3, '', '2024-05-28 13:09:29', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (350, 4242, '领头羊  ', 'lǐng tóu yáng   ', '比喻在团队中起主导作用的人。 ', '', '', '', '', '', b'0', 4, '', '2024-05-28 13:09:30', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (351, 4242, '小蜜蜂  ', 'xiǎo mì fēng   ', '比喻勤劳的人。 ', '', '', '', '', '', b'0', 5, '', '2024-05-28 13:09:30', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (352, 4242, '纸老虎  ', 'zhǐ lǎo hǔ   ', '比喻外强中干的人。外表看似强大，但内在却缺乏实力、底气不足的人或事物 ', '', '', '', '', '', b'0', 6, '', '2024-05-28 13:09:30', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (353, 4242, '变色龙  ', 'biàn sè lóng   ', '比喻在生活中善于变化伪装的人，或者比喻立场不稳、见风使舵的人。 ', '', '', '', '', '', b'0', 7, '', '2024-05-28 13:09:30', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (354, 4242, '铁公鸡  ', 'tiě gōng jī   ', '比喻吝啬钱财，一毛不拔的人。 ', '', '', '', '', '', b'0', 8, '', '2024-05-28 13:09:30', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (355, 4242, '应声虫  ', 'yìng shēng chóng   ', '比喻没有主见，随声附和的人。 ', '', '', '', '', '', b'0', 9, '', '2024-05-28 13:09:30', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (356, 4242, '哈巴狗  ', 'hǎ ba gǒu   ', '比喻没有骨气、摇尾乞怜的人。 ', '', '', '', '', '', b'0', 10, '', '2024-05-28 13:09:30', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (362, 4262, '磨针溪，在眉州象耳山下。 ', 'mó zhēn xī ， zài méi zhōu xiàng ěr shān xià 。 ', ' 磨针溪是在眉州的象耳山脚下。', '眉州 ', '眉州:地名，今四川省眉山一带; ', '', '', '', b'0', 1, '', '2024-05-28 13:38:45', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (363, 4262, '世传李白读书山中，未成，弃去。 ', 'shì chuán lǐ bái dú shū shān zhōng ， wèi chéng ， qì qù 。 ', '世世代代相传李白在山中读书的时候，没有完成好自己的学业，就放弃学习离开了。', '世传|成|去 ', '世传:世世代代相传;成:完成;去:离开; ', '', '', '', b'0', 2, '', '2024-05-28 13:38:48', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (364, 4262, '过小溪，逢老媪，方磨铁杵，问之，曰:“欲作针。”。', 'guò xiǎo xī ， féng lǎo ǎo ， fāng mó tiě chǔ ， wèn zhī ， yuē : “ yù zuò zhēn 。 ” ', '他路过一条小溪，遇见一位老妇人在磨铁棒，于是问她在干什么，老妇人说:“我想把它磨成针。”。', '逢|媪|方|铁杵|欲|感|之 ', '逢:碰上;媪:妇女的统称;方:正在;铁杵:用来舂米或捣衣的铁棒;欲:想要;感:被……感动;之:代词，指代老妇人在做的事 ', '', '', '', b'0', 3, '', '2024-05-28 13:38:48', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (365, 4262, '太白感其意，还卒业。 ', 'tài bái gǎn qí yì ， hái zú yè 。 ', '李白被她的精神感动，就回去完成学业。', '还卒业 ', '还卒业:回去完成了学业 ', '', '', '', b'0', 4, '', '2024-05-28 13:38:48', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (387, 4243, '杆—肝(     )—秆(     ) 消—俏(     )—峭(     )  ', 'gān — gān )           ) — gǎn )           )   xiāo — qiào )           ) — qiào )           )   ', '杆—肝(肝脏)—秆(麦秆) 消—俏(俏丽)—峭(陡峭) ', '', '', '', '', '', b'1', 1, '', '2024-05-28 14:06:12', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (388, 4243, '捕—哺(     )—浦(     ) 轮—沦(     )—抡(     )  ', 'bǔ — bǔ )           ) — pǔ )           )   lún — lún )           ) — lūn )           )   ', ' 捕—哺(哺育)—浦(黄浦江) 轮—沦(沦落)—抡(抡拳)  ', '', '', '', '', '', b'1', 2, '', '2024-05-28 14:06:12', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (389, 4243, '换—涣(     )—焕(     ) 骏—俊(     )—峻(     ) ', 'huàn — huàn )           ) — huàn )           )   jùn — jùn )           ) — jùn )           ) ', '换—涣(涣散)—焕(焕发) 骏—俊(英俊)—峻(严峻) ', '', '', '', '', '', b'1', 3, '', '2024-05-28 14:06:12', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (390, 4215, '繁华 ', 'fán huá ', '城市的经济、文化和人口等方面的繁荣和兴旺 ', '', '', '', '', '', b'1', 1, '', '2024-05-28 14:07:59', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (391, 4215, '璀璨 ', 'cuǐ càn ', '在夜晚时灯光辉煌、光彩夺目，呈现出一种非常繁荣、美丽和充满活力的景象 ', '', '', '', '', '', b'1', 2, '', '2024-05-28 14:08:00', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (392, 4215, '高楼林立 ', 'gāo lóu lín lì ', '形容城市中高层建筑密集，建筑物高耸入云，密密麻麻地排列在一起。这通常用来描述现代化的大都市景象。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 14:08:00', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (393, 4215, '车水马龙 ', 'chē shuǐ mǎ lóng ', '形容车辆和行人密集，道路繁忙，交通状况非常繁忙和拥堵。这个词语常用来形容城市的繁华和热闹。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 14:08:00', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (394, 4215, '灯火辉煌 ', 'dēng huǒ huī huáng ', '形容灯光璀璨，灯火通明，非常明亮。这通常用来描述城市夜晚的美丽景象，或者是庆祝活动的热闹场面。 ', '', '', '', '', '', b'1', 3, '', '2024-05-28 14:08:00', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (444, 4214, '风雨送春归，飞雪迎春到。 ', 'fēng yǔ sòng chūn guī ， fēi xuě yíng chūn dào 。 ', '风雨把春天送归这里，飞舞的雪花又在迎接春天的来到。 ', '', '', '', '', '', b'0', 1, '', '2024-05-28 21:38:44', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (445, 4214, '已是悬崖百丈冰，犹有花枝俏。 ', 'yǐ shì xuán yá bǎi zhàng bīng ， yóu yǒu huā zhī qiào 。 ', '已经是冰封雪冻最寒冷的时候，悬崖边上还盛开着俏丽的梅花。 ', '冰|犹 ', '冰:形容极度寒冷;犹:还，仍然;俏:俊俏，美好的样子 ', '', '', '', b'1', 2, '', '2024-05-28 21:38:44', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (446, 4214, '俏也不争春，只把春来报。 ', 'qiào yě bù zhēng chūn ， zhī bǎ chūn lái bào 。 ', '梅花虽然俏丽，但并不炫耀自己，只是为了向人们报告春天到来的消息。 ', '', '', '', '', '', b'0', 3, '', '2024-05-28 21:38:44', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (447, 4214, '待到山花烂漫时，她在丛中笑。 ', 'dài dào shān huā làn màn shí ， tā zài cóng zhōng xiào 。 ', '等到百花盛开的时候，她将会感到无比欣慰。 ', '烂漫|丛中笑 ', '烂漫:颜色鲜明而美丽，花全部盛开的样子;丛中笑:百花盛开时，感到欣慰和高兴 ', '', '', '', b'1', 4, '', '2024-05-28 21:38:45', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (460, 4211, '篱落疏疏一径深，树头新绿未成阴。 ', 'lí luò shū shū yí jìng shēn ， shù tóu xīn lǜ wèi chéng yīn 。 ', '在稀稀落落的篱笆旁，有一条小路伸向远方。小路旁边的树上花已经凋落了，而新叶却刚刚长出，还没有形成树阴。 ', '篱落|疏疏|一径深|深|头|未成阴|阴 ', '篱落:篱笆;疏疏:稀疏，稀稀落落的样子;一径深:一条小路很远很远;深:深远;头:树枝头;未成阴:新叶还没有长得茂盛浓密，未形成树阴;阴:树叶茂盛浓密 ', '', '', '', b'1', 1, '', '2024-05-28 21:50:46', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (461, 4211, '儿童急走追黄蝶，飞入菜花无处寻。 ', 'ér tóng jí zǒu zhuī huáng dié ， fēi rù cài huā wú chù xún 。 ', '儿童们奔跑着，追捕那翩翩飞舞的黄色蝴蝶。可是蝴蝶飞到黄色的菜花丛中后，孩子们就再也分不清、找不到它们了。 ', '急走|走|黄蝶|无处|寻 ', '急走:奔跑着、快追;走:是跑的意思;黄蝶:黄颜色的蝴蝶;无处:没有地方;寻:寻找 ', '', '', '', NULL, 2, '', '2024-05-28 21:50:46', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (462, 4212, '梅子金黄杏子肥，麦花雪白菜花稀。 ', 'méi zǐ jīn huáng xìng zǐ féi ， mài huā xuě bái cài huā xī 。 ', '一树树梅子变得金黄，杏子也越长越大了;荞麦花一片雪白，油菜花倒显得稀稀落落。 ', '', '', '', '', '', b'0', 1, '', '2024-05-28 21:50:50', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (463, 4212, '日长篱落无人过，惟有蜻蜓蛱蝶飞。 ', 'rì cháng lí luò wú rén guò ， wéi yǒu qīng tíng jiá dié fēi 。 ', '白天长了，篱笆的影子随着太阳的升高变得越来越短，没有人经过;只有蜻蜓和蝴蝶绕着篱笆飞来飞去。 ', '蛱蝶 ', '蛱蝶:蝴蝶的一种 ', '', '', '', b'1', 2, '', '2024-05-28 21:50:50', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (464, 4271, '寒雨连江夜入吴，平明送客楚山孤。 ', 'hán yǔ lián jiāng yè rù wú ， píng míng sòng kè chǔ shān gū 。 ', '迷蒙的烟雨，连夜洒遍吴地江天;清晨送走你，孤对楚山离愁无限！ ', '寒雨|连江|吴|平明|客|楚山|孤 ', '寒雨:秋冬时节的冷雨;连江:雨水与江面连成一片，形容雨很大;吴:古代国名，这里泛指江苏南部、浙江北部一带;平明:天亮的时候;客:指作者的好友辛渐;楚山:楚地的山。这里的楚也指南京一带，因为古代吴、楚先后统治过这里，所以吴、楚可以通称;孤:独自，孤单一人。 ', '', '', '', b'0', 1, '', '2024-05-28 21:51:39', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (465, 4271, '洛阳亲友如相问，一片冰心在玉壶。 ', 'luò yáng qīn yǒu rú xiāng wèn ， yí piàn bīng xīn zài yù hú 。 ', '朋友啊，洛阳亲友若是问起我来;就说我依然冰心玉壶，坚守信念！ ', '洛阳|冰心|玉壶 ', '洛阳:现位于河南省西部、黄河南岸;冰心，比喻纯洁的心;玉壶，道教概念妙真道教义，专指自然无为虚无之心。 ', '', '', '', b'1', 2, '', '2024-05-28 21:51:39', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (466, 4267, '众鸟高飞尽，孤云独去闲。 ', 'zhòng niǎo gāo fēi jìn ， gū yún dú qù xián 。 ', '群鸟高飞，直至无影无踪。一片孤云独自悠闲地飘去。 ', '尽|孤云|独去|闲 ', '尽:没有了;孤云:孤单的云彩;独去，独自去;闲:形容云彩飘来飘去，悠闲自在的样子 ', '', '', '', b'0', 1, '', '2024-05-28 21:51:43', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (467, 4267, '相看两不厌，只有敬亭山。 ', 'xiāng kàn liǎng bú yàn ， zhǐ yǒu jìng tíng shān 。 ', '诗人与敬亭山相互凝视，彼此都不会感到厌倦。', '两不厌|满足 ', '两不厌:指诗人和敬亭山而言;厌:满足 ', '', '', '', b'0', 2, '', '2024-05-28 21:51:43', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (468, 4261, '胤恭勤不倦,博学多通。 ', 'yìn gōng qín bú juàn , bó xué duō tōng 。 ', '晋朝人车胤谨慎勤劳而不知疲倦,知识广博,学问精通。 ', '恭 ', '恭:谨慎 ', '', '', '', b'0', 1, '', '2024-05-28 21:51:46', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (469, 4261, '家贫不常得油，夏月,则练囊盛数十萤火以照书，以夜继日焉。 ', 'jiā pín bù cháng dé yóu ， xià yuè , zé liàn náng shèng shù shí yíng huǒ yǐ zhào shū ， yǐ yè jì rì yān 。 ', '(车胤)家境贫寒,不能经常得到香油(点灯,以便在灯下读书)。夏天的夜晚,(车胤)就用白绢做成(透光)的袋子,装几十个萤火虫照着书本,夜以继日地学习着。 ', '', '练囊:用白色绢子做袋;练:白绢,文中作动词用,用白绢做 ', '', '无论环境有多么恶劣,我们都要勤奋苦学,这样日后必有成就。', '', b'1', 2, '', '2024-05-28 21:51:46', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (470, 4241, '不论平地与山尖，无限风光尽被占。 ', 'bú lùn píng dì yǔ shān jiān ， wú xiàn fēng guāng jìn bèi zhàn 。 ', '无论是在平地，还是在那高山，哪里鲜花迎风盛开，哪里就有蜜蜂奔忙。 ', '山尖|尽|占 ', '山尖:山峰;尽:都;占:占其所有 ', '', '', '', b'0', 1, '', '2024-05-28 21:51:50', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (471, 4241, '采得百花成蜜后，为谁辛苦为谁甜？ ', 'cǎi dé bǎi huā chéng mì hòu ， wèi shuí xīn kǔ wèi shuí tián ？ ', '蜜蜂啊，你采尽百花酿成了花蜜，到底为谁付出辛苦，又想让谁品尝香甜？ ', '甜 ', '甜:醇香的蜂蜜 ', '', '', '', b'1', 2, '', '2024-05-28 21:51:50', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (475, 4221, '黄师塔前江水东，春光懒困倚微风。 ', 'huáng shī tǎ qián jiāng shuǐ dōng ， chūn guāng lǎn kùn yǐ wēi fēng 。 ', '黄师塔前那一江的碧波春水滚滚向东流，春天给人一种困倦让人想倚着春风小憩的感觉。 ', '黄师塔|塔 ', '黄师塔:黄师墓地;塔:墓地 ', '', '', '', b'0', 1, '', '2024-05-28 21:52:00', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (476, 4221, '桃花一簇开无主，可爱深红爱浅红。 ', 'táo huā yí cù kāi wú zhǔ ， kě ài shēn hóng ài qiǎn hóng 。 ', '江畔盛开的那一簇无主的桃花映入眼帘，究竟是爱深红色的还是更爱浅红色的呢？ ', '主 ', '主:主人 ', '', '', '', b'1', 2, '', '2024-05-28 21:52:00', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (477, 4213, '茅檐低小，溪上青青草。 ', 'máo yán dī xiǎo ， xī shàng qīng qīng cǎo 。 ', '草屋的茅檐又低又小，溪边长满了碧绿的小草。 ', '茅檐 ', '茅檐:茅屋的屋檐。 ', '', '', '', b'0', 1, '', '2024-05-28 21:52:07', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (478, 4213, '醉里吴音相媚好，白发谁家翁媪？ ', 'zuì lǐ wú yīn xiāng mèi hǎo ， bái fà shuí jiā wēng ǎo ？ ', '含有醉意的吴地方言，听起来温柔又美好，那满头白发的老人是谁家的呀？ ', '吴音|相媚好|翁媪 ', '吴音:吴地的方言，作者当时住在信州)今上饶)，这一带的方言为吴音;相媚好:指相互逗趣，取乐;翁媪)ǎo):老翁、老妇 ', '媪', '', '', b'1', 2, '', '2024-05-28 21:52:07', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (479, 4213, '大儿锄豆溪东，中儿正织鸡笼。 ', 'dà ér chú dòu xī dōng ， zhōng ér zhèng zhī jī lóng 。 ', '大儿子在溪东边的豆田锄草，二儿子正忙于编织鸡笼。 ', '锄豆|织 ', '锄豆:锄掉豆田里的草;织:编织，指编织鸡笼 ', '', '', '', b'0', 3, '', '2024-05-28 21:52:07', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (480, 4213, '最喜小儿亡赖，溪头卧剥莲蓬。 ', 'zuì xǐ xiǎo ér wáng lài ， xī tóu wò bāo lián péng 。 ', '最令人喜爱的是小儿子，他正横卧在溪头草丛，剥着刚摘下的莲蓬。 ', '亡赖|亡|卧 ', '亡)wú)赖:这里指小孩顽皮、淘气;亡，通“无”;卧:趴。 ', '亡', '', '', b'1', 4, '', '2024-05-28 21:52:07', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (481, 4232, '诗和音乐一样，生命全在节奏。—朱光潜。', 'shī hé yīn yuè yí yàng ， shēng mìng quán zài jié zòu 。 — zhū guāng qián ', '诗歌需要有鲜明的停顿和昂扬的节奏感，这与音乐所需要的节奏和旋律感是一致的。生命本身就是一个充满节奏的过程，从出生、成长、成熟到衰老，每一个阶段都有其独特的节奏。 ', '', '', '', '', '', b'0', 1, '', '2024-05-29 20:12:07', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (482, 4232, '诗是人类向未来寄发的信息，诗给人类以朝向理想的勇气。—艾青。', 'shī shì rén lèi xiàng wèi lái jì fā de xìn xī ， shī gěi rén lèi yǐ cháo xiàng lǐ xiǎng de yǒng qì 。 — ài qīng ', '通过诗歌，人类可以向未来传达自己的声音、经验和智慧，让后人从中汲取力量。诗歌具有强大的感染力和鼓舞力。人们可以找到坚持自己理想的勇气和动力，不断向前，追求更好的未来。 ', '', '', '', '', '', b'0', 2, '', '2024-05-29 20:12:07', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (483, 4232, '诗是强烈感情的自然流露，它源于宁静中回忆起来的情感。—[英国]华兹华斯。', 'shī shì qiáng liè gǎn qíng de zì rán liú lù ， tā yuán yú níng jìng zhōng huí yì qǐ lái de qíng gǎn 。 — [ yīng guó ] huá zī huá sī ', '诗歌是情感的艺术，它最直接地表达了诗人的内心世界。“宁静”指的是一种内心的平静和安宁，是诗人在创作之前或创作过程中的一种心态。在这种状态下，诗人能够更好地回忆起过去的经历和情感，从中汲取灵感，并将这些情感转化为诗歌。 ', '', '', '', '', '', b'0', 3, '', '2024-05-29 20:12:08', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (484, 4274, '天行健,君子以自强不息。——《周易》。', 'tiān xíng jiàn , jūn zǐ yǐ zì qiáng bù xī 。 — — 《 zhōu yì 》 ', '比喻君子(有德之人)应该具有自强不息、不断奋斗、永不言败的精神。这种精神不仅要求个人在遭遇困难时不屈不挠，更要求个人在安逸的环境中也不忘初心，持续追求更高的目标和更好的自我。 ', '天|行|健|君子|自强|不息 ', '天:宇宙、自然或天命;行:运行、运转;健:刚强劲健;君子:有道德修养、有高尚品质的人;自强:自我奋发图强、努力向上;不息:表示永不停息、永不放弃。 ', '', '', '', b'1', 1, '', '2024-05-29 20:12:12', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (485, 4274, '胜人者有力，自胜者强。——《老子》。', 'shèng rén zhě yǒu lì ， zì shèng zhě qiáng 。 — — 《 lǎo zǐ 》 ', '仅仅战胜他人或外部环境显示出的力量是有限的，而能够战胜自己内心的弱点、恐惧、欲望等，实现自我提升和超越的人，才是真正的强者。 ', '', '', '', '', '', b'0', 2, '', '2024-05-29 20:12:12', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (486, 4274, '不怨天，不尤人。——《论语》。', 'bú yuàn tiān ， bù yóu rén 。 — — 《 lún yǔ 》 ', '不抱怨天,不责怪人。在面对困难和挫折时，不要抱怨命运的不公或责怪他人的过错，而应该反思自己的行为和态度，寻找问题的根源，并努力改进自己。 ', '', '', '', '', '', b'1', 3, '', '2024-05-29 20:12:13', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (487, 4274, '生于忧患而死于安乐。——《孟子》。', 'shēng yú yōu huàn ér sǐ yú ān lè 。 — — 《 mèng zǐ 》 ', '困难和挑战(即“忧患”)能够激发人的斗志和潜能，使人变得更加强大和坚韧，从而能够生存下来;而过于安逸和舒适的环境(即“安乐”)则容易使人丧失警惕和斗志，最终导致失败甚至灭亡。', '生于忧患|死于安乐 ', '生于忧患:强调了忧患意识对于个人成长和生存的重要性;死于安乐:警告人们过度安乐和享乐可能带来的危害 ', '', '', '', b'1', 3, '', '2024-05-29 20:12:13', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (488, 4281, '少年不知勤学苦，老来方知读书迟。 ', 'shào nián bù zhī qín xué kǔ ， lǎo lái fāng zhī dú shū chí 。 ', '年轻的时候不知道好好发奋读书学习,到年老无力再奋斗时才知道后悔当年没努力。 ', '', '', '', '', '', b'1', 1, '', '2024-05-29 20:12:17', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (489, 4281, '一日读书一日功，一日不读十日空。 ', 'yí rì dú shū yí rì gōng ， yí rì bù dú shí rì kōng 。 ', '读一天书就有一天的收获，但如果有一天没读书就会丢失十天的读书的收获。因为读书是一个连续的过程，天天都要学习。 ', '', '', '', '', '', b'1', 2, '', '2024-05-29 20:12:17', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (490, 4281, '学习不怕根底浅，只要迈步总不迟。 ', 'xué xí bú pà gēn dǐ qiǎn ， zhǐ yào mài bù zǒng bù chí 。 ', '学习不怕基础差，只要迈步向前就不算晚。 ', '', '', '', '', '', b'1', 3, '', '2024-05-29 20:12:17', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (491, 4281, '书山有路勤为径，学海无涯苦作舟。 ', 'shū shān yǒu lù qín wèi jìng ， xué hǎi wú yá kǔ zuò zhōu 。 ', '在堆积如山的书籍中，要想攀登学问的高峰，勤奋就是那登顶的唯一路径;在无边无际的知识海洋里，要想畅游到达成功的彼岸，刻苦努力将化为一叶扁舟，助你前行。 ', '', '书山有路勤为径:在知识的山峰上，只有勤奋才是通往成功的路径;学海无涯:比喻知识的海洋无边无际，它告诉我们，学习是一个永无止境的过程，无论我们学到多少知识，都只是冰山一角;苦作舟:强调了在学习和求知的道路上，需要付出努力和艰辛;舟:在求知的道路上，以刻苦努力和坚持不懈为动力，推动自己不断前进的工具 ', '', '', '', b'1', 4, '', '2024-05-29 20:12:17', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (494, 4263, '孙敬字文宝，好学，晨夕不休。及至眠睡疲寝，以绳系头，悬屋梁。 ', 'sūn jìng zì wén bǎo ， hào xué ， chén xī bù xiū 。 jí zhì mián shuì pí qǐn ， yǐ shéng xì tóu ， xuán wū liáng 。 ', '汉朝人孙敬，字文宝，非常好学，从早到晚地读书。有时疲倦了，想睡觉，就用一根绳子系住头发，另一头拴在房梁上拉直。这时候如果再打瞌睡，就会被绳子拉醒。 ', '', '', '', '', '', b'0', 1, '', '2024-05-29 21:15:36', 'admin', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_accum_detail` VALUES (495, 4263, '(苏秦)读书欲睡，引锥自刺其股，血流至足。 ', ') sū qín ) dú shū yù shuì ， yǐn zhuī zì cì qí gǔ ， xuè liú zhì zú 。 ', '战国时期，苏秦读书欲睡，就拿锥子扎大腿，使自己清醒起来，再坚持读书的事。 ', '', '', '', '', '', b'0', 2, '', '2024-05-29 21:15:36', 'admin', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_chinese_poetry_detail
-- ----------------------------
DROP TABLE IF EXISTS `app_chinese_poetry_detail`;
CREATE TABLE `app_chinese_poetry_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '题目(标题/课文/园地)',
  `title_word` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '题目字词',
  `title_word_mean` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '题目字词含义',
  `title_pinyin_word` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '题目拼音字',
  `grade` tinyint(4) NULL DEFAULT NULL COMMENT '年级',
  `term` tinyint(4) NULL DEFAULT NULL COMMENT '学期',
  `unit` int(11) NULL DEFAULT NULL COMMENT '单元',
  `author` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `dynasty` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '朝代',
  `sentense` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '句子',
  `pinyin` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `mean` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '含义',
  `word` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字词(加注释字词)',
  `word_mean` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字词注释',
  `pinyin_word` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音字词',
  `truth` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '道理',
  `question` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最多2个问题',
  `is_vip` bit(1) NULL DEFAULT NULL COMMENT '重点句子',
  `inner_sort_no` int(11) NULL DEFAULT NULL COMMENT '题目内排序号',
  `category_id` int(32) NULL DEFAULT NULL COMMENT '内容分类(1诗2词3文言文4日积月累5词运用6人物7组词8情感9品质)',
  `child_category_id` int(32) NULL DEFAULT NULL COMMENT '子类',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '诗词明细' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_chinese_poetry_detail
-- ----------------------------
INSERT INTO `app_chinese_poetry_detail` VALUES (2, '宿新市徐公店', NULL, NULL, NULL, 4, 2, 1, '杨万里', '宋', '篱落疏疏一径深，树头新绿未成阴。', 'lí luò shū shū yí jìng shēn ， shù tóu xīn lǜ wèi chéng yīn 。', '在稀稀落落的篱笆旁，有一条小路伸向远方。小路旁边的树上花已经凋落了，而新叶却刚刚长出，还没有形成树阴。', '篱落|疏疏|一径深|深|头|未成阴|阴', '篱落：篱笆。\n疏疏：稀疏，稀稀落落的样子。\n一径深：一条小路很远很远。\n深，深远。\n头：树枝头。\n未成阴：新叶还没有长得茂盛浓密，未形成树阴。\n阴：树叶茂盛浓密。', NULL, '', NULL, b'1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_detail` VALUES (3, '宿新市徐公店', NULL, NULL, NULL, 4, 2, 1, '杨万里', '宋', '儿童急走追黄蝶，飞入菜花无处寻。', 'ér tóng jí zǒu zhuī huáng dié ， fēi rù cài huā wú chù xún 。', '儿童们奔跑着，追捕那翩翩飞舞的黄色蝴蝶。可是蝴蝶飞到黄色的菜花丛中后，孩子们就再也分不清、找不到它们了。', '急走|走|黄蝶|无处|寻', '急走：奔跑着、快追。\n走：是跑的意思。\n黄蝶：黄颜色的蝴蝶。\n无处：没有地方。\n寻：寻找。', NULL, '', NULL, b'0', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_detail` VALUES (4, '四时田园杂兴（其二十五）', NULL, NULL, NULL, 4, 2, 1, '范成大', '宋', '梅子金黄杏子肥，麦花雪白菜花稀。', 'méi zǐ jīn huáng xìng zǐ féi ， mài huā xuě bái cài huā xī 。 ', '一树树梅子变得金黄，杏子也越长越大了；荞麦花一片雪白，油菜花倒显得稀稀落落。', '', NULL, NULL, NULL, NULL, b'1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_detail` VALUES (5, '四时田园杂兴（其二十五） ', NULL, NULL, NULL, 4, 2, 1, '范成大', '宋', '日长篱落无人过，惟有蜻蜓蛱蝶飞。', 'rì cháng lí luò wú rén guò ， wéi yǒu qīng tíng jiá dié fēi 。', '白天长了，篱笆的影子随着太阳的升高变得越来越短，没有人经过；只有蜻蜓和蝴蝶绕着篱笆飞来飞去。', '蛱蝶', '蛱蝶：蝴蝶的一种。', NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_chinese_poetry_json
-- ----------------------------
DROP TABLE IF EXISTS `app_chinese_poetry_json`;
CREATE TABLE `app_chinese_poetry_json`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_id` int(11) NOT NULL COMMENT '系统ID',
  `grade` tinyint(4) NOT NULL COMMENT '年级',
  `term` tinyint(4) NOT NULL COMMENT '学期',
  `unit` tinyint(4) NULL DEFAULT NULL COMMENT '单元',
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `category_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '诗词分类',
  `json_data` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'json格式完整数据',
  `must_write` bit(1) NULL DEFAULT NULL COMMENT '默写',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_id`(`sys_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提供app_chinese_poetry关联表的数据,这是JSON格式完整数据,预留换JSON库' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_chinese_poetry_json
-- ----------------------------
INSERT INTO `app_chinese_poetry_json` VALUES (37, 4264, 4, 2, 6, '凿壁偷光', '2', '{\"sysId\":4264,\"grade\":4,\"term\":2,\"unit\":6,\"title\":\"凿壁偷光\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\" \",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":2,\"content\":[{\"innerSortNo\":1,\"sentense\":\"匡衡字稚圭，勤学而无烛。\",\"mean\":\"西汉时期有一个叫匡衡的人，他勤奋好学，但家中贫困，晚上没有灯光供他读书。\",\"word\":\"匡衡\",\"wordMean\":\"匡衡:东海承（今山东枣庄东南）人，西汉经学家，官至丞相;\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"kuāng héng zì zhì guī ， qín xué ér wú zhú 。\"},{\"innerSortNo\":2,\"sentense\":\"邻舍有烛而不逮，衡乃穿壁引其光，以书映光而读之。\",\"mean\":\"他看到邻居家的灯光透过墙壁照过来，于是就在墙上凿了一个洞，借着邻居家的灯光读书\",\"word\":\"逮|穿壁\",\"wordMean\":\"逮:（dài）到，及;穿壁:在墙上凿洞;\",\"wordPinyin\":\"逮\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"lín shè yǒu zhú ér bù dǎi ， héng nǎi chuān bì yǐn qí guāng ， yǐ shū yìng guāng ér dú zhī 。\"}],\"titlePinyin\":\"záo bì tōu guāng\"}', b'0', 'admin', '2024-05-26 18:54:47', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (38, 4265, 4, 2, 6, '程门立雪', '2', '{\"sysId\":4265,\"grade\":4,\"term\":2,\"unit\":6,\"title\":\"程门立雪\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\" \",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":2,\"content\":[{\"innerSortNo\":1,\"sentense\":\"又见程颐于洛，时盖年四十矣。\",\"mean\":\"杨时到洛阳求见程颐，杨时大概当时有四十岁了。\",\"word\":\"\",\"wordMean\":\"盖:大概;\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yòu jiàn chéng yí yú luò ， shí gài nián sì shí yǐ 。\"},{\"innerSortNo\":2,\"sentense\":\"一日见颐，颐偶瞑坐，时与游酢侍立不去，颐既觉，则门外雪深一尺矣。\",\"mean\":\"一天拜见程颐的时候，程颐偶尔坐着打瞌睡。杨时与游酢站在门外等着没有离开。等到程颐醒后，门外积雪已经一尺多厚了。\",\"word\":\"\",\"wordMean\":\"偶:动词，假借为遇;瞑坐:打瞌睡;瞑:闭上眼睛;侍立:恭敬地站在一旁;去:离开;颐既觉:程颐睡醒后;\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"学生恭敬求教，比喻尊师重教\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yí rì jiàn yí ， yí ǒu míng zuò ， shí yǔ yóu cù shì lì bú qù ， yí jì jué ， zé mén wài xuě shēn yì chǐ yǐ 。\"}],\"titlePinyin\":\"chéng mén lì xuě\"}', b'0', 'admin', '2024-05-26 18:55:56', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (44, 4273, 4, 2, 7, '墨梅', '0', '{\"sysId\":4273,\"grade\":4,\"term\":2,\"unit\":7,\"title\":\"墨梅\",\"titleWord\":\"墨梅\",\"titleWordMean\":\"墨梅:用墨笔勾勒出来的梅花\",\"titleWordPinyin\":\"\",\"author\":\"王冕\",\"dynasty\":\"元\",\"emotion\":\"\",\"categoryId\":0,\"content\":[{\"innerSortNo\":1,\"sentense\":\"我家洗砚池头树，朵朵花开淡墨痕。\",\"mean\":\"我家洗砚池边有一棵梅树，朵朵盛开的梅花都像是淡淡的墨痕点染而成。\",\"word\":\"洗砚池|池头|头\",\"wordMean\":\"洗砚池:传说会稽蕺山下有晋朝大书法家王羲之的洗砚池，池塘的水都染黑了。王冕称他家有家有洗砚池，意思是自己也像王羲之那样勤奋;池头:池边;头 :边上;淡墨:水墨画中将墨色分为四种，如，清墨、淡墨、浓墨、焦墨。这里是说那朵朵盛开的梅花，是用淡淡的墨迹点化成的;痕:痕迹。\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"wǒ jiā xǐ yàn chí tóu shù ， duǒ duǒ huā kāi dàn mò hén 。\"},{\"innerSortNo\":2,\"sentense\":\"不要人夸颜色好，只留清气满乾坤。\",\"mean\":\"它不需要别人去夸赞它的颜色好看，只需要梅花的清香气味弥漫在这天地之间。\",\"word\":\"清气|满乾坤|满|乾坤\",\"wordMean\":\"清气:梅花的清香之气;满乾坤:弥漫在天地间;满:弥漫;乾坤:天地间\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"bú yào rén kuā yán sè hǎo ， zhī liú qīng qì mǎn qián kūn 。\"}],\"titlePinyin\":\"mò méi\"}', b'0', 'admin', '2024-05-26 19:09:05', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (47, 4272, 4, 2, 7, '塞下曲', '0', '{\"sysId\":4272,\"grade\":4,\"term\":2,\"unit\":7,\"title\":\"塞下曲\",\"titleWord\":\"塞下曲\",\"titleWordMean\":\"塞下曲:古时边塞的一种军歌\",\"titleWordPinyin\":\"\",\"author\":\"卢纶\",\"dynasty\":\"唐\",\"emotion\":\"\",\"categoryId\":0,\"content\":[{\"innerSortNo\":1,\"sentense\":\"月黑雁飞高，单于夜遁逃。\",\"mean\":\"死寂之夜，乌云遮月，天边大雁惊飞，单于的军队想要趁着夜色悄悄潜逃。\",\"word\":\"单于|遁\",\"wordMean\":\"单于（chán yú ）:匈奴的首领，这里指入侵者的最高统帅;遁:逃走;\",\"wordPinyin\":\"单\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yuè hēi yàn fēi gāo ， chán yú yè dùn táo 。\"},{\"innerSortNo\":2,\"sentense\":\"欲将轻骑逐，大雪满弓刀。\",\"mean\":\"正想要带领轻骑兵一路追赶，大雪纷纷扬扬落满了身上的弓刀。\",\"word\":\"将|轻骑|逐|满\",\"wordMean\":\"将:率领;轻骑:轻装快速的骑兵;逐:追赶;满:沾满\",\"wordPinyin\":\"单\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yù jiāng qīng qí zhú ， dà xuě mǎn gōng dāo 。\"}],\"titlePinyin\":\"sāi xià qū\"}', b'0', 'admin', '2024-05-26 21:14:46', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (48, 4231, 4, 2, 3, '古代文人名言', '4', '{\"sysId\":4231,\"grade\":4,\"term\":2,\"unit\":3,\"title\":\"古代文人名言\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\" \",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":4,\"content\":[{\"innerSortNo\":1,\"sentense\":\"路漫漫其修远兮，吾将上下而求索。\",\"mean\":\"前方的道路漫长而又遥远啊，我将不遗余力地上下追求探索。表达了诗人在人生道路上不断探索和追求真理的决心。\",\"word\":\"\",\"wordMean\":\"《离骚》战国 屈原;\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"lù màn màn qí xiū yuǎn xī ， wú jiāng shàng xià ér qiú suǒ 。\"},{\"innerSortNo\":2,\"sentense\":\"采菊东篱下，悠然见南山。\",\"mean\":\"在东篱之下采摘菊花，悠然间，那远处的南山映入眼帘。描绘了他归隐田园后悠闲自得的生活状态，展现了他超脱世俗、追求自然之美的情怀。\",\"word\":\"\",\"wordMean\":\"饮酒(其五) 东晋 陶渊明;\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"cǎi jú dōng lí xià ， yōu rán jiàn nán shān 。\"},{\"innerSortNo\":3,\"sentense\":\"春眠不觉晓，处处闻啼鸟。\",\"mean\":\"描绘了春天的早晨，诗人被鸟儿的啼叫声唤醒，表达了诗人对春天的喜爱和珍惜。\",\"word\":\"\",\"wordMean\":\"《春晓》唐 孟浩然;\",\"pinyinWord\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"chūn mián bù jué xiǎo ， chù chù wén tí niǎo 。\"},{\"innerSortNo\":4,\"sentense\":\"风急天高猿啸哀，渚清沙白鸟飞回。\",\"mean\":\"风急天高，猿猴啼叫显得十分悲哀;水清沙白的河洲上有鸟儿在盘旋飞翔。描绘了一幅萧瑟的秋景图，表达了诗人内心的孤独和凄凉。\",\"word\":\"\",\"wordMean\":\"《登高》唐 杜甫;\",\"wordPinyin\":\"啸|渚\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"fēng jí tiān gāo yuán xiào āi ， zhǔ qīng shā bái niǎo fēi huí 。\"},{\"innerSortNo\":5,\"sentense\":\"国破山河在，城春草木深。\",\"mean\":\"国都沦陷只有山河依旧，春日的城区里荒草丛生。表达了对国家衰亡的悲痛和对故土的深深眷恋。\",\"word\":\"\",\"wordMean\":\"《春望》唐 杜甫;\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"guó pò shān hé zài ， chéng chūn cǎo mù shēn 。\"},{\"innerSortNo\":6,\"sentense\":\"师者，所以传道受业解惑也。\",\"mean\":\"强调了教师的重要性和职责，即传授道理、教授学业、解答疑惑。\",\"word\":\"\",\"wordMean\":\"《师说》唐 韩愈;\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shī zhě ， suǒ yǐ chuán dào shòu yè jiě huò yě 。\"},{\"innerSortNo\":7,\"sentense\":\"山不在高，有仙则名;水不在深，有龙则灵。\",\"mean\":\"山不在于它的高度，只要山上有神仙，它就会出名;水不在于它的深度，只要水里有龙，它就会显得有灵气。以山水作比喻，来说明一个道理:对于一个事物，我们不必过分关注它的外在形式或表面现象，而应该注重它的内在实质或内容。\",\"word\":\"\",\"wordMean\":\"《陋室铭》唐 刘禹锡;\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shān bú zài gāo ， yǒu xiān zé míng ; shuǐ bú zài shēn ， yǒu lóng zé líng 。\"},{\"innerSortNo\":8,\"sentense\":\"先天下之忧而忧，后天下之乐而乐。\",\"mean\":\"在天下人忧愁之前先忧愁，在天下人快乐之后才快乐。体现了作者忧国忧民的情怀和崇高的政治抱负。\",\"word\":\"\",\"wordMean\":\"《岳阳楼记》范仲淹;\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"xiān tiān xià zhī yōu ér yōu ， hòu tiān xià zhī lè ér lè 。\"},{\"innerSortNo\":9,\"sentense\":\"落红不是无情物，化作春泥更护花。\",\"mean\":\"这句话表达了作者对自然的深刻理解，即使花朵凋零，它们的生命也没有结束，而是化作春泥，滋养着新的生命。\",\"word\":\"\",\"wordMean\":\"《己亥杂诗·其五》龚自珍;\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"luò hóng bú shì wú qíng wù ， huà zuò chūn ní gèng hù huā 。\"}],\"titlePinyin\":\"gǔ dài wén rén míng yán\"}', b'0', 'admin', '2024-05-27 13:51:58', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (58, 4223, 4, 2, 2, '识字加油站', '6', '{\"sysId\":4223,\"grade\":4,\"term\":2,\"unit\":2,\"title\":\"识字加油站\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":6,\"content\":[{\"innerSortNo\":1,\"sentense\":\"滨—宾(     ) 洁—吉(     ) 减—咸(     )\",\"mean\":\"滨（海滨）—宾（宾馆） 洁（洁白）—吉（吉利） 减（减少）—咸（咸菜）\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"bīn — bīn (           )   jié — jí (           )   jiǎn — xián (           )\"},{\"innerSortNo\":2,\"sentense\":\"挑—兆(     ) 挺—廷(     ) 预—矛(     )\",\"mean\":\" 挑（挑战）—兆（预兆） 挺（挺立）—廷（宫廷） 预（预备）—矛（赠予）\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"tiāo — zhào (           )   tǐng — tíng (           )   yù — máo (           )\"},{\"innerSortNo\":3,\"sentense\":\"中—肿(     ) 介—阶(     ) 止—趾(      )\",\"mean\":\"中（中国）—肿（肿胀） 介（介意）—阶（台阶） 止（停止）—趾（脚趾）\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"zhōng — zhǒng (           )   jiè — jiē (           )   zhǐ — zhǐ (             )\"},{\"innerSortNo\":4,\"sentense\":\"凡—巩(     ) 正—政(     ) 刘—浏(     )\",\"mean\":\" 凡（平凡）—巩（巩固） 正（正好）—政（政府） 刘（刘海）—浏（浏览）\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"fán — gǒng (           )   zhèng — zhèng (           )   liú — liú (           )\"}],\"titlePinyin\":\"shí zì jiā yóu zhàn\"}', b'0', 'admin', '2024-05-28 09:13:19', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (60, 4282, 4, 2, 8, '表达情感', '7', '{\"sysId\":4282,\"grade\":4,\"term\":2,\"unit\":8,\"title\":\"表达情感\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":7,\"content\":[{\"innerSortNo\":1,\"sentense\":\"《四时田园杂兴》\",\"mean\":\"对农村生活的喜爱之情\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 sì shí tián yuán zá xīng 》\"},{\"innerSortNo\":2,\"sentense\":\"《宿新市徐公店》\",\"mean\":\"对田园生活的赞美和对儿童的喜爱之情。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 sù xīn shì xú gōng diàn 》\"},{\"innerSortNo\":3,\"sentense\":\"《清平乐·村居》\",\"mean\":\"对幸福和谐安居乐业乡村生活的欣赏和赞美之情。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 qīng píng lè · cūn jū 》\"},{\"innerSortNo\":4,\"sentense\":\"《乡下人家》\",\"mean\":\"对乡下人家的欣赏和喜爱之情。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 xiāng xià rén jiā 》\"},{\"innerSortNo\":5,\"sentense\":\"《三月桃花水》\",\"mean\":\"对桃花水的喜爱和赞美之情。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 sān yuè táo huā shuǐ 》\"},{\"innerSortNo\":6,\"sentense\":\"《短诗三首》\",\"mean\":\"对母爱、童心和自然的赞美。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 duǎn shī sān shǒu 》\"},{\"innerSortNo\":7,\"sentense\":\"《繁星（七一）》\",\"mean\":\"对母亲的依恋和母爱的温馨。\",\"word\":\"温馨\",\"wordMean\":\"温馨:温暖、体贴\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 fán xīng （ qī yī ） 》\"},{\"innerSortNo\":8,\"sentense\":\"《繁星（一五九）》\",\"mean\":\"对母亲的依恋。\",\"word\":\"依恋\",\"wordMean\":\"依恋:情感上的依赖和信任\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 fán xīng （ yī wǔ jiǔ ） 》\"},{\"innerSortNo\":9,\"sentense\":\"《绿》\",\"mean\":\"对大自然的喜爱和赞美。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 lǜ 》\"},{\"innerSortNo\":10,\"sentense\":\"《白桦》\",\"mean\":\"对家乡和大自然的热爱之情。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 bái huà 》\"},{\"innerSortNo\":11,\"sentense\":\"《在天晴了的时候》\",\"mean\":\"对大自然的热爱和赞美之情，也表现了作者对恬淡、超脱的生活的向往。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 zài tiān qíng le de shí hòu 》\"},{\"innerSortNo\":12,\"sentense\":\"《猫》\",\"mean\":\"对猫的喜爱之情。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 māo 》\"},{\"innerSortNo\":13,\"sentense\":\"《母鸡》\",\"mean\":\"对母爱的赞颂之情\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 mǔ jī 》\"},{\"innerSortNo\":14,\"sentense\":\"《白鹅》\",\"mean\":\"对白鹅的喜爱。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 bái é 》\"},{\"innerSortNo\":15,\"sentense\":\"《海上日出》\",\"mean\":\"对这一自然奇观的喜爱之情及热爱大自然、追求光明的思想感情。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 hǎi shàng rì chū 》\"},{\"innerSortNo\":16,\"sentense\":\"《囊萤夜读》\",\"mean\":\"无论环境有多么恶劣，我们都要勤奋苦学，这样才会有所成就。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 náng yíng yè dú 》\"},{\"innerSortNo\":17,\"sentense\":\"《铁杵成针》\",\"mean\":\"只要有毅力、肯下苦功，事情就能成功。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 tiě chǔ chéng zhēn 》\"},{\"innerSortNo\":18,\"sentense\":\"《芙蓉楼送辛渐》\",\"mean\":\"送别诗，表达了诗人与友人的离情别意，以及诗人洁身自好的志向和品格。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 fú róng lóu sòng xīn jiàn 》\"},{\"innerSortNo\":19,\"sentense\":\"《塞下曲》\",\"mean\":\"边塞诗，诗人描述了一个精彩的边塞战斗场景，赞扬了戍边将士的英勇威武，字里午间充溢着英雄气概。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 sāi xià qū 》\"},{\"innerSortNo\":20,\"sentense\":\"《墨梅》\",\"mean\":\"题画诗，借墨梅自喻，表达诗人的人生态度以及不向世俗献媚的高尚情操。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 mò méi 》\"},{\"innerSortNo\":21,\"sentense\":\"《宝葫芦的秘密（节选）》\",\"mean\":\"幸福要靠自己的努力。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 bǎo hú lu de mì mì （ jié xuǎn ） 》\"}],\"titlePinyin\":\"biǎo dá qíng gǎn\"}', b'0', 'admin', '2024-05-28 09:42:55', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (61, 4283, 4, 2, 8, '表达品质', '8', '{\"sysId\":4283,\"grade\":4,\"term\":2,\"unit\":8,\"title\":\"表达品质\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":8,\"content\":[{\"innerSortNo\":1,\"sentense\":\"《千年梦圆在今朝》\",\"mean\":\"勇于探索、不懈努力、团结协作。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 qiān nián mèng yuán zài jīn cháo 》\"},{\"innerSortNo\":2,\"sentense\":\"《白桦》\",\"mean\":\"高洁、挺拔、不畏严寒。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 bái huà 》\"},{\"innerSortNo\":3,\"sentense\":\"《猫》\",\"mean\":\"古怪，淘气可爱。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 māo 》\"},{\"innerSortNo\":4,\"sentense\":\"《母鸡》\",\"mean\":\"负责、慈爱、勇敢、辛苦。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 mǔ jī 》\"},{\"innerSortNo\":5,\"sentense\":\"《白鹅》\",\"mean\":\"高傲。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 bái é 》\"},{\"innerSortNo\":6,\"sentense\":\"《小英雄雨来（节选）》\",\"mean\":\"机智勇敢、热爱祖国、坚强不屈\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 xiǎo yīng xióng yǔ lái （ jié xuǎn ） 》\"},{\"innerSortNo\":7,\"sentense\":\"《我们家的男子汉》\",\"mean\":\"率真、自主独立、沉着勇敢。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 wǒ men jiā de nán zǐ hàn 》\"},{\"innerSortNo\":8,\"sentense\":\"《芦花鞋》\",\"mean\":\"吃苦耐劳、勤快能干、为他人着想。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 lú huā xié 》\"},{\"innerSortNo\":9,\"sentense\":\"《囊萤夜读》《铁杵成针》\",\"mean\":\"勤奋学习、坚持不懈。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 náng yíng yè dú 》 《 tiě chǔ chéng zhēn 》\"},{\"innerSortNo\":10,\"sentense\":\"《“诺曼底号”遇难记》\",\"mean\":\"忠于职守、舍己救人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 “ nuò màn dǐ hào ” yù nàn jì 》\"},{\"innerSortNo\":11,\"sentense\":\"《墨梅》\",\"mean\":\"高洁、清秀、淡雅、朴素。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 mò méi 》\"},{\"innerSortNo\":12,\"sentense\":\"《黄继光》\",\"mean\":\"英勇顽强、视死如归、奋不顾身。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 huáng jì guāng 》\"},{\"innerSortNo\":13,\"sentense\":\"《宝葫芦的秘密（节选）》\",\"mean\":\"淘气、顽皮、好奇的、爱听故事的、充满童真。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 bǎo hú lu de mì mì （ jié xuǎn ） 》\"},{\"innerSortNo\":14,\"sentense\":\"《巨人的花园》\",\"mean\":\"纯真、善良、充满活力。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"《 jù rén de huā yuán 》\"}],\"titlePinyin\":\"biǎo dá pǐn zhì\"}', b'0', 'admin', '2024-05-28 09:54:50', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (68, 4275, 4, 2, 7, '描写心情', '5', '{\"sysId\":4275,\"grade\":4,\"term\":2,\"unit\":7,\"title\":\"描写心情\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":5,\"content\":[{\"innerSortNo\":1,\"sentense\":\"悲戚\",\"mean\":\"悲痛哀伤。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"bēi qī\"},{\"innerSortNo\":2,\"sentense\":\"焦躁不安\",\"mean\":\"指焦急烦躁、心神不宁。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"jiāo zào bù ān\"},{\"innerSortNo\":3,\"sentense\":\"心急如焚\",\"mean\":\"心里急得像着火一样，形容非常着急。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"xīn jí rú fén\"}],\"titlePinyin\":\"miáo xiě xīn qíng\"}', b'0', 'admin', '2024-05-28 12:47:02', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (69, 4222, 4, 2, 2, '计算机', '5', '{\"sysId\":4222,\"grade\":4,\"term\":2,\"unit\":2,\"title\":\"计算机\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":5,\"content\":[{\"innerSortNo\":1,\"sentense\":\"云技术\",\"mean\":\"云技术是一种将数据和计算任务存储在远程服务器上，而不是本地计算机上的技术。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yún jì shù\"},{\"innerSortNo\":2,\"sentense\":\"多媒体\",\"mean\":\"多媒体是指结合文本、声音、图像、动画等多种媒体形式的信息展示方式。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"duō méi tǐ\"},{\"innerSortNo\":3,\"sentense\":\"互联网\",\"mean\":\"互联网是一个由全球各地的计算机和网络设备相互连接而成的网络。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"hù lián wǎng\"},{\"innerSortNo\":4,\"sentense\":\"克隆\",\"mean\":\"创建一个现有数据、文件、硬盘分区或整个硬盘的完全相同的副本。这个过程被称为克隆。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"kè lóng\"},{\"innerSortNo\":5,\"sentense\":\"桌面\",\"mean\":\"在计算机中，桌面是我们打开电脑后看到的屏幕界面，上面通常有各种图标和工具栏。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"zhuō miàn\"},{\"innerSortNo\":6,\"sentense\":\"窗口\",\"mean\":\"在计算机中，窗口是屏幕上用于显示和操作某个程序或文件的区域。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"chuāng kǒu\"},{\"innerSortNo\":7,\"sentense\":\"潜水\",\"mean\":\"在互联网上，特别是在线社交媒体平台，匿名或伪装身份的个体积极参与并探索某个特定社区或话题，而不被其他用户所察觉。\",\"word\":\"匿名\",\"wordMean\":\"匿名:使用虚拟身份，不透露真实姓名或个人信息，以保护自己的隐私\",\"wordPinyin\":\"匿\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"qián shuǐ\"},{\"innerSortNo\":8,\"sentense\":\"文件夹\",\"mean\":\"在计算机中，文件夹用于存储和组织文件。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"wén jiàn jiá\"}],\"titlePinyin\":\"jì suàn jī\"}', b'0', 'admin', '2024-05-28 12:47:08', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (71, 4216, 4, 2, 1, '描写农村', '5', '{\"sysId\":4216,\"grade\":4,\"term\":2,\"unit\":1,\"title\":\"描写农村\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":5,\"content\":[{\"innerSortNo\":1,\"sentense\":\"肥沃\",\"mean\":\"农村的土地质量很好，含有适合植物生长的丰富养分和水分。这样的土地能够种植出更多的农作物\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"féi wò\"},{\"innerSortNo\":2,\"sentense\":\"静谧\",\"mean\":\"强调了农村的宁静、清幽和没有喧嚣打扰的特点;人们可以感受到一种宁静和放松，远离了城市的喧嚣和压力\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"jìng mì\"},{\"innerSortNo\":3,\"sentense\":\"炊烟袅袅\",\"mean\":\"形容烧火做饭时冒出的青烟缓缓上升，随风飘散。这个词语通常用来描绘乡村或家庭生活的宁静和平和。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"chuī yān niǎo niǎo\"},{\"innerSortNo\":3,\"sentense\":\"依山傍水\",\"mean\":\"形容建筑物或自然景色紧靠着山和水，环境优美，景色宜人。这个词语常用来形容风景秀丽的地区或是理想的居住地。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yī shān bàng shuǐ\"},{\"innerSortNo\":3,\"sentense\":\"鸡犬相闻\",\"mean\":\"形容一个地方非常安静，连鸡鸣和狗吠的声音都能听得清清楚楚。这个词语常用来形容乡村或郊区的宁静和安详。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"jī quǎn xiāng wén\"}],\"titlePinyin\":\"miáo xiě nóng cūn\"}', b'0', 'admin', '2024-05-28 12:47:19', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (73, 4276, 4, 2, 7, '人物品质', '5', '{\"sysId\":4276,\"grade\":4,\"term\":2,\"unit\":7,\"title\":\"人物品质\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":5,\"content\":[{\"innerSortNo\":1,\"sentense\":\"和蔼\",\"mean\":\"性情温和，态度可亲。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"hé ǎi\"},{\"innerSortNo\":2,\"sentense\":\"慷慨\",\"mean\":\"充满正气，情绪激昂。大方，不吝啬\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"kāng kǎi\"},{\"innerSortNo\":3,\"sentense\":\"贤惠\",\"mean\":\"指妇女心地善良，通情达理，对人和蔼可亲。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"xián huì\"},{\"innerSortNo\":3,\"sentense\":\"临危不惧\",\"mean\":\"面临着危险从容不迫，毫不畏惧。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"lín wēi bú jù\"},{\"innerSortNo\":3,\"sentense\":\"彬彬有礼\",\"mean\":\"形容文雅有礼貌的样子\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"bīn bīn yǒu lǐ\"}],\"titlePinyin\":\"rén wù pǐn zhì\"}', b'0', 'admin', '2024-05-28 12:49:21', NULL, NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (74, 4242, 4, 2, 4, '动物喻人', '5', '{\"sysId\":4242,\"grade\":4,\"term\":2,\"unit\":1,\"title\":\"动物喻人\",\"titlePinyin\":\"dòng wù yù rén\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":5,\"content\":[{\"innerSortNo\":1,\"sentense\":\"千里马 \",\"mean\":\"比喻有才干的人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"qiān lǐ mǎ  \"},{\"innerSortNo\":2,\"sentense\":\"老黄牛 \",\"mean\":\"比喻默不作声、踏实工作的人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"lǎo huáng niú  \"},{\"innerSortNo\":3,\"sentense\":\"百灵鸟 \",\"mean\":\"比喻歌声甜润、清脆的歌手。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"bǎi líng niǎo  \"},{\"innerSortNo\":4,\"sentense\":\"领头羊 \",\"mean\":\"比喻在团队中起主导作用的人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"lǐng tóu yáng  \"},{\"innerSortNo\":5,\"sentense\":\"小蜜蜂 \",\"mean\":\"比喻勤劳的人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"xiǎo mì fēng  \"},{\"innerSortNo\":6,\"sentense\":\"纸老虎 \",\"mean\":\"比喻外强中干的人。外表看似强大，但内在却缺乏实力、底气不足的人或事物\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"zhǐ lǎo hǔ  \"},{\"innerSortNo\":7,\"sentense\":\"变色龙 \",\"mean\":\"比喻在生活中善于变化伪装的人，或者比喻立场不稳、见风使舵的人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"biàn sè lóng  \"},{\"innerSortNo\":8,\"sentense\":\"铁公鸡 \",\"mean\":\"比喻吝啬钱财，一毛不拔的人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"tiě gōng jī  \"},{\"innerSortNo\":9,\"sentense\":\"应声虫 \",\"mean\":\"比喻没有主见，随声附和的人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yìng shēng chóng  \"},{\"innerSortNo\":10,\"sentense\":\"哈巴狗 \",\"mean\":\"比喻没有骨气、摇尾乞怜的人。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"hǎ ba gǒu  \"}]}', b'0', 'admin', '2024-05-28 13:09:10', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (76, 4262, 4, 2, 6, '铁杵成针', '2', '{\"sysId\":4262,\"grade\":4,\"term\":2,\"unit\":6,\"title\":\"铁杵成针\",\"titleWord\":\"铁杵\",\"titleWordMean\":\"铁杵:\",\"titleWordPinyin\":\"杵\",\"author\":\" \",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":2,\"content\":[{\"innerSortNo\":1,\"sentense\":\"磨针溪，在眉州象耳山下。\",\"mean\":\" 磨针溪是在眉州的象耳山脚下\",\"word\":\"眉州\",\"wordMean\":\"眉州:地名，今四川省眉山一带;\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"mó zhēn xī ， zài méi zhōu xiàng ěr shān xià 。\"},{\"innerSortNo\":2,\"sentense\":\"世传李白读书山中，未成，弃去。\",\"mean\":\"世世代代相传李白在山中读书的时候，没有完成好自己的学业，就放弃学习离开了\",\"word\":\"世传|成|去\",\"wordMean\":\"世传:世世代代相传;成:完成;去:离开;\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shì chuán lǐ bái dú shū shān zhōng ， wèi chéng ， qì qù 。\"},{\"innerSortNo\":3,\"sentense\":\"过小溪，逢老媪，方磨铁杵，问之，曰:“欲作针。”\",\"mean\":\"他路过一条小溪，遇见一位老妇人在磨铁棒，于是问她在干什么，老妇人说:“我想把它磨成针。”\",\"word\":\"逢|媪|方|铁杵|欲|感|之\",\"wordMean\":\"逢:碰上;媪:妇女的统称;方:正在;铁杵:用来舂米或捣衣的铁棒;欲:想要;感:被……感动;之:代词，指代老妇人在做的事\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"guò xiǎo xī ， féng lǎo ǎo ， fāng mó tiě chǔ ， wèn zhī ， yuē : “ yù zuò zhēn 。 ”\"},{\"innerSortNo\":4,\"sentense\":\"太白感其意，还卒业。\",\"mean\":\"李白被她的精神感动，就回去完成学业\",\"word\":\"还卒业\",\"wordMean\":\"还卒业:回去完成了学业\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"tài bái gǎn qí yì ， hái zú yè 。\"}],\"titlePinyin\":\"tiě chǔ chéng zhēn\"}', b'0', 'admin', '2024-05-28 13:38:03', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (84, 4243, 4, 2, 4, '识字加油站', '6', '{\"sysId\":4243,\"grade\":4,\"term\":2,\"unit\":4,\"title\":\"识字加油站\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":6,\"content\":[{\"innerSortNo\":1,\"sentense\":\"杆—肝（     ）—秆（     ） 消—俏（     ）—峭（     ） \",\"mean\":\"杆—肝（肝脏）—秆（麦秆） 消—俏（俏丽）—峭（陡峭）\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"gān — gān （           ） — gǎn （           ）   xiāo — qiào （           ） — qiào （           ）  \"},{\"innerSortNo\":2,\"sentense\":\"捕—哺（     ）—浦（     ） 轮—沦（     ）—抡（     ） \",\"mean\":\" 捕—哺（哺育）—浦（黄浦江） 轮—沦（沦落）—抡（抡拳） \",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"bǔ — bǔ （           ） — pǔ （           ）   lún — lún （           ） — lūn （           ）  \"},{\"innerSortNo\":3,\"sentense\":\"换—涣（     ）—焕（     ） 骏—俊（     ）—峻（     ）\",\"mean\":\"换—涣（涣散）—焕（焕发） 骏—俊（英俊）—峻（严峻）\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"huàn — huàn （           ） — huàn （           ）   jùn — jùn （           ） — jùn （           ）\"}],\"titlePinyin\":\"shí zì jiā yóu zhàn\"}', b'0', 'admin', '2024-05-28 14:06:08', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (85, 4215, 4, 2, 1, '描写城市', '5', '{\"sysId\":4215,\"grade\":4,\"term\":2,\"unit\":1,\"title\":\"描写城市\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":5,\"content\":[{\"innerSortNo\":1,\"sentense\":\"繁华\",\"mean\":\"城市的经济、文化和人口等方面的繁荣和兴旺\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"fán huá\"},{\"innerSortNo\":2,\"sentense\":\"璀璨\",\"mean\":\"在夜晚时灯光辉煌、光彩夺目，呈现出一种非常繁荣、美丽和充满活力的景象\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"cuǐ càn\"},{\"innerSortNo\":3,\"sentense\":\"高楼林立\",\"mean\":\"形容城市中高层建筑密集，建筑物高耸入云，密密麻麻地排列在一起。这通常用来描述现代化的大都市景象。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"gāo lóu lín lì\"},{\"innerSortNo\":3,\"sentense\":\"车水马龙\",\"mean\":\"形容车辆和行人密集，道路繁忙，交通状况非常繁忙和拥堵。这个词语常用来形容城市的繁华和热闹。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"chē shuǐ mǎ lóng\"},{\"innerSortNo\":3,\"sentense\":\"灯火辉煌\",\"mean\":\"形容灯光璀璨，灯火通明，非常明亮。这通常用来描述城市夜晚的美丽景象，或者是庆祝活动的热闹场面。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"dēng huǒ huī huáng\"}],\"titlePinyin\":\"miáo xiě chéng shì\"}', b'0', 'admin', '2024-05-28 14:07:59', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (104, 4214, 4, 2, 1, '卜算子·咏梅', '1', '{\"sysId\":4214,\"grade\":4,\"term\":2,\"unit\":1,\"title\":\"卜算子·咏梅\",\"titlePinyin\":\"bǔ suàn zǐ · yǒng méi\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"卜\",\"author\":\" 毛泽东\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":1,\"content\":[{\"innerSortNo\":1,\"sentense\":\"风雨送春归，飞雪迎春到。\",\"mean\":\"风雨把春天送归这里，飞舞的雪花又在迎接春天的来到。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"fēng yǔ sòng chūn guī ， fēi xuě yíng chūn dào 。\"},{\"innerSortNo\":2,\"sentense\":\"已是悬崖百丈冰，犹有花枝俏。\",\"mean\":\"已经是冰封雪冻最寒冷的时候，悬崖边上还盛开着俏丽的梅花。\",\"word\":\"冰|犹\",\"wordMean\":\"冰：形容极度寒冷；犹：还，仍然；俏：俊俏，美好的样子\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yǐ shì xuán yá bǎi zhàng bīng ， yóu yǒu huā zhī qiào 。\"},{\"innerSortNo\":3,\"sentense\":\"俏也不争春，只把春来报。\",\"mean\":\"梅花虽然俏丽，但并不炫耀自己，只是为了向人们报告春天到来的消息。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"qiào yě bù zhēng chūn ， zhī bǎ chūn lái bào 。\"},{\"innerSortNo\":4,\"sentense\":\"待到山花烂漫时，她在丛中笑。\",\"mean\":\"等到百花盛开的时候，她将会感到无比欣慰。\",\"word\":\"烂漫|丛中笑\",\"wordMean\":\"烂漫：颜色鲜明而美丽，花全部盛开的样子；丛中笑：百花盛开时，感到欣慰和高兴\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"dài dào shān huā làn màn shí ， tā zài cóng zhōng xiào 。\"}]}', b'1', 'admin', '2024-05-28 21:38:44', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (110, 4211, 4, 2, 1, '宿新市徐公店', '0', '{\"sysId\":4211,\"grade\":4,\"term\":2,\"unit\":1,\"title\":\"宿新市徐公店\",\"titlePinyin\":\"sù xīn shì xú gōng diàn\",\"titleWord\":\"新市|徐公店|公\",\"titleWordMean\":\"新市:地名，在今湖南攸县北;徐公店:姓徐的人家开的旅店;公:古代对男子的尊称\",\"titleWordPinyin\":\"\",\"author\":\"杨万里\",\"dynasty\":\"宋\",\"emotion\":\"\",\"categoryId\":0,\"content\":[{\"innerSortNo\":1,\"sentense\":\"篱落疏疏一径深，树头新绿未成阴。\",\"mean\":\"在稀稀落落的篱笆旁，有一条小路伸向远方。小路旁边的树上花已经凋落了，而新叶却刚刚长出，还没有形成树阴。\",\"word\":\"篱落|疏疏|一径深|深|头|未成阴|阴\",\"wordMean\":\"篱落:篱笆;疏疏:稀疏，稀稀落落的样子;一径深:一条小路很远很远;深:深远;头:树枝头;未成阴:新叶还没有长得茂盛浓密，未形成树阴;阴:树叶茂盛浓密\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"lí luò shū shū yí jìng shēn ， shù tóu xīn lǜ wèi chéng yīn 。\"},{\"innerSortNo\":2,\"sentense\":\"儿童急走追黄蝶，飞入菜花无处寻。\",\"mean\":\"儿童们奔跑着，追捕那翩翩飞舞的黄色蝴蝶。可是蝴蝶飞到黄色的菜花丛中后，孩子们就再也分不清、找不到它们了。\",\"word\":\"急走|走|黄蝶|无处|寻\",\"wordMean\":\"急走:奔跑着、快追;走:是跑的意思;黄蝶:黄颜色的蝴蝶;无处:没有地方;寻:寻找\",\"wordPinyin\":\"\",\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"ér tóng jí zǒu zhuī huáng dié ， fēi rù cài huā wú chù xún 。\"}],\"mustWrite\":1}', b'1', 'admin', '2024-05-28 21:50:46', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (111, 4212, 4, 2, 1, '四时田园杂兴（其二十五）', '0', '{\"sysId\":4212,\"grade\":4,\"term\":2,\"unit\":1,\"title\":\"四时田园杂兴（其二十五）\",\"titlePinyin\":\"sì shí tián yuán zá xīng （ qí èr shí wǔ ）\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"范成大\",\"dynasty\":\"宋\",\"emotion\":\"\",\"categoryId\":0,\"content\":[{\"innerSortNo\":1,\"sentense\":\"梅子金黄杏子肥，麦花雪白菜花稀。\",\"mean\":\"一树树梅子变得金黄，杏子也越长越大了;荞麦花一片雪白，油菜花倒显得稀稀落落。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"méi zǐ jīn huáng xìng zǐ féi ， mài huā xuě bái cài huā xī 。\"},{\"innerSortNo\":2,\"sentense\":\"日长篱落无人过，惟有蜻蜓蛱蝶飞。\",\"mean\":\"白天长了，篱笆的影子随着太阳的升高变得越来越短，没有人经过;只有蜻蜓和蝴蝶绕着篱笆飞来飞去。\",\"word\":\"蛱蝶\",\"wordMean\":\"蛱蝶:蝴蝶的一种\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"rì cháng lí luò wú rén guò ， wéi yǒu qīng tíng jiá dié fēi 。\"}],\"mustWrite\":1}', b'1', 'admin', '2024-05-28 21:50:50', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (112, 4271, 4, 2, 7, '芙蓉楼送辛渐', '0', '{\"sysId\":4271,\"grade\":4,\"term\":2,\"unit\":7,\"title\":\"芙蓉楼送辛渐\",\"titleWord\":\"芙蓉楼|辛渐\",\"titleWordMean\":\"芙蓉楼：原名西北楼，故址在今江苏镇江北，下临长江；辛渐：诗人的一位朋友。\",\"titleWordPinyin\":\"\",\"author\":\"王昌龄\",\"dynasty\":\"唐\",\"emotion\":\"\",\"categoryId\":0,\"content\":[{\"innerSortNo\":1,\"sentense\":\"寒雨连江夜入吴，平明送客楚山孤。\",\"mean\":\"迷蒙的烟雨，连夜洒遍吴地江天；清晨送走你，孤对楚山离愁无限！\",\"word\":\"寒雨|连江|吴|平明|客|楚山|孤\",\"wordMean\":\"寒雨：秋冬时节的冷雨；连江：雨水与江面连成一片，形容雨很大；吴：古代国名，这里泛指江苏南部、浙江北部一带；平明：天亮的时候；客：指作者的好友辛渐；楚山：楚地的山。这里的楚也指南京一带，因为古代吴、楚先后统治过这里，所以吴、楚可以通称；孤：独自，孤单一人。\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"hán yǔ lián jiāng yè rù wú ， píng míng sòng kè chǔ shān gū 。\"},{\"innerSortNo\":2,\"sentense\":\"洛阳亲友如相问，一片冰心在玉壶。\",\"mean\":\"朋友啊，洛阳亲友若是问起我来；就说我依然冰心玉壶，坚守信念！\",\"word\":\"洛阳|冰心|玉壶\",\"wordMean\":\"洛阳：现位于河南省西部、黄河南岸；冰心，比喻纯洁的心；玉壶，道教概念妙真道教义，专指自然无为虚无之心。\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"luò yáng qīn yǒu rú xiāng wèn ， yí piàn bīng xīn zài yù hú 。\"}],\"titlePinyin\":\"fú róng lóu sòng xīn jiàn\",\"mustWrite\":1}', b'1', 'admin', '2024-05-28 21:51:39', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (113, 4267, 4, 2, 6, '独坐敬亭山', '0', '{\"sysId\":4267,\"grade\":4,\"term\":2,\"unit\":6,\"title\":\"独坐敬亭山\",\"titleWord\":\"敬亭山\",\"titleWordMean\":\"敬亭山:在今安徽宣城市北。:\",\"titleWordPinyin\":\"\",\"author\":\"李白\",\"dynasty\":\"唐\",\"emotion\":\"\",\"categoryId\":0,\"content\":[{\"innerSortNo\":1,\"sentense\":\"众鸟高飞尽，孤云独去闲。\",\"mean\":\"群鸟高飞，直至无影无踪。一片孤云独自悠闲地飘去。\",\"word\":\"尽|孤云|独去|闲\",\"wordMean\":\"尽:没有了;孤云:孤单的云彩;独去，独自去;闲:形容云彩飘来飘去，悠闲自在的样子\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"zhòng niǎo gāo fēi jìn ， gū yún dú qù xián 。\"},{\"innerSortNo\":2,\"sentense\":\"相看两不厌，只有敬亭山。\",\"mean\":\"诗人与敬亭山相互凝视，彼此都不会感到厌倦\",\"word\":\"两不厌|满足\",\"wordMean\":\"两不厌:指诗人和敬亭山而言;厌:满足\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"xiāng kàn liǎng bú yàn ， zhǐ yǒu jìng tíng shān 。\"}],\"titlePinyin\":\"dú zuò jìng tíng shān\",\"mustWrite\":1}', b'1', 'admin', '2024-05-28 21:51:43', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (114, 4261, 4, 2, 6, '囊萤夜读', '2', '{\"sysId\":4261,\"grade\":4,\"term\":2,\"unit\":6,\"title\":\"囊萤夜读\",\"titleWord\":\"囊萤|囊\",\"titleWordMean\":\"囊萤:用袋子装萤火虫;囊:文中作动词用,用袋子装\",\"titleWordPinyin\":\"\",\"author\":\" \",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":2,\"content\":[{\"innerSortNo\":1,\"sentense\":\"胤恭勤不倦,博学多通。\",\"mean\":\"晋朝人车胤谨慎勤劳而不知疲倦,知识广博,学问精通。\",\"word\":\"恭\",\"wordMean\":\"恭:谨慎\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yìn gōng qín bú juàn , bó xué duō tōng 。\"},{\"innerSortNo\":2,\"sentense\":\"家贫不常得油，夏月,则练囊盛数十萤火以照书，以夜继日焉。\",\"mean\":\"(车胤)家境贫寒,不能经常得到香油(点灯,以便在灯下读书)。夏天的夜晚,(车胤)就用白绢做成(透光)的袋子,装几十个萤火虫照着书本,夜以继日地学习着。\",\"word\":\"\",\"wordMean\":\"练囊:用白色绢子做袋;练:白绢,文中作动词用,用白绢做\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"无论环境有多么恶劣,我们都要勤奋苦学,这样日后必有成就\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"jiā pín bù cháng dé yóu ， xià yuè , zé liàn náng shèng shù shí yíng huǒ yǐ zhào shū ， yǐ yè jì rì yān 。\"}],\"titlePinyin\":\"náng yíng yè dú\",\"mustWrite\":1}', b'1', 'admin', '2024-05-28 21:51:46', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (115, 4241, 4, 2, 4, '蜂', '0', '{\"sysId\":4241,\"grade\":4,\"term\":2,\"unit\":1,\"title\":\"蜂\",\"titlePinyin\":\"fēng\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"罗隐\",\"dynasty\":\"唐\",\"emotion\":\"\",\"categoryId\":0,\"content\":[{\"innerSortNo\":1,\"sentense\":\"不论平地与山尖，无限风光尽被占。\",\"mean\":\"无论是在平地，还是在那高山，哪里鲜花迎风盛开，哪里就有蜜蜂奔忙。\",\"word\":\"山尖|尽|占\",\"wordMean\":\"山尖：山峰；尽：都；占：占其所有\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"bú lùn píng dì yǔ shān jiān ， wú xiàn fēng guāng jìn bèi zhàn 。\"},{\"innerSortNo\":2,\"sentense\":\"采得百花成蜜后，为谁辛苦为谁甜？\",\"mean\":\"蜜蜂啊，你采尽百花酿成了花蜜，到底为谁付出辛苦，又想让谁品尝香甜？\",\"word\":\"甜\",\"wordMean\":\"甜：醇香的蜂蜜\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"cǎi dé bǎi huā chéng mì hòu ， wèi shuí xīn kǔ wèi shuí tián ？\"}],\"mustWrite\":1}', b'1', 'admin', '2024-05-28 21:51:50', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (117, 4221, 4, 2, 2, '江畔独步寻花·其五', '0', '{\"sysId\":4221,\"grade\":4,\"term\":2,\"unit\":2,\"title\":\"江畔独步寻花·其五\",\"titlePinyin\":\"jiāng pàn dú bù xún huā · qí wǔ\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"杜甫\",\"dynasty\":\"唐\",\"emotion\":\"\",\"categoryId\":0,\"content\":[{\"innerSortNo\":1,\"sentense\":\"黄师塔前江水东，春光懒困倚微风。\",\"mean\":\"黄师塔前那一江的碧波春水滚滚向东流，春天给人一种困倦让人想倚着春风小憩的感觉。\",\"word\":\"黄师塔|塔\",\"wordMean\":\"黄师塔：黄师墓地；塔：墓地\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"huáng shī tǎ qián jiāng shuǐ dōng ， chūn guāng lǎn kùn yǐ wēi fēng 。\"},{\"innerSortNo\":2,\"sentense\":\"桃花一簇开无主，可爱深红爱浅红。\",\"mean\":\"江畔盛开的那一簇无主的桃花映入眼帘，究竟是爱深红色的还是更爱浅红色的呢？\",\"word\":\"主\",\"wordMean\":\"主：主人\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"táo huā yí cù kāi wú zhǔ ， kě ài shēn hóng ài qiǎn hóng 。\"}],\"mustWrite\":1}', b'1', 'admin', '2024-05-28 21:52:00', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (118, 4213, 4, 2, 1, '清平乐·村居', '1', '{\"sysId\":4213,\"grade\":4,\"term\":2,\"unit\":1,\"title\":\"清平乐·村居\",\"titlePinyin\":\"qīng píng lè · cūn jū\",\"titleWord\":\"清平乐|村居\",\"titleWordMean\":\"清平乐（yuè）:词牌名;村居:题目\",\"titleWordPinyin\":\"乐\",\"author\":\"辛弃疾\",\"dynasty\":\"宋\",\"emotion\":\"\",\"categoryId\":1,\"content\":[{\"innerSortNo\":1,\"sentense\":\"茅檐低小，溪上青青草。\",\"mean\":\"草屋的茅檐又低又小，溪边长满了碧绿的小草。\",\"word\":\"茅檐\",\"wordMean\":\"茅檐:茅屋的屋檐。\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"máo yán dī xiǎo ， xī shàng qīng qīng cǎo 。\"},{\"innerSortNo\":2,\"sentense\":\"醉里吴音相媚好，白发谁家翁媪？\",\"mean\":\"含有醉意的吴地方言，听起来温柔又美好，那满头白发的老人是谁家的呀？\",\"word\":\"吴音|相媚好|翁媪\",\"wordMean\":\"吴音:吴地的方言，作者当时住在信州（今上饶），这一带的方言为吴音;相媚好:指相互逗趣，取乐;翁媪（ǎo）:老翁、老妇\",\"wordPinyin\":\"媪\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"zuì lǐ wú yīn xiāng mèi hǎo ， bái fà shuí jiā wēng ǎo ？\"},{\"innerSortNo\":3,\"sentense\":\"大儿锄豆溪东，中儿正织鸡笼。\",\"mean\":\"大儿子在溪东边的豆田锄草，二儿子正忙于编织鸡笼。\",\"word\":\"锄豆|织\",\"wordMean\":\"锄豆:锄掉豆田里的草;织:编织，指编织鸡笼\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"dà ér chú dòu xī dōng ， zhōng ér zhèng zhī jī lóng 。\"},{\"innerSortNo\":4,\"sentense\":\"最喜小儿亡赖，溪头卧剥莲蓬。\",\"mean\":\"最令人喜爱的是小儿子，他正横卧在溪头草丛，剥着刚摘下的莲蓬。\",\"word\":\"亡赖|亡|卧\",\"wordMean\":\"亡（wú）赖:这里指小孩顽皮、淘气;亡，通“无”;卧:趴。\",\"wordPinyin\":\"亡\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"zuì xǐ xiǎo ér wáng lài ， xī tóu wò bāo lián péng 。\"}],\"mustWrite\":1}', b'1', 'admin', '2024-05-28 21:52:06', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (119, 4232, 4, 2, 3, '园地三', '3', '{\"sysId\":4232,\"grade\":4,\"term\":2,\"unit\":3,\"title\":\"园地三\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":3,\"content\":[{\"innerSortNo\":1,\"sentense\":\"诗和音乐一样，生命全在节奏。—朱光潜\",\"mean\":\"诗歌需要有鲜明的停顿和昂扬的节奏感，这与音乐所需要的节奏和旋律感是一致的。生命本身就是一个充满节奏的过程，从出生、成长、成熟到衰老，每一个阶段都有其独特的节奏。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shī hé yīn yuè yí yàng ， shēng mìng quán zài jié zòu 。 — zhū guāng qián\"},{\"innerSortNo\":2,\"sentense\":\"诗是人类向未来寄发的信息，诗给人类以朝向理想的勇气。—艾青\",\"mean\":\"通过诗歌，人类可以向未来传达自己的声音、经验和智慧，让后人从中汲取力量。诗歌具有强大的感染力和鼓舞力。人们可以找到坚持自己理想的勇气和动力，不断向前，追求更好的未来。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shī shì rén lèi xiàng wèi lái jì fā de xìn xī ， shī gěi rén lèi yǐ cháo xiàng lǐ xiǎng de yǒng qì 。 — ài qīng\"},{\"innerSortNo\":3,\"sentense\":\"诗是强烈感情的自然流露，它源于宁静中回忆起来的情感。—[英国]华兹华斯\",\"mean\":\"诗歌是情感的艺术，它最直接地表达了诗人的内心世界。“宁静”指的是一种内心的平静和安宁，是诗人在创作之前或创作过程中的一种心态。在这种状态下，诗人能够更好地回忆起过去的经历和情感，从中汲取灵感，并将这些情感转化为诗歌。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shī shì qiáng liè gǎn qíng de zì rán liú lù ， tā yuán yú níng jìng zhōng huí yì qǐ lái de qíng gǎn 。 — [ yīng guó ] huá zī huá sī\"}],\"titlePinyin\":\"yuán dì sān\",\"mustWrite\":1}', b'1', 'admin', '2024-05-29 20:12:07', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (120, 4274, 4, 2, 7, '园地七', '3', '{\"sysId\":4274,\"grade\":4,\"term\":2,\"unit\":7,\"title\":\"园地七\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":3,\"content\":[{\"innerSortNo\":1,\"sentense\":\"天行健,君子以自强不息。——《周易》\",\"mean\":\"比喻君子（有德之人）应该具有自强不息、不断奋斗、永不言败的精神。这种精神不仅要求个人在遭遇困难时不屈不挠，更要求个人在安逸的环境中也不忘初心，持续追求更高的目标和更好的自我。\",\"word\":\"天|行|健|君子|自强|不息\",\"wordMean\":\"天:宇宙、自然或天命;行:运行、运转;健:刚强劲健;君子:有道德修养、有高尚品质的人;自强:自我奋发图强、努力向上;不息:表示永不停息、永不放弃。\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"tiān xíng jiàn , jūn zǐ yǐ zì qiáng bù xī 。 — — 《 zhōu yì 》\"},{\"innerSortNo\":2,\"sentense\":\"胜人者有力，自胜者强。——《老子》\",\"mean\":\"仅仅战胜他人或外部环境显示出的力量是有限的，而能够战胜自己内心的弱点、恐惧、欲望等，实现自我提升和超越的人，才是真正的强者。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shèng rén zhě yǒu lì ， zì shèng zhě qiáng 。 — — 《 lǎo zǐ 》\"},{\"innerSortNo\":3,\"sentense\":\"不怨天，不尤人。——《论语》\",\"mean\":\"不抱怨天,不责怪人。在面对困难和挫折时，不要抱怨命运的不公或责怪他人的过错，而应该反思自己的行为和态度，寻找问题的根源，并努力改进自己。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"bú yuàn tiān ， bù yóu rén 。 — — 《 lún yǔ 》\"},{\"innerSortNo\":3,\"sentense\":\"生于忧患而死于安乐。——《孟子》\",\"mean\":\"困难和挑战（即“忧患”）能够激发人的斗志和潜能，使人变得更加强大和坚韧，从而能够生存下来;而过于安逸和舒适的环境（即“安乐”）则容易使人丧失警惕和斗志，最终导致失败甚至灭亡\",\"word\":\"生于忧患|死于安乐\",\"wordMean\":\"生于忧患:强调了忧患意识对于个人成长和生存的重要性;死于安乐:警告人们过度安乐和享乐可能带来的危害\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shēng yú yōu huàn ér sǐ yú ān lè 。 — — 《 mèng zǐ 》\"}],\"titlePinyin\":\"yuán dì qī\",\"mustWrite\":1}', b'1', 'admin', '2024-05-29 20:12:12', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (121, 4281, 4, 2, 8, '园地八', '3', '{\"sysId\":4281,\"grade\":4,\"term\":2,\"unit\":8,\"title\":\"园地八\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\"\",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":3,\"content\":[{\"innerSortNo\":1,\"sentense\":\"少年不知勤学苦，老来方知读书迟。\",\"mean\":\"年轻的时候不知道好好发奋读书学习,到年老无力再奋斗时才知道后悔当年没努力。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shào nián bù zhī qín xué kǔ ， lǎo lái fāng zhī dú shū chí 。\"},{\"innerSortNo\":2,\"sentense\":\"一日读书一日功，一日不读十日空。\",\"mean\":\"读一天书就有一天的收获，但如果有一天没读书就会丢失十天的读书的收获。因为读书是一个连续的过程，天天都要学习。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"yí rì dú shū yí rì gōng ， yí rì bù dú shí rì kōng 。\"},{\"innerSortNo\":3,\"sentense\":\"学习不怕根底浅，只要迈步总不迟。\",\"mean\":\"学习不怕基础差，只要迈步向前就不算晚。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"xué xí bú pà gēn dǐ qiǎn ， zhǐ yào mài bù zǒng bù chí 。\"},{\"innerSortNo\":4,\"sentense\":\"书山有路勤为径，学海无涯苦作舟。\",\"mean\":\"在堆积如山的书籍中，要想攀登学问的高峰，勤奋就是那登顶的唯一路径；在无边无际的知识海洋里，要想畅游到达成功的彼岸，刻苦努力将化为一叶扁舟，助你前行。\",\"word\":\"\",\"wordMean\":\"书山有路勤为径:在知识的山峰上，只有勤奋才是通往成功的路径;学海无涯:比喻知识的海洋无边无际，它告诉我们，学习是一个永无止境的过程，无论我们学到多少知识，都只是冰山一角;苦作舟:强调了在学习和求知的道路上，需要付出努力和艰辛;舟:在求知的道路上，以刻苦努力和坚持不懈为动力，推动自己不断前进的工具\",\"wordPinyin\":\"\",\"isVip\":true,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"shū shān yǒu lù qín wèi jìng ， xué hǎi wú yá kǔ zuò zhōu 。\"}],\"titlePinyin\":\"yuán dì bā\",\"mustWrite\":1}', b'1', 'admin', '2024-05-29 20:12:17', 'admin', NULL, NULL);
INSERT INTO `app_chinese_poetry_json` VALUES (123, 4263, 4, 2, 6, '悬梁刺骨', '2', '{\"sysId\":4263,\"grade\":4,\"term\":2,\"unit\":6,\"title\":\"悬梁刺骨\",\"titleWord\":\"\",\"titleWordMean\":\"\",\"titleWordPinyin\":\"\",\"author\":\" \",\"dynasty\":\"\",\"emotion\":\"\",\"categoryId\":2,\"content\":[{\"innerSortNo\":1,\"sentense\":\"孙敬字文宝，好学，晨夕不休。及至眠睡疲寝，以绳系头，悬屋梁。\",\"mean\":\"汉朝人孙敬，字文宝，非常好学，从早到晚地读书。有时疲倦了，想睡觉，就用一根绳子系住头发，另一头拴在房梁上拉直。这时候如果再打瞌睡，就会被绳子拉醒。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"sūn jìng zì wén bǎo ， hào xué ， chén xī bù xiū 。 jí zhì mián shuì pí qǐn ， yǐ shéng xì tóu ， xuán wū liáng 。\"},{\"innerSortNo\":2,\"sentense\":\"（苏秦）读书欲睡，引锥自刺其股，血流至足。\",\"mean\":\"战国时期，苏秦读书欲睡，就拿锥子扎大腿，使自己清醒起来，再坚持读书的事。\",\"word\":\"\",\"wordMean\":\"\",\"wordPinyin\":\"\",\"isVip\":false,\"truth\":\"\",\"question\":\"\",\"wordSearch\":\"\",\"pinyin\":\"（ sū qín ） dú shū yù shuì ， yǐn zhuī zì cì qí gǔ ， xuè liú zhì zú 。\"}],\"mustWrite\":0,\"titlePinyin\":\"xuán liáng cì gǔ\"}', b'0', 'admin', '2024-05-29 21:15:36', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for app_chinese_word_comment
-- ----------------------------
DROP TABLE IF EXISTS `app_chinese_word_comment`;
CREATE TABLE `app_chinese_word_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` tinyint(4) NULL DEFAULT NULL COMMENT '年级',
  `term` tinyint(4) NULL DEFAULT NULL COMMENT '学期',
  `word` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '词语',
  `pinyin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `comment` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注释',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 567 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '词语解释' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_chinese_word_comment
-- ----------------------------
INSERT INTO `app_chinese_word_comment` VALUES (1, 4, 2, '时令', 'shí lìng', '季节。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (2, 4, 2, '华丽', 'huá lì', '美丽而有光彩。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (3, 4, 2, '朴素', 'pǔ sù', '（颜色、式样等）不浓艳，不华丽。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (4, 4, 2, '率领', 'shuài lǐng', '带领（队伍或集体）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (5, 4, 2, '鲜嫩', 'xiān nèn', '新鲜而嫩。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (6, 4, 2, '照例', 'zhào lì', '按照惯例；按照常情。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (7, 4, 2, '倘若', 'tǎng ruò', '表示假设。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (8, 4, 2, '天高地阔', 'tiān gāo dì kuò', '大地辽阔，天空高远。文中形容无拘无束的自然生活。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (9, 4, 2, '和谐', 'hé xié', '①配合得适当；②和睦协调。文中是第一种意思。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (10, 4, 2, '锐利', 'ruì lì', '（目光、言论、文笔等）尖锐。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (11, 4, 2, '扫荡', 'sǎo dàng', '用武力或其他手段肃清敌人。文中指风雨雷电的威力大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (12, 4, 2, '奇幻', 'qí huàn', '奇异而虚幻。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (13, 4, 2, '霸气', 'bà qì', '专横的气势。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (14, 4, 2, '慰藉', 'wèi jiè', '安慰。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (15, 4, 2, '绮丽', 'qǐ lì', '鲜艳美丽（多形容风景）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (16, 4, 2, '应和', 'yìng hé', '（声音、语言、行动等）相呼应。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (17, 4, 2, '复杂', 'fù zá', '（事物的种类、头绪等）多而杂。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (18, 4, 2, '纤细', 'xiān xì', '非常细。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (19, 4, 2, '沉醉', 'chén zuì', '大醉，比喻深深地沉浸在某种气氛或思想活动中。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (20, 4, 2, '飒飒', 'sà sà', '形容风雨声。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (21, 4, 2, '柔嫩', 'róu nèn', '软而嫩。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (22, 4, 2, '松脂', 'sōng zhī', '松树等树干上渗出的胶状液体，主要由松香和松节油组成。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (23, 4, 2, '拂拭', 'fú shì', '掸掉或擦掉（尘土）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (24, 4, 2, '挣扎', 'zhēng zhá', '用力支撑。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (25, 4, 2, '逼近', 'bī jìn', '靠近；接近。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (26, 4, 2, '生机', 'shēng jī', '生命力；活力。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (27, 4, 2, '澎湃', 'péng pài', '形容波浪互相撞击。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (28, 4, 2, '推测', 'tuī cè', '根据已经知道的事情来想象不知道的事情。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (29, 4, 2, '黏稠', 'nián chóu', '又黏又稠。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (30, 4, 2, '详细', 'xiáng xì', '周密完备。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (31, 4, 2, '凌空翱翔', 'líng kōng áo xiáng', '在高高的空中回旋地飞。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (32, 4, 2, '前俯后仰', 'qián fǔ hòu yǎng', '形容身体前后晃动（多指大笑时）。恐龙', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (33, 4, 2, '迟钝', 'chí dùn', '（感官、思想、行动等）反应慢，不灵活。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (34, 4, 2, '亲缘关系', 'qīn yuán guān xì', '血缘关系。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (35, 4, 2, '敏捷', 'mǐn jié', '动作等迅速灵敏。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (36, 4, 2, '欣喜若狂', 'xīn xǐ ruò kuáng', '高兴得简直要发狂，形容太高兴了。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (37, 4, 2, '五彩斑斓', 'wǔ cǎi bān lán', '形容色彩繁多亮丽。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (38, 4, 2, '后裔', 'hòu yì', '已经死去的人的子孙。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (39, 4, 2, '演化', 'yǎn huà', '演变。本文指恐龙演变鸟类。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (40, 4, 2, '繁衍', 'fán yǎn', '逐渐增多', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (41, 4, 2, '繁衍', 'fán yǎn', '逐渐增加扩大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (42, 4, 2, '毋庸置疑', 'wú yōng zhì yí', '指无须怀疑，是铁一样的事实。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (43, 4, 2, '点“睛”之笔', 'diǎn “ jīng ” zhī bǐ', '指最重要、最关键的内容。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (44, 4, 2, '茹毛饮血', 'rú máo yǐn xuè', '茹，吃。原始人不会用火，连毛带血地生吃禽兽。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (45, 4, 2, '天之骄子', 'tiān zhī jiāo zǐ', '本文指在天上值得骄傲，受宠爱的鸟类。骄，受宠爱的。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (46, 4, 2, '无能为力', 'wú néng wéi lì', '用不上力量；没有能力或能力达不到。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (47, 4, 2, '后裔', 'hòu yì', '后代子孙。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (48, 4, 2, '特性', 'tè xìng', '某人或某事物所特有的性质。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (49, 4, 2, '杀菌', 'shā jūn', '用日光、高温、过氧乙酸、酒精抗生素等杀死病菌。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (50, 4, 2, '预防', 'yù fáng', '事先防备。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (51, 4, 2, '造福', 'zào fú', '给人带来幸福。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (52, 4, 2, '病灶', 'bìng zào', '机体上发生病变的部分。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (53, 4, 2, '纳米缓释技术', 'nà mǐ huǎn shì jì shù', '这是一个纳米技术的问题,就是把材料(一般是药物)用纳米材料包起来或直接做成纳米材料,在一定环境下使它缓慢地释放出来的技术。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (54, 4, 2, '微米', 'wēi mǐ', '长度单位，1微米相当于1米的一百万分之一。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (55, 4, 2, '纳米机器人', 'nà mǐ jī qì rén', '是机器人工程学的一种新兴科技，纳米机器人的研制属于分子纳米技术的范畴，它根据分子水平的生物学原理为设计原型，设计制造可对纳米空间进行操作的“功能分子器件”。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (56, 4, 2, '直径', 'zhí jìng', '是指通过一平面图形或立体(如圆、圆锥截面、球、立方体)中心到边上两点间的距离。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (57, 4, 2, '雷达', 'léi dá', '测定目标位置的无线电装置或系统。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (58, 4, 2, '隐形战机', 'yǐn xíng zhàn jī', '通常是指在电磁、可见光、红外、声学等方面难以探测或跟踪的战斗机，其中最主要的就是电磁隐形。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (59, 4, 2, '九天揽月', 'jiǔ tiān lǎn yuè', '到天的最高处去摘月亮。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (60, 4, 2, '鲲鹏', 'kūn péng', '古代传说中的大鱼和大鸟，也指鲲化成的大鹏鸟。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (61, 4, 2, '先驱', 'xiān qū', '走在前面引导（多虚用）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (62, 4, 2, '实践', 'shí jiàn', '人们有意识地从事改造自然和改造社会的活动。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (63, 4, 2, '代价', 'dài jià', '泛指为达到某种目的所耗费的物质或精力。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (64, 4, 2, '震撼', 'zhèn hàn', '震动；摇撼。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (65, 4, 2, '苍穹', 'cāng qióng', '天空。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (66, 4, 2, '庄重', 'zhuāng zhòng', '（言语、举止）端庄稳重；不随便；不轻浮。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (67, 4, 2, '震耳欲聋', 'zhèn ěr yù lóng', '耳朵都快震聋了，形容声音很大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (68, 4, 2, '绚丽', 'xuàn lì', '灿烂美丽。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (69, 4, 2, '着陆', 'zhuó lù', '（飞机等）从空中到达陆地。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (70, 4, 2, '里程碑', 'lǐ chéng bēi', '比喻在历史发展过程中可以作为标志的大事。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (71, 4, 2, '漫灭', 'màn miè', '磨灭，模糊不清。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (72, 4, 2, '蜿蜒', 'wān yán', '（山脉、河流、道路等）弯弯曲曲地延伸的样子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (73, 4, 2, '思潮', 'sī cháo', '接二连三的思想活动。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (74, 4, 2, '波涛', 'bō tāo', '大波浪。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (75, 4, 2, '清响', 'qīng xiǎng', '清脆的响声。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (76, 4, 2, '嫩绿', 'nèn lǜ', '像刚长出来的树叶那样的浅绿色。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (77, 4, 2, '墨绿', 'mò lǜ', '（颜色）深绿。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (78, 4, 2, '集中', 'jí zhōng', '本文指将所有的绿聚集起来。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (79, 4, 2, '教练', 'jiào liàn', '训练别人使掌握某种技术或动作的人员。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (80, 4, 2, '节拍', 'jié pāi', '音乐中每隔一定时间重复出现的有一定强弱分别的一系列拍子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (81, 4, 2, '姗姗来迟', 'shān shān lái chí', '比喻走得缓慢从容。现在形容慢腾腾地很晚才到来或来得很慢。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (82, 4, 2, '流苏', 'liú sū', '一种下垂的以五彩羽毛或丝线等制成的穗子，常用于舞台服装的裙边下摆等处。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (83, 4, 2, '徜徉', 'cháng yáng', '彷徨，心神不宁；陶醉于某事物当中。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (84, 4, 2, '毛茸茸', 'máo róng róng', '细毛丛生的样子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (85, 4, 2, '白雪皑皑', 'bái xuě ái ái', '皑皑', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (86, 4, 2, '炫耀', 'xuàn yào', '夸耀。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (87, 4, 2, '尘垢', 'chén gòu', '灰尘和污垢。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (88, 4, 2, '阴霾', 'yīn mái', '空气中引悬浮着大量的烟、尘等微粒而形成的浑浊现象。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (89, 4, 2, '胆怯', 'dǎn qiè', '胆小，缺少勇气。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (90, 4, 2, '任凭', 'rèn píng', '无论；不管。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (91, 4, 2, '古怪', 'gǔ guài', '跟一般情况很不相同，使人觉得诧异的；稀奇罕见的。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (92, 4, 2, '尽职', 'jìn zhí', '尽力做好本职工作。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (93, 4, 2, '屏息', 'bǐng xī', '暂时抑止呼吸；有意地闭住气。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (94, 4, 2, '开辟', 'kāi pì', '开拓扩展。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (95, 4, 2, '无忧无虑', 'wú yōu wú lǜ', '没有任何忧虑。形容心情安然舒畅。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (96, 4, 2, '变化多端', 'biàn huà duō duān', '指变化多种多样。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (97, 4, 2, '疙瘩', 'gē da', '比喻不易解决的问题。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (98, 4, 2, '丰富多腔', 'fēng fù duō qiāng', '本课指猫的腔调丰富，会各种各样的声音。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (99, 4, 2, '反抗', 'fǎn kàng', '用行动反对；抵抗。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (100, 4, 2, '可恶', 'kě wù', '令人厌恶；使人恼恨。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (101, 4, 2, '生气勃勃', 'shēng qì bó bó', '形容充满生命力并富有朝气。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (102, 4, 2, '尖锐', 'jiān ruì', '（声音）高而刺耳。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (103, 4, 2, '凄惨', 'qī cǎn', '凄凉悲惨。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (104, 4, 2, '慈爱', 'cí ài', '（年长者对年幼者）仁慈而充满怜爱之情。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (105, 4, 2, '颤颤巍巍', 'chàn chàn wēi wēi', '抖动摇晃的样子（多形容老年人或病人的动作或声音）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (106, 4, 2, '如怨如诉', 'rú yuàn rú sù', '好像是怨恨，又好像是倾诉。形容声音带有忧郁的意味。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (107, 4, 2, '警戒', 'jǐng jiè', '泛指为防备出各类问题而采取保障措施。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (108, 4, 2, '欺侮', 'qī wǔ', '欺负。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (109, 4, 2, '如A如B结构', 'rú A rú B jié gòu', '如火如荼、如痴如醉 、如梦如幻', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (110, 4, 2, '趁人不防备', 'chèn rén bù fáng bèi', '文中指母鸡在欺负自己的同类时是出其不意地下毒手，非常凶狠，让人厌恶。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (111, 4, 2, '高傲', 'gāo ào', '自以为了不起，看不起人；极其骄傲。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (112, 4, 2, '郑重', 'zhèng zhòng', '严肃认真。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (113, 4, 2, '傲慢', 'ào màn', '轻视别人，对人没有礼貌。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (114, 4, 2, '叫嚣', 'jiào áo', '大声叫喊吵闹。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (115, 4, 2, '侍候', 'shì hòu', '服侍。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (116, 4, 2, '敏捷', 'mǐn jié', '（动作思路等）迅速而灵敏。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (117, 4, 2, '堂倌', 'táng guān', '旧时称饭馆、茶馆、酒店中的招待人员。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (118, 4, 2, '左顾右盼', 'zuǒ gù yòu pàn', '向左右两边看。“顾”和“盼”都是看的意思。课文里指鹅来到了一个陌生的环境，东看看，西看看，一点儿也不拘谨。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (119, 4, 2, '窥伺', 'kuī sì', '暗中观望动静，等待机会（多含贬义）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (120, 4, 2, '不胜其烦', 'bú shèng qí fán', '烦琐得让人受不了。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (121, 4, 2, '引吭大叫', 'yǐn háng dà jiào', '放开喉咙大叫。“吭”是喉咙的意思。这个词是说鹅伸着脖子敞开喉咙大叫。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (122, 4, 2, '一丝不苟', 'yì sī bù gǒu', '连最细微的地方也不马虎，形容办事认真。在课文里指鹅的吃法每天都一个样，一点儿也不马虎。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (123, 4, 2, '大模大样', 'dà mú dà yàng', '形容傲慢、满不在乎的样子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (124, 4, 2, '厉声呵斥', 'lì shēng hē chì', '大声斥责。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (125, 4, 2, '局促不安', 'jú cù bù ān', '形容拘谨、不自然、不安定的样子。本文指鸭子的步态急速，很不自然。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (126, 4, 2, '从容不迫', 'cóng róng bú pò', '形容镇静不慌不忙的样子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (127, 4, 2, '三眼一板', 'sān yǎn yì bǎn', '比喻言行有分寸、有条理。这里指鹅的吃法刻板，从不改变。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (128, 4, 2, '空空如也', 'kōng kōng rú yě', '什么也没有了。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (129, 4, 2, '扬长而去', 'yáng cháng ér qù', '大模大样地离开。文中指狗偷食完鹅的食物后大模大样地离开，与偷食前形成了鲜明的对比。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (130, 4, 2, '奢侈', 'shē chǐ', '花费大量钱财追求过分享受。文中说鹅并不奢侈，是指鹅虽然需要三样东西下饭，但这三样东西都是平常的东西，不需要什么花费。 \n清静', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (131, 4, 2, '夺目', 'duó mù', '（光彩）耀眼。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (132, 4, 2, '分辨', 'fēn biàn', '辨别。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (133, 4, 2, '扩大', 'kuò dà', '使（范围、规模等）比原来大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (134, 4, 2, '奇观', 'qí guān', '雄伟美丽而又罕见的景象或出奇少见的事情。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (135, 4, 2, '气势', 'qì shì', '人或事物表现出来的力量和态势，本课指山高大宏伟的样子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (136, 4, 2, '明艳', 'míng yàn', '明亮鲜艳。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (137, 4, 2, '盘曲', 'pán qū', '盘旋曲折。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (138, 4, 2, '突兀', 'tū wù', '（山）高高耸立。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (139, 4, 2, '蜿蜒', 'wān yán', '弯弯曲曲。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (140, 4, 2, '森郁', 'sēn yù', '形容树木茂盛繁密。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (141, 4, 2, '时而', 'shí ér', '有时候。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (142, 4, 2, '名目', 'míng mù', '事物的名称。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (143, 4, 2, '灿烂', 'càn làn', '光彩鲜明耀眼。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (144, 4, 2, '十来进', 'shí lái jìn', '房屋分成几个庭院，每个庭院称为一进。十来进就是从前到后十来个庭院连在一起。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (145, 4, 2, '观赏', 'guān shǎng', '观看欣赏。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (146, 4, 2, '门槛', 'mén kǎn', '门框下部挨着地面的横木。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (147, 4, 2, '颜色各异', 'yán sè gè yì', '颜色很多，各不相同。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (148, 4, 2, '飘飘悠悠', 'piāo piāo yōu yōu', '在空中或水面上轻缓地浮动。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (149, 4, 2, '夜校', 'yè xiào', '夜间上课的学校，多是业余学校。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (150, 4, 2, '睁眼瞎', 'zhēng yǎn xiā', '比喻不识字的人。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (151, 4, 2, '推推搡搡', 'tuī tuī sǎng sǎng', '推来推去。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (152, 4, 2, '变化多端', 'biàn huà duō duān', '端，项目。变化多样。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (153, 4, 2, '风靡', 'fēng mǐ', '形容事情很风行，像风吹倒草木。靡，顺风倒下的意思。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (154, 4, 2, '趔趄', 'liè qie', '身体歪斜，脚步不稳。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (155, 4, 2, '恍惚', 'huǎng hū', '课文中形容像喝醉酒似的眼神不集中的样子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (156, 4, 2, '崇拜', 'chóng bài', '尊敬钦佩。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (157, 4, 2, '拌嘴', 'bàn zuǐ', '吵嘴。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (158, 4, 2, '沮丧', 'jǔ sàng', '灰心失望。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (159, 4, 2, '均匀', 'jūn yún', '分布或分配在各部分的数量大致相同。本文指芦花搓进草绳里的数量相同。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (160, 4, 2, '寻觅', 'xún mì', '寻求，探索。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (161, 4, 2, '空寂', 'kōng jì', '空旷而寂静；寂寥。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (162, 4, 2, '倾覆', 'qīng fù', '（物体）倒下。本文指芦花被风吹往一个方向倒下。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (163, 4, 2, '抚摸', 'fǔ mō', '用手轻轻地按着并移动。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (164, 4, 2, '疑惑', 'yí huò', '心里不明白；不理解。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (165, 4, 2, '遗憾', 'yí hàn', '不称心；很可惜。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (166, 4, 2, '编织', 'biān zhī', '使条状物互相交错或钩连而组织起来。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (167, 4, 2, '抚摸', 'fǔ mō', '用手轻轻地按着并移动。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (168, 4, 2, '祈求', 'qí qiú', '诚恳地希望或请求。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (169, 4, 2, '小心翼翼', 'xiǎo xīn yì yì', '形容举动十分谨慎，一点儿不敢疏忽。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (170, 4, 2, '弥漫', 'mí màn', '形容烟尘、雾气、水等充满；布满。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (171, 4, 2, '湍急', 'tuān jí', '水势急。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (172, 4, 2, '势不可当', 'shì bù kě dāng', '形容来势十分迅猛，不能抵挡。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (173, 4, 2, '井然有序', 'jǐng rán yǒu xù', '形容整齐不乱，次序分明。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (174, 4, 2, '巍然屹立', 'wēi rán yì lì', '比喻像高山一样耸立，不可动摇。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (175, 4, 2, '镇定自若', 'zhèn dìng zì ruò', '遇到紧急情况而不慌乱的样子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (176, 4, 2, '须臾', 'xū yú', '极短的时间。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (177, 4, 2, '蓦地', 'mò dì', '出乎意料地；突然。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (178, 4, 2, '猝然而至', 'cù rán ér zhì', '形容事情突然、出乎意料地来到。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (179, 4, 2, '相提并论', 'xiāng tí bìng lùn', '把不同的人或事放在一起，不加区分地谈论或同等对待。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (180, 4, 2, '照例', 'zhào lì', '照样；遵照常例。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (181, 4, 2, '震荡', 'zhèn dàng', '处于动荡状态。本文指两船撞击后的摇晃。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (182, 4, 2, '失魂落魄', 'shī hún luò pò', '失落了魂魄。形容人非常惊慌或忧虑而心神不宁、举止失常的状态。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (183, 4, 2, '海里', 'hǎi lǐ', '计算海洋上距离的长度单位。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (184, 4, 2, '不可开交', 'bù kě kāi jiāo', '形容没法解开或摆脱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (185, 4, 2, '舍己救人', 'shè jǐ jiù rén', '不惜牺牲自己去救别人。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (186, 4, 2, '嘈杂', 'cáo zá', '（声音）杂乱；喧闹。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (187, 4, 2, '主宰', 'zhǔ zǎi', '支配；统治；掌握。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (188, 4, 2, '惊慌失措', 'jīng huāng shī cuò', '失措', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (189, 4, 2, '占领', 'zhàn lǐng', '用武力取得（阵地或领土等）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (190, 4, 2, '摧毁', 'cuī huǐ', '用强大的力量进行破坏。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (191, 4, 2, '纹丝不动', 'wén sī bú dòng', '一点儿也不动。形容没有丝毫改变。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (192, 4, 2, '注视', 'zhù shì', '注意地看；专注地看。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (193, 4, 2, '惊天动地', 'jīng tiān dòng dì', '形容声势极大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (194, 4, 2, '匍匐', 'pú fú', '爬行。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (195, 4, 2, '屡次', 'lǚ cì', '一次又一次。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (196, 4, 2, '突击', 'tū jī', '集中兵力、火力猛烈而迅速地攻击。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (197, 4, 2, '高地', 'gāo dì', '地势高的地方，军事上特指地势较高能够俯视、控制四周的地方。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (198, 4, 2, '黎明', 'lí míng', '天快要亮或刚亮的时候。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (199, 4, 2, '顽强', 'wán qiáng', '坚强；不怕困难，坚持不懈。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (200, 4, 2, '探照灯', 'tàn zhào dēng', '一种用于远距离搜索和照明的装置。在军事上主要用于搜索及照射空中、地面和水上目标。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (201, 4, 2, '火舌', 'huǒ shé', '比较高的火苗。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (202, 4, 2, '神仙', 'shén xiān', '神话传说中的有超人的能力，可以超脱尘世，长生不老的人物。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (203, 4, 2, '远足', 'yuǎn zú', '远途的徒步旅行。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (204, 4, 2, '龙宫', 'lóng gōng', '神话中龙王居住的海底宫殿。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (205, 4, 2, '联系', 'lián xì', '互相之间取得联通关系。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (206, 4, 2, '幻想', 'huàn xiǎng', '幻想出的情景。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (207, 4, 2, '介绍', 'jiè shào', '沟通使双方相识或发生联系。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (208, 4, 2, '声明', 'shēng míng', '公开表态或说明。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (209, 4, 2, '每逢', 'měi féng', '每当遇到。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (210, 4, 2, '规矩', 'guī jǔ', '画圆形和方形的两种工具，借指一定的标准、法则或习惯。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (211, 4, 2, '劈面', 'pī miàn', '正冲着脸；迎面。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (212, 4, 2, '妖怪', 'yāo guài', '神话、传说、通话中所描写的形貌怪异、有妖术、常害人的精灵。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (213, 4, 2, '丰硕', 'fēng shuò', '（果实、成绩等）大而多。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (214, 4, 2, '幸福', 'xìng fú', '（生活、境遇）称心如意。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (215, 4, 2, '允许', 'yǔn xǔ', '答应；许可。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (216, 4, 2, '柔嫩', 'róu nèn', '软而嫩。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (217, 4, 2, '呼啸', 'hū xiào', '发出又高又长的声音。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (218, 4, 2, '叱责', 'chì zé', '怒骂。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (219, 4, 2, '禁止', 'jìn zhǐ', '不许可；严加制止。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (220, 4, 2, '自私', 'zì sī', '只顾自己的利益而不顾别人和集体。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (221, 4, 2, '覆盖', 'fù gài', '遮盖。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (222, 4, 2, '省心', 'shěng xīn', '不费心；少操心。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (223, 4, 2, '脸颊', 'liǎn jiá', '脸的两侧。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (224, 4, 2, '拆除', 'chāi chú', '拆掉（建筑物等）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (225, 4, 2, '踪迹', 'zōng jì', '行动所留下可觉察的形迹。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (226, 4, 2, '佩带', 'pèi dài', '佩挂；系带。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (227, 4, 2, '美德', 'měi dé', '美好高尚的品德。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (228, 4, 2, '奢望', 'shē wàng', '希望过分、过高。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (229, 4, 2, '铺陈', 'pū chén', '摆设；布置。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (230, 4, 2, '迫切', 'pò qiè', '形容十分急切的需要，难以等待。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (231, 4, 2, '喜讯', 'xǐ xùn', '值得庆贺的，使人高兴的消息。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (232, 4, 2, '止境', 'zhǐ jìng', '尽头。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (233, 4, 2, '旗帜', 'qí zhì', '旗子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (234, 4, 2, '仪式', 'yí shì', '典礼的秩序形式。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (235, 4, 2, '永恒', 'yǒng héng', '永远不变；永远存在。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (236, 4, 2, '抚弄', 'fǔ nòng', '抚摩摆弄。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (237, 4, 2, '晨曦', 'chén xī', '清早的太阳光。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (238, 4, 2, '神圣', 'shén shèng', '极其崇高而庄严；不可亵渎。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (239, 4, 2, '舵手', 'duò shǒu', '掌舵的人。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (240, 4, 2, '迸发', 'bèng fā', '由里向外地突然发出。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (336, 4, 1, '霎时', 'shà shí', '形容时间极短。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (337, 4, 1, '颤动', 'chàn dòng', '短促而频繁地振动。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (338, 4, 1, '笼罩', 'lǒng zhào', '像笼子似的罩在上面。本文形容雾很大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (339, 4, 1, '余波', 'yú bō', '指事件结束以后留下的影响。课文中指潮头过去以后留下的水浪。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (340, 4, 1, '屹立', 'yì lì', '像山峰一样高耸而稳固地立着，常用来比喻坚定不可动摇。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (341, 4, 1, '闷雷', 'mèn léi', '声音低沉的雷。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (342, 4, 1, '涌来', 'yǒng lái', '急速地流过来。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (343, 4, 1, '横贯', 'héng guàn', '横着通过去。课文里是说大潮滚滚而来，横着漫过整个江面。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (344, 4, 1, '风平浪静', 'fēng píng làng jìng', '没有风浪，水面很平静，比喻平静无事。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (345, 4, 1, '人声鼎沸', 'rén shēng dǐng fèi', '人群发出的声音像水在锅里沸腾一样，形容人声嘈杂、喧闹。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (346, 4, 1, '浩浩荡荡', 'hào hào dàng dàng', '课文里是讲大潮滚滚而来，水势很大的样子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (347, 4, 1, '漫天卷地', 'màn tiān juàn dì', '布满天空，席卷大地。形容水势很大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (348, 4, 1, '山崩地裂', 'shān bēng dì liè', '山岳倒塌，地面裂缝。文中形容浪潮声音巨大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (349, 4, 1, '淘洗', 'táo xǐ', '用器物盛颗粒状的东西，加水搅动，或放在水里簸动，使除去杂质。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (350, 4, 1, '风号浪吼', 'fēng hào làng hǒu', '狂风号叫，波浪怒吼。形容风浪大，声音响。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (351, 4, 1, '运载', 'yùn zài', '装载和运送。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (352, 4, 1, '坑坑洼洼', 'kēng kēng wā wā', '形容地面或器物表面高一块低一块。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (353, 4, 1, '浇灌', 'jiāo guàn', '浇水灌溉。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (354, 4, 1, '洱海', 'ěr hǎi', '名，在云南。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (355, 4, 1, '镀亮', 'dù liàng', '一种工艺，可以使金属起到装饰，耐磨的效果。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (356, 4, 1, '风俗', 'fēng sú', '社会上长期形成的风尚、礼节、习惯等的总和。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (357, 4, 1, '汩汩', 'gǔ gǔ', '形容水流动的声音。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (358, 4, 1, '闪闪烁烁', 'shǎn shǎn shuò shuò', '(光亮)动摇不定，忽明忽暗。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (359, 4, 1, '奇妙', 'qí miào', '稀奇巧妙（多用来形容令人感兴趣的新奇事物）', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (360, 4, 1, '归巢', 'guī cháo', '返回巢穴。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (361, 4, 1, '斜阳', 'xié yáng', '傍晚时西斜的太阳。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (362, 4, 1, '芦苇', 'lú wěi', '草本植物，生长在浅水里，茎中空。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (363, 4, 1, '一瞬', 'yí shùn', '转眼之间，形容极短的时间。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (364, 4, 1, '霸占', 'bà zhàn', '倚仗权势占为己有；强行占据。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (365, 4, 1, '红颜', 'hóng yán', '指貌美的女子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (366, 4, 1, '滴溜溜', 'dī liū liū', '形容旋转或流动。文中指花牛的尾巴甩得速度快。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (367, 4, 1, '偷渡', 'tōu dù', '偷偷通过封锁的水域或区域，现多指偷越国境。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (368, 4, 1, '繁星', 'fán xīng', '多而密的星星。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (369, 4, 1, '静寂', 'jìng jì', '没有声音；很静。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (370, 4, 1, '群星密布', 'qún xīng mì bù', '像天上的星星一样摆布着,形容事物很多。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (371, 4, 1, '摇摇欲坠', 'yáo yáo yù zhuì', '形容非常危险，就要掉下来或垮下来。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (372, 4, 1, '半明半昧', 'bàn míng bàn mèi', '形容有时明亮，有时昏暗。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (373, 4, 1, '梦幻', 'mèng huàn', '如梦的幻境；梦境。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (374, 4, 1, '纳凉', 'nà liáng', '乘凉。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (375, 4, 1, '舒适', 'shū shì', '给人以安乐舒服的感觉。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (376, 4, 1, '囚犯', 'qiú fàn', '在监狱中被囚禁的人。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (377, 4, 1, '僵硬', 'jiāng yìng', '肢体不能活动。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (378, 4, 1, '盘绕', 'pán rào', '螺旋状地或圈状地缠绕在某物上。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (379, 4, 1, '洋溢', 'yáng yì', '充分流露。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (380, 4, 1, '晴朗', 'qíng lǎng', '凉爽晴朗。本课指夜空晴朗。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (381, 4, 1, '预感', 'yù gǎn', '事先感觉到的。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (382, 4, 1, '青苔', 'qīng tái', '阴湿地方生长的绿色苔藓。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (383, 4, 1, '揭晓', 'jiē xiǎo', '泛指把事情的结果公开出去。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (384, 4, 1, '隆隆', 'lóng lóng', '拟声词，形容剧烈震动的声音。本课指飞机飞行的声音。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (385, 4, 1, '揭开', 'jiē kāi', '揭露。本课指科学家揭露了蝙蝠夜间飞行的秘密。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (386, 4, 1, '敏锐', 'mǐn ruì', '(感觉)灵敏；(眼光)尖锐。本课指人们怀疑蝙蝠的眼睛灵敏。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (387, 4, 1, '障碍', 'zhàng ài', '阻挡前进的东西。本课指阻挡超声波向前的东西。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (388, 4, 1, '启示', 'qǐ shì', '启发提示，使人有所感悟。本课指蝙蝠的行为启发人们研制出雷达。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (389, 4, 1, '超声波', 'chāo shēng bō', '超过人能听到的最高频(20000赫)的声波。近似做直线传播，在固体和液体内衰减较小，能量容易集中，能够产生许多特殊效应。广泛应用在各技术部门。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (390, 4, 1, '荧光屏', 'yíng guāng píng', '涂有荧光物质的屏，X射线、紫外线等照在荧光屏上能发出可见光，有的还可以变为图像。本课指雷达接收无线电波的屏。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (391, 4, 1, '横七竖八', 'héng qī shù bā', '有的横，有的竖，杂乱无章。形容纵横杂乱。本课指屋子里拉的绳子多而杂乱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (392, 4, 1, '呼风唤雨', 'hū fēng huàn yǔ', '比喻能够支配自然或左右某种 局面。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (393, 4, 1, '奇迹', 'qí jì', '想象不到的不平凡的事情。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (394, 4, 1, '出乎意料', 'chū hū yì liào', '超出了预先的估计。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (395, 4, 1, '改观', 'gǎi guān', '改变原来的样子，出现新的面目。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (396, 4, 1, '千里眼', 'qiān lǐ yǎn', '旧小说中指能看到很远地方的人。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (397, 4, 1, '依赖', 'yī lài', '依靠某种人或事物而不能自立或自给。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (398, 4, 1, '腾云驾雾', 'téng yún jià wù', '传说中指利用法术乘云雾飞行。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (399, 4, 1, '顺风耳', 'shùn fēng ěr', '旧小说中指能听到很远声音的人，也指消息灵通的人。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (400, 4, 1, '幻想', 'huàn xiǎng', '①以社会或个人的理想和愿望为依据，对还没有实现的事物有所想象。②幻想出的情景。本文是第二种意思。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (401, 4, 1, '幻想', 'huàn xiǎng', '在寒冷的冬天可以吃到可口的饭菜。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (402, 4, 1, '奥秘', 'ào mì', '深奥的尚未被认知的秘密。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (403, 4, 1, '躲避', 'duǒ bì', '离开对自己不利的事物。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (404, 4, 1, '探索', 'tàn suǒ', '多方寻求答案,解决疑问。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (405, 4, 1, '喧嚷', 'xuān rǎng', '(好些人）大声地叫或说。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (406, 4, 1, '轻盈', 'qīng yíng', '形容身材苗条，动作轻快。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (407, 4, 1, '震撼', 'zhèn hàn', '震动；摇撼。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (408, 4, 1, '均匀', 'jūn yún', '分布在各部分的数量相同。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (409, 4, 1, '确信', 'què xìn', '坚定地相信；坚信。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (410, 4, 1, '空隙', 'kòng xì', '中间空着的地方。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (411, 4, 1, '嫩茎', 'nèn jīng', '初生而柔弱的茎。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (412, 4, 1, '拂过', 'fú guò', '本课指风轻轻吹过爬山虎的叶子。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (413, 4, 1, '漾起波纹', 'yàng qǐ bō wén', '原指水面微微动荡，本文指爬山虎的叶子被风一吹，像波浪一样上下起伏。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (414, 4, 1, '素洁', 'sù jié', '素净洁白。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (415, 4, 1, '休想', 'xiū xiǎng', '别想；不要妄想。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (416, 4, 1, '痕迹', 'hén jì', '事物留下的印痕。本课指没有触着墙的爬山虎的脚，不几天连一点印痕都没有了。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (417, 4, 1, '蛟龙', 'jiāo lóng', '古代传说中指兴风作浪、能发洪水的龙。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (418, 4, 1, '慎重', 'shèn zhòng', '谨慎认真。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (419, 4, 1, '牢固', 'láo gù', '结实；坚固。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (420, 4, 1, '搜索', 'sōu suǒ', '仔细寻找。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (421, 4, 1, '随遇而安', 'suí yù ér ān', '指能适应各种环境，在任何环境中都能满足。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (422, 4, 1, '倾斜', 'qīng xié', '歪斜。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (423, 4, 1, '骤雨', 'zhòu yǔ', '下得又大又急的雨。骤，急速。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (424, 4, 1, '隧道', 'suì dào', '本课指蟋蟀挖掘的弯弯曲曲的洞穴。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (425, 4, 1, '选择', 'xuǎn zé', '挑选。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (426, 4, 1, '简朴', 'jiǎn pǔ', '简单朴素。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (427, 4, 1, '柔弱', 'róu ruò', '软弱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (428, 4, 1, '简单', 'jiǎn dān', '单纯，不复杂。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (429, 4, 1, '耙扫', 'pá sǎo', '课文中指蟋蟀用脚整理门口。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (430, 4, 1, '宇宙', 'yǔ zhòu', '包括地球及其他一切天体的无限空间。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (431, 4, 1, '混沌', 'hùn dùn', '传说中宇宙形成以前模糊一团的景象。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (432, 4, 1, '巍峨', 'wēi é', '形容山或建筑物高大雄伟。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (433, 4, 1, '精疲力竭', 'jīng pí lì jié', '精神非常疲劳，体力消耗已尽，形容极度疲乏。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (434, 4, 1, '隆隆', 'lóng lóng', '形容剧烈震动的声音。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (435, 4, 1, '奔流不息', 'bēn liú bù xī', '指水急速地流动而不停息。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (436, 4, 1, '滋润', 'zī rùn', '增添水分，使不干枯。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (437, 4, 1, '创造', 'chuàng zào', '想出新方法、建立新理论、做出新的成绩或东西。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (438, 4, 1, '悲惨', 'bēi cǎn', '处境或遭遇极其痛苦，令人伤心。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (439, 4, 1, '驱赶', 'qū gǎn', '驱逐赶走。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (440, 4, 1, '吩咐', 'fēn fù', '口头指派或命令；嘱咐。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (441, 4, 1, '领袖', 'lǐng xiù', '国家、政治团体、群众组织等的最高领导人。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (442, 4, 1, '惩罚', 'chéng fá', '处罚。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (443, 4, 1, '敬佩', 'jìng pèi', '敬重佩服。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (444, 4, 1, '饶恕', 'ráo shù', '免予责罚。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (445, 4, 1, '气急败坏', 'qì jí bài huài', '上气不接下气，狼狈不堪，形容十分慌张或恼怒。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (446, 4, 1, '屈服', 'qū fú', '对外来的压力妥协让步，放弃斗争。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (447, 4, 1, '窟窿', 'kū lóng', '洞，小孔。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (448, 4, 1, '愤愤不平', 'fèn fèn bù píng', '心中不服，感到气愤。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (449, 4, 1, '山冈', 'shān gāng', '不高的山。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (450, 4, 1, '熊熊大火', 'xióng xióng dà huǒ', '形容火势非常旺盛。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (451, 4, 1, '熄灭', 'xī miè', '停止燃烧。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (452, 4, 1, '塌下', 'tā xià', '倒，下陷。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (453, 4, 1, '挣扎', 'zhēng zhá', '用力支撑。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (454, 4, 1, '围困', 'wéi kùn', '团团围住，使处于困境。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (455, 4, 1, '照耀', 'zhào yào', '(强烈的光线）照射。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (456, 4, 1, '冶炼', 'yě liàn', '用高温熔炼或电解等方法将矿石中的有用成分提取出来。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (457, 4, 1, '危险', 'wēi xiǎn', '遭到损害或失败的可能性。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (458, 4, 1, '传说', 'chuán shuō', '群众口头上流传的关于某人某事的叙述或某种说法。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (459, 4, 1, '无可奈何', 'wú kě nài hé', '没有办法；没有办法可想。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (460, 4, 1, '挓挲', 'zhā sā', '（手、头发、树枝等）张开；伸开。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (461, 4, 1, '摇撼', 'yáo hàn', '摇动（树木、建筑物等）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (462, 4, 1, '掩护', 'yǎn hù', '采取某种方式暗中保护或不使暴露。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (463, 4, 1, '拯救', 'zhěng jiù', '救。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (464, 4, 1, '安然', 'ān rán', '平静；安定。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (465, 4, 1, '危险', 'wēi xiǎn', '有遭到损害或失败的可能。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (466, 4, 1, '绝望', 'jué wàng', '希望断绝；毫无希望。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (467, 4, 1, '嘶哑', 'sī yǎ', '声音沙哑。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (468, 4, 1, '白发苍苍', 'bái fà cāng cāng', '形容人年老而头发苍白。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (469, 4, 1, '奋力', 'fèn lì', '充分鼓起劲来。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (470, 4, 1, '终于', 'zhōng yú', '表示经过较长过程最后出现某种情况（多用于希望达到的结果）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (471, 4, 1, '鼓舞', 'gǔ wǔ', '使振作起来，增强信心或勇气。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (472, 4, 1, '顽皮', 'wán pí', '（儿童、少年等）爱玩爱闹，不听劝导。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (473, 4, 1, '笔陡', 'bǐ dǒu', '像笔杆一样直上直下，形容坡度很大。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (474, 4, 1, '神气', 'shén qì', '①自以为优越而得意或傲慢。②精神饱满。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (475, 4, 1, '惊呼', 'jīng hū', '吃惊地叫喊。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (476, 4, 1, '扇动', 'shān dòng', '摇动（像扇子的东西）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (477, 4, 1, '昏乱', 'hūn luàn', '头脑迷糊，神志不清。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (478, 4, 1, '助威', 'zhù wēi', '帮助增加声势。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (479, 4, 1, '纷纷', 'fēn fēn', '①（许多人或事物）接二连三地。②（言论、往下落的东西等）多而杂乱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (480, 4, 1, '恐怖', 'kǒng bù', '由于生命受到威胁或残害而恐惧。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (481, 4, 1, '惹怒', 'rě nù', '指处于被激怒的愤恨状态。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (482, 4, 1, '无缘无故', 'wú yuán wú gù', '没有一点原因。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (483, 4, 1, '摇摇摆摆', 'yáo yáo bǎi bǎi', '向相反的方向来回地移动或变动。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (484, 4, 1, '欺负', 'qī fù', '用蛮横无理的手段侵犯、压迫或侮辱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (485, 4, 1, '窝囊', 'wō nang', '无能；懦弱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (486, 4, 1, '殷切', 'yīn qiè', '深厚而急切。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (487, 4, 1, '角色', 'jué sè', '戏剧、影视剧中，演员扮演的剧中人物。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (488, 4, 1, '危机', 'wēi jī', '潜伏的危险。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (489, 4, 1, '通情达理', 'tōng qíng dá lǐ', '懂得道理，说话做事合情合理。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (490, 4, 1, '哄堂大笑', 'hōng táng dà xiào', '形容全屋子的人同时大笑。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (491, 4, 1, '笨拙', 'bèn zhuō', '笨；不聪明；不灵巧。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (492, 4, 1, '砸锅', 'zá guō', '比喻办事失败。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (493, 4, 1, '妩媚', 'wǔ mèi', '（女子）姿态美好。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (494, 4, 1, '毫无怨言', 'háo wú yuàn yán', '没有任何埋怨的话。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (495, 4, 1, '重振旗鼓', 'chóng zhèn qí gǔ', '指失败之后，重新集合力量再干。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (496, 4, 1, '得心应手', 'dé xīn yìng shǒu', '心里怎么想，手就能怎么做，形容运用自如。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (497, 4, 1, '质量', 'zhì liàng', '产品或工作的优劣程度。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (498, 4, 1, '排练', 'pái liàn', '排演练习。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (499, 4, 1, '懊悔', 'ào huǐ', '心里别扭；懊悔烦恼。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (500, 4, 1, '辉煌', 'huī huáng', '（成绩）等显著；卓著。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (501, 4, 1, '严肃', 'yán sù', '①（神情、气氛等）使人感到敬畏的②（作风、态度等）严格认真。竟然', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (502, 4, 1, '手舞足蹈', 'shǒu wǔ zú dǎo', '双手舞动，两只脚也跳出来，形容高兴到极点。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (503, 4, 1, '抱负', 'bào fù', '远大的志向。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (504, 4, 1, '兴致勃勃', 'xìng zhì bó bó', '形容兴趣很浓厚。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (505, 4, 1, '模范', 'mó fàn', '①可以作为榜样；值得学习的②值得学习的、作为榜样的人。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (506, 4, 1, '胸怀', 'xiōng huái', '心胸；心怀。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (507, 4, 1, '赞叹', 'zàn tàn', '称赞。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (508, 4, 1, '难以忘怀', 'nán yǐ wàng huái', '形容记忆深刻，不容易忘掉。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (509, 4, 1, '麻烦', 'má fán', '①繁琐难办的事情。②使人赞事或增加负担。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (510, 4, 1, '沉郁', 'chén yù', '低沉郁闷。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (511, 4, 1, '左顾右盼', 'zuǒ gù yòu pàn', '向左右两边看。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (512, 4, 1, '劝慰', 'quàn wèi', '劝解和安慰。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (513, 4, 1, '训斥', 'xùn chì', '训械和斥责。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (514, 4, 1, '非凡', 'fēi fán', '超过一般；不寻常。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (515, 4, 1, '肇事', 'zhào shì', '引起事故；闹事。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (516, 4, 1, '屈辱', 'qū rǔ', '受到的压迫和侮辱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (517, 4, 1, '斩钉截铁', 'zhǎn dīng jié tiě', '形容说话办事坚决果断，毫不犹豫。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (518, 4, 1, '被迫', 'bèi pò', '被逼迫；被强迫。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (519, 4, 1, '拯救', 'zhěng jiù', '救。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (520, 4, 1, '租界', 'zū jiè', '帝国主义国家强迫半殖民地国家在通商都市内“租借”给他们做进一步侵略的据点的地区。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (521, 4, 1, '旦角', 'dàn jué', '戏曲角色行当，扮演妇女，有青衣、花旦、老旦、武旦等区别。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (522, 4, 1, '纠缠', 'jiū chán', '①搅扰，找人的麻烦。②绕在一起。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (523, 4, 1, '邀请', 'yāo qǐng', '请人到自己的地方来或到约定的地方去。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (524, 4, 1, '沦陷', 'lún xiàn', '（领土）被敌人占领；失落。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (525, 4, 1, '拒绝', 'jù jué', '不接受（请求、意见或赠礼等）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (526, 4, 1, '骚扰', 'sāo rǎo', '使不安宁；扰乱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (527, 4, 1, '虚度', 'xū dù', '白白的度过。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (528, 4, 1, '签订', 'qiān dìng', '订立条约或合同并签字。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (529, 4, 1, '宁可', 'nìng kě', '表示比较两方面的利害得失后选取的一面（常带有两害权衡取其轻的意味）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (530, 4, 1, '破绽', 'pò zhàn', '衣物的裂口，比喻说话做事时露出的漏洞。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (531, 4, 1, '预支', 'yù zhī', '预先支付或领取（款项）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (532, 4, 1, '敬佩', 'jìng pèi', '敬重佩服。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (533, 4, 1, '追寻', 'zhuī xún', '跟踪寻找。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (534, 4, 1, '昔日', 'xī rì', '往日；从前。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (535, 4, 1, '妄想', 'wàng xiǎng', '①狂妄地打算。②不能实现的打算。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (536, 4, 1, '叮咚', 'dīng dōng', '形容玉石、金属等撞击或水落的声音。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (537, 4, 1, '茁壮', 'zhuó zhuàng', '（动植物、年轻人、孩子）强壮；健壮。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (538, 4, 1, '清香', 'qīng xiāng', '清淡的香味。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (539, 4, 1, '镢头', 'jué tóu', '刨土用的一种农具，类似镐。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (540, 4, 1, '雨后春笋', 'yǔ hòu chūn sǔn', '春天下雨后竹笋长得很多很快，比喻新事物大量出现。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (541, 4, 1, '茅屋', 'máo wū', '屋顶用茅草、稻草等盖的房子，大多简陋矮小。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (542, 4, 1, '满目琳琅', 'mǎn mù lín láng', '形容各种美好的东西很多（多指书籍或工艺品）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (543, 4, 1, '犹豫', 'yóu yù', '拿不定主意。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (544, 4, 1, '开荒', 'kāi huāng', '开垦荒地。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (545, 4, 1, '顶天立地', 'dǐng tiān lì dì', '形容形象高大，气概雄伟豪迈。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (546, 4, 1, '信念', 'xìn niàn', '自己认为可以确信的看法。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (547, 4, 1, '明媚', 'míng mèi', '①（景物）鲜明可爱。②（眼睛）明亮可爱。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (548, 4, 1, '管理', 'guǎn lǐ', '①负责某项工作使顺利进行②照管并约束（人或动物）。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (549, 4, 1, '荒芜', 'huāng wú', '因无人管理而长满野草。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (550, 4, 1, '人烟稀少', 'rén yān xī shǎo', '指人家或住户非常少。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (551, 4, 1, '打扮', 'dǎ bàn', '使容貌和衣着好看；打扮。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (552, 4, 1, '急忙', 'jí máng', '急速匆忙。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (553, 4, 1, '提心吊胆', 'tí xīn diào dǎn', '形容十分担心或害怕。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (554, 4, 1, '求饶', 'qiú ráo', '请求饶恕。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (555, 4, 1, '面如土色', 'miàn rú tǔ sè', '脸色跟土的颜色一样，没有血色。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (556, 4, 1, '灌溉', 'guàn gài', '把水输送到田地里。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (557, 4, 1, '拜见', 'bài jiàn', '敬辞，拜见。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (558, 4, 1, '恐怕', 'kǒng pà', '①表示估计兼担心。②表示估计、推测。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (559, 4, 1, '骨髓', 'gǔ suǐ', '骨头里的像脂肪的物质。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (560, 4, 1, '无能为力', 'wú néng wéi lì', '用不上力量，没有能力或能力达不到。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (561, 4, 1, '相当', 'xiāng dāng', '表示程度高。差不多，配得上或能够相抵。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (562, 4, 1, '理睬', 'lǐ cǎi', '对别人的言语行动表示态度；表示意见。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (563, 4, 1, '聚精会神', 'jù jīng huì shén', '集中精神、集中注意力.', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (564, 4, 1, '竟然', 'jìng rán', '表示出乎意料。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (565, 4, 1, '百发百中', 'bǎi fā bǎi zhòng', '每次都命中目标。比喻做事有充分把握，绝不落空。', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_chinese_word_comment` VALUES (566, 4, 1, '热敷', 'rè fū', '用热的湿毛巾、热沙或热水袋等放在身体的局部来治疗疾病。', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_english_lesson
-- ----------------------------
DROP TABLE IF EXISTS `app_english_lesson`;
CREATE TABLE `app_english_lesson`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade` tinyint(4) NOT NULL COMMENT '年级',
  `term` tinyint(4) NOT NULL COMMENT '学期',
  `unit` tinyint(4) NOT NULL COMMENT '单元',
  `word` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单词',
  `pronounce` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发音',
  `chinese` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '中文',
  `data_type` tinyint(4) NOT NULL COMMENT '数据分类',
  `sort_no` int(11) NULL DEFAULT NULL COMMENT '序号',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2032 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小学英语单词词组表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_english_lesson
-- ----------------------------
INSERT INTO `app_english_lesson` VALUES (18, 4, 2, 1, 'glasses                 ', '/\'glɑ:sɪz/', '眼镜', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (19, 4, 2, 1, 'know                      ', '/nəʊ/', '知道', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (20, 4, 2, 1, 'her                         ', '/hə(r)/', '她（she的宾格）', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (21, 4, 2, 1, 'look  like               ', '/lʊk laɪk/', '看起来像......', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (22, 4, 2, 1, 'with                       ', '/wɪð/', '有；和...在一起', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (23, 4, 2, 1, 'which                    ', '/wɪtʃ/', '哪一个；哪一些', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (24, 4, 2, 1, 'him                        ', '/hɪm/', '他（he的宾格）', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (25, 4, 2, 1, 'policewoman        ', '/pə\'li:swʊmən/', '女警察', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (26, 4, 2, 1, 'policewomen        ', '/pə\'li:swɪmɪn/', '女警察(复数）', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (27, 4, 2, 1, 'uniform                  ', '/\'ju:nɪfɔ:m/', '制服', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (28, 4, 2, 1, 'its                           ', '/ɪts/', '它的', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (29, 4, 2, 1, 'their                        ', '/ðeə(r)/', '他（她、它）们的', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (30, 4, 2, 1, 'in a black uniform', NULL, '穿着黑色制服', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (31, 4, 2, 1, 'in an orange jacket', NULL, '穿着橙色夹克', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (32, 4, 2, 1, 'in a white coat', NULL, '穿着白色大衣', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (33, 4, 2, 1, 'with glasses', NULL, '戴着眼镜', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (34, 4, 2, 1, 'in a pink dress', NULL, '穿着粉红色连衣裙', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (35, 4, 2, 1, 'in blue jeans', NULL, '穿着蓝色牛仔裤', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (36, 4, 2, 1, 'look like', NULL, '看起来像……', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (37, 4, 2, 2, 'shy                   ', '/ʃaɪ/', '害羞的', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (38, 4, 2, 2, 'kind                 ', '/kaɪnd/', '和蔼的,慈祥的', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (39, 4, 2, 2, 'friendly            ', '/ˈfrendli/', '友好的', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (40, 4, 2, 2, 'round               ', '/raʊnd/', '圆的', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (41, 4, 2, 3, 'routine           ', '/ru:ˈti:n/', '固定的程序', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (42, 4, 2, 3, 'daily               ', '/ˈdeɪli/', '日常的', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (43, 4, 2, 3, 'up                    ', '/ʌp/', '向上', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (44, 4, 2, 3, 'time                ', '/taɪm/', '时间', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (45, 4, 2, 3, 'o’clock           ', '/ə’klɒk/', '......点钟', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (46, 4, 2, 3, 'half                ', '/hɑ:f/', '半;一半', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (47, 4, 2, 3, 'quarter          ', '/ˈkwɔ:tə(r)/', '十五分钟', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (48, 4, 2, 3, 'past               ', '/pɑ:st/', '超过', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (49, 4, 2, 3, 'to                   ', '/tu/', '差....到...', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (50, 4, 2, 3, 'sleep            ', '/sli:p/', '睡觉', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (51, 4, 2, 3, 'tired             ', '/ˈtaɪəd/', '疲倦的', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (52, 4, 2, 3, 'lunch            ', '/lʌntʃ/', '午餐', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (53, 4, 2, 3, 'dinner           ', '/ˈdɪnə(r)/', '晚餐', 1, 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (54, 4, 2, 3, 'back             ', '/bæk/', '回', 1, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (55, 4, 2, 3, 'home            ', '/həʊm/', '家', 1, 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (56, 4, 2, 3, 'teach            ', '/ti:tʃ/', '教', 1, 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (57, 4, 2, 3, 'paint             ', '/peɪnt/', '画；涂', 1, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (58, 4, 2, 4, 'usually            ', '/ˈju:ʒuəli/', '通常', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (59, 4, 2, 4, 'breakfast        ', '/ˈbrekfəst/', '早餐', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (60, 4, 2, 4, 'from                ', '/frəm/', '从', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (61, 4, 2, 4, 'day                  ', '/deɪ/', '天;日', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (62, 4, 2, 4, 'well                 ', '/wel/', '好', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (63, 4, 2, 4, 'exercise          ', '/ˈeksəsaɪz/', '练习', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (64, 4, 2, 4, 'run                   ', '/rʌn/', '跑步', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (65, 4, 2, 4, 'swim                ', '/swɪm/', '游泳', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (66, 4, 2, 5, 'Thursday           ', '/ˈθɜ:zdeɪ/', '星期四', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (67, 4, 2, 5, 'today                 ', '/təˈdeɪ/', '今天', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (68, 4, 2, 5, 'Wednesday       ', '/ˈwenzdeɪ/', '星期三', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (69, 4, 2, 5, 'Sunday              ', '/ˈsʌndeɪ/', '星期天', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (70, 4, 2, 5, 'week                  ', '/wi:k/', '周;星期', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (71, 4, 2, 5, 'why                    ', '/waɪ/', '为什么', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (72, 4, 2, 5, 'Saturday           ', '/ˈsætədeɪ/', '星期六', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (73, 4, 2, 5, 'Tuesday            ', '/ˈtju:zdeɪ/', '星期二', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (74, 4, 2, 5, 'Friday                ', '/ˈfraɪdeɪ/', '星期五', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (75, 4, 2, 5, 'Monday             ', '/ˈmʌndeɪ/', '星期一', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (76, 4, 2, 6, 'always             ', '/ˈɔ:lweɪz/', '总是', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (77, 4, 2, 6, 'parent              ', '/ˈpeərənt/', '父（母）亲', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (78, 4, 2, 6, 'never               ', '/ˈnevə(r)/', '从来不', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (79, 4, 2, 6, 'often               ', '/ˈɒfn/', '经常', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (80, 4, 2, 6, 'park                ', '/pɑ:k/', '公园', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (81, 4, 2, 6, 'housework      ', '/ˈhaʊswɜ:k/', '家务', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (82, 4, 2, 6, 'visit                ', '/ˈvɪzɪt/', '参观', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (83, 4, 2, 6, 'film                ', '/fɪlm/', '电影', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (84, 4, 2, 7, 'free               ', '/fri:/', '空闲的；自由的', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (85, 4, 2, 7, 'activity         ', '/ækˈtɪvəti/', '活动', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (86, 4, 2, 7, 'feel               ', '/fi:l/', '感觉', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (87, 4, 2, 7, 'bored            ', '/bɔ:d/', '烦闷的', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (88, 4, 2, 7, 'interesting    ', '/ˈɪntrəstɪŋ/', '有趣的', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (89, 4, 2, 7, 'cartoon         ', '/kɑ:ˈtu:n/', '漫画', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (90, 4, 2, 7, 'king               ', '/kɪŋ/', '国王', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (91, 4, 2, 7, 'listen             ', '/ˈlɪsn/', '听', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (92, 4, 2, 7, 'shall              ', '/ʃəl/', '将要', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (93, 4, 2, 7, 'email             ', '/\'i:meɪl/', '发电子邮件；电子邮件', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (94, 4, 2, 7, 'picnic           ', '/ˈpɪknɪk/', '野餐', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (95, 4, 2, 8, 'fish                 ', '/fɪʃ/', '钓鱼', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (96, 4, 2, 8, 'dance             ', '/dɑ:ns/', '跳舞', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (97, 4, 2, 8, 'fly                   ', '/flaɪ/', '放（风筝）；飞', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (98, 4, 2, 9, 'basketball       ', '/ˈbɑ:skɪtbɔ:l/', '篮球', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (99, 4, 2, 9, 'skate               ', '/skeɪt/', '溜冰', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (100, 4, 2, 9, 'fun                   ', '/fʌn/', '有趣', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (101, 4, 2, 9, 'think                ', '/θɪŋk/', '想', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (102, 4, 2, 9, 'football           ', '/ˈfʊtbɔ:l/', '足球', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (103, 4, 2, 9, 'try                    ', '/traɪ/', '试；尝试', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (104, 4, 2, 9, 'high                 ', '/haɪ/', '高的；高地', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (105, 4, 2, 9, 'tennis              ', '/ˈtenɪs/', '网球', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (106, 4, 2, 9, 'chess              ', '/tʃes/', '（国际）象棋', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (107, 4, 2, 9, 'jump                ', '/dʒʌmp/', '跳', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (108, 4, 2, 10, 'arm              ', '/ɑ:m/', '手臂', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (109, 4, 2, 10, 'volleyball    ', '/ˈvɒlibɔ:l/', '排球', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (110, 4, 2, 10, 'water          ', '/ˈwɔ:tə(r)/', '水', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (111, 4, 2, 10, 'bath            ', '/bɑ:θ/', '洗澡', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (112, 4, 2, 10, 'fast             ', '/fɑ:st/', '快的；飞快地', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (113, 4, 2, 10, 'clever         ', '/ˈklevə(r)/', '聪明的', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (114, 4, 2, 10, 'badminton ', '/ˈbædmɪntən/', '羽毛球', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (115, 4, 2, 11, 'January      ', '/ˈdʒænjuəri/', '一月', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (116, 4, 2, 11, 'present       ', '/ˈpreznt/', '礼物', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (117, 4, 2, 11, 'party           ', '/ˈpɑ:ti/', '聚会', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (118, 4, 2, 11, 'card            ', '/kɑ:d/', '卡；卡片', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (119, 4, 2, 11, 'was              ', '/wɒz/', '是（is,am的过去式）', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (120, 4, 2, 11, 'celebration  ', '/ˌselɪˈbreɪʃn/', '庆祝', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (121, 4, 2, 11, 'candle         ', '/ˈkændl/', '蜡烛', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (122, 4, 2, 11, 'cake            ', '/keɪk/', '蛋糕', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (123, 4, 2, 11, 'March         ', '/mɑ:tʃ/', '三月', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (124, 4, 2, 11, 'August       ', '/ˈɔ:gəst/', '八月', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (125, 4, 2, 11, 'February     ', '/ˈfebruəri/', '二月', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (126, 4, 2, 11, 'April            ', '/ˈeɪprəl/', '四月', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (127, 4, 2, 11, 'June           ', '/dʒu:n/', '六月', 1, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (128, 4, 2, 11, 'November ', '/nəʊˈvembə(r)/', '十一月', 1, 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (129, 4, 2, 12, 'May                ', '/meɪ/', '五月', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (130, 4, 2, 12, 'summer         ', '/ˈsʌmə(r)/', '夏天', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (131, 4, 2, 12, 'July                ', '/dʒuˈlaɪ/', '七月', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (132, 4, 2, 12, 'holiday           ', '/ˈhɒlədeɪ/', '假日', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (133, 4, 2, 12, 'already           ', '/ɔːlˈredi/', '已经', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (134, 4, 2, 12, 'give                ', '/ɡɪv/', '给', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (135, 4, 2, 12, 'September     ', '/sepˈtembə(r)/', '九月', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (136, 4, 2, 12, 'October          ', '/ɒkˈtəʊbə(r)/', '十月', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (137, 4, 2, 12, 'Mid-Autumn Festival  ', '/mɪd ˈɔːtəm ˈfestɪvl/', '中秋节', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (138, 4, 2, 12, 'festival           ', '/ˈfestɪvl/', '节日', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (139, 4, 2, 12, 'spring             ', '/sprɪŋ/', '春天', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (140, 4, 2, 2, 'maths teacher', NULL, '数学老师', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (141, 4, 2, 2, 'long hair', NULL, '长头发', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (142, 4, 2, 2, 'big eyes', NULL, '大眼睛', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (143, 4, 2, 2, 'big nose', NULL, '大鼻子', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (144, 4, 2, 2, 'Chinese teacher', NULL, '语文老师', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (145, 4, 2, 2, 'round face', NULL, '圆脸', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (146, 4, 2, 2, 'big mouth', NULL, '大嘴巴', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (147, 4, 2, 2, 'What is ... like?', NULL, '……像什么?', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (148, 4, 2, 2, 'short hair', NULL, '短头发', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (149, 4, 2, 2, 'brown hair', NULL, '棕色的头发', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (150, 4, 2, 2, 'art teacher', NULL, '美术老师', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (151, 4, 2, 3, 'time for class', NULL, '上课时间', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (152, 4, 2, 3, 'half past ...', NULL, '……点半', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (153, 4, 2, 3, 'a quarter to ...', NULL, '……点四十五分(差一刻钟到……点)', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (154, 4, 2, 3, 'a quarter to twelve', NULL, '十一点四十五分', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (155, 4, 2, 3, 'time for lunch', NULL, '午餐时间', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (156, 4, 2, 3, 'time to go back home', NULL, '回家的时间', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (157, 4, 2, 3, 'time for dinner', NULL, '晚餐时间', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (158, 4, 2, 3, 'time to do my homework', NULL, '做家庭作业的时间', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (159, 4, 2, 4, 'have breakfast', NULL, '吃早餐', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (160, 4, 2, 4, 'on school days', NULL, '在学校上课日', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (161, 4, 2, 4, 'have classes', NULL, '上课', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (162, 4, 2, 4, 'do homework', NULL, '做家庭作业', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (163, 4, 2, 4, 'have lunch', NULL, '吃午餐', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (164, 4, 2, 4, 'take exercise', NULL, '体育锻炼', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (165, 4, 2, 4, 'watch TV', NULL, '看电视', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (166, 4, 2, 4, 'go swimming', NULL, '去游泳', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (167, 4, 2, 4, 'from ... to ...', NULL, '从……到……', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (168, 4, 2, 4, 'go running', NULL, '去跑步', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (169, 4, 2, 5, 'two PE lessons', NULL, '两节体育课', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (170, 4, 2, 5, 'have a music lesson', NULL, '上一节音乐课', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (171, 4, 2, 5, 'on Wednesday', NULL, '在星期三', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (172, 4, 2, 5, 'favourite day', NULL, '最喜欢的日子', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (173, 4, 2, 6, 'clean my room', NULL, '打扫我的房间', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (174, 4, 2, 6, 'help my parents', NULL, '帮助我的父母', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (175, 4, 2, 6, 'do housework', NULL, '做家务', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (176, 4, 2, 6, 'visit my friends', NULL, '拜访我的朋友们', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (177, 4, 2, 6, 'go to the park', NULL, '去公园', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (178, 4, 2, 6, 'go shopping', NULL, '去购物', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (179, 4, 2, 6, 'see a film', NULL, '看电影', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (180, 4, 2, 7, 'feel bored', NULL, '觉得无聊', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (181, 4, 2, 7, 'free time', NULL, '空余时间', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (182, 4, 2, 7, 'take photos', NULL, '照相', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (183, 4, 2, 7, 'go shopping', NULL, '去购物', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (184, 4, 2, 7, 'do some reading', NULL, '读点书', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (185, 4, 2, 7, 'watch cartoons', NULL, '看卡通片', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (186, 4, 2, 7, 'listen to ...', NULL, '听….', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (187, 4, 2, 7, 'listen to music', NULL, '听音乐', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (188, 4, 2, 7, 'email my friends', NULL, '给我的朋友发电子邮件', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (189, 4, 2, 7, 'Monkey King', NULL, '猴王', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (190, 4, 2, 7, 'have a picnic', NULL, '去野餐', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (191, 4, 2, 7, 'draw a picture', NULL, '画画', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (192, 4, 2, 8, 'have a look', NULL, '看一下', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (193, 4, 2, 8, 'fishing in the park', NULL, '在公园里钓鱼', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (194, 4, 2, 8, 'watching cartoons in the living room', NULL, '在客厅里看卡通片', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (195, 4, 2, 8, 'singing and dancing in the living room', NULL, '在客厅里唱歌跳舞', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (196, 4, 2, 8, 'swimming in the pool', NULL, '在游泳池里游泳', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (197, 4, 2, 8, 'flying)a kite in the playground', NULL, '在操场上放风筝', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (198, 4, 2, 9, 'the high jump', NULL, '跳高', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (199, 4, 2, 9, 'the long jump', NULL, '跳远', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (200, 4, 2, 9, 'table tennis', NULL, '乒乓球', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (201, 4, 2, 9, 'in the playground', NULL, '在操场上', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (202, 4, 2, 9, 'some of the children', NULL, '有些孩子', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (203, 4, 2, 9, 'playing basketball', NULL, '打篮球', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (204, 4, 2, 9, 'next to the swimming pool', NULL, '在游泳池旁边', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (205, 4, 2, 9, 'playing table tennis', NULL, '打乒乓球', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (206, 4, 2, 9, 'doing kung fu', NULL, '练武术', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (207, 4, 2, 9, 'playing football', NULL, '踢足球', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (208, 4, 2, 9, 'doing the long jump', NULL, '练习跳远', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (209, 4, 2, 9, 'doing the high jump', NULL, '练习跳高', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (210, 4, 2, 9, 'playing chess', NULL, '下(国际) 象棋', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (211, 4, 2, 9, 'playing tennis', NULL, '打网球', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (212, 4, 2, 9, '* kung fu', NULL, '功夫;武术', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (213, 4, 2, 10, 'favourite sport', NULL, '最喜欢的运动', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (214, 4, 2, 10, 'like swimming', NULL, '喜欢游泳', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (215, 4, 2, 10, 'like playing volleyball', NULL, '喜欢打排球', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (216, 4, 2, 10, 'long arms', NULL, '长手臂', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (217, 4, 2, 10, 'take a bath', NULL, '洗澡', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (218, 4, 2, 10, 'like taking a bath', NULL, '喜欢洗澡', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (219, 4, 2, 10, 'long legs', NULL, '长腿', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (220, 4, 2, 11, 'all the presents', NULL, '所有的礼物', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (221, 4, 2, 11, 'in January', NULL, '在一月', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (222, 4, 2, 11, 'have a party for ...', NULL, '为……举行聚会', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (223, 4, 2, 11, 'on the birthday cake', NULL, '在生日蛋糕上', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (224, 4, 2, 11, 'ten candles', NULL, '十支蜡烛', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (225, 4, 2, 11, 'be born ...', NULL, '出生于……', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (226, 4, 2, 11, 'go on', NULL, '进行', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (227, 4, 2, 12, 'with lots of great food', NULL, '有很多食物', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (228, 4, 2, 12, 'in my home', NULL, '在我的家里', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (229, 4, 2, 12, 'like doing', NULL, '喜欢做', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (230, 4, 2, 12, 'for my mum', NULL, '为我妈妈', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (231, 4, 2, 12, 'as a gift', NULL, '作为礼物', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (232, 4, 2, 12, 'like having a big family dinner', NULL, '喜欢吃一顿丰盛的家庭晚餐', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (233, 4, 2, 12, 'make a card', NULL, '做一张卡片', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (234, 4, 2, 12, 'New Year\'s Day', NULL, '元旦', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (235, 4, 2, 12, 'Mother’s Day', NULL, '母亲节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (236, 4, 2, 12, 'one for you', NULL, '一张给你', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (237, 4, 2, 12, 'Women\'s Day', NULL, '妇女节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (238, 4, 2, 12, 'Spring Festival', NULL, '春节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (239, 4, 2, 12, 'Dragon Boat Festival', NULL, '端午节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (240, 4, 2, 12, 'Mid-Autumn Festival', NULL, '中秋节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (241, 4, 2, 12, 'Chongyang Festival', NULL, '重阳节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (242, 4, 2, 12, 'Teachers’Day', NULL, '教师节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (243, 4, 2, 12, 'Children’s Day', NULL, '儿童节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (244, 4, 2, 12, 'Father’s Day', NULL, '父亲节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (245, 4, 2, 12, 'National Day', NULL, '国庆节', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (246, 4, 2, 12, 'Chinese New Year\'s Eve', NULL, '除夕', 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (581, 4, 1, 1, 'draw        ', '/drɔː/', '画画', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (582, 4, 1, 1, 'window   ', '/\'wɪndəʊ/', '窗', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (583, 4, 1, 1, 'next         ', '/nekst/', '下一个', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (584, 4, 1, 1, 'next to     ', '/nekst  tuː/', '在…旁边', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (585, 4, 1, 1, 'bedroom ', '/\'bedruːm/', '卧室，睡房', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (586, 4, 1, 1, 'computer', '/kəm\'pjuːtə/', '计算机', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (587, 4, 1, 1, 'pink        ', '/pɪŋk/', '粉红色（的）', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (588, 4, 1, 1, 'map        ', '/mæp/', '地图', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (589, 4, 1, 1, 'flower     ', '/\'flaʊə/', '花', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (590, 4, 1, 1, 'door        ', '/dɔː/', '门', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (591, 4, 1, 1, 'between ', '/bɪ\'twiːn/', '在...之间', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (592, 4, 1, 2, 'close   ', '/kləʊz/', '合上，闭上', 1, 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (593, 4, 1, 2, 'right    ', '/raɪt/', '对的', 1, 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (594, 4, 1, 2, 'now     ', '/naʊ/', '现在', 1, 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (595, 4, 1, 2, 'wrong  ', '/rɒŋ/', '错的', 1, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (596, 4, 1, 2, 'for       ', '/ fɔ:(r)/', '长达（....分钟）', 1, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (597, 4, 1, 2, 'open    ', '/\'əʊpən/', '打开，睁开', 1, 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (598, 4, 1, 2, 'minute ', '/\'mɪnɪt/', '分钟', 1, 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (599, 4, 1, 2, 'floor    ', '/flɔː/', '地板', 1, 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (600, 4, 1, 2, 'clock   ', '/klɒk/', '钟', 1, 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (601, 4, 1, 1, 'wall        ', '/wɔːl/', '墙', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (602, 4, 1, 3, 'come  in         ', '/kʌm  ɪn/', '进来', 1, 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (603, 4, 1, 3, 'come              ', '/kʌm/', '来', 1, 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (604, 4, 1, 3, 'living room     ', '/\'lɪvɪŋ ruːm/', '客厅', 1, 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (605, 4, 1, 3, 'love                ', '/lʌv/', '爱', 1, 27, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (606, 4, 1, 2, 'sofa     ', '/\'səʊfə/', '沙发', 1, 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (607, 4, 1, 3, 'house             ', '/haʊs/', '房子', 1, 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (608, 4, 1, 3, 'wow                ', '/waʊ/', '哇', 1, 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (609, 4, 1, 3, 'Here it is', '/hɪə ɪt ɪz/', '!就在这里', 1, 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (610, 4, 1, 3, 'large               ', '/lɑːdʒ/', '大的', 1, 31, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (611, 4, 1, 3, 'kitchen           ', '/\'kɪtʃɪn/', '厨房', 1, 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (612, 4, 1, 3, 'clean              ', '/kliːn/', '干净的', 1, 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (613, 4, 1, 3, 'garden           ', '/\'gɑːdn/', '花园', 1, 36, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (614, 4, 1, 4, 'building          ', '/\'bɪldɪŋ/', '大楼', 1, 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (615, 4, 1, 4, 'after                ', '/\'ɑːftə/', '...之后', 1, 38, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (616, 4, 1, 3, 'beautiful        ', '/ˈbju:tɪfl/', '美丽的', 1, 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (617, 4, 1, 4, 'after school    ', '/\'ɑːftə skuːl/', '放学后', 1, 39, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (618, 4, 1, 4, 'live                 ', '/lɪv/', '居住,生活', 1, 40, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (619, 4, 1, 4, 'bathroom       ', '/\'bɑːθruːm/', '浴室', 1, 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (620, 4, 1, 4, 'take a shower', '/teɪk ə \'ʃaʊə/', '淋浴', 1, 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (621, 4, 1, 4, 'shower           ', '/\'ʃaʊə/', '淋浴', 1, 42, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (622, 4, 1, 4, 'meal               ', '/miːl/', '餐，饭', 1, 44, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (623, 4, 1, 3, 'toilet              ', '/ˈtɔɪlɪt/', '厕所', 1, 35, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (624, 4, 1, 4, 'read                ', '/ri:d/', '阅读', 1, 47, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (625, 4, 1, 4, 'do                   ', '/duː/', '做', 1, 48, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (626, 4, 1, 4, 'homework      ', '/\'həʊmwɜːk/', '家庭作业', 1, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (627, 4, 1, 4, 'do one’s homework        ', '', '做家庭作业', 2, 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (628, 4, 1, 3, 'study              ', '/\'stʌdɪ/', '学习；书房', 1, 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (629, 4, 1, 4, 'have meals     ', '/hæv miːlz/', '用餐', 1, 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (630, 4, 1, 4, 'watch             ', '/wɒtʃ/', '看', 1, 46, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (631, 4, 1, 5, 'our                     ', '/aʊə/', '我们的', 1, 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (632, 4, 1, 5, 'library                 ', '/ˈlaɪbrərɪ/', '图书馆', 1, 55, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (633, 4, 1, 5, 'classroom          ', '/\'klɑːsruːm/', '课室', 1, 54, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (634, 4, 1, 5, 'pool                    ', '/pul/', '池', 1, 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (635, 4, 1, 4, 'grow               ', '/grəʊ/', '种', 1, 51, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (636, 4, 1, 4, 'one                 ', '/wʌn/', '某一（人）', 1, 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (637, 4, 1, 5, 'swimming pool   ', '/\'swɪmɪŋ puːl/', '游泳池', 1, 57, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (638, 4, 1, 5, 'playground         ', '/\'pleɪgraʊnd/', '运动场', 1, 59, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (639, 4, 1, 5, 'sometimes         ', '/\'sʌmtaɪmz/', '有时', 1, 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (640, 4, 1, 5, 'PE                       ', '/piˈ i:/', '体育', 1, 61, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (641, 4, 1, 5, 'music                 ', '/\'mjuːzɪk/', '音乐', 1, 62, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (642, 4, 1, 5, 'have  lessons     ', '/hæv  \'les(ə)nz/', '上课', 1, 64, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (643, 4, 1, 5, 'lesson                 ', '/\'les(ə)n/', '课', 1, 63, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (644, 4, 1, 5, 'art                      ', '/ɑːt/', '艺术，美术', 1, 66, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (645, 4, 1, 5, 'dining  hall        ', '/daɪnɪŋ  hɔːl/', '饭堂', 1, 68, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (646, 4, 1, 5, 'eat                     ', '/iːt/', '吃（饭）', 1, 69, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (647, 4, 1, 6, 'or              ', '/ɔː/', '或者', 1, 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (648, 4, 1, 6, 'tree           ', '/triː/', '树', 1, 71, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (649, 4, 1, 6, 'eleven       ', '/ɪ\'lev(ə)n/', '十一', 1, 72, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (650, 4, 1, 5, 'work                   ', '/wɜːk/', '工作', 1, 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (651, 4, 1, 5, 'hall                     ', '/hɔːl/', '厅', 1, 67, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (652, 4, 1, 6, 'fifteen       ', '/fɪf\'tiːn/', '十五', 1, 75, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (653, 4, 1, 6, 'twelve       ', '/twelv/', '十二', 1, 73, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (654, 4, 1, 6, 'thirteen     ', '/θɜː\'tiːn/', '十三', 1, 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (655, 4, 1, 6, 'eighteen   ', '/eɪ\'tiːn/', '十八', 1, 76, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (656, 4, 1, 6, 'twenty       ', '/\'twentɪ/', '二十', 1, 77, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (657, 4, 1, 6, 'thirty         ', '/\'θɜːtɪ/', '三十', 1, 78, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (658, 4, 1, 6, 'forty          ', '/\'fɔːtɪ/', '四十', 1, 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (659, 4, 1, 6, 'eighty       ', '/\'eɪtɪ/', '八十', 1, 81, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (660, 4, 1, 6, 'fifty           ', '/\'fɪftɪ/', '五十', 1, 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (661, 4, 1, 7, 'class            ', '/klɑːs/', '班', 1, 82, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (662, 4, 1, 7, 'each            ', '/iːtʃ/', '每个;各', 1, 84, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (663, 4, 1, 7, 'blackboard  ', '/ˈblækbɔːd/', '黑板', 1, 86, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (664, 4, 1, 7, 'winner         ', '/\'wɪnə/', '胜利者;赢家', 1, 88, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (665, 4, 1, 7, 'see               ', '/siː/', '明白;看见', 1, 87, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (666, 4, 1, 7, 'group          ', '/gruːp/', '组', 1, 85, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (667, 4, 1, 7, 'maths          ', '/mæθs/', '数学', 1, 90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (668, 4, 1, 8, 'favourite         ', '/ˈfeɪvərət/', '最喜欢的', 1, 93, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (669, 4, 1, 8, 'best                ', '/best/', '最', 1, 91, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (670, 4, 1, 8, 'subject           ', '/ˈsʌbdʒɪkt/', '学科', 1, 92, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (671, 4, 1, 7, 'star              ', '/stɑː/', '星', 1, 83, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (672, 4, 1, 8, 'story               ', '/\'stɔːrɪ/', '故事', 1, 95, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (673, 4, 1, 8, 'write               ', '/raɪt/', '写', 1, 94, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (674, 4, 1, 7, 'Chinese       ', '/tʃaɪniːz/', '中国的;汉语', 1, 89, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (675, 4, 1, 8, 'learn                ', '/lɜːn/', '学习', 1, 98, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (676, 4, 1, 8, 'everything       ', '/\'evrɪθɪŋ/', '每样事情', 1, 97, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (677, 4, 1, 8, 'song                 ', '/sɒŋ/', '歌曲', 1, 100, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (678, 4, 1, 8, 'sport                ', '/spɔːt/', '体育运动', 1, 101, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (679, 4, 1, 8, 'science             ', '/\'saɪəns/', '科学', 1, 102, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (680, 4, 1, 8, 'sing                  ', '/sɪŋ/', '唱歌', 1, 99, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (681, 4, 1, 9, 'clothes          ', '/kləʊðz/', '衣服', 1, 105, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (682, 4, 1, 8, 'about              ', '/ə\'baʊt/', '关于;大约', 1, 96, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (683, 4, 1, 9, 'blouse           ', '/\'blaʊz/', '女衬衫', 1, 106, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (684, 4, 1, 9, 'much             ', '/mʌtʃ/', '多', 1, 107, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (685, 4, 1, 9, 'very  much                          ', '', '非常', 2, 108, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (686, 4, 1, 8, 'understand      ', '/ʌndə\'stænd/', '了解', 1, 103, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (687, 4, 1, 9, 'how  much                          ', '', '多少（钱）', 2, 109, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (688, 4, 1, 9, 'hundred        ', '/\'hʌndrəd/', '百', 1, 110, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (689, 4, 1, 9, 'yuan              ', '/jʊˈɑːn/', '元', 1, 111, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (690, 4, 1, 9, 'too                ', '/tuː/', '太', 1, 112, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (691, 4, 1, 9, 'expensive     ', '/ɪkˈspensɪv/', '贵的', 1, 113, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (692, 4, 1, 9, 'jacket           ', '/\'dʒækɪt/', '夹克', 1, 117, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (693, 4, 1, 9, 'coat              ', '/kəʊt/', '大衣', 1, 118, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (694, 4, 1, 9, 'shirt              ', '/ʃɜːt/', '衬衣', 1, 119, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (695, 4, 1, 8, 'world                ', '/wɜːld/', '世界', 1, 104, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (696, 4, 1, 9, 'cap               ', '/kæp/', '帽子', 1, 116, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (697, 4, 1, 9, 'take              ', '/teɪk/', '拿;取', 1, 115, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (698, 4, 1, 9, 'will                ', '/wɪl/', '将;会', 1, 114, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (699, 4, 1, 9, 'grey              ', '/greɪ/', '灰色', 1, 122, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (700, 4, 1, 9, 'skirt              ', '/skɜːt/', '裙子', 1, 121, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (701, 4, 1, 9, 'sweater        ', '/\'swetə/', '毛衣', 1, 123, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (702, 4, 1, 9, 'dress            ', '/dres/', '连衣裙', 1, 120, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (703, 4, 1, 10, 'shoe          ', '/ʃuː/', '鞋子', 1, 125, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (704, 4, 1, 10, 'pair            ', '/peə/', '双;对', 1, 126, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (705, 4, 1, 10, 'a  pair of    ', '', '一双;一对', 2, 127, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (706, 4, 1, 10, 'else            ', '/els/', '别的', 1, 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (707, 4, 1, 10, 'all               ', '/ɔːl/', '全部;都', 1, 131, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (708, 4, 1, 10, 'them           他', '/她/', '它们[ðem]', 1, 128, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (709, 4, 1, 10, 'anything    ', '/\'enɪθɪŋ/', '任何事情', 1, 129, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (710, 4, 1, 10, 'help           ', '/help/', '帮助', 1, 124, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (711, 4, 1, 10, 'sock            ', '/sɒk/', '短袜', 1, 132, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (712, 4, 1, 10, 'shorts         ', '/ʃɔːts/', '短裤', 1, 134, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (713, 4, 1, 10, 'wear           ', '/weə/', '穿着', 1, 135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (714, 4, 1, 11, 'painter           ', '/\'peɪntə/', '画家', 1, 136, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (715, 4, 1, 11, 'when         ', '/wen/', '当.....的时候', 1, 137, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (716, 4, 1, 11, 'cook         ', '/kʊk/', '烹调；厨房', 1, 141, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (717, 4, 1, 11, 'sick           ', '/sɪk/', '病的', 1, 140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (718, 4, 1, 11, 'grow  up           ', '', '长大', 2, 138, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (719, 4, 1, 11, 'food         ', '/fuːd/', '食物', 1, 142, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (720, 4, 1, 11, 'build       ', '/bɪld/', '建筑；建设', 1, 143, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (721, 4, 1, 11, 'policeman', '/pə\'liːsmən/', '（男）警察', 1, 145, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (722, 4, 1, 11, 'reporter   ', '/rɪˈpɔ:tə(r)/', '记者', 1, 146, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (723, 4, 1, 12, 'job            ', '/dʒɒb/', '工作;职业', 1, 148, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (724, 4, 1, 11, 'news        ', '/njuːz/', '新闻', 1, 147, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (725, 4, 1, 10, 'trousers      ', '/\'traʊzəz/', '裤子', 1, 133, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (726, 4, 1, 11, 'doctor     ', '/\'dɒktə/', '医生', 1, 144, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (727, 4, 1, 12, 'his             ', '/hɪz/', '他的', 1, 152, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (728, 4, 1, 12, 'like            ', '/laɪk/', '像', 1, 151, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (729, 4, 1, 12, 'tell            ', '/tel/', '告诉;讲', 1, 154, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (730, 4, 1, 12, 'worker      ', '/\'wɜːkə/', '工人', 1, 150, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (731, 4, 1, 12, 'factory      ', '/\'fækt(ə)rɪ/', '工厂', 1, 149, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (732, 4, 1, 11, 'be  good at       ', '', '善于', 2, 139, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (733, 4, 1, 12, 'drive          ', '/draɪv/', '驾驶', 1, 157, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (734, 4, 1, 12, 'pupil          ', '/\'pjuːpɪl/', '学生', 1, 158, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (735, 4, 1, 12, 'driver        ', '/\'draɪvə/', '司机', 1, 156, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (736, 4, 1, 12, 'her            ', '/hɜː/', '她的', 1, 155, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (737, 4, 1, 12, 'farmer       ', '/\'fɑːmə/', '农民', 1, 160, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (738, 4, 1, 12, 'men           ', '/men/', '男人', 1, 161, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (739, 4, 1, 12, 'writer        ', '/\'raɪtə/', '作家', 1, 153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (740, 4, 1, 12, 'machine     ', '/mə\'ʃiːn/', '机器', 1, 163, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (741, 4, 1, 12, 'women      ', '/\'wɪmɪn/', '妇女', 1, 159, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (742, 4, 1, 12, 'make          ', '/meɪk/', '制造', 1, 162, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1776, 3, 2, 1, 'idea                    ', '[aɪˈdɪə]', '主意', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1777, 3, 2, 1, 'go                       ', '[gəʊ]', '去', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1778, 3, 2, 1, 'colour                ', '[ˈkʌlə]', '颜色;给......涂颜色', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1779, 3, 2, 1, 'red                      ', '[red]', '红色的;红色', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1780, 3, 2, 1, 'like                     ', '[laɪk]', '喜欢', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1781, 3, 2, 1, 'to                        ', '[tu:]', '到……', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1782, 3, 2, 1, 'great                   ', '[greɪt]', '太好了;好极了', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1783, 3, 2, 1, 'yellow                 ', '[ˈjeləʊ]', '黄色;黄色的', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1784, 3, 2, 1, 'white                   ', '[waɪt]', '白色;白色的', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1785, 3, 2, 1, 'blue                     ', '[bluː]', '蓝色;蓝色的', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1786, 3, 2, 2, 'look              ', '[lʊk]', '看', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1787, 3, 2, 2, 'at                   ', '[æt]', '在', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1788, 3, 2, 2, 'funny            ', '[ˈfʌnɪ]', '有趣的', 1, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1789, 3, 2, 2, 'crayon          ', '[ˈkreɪən]', '蜡笔', 1, 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1790, 3, 2, 2, 'hat                ', '[hæt]', '帽子', 1, 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1791, 3, 2, 2, 'orange          ', '[ˈɔrɪndʒ]', '橙色的；橘子', 1, 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1792, 3, 2, 2, 'purple           ', '[ˈpɜːp(ə)l]', '紫色的', 1, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1793, 3, 2, 2, 'brown            ', '[braʊn]', '褐色的', 1, 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1794, 3, 2, 2, 'green             ', '[griːn]', '绿色的', 1, 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1795, 3, 2, 2, 'black             ', '[blæk]', '黑色的', 1, 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1796, 3, 2, 2, 'position              ', '[pəˈzɪʃ(ə)n]', '位置', 1, 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1797, 3, 2, 2, 'robot                   ', '[ˈrəʊbɒt]', '机器人', 1, 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1798, 3, 2, 2, 'pencil-box           ', '[ˈpenslbɒks]', '铅笔盒', 1, 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1799, 3, 2, 2, 'doll                     ', '[dɒl]', '玩具娃娃', 1, 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1800, 3, 2, 2, 'near                     ', '[nɪə]', '在……附近', 1, 27, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1801, 3, 2, 4, 'front                ', '[frʌnt]', '前面', 1, 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1802, 3, 2, 4, 'in front of                              ', '', '在……的前面', 2, 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1803, 3, 2, 2, 'where                 ', '[weə]', '什么地方', 1, 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1804, 3, 2, 4, 'TV                   ', '[ˌtiːˈviː]', '电视机', 1, 31, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1805, 3, 2, 4, 'English            ', '[ˈɪŋglɪʃ]', '英语;英国的', 1, 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1806, 3, 2, 4, 'schoolbag      ', '[ˈskuːlbæg]', '书包', 1, 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1807, 3, 2, 4, 'beside            ', '[bɪˈsaɪd]', '在……的旁边', 1, 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1808, 3, 2, 4, 'behind            ', '[bɪˈhaɪnd]', '在……的后面', 1, 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1809, 3, 2, 5, 'happy              ', '[ˈhæpɪ]', '快乐的', 1, 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1810, 3, 2, 5, 'birthday          ', '[ˈbɜːθdeɪ]', '生日', 1, 38, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1811, 3, 2, 2, 'where’s =where is ', '', '…….是在什么地方', 2, 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1812, 3, 2, 5, 'How old...?', '', '.....……几岁?', 2, 40, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1813, 3, 2, 5, 'guess              ', '[ges]', '猜', 1, 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1814, 3, 2, 5, 'information    ', '[ɪnfəˈmeɪʃ(ə)n]', '信息', 1, 36, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1815, 3, 2, 5, 'how                  ', '[haʊ]', '怎样；怎么', 1, 39, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1816, 3, 2, 5, 'personal         ', '[ˈpɜːs(ə)n(ə)l]', '个人的', 1, 35, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1817, 3, 2, 5, 'one                 ', '[wʌn]', '一', 1, 42, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1818, 3, 2, 5, 'two                  ', '[tuː]', '二', 1, 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1819, 3, 2, 5, 'five                   ', '[faɪv]', '五', 1, 46, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1820, 3, 2, 5, 'eight                ', '[eɪt]', '八', 1, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1821, 3, 2, 5, 'three               ', '[θriː]', '三', 1, 44, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1822, 3, 2, 5, 'seven               ', '[ˈsev(ə)n]', '七', 1, 48, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1823, 3, 2, 5, 'nine                 ', '[naɪn]', '九', 1, 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1824, 3, 2, 5, 'four                  ', '[fɔː]', '四', 1, 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1825, 3, 2, 5, 'for                    ', '[fɔː]', '为……；给……', 1, 51, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1826, 3, 2, 5, 'six                    ', '[sɪks]', '六', 1, 47, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1827, 3, 2, 5, 'little                 ', '[ˈlɪt(ə)l]', '小的', 1, 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1828, 3, 2, 6, 'telephone        ', '[ˈtelɪfəʊn]', '电话', 1, 54, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1829, 3, 2, 5, 'ten                   ', '[ten]', '十', 1, 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1830, 3, 2, 7, 'some          ', '[sʌm]', '一些', 1, 59, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1831, 3, 2, 7, 'have           ', '[hæv]', '吃', 1, 58, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1832, 3, 2, 7, 'fruit            ', '[fruːt]', '水果', 1, 57, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1833, 3, 2, 7, 'want           ', '[wɒnt]', '想；想要', 1, 61, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1834, 3, 2, 7, 'grape          ', '[greɪp]', '葡萄', 1, 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1835, 3, 2, 7, 'we               ', '[wiː]', '我们', 1, 63, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1836, 3, 2, 7, 'but              ', '[bʌt]', '但是', 1, 64, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1837, 3, 2, 7, 'then            ', '[ðen]', '那么；然后', 1, 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1838, 3, 2, 7, 'apple          ', '[ˈæp(ə)l]', '苹果', 1, 66, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1839, 3, 2, 6, 'zero                  ', '[ˈzɪərəʊ]', '零', 1, 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1840, 3, 2, 7, 'pear            ', '[peə]', '梨', 1, 67, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1841, 3, 2, 6, 'number            ', '[ˈnʌmbə]', '号码，数字', 1, 55, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1842, 3, 2, 8, 'can              ', '[kæn]', '能够', 1, 68, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1843, 3, 2, 8, 'Can I...?', '', '我能够……吗?', 2, 69, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1844, 3, 2, 9, 'relative           ', '[ˈrelətɪv]', '亲属；亲戚', 1, 71, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1845, 3, 2, 8, 'get              ', '[get]', '得到；获得', 1, 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1846, 3, 2, 9, 'there               ', '[ðeə(r)]', '那里；在那里', 1, 73, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1847, 3, 2, 9, 'photo              ', '[ˈfəʊtəʊ]', '照片', 1, 72, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1848, 3, 2, 9, 'there is/are    ', '', '（存在）有', 2, 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1849, 3, 2, 7, 'banana       ', '[bəˈnɑːnə]', '香蕉', 1, 62, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1850, 3, 2, 9, 'grandfather    ', '[ˈgrænfɑ:ðə(r)]', '爷爷；外公', 1, 76, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1851, 3, 2, 9, 'cousin             ', '[ˈkʌzn]', '表兄弟；表姐妹', 1, 75, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1852, 3, 2, 9, 'grandmother  ', '[ˈgrænmʌðə(r)]', '奶奶；外婆', 1, 77, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1853, 3, 2, 9, 'short               ', '[ʃɔ:t]', '矮的；短的', 1, 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1854, 3, 2, 10, 'How many...?', '', '……多少?', 2, 82, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1855, 3, 2, 10, 'many               ', '[ˈmeni]', '很多', 1, 81, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1856, 3, 2, 10, 'people            ', '[ˈpi:pl]', '人（们）', 1, 83, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1857, 3, 2, 9, 'lovely              ', '[ˈlʌvli]', '可爱的', 1, 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1858, 3, 2, 9, 'heavy              ', '[ˈhevi]', '重的', 1, 78, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1859, 3, 2, 10, 'they                ', '[ðeɪ]', '他(她、它)们', 1, 84, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1860, 3, 2, 11, 'pet               ', '[pet]', '宠物', 1, 86, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1861, 3, 2, 11, 'any               ', '[ˈeni]', '任何的；一些', 1, 87, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1862, 3, 2, 11, 'duck            ', '[dʌk]', '鸭子', 1, 90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1863, 3, 2, 11, 'shop            ', '[ʃɒp]', '商店', 1, 88, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1864, 3, 2, 11, 'over            ', '[ˈəʊvə(r)]', '在···的上方', 1, 91, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1865, 3, 2, 11, 'over there  ', '[ˈəuvə ðɛə]', '在那边（离自己有一定距离）', 1, 92, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1866, 3, 2, 11, 'buy              ', '[baɪ]', '买', 1, 95, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1867, 3, 2, 11, 'fish              ', '[fɪʃ]', '鱼', 1, 96, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1868, 3, 2, 10, 'big                  ', '[bɪg]', '大的', 1, 85, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1869, 3, 2, 11, 'monkey       ', '[ˈmʌŋki]', '猴子', 1, 97, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1870, 3, 2, 11, 'those           ', '[ðəʊz]', '那些', 1, 93, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1871, 3, 2, 11, 'bird             ', '[bɜ:d]', '鸟', 1, 98, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1872, 3, 2, 11, 'chicken       ', '[ˈtʃɪkɪn]', '小鸡', 1, 99, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1873, 3, 2, 12, 'whose     ', '[hu:z]', '谁的', 1, 100, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1874, 3, 2, 11, 'has               ', '[həz]', '有', 1, 94, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1875, 3, 2, 12, 'these       ', '[ði:z]', '这些', 1, 101, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1876, 3, 2, 11, 'aren’t=are not             ', '', '不是', 2, 89, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1877, 3, 2, 12, 'long        ', '[lɒŋ]', '长的', 1, 103, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1878, 3, 2, 12, 'tail          ', '[teɪl]', '尾巴', 1, 104, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1879, 3, 2, 12, 'mice       ', '[maɪs]', '老鼠(复数)', 1, 108, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1880, 3, 2, 12, 'really      ', '[ˈri:əli]', '真正地', 1, 106, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1881, 3, 2, 12, 'mouse    ', '[maʊs]', '老鼠', 1, 107, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1882, 3, 2, 12, 'horse      ', '[hɔ:s]', '马', 1, 110, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1883, 3, 2, 12, 'pig          ', '[pɪg]', '猪', 1, 109, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1884, 3, 2, 12, 'small       ', '[smɔ:l]', '小的', 1, 102, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1885, 3, 2, 12, 'very        ', '[ˈveri]', '非常', 1, 105, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1886, 3, 1, 1, 'morning       ', '[ˈmɔːnɪŋ]', '早上', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1887, 3, 1, 1, 'Ms               ', '[mɪz]', '女士', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1888, 3, 1, 1, '☆module     ', '[ˈmɒdjuːl]', '模块', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1889, 3, 1, 1, '☆greeting    ', '[ˈgriːtɪŋ]', '招呼', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1890, 3, 1, 1, 'hi           ', '[haɪ]', '喂；你好', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1891, 3, 1, 1, 'hello         ', '[həˈləʊ]', '喂；你好', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1892, 3, 1, 1, 'bye         ', '[baɪ]', '再见', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1893, 3, 1, 1, 'goodbye      ', '[ˌɡʊdˈbaɪ]', '再见', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1894, 3, 1, 1, 'good            ', '[gʊd]', '好的', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1895, 3, 1, 1, 'afternoon    ', '[ɑːftəˈnuːn]', '下午', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1896, 3, 1, 1, 'Mum            ', '[mʌm]', '妈妈（儿语）', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1897, 3, 1, 1, 'Miss            ', '[mɪs]', '小姐', 1, 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1898, 3, 1, 1, 'evening       ', '[ˈiːv(ə)nɪŋ]', '傍晚', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1899, 3, 1, 2, 'dad        ', '/dæd/', '爸爸', 1, 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1900, 3, 1, 2, 'you         ', '/juː/', '你,你们', 1, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1901, 3, 1, 2, 'How are you?  ', '', '你好吗?', 2, 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1902, 3, 1, 2, 'are         ', '/ɑ:(r)/', '是', 1, 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1903, 3, 1, 2, 'fine          ', '/faɪn/', '好的', 1, 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1904, 3, 1, 1, 'Mr           ', '[ˈmɪstə(r)]', '先生', 1, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1905, 3, 1, 2, 'night       ', '/naɪt/', '晚上', 1, 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1906, 3, 1, 2, 'grandma ', '/\'ɡrænmɑː/', '奶奶', 1, 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1907, 3, 1, 3, 'I                      ', '/aɪ/', '我', 1, 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1908, 3, 1, 3, 'am                  ', '/em/', '是', 1, 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1909, 3, 1, 2, 'grandpa  ', '/ˈgrænpɑ:/', '爷爷', 1, 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1910, 3, 1, 3, 'I’m =I  am        ', '', '我是', 2, 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1911, 3, 1, 3, 'is                    ', '/ɪz/', '是', 1, 27, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1912, 3, 1, 3, 'what               ', '/wɒt/', '什么', 1, 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1913, 3, 1, 3, 'what’s=what  is                 ', '', '是什么', 2, 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1914, 3, 1, 3, 'your                ', '/jɔ:(r)/', '你的', 1, 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1915, 3, 1, 3, 'my                  ', '/maɪ/', '我的', 1, 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1916, 3, 1, 3, 'name              ', '/neɪm/', '姓名', 1, 31, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1917, 3, 1, 3, 'let                   ', '/let/', '让', 1, 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1918, 3, 1, 3, 'let’s= let us     ', '', '让我们；我们......吧', 2, 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1919, 3, 1, 3, 'friend              ', '/frend/', '朋友', 1, 35, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1920, 3, 1, 4, 'teacher      ', '/\'tiːtʃə/', '教师', 1, 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1921, 3, 1, 4, 'this             ', '/ðɪs/', '这', 1, 36, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1922, 3, 1, 4, 'meet          ', '/miːt/', '遇见', 1, 39, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1923, 3, 1, 4, 'new            ', '/njuː/', '新的', 1, 40, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1924, 3, 1, 3, 'be                   ', '/biː/', '是', 1, 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1925, 3, 1, 5, 'body       ', '/\'bɒdɪ/', '身体', 1, 42, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1926, 3, 1, 5, 'wash       ', '/wɒʃ /', '洗', 1, 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1927, 3, 1, 5, 'oh            ', '/əʊ/', '哦', 1, 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1928, 3, 1, 5, 'face         ', '/feɪs/', '脸', 1, 44, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1929, 3, 1, 5, 'touch      ', '/tʌtʃ/', '触摸', 1, 47, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1930, 3, 1, 5, 'don’t = do not              ', '', '不', 2, 46, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1931, 3, 1, 4, 'too             ', '/tuː/', '也', 1, 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1932, 3, 1, 5, 'eye         ', '/aɪ/', '眼睛', 1, 48, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1933, 3, 1, 5, 'hand       ', '/hænd/', '手', 1, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1934, 3, 1, 5, 'and         ', '/ænd/', '和', 1, 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1935, 3, 1, 5, 'hair         ', '/heə/', '头发', 1, 51, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1936, 3, 1, 5, 'nose       ', '/nəʊz/', '鼻子', 1, 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1937, 3, 1, 5, 'ear          ', '/ɪə/', '耳朵', 1, 54, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1938, 3, 1, 5, 'clean      ', '/kliːn/', '弄干净', 1, 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1939, 3, 1, 5, 'foot         ', '/fʊt/', '脚', 1, 55, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1940, 3, 1, 4, 'nice            ', '/naɪs/', '好的', 1, 38, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1941, 3, 1, 6, 'child          ', '/tʃaɪld/', '小孩', 1, 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1942, 3, 1, 6, 'head          ', '/hed/', '头', 1, 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1943, 3, 1, 6, 'mouth        ', '/maʊθ/', '嘴/口', 1, 62, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1944, 3, 1, 6, 'not             ', '/nɒt/', '不', 1, 61, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1945, 3, 1, 6, 'game         ', '/geɪm/', '游戏', 1, 58, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1946, 3, 1, 6, 'leg             ', '/leg/', '腿', 1, 63, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1947, 3, 1, 6, 'OK             ', '/\'əu\' kei/', '好；行', 1, 59, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1948, 3, 1, 6, 'an              ', '/æn/', '一个', 1, 64, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1949, 3, 1, 7, 'family        ', '/ˈfæməlɪ/', '家庭', 1, 67, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1950, 3, 1, 7, 'of              ', '/ɒv/', '......的', 1, 66, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1951, 3, 1, 7, 'that’s = that is                   ', '', '那是', 2, 69, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1952, 3, 1, 7, 'picture      ', '/\'pɪktʃə/', '画;照片', 1, 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1953, 3, 1, 7, 'man           ', '/mæn/', '男人', 1, 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1954, 3, 1, 6, 'play            ', '/pleɪ/', '玩', 1, 57, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1955, 3, 1, 7, 'yes            ', '/jes/', '是的;对的', 1, 72, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1956, 3, 1, 7, 'he              ', '/hiː/', '他', 1, 73, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1957, 3, 1, 7, 'who           ', '/huː/', '谁', 1, 75, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1958, 3, 1, 7, 'he’s=he is                          ', '', '他是', 2, 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1959, 3, 1, 7, 'who’s=who is                    ......', '', '是谁', 2, 76, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1960, 3, 1, 7, 'boy            ', '/bɔɪ/', '男孩', 1, 77, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1961, 3, 1, 7, 'father        ', '/\'fɑːðə/', '爸爸', 1, 71, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1962, 3, 1, 7, 'brother      ', '/\'brʌðə/', '兄弟', 1, 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1963, 3, 1, 7, 'girl             ', '/gɜːl/', '女孩', 1, 81, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1964, 3, 1, 7, 'that            ', '/ðæt/', '那', 1, 68, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1965, 3, 1, 7, 'it’s=it is                              ', '', '它是', 2, 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1966, 3, 1, 7, 'lady            ', '/\'leɪdɪ/', '女士', 1, 83, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1967, 3, 1, 7, 'mother       ', '/\'mʌðə/', '妈妈', 1, 84, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1968, 3, 1, 7, 'it                ', '/ɪt/', '它', 1, 78, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1969, 3, 1, 8, 'she\'s = she is                      ', '', '她是', 2, 87, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1970, 3, 1, 8, 'no               ', '/nəʊ/', '不;不对', 1, 88, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1971, 3, 1, 8, 'isn\'t = is not                        ', '', '不是', 2, 89, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1972, 3, 1, 8, 'so               ', '/səʊ/', '如此;那么', 1, 90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1973, 3, 1, 8, 'she             ', '/ʃiː/', '她', 1, 86, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1974, 3, 1, 7, 'woman       ', '/\'wʊmən/', '妇女', 1, 85, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1975, 3, 1, 7, 'sister          ', '/\'sɪstə/', '姐妹', 1, 82, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1976, 3, 1, 8, 'young         ', '/jʌŋ/', '年轻的', 1, 91, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1977, 3, 1, 8, 'thank           ', '/θæŋk/', '谢谢', 1, 92, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1978, 3, 1, 8, 'old              ', '/əʊld/', '老的;旧的', 1, 94, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1979, 3, 1, 8, 'cute            ', '/kjuːt/', '可爱的', 1, 96, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1980, 3, 1, 8, 'strong         ', '/strɒŋ/', '强壮的', 1, 97, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1981, 3, 1, 8, 'thin             ', '/θɪn/', '瘦的', 1, 99, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1982, 3, 1, 8, 'tall               ', '/tɔːl/', '高的', 1, 93, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1983, 3, 1, 8, 'uncle           ', '/\'ʌŋk(ə)l/', '叔叔;舅舅', 1, 98, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1984, 3, 1, 8, 'pretty          ', '/\'prɪtɪ/', '漂亮的', 1, 101, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1985, 3, 1, 9, 'toy            ', '/tɒɪ/', '玩具', 1, 102, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1986, 3, 1, 8, 'aunt            ', '/ɑːnt/', '阿姨；姑姑', 1, 100, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1987, 3, 1, 9, 'cat            ', '/kæt/', '猫', 1, 103, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1988, 3, 1, 9, 'dog           ', '/dɒg/', '狗', 1, 105, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1989, 3, 1, 9, 'bear          ', '/beə/', '熊', 1, 106, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1990, 3, 1, 9, 'ball           ', '/bɔːl/', '球', 1, 107, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1991, 3, 1, 9, 'kite           ', '/kaɪt/', '风筝', 1, 108, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1992, 3, 1, 9, 'rabbit       ', '/\'ræbɪt/', '兔子', 1, 104, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1993, 3, 1, 8, 'baby           ', '/\'beɪbɪ/', '婴儿', 1, 95, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1994, 3, 1, 10, 'please      ', '/pliːz/', '请', 1, 110, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1995, 3, 1, 10, 'show        ', '/ʃəʊ/', '出示；给.....看', 1, 109, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1996, 3, 1, 10, 'car            ', '/kɑː/', '小汽车', 1, 114, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1997, 3, 1, 10, 'have         ', '/hæv/', '有', 1, 111, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1998, 3, 1, 10, 'ship          ', '/ʃɪp/', '轮船', 1, 112, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (1999, 3, 1, 10, 'plane        ', '/pleɪn/', '飞机', 1, 113, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2000, 3, 1, 10, 'bike          ', '/baɪk/', '自行车', 1, 116, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2001, 3, 1, 11, 'thing             ', '/θɪŋ/', '东西', 1, 119, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2002, 3, 1, 11, 'school           ', '/skuːl/', '学校', 1, 118, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2003, 3, 1, 11, 'may               ', '/meɪ/', '可以', 1, 122, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2004, 3, 1, 10, 'bus           ', '/bʌs/', '公共汽车', 1, 115, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2005, 3, 1, 11, 'here              ', '/hɪə/', '在这儿、这儿', 1, 124, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2006, 3, 1, 11, 'ruler              ', '/\'ruːlə/', '尺子', 1, 121, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2007, 3, 1, 10, 'boat         ', '/bəʊt/', '小船', 1, 117, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2008, 3, 1, 11, 'do', '/duː/', '（助动词、没有具体意义）', 1, 120, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2009, 3, 1, 11, 'pencil            ', '/\'pens(ə)l/', '铅笔', 1, 126, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2010, 3, 1, 11, 'Here you  are. ', '', '给你', 2, 125, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2011, 3, 1, 11, 'sorry              ', '/\'sɒrɪ/', '对不起的', 1, 127, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2012, 3, 1, 11, 'bag                ', '/bæg/', '袋子；书包', 1, 128, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2013, 3, 1, 11, 'pen                ', '/pen/', '钢笔', 1, 129, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2014, 3, 1, 11, 'book              ', '/bʊk/', '书', 1, 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2015, 3, 1, 11, 'PRC                 ', '', '中国', 2, 132, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2016, 3, 1, 11, 'eraser            ', '/ɪ\'reɪzə/', '橡皮', 1, 131, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2017, 3, 1, 11, 'UK                   ', '', '英国', 2, 133, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2018, 3, 1, 11, 'USA                 ', '', '美国', 2, 134, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2019, 3, 1, 12, 'put          ', '/pʊt/', '放', 1, 135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2020, 3, 1, 12, 'on           ', '/ɒn/', '在......上面', 1, 136, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2021, 3, 1, 11, 'use                ', '/juːz/', '使用', 1, 123, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2022, 3, 1, 12, 'desk       ', '/desk/', '书桌', 1, 137, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2023, 3, 1, 12, 'box        ', '/bɒks/', '盒子；箱子', 1, 140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2024, 3, 1, 12, 'the         ', '/ðə/', '这、这些、那、那些', 1, 139, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2025, 3, 1, 12, 'in           ', '/ɪn/', '在......里面', 1, 138, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2026, 3, 1, 12, 'room      ', '/ruːm/', '房间', 1, 143, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2027, 3, 1, 12, 'under     ', '/\'ʌndə/', '在......下面', 1, 141, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2028, 3, 1, 12, 'tidy        ', '/\'taɪdɪ/', '整齐的', 1, 144, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2029, 3, 1, 12, 'bed        ', '/bed/', '床', 1, 142, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2030, 3, 1, 12, 'table      ', '/\'teɪbl/', '桌子', 1, 145, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_lesson` VALUES (2031, 3, 1, 12, 'chair      ', '/tʃeə/', '椅子', 1, 146, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for app_english_pronounce
-- ----------------------------
DROP TABLE IF EXISTS `app_english_pronounce`;
CREATE TABLE `app_english_pronounce`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单词',
  `pronounce` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发音',
  `chinese` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '中文',
  `word_type` tinyint(4) NULL DEFAULT NULL COMMENT '单词分类',
  `sort_no` int(11) NULL DEFAULT NULL COMMENT '序号',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 497 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '单词发音对照表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of app_english_pronounce
-- ----------------------------
INSERT INTO `app_english_pronounce` VALUES (1, 'pen ', '/pen/', '钢笔', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (2, 'book ', '/buk/', '书', 1, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (3, 'pencil-case ', '/\'penslkeis /', '铅笔盒', 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (4, 'pencil ', '/\'pensl/', '铅笔', 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (5, 'ruler ', '/\'ru:lə/', '尺子', 1, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (6, 'bag ', '/bæg/', '包', 1, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (7, 'post card ', '/pəust kɑ:d/', '明信片', 1, 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (8, 'sharpener ', '/ \'ʃɑ:pənə /', '卷笔刀', 1, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (9, 'schoolbag ', '/sku:lbæg/', '书包', 1, 9, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (10, 'newspaper ', '/\'nju:z,peipə/', '报纸', 1, 8, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (11, 'eraser ', '/ i\'reisə /', '橡皮', 1, 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (12, 'crayon ', '/ \'kreiən /', '蜡笔', 1, 11, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (13, 'story-book ', '/ \'stɔ:ri] buk /', '故事书', 1, 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (14, 'notebook ', '/ \'nəutbuk /', '笔记本', 1, 14, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (15, 'maths book ', '/ mæθs /', '数学书', 1, 17, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (16, 'Chinese book ', '/ \'tʃai\'ni:z /', '语文书', 1, 15, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (17, 'English book ', '/ \'iŋgliʃ /', '英语书', 1, 16, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (18, 'magazine ', '/ ,mægə\'zi:n /', '杂志', 1, 18, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (19, 'foot ', '/ fut /', '脚', 2, 19, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (20, 'head ', '/ hed /', '头', 2, 20, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (21, 'nose ', '/ nəuz /', '鼻子', 2, 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (22, 'face ', '/ feis /', '脸', 2, 21, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (23, 'hair ', '/ hɛə /', '头发', 2, 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (24, 'mouth ', '/ mauθ /', '嘴', 2, 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (25, 'eye ', '/ ai /', '眼睛', 2, 25, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (26, 'ear ', '/ iə /', '耳朵', 2, 26, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (27, 'hand ', '/ hænd /', '手', 2, 28, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (28, 'finger ', '/ \'fiŋgə /', '手指', 2, 29, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (29, 'arm ', '/ ɑ:m /', '手臂', 2, 27, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (30, 'leg ', '/ leg /', '腿', 2, 30, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (31, 'tail ', '/ teil /', '尾巴', 2, 31, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (32, 'red ', '/red/', '红', 3, 32, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (33, 'yellow ', '/\'jeləu/', '黄', 3, 34, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (34, 'blue ', '/blu:/', '蓝', 3, 33, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (35, 'white ', '/wait/', '白', 3, 36, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (36, 'green ', '/gri:n/', '绿', 3, 35, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (37, 'black ', '/blæk/', '黑', 3, 37, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (38, 'pink ', '/piŋk/', '粉红', 3, 38, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (39, 'brown ', '/braun/', '棕', 3, 41, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (40, 'boy ', '/ bɔi /', '男孩', 4, 43, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (41, 'orange ', '/\'ɔ:rindʒ /', '橙', 5, 123, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (42, 'purple ', '/\'pə:pl/', '紫', 3, 39, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (43, 'friend ', '/frend/', '朋友', 4, 42, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (44, 'girl ', '/gə:l/', '女孩', 4, 44, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (45, 'mother ', '/\'mʌðə/', '母亲', 4, 45, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (46, 'sister ', '/\'sistə/', '姐妹', 4, 47, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (47, 'brother ', '/\'brʌðə/', '兄弟', 4, 48, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (48, 'uncle ', '/\'ʌŋkl/', '叔叔', 4, 49, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (49, 'father ', '/\'fɑ:ðə/', '父亲', 4, 46, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (50, 'man ', '/mæn/', '男人', 4, 50, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (51, 'woman', '/ \'wumən/', '女人', 4, 51, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (52, 'lady ', '/\'leidi/', '女士', 4, 52, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (53, 'dad ', '/dæd/', '爸爸', 4, 54, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (54, 'mom ', '/mɔm/', '妈妈', 4, 53, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (55, 'aunt ', '/ɑ:nt/', '阿姨', 4, 56, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (56, 'parents ', '/\'pɛərənts/', '父母', 4, 55, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (57, 'cousin ', '/\'kʌzn/', '堂兄妹', 4, 57, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (58, 'son ', '/sʌn/', '儿子', 4, 58, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (59, 'baby ', '/\'beibi/', '婴儿', 4, 59, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (60, 'kid ', '/kid/', '小孩', 4, 60, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (61, 'classmate', '/\'klɑ:smeit /', '同学', 4, 61, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (62, 'queen ', '/\'kwi:n/', '女', 4, 62, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (63, 'visitor ', '/\'vizitə/', '参观者', 4, 63, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (64, 'principal ', '/\'prinsəpəl /', '校长', 4, 65, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (65, 'neighbour ', '/\'neibə /', '邻居', 4, 64, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (66, 'pen pal ', '/ pen pæl /', '笔友', 4, 66, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (67, 'tourist ', '/\'tu:rist /', '旅行者', 4, 67, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (68, 'people ', '/\'pi:pl /', '人物', 4, 68, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (69, 'teacher ', '/\'ti:tʃə/', '教师', 4, 70, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (70, 'robot ', '/\'rəubɔt /', '机器人六、职业（job）', 4, 69, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (71, 'doctor ', '/\'dɔktə/', '医生', 4, 72, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (72, 'driver ', '/\'draivə /', '司机', 4, 74, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (73, 'student ', '/\'stju:dənt/', '学生', 4, 71, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (74, 'nurse ', '/nə:s/', '护士', 4, 73, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (75, 'singer ', '/\'siŋə/', '歌唱家', 4, 76, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (76, 'farmer ', '/\'fɑ:mə/', '农民', 4, 75, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (77, 'artist ', '/\'ɑ:tist /', '画家', 4, 78, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (78, 'writer ', '/\'raitə/', '作家', 4, 77, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (79, 'actor ', '/\'æktə/', '男演员', 4, 79, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (80, 'actress', '/\'æktris/', '女演员TV', 4, 80, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (81, 'reporter ', '/ri\'pɔ:tə/', '电视台记者', 4, 81, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (82, 'engineer ', '/,endʒi\'niə /', '工程师', 4, 82, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (83, 'salesperson ', '/\'seilz,pə:sn /', '销售员', 4, 84, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (84, 'policeman ', '/ pə\'li:smən /', '（男）警察', 4, 83, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (85, 'baseball player', '/\'beis,bɔ:l \'pleiə/', '棒球运动员', 4, 86, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (86, 'cleaner ', '/\'kli:nə /', '清洁工', 4, 85, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (87, 'assistant ', '/ ə\'sistənt /', '售货员', 4, 87, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (88, 'breakfast ', '/\'brekfast/', '早餐', 5, 88, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (89, 'lunch ', '/lʌntʃ/', '中餐', 5, 89, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (90, 'dinner ', '/\'dinə/', '晚餐', 5, 90, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (91, 'egg ', '/eg/', '鸡蛋', 5, 91, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (92, 'rice ', '/rais/', '米饭', 5, 92, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (93, 'cake ', '/keik/', '蛋糕', 5, 93, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (94, 'bread ', '/bred/', '面包', 5, 94, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (95, 'jam ', '/dʒæm/', '果酱', 5, 95, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (96, 'sausage ', '/\'sɔ:sidʒ/', '香肠', 5, 97, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (97, 'biscuit ', '/\'biskit/', '饼干', 5, 96, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (98, 'sandwich ', '/\'sændwitʃ/', '三明治', 5, 98, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (99, 'dumplings ', '/\'dʌmpliŋ/', '饺子', 5, 99, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (100, 'French fries ', '/frentʃ fraiz/', '薯条', 5, 100, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (101, 'meat ', '/mi:t/', '肉', 5, 101, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (102, 'beef ', '/bi:f/', '牛肉', 5, 104, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (103, 'mutton ', '/\'mʌtn/', '羊肉', 5, 103, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (104, 'chicken ', '/\'tʃikin/', '鸡肉', 5, 102, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (105, 'pork ', '/pɔ:k/', '猪肉', 5, 105, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (106, 'fish ', '/fiʃ/', '鱼', 5, 106, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (107, 'hamburger ', '/\'hæmbə:gə/', '汉堡', 5, 107, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (108, 'hot dog ', '/hɔt dɔg/', '热狗', 5, 108, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (109, 'noodles ', '/\'nu:dl/', '面条', 5, 109, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (110, 'soup ', '/su:p/', '汤', 5, 110, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (111, 'salad ', '/\'sæləd/', '沙拉', 5, 111, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (112, 'milk ', '/milk/', '挤牛奶', 19, 447, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (113, 'water ', '/\'wɔ:tə/', '水', 5, 113, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (114, 'ice-cream ', '/ais kri:m/', '冰淇淋', 5, 114, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (115, 'tea ', '/ti:/', '茶', 5, 117, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (116, 'cola ', '/\'kəulə/', '可乐', 5, 115, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (117, 'juice ', '/dʒu:s/', '果汁', 5, 116, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (118, 'coffee ', '/\'kɔfi/', '咖啡', 5, 118, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (119, 'fruit', '/fru:t/', '水果', 5, 119, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (120, 'apple ', '/\'æpl /', '苹果', 5, 120, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (121, 'banana ', '/ bə\'nɑ:nə /', '香蕉', 5, 121, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (122, 'pear ', '/pɛə /', '梨', 5, 122, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (123, 'watermelon ', '/\'wɔ:tə,melən /', '西瓜', 5, 124, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (124, 'cherry', '/\'tʃeri /', '樱桃', 5, 126, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (125, 'grape ', '/ greip /', '葡萄', 5, 125, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (126, 'lemon', '/ \'lemən /', '柠檬', 5, 127, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (127, 'mango', '/ \'mæŋgəu /', '芒果', 5, 128, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (128, 'coconut', '/\'kəukənʌt /', '椰子', 5, 129, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (129, 'peach ', '/pi:tʃ/', '桃', 5, 130, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (130, 'strawberry ', '/ \'strɔ:bəri /', '草莓', 5, 131, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (131, 'vegetable ', '/ \'vedʒitəbl /', '蔬菜', 5, 132, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (132, 'eggplant ', '/ \'egplɑ:nt /', '茄子', 5, 133, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (133, 'green beans ', '/ gri:n bi:ns /', '青豆', 5, 134, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (134, 'tomato ', '/ tə\'meitəu /', '西红柿', 5, 135, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (135, 'cucumber ', '/ \'kju:kəmbə /', '黄瓜', 5, 137, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (136, 'potato ', '/ pə\'teitəu /', '土豆', 5, 136, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (137, 'onion ', '/ \'ʌnjən /', '洋葱', 5, 138, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (138, 'pea ', '/ pi:/', '豌豆', 5, 139, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (139, 'carrot ', '/ \'kærət /', '胡萝卜', 5, 140, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (140, 'jacket ', '/\'dʒækit/', '夹克衫', 6, 144, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (141, 'sweet potato ', '/ swi:t pə\'teitəu /', '红薯', 5, 143, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (142, 'pumpkin ', '/ \'pʌmpkin /', '南瓜', 5, 142, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (143, 'cabbage ', '/\'kæbidʒ /', '卷心菜', 5, 141, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (144, 'shirt ', '/ʃə:t/', '衬衫', 6, 145, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (145, 'skirt ', '/skə:t/', '短裙子', 6, 146, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (146, 'dress ', '/dres/', '连衣裙', 6, 147, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (147, 'jeans ', '/dʒi:nz/', '牛仔裤', 6, 148, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (148, 'shoes ', '/ʃu:z/', '鞋子', 6, 150, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (149, 'sweater ', '/\'swetə/', '毛衣', 6, 151, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (150, 'socks ', '/sɔks/', '袜子', 6, 149, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (151, 'coat ', '/kəut/', '外套', 6, 152, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (152, 'raincoat ', '/\'reinkəut/', '雨衣', 6, 153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (153, 'shorts ', '/ʃɔ:ts/', '短裤', 6, 154, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (154, 'sandals ', '/\'sændl/', '凉鞋', 6, 155, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (155, 'boots ', '/bu:ts/', '靴子', 6, 156, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (156, 'hat ', '/hæt/', '有边帽', 6, 157, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (157, 'cap ', '/kæp/', '无边帽', 6, 158, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (158, 'tie ', '/tai/', '领带', 6, 159, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (159, 'sunglasses ', '/\'sʌnglɑ:siz/', '太阳镜', 6, 160, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (160, 'scarf ', '/skɑ:f/', '围巾', 6, 161, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (161, 'gloves ', '/glʌvz/', '手套', 6, 162, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (162, 'bike ', '/baik/', '自行车', 7, 163, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (163, 'bus ', '/bʌs/', '公共汽车', 7, 164, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (164, 'train ', '/trein/', '火车', 7, 165, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (165, 'boat ', '/bəut/', '小船', 7, 166, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (166, 'ship ', '/ʃip/', '轮船', 7, 167, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (167, 'car ', '/kɑ:/', '小汽车', 7, 169, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (168, 'taxi ', '/\'tæksi/', '出租车', 7, 170, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (169, 'yacht ', '/jɔt/', '快艇', 7, 168, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (170, 'jeep ', '/dʒi:p/', '吉普车', 7, 171, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (171, 'van ', '/væn/', '小货车', 7, 172, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (172, 'motor cycle ', '/\'məutə \'saikl /', '摩托', 7, 175, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (173, 'plane ', '/plein/', '飞机', 7, 173, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (174, 'subway ', '/\'sʌbwei/', '地铁', 7, 174, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (175, 'window ', '/\'windəu/', '窗户', 8, 176, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (176, 'door ', '/dɔ:/', '门', 8, 177, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (177, 'desk ', '/desk/', '课桌', 8, 178, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (178, 'chair ', '/tʃɛə/', '椅子', 8, 179, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (179, 'computer', '/kəm\'pju:tə/', '计算机', 8, 181, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (180, 'board ', '/bɔ:d/', '写字板', 8, 182, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (181, 'bed ', '/bed/', '床', 8, 180, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (182, 'fan ', '/fæn/', '风扇', 8, 183, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (183, 'light ', '/lait/', '灯', 8, 184, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (184, 'picture ', '/\'piktʃə/', '图画', 8, 187, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (185, 'teacher’s desk ', '/ \'ti:tʃə desk/', '讲台', 8, 186, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (186, 'mirror ', '/\'mirə/', '镜子', 8, 185, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (187, 'wall ', '/wɔ:l/', '墙壁', 8, 189, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (188, 'photo ', '/\'fəutəu/', '照片', 8, 188, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (189, 'floor ', '/flɔ:/', '地板', 8, 190, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (190, 'football ', '/\'futbɔ:l/', '足球', 8, 191, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (191, 'walkman ', '/ \'wɔ:kmən /', '随身听', 8, 192, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (192, 'lamp ', '/læmp/', '台灯', 8, 193, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (193, 'phone ', '/fəun/', '电话', 8, 194, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (194, 'sofa ', '/\'səufə/', '沙发', 8, 195, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (195, 'shelf ', '/ʃelf/', '书架', 8, 196, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (196, 'fridge ', '/fridʒ/', '冰箱', 8, 197, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (197, 'table ', '/\'teibl/', '桌子', 8, 198, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (198, 'lock ', '/lɔk/', '锁', 8, 201, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (199, 'key ', '/ki:/', '钥匙', 8, 200, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (200, 'air-conditioner ', '/ɛə kən\'diʃənə/', '空调', 8, 199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (201, 'plate ', '/pleit/', '盘子', 8, 202, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (202, 'knife ', '/naif/', '刀', 8, 203, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (203, 'fork ', '/fɔ:k/', '叉', 8, 204, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (204, 'spoon ', '/spu:n/', '勺子', 8, 205, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (205, 'chopsticks ', '/\'tʃɔpstiks/', '筷子', 8, 206, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (206, 'toy ', '/tɔi/', '玩具', 8, 208, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (207, 'pot ', '/pɔt/', '锅', 8, 207, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (208, 'doll ', '/dɔl/', '洋娃娃', 8, 209, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (209, 'ball ', '/bɔ:l/', '球', 8, 210, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (210, 'balloon ', '/bə\'lu:n/', '气球', 8, 211, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (211, 'box ', '/bɔks/', '盒子', 8, 214, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (212, 'jigsaw puzzle ', '/\'dʒigsɔ: \'pʌzl/', '拼图游戏', 8, 213, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (213, 'kite ', '/kait/', '风筝', 8, 212, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (214, 'umbrella ', '/ʌm\'brelə/', '伞', 8, 215, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (215, 'zipper ', '/\'zipə/', '拉链', 8, 216, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (216, 'violin ', '/,vaiə\'lin/', '小提琴', 8, 217, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (217, 'nest ', '/nest/', '鸟窝', 8, 218, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (218, 'toothbrush ', '/\'tu:θbrʌʃ/', '牙刷', 8, 220, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (219, 'hole ', '/həul/', '洞', 8, 219, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (220, 'menu ', '/\'menju:/', '菜单', 8, 221, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (221, 'e-card ', '/kɑ:d/', '电子卡片', 8, 222, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (222, 'e-mail ', '/meil/', '电子邮件', 8, 223, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (223, 'money ', '/\'mʌni/', '钱', 8, 224, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (224, 'traffic light ', '/\'træfik lait/', '交通灯', 8, 225, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (225, 'medicine ', '/\'medisin/', '药', 8, 226, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (226, 'home ', '/həum/', '家', 9, 227, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (227, 'room ', '/ru:m/', '房间', 9, 228, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (228, 'bedroom ', '/\'bedrum/', '卧室', 9, 229, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (229, 'bathroom ', '/\'bæθrum/', '卫生间', 9, 230, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (230, 'classroom ', '/\'klɑ:srum/', '教室', 9, 232, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (231, 'kitchen ', '/\'kitʃin/', '厨房', 9, 231, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (232, 'school ', '/sku:l/', '学校', 9, 233, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (233, 'library ', '/\'laibrəri/', '图书馆', 9, 235, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (234, 'park ', '/pɑ:k/', '公园', 9, 234, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (235, 'post office ', '/pəust \'ɔ:fis/', '邮政局', 9, 236, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (236, 'cinema ', '/\'sinimə/', '电影院', 9, 238, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (237, 'hospital ', '/\'hɔspitl/', '医院', 9, 237, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (238, 'bookstore ', '/\'bukstɔ:/', '书店', 9, 239, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (239, 'farm ', '/fɑ:m/', '农场', 9, 240, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (240, 'zoo ', '/zu:/', '动物园', 9, 241, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (241, 'garden ', '/\'gɑ:dn/', '花园', 9, 242, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (242, 'playground ', '/\'pleigraund/', '操场', 9, 243, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (243, 'canteen ', '/kæn\'ti:n/', '餐厅', 9, 244, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (244, 'teacher’s office ', '/\'ɔ:fis/', '教师办公室', 9, 245, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (245, 'gym ', '/dʒim/', '体育馆', 9, 246, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (246, 'washroom ', '/\'wɔʃrum/', '盥洗室', 9, 247, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (247, 'art room ', '/ɑ:t ru:m/', '美术室', 9, 248, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (248, 'computer room ', '/kəm\'pju:tə/', '电脑房', 9, 249, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (249, 'music room ', '/\'mju:zik/', '音乐教室', 9, 250, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (250, 'flat ', '/flæt/', '公寓', 9, 251, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (251, 'company ', '/\'kʌmpəni/', '公司', 9, 252, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (252, 'factory ', '/\'fæktəri/', '工厂', 9, 253, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (253, 'the Great Wall ', '/greit wɔ:l/', '长城', 9, 256, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (254, 'pet shop ', '/pet ʃɔp/', '宠物店', 9, 254, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (255, 'science museum', '/\'saiəns mju:\'ziəm/', '科学博物馆', 9, 255, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (256, 'supermarket ', '/\'sju:pə,mɑ:kit/', '超市', 9, 257, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (257, 'bank ', '/bæŋk/', '银行', 9, 258, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (258, 'village ', '/\'vilidʒ/', '村庄', 9, 260, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (259, 'country ', '/\'kʌntri/', '乡村', 9, 259, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (260, 'city ', '/\'siti/', '城市', 9, 261, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (261, 'cold ', '/kəuld/', '冷的', 10, 262, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (262, 'hot ', '/hɔt/', '热的', 10, 263, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (263, 'warm ', '/wɔ:m/', '温暖的', 10, 264, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (264, 'cool ', '/ku:l/', '凉爽的', 10, 265, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (265, 'snowy ', '/snəui/', '下雪的', 10, 266, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (266, 'sunny ', '/\'sʌni/', '晴朗的', 10, 267, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (267, 'rainy ', '/\'reini/', '下雨', 10, 268, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (268, 'windy ', '/\'windi/', '刮风的', 10, 269, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (269, 'cloudy ', '/\'klaudi/', '多云的', 10, 270, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (270, 'weather report ', '/\'weðə ri\'pɔ:t/', '天气预报', 10, 271, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (271, 'river ', '/\'rivə/', '河流', 11, 272, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (272, 'lake ', '/leik/', '湖泊', 11, 273, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (273, 'stream ', '/stri:m/', '小溪', 11, 274, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (274, 'forest ', '/\'fɔrist/', '森林', 11, 275, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (275, 'path ', '/pɑ:θ/', '小路', 11, 276, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (276, 'road ', '/rəud/', '马路', 11, 277, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (277, 'house ', '/rəud/', '房子', 11, 278, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (278, 'rain ', '/rein/', '雨', 11, 281, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (279, 'bridge ', '/ bridʒ /', '桥', 11, 279, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (280, 'building ', '/\'bildiŋ/', '建筑物', 11, 280, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (281, 'sun ', '/sʌn/', '太阳', 11, 283, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (282, 'cloud ', '/klaud/', '云', 11, 282, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (283, 'mountain ', '/\'mauntin /', '大山', 11, 284, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (284, 'sky ', '/skai/', '天空', 11, 285, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (285, 'wind ', '/waind/', '风', 11, 287, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (286, 'rainbow ', '/\'reinbəu/', '彩虹', 11, 286, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (287, 'air ', '/ɛə/', '空气', 11, 288, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (288, 'flower ', '/\'flauə/', '花', 12, 289, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (289, 'grass ', '/grɑ:s/', '草', 12, 290, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (290, 'tree ', '/tri:/', '树', 12, 291, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (291, 'seed ', '/si:d/', '种子', 12, 292, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (292, 'leaf ', '/li:f/', '树叶', 12, 293, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (293, 'plant ', '/plɑ:nt/', '植物', 12, 294, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (294, 'rose ', '/rəuz/', '玫瑰', 12, 295, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (295, 'Monday', '/\'mʌndei/', '星期一', 13, 296, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (296, 'Tuesday', '/\'tju:zdi/', '星期二', 13, 297, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (297, 'Wednesday', '/wenzdi/', '星期三', 13, 298, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (298, 'Thursday', '/\'θə:zdi/', '星期四', 13, 299, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (299, 'Friday ', '/\'fraidi/', '星期五', 13, 300, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (300, 'Saturday', '/\'sætədi/', '星期六', 13, 301, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (301, 'Sunday ', '/\'sʌndi/', '星期天', 13, 302, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (302, 'weekend', '/\'wi:k\'end/', '周末', 13, 303, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (303, 'January', '/\'dʒænjueri/', '一月', 14, 304, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (304, 'February', '/\'februəri/', '二月', 14, 305, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (305, 'March ', '/mɑ:tʃ/', '三月', 14, 306, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (306, 'April ', '/\'eiprəl/', '四月', 14, 307, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (307, 'May ', '/mei/', '五月', 14, 308, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (308, 'June ', '/dʒu:n/', '六月', 14, 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (309, 'July ', '/dʒu:\'lai/', '七月', 14, 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (310, 'October ', '/ɔk\'təubə/', '十月', 14, 313, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (311, 'August ', '/ɔ:\'gʌst/', '八月', 14, 311, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (312, 'September ', '/sep\'tembə/', '九月', 14, 312, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (313, 'November ', '/nəu\'vembə/', '十一月', 14, 314, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (314, 'December ', '/di\'sembə/', '十二月', 14, 315, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (315, 'spring ', '/spriŋ/', '春', 15, 316, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (316, 'summer ', '/\'sʌmə/', '夏', 15, 317, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (317, 'winter', '/\'wintə/', '冬', 15, 318, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (318, 'south', '/sauθ/', '南', 16, 319, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (319, 'north', '/nɔ:θ/', '北', 16, 320, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (320, 'east', '/i:st/', '东', 16, 321, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (321, 'left', '/left/', '左', 16, 323, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (322, 'west', '/west/', '西', 16, 322, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (323, 'right', '/rait/', '右', 16, 324, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (324, 'hurt ', '/hə:t/', '疼痛', 17, 326, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (325, 'have a fever ', '/\'fi:və/', '发高烧', 17, 325, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (326, 'have a cold ', '/kəuld/', '伤风', 17, 327, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (327, 'have a toothache ', '/\'tu:θei/', '牙疼', 17, 328, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (328, 'have a headache ', '/\'hedeik/', '头疼', 17, 329, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (329, 'have a sore throat ', '/sɔ: θrəut/', '喉咙疼', 17, 330, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (330, 'have a stomachache', '/\'stʌməkeik/', '胃痛', 17, 331, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (331, 'big ', '/big/', '大的', 18, 332, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (332, 'small', '/smɔ:/', '小的', 18, 333, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (333, 'long', '/ lɔŋ/', '长的', 18, 334, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (334, 'tall', '/tɔ:l/', '高的', 18, 335, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (335, 'young', '/jʌŋ/', '年轻的', 18, 337, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (336, 'short', '/ʃɔ:t/', '短的', 18, 336, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (337, 'old', '/əuld/', '老的', 18, 338, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (338, 'strong', '/strɔŋ/', '强壮的', 18, 339, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (339, 'active', '/\'æktiv/', '积极的', 18, 341, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (340, 'thin', '/θin/', '瘦的', 18, 340, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (341, 'quiet', '/\'kwaiət/', '安静的', 18, 342, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (342, 'nice', '/nais /', '好的', 18, 343, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (343, 'kind', '/kaind/', '善良的', 18, 344, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (344, 'strict', '/strikt/', '严格的', 18, 345, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (345, 'smart', '/smɑ:t/', '聪明的', 18, 346, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (346, 'funny', '/\'fʌni/', '滑稽的', 18, 347, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (347, 'sweet', '/swi:t/', '甜的', 18, 348, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (348, 'salty', '/\'sɔ:lti /', '咸的', 18, 349, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (349, 'sour', '/\'sauə/', '酸的', 18, 350, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (350, 'fresh', '/freʃ/', '新鲜', 18, 351, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (351, 'favourite', '/\'feivəri t/', '最喜欢的', 18, 352, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (352, 'clean', '/kli:n/', '干净的', 18, 353, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (353, 'excited', '/ik\'saitid/', '兴奋的', 18, 355, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (354, 'tired', '/\'taiəd/', '累的', 18, 354, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (355, 'angry', '/\'æŋgri/', '生气的', 18, 356, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (356, 'happy', '/\'hæpi/', '高兴的', 18, 357, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (357, 'sad', '/sæd/', '难过的', 18, 359, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (358, 'bored', '/bɔ:d/', '无聊的', 18, 358, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (359, 'great', '/greit/', '棒的', 18, 361, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (360, 'fine', '/fain/', '好的', 18, 360, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (361, 'heavy', '/\'hevi/', '重的', 18, 362, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (362, 'new', '/nju:/', '新的', 18, 363, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (363, 'fat', '/fæt/', '胖的', 18, 364, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (364, 'right ', '/rait/', '对的', 18, 365, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (365, 'hungry', '/\'hʌŋgri/', '饿的', 18, 366, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (366, 'little', '/\'litl/', '小的', 18, 368, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (367, 'cute', '/kju:t/', '可爱的', 18, 367, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (368, 'beautiful', '/\'bju:təfəl/', '漂亮的', 18, 370, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (369, 'lovely', '/\'lʌvli/', '可爱的', 18, 369, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (370, 'colourful', '/\'kʌləful/', '五颜六色的', 18, 371, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (371, 'pretty', '/\'priti/', '漂亮的', 18, 372, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (372, 'cheap', '/tʃi:p/', '便宜的', 18, 373, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (373, 'expensive', '/iks\'pensiv/', '贵的', 18, 374, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (374, 'juicy', '/\'dʒu:si/', '有汁的', 18, 375, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (375, 'healthy', '/\'helθi/', '健康的', 18, 376, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (376, 'helpful', '/\'helpfəl /', '有帮助的', 18, 377, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (377, 'high', '/hai/', '高的', 18, 378, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (378, 'proud', '/praud/', '骄傲的', 18, 380, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (379, 'easy', '/\'i:zi/', '简单的', 18, 379, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (380, 'swim', '/swm/', '游泳', 19, 382, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (381, 'play', '/plei/', '玩', 19, 381, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (382, 'skate', '/skeit/', '溜冰', 19, 383, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (383, 'fly', '/flai/', '飞', 19, 384, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (384, 'jump', '/dʒʌmp/', '跳', 19, 385, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (385, 'walk', '/wɔ:k/', '走', 19, 386, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (386, 'run', '/ran/', '跑步', 19, 387, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (387, 'climb', '/klaim/', '爬', 19, 388, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (388, 'fight', '/fait/', '打架', 19, 389, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (389, 'swing', '/swiŋ/', '荡秋千', 19, 390, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (390, 'eat', '/i:t/', '吃', 19, 391, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (391, 'sleep', '/sli:p/', '睡觉', 19, 392, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (392, 'like', '/laik/', '喜欢', 19, 393, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (393, 'have', '/hæv/', '有', 19, 394, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (394, 'buy', '/bai/', '买', 19, 395, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (395, 'take', '/teik /', '拍（照），带', 19, 396, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (396, 'live', '/liv/', '居住', 19, 397, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (397, 'teach', '/ti:tʃ/', '教', 19, 398, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (398, 'go', '/gəu/', '去', 19, 399, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (399, 'study', '/\'stʌdi/', '学习', 19, 400, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (400, 'learn', '/lə:n/', '学习', 19, 401, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (401, 'sing', '/siŋ/', '唱歌', 19, 402, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (402, 'dance', '/dɑ:ns/', '跳舞', 19, 403, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (403, 'watch TV ', '/wɔtʃ/', '看电视', 19, 405, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (404, 'row', '/rəu/', '划', 19, 404, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (405, 'cook the meals ', '/kuk mi:l/', '烧菜', 19, 406, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (406, 'water the flowers ', '/\'flauə/', '浇花', 19, 407, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (407, 'clean the bedroom ', '/kli:n \'bedrum/', '打扫房间', 19, 409, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (408, 'sweep the floor ', '/swi:p flɔ:/', '拖地', 19, 408, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (409, 'set the table ', '/\'teibl/', '摆餐桌', 19, 410, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (410, 'wash the clothes ', '/wɔʃ kləuðz/', '洗衣服', 19, 411, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (411, 'wash the dishes ', '/diʃ/', '洗盘子', 19, 412, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (412, 'use a computer ', '/kəm\'pju:tə/', '用电脑', 19, 413, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (413, 'eat breakfast ', '/i:t \'brekfəst/', '吃早餐', 19, 415, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (414, 'do morning exercises ', '/\'mɔ:niŋ \'eksəsaiz/', '做早操', 19, 414, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (415, 'eat dinner ', '/\'dinə /', '吃晚饭', 19, 416, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (416, 'play sports', '/plei spɔ:ts/', '体育运动', 19, 417, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (417, 'climb mountains', '/klaim \'mauntins/', '爬山', 19, 418, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (418, 'play the piano ', '/pi\'ænəu/', '弹钢琴', 19, 419, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (419, 'visit grandparents ', '/\'vizit \'grænd,pɛərənt/', '拜访祖父母', 19, 420, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (420, 'go hiking ', '/haik/', '去远足', 19, 421, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (421, 'fly kites ', '/flai kaits/', '放风筝', 19, 422, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (422, 'make a snowman ', '/meik ə \'snəu,mæn/', '堆雪人', 19, 423, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (423, 'plant trees ', '/plɑ:nt tri:z/', '植树', 19, 424, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (424, 'draw pictures ', '/drɔ: \'piktʃəz/', '画画', 19, 425, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (425, 'cook dinner ', '/kuk \'dinə/', '烧晚饭', 19, 426, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (426, 'answer the phone', '/\'ɑ:nsə fəun /', '接电话', 19, 427, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (427, 'drink water ', '/driŋk \'wɔ:tə/', '喝水', 19, 430, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (428, 'write a letter ', '/rait \'letə/', '写信', 19, 429, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (429, 'listen to music ', '/\'lisn \'mju:zik/', '听音乐', 19, 428, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (430, 'take pictures ', '/teik \'piktʃə/', '拍照片', 19, 431, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (431, 'pick up leaves ', '/pik ʌp li:vz/', '摘树叶', 19, 432, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (432, 'write a report ', '/rait ri\'pɔ:t/', '写报告', 19, 433, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (433, 'ride a bike ', '/raid baik/', '骑自行车', 19, 436, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (434, 'play chess ', '/tʃes/', '下棋', 19, 481, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (435, 'have a picnic ', '/\'piknik/', '野餐', 19, 435, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (436, 'play the violin ', '/,vaiə\'lin/', '拉小提琴', 19, 437, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (437, 'collect stamps ', '/kə\'lekt stæmp/', '集邮', 19, 438, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (438, 'meet', '/mi:t/', '遇见', 19, 439, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (439, 'welcome', '/\'welkəm/', '欢迎', 19, 440, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (440, 'thank ', '/θæŋk/', '谢谢', 19, 441, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (441, 'work ', '/wə:k/', '工作', 19, 442, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (442, 'drink ', '/driŋk/', '喝', 19, 443, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (443, 'taste ', '/teist/', '尝', 19, 444, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (444, 'smell ', '/smel/', '闻', 19, 445, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (445, 'feed ', '/fi:d/', '喂', 19, 446, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (446, 'help ', '/help/', '帮助', 19, 450, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (447, 'guess ', '/ges/', '猜', 19, 449, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (448, 'look ', '/luk/', '看', 19, 448, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (449, 'pass', '/pɑ:s/', '传递', 19, 451, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (450, 'show', '/ʃəu/', '展示，给……看', 19, 452, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (451, 'use ', '/ju:z/', '用', 19, 453, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (452, 'clean ', '/kli:n/', '打扫', 19, 454, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (453, 'open', '/\'əupən/', '打开', 19, 455, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (454, 'close ', '/kləuz/', '关', 19, 456, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (455, 'put ', '/put/', '放', 19, 457, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (456, 'read ', '/ri:d/', '读，看', 19, 458, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (457, 'write ', '/rait/', '写', 19, 459, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (458, 'kick ', '/kik/', '踢', 19, 462, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (459, 'paint ', '/peint/', '画画', 19, 460, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (460, 'tell ', '/tel/', '告诉', 19, 461, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (461, 'ride ', '/raid/', '骑', 19, 463, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (462, 'stop ', '/stɔp/', '停', 19, 464, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (463, 'wait ', '/weit/', '等', 19, 465, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (464, 'find ', '/faind/', '找', 19, 466, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (465, 'drive ', '/draiv/', '驾驶', 19, 467, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (466, 'fold ', '/fəuld/', '折叠', 19, 468, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (467, 'send ', '/send/', '送，寄', 19, 469, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (468, 'wash ', '/wɔʃ/', '洗', 19, 470, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (469, 'shine', '/ʃain/', '照耀', 19, 471, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (470, 'become', '/bi\'kʌm/', '变成', 19, 472, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (471, 'feel ', '/fi:l/', '感觉', 19, 473, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (472, 'think ', '/θiŋk/', '想', 19, 474, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (473, 'fall ', '/fɔ:l/', '掉下', 19, 475, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (474, 'leave ', '/li:v/', '离开', 19, 476, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (475, 'wake up', '/weik ʌp/', '醒过来', 19, 477, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (476, 'hang up ', '/hæŋ ʌp/', '挂起来', 19, 478, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (477, 'wear ', '/wɛə/', '穿', 19, 479, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (478, 'play computer games ', '/kəm\'pju:tə geims/', '玩电脑游戏', 19, 480, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (479, 'do housework ', '/\'hauswə:k/', '做家务', 19, 482, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (480, 'empty the trash', '/\'empti træʃ/', '倒垃圾', 19, 483, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (481, 'put away the clothes ', '/kləuð/', '放好衣服', 19, 484, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (482, 'take a trip', '/trip/', '去郊游', 19, 485, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (483, 'read a magazine ', '/,mægə\'zi:n/', '读杂志', 19, 486, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (484, 'go to the cinema ', '/\'sinimə/', '去电影院', 19, 487, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (485, 'how large ', '/hau lɑ:dʒ/', '面积多', 19, 488, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (486, 'when', '/hwen/', '什么时候', 19, 490, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (487, 'who', '/hu:/', '谁', 19, 489, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (488, 'where', '/hwɛə/', '在哪里', 19, 492, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (489, 'whose', '/hu:z/', '谁的', 19, 491, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (490, 'why', '/hwai/', '为什么', 19, 493, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (491, 'which ', '/hwitʃ/', '哪一个', 19, 494, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (492, 'from', '/frem/', '从', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (493, 'exercise', '/\'eksosaiz/', '练习', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (494, 'well', '/wel/', '好', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (495, 'day', '/der/', '天，日', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `app_english_pronounce` VALUES (496, 'usually', '/\'ju:zuoli/', '通常', NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (20, 'app_chinese', '语文词语表', NULL, NULL, 'AppChinese', 'crud', 'com.ruoyi.app', 'app', 'chinese', '语文词语', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 12:34:18', '', '2024-05-25 15:32:20', NULL);
INSERT INTO `gen_table` VALUES (22, 'app_chinese_poetry_accum', '诗词与日积月累主表', NULL, NULL, 'AppChinesePoetryAccum', 'crud', 'com.ruoyi.app', 'app', 'poetryaccum', '诗词与日积月累主', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 12:35:36', '', '2024-05-27 15:02:31', NULL);
INSERT INTO `gen_table` VALUES (23, 'app_chinese_poetry_accum_detail', '诗词与日积月累明细表', NULL, NULL, 'AppChinesePoetryAccumDetail', 'crud', 'com.ruoyi.app', 'app', 'poetrydetail', '诗词与日积月累明细', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 12:36:19', '', '2024-05-25 13:11:18', NULL);
INSERT INTO `gen_table` VALUES (24, 'app_chinese_poetry_detail', '诗词明细', NULL, NULL, 'AppChinesePoetryDetail', 'crud', 'com.ruoyi.app', 'app', 'detail', '诗词明细', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 12:36:58', '', '2024-05-25 13:47:59', NULL);
INSERT INTO `gen_table` VALUES (27, 'app_english_lesson', '小学英语单词词组表', NULL, NULL, 'AppEnglishLesson', 'crud', 'com.ruoyi.app', 'app', 'lesson', '小学英语单词词组', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 12:37:51', '', '2024-05-25 13:44:46', NULL);
INSERT INTO `gen_table` VALUES (28, 'app_english_pronounce', '单词发音对照表', NULL, NULL, 'AppEnglishPronounce', 'crud', 'com.ruoyi.app', 'app', 'pronounce', '单词发音对照', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 12:37:58', '', '2024-05-25 13:46:27', NULL);
INSERT INTO `gen_table` VALUES (29, 'app_chinese_word_comment', '词语解释', NULL, NULL, 'AppChineseWordComment', 'crud', 'com.ruoyi.app', 'app', 'comment', '词语解释', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 13:39:21', '', '2024-05-25 13:42:14', NULL);
INSERT INTO `gen_table` VALUES (31, 'app_chinese_poetry', '诗词与日积月累汇总表', NULL, NULL, 'AppChinesePoetry', 'crud', 'com.ruoyi.app', 'app', 'poetry', '诗词与日积月累汇总', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:26', NULL);
INSERT INTO `gen_table` VALUES (32, 'app_chinese_poetry_json', 'JSON格式完整数据', NULL, NULL, 'AppChinesePoetryJson', 'crud', 'com.ruoyi.app', 'app', 'poetryjson', 'JSON格式完整数据', 'ruoyi', '0', '/', '{\"parentMenuId\":\"\"}', 'admin', '2024-05-25 20:05:52', '', '2024-05-27 14:45:58', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 456 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (234, '20', 'id', NULL, 'int(10) unsigned', 'Integer', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 12:34:21', '', '2024-05-25 15:32:21');
INSERT INTO `gen_table_column` VALUES (235, '20', 'grade', '年级', 'tinyint(4)', 'Integer', 'grade', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_primary_grade', 2, 'admin', '2024-05-25 12:34:23', '', '2024-05-25 15:32:21');
INSERT INTO `gen_table_column` VALUES (236, '20', 'term', '学期', 'tinyint(4)', 'Integer', 'term', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_term', 3, 'admin', '2024-05-25 12:34:25', '', '2024-05-25 15:32:21');
INSERT INTO `gen_table_column` VALUES (237, '20', 'unit', '单元', 'tinyint(4)', 'Integer', 'unit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_lesson_unit', 4, 'admin', '2024-05-25 12:34:27', '', '2024-05-25 15:32:21');
INSERT INTO `gen_table_column` VALUES (238, '20', 'lesson_no', '第几课', 'tinyint(4)', 'Integer', 'lessonNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_lesson', 5, 'admin', '2024-05-25 12:34:29', '', '2024-05-25 15:32:22');
INSERT INTO `gen_table_column` VALUES (239, '20', 'word', '词语', 'varchar(64)', 'String', 'word', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2024-05-25 12:34:31', '', '2024-05-25 15:32:23');
INSERT INTO `gen_table_column` VALUES (240, '20', 'mean', '含义', 'varchar(255)', 'String', 'mean', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-05-25 12:34:33', '', '2024-05-25 15:32:23');
INSERT INTO `gen_table_column` VALUES (241, '20', 'pinyin', '拼音', 'varchar(255)', 'String', 'pinyin', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2024-05-25 12:34:35', '', '2024-05-25 15:32:24');
INSERT INTO `gen_table_column` VALUES (242, '20', 'word_type', '词语分类', 'tinyint(4)', 'Integer', 'wordType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_chinese_wordtype', 9, 'admin', '2024-05-25 12:34:37', '', '2024-05-25 15:32:25');
INSERT INTO `gen_table_column` VALUES (243, '20', 'word_sort', '排序', 'smallint(6)', 'Integer', 'wordSort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-05-25 12:34:39', '', '2024-05-25 15:32:25');
INSERT INTO `gen_table_column` VALUES (244, '20', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2024-05-25 12:34:41', '', '2024-05-25 15:32:26');
INSERT INTO `gen_table_column` VALUES (245, '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2024-05-25 12:34:43', '', '2024-05-25 15:32:27');
INSERT INTO `gen_table_column` VALUES (246, '20', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '0', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2024-05-25 12:34:45', '', '2024-05-25 15:32:27');
INSERT INTO `gen_table_column` VALUES (247, '20', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '0', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2024-05-25 12:34:47', '', '2024-05-25 15:32:28');
INSERT INTO `gen_table_column` VALUES (248, '20', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 15, 'admin', '2024-05-25 12:34:49', '', '2024-05-25 15:32:28');
INSERT INTO `gen_table_column` VALUES (270, '22', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 12:35:39', '', '2024-05-27 15:02:31');
INSERT INTO `gen_table_column` VALUES (271, '22', 'sys_id', '系统分配的ID', 'int(11)', 'Long', 'sysId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-05-25 12:35:41', '', '2024-05-27 15:02:31');
INSERT INTO `gen_table_column` VALUES (272, '22', 'grade', '年级', 'tinyint(4)', 'Integer', 'grade', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_primary_grade', 3, 'admin', '2024-05-25 12:35:43', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (273, '22', 'term', '学期', 'tinyint(4)', 'Integer', 'term', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_term', 4, 'admin', '2024-05-25 12:35:45', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (274, '22', 'unit', '单元', 'tinyint(4)', 'Integer', 'unit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_lesson_unit', 5, 'admin', '2024-05-25 12:35:47', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (275, '22', 'title', '标题', 'varchar(32)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2024-05-25 12:35:49', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (276, '22', 'author', '作者', 'varchar(32)', 'String', 'author', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-05-25 12:35:51', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (277, '22', 'dynasty', '朝代', 'varchar(16)', 'String', 'dynasty', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2024-05-25 12:35:53', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (278, '22', 'title_pinyin', '拼音', 'varchar(64)', 'String', 'titlePinyin', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2024-05-25 12:35:55', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (279, '22', 'title_word', '标题字', 'varchar(32)', 'String', 'titleWord', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2024-05-25 12:35:57', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (280, '22', 'title_word_mean', '标题字义', 'varchar(128)', 'String', 'titleWordMean', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2024-05-25 12:35:59', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (281, '22', 'title_word_pinyin', '标题字拼音', 'varchar(32)', 'String', 'titleWordPinyin', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2024-05-25 12:36:01', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (282, '22', 'emotion', '表达情感', 'varchar(64)', 'String', 'emotion', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 13, 'admin', '2024-05-25 12:36:03', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (283, '22', 'category_id', '诗词分类', 'varchar(32)', 'String', 'categoryId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_chinese_poetry_category', 14, 'admin', '2024-05-25 12:36:05', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (284, '22', 'child_category_id', '小类', 'varchar(32)', 'String', 'childCategoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2024-05-25 12:36:07', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (285, '22', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2024-05-25 12:36:09', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (286, '22', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2024-05-25 12:36:11', '', '2024-05-27 15:02:32');
INSERT INTO `gen_table_column` VALUES (287, '22', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2024-05-25 12:36:13', '', '2024-05-27 15:02:33');
INSERT INTO `gen_table_column` VALUES (288, '22', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2024-05-25 12:36:15', '', '2024-05-27 15:02:33');
INSERT INTO `gen_table_column` VALUES (289, '22', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 20, 'admin', '2024-05-25 12:36:17', '', '2024-05-27 15:02:33');
INSERT INTO `gen_table_column` VALUES (290, '23', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 12:36:22', '', '2024-05-25 13:11:19');
INSERT INTO `gen_table_column` VALUES (291, '23', 'p_sys_id', '主表系统ID', 'int(11)', 'Long', 'pSysId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-05-25 12:36:24', '', '2024-05-25 13:11:19');
INSERT INTO `gen_table_column` VALUES (292, '23', 'sentense', '诗词句', 'varchar(128)', 'String', 'sentense', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-05-25 12:36:26', '', '2024-05-25 13:11:19');
INSERT INTO `gen_table_column` VALUES (293, '23', 'pinyin', '拼音', 'varchar(128)', 'String', 'pinyin', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-05-25 12:36:28', '', '2024-05-25 13:11:20');
INSERT INTO `gen_table_column` VALUES (294, '23', 'mean', '句子含义', 'varchar(128)', 'String', 'mean', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2024-05-25 12:36:30', '', '2024-05-25 13:11:20');
INSERT INTO `gen_table_column` VALUES (295, '23', 'word', '字词', 'varchar(32)', 'String', 'word', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2024-05-25 12:36:32', '', '2024-05-25 13:11:21');
INSERT INTO `gen_table_column` VALUES (296, '23', 'word_mean', '字词含义', 'varchar(128)', 'String', 'wordMean', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-05-25 12:36:34', '', '2024-05-25 13:11:21');
INSERT INTO `gen_table_column` VALUES (297, '23', 'word_pinyin', '字词拼音', 'varchar(32)', 'String', 'wordPinyin', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2024-05-25 12:36:36', '', '2024-05-25 13:11:21');
INSERT INTO `gen_table_column` VALUES (298, '23', 'truth', '哲理', 'varchar(32)', 'String', 'truth', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2024-05-25 12:36:38', '', '2024-05-25 13:11:21');
INSERT INTO `gen_table_column` VALUES (299, '23', 'question', '提问', 'varchar(128)', 'String', 'question', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2024-05-25 12:36:40', '', '2024-05-25 13:11:23');
INSERT INTO `gen_table_column` VALUES (300, '23', 'is_vip', '名言', 'bit(1)', 'Integer', 'isVip', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-05-25 12:36:42', '', '2024-05-25 13:11:23');
INSERT INTO `gen_table_column` VALUES (301, '23', 'inner_sort_no', '内部序号', 'tinyint(4)', 'Integer', 'innerSortNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-05-25 12:36:44', '', '2024-05-25 13:11:23');
INSERT INTO `gen_table_column` VALUES (302, '23', 'word_search', '查询字(比如春夏秋冬颜色花)', 'varchar(32)', 'String', 'wordSearch', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 13, 'admin', '2024-05-25 12:36:46', '', '2024-05-25 13:11:23');
INSERT INTO `gen_table_column` VALUES (303, '23', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2024-05-25 12:36:48', '', '2024-05-25 13:11:23');
INSERT INTO `gen_table_column` VALUES (304, '23', 'create_by', NULL, 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2024-05-25 12:36:50', '', '2024-05-25 13:11:24');
INSERT INTO `gen_table_column` VALUES (305, '23', 'update_by', NULL, 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2024-05-25 12:36:52', '', '2024-05-25 13:11:24');
INSERT INTO `gen_table_column` VALUES (306, '23', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2024-05-25 12:36:54', '', '2024-05-25 13:11:25');
INSERT INTO `gen_table_column` VALUES (307, '23', 'remark', NULL, 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 18, 'admin', '2024-05-25 12:36:56', '', '2024-05-25 13:11:25');
INSERT INTO `gen_table_column` VALUES (308, '24', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 12:37:01', '', '2024-05-25 13:47:59');
INSERT INTO `gen_table_column` VALUES (309, '24', 'name', '题目(标题/课文/园地)', 'varchar(32)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-05-25 12:37:03', '', '2024-05-25 13:47:59');
INSERT INTO `gen_table_column` VALUES (310, '24', 'title_word', '题目字词', 'varchar(32)', 'String', 'titleWord', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-05-25 12:37:04', '', '2024-05-25 13:47:59');
INSERT INTO `gen_table_column` VALUES (311, '24', 'title_word_mean', '题目字词含义', 'varchar(128)', 'String', 'titleWordMean', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-05-25 12:37:05', '', '2024-05-25 13:48:00');
INSERT INTO `gen_table_column` VALUES (312, '24', 'title_pinyin_word', '题目拼音字', 'varchar(32)', 'String', 'titlePinyinWord', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-05-25 12:37:05', '', '2024-05-25 13:48:00');
INSERT INTO `gen_table_column` VALUES (313, '24', 'grade', '年级', 'tinyint(4)', 'Integer', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-05-25 12:37:05', '', '2024-05-25 13:48:01');
INSERT INTO `gen_table_column` VALUES (314, '24', 'term', '学期', 'tinyint(4)', 'Integer', 'term', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-05-25 12:37:06', '', '2024-05-25 13:48:01');
INSERT INTO `gen_table_column` VALUES (315, '24', 'unit', '单元', 'int(11)', 'Long', 'unit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-05-25 12:37:06', '', '2024-05-25 13:48:01');
INSERT INTO `gen_table_column` VALUES (316, '24', 'author', '作者', 'varchar(32)', 'String', 'author', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-05-25 12:37:06', '', '2024-05-25 13:48:01');
INSERT INTO `gen_table_column` VALUES (317, '24', 'dynasty', '朝代', 'varchar(32)', 'String', 'dynasty', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-05-25 12:37:07', '', '2024-05-25 13:48:02');
INSERT INTO `gen_table_column` VALUES (318, '24', 'sentense', '句子', 'varchar(64)', 'String', 'sentense', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-05-25 12:37:07', '', '2024-05-25 13:48:02');
INSERT INTO `gen_table_column` VALUES (319, '24', 'pinyin', '拼音', 'varchar(128)', 'String', 'pinyin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-05-25 12:37:07', '', '2024-05-25 13:48:03');
INSERT INTO `gen_table_column` VALUES (320, '24', 'mean', '含义', 'varchar(128)', 'String', 'mean', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2024-05-25 12:37:07', '', '2024-05-25 13:48:03');
INSERT INTO `gen_table_column` VALUES (321, '24', 'word', '字词(加注释字词)', 'varchar(64)', 'String', 'word', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2024-05-25 12:37:07', '', '2024-05-25 13:48:03');
INSERT INTO `gen_table_column` VALUES (322, '24', 'word_mean', '字词注释', 'varchar(255)', 'String', 'wordMean', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2024-05-25 12:37:07', '', '2024-05-25 13:48:04');
INSERT INTO `gen_table_column` VALUES (323, '24', 'pinyin_word', '拼音字词', 'varchar(32)', 'String', 'pinyinWord', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2024-05-25 12:37:08', '', '2024-05-25 13:48:04');
INSERT INTO `gen_table_column` VALUES (324, '24', 'truth', '道理', 'varchar(64)', 'String', 'truth', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2024-05-25 12:37:08', '', '2024-05-25 13:48:05');
INSERT INTO `gen_table_column` VALUES (325, '24', 'question', '最多2个问题', 'varchar(128)', 'String', 'question', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2024-05-25 12:37:08', '', '2024-05-25 13:48:05');
INSERT INTO `gen_table_column` VALUES (326, '24', 'is_vip', '重点句子', 'bit(1)', 'Integer', 'isVip', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2024-05-25 12:37:08', '', '2024-05-25 13:48:05');
INSERT INTO `gen_table_column` VALUES (327, '24', 'inner_sort_no', '题目内排序号', 'int(11)', 'Long', 'innerSortNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2024-05-25 12:37:09', '', '2024-05-25 13:48:06');
INSERT INTO `gen_table_column` VALUES (328, '24', 'category_id', '内容分类(1诗2词3文言文4日积月累5词运用6人物7组词8情感9品质)', 'int(32)', 'Long', 'categoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2024-05-25 12:37:09', '', '2024-05-25 13:48:06');
INSERT INTO `gen_table_column` VALUES (329, '24', 'child_category_id', '子类', 'int(32)', 'Long', 'childCategoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2024-05-25 12:37:09', '', '2024-05-25 13:48:06');
INSERT INTO `gen_table_column` VALUES (330, '24', 'create_by', NULL, 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 23, 'admin', '2024-05-25 12:37:10', '', '2024-05-25 13:48:07');
INSERT INTO `gen_table_column` VALUES (331, '24', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 24, 'admin', '2024-05-25 12:37:10', '', '2024-05-25 13:48:07');
INSERT INTO `gen_table_column` VALUES (332, '24', 'update_by', NULL, 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 25, 'admin', '2024-05-25 12:37:11', '', '2024-05-25 13:48:07');
INSERT INTO `gen_table_column` VALUES (333, '24', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 26, 'admin', '2024-05-25 12:37:12', '', '2024-05-25 13:48:08');
INSERT INTO `gen_table_column` VALUES (334, '24', 'remark', NULL, 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 27, 'admin', '2024-05-25 12:37:12', '', '2024-05-25 13:48:08');
INSERT INTO `gen_table_column` VALUES (357, '27', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 12:37:52', '', '2024-05-25 13:45:05');
INSERT INTO `gen_table_column` VALUES (358, '27', 'grade', '年级', 'tinyint(4)', 'Integer', 'grade', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_primary_grade', 2, 'admin', '2024-05-25 12:37:53', '', '2024-05-25 13:45:07');
INSERT INTO `gen_table_column` VALUES (359, '27', 'term', '学期', 'tinyint(4)', 'Integer', 'term', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_term', 3, 'admin', '2024-05-25 12:37:53', '', '2024-05-25 13:45:07');
INSERT INTO `gen_table_column` VALUES (360, '27', 'unit', '单元', 'tinyint(4)', 'Integer', 'unit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_lesson_unit', 4, 'admin', '2024-05-25 12:37:53', '', '2024-05-25 13:45:09');
INSERT INTO `gen_table_column` VALUES (361, '27', 'word', '单词', 'varchar(128)', 'String', 'word', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2024-05-25 12:37:53', '', '2024-05-25 13:45:09');
INSERT INTO `gen_table_column` VALUES (362, '27', 'pronounce', '发音', 'varchar(64)', 'String', 'pronounce', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2024-05-25 12:37:54', '', '2024-05-25 13:45:10');
INSERT INTO `gen_table_column` VALUES (363, '27', 'chinese', '中文', 'varchar(64)', 'String', 'chinese', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-05-25 12:37:54', '', '2024-05-25 13:45:11');
INSERT INTO `gen_table_column` VALUES (364, '27', 'data_type', '数据分类', 'tinyint(4)', 'Integer', 'dataType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_english_lesson_datatype', 8, 'admin', '2024-05-25 12:37:54', '', '2024-05-25 13:45:12');
INSERT INTO `gen_table_column` VALUES (365, '27', 'sort_no', '序号', 'int(11)', 'Long', 'sortNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-05-25 12:37:55', '', '2024-05-25 13:45:12');
INSERT INTO `gen_table_column` VALUES (366, '27', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-05-25 12:37:55', '', '2024-05-25 13:45:13');
INSERT INTO `gen_table_column` VALUES (367, '27', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2024-05-25 12:37:56', '', '2024-05-25 13:45:14');
INSERT INTO `gen_table_column` VALUES (368, '27', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2024-05-25 12:37:56', '', '2024-05-25 13:45:15');
INSERT INTO `gen_table_column` VALUES (369, '27', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2024-05-25 12:37:57', '', '2024-05-25 13:45:16');
INSERT INTO `gen_table_column` VALUES (370, '27', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 14, 'admin', '2024-05-25 12:37:57', '', '2024-05-25 13:45:16');
INSERT INTO `gen_table_column` VALUES (371, '28', 'id', NULL, 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 12:37:59', '', '2024-05-25 13:46:27');
INSERT INTO `gen_table_column` VALUES (372, '28', 'word', '单词', 'varchar(32)', 'String', 'word', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-05-25 12:38:01', '', '2024-05-25 13:46:27');
INSERT INTO `gen_table_column` VALUES (373, '28', 'pronounce', '发音', 'varchar(32)', 'String', 'pronounce', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-05-25 12:38:03', '', '2024-05-25 13:46:28');
INSERT INTO `gen_table_column` VALUES (374, '28', 'chinese', '中文', 'varchar(32)', 'String', 'chinese', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-05-25 12:38:03', '', '2024-05-25 13:46:28');
INSERT INTO `gen_table_column` VALUES (375, '28', 'word_type', '单词分类', 'tinyint(4)', 'Integer', 'wordType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_english_wordtype', 5, 'admin', '2024-05-25 12:38:08', '', '2024-05-25 13:46:28');
INSERT INTO `gen_table_column` VALUES (376, '28', 'sort_no', '序号', 'int(11)', 'Long', 'sortNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-05-25 12:38:09', '', '2024-05-25 13:46:29');
INSERT INTO `gen_table_column` VALUES (377, '28', 'create_by', NULL, 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2024-05-25 12:38:10', '', '2024-05-25 13:46:30');
INSERT INTO `gen_table_column` VALUES (378, '28', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2024-05-25 12:38:10', '', '2024-05-25 13:46:30');
INSERT INTO `gen_table_column` VALUES (379, '28', 'update_by', NULL, 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2024-05-25 12:38:12', '', '2024-05-25 13:46:31');
INSERT INTO `gen_table_column` VALUES (380, '28', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2024-05-25 12:38:13', '', '2024-05-25 13:46:31');
INSERT INTO `gen_table_column` VALUES (381, '28', 'remark', NULL, 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2024-05-25 12:38:14', '', '2024-05-25 13:46:32');
INSERT INTO `gen_table_column` VALUES (382, '29', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 13:39:24', '', '2024-05-25 13:42:14');
INSERT INTO `gen_table_column` VALUES (383, '29', 'grade', '年级', 'tinyint(4)', 'Integer', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_primary_grade', 2, 'admin', '2024-05-25 13:39:36', '', '2024-05-25 13:42:18');
INSERT INTO `gen_table_column` VALUES (384, '29', 'term', '学期', 'tinyint(4)', 'Integer', 'term', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_term', 3, 'admin', '2024-05-25 13:39:39', '', '2024-05-25 13:42:18');
INSERT INTO `gen_table_column` VALUES (385, '29', 'word', '词语', 'varchar(32)', 'String', 'word', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-05-25 13:39:45', '', '2024-05-25 13:42:20');
INSERT INTO `gen_table_column` VALUES (386, '29', 'pinyin', '拼音', 'varchar(32)', 'String', 'pinyin', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2024-05-25 13:39:47', '', '2024-05-25 13:42:21');
INSERT INTO `gen_table_column` VALUES (387, '29', 'comment', '注释', 'varchar(128)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2024-05-25 13:39:50', '', '2024-05-25 13:42:23');
INSERT INTO `gen_table_column` VALUES (388, '29', 'create_by', NULL, 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2024-05-25 13:39:56', '', '2024-05-25 13:42:25');
INSERT INTO `gen_table_column` VALUES (389, '29', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2024-05-25 13:40:00', '', '2024-05-25 13:42:25');
INSERT INTO `gen_table_column` VALUES (390, '29', 'update_by', NULL, 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2024-05-25 13:40:02', '', '2024-05-25 13:42:26');
INSERT INTO `gen_table_column` VALUES (391, '29', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2024-05-25 13:40:04', '', '2024-05-25 13:42:26');
INSERT INTO `gen_table_column` VALUES (392, '29', 'remark', NULL, 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2024-05-25 13:40:06', '', '2024-05-25 13:42:27');
INSERT INTO `gen_table_column` VALUES (416, '31', 'id', NULL, 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:26');
INSERT INTO `gen_table_column` VALUES (417, '31', 'sys_id', '系统ID', 'int(11)', 'Long', 'sysId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:26');
INSERT INTO `gen_table_column` VALUES (418, '31', 'grade', '年级', 'tinyint(4)', 'Integer', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_primary_grade', 3, 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (419, '31', 'term', '学期', 'tinyint(4)', 'Integer', 'term', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_term', 4, 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (420, '31', 'unit', '单元', 'tinyint(4)', 'Integer', 'unit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_lesson_unit', 5, 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (421, '31', 'category_id', '类别', 'varchar(32)', 'String', 'categoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_chinese_poetry_category', 6, 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (422, '31', 'title', '标题', 'varchar(64)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (423, '31', 'dynasty', '朝代', 'varchar(16)', 'String', 'dynasty', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2024-05-25 16:55:42', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (424, '31', 'author', '作者', 'varchar(32)', 'String', 'author', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2024-05-25 16:55:43', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (425, '31', 'content', '内容', 'varchar(800)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2024-05-25 16:55:43', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (426, '31', 'pinyin', '拼音', 'varchar(2000)', 'String', 'pinyin', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 11, 'admin', '2024-05-25 16:55:43', '', '2024-05-25 16:59:27');
INSERT INTO `gen_table_column` VALUES (427, '31', 'comment', '注释', 'varchar(800)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 12, 'admin', '2024-05-25 16:55:43', '', '2024-05-25 16:59:28');
INSERT INTO `gen_table_column` VALUES (428, '31', 'translation', '译文', 'varchar(500)', 'String', 'translation', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 13, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:29');
INSERT INTO `gen_table_column` VALUES (429, '31', 'child_category_id', '分类1', 'varchar(32)', 'String', 'childCategoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:30');
INSERT INTO `gen_table_column` VALUES (430, '31', 'background', '背景', 'varchar(255)', 'String', 'background', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 15, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:30');
INSERT INTO `gen_table_column` VALUES (431, '31', 'emotion', '表达情感', 'varchar(255)', 'String', 'emotion', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 16, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:30');
INSERT INTO `gen_table_column` VALUES (432, '31', 'truth', '道理', 'varchar(255)', 'String', 'truth', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 17, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:31');
INSERT INTO `gen_table_column` VALUES (433, '31', 'word_search', '查询字', 'varchar(64)', 'String', 'wordSearch', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 18, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:31');
INSERT INTO `gen_table_column` VALUES (434, '31', 'question', '提问', 'varchar(255)', 'String', 'question', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 19, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:31');
INSERT INTO `gen_table_column` VALUES (435, '31', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 20, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:31');
INSERT INTO `gen_table_column` VALUES (436, '31', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 21, 'admin', '2024-05-25 16:55:44', '', '2024-05-25 16:59:31');
INSERT INTO `gen_table_column` VALUES (437, '31', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 22, 'admin', '2024-05-25 16:55:45', '', '2024-05-25 16:59:31');
INSERT INTO `gen_table_column` VALUES (438, '31', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 23, 'admin', '2024-05-25 16:55:45', '', '2024-05-25 16:59:32');
INSERT INTO `gen_table_column` VALUES (439, '31', 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 24, 'admin', '2024-05-25 16:55:45', '', '2024-05-25 16:59:32');
INSERT INTO `gen_table_column` VALUES (440, '32', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-05-25 20:05:54', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (441, '32', 'sys_id', '系统ID', 'int(11)', 'Long', 'sysId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-05-25 20:05:54', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (442, '32', 'grade', '年级', 'tinyint(4)', 'Integer', 'grade', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_primary_grade', 3, 'admin', '2024-05-25 20:05:54', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (443, '32', 'term', '学期', 'tinyint(4)', 'Integer', 'term', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_term', 4, 'admin', '2024-05-25 20:05:54', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (444, '32', 'unit', '单元', 'tinyint(4)', 'Integer', 'unit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_lesson_unit', 5, 'admin', '2024-05-25 20:05:54', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (445, '32', 'title', '标题', 'varchar(32)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2024-05-25 20:05:54', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (446, '32', 'category_id', '诗词分类', 'varchar(32)', 'String', 'categoryId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'app_chinese_poetry_category', 7, 'admin', '2024-05-25 20:05:54', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (447, '32', 'json_data', 'json数据', 'varchar(5000)', 'String', 'jsonData', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2024-05-25 20:05:55', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (448, '32', 'create_by', NULL, 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2024-05-25 20:05:55', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (449, '32', 'create_time', NULL, 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2024-05-25 20:05:56', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (450, '32', 'update_by', NULL, 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2024-05-25 20:05:56', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (451, '32', 'update_time', NULL, 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2024-05-25 20:05:56', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (452, '32', 'remark', NULL, 'varchar(100)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 13, 'admin', '2024-05-25 20:05:57', '', '2024-05-27 14:45:59');
INSERT INTO `gen_table_column` VALUES (453, '32', 'must_write', '默写', 'bit(1)', 'Integer', 'mustWrite', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-05-25 12:36:42', '', '2024-05-25 13:11:23');
INSERT INTO `gen_table_column` VALUES (454, '31', 'must_write', '默写', 'bit(1)', 'Integer', 'mustWrite', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-05-25 12:36:42', '', '2024-05-25 13:11:23');
INSERT INTO `gen_table_column` VALUES (455, '22', 'must_write', '默写', 'bit(1)', 'Integer', 'mustWrite', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-05-25 12:36:42', '', '2024-05-25 13:11:23');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-05-13 12:28:12', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-05-13 12:28:13', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-05-13 12:28:14', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-05-13 12:28:15', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-05-13 12:28:16', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-05-13 12:28:17', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:23:56', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:23:57', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:23:58', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:23:59', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:24:00', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:24:01', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:24:02', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:24:03', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:24:04', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-05-13 12:24:05', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-05-13 12:27:41', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-05-13 12:27:42', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-05-13 12:27:43', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-05-13 12:27:44', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:27:45', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-05-13 12:27:46', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:27:47', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-05-13 12:27:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:27:49', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-05-13 12:27:50', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-05-13 12:27:51', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-05-13 12:27:52', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:27:53', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-05-13 12:27:54', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-05-13 12:27:55', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-05-13 12:27:56', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:27:57', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-05-13 12:27:58', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-05-13 12:27:59', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-05-13 12:28:00', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:28:01', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-05-13 12:28:02', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-05-13 12:28:03', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-05-13 12:28:04', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:28:05', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-05-13 12:28:06', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:28:07', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-05-13 12:28:08', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-05-13 12:28:09', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (30, 4, '四年级', '4', 'app_primary_grade', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:01:11', 'admin', '2024-05-14 10:01:33', '四年级');
INSERT INTO `sys_dict_data` VALUES (32, 1, '上学期', '1', 'app_term', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:02:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 2, '下学期', '2', 'app_term', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:03:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (34, 1, '第一单元', '1', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:04:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (35, 2, '第二单元', '2', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:04:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (36, 3, '第三单元', '3', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:04:53', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (37, 4, '第四单元', '4', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:05:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (38, 5, '第五单元', '5', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:05:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (39, 6, '第六单元', '6', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:05:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (40, 7, '第七单元', '7', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:05:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (41, 8, '第八单元', '8', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:05:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (42, 1, '第1课', '1', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:06:43', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (43, 2, '第2课', '2', 'app_lesson', NULL, 'default', 'N', '0', '', NULL, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (44, 3, '第3课', '3', 'app_lesson', NULL, 'default', 'N', '0', '', NULL, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (45, 4, '第4课', '4', 'app_lesson', '', 'default', 'N', '0', '', NULL, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (46, 5, '第5课', '5', 'app_lesson', NULL, 'default', 'N', '0', '', NULL, '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (47, 6, '第6课', '6', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:10:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (48, 7, '第7课', '7', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:10:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (49, 8, '第8课', '8', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:10:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (50, 9, '第9课', '9', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:10:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (51, 10, '第10课', '10', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:10:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (52, 11, '第11课', '11', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:10:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (53, 12, '第12课', '12', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:10:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (54, 13, '第13课', '13', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:11:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (55, 14, '第14课', '14', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:11:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (56, 15, '第15课', '15', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:11:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (57, 16, '第16课', '16', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:11:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (58, 17, '第17课', '17', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:11:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (59, 18, '第18课', '18', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:11:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (60, 19, '第19课', '19', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:12:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (61, 20, '第20课', '20', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:12:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (62, 21, '第21课', '21', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:12:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (63, 22, '第22课', '22', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:12:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (64, 23, '第23课', '23', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:12:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (65, 24, '第24课', '24', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:13:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (66, 25, '第25课', '25', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:13:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (67, 26, '第26课', '26', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:13:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (68, 27, '第27课', '27', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:13:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (69, 28, '第28课', '28', 'app_lesson', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:13:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (70, 1, '词语', '1', 'app_chinese_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:16:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (71, 2, '四字词', '2', 'app_chinese_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-14 10:16:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (75, 1, '学习用品（school things）', '1', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:49:30', 'admin', '2024-05-15 22:49:59', NULL);
INSERT INTO `sys_dict_data` VALUES (76, 2, '身体部位（body）', '2', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:49:53', 'admin', '2024-05-15 22:50:07', NULL);
INSERT INTO `sys_dict_data` VALUES (77, 3, '颜色（colours）', '3', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:50:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (78, 4, '人物（people）', '4', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:51:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (79, 5, '食品（food and drink）', '5', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:51:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (80, 6, '衣服（clothes）', '6', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:52:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (81, 7, '交通工具（vehicles）', '7', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:52:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (82, 8, '杂物（other things）', '8', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:53:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (83, 9, '地点（locations）', '9', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:53:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (84, 10, '气象（weather）', '10', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:53:54', 'admin', '2024-05-15 22:54:04', NULL);
INSERT INTO `sys_dict_data` VALUES (85, 11, '景物（nature）', '11', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:54:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (86, 12, '植物（plants）', '12', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:54:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (87, 13, '星期（week）', '13', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:54:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (88, 14, '月份（months）', '14', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:55:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (89, 15, '季节（seasons）', '15', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:55:33', 'admin', '2024-05-15 22:55:45', NULL);
INSERT INTO `sys_dict_data` VALUES (90, 16, '方位（directions）', '16', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:55:59', 'admin', '2024-05-15 22:56:08', NULL);
INSERT INTO `sys_dict_data` VALUES (91, 17, '患病（illness）', '17', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:56:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (92, 18, '形容词（adj.）', '18', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:56:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (93, 19, '动词（verb.）', '19', 'app_english_wordtype', NULL, 'default', 'N', '0', 'admin', '2024-05-15 22:57:06', 'admin', '2024-05-15 22:57:17', NULL);
INSERT INTO `sys_dict_data` VALUES (94, 1, '单词', '1', 'app_english_lesson_datatype', NULL, 'default', 'N', '0', 'admin', '2024-05-16 13:50:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (95, 2, '短语', '2', 'app_english_lesson_datatype', NULL, 'default', 'N', '0', 'admin', '2024-05-16 13:50:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (96, 3, '句型', '3', 'app_english_lesson_datatype', NULL, 'default', 'N', '0', 'admin', '2024-05-16 13:51:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (97, 9, '第九单元', '9', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-16 15:26:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (98, 10, '第十单元', '10', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-16 15:26:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (99, 11, '第11单元', '11', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-16 15:26:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (100, 12, '第12单元', '12', 'app_lesson_unit', NULL, 'default', 'N', '0', 'admin', '2024-05-16 15:26:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '二年级', '2', 'app_primary_grade', NULL, 'default', 'N', '0', 'admin', '2024-05-19 20:45:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '三年级', '3', 'app_primary_grade', NULL, 'default', 'N', '0', 'admin', '2024-05-19 20:45:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 5, '五年级', '5', 'app_primary_grade', NULL, 'default', 'N', '0', 'admin', '2024-05-19 20:46:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 6, '六年级', '6', 'app_primary_grade', NULL, 'default', 'N', '0', 'admin', '2024-05-19 20:46:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 1, '一年级', '1', 'app_primary_grade', NULL, 'default', 'N', '0', 'admin', '2024-05-19 20:46:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '词', '1', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-21 13:53:37', 'admin', '2024-05-22 21:57:03', NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '文言文', '2', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-21 13:53:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 3, '日积月累', '3', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-21 13:54:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 4, '人物', '4', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-21 13:54:26', 'admin', '2024-05-22 21:56:12', NULL);
INSERT INTO `sys_dict_data` VALUES (110, 5, '词运用', '5', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-21 13:54:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 6, '组词', '6', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-21 13:54:56', 'admin', '2024-05-22 21:43:07', NULL);
INSERT INTO `sys_dict_data` VALUES (112, 7, '情感', '7', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-21 13:55:13', 'admin', '2024-05-22 21:42:40', NULL);
INSERT INTO `sys_dict_data` VALUES (113, 8, '品质', '8', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-21 13:55:25', 'admin', '2024-05-22 21:42:34', NULL);
INSERT INTO `sys_dict_data` VALUES (114, 0, '诗', '0', 'app_chinese_poetry_category', NULL, 'default', 'N', '0', 'admin', '2024-05-22 21:56:57', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-05-13 12:27:29', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-05-13 12:27:30', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-05-13 12:27:31', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-05-13 12:27:32', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-05-13 12:27:33', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-05-13 12:27:34', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-05-13 12:27:35', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-05-13 12:27:36', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-05-13 12:27:37', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-05-13 12:27:38', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '小学年级', 'app_primary_grade', '0', 'admin', '2024-05-14 09:58:56', 'admin', '2024-05-14 09:59:39', '小学年级列表');
INSERT INTO `sys_dict_type` VALUES (12, '学期', 'app_term', '0', 'admin', '2024-05-14 10:02:36', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (13, '单元', 'app_lesson_unit', '0', 'admin', '2024-05-14 10:04:19', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (14, '第几课', 'app_lesson', '0', 'admin', '2024-05-14 10:06:22', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (15, '词语分类', 'app_chinese_wordtype', '0', 'admin', '2024-05-14 10:16:27', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (16, '单词分类', 'app_english_wordtype', '0', 'admin', '2024-05-15 22:34:45', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (17, '单词数据分类', 'app_english_lesson_datatype', '0', 'admin', '2024-05-16 13:50:30', 'admin', '2024-05-16 14:01:51', NULL);
INSERT INTO `sys_dict_type` VALUES (18, '诗词分类', 'app_chinese_poetry_category', '0', 'admin', '2024-05-21 13:53:16', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-05-13 12:28:22', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-05-13 12:28:23', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-05-13 12:28:24', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1069 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-05-13 12:24:22', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 5, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-05-13 12:24:23', 'admin', '2024-05-23 11:39:52', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 6, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-05-13 12:24:24', 'admin', '2024-05-23 11:40:16', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-05-13 12:24:26', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-05-13 12:24:27', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-05-13 12:24:28', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-05-13 12:24:29', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-05-13 12:24:30', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-05-13 12:24:31', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-05-13 12:24:32', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-05-13 12:24:33', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-05-13 12:24:34', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-05-13 12:24:35', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-05-13 12:24:36', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-05-13 12:24:37', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-05-13 12:24:38', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-05-13 12:24:39', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-05-13 12:24:40', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-05-13 12:24:41', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-05-13 12:24:41', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-05-13 12:24:41', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-05-13 12:24:42', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-05-13 12:24:42', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-05-13 12:24:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-05-13 12:24:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-05-13 12:24:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-05-13 12:24:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-05-13 12:24:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-05-13 12:24:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-05-13 12:24:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-05-13 12:24:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-05-13 12:24:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-05-13 12:24:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-05-13 12:24:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-05-13 12:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-05-13 12:24:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-05-13 12:24:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-05-13 12:24:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-05-13 12:24:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-05-13 12:24:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-05-13 12:24:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-05-13 12:25:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-05-13 12:25:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-05-13 12:25:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-05-13 12:25:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-05-13 12:25:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-05-13 12:25:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-05-13 12:25:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-05-13 12:25:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-05-13 12:25:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-05-13 12:25:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-05-13 12:25:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-05-13 12:25:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-05-13 12:25:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-05-13 12:25:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-05-13 12:25:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-05-13 12:25:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-05-13 12:25:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-05-13 12:25:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-05-13 12:25:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-05-13 12:25:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-05-13 12:25:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-05-13 12:25:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-05-13 12:25:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-05-13 12:25:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-05-13 12:25:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-05-13 12:25:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-05-13 12:25:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-05-13 12:25:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-05-13 12:25:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-05-13 12:25:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-05-13 12:25:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-05-13 12:25:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-05-13 12:25:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-05-13 12:25:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-05-13 12:25:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-05-13 12:25:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-05-13 12:25:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-05-13 12:25:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-05-13 12:25:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-05-13 12:25:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-05-13 12:25:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-05-13 12:25:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-05-13 12:25:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '小学语文', 0, 1, 'appchinese', NULL, NULL, 1, 0, 'M', '0', '0', '', 'example', 'admin', '2024-05-13 15:10:17', 'admin', '2024-05-23 11:35:42', '');
INSERT INTO `sys_menu` VALUES (1062, '语文词语表', 1061, 1, 'word', 'app/chinese/word/index', NULL, 1, 0, 'C', '0', '0', 'app:chinese:list', 'example', 'admin', '2024-05-13 15:12:49', 'admin', '2024-05-23 11:09:40', '');
INSERT INTO `sys_menu` VALUES (1063, '单词音标对照表', 1068, 22, 'pronounce', 'app/english/pronounce/index', NULL, 1, 0, 'C', '0', '0', 'app:pronounce:list', 'component', 'admin', '2024-05-15 22:07:39', 'admin', '2024-05-23 11:42:05', '');
INSERT INTO `sys_menu` VALUES (1064, '英语学习手册', 1068, 21, 'lesson', 'app/english/lesson/index', NULL, 1, 0, 'C', '0', '0', 'app:lesson:list', 'dict', 'admin', '2024-05-16 13:01:49', 'admin', '2024-05-23 11:41:18', '');
INSERT INTO `sys_menu` VALUES (1065, '诗词与积累', 1061, 2, 'poetry', 'app/chinese/poetry/index', NULL, 1, 0, 'C', '0', '0', 'app:poetry:list', 'dict', 'admin', '2024-05-21 14:26:42', 'admin', '2024-05-24 16:36:27', '');
INSERT INTO `sys_menu` VALUES (1066, '语文词语注释', 1061, 4, 'comment', 'app/chinese/comment/index', NULL, 1, 0, 'C', '0', '0', 'app:comment:list', 'color', 'admin', '2024-05-21 14:27:50', 'admin', '2024-05-23 11:30:04', '');
INSERT INTO `sys_menu` VALUES (1067, '诗词积累导入', 1061, 3, 'poetryjson', 'app/chinese/poetryjson/index', NULL, 1, 0, 'C', '0', '0', 'app:poetryjson:list', 'date', 'admin', '2024-05-23 11:13:02', 'admin', '2024-05-24 17:35:32', '');
INSERT INTO `sys_menu` VALUES (1068, '小学英语', 0, 2, 'appenglish', NULL, NULL, 1, 0, 'M', '0', '0', '', 'wechat', 'admin', '2024-05-23 11:38:36', 'admin', '2024-05-23 11:39:20', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-05-13 12:28:29', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-05-13 12:28:30', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-05-13 12:24:12', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-05-13 12:24:13', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-05-13 12:24:14', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-05-13 12:24:15', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-05-13 12:24:18', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-05-13 12:24:19', 'admin', '2024-05-28 16:21:58', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (2, 1062);
INSERT INTO `sys_role_menu` VALUES (2, 1063);
INSERT INTO `sys_role_menu` VALUES (2, 1064);
INSERT INTO `sys_role_menu` VALUES (2, 1065);
INSERT INTO `sys_role_menu` VALUES (2, 1066);
INSERT INTO `sys_role_menu` VALUES (2, 1068);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$w1Cnu/B4M36xSFT4h1GwzuU.xEcxL/g9wi8vSs8Ef7Ij6INf4AiOa', '0', '0', '120.230.131.101', '2024-05-30 13:19:53', 'admin', '2024-05-13 12:24:08', '', '2024-05-30 13:19:57', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-05-13 12:24:09', 'admin', '2024-05-13 12:24:09', 'admin', '2024-05-25 15:22:37', '测试员ABC');
INSERT INTO `sys_user` VALUES (3, NULL, 'test', 'test', '00', '', '', '0', '/profile/avatar/2024/05/28/blob_20240528163023A001.png', '$2a$10$J8lMsyfhKIhnrg4ohKIUke7b1sQ.jf0qmKzNtOs6t.Hi9BYvFQ5nG', '0', '0', '223.104.84.70', '2024-05-30 12:33:48', 'admin', '2024-05-28 16:18:45', '', '2024-05-30 12:33:52', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 2);

SET FOREIGN_KEY_CHECKS = 1;
