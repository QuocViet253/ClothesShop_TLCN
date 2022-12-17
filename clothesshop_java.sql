/*
 Navicat Premium Data Transfer

 Source Server         : db
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : clothesshop_java

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 17/12/2022 12:14:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `active` bit(1) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin` bit(1) NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (2, b'1', NULL, b'1', NULL, '2022-11-28 23:17:29', '2022-11-28 23:18:24', 'test@gmail.com', NULL, '1234', NULL, '03', '2022-11-28 23:18:24', 'admin');
INSERT INTO `account` VALUES (3, b'1', NULL, b'0', NULL, '2022-11-28 23:20:50', '2022-11-28 23:21:14', 'test1@gmail.com', NULL, '1234', NULL, '03', '2022-11-28 23:21:14', 'user1');
INSERT INTO `account` VALUES (4, b'1', NULL, b'0', NULL, '2022-12-03 20:15:28', '2022-12-08 00:12:24', 'vdoan253@gmail.com', NULL, '1234', NULL, '03', '2022-12-08 00:12:24', 'Viet Doan');
INSERT INTO `account` VALUES (5, b'1', NULL, b'0', NULL, '2022-12-03 20:22:14', '2022-12-03 20:22:14', 'test@gmail.com', NULL, '123', NULL, '03', '2022-12-03 20:22:14', 'test');
INSERT INTO `account` VALUES (6, b'1', NULL, b'0', NULL, '2022-12-03 20:28:37', '2022-12-03 20:29:21', '19110314@student.hcmute.edu.vn', NULL, 'mkrandom550', NULL, '03', '2022-12-03 20:29:21', 'Viet Doan');
INSERT INTO `account` VALUES (7, b'1', NULL, b'0', NULL, '2022-12-08 09:36:58', '2022-12-08 09:37:38', 'tranvolam12345@gmail.com', NULL, 'mkrandom698', NULL, '03', '2022-12-08 09:37:38', 'Lam');
INSERT INTO `account` VALUES (8, b'1', NULL, b'0', NULL, '2022-12-17 02:18:37', '2022-12-17 02:20:49', 'huong707396@gmail.com', NULL, 'mkrandom72', NULL, '03', '2022-12-17 02:20:49', 'Huong');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, 'BRAND_CsRPtVvf', 'GUCCI', NULL, '2022-12-17 01:24:19', 'https://kicksgaleria.com/wp-content/uploads/2019/01/GUCCI_THUMB_237af47c-c672-444b-bd49-5bf9b5d4b99b_394x.jpg', 1, '2022-12-17 01:24:19');
INSERT INTO `brand` VALUES (2, 'BRAND_CsRPtVvf', 'BOO', '2022-11-28 22:54:07', '2022-11-28 22:54:07', 'https://downloadlogomienphi.com/sites/default/files/logos/download-logo-vector-boo-mien-phi.jpg', 1, '2022-11-28 22:54:07');
INSERT INTO `brand` VALUES (3, 'BRAND_CsRPtVvf', 'TokyoLife', '2022-11-28 22:54:38', '2022-11-28 22:54:38', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkbHjDLofjZVRa3e1T-yfIKv4ERZ-ORCs6M9a0ahb5coGQufTDVjhtP5oN5Dxsxzrxc14&usqp=CAU', 1, '2022-11-28 22:54:38');
INSERT INTO `brand` VALUES (4, 'BRAND_PjKTwb31', 'YSL', '2022-12-04 21:04:16', '2022-12-04 21:04:16', 'https://th.bing.com/th/id/R.6ecd3dd5e0ba708f42da8d9a48005244?rik=jlnYLsW%2bh0HeUg&riu=http%3a%2f%2flogonoid.com%2fimages%2fyves-saint-laurent-logo.jpg&ehk=I4Uk564%2bGRneZbujK2Sz%2f8Rg1336w8dUHP%2b2CS0j3wc%3d&risl=&pid=ImgRaw&r=0', 1, '2022-12-04 21:04:16');
INSERT INTO `brand` VALUES (5, 'BRAND_cHHs0I9F', 'Louis Vuitton', '2022-12-12 22:08:27', '2022-12-12 22:08:27', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Louis_Vuitton_logo_and_wordmark.svg/1679px-Louis_Vuitton_logo_and_wordmark.svg.png', 1, '2022-12-12 22:08:27');
INSERT INTO `brand` VALUES (6, 'BRAND_wkh42PEw', 'Hermes', '2022-12-12 22:10:11', '2022-12-12 22:10:11', 'https://assets.turbologo.com/blog/en/2021/07/07061330/hermes-symbol-logo-1.png', 1, '2022-12-12 22:10:11');
INSERT INTO `brand` VALUES (7, 'BRAND_wkh42PEw', 'Prada', '2022-12-12 22:11:11', '2022-12-12 22:11:11', 'https://1000logos.net/wp-content/uploads/2017/05/Prada-Logo.png', 1, '2022-12-12 22:11:11');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'CATE_ygMJukXN', 'Áo dài mùa đông', NULL, '2022-12-17 01:40:07', 1, '2022-12-17 01:40:07');
INSERT INTO `category` VALUES (2, 'CATE_ygMJukXN', 'Quần dài', NULL, '2022-11-28 23:51:04', 1, '2022-11-28 23:51:04');
INSERT INTO `category` VALUES (3, 'CATE_ygMJukXN', 'Giày', NULL, '2022-11-28 23:51:09', 1, '2022-11-28 23:51:09');
INSERT INTO `category` VALUES (4, 'CATE_rJxFZCzu', 'Áo Croptop', '2022-12-04 21:05:44', '2022-12-04 21:05:44', 2, '2022-12-04 21:05:44');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `star` int NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 7, 'Tốt', '2022-12-08 09:39:07', 1, 3);

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount`  (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `discount_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `discount_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `end_date` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`discount_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discount
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_item` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `type_payment` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 2, 'HCM', '2022-11-28 23:51:47', '2022-11-28 23:51:47', 'TESTER', 'note', '[{\"id\":0.16924474601488848,\"product_id\":1,\"product_name\":\"Ão hoodie dÃ i tay\",\"image\":\"https://www.berchielli.co.uk/wp-content/themes/barberry/images/placeholder.jpg\",\"count\":1,\"price\":900000,\"total\":\"1 x 900000\",\"color\":\"#da1616\",\"size\":\"S\"}]', '08998987', 2, 1, '2022-11-28 23:51:47');
INSERT INTO `orders` VALUES (2, 3, 'Viet Nam', '2022-12-07 22:33:57', '2022-12-07 22:33:57', 'Dang', '1234', '[{\"id\":0.2153363306050311,\"product_id\":7,\"product_name\":\"Clarice Blouse in Cream by The Seamstress of Bloomsbury\",\"image\":\"https://www.berchielli.co.uk/wp-content/themes/barberry/images/placeholder.jpg\",\"count\":4,\"price\":1440439,\"total\":\"4 x 1440439\",\"size\":\"\"}]', '0932331414', 2, 1, '2022-12-07 22:33:57');
INSERT INTO `orders` VALUES (3, 7, 'Viet Nam', '2022-12-08 09:50:27', '2022-12-08 09:50:27', 'Lam', NULL, '[{\"id\":0.8545305791753253,\"product_id\":1,\"product_name\":\"Áo hoddie dài tay\",\"image\":\"https://cf.shopee.vn/file/8206323096dcbde4c42d1516e91f1f12_tn\",\"count\":10,\"price\":900000,\"total\":\"10 x 900000\",\"size\":\"\"},{\"id\":0.4430659008106026,\"product_id\":1,\"product_name\":\"Áo hoddie dài tay\",\"image\":\"https://cf.shopee.vn/file/8206323096dcbde4c42d1516e91f1f12_tn\",\"count\":1,\"price\":900000,\"total\":\"1 x 900000\",\"color\":\"#da1616\",\"size\":\"\"}]', '1323', 1, 1, '2022-12-08 09:50:27');
INSERT INTO `orders` VALUES (4, 4, '416', '2022-12-16 23:06:57', '2022-12-16 23:06:57', 'Nhi', NULL, '[{\"id\":0.9074034056641576,\"product_id\":7,\"product_name\":\"Clarice Blouse in Cream by The Seamstress of Bloomsbury\",\"image\":\"https://i.etsystatic.com/12914758/r/il/573b58/1063311093/il_1140xN.1063311093_e9sw.jpg\",\"count\":3,\"price\":1440439,\"total\":\"3 x 1440439\",\"size\":\"\"}]', '0979796721', 1, 1, '2022-12-16 23:06:57');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `amount` int NULL DEFAULT NULL,
  `brand_id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `gender` int NULL DEFAULT NULL,
  `origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 8, 2, 1, NULL, '2022-12-08 10:10:39', 3, 'Việt Nam', 900000, 'Áo hoddie dài tay', '', 1, '2022-12-08 10:10:39');
INSERT INTO `product` VALUES (2, 10, 2, 1, '2022-11-28 23:01:34', '2022-11-28 23:01:34', 1, 'Việt Nam', 700000, 'Hoddie nam', 'S,L,XL', 1, '2022-11-28 23:01:34');
INSERT INTO `product` VALUES (3, 11, 1, 2, NULL, '2022-12-09 12:17:54', 1, 'Việt Nam', 400000, 'Quần jogger nam', 'S,L,XL,XXL,M', 1, '2022-12-09 12:17:54');
INSERT INTO `product` VALUES (4, 12, 3, 2, '2022-11-28 23:05:19', '2022-11-28 23:05:19', 1, 'Mỹ', 300000, 'Quần thể thao', 'XL,XXL', 1, '2022-11-28 23:05:19');
INSERT INTO `product` VALUES (5, 12, 1, 3, '2022-11-28 23:07:10', '2022-11-28 23:07:10', 3, 'Mỹ', 2000000, 'Giày converse', 'XL,XXL,M,L', 1, '2022-11-28 23:07:10');
INSERT INTO `product` VALUES (6, 10, 1, 3, '2022-11-28 23:08:27', '2022-11-28 23:08:27', 1, 'Mỹ', 100000000, 'Giày gucci nam', 'XL,XXL,M,L', 1, '2022-11-28 23:08:27');
INSERT INTO `product` VALUES (7, 94, 4, 4, NULL, '2022-12-16 23:08:06', 1, 'USA', 1440439, 'Clarice Blouse in Cream by The Seamstress of Bloomsbury', 'M,S,L', 1, '2022-12-16 23:08:06');
INSERT INTO `product` VALUES (8, 1, 7, 2, NULL, '2022-12-12 22:30:52', 1, 'Italy', 1000000, 'Quần dài Prada', 'L,S,M,XL', 1, '2022-12-12 22:30:52');
INSERT INTO `product` VALUES (12, 3, 7, 1, '2022-12-17 01:41:37', '2022-12-17 01:41:37', 2, 'Italy', 2500000, 'Coat in Natural', 'S,M,L', 1, '2022-12-17 01:41:37');

-- ----------------------------
-- Table structure for product_color
-- ----------------------------
DROP TABLE IF EXISTS `product_color`;
CREATE TABLE `product_color`  (
  `product_color_id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`product_color_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_color
-- ----------------------------
INSERT INTO `product_color` VALUES (1, '#da1616', 1);
INSERT INTO `product_color` VALUES (2, '#876e6e', 1);
INSERT INTO `product_color` VALUES (3, '#270ced', 1);
INSERT INTO `product_color` VALUES (4, '#050505', 2);
INSERT INTO `product_color` VALUES (5, '#b5b5b5', 2);
INSERT INTO `product_color` VALUES (6, '#050505', 3);
INSERT INTO `product_color` VALUES (7, '#322f2f', 4);
INSERT INTO `product_color` VALUES (8, '#0a0a0a', 5);
INSERT INTO `product_color` VALUES (9, '#a13636', 6);
INSERT INTO `product_color` VALUES (11, '#a03761', 7);
INSERT INTO `product_color` VALUES (12, '#3764a0', 7);
INSERT INTO `product_color` VALUES (13, '#c12f2f', 8);
INSERT INTO `product_color` VALUES (14, '#1b1818', 8);
INSERT INTO `product_color` VALUES (15, '#ffffff', 8);
INSERT INTO `product_color` VALUES (16, '#a32e2e', 12);
INSERT INTO `product_color` VALUES (17, '#2e32a3', 12);
INSERT INTO `product_color` VALUES (19, '#aa55a7', 12);

-- ----------------------------
-- Table structure for product_detail
-- ----------------------------
DROP TABLE IF EXISTS `product_detail`;
CREATE TABLE `product_detail`  (
  `product_detail_id` int NOT NULL AUTO_INCREMENT,
  `detail` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`product_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_detail
-- ----------------------------
INSERT INTO `product_detail` VALUES (8, 'Cửa hàng của chúng tôi luôn luôn đặt chất lượng sản phẩm lên hàng đầu với 100% là hàng chính hãng.', 1);
INSERT INTO `product_detail` VALUES (9, 'Cửa hàng của chúng tôi luôn luôn đặt chất lượng sản phẩm lên hàng đầu với 100% là hàng chính hãng.', 2);
INSERT INTO `product_detail` VALUES (10, 'Cửa hàng của chúng tôi luôn luôn đặt chất lượng sản phẩm lên hàng đầu với 100% là hàng chính hãng.', 4);
INSERT INTO `product_detail` VALUES (11, 'Cửa hàng của chúng tôi luôn luôn đặt chất lượng sản phẩm lên hàng đầu với 100% là hàng chính hãng.', 6);
INSERT INTO `product_detail` VALUES (12, 'Cửa hàng của chúng tôi luôn luôn đặt chất lượng sản phẩm lên hàng đầu với 100% là hàng chính hãng.', 5);
INSERT INTO `product_detail` VALUES (13, 'Áo dành nữ độ tuổi từ 18-30', 7);
INSERT INTO `product_detail` VALUES (14, 'Thoải mái, trẻ trung', 7);
INSERT INTO `product_detail` VALUES (15, 'Chiều dài quần: Chiều dài đầy đủ\nMẫu: Trơn, In\nQuần dài ống suông rộng logo thương hiệu Prada cao cấp có 2 màu đang được bán bởi shop chưa được chứng thực nên dù giá có tốt đến đâu thì bạn vẫn phải trao đổi kỹ càng về cách thức kiểm tra hàng hóa sao cho cả 2 bên đều hài lòng. Hiện đã có 100 sản phẩm được bán ra nên bạn hay nhanh chân lên để chọn lấy sản phẩm xịn nhất nhưng phù hợp với túi tiền, ngoại hình của mình nhất.', 8);
INSERT INTO `product_detail` VALUES (16, 'Áo mịn, ấm áp, phong cách', 12);

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `product_image_id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`product_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (1, 'https://cf.shopee.vn/file/8206323096dcbde4c42d1516e91f1f12_tn', 1);
INSERT INTO `product_image` VALUES (2, 'https://cf.shopee.vn/file/c6f8c93a192df01a02e27316fcf516f9_tn', 1);
INSERT INTO `product_image` VALUES (3, 'https://cdn2.boo.vn/media/catalog/product/cache/8d8fdfafaad87c521293245b3f6eed47/1/_/1.2.19.3.02.001.222.23-10200011-bst-1.jpg', 1);
INSERT INTO `product_image` VALUES (4, 'https://cdn.shopify.com/s/files/1/0354/5169/9333/products/Ao-hoodie-1-Black-12-ZiZoou-Store.jpg?v=1663147569', 2);
INSERT INTO `product_image` VALUES (5, 'https://cdn.shopify.com/s/files/1/0354/5169/9333/products/Ao-hoodie-1-Grey-4-ZiZoou-Store.jpg?v=1640771799', 2);
INSERT INTO `product_image` VALUES (6, 'https://cdn.shopify.com/s/files/1/0354/5169/9333/products/Ao-hoodie-1-Black-5-1-ZiZoou-Store.jpg?v=1640769876', 2);
INSERT INTO `product_image` VALUES (7, 'https://cdn2.yame.vn/pimg/quan-jogger-nam-y2010-jean-a01-0018931/65b757e1-3e08-0100-6158-00173fc116a0.jpg?w=540&h=756&c=true&ntf=false', 3);
INSERT INTO `product_image` VALUES (8, 'https://cdn2.yame.vn/pimg/quan-jogger-toi-gian-m10-0021158/73b32b54-750d-7e00-051c-00195d31c403.jpg?w=540&h=756&c=true&ntf=false', 3);
INSERT INTO `product_image` VALUES (9, 'https://cdn2.yame.vn/pimg/quan-dai-jogger-toi-gian-m1-0020736/9aed106e-8495-2300-cf15-00192585122e.jpg?w=540&h=756&c=true&ntf=false', 4);
INSERT INTO `product_image` VALUES (10, 'https://cdn2.yame.vn/pimg/quan-ong-rong-on-gian-y-nguyen-ban-ver17-0021026/b4c7011e-2817-e100-ad06-001973399e9d.jpg?w=540&h=756&c=true&ntf=false', 4);
INSERT INTO `product_image` VALUES (11, 'https://cf.shopee.vn/file/48a2273362b284d509bbbd502b8e0688_tn', 5);
INSERT INTO `product_image` VALUES (12, 'https://giaydino.com/wp-content/uploads/2021/11/Giay-Gucci-Son-Tung-hang-Sieu-Cap-scaled.jpg', 6);
INSERT INTO `product_image` VALUES (15, 'https://i.etsystatic.com/12914758/r/il/573b58/1063311093/il_1140xN.1063311093_e9sw.jpg', 7);
INSERT INTO `product_image` VALUES (16, 'https://i.etsystatic.com/12914758/r/il/e69ab1/2001619057/il_1140xN.2001619057_hd2b.jpg', 7);
INSERT INTO `product_image` VALUES (17, 'https://cf.shopee.vn/file/dfacec1ba573ffc29da12c971b27eda1', 8);
INSERT INTO `product_image` VALUES (18, 'https://cf.shopee.vn/file/05ea2b6c7ed02bb0a41e2f24880ca132', 8);
INSERT INTO `product_image` VALUES (21, 'https://d3vfig6e0r0snz.cloudfront.net/rcYjnYuenaTH5vyDF/images/products/92e972100bd3c73f30885ae99747cabf.webp', 12);
INSERT INTO `product_image` VALUES (23, 'https://d3vfig6e0r0snz.cloudfront.net/rcYjnYuenaTH5vyDF/images/products/b5334a84d792e3b09846d3dc398e241a.webp', 12);
INSERT INTO `product_image` VALUES (24, 'https://d3vfig6e0r0snz.cloudfront.net/rcYjnYuenaTH5vyDF/images/products/31f73e6b8abed08ec66435932a055f70.webp', 12);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NULL DEFAULT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `role_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '2022-11-28 23:04:02', '2022-11-28 23:04:02', '001', 'ADMIN', '2022-11-28 23:04:02');
INSERT INTO `role` VALUES (2, '2022-11-28 23:04:09', '2022-11-28 23:04:09', '002', 'USER', '2022-11-28 23:04:09');
INSERT INTO `role` VALUES (3, '2022-11-28 23:04:15', '2022-11-28 23:04:15', '003', 'MANAGER', '2022-11-28 23:04:15');

SET FOREIGN_KEY_CHECKS = 1;
