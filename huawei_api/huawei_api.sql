/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : huawei_api

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 27/07/2020 15:03:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for assess
-- ----------------------------
DROP TABLE IF EXISTS `assess`;
CREATE TABLE `assess`  (
  `assess_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评价id',
  `assess_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评价的用户名称',
  `assess_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评价的图片',
  `assess_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评价的用户头像',
  `assess_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评价的内容 ',
  `assess_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评价的星级',
  `good_id` int(11) NULL DEFAULT NULL COMMENT '被评价的商品id',
  PRIMARY KEY (`assess_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assess
-- ----------------------------
INSERT INTO `assess` VALUES (1, '会飞的羊', NULL, NULL, '还可以', '5', 1);

-- ----------------------------
-- Table structure for cates
-- ----------------------------
DROP TABLE IF EXISTS `cates`;
CREATE TABLE `cates`  (
  `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `cate_pid` int(10) NULL DEFAULT NULL COMMENT '分类父id',
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cates
-- ----------------------------
INSERT INTO `cates` VALUES (1, '新品', NULL);
INSERT INTO `cates` VALUES (2, '华为手机', NULL);
INSERT INTO `cates` VALUES (3, '荣耀手机', NULL);
INSERT INTO `cates` VALUES (4, '笔记本&平板', NULL);
INSERT INTO `cates` VALUES (5, '智能穿戴&VR', NULL);
INSERT INTO `cates` VALUES (6, '智慧屏', NULL);
INSERT INTO `cates` VALUES (7, '智能家居', NULL);
INSERT INTO `cates` VALUES (8, '耳机音箱', NULL);
INSERT INTO `cates` VALUES (9, '专属配件', NULL);
INSERT INTO `cates` VALUES (10, '通用配件', NULL);
INSERT INTO `cates` VALUES (11, '生态产品', NULL);
INSERT INTO `cates` VALUES (12, ' 增值服务', NULL);
INSERT INTO `cates` VALUES (13, ' 智能计算', NULL);
INSERT INTO `cates` VALUES (14, 'HUAWEI P系列', 2);
INSERT INTO `cates` VALUES (15, 'HUAWEI Mate系列', 2);
INSERT INTO `cates` VALUES (16, 'HUAWEI nova系列', 2);
INSERT INTO `cates` VALUES (17, '华为畅享系列', 2);
INSERT INTO `cates` VALUES (18, 'HUAWEI 麦芒系列', 2);
INSERT INTO `cates` VALUES (19, '荣耀 V系列', 3);
INSERT INTO `cates` VALUES (20, '荣耀 HONOR系列', 3);
INSERT INTO `cates` VALUES (21, '荣耀 X系列', 3);
INSERT INTO `cates` VALUES (22, '荣耀 Play系列', 3);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `good_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `good_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片路径',
  `good_price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `good_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品详情/福利信息',
  `good_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品的颜色(以,分隔)',
  `good_edition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品的版本(以,分隔)',
  `good_set` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品的套餐(以,分隔)',
  `cate_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品分类id',
  `gift_id` int(10) NULL DEFAULT NULL COMMENT '赠品id',
  `key_words` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键词搜索',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'HUAWEI P40 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 4488.00, '①享6期分期免息', '亮黑色,深海蓝,晨曦金,零度白,冰霜银', '5G全网通 8GB+256GB,5G全网通 8GB+128GB,5G全网通 6GB+128GB', '官方标配', '14', 1, '手机');
INSERT INTO `goods` VALUES (2, '荣耀30 Pro 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '15', NULL, '手机');
INSERT INTO `goods` VALUES (3, '荣耀30 Pro 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '16', NULL, NULL);
INSERT INTO `goods` VALUES (4, '荣耀30 Pro 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '20', NULL, NULL);
INSERT INTO `goods` VALUES (5, '荣耀30 Pro 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '20', NULL, NULL);
INSERT INTO `goods` VALUES (6, '荣耀30 Pro 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '20', NULL, NULL);
INSERT INTO `goods` VALUES (7, '荣耀30 Pro 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '20', NULL, NULL);
INSERT INTO `goods` VALUES (8, '荣耀30 Pro 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '20', NULL, NULL);
INSERT INTO `goods` VALUES (9, '荣耀30 Pro 5G', 'https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '20', NULL, NULL);
INSERT INTO `goods` VALUES (10, '荣耀30 Pro 5G','https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '20', NULL, NULL);
INSERT INTO `goods` VALUES (11, '荣耀30 Pro 5G','https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '15', NULL, '手机');
INSERT INTO `goods` VALUES (12, '荣耀30 Pro 5G','https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '15', NULL, '手机');
INSERT INTO `goods` VALUES (13, '荣耀30 Pro 5G','https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '15', NULL, '手机');
INSERT INTO `goods` VALUES (14, '荣耀30 Pro 5G','https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '15', NULL, '手机');
INSERT INTO `goods` VALUES (15, '荣耀30 Pro 5G','https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '15', NULL, '手机');
INSERT INTO `goods` VALUES (16, '荣耀30 Pro 5G','https://res.vmallres.com/pimages//product/6901443381319/428_428_202FBD4FDEDB764587B5EC0AB7CDCD4F4A9AE4D93F6D953Dmp.png', 3999.00, '①享24期分期免息', '幻夜黑,绿野仙踪,钛空银', 'Pro 8GB+128GB,Pro 8GB+256Gb,Pro+ 8GB+256GB,Pro+ 12GB+256GB', '官方标配', '15', NULL, '手机');
INSERT INTO `goods` VALUES (17, 'HUAWEI MateBook D 14','https://res.vmallres.com/pimages//product/6901443407224/428_428_3902B07CFCF23A955D3BF09823304B91BFCF9973436C427Dmp.png', 4099.00, 'null', '深空灰,皓月银', 'I5/8GB/512GB,I7/16GB/512GB,I5/16GB/512GB,(7nm)R5/16GB/512GB,(7nm)R5/16GB/512GB', '官方标配', '15', NULL, '笔记本');
INSERT INTO `goods` VALUES (18, '荣耀笔记本Pro 2020新款 锐龙版','https://res.vmallres.com/pimages//product/6901443407224/428_428_3902B07CFCF23A955D3BF09823304B91BFCF9973436C427Dmp.png', 4499.00, 'null', '冰河银,星空灰', 'I5/16GB/512GB 独显,I7/16GB/512GB 独显', '官方标配', '15', NULL, '笔记本');
INSERT INTO `goods` VALUES (19, 'HUAWEI MateBook 13','https://res.vmallres.com/pimages//product/6901443356683/428_428_3E0BA2E097C042A465733803387AFAFD7E1A5EB2F5DD9049mp.png', 4399.00, 'null', '冰河银,星空灰', 'R5/8GB/512GB,R5/16GB/512GB', '官方标配', '15', NULL, '笔记本');
INSERT INTO `goods` VALUES (20, 'HUAWEI MateBook X Pro 2020 款','https://res.vmallres.com/pimages//product/6972453160041/428_428_0611F343EBFCADD6C45576CF7000D212A9AF943A56F7EB24mp.png', 7999.00, 'null', '皓月银,深空灰,樱粉金,翡冷翠', 'R5/8GB/512GB,R5/16GB/512GB', '官方标配', '15', NULL, '笔记本');
INSERT INTO `goods` VALUES (21, 'HUAWEI MatePad 10.8','https://res.vmallres.com/pimages//product/6972453166357/428_428_E45D54999ACF63F5CF8C4A565C7F067787A596BAA9A1A7CAmp.png', 2399.00, 'null', '香槟金,银钻灰', 'WiFi 6GB+64GB,WiFi 6GB+128GB,6+256GB WiFi版+键盘', '官方标配', '15', NULL, '平板');
INSERT INTO `goods` VALUES (22, 'HUAWEI MatePad 10.8','https://res.vmallres.com/pimages//product/6972453166357/428_428_E45D54999ACF63F5CF8C4A565C7F067787A596BAA9A1A7CAmp.png', 2399.00, 'null', '香槟金,银钻灰', 'WiFi 6GB+64GB,WiFi 6GB+128GB,6+256GB WiFi版+键盘', '官方标配', '15', NULL, '平板');
INSERT INTO `goods` VALUES (23, 'HUAWEI MatePad 10.8','https://res.vmallres.com/pimages//product/6972453166357/428_428_E45D54999ACF63F5CF8C4A565C7F067787A596BAA9A1A7CAmp.png', 2399.00, 'null', '香槟金,银钻灰', 'WiFi 6GB+64GB,WiFi 6GB+128GB,6+256GB WiFi版+键盘', '官方标配', '15', NULL, '平板');
INSERT INTO `goods` VALUES (24, 'HUAWEI MatePad 10.8','https://res.vmallres.com/pimages//product/6972453165985/428_428_93BCD651C90D2B5EFD779DB353F1A2E36DFAE529FA49026Emp.png', 2399.00, 'null', '香槟金,银钻灰', 'WiFi 6GB+64GB,WiFi 6GB+128GB,6+256GB WiFi版+键盘', '官方标配', '15', NULL, '平板');
-- INSERT INTO `goods` VALUES (25, 'HUAWEI MatePad 10.8','https://res.vmallres.com/pimages//product/6972453166357/428_428_E45D54999ACF63F5CF8C4A565C7F067787A596BAA9A1A7CAmp.png', 2399.00, 'null', '香槟金,银钻灰', 'WiFi 6GB+64GB,WiFi 6GB+128GB,6+256GB WiFi版+键盘', '官方标配', '15', NULL, '平板');
INSERT INTO `goods` VALUES (26, '华为儿童手表 4X','https://res.vmallres.com/pimages//product/6972453165985/428_428_93BCD651C90D2B5EFD779DB353F1A2E36DFAE529FA49026Emp.png', 1399.00, 'null', '冰川白,映海蓝,樱语粉', 'null', '官方标配', '15', NULL, '穿戴');
INSERT INTO `goods` VALUES (27, 'HUAWEI WATCH GT 2','https://res.vmallres.com/pimages//product/6901443322237/428_428_B52943ACCB70E45E5223EC772D4DB9BBF8478C6A163829D8mp.png', 1288.00, 'null', '砂硕棕,赤霞橙,曜石黑,钛银灰', '46mm,42mm', '官方标配', '15', NULL, '穿戴');
INSERT INTO `goods` VALUES (28, 'HUAWEI WATCH GT 2e','https://res.vmallres.com/pimages//product/6901443375271/428_428_4C7F8433FD4422B64C447BCB4002AD184DDFE3771DD41909mp.png', 1188.00, 'null', '曜石黑,熔岩红,薄荷绿,冰川白', '运动版,活力版', '官方标配', '15', NULL, '穿戴');

SET FOREIGN_KEY_CHECKS = 1;
