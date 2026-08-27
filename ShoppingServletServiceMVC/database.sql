-- ===================================================
-- CSDL: ServletCRUDMVC (MySQL Database Script)
-- Môn học: Lập trình Web (WEBPR330479)
-- Giảng viên: ThS. Nguyễn Hữu Trung - SPKT TP.HCM
-- ===================================================

CREATE DATABASE IF NOT EXISTS `ServletCRUDMVC` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `ServletCRUDMVC`;

-- ----------------------------
-- 1. Bảng User (Tài khoản người dùng & phân quyền)
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `username` VARCHAR(50) NOT NULL UNIQUE,
  `fullname` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `avatar` VARCHAR(255) DEFAULT NULL,
  `roleid` INT NOT NULL DEFAULT 5, -- 1: Admin, 2: Manager/Seller, 5: User
  `phone` VARCHAR(20) DEFAULT NULL,
  `createdDate` DATE DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dữ liệu mẫu bảng User (Mật khẩu mặc định: 123)
INSERT INTO `User` (`id`, `email`, `username`, `fullname`, `password`, `avatar`, `roleid`, `phone`, `createdDate`) VALUES
(1, 'admin@iotstar.vn', 'admin', 'Quản Trị Viên', '123', NULL, 1, '0901234567', CURDATE()),
(2, 'manager@iotstar.vn', 'manager', 'Quản Lý Shop', '123', NULL, 2, '0907654321', CURDATE()),
(3, 'user01@gmail.com', 'user01', 'Nguyễn Văn A', '123', NULL, 5, '0987654321', CURDATE());

-- ----------------------------
-- 2. Bảng Category (Danh mục sản phẩm)
-- ----------------------------
DROP TABLE IF EXISTS `Category`;
CREATE TABLE `Category` (
  `cate_id` INT NOT NULL AUTO_INCREMENT,
  `cate_name` VARCHAR(255) NOT NULL,
  `icons` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dữ liệu mẫu bảng Category
INSERT INTO `Category` (`cate_id`, `cate_name`, `icons`) VALUES
(1, 'Quần Áo Nam', 'category/nam.png'),
(2, 'Quần Áo Nữ', 'category/nu.png'),
(3, 'Giày Dép Thời Trang', 'category/giay.png');
