/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100136
 Source Host           : localhost:3306
 Source Schema         : ecommerce

 Target Server Type    : MySQL
 Target Server Version : 100136
 File Encoding         : 65001

 Date: 11/06/2020 20:23:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar_produk` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_product` int(13) NOT NULL,
  `des_product` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createdate` date NOT NULL,
  PRIMARY KEY (`id_product`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Sepatu Sneaker Original', 'sneaker.jpg', 200000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n	cillum dolore eu fugiat nulla pariatur.', '2020-01-17');
INSERT INTO `product` VALUES (2, 'Sepatu Pantofel Broodoo', 'pantofel.png', 500000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n	cillum dolore eu fugiat nulla pariatur.', '2020-01-30');
INSERT INTO `product` VALUES (3, 'jam tangan jepang', 'jam11.jpg', 300000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n	cillum dolore eu fugiat nulla pariatur.', '2020-01-17');
INSERT INTO `product` VALUES (4, 'jam tangan malaysia', 'jam12.jpg', 200000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n	cillum dolore eu fugiat nulla pariatur.', '2020-01-30');

SET FOREIGN_KEY_CHECKS = 1;
