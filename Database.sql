-- Create database (Case no database)
CREATE DATABASE IF NOT EXISTS point_of_sale_management_system
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_general_ci;
USE point_of_sale_management_system;

-- Create table for User_Role
CREATE TABLE User_Role (
    role_id VARCHAR(255) PRIMARY KEY,
    role_name VARCHAR(255) NOT NULL
);

INSERT INTO User_Role (role_id, role_name) VALUES
('ROLE001', 'เจ้าของร้าน / Shop Owner'),
('ROLE002', 'แคชเชียร์ / Cashier'),
('ROLE003', 'ลูกค้า / Customer');

-- Create table for Users
CREATE TABLE Users (
    member_id VARCHAR(255) PRIMARY KEY,
    role_id VARCHAR(255) NOT NULL,
    member_firstname VARCHAR(255) NOT NULL,
    member_lastname VARCHAR(255) NOT NULL,
    member_username VARCHAR(255) NOT NULL,
    member_password VARCHAR(255) NOT NULL,
    member_tel VARCHAR(255) NOT NULL,
    member_time_register VARCHAR(255) NOT NULL,
    member_time_login VARCHAR(255) NOT NULL,
    time_order DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES User_Role(role_id)
);

INSERT INTO `users` (`member_id`, `role_id`, `member_firstname`, `member_lastname`, `member_username`, `member_password`, `member_tel`, `member_time_register`, `member_time_login`, `time_order`) VALUES
('MB1131347521', 'ROLE001', 'ศักดา', 'สุขขวัญ', 'sakdar.s@pos', 'sakdar.s@pos', '0980755735', '14 มิ.ย. 2567 11:27:50', '16 ส.ค. 2567 20:51:50', '2024-06-14 11:27:50'),
('MB2027027573', 'ROLE003', 'กัญญารัตน์', 'สินเจริญ', 'kanyarat.s@pos', 'kanyarat.s@pos', '0659985125', '14 มิ.ย. 2567 12:12:47', '14 มิ.ย. 2567 12:12:47', '2024-06-14 12:12:47'),
('MB2248769214', 'ROLE002', 'ชรินทร์รัตน์', 'สุวรรณรัตน์', 'charinrat.s@pos', 'charinrat.s@pos', '0956547895', '14 มิ.ย. 2567 12:10:26', '15 ส.ค. 2567 10:47:49', '2024-06-14 12:10:26'),
('MB2335127573', 'ROLE002', 'พรประภา', 'กำจัดภัย', 'pornpapar.g@pos', 'pornpapar.g@pos', '0657874595', '14 มิ.ย. 2567 11:51:01', '14 มิ.ย. 2567 11:51:01', '2024-06-14 11:51:01'),
('MB2357696365', 'ROLE002', 'บัวชมพู', 'รัตนา', 'buachompuu.r@pos', 'buachompuu.r@pos', '0746542355', '14 มิ.ย. 2567 12:08:23', '14 มิ.ย. 2567 12:08:23', '2024-06-14 12:08:23'),
('MB2976892258', 'ROLE003', 'แพรวา', 'ธรรมรัตน์', 'parewa.t@pos', 'parewa.t@pos', '0634562566', '14 มิ.ย. 2567 18:37:42', '17 ส.ค. 2567 15:50:34', '2024-06-14 18:37:42'),
('MB3088654056', 'ROLE002', 'อัมรินทร์', 'สุวรรณชาติ', 'aummarin.s@pos', 'aummarin.s@pos', '0453331234', '10 ก.ค. 2567 09:51:46', '10 ก.ค. 2567 09:51:46', '2024-07-10 10:17:50'),
('MB3466477454', 'ROLE003', 'พรอย', 'ชมพู', 'ploy.c@pos', 'ploy.c@pos', '0976541235', '15 มิ.ย. 2567 09:07:09', '15 มิ.ย. 2567 09:07:09', '2024-06-15 09:07:09'),
('MB4444903325', 'ROLE002', 'นริศรา', 'สิงค์ดา', 'naritsara.s@pos', 'naritsara.s@pos', '0654836545', '14 มิ.ย. 2567 11:32:19', '5 ส.ค. 2567 08:52:22', '2024-06-14 11:32:19'),
('MB5862619314', 'ROLE002', 'แพรพลอย', 'เกษมสุข', 'prawploy.k@pos', 'prawploy.k@pos', '0994551234', '9 ก.ค. 2567 17:23:17', '9 ก.ค. 2567 17:23:17', '2024-07-09 17:23:17'),
('MB5864308660', 'ROLE003', 'ปรียาภรณ์', 'สุขสวัสดิ์', 'preyaporn.s@pos', 'preyaporn.s@pos', '0875456523', '14 มิ.ย. 2567 13:18:30', '14 มิ.ย. 2567 13:18:30', '2024-06-14 13:18:30'),
('MB6176927131', 'ROLE003', 'ธัญญ์นรี', 'บุญประเสริฐ', 'tannare.b@pos', 'tannare.b@pos', '0843654565', '14 มิ.ย. 2567 13:17:29', '14 มิ.ย. 2567 13:17:29', '2024-06-14 13:17:29'),
('MB8434964444', 'ROLE003', 'ศิริพร', 'จันทร์เพ็ญ', 'siriporn.j@pos', 'siriporn.j@pos', '0456544554', '15 มิ.ย. 2567 10:27:22', '15 มิ.ย. 2567 10:27:22', '2024-06-15 10:27:22'),
('MB9033093141', 'ROLE003', 'สุดารัตน์', 'วงศ์วรวิทย์', 'sudarat.v@pos', 'sudarat.v@pos', '0951112223', '10 ก.ค. 2567 16:47:50', '5 ส.ค. 2567 11:18:35', '2024-07-10 19:05:39'),
('MB9141185012', 'ROLE003', 'ญาดา', 'นวลพรรณ', 'yada.n@pos', 'yada.n@pos', '0643554568', '14 มิ.ย. 2567 12:30:30', '14 มิ.ย. 2567 12:30:30', '2024-06-14 12:30:30'),
('MB9288107054', 'ROLE003', 'ชนากานต์', 'อินทรชัย', 'chanakan.e@pos', 'chanakan.e@pos', '0745456544', '14 มิ.ย. 2567 12:29:45', '14 มิ.ย. 2567 12:29:45', '2024-06-14 12:29:45');

-- Create table for Payment_Options
CREATE TABLE Payment_Options (
    pay_id VARCHAR(255) NOT NULL PRIMARY KEY,
    pay_cat_name VARCHAR(255) NOT NULL,
    pay_bank_name VARCHAR(255) NOT NULL,
    pay_bank_account_name VARCHAR(255) NOT NULL,
    pay_bank_number VARCHAR(255) NOT NULL,
    pay_status VARCHAR(255) NOT NULL,
    time_order DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `payment_options` (`pay_id`, `pay_cat_name`, `pay_bank_name`, `pay_bank_account_name`, `pay_bank_number`, `pay_status`, `time_order`) VALUES
('PA3559307879', 'OPT1', 'เงินสด', 'เงินสด', 'เงินสด', '1', '2024-07-13 18:20:57'),
('PA6246355887', 'OPT2', 'ธ.กรุงไทย จำกัด (มหาชน)', 'นายศักดา สุขขวัญ', '9150367897', '1', '2024-07-13 18:21:44'),
('PA8746709900', 'OPT3', 'QR Prompt Pay', 'นายศักดา สุขขวัญ', '0980755735', '1', '2024-07-13 18:32:18');

-- Create table for Categories_Main
CREATE TABLE Categories (
    cat_id VARCHAR(255) NOT NULL PRIMARY KEY,
    cat_name_main VARCHAR(255) NOT NULL,
    cat_name_sub VARCHAR(255) NOT NULL,
    time_order DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `categories` (`cat_id`, `cat_name_main`, `cat_name_sub`, `time_order`) VALUES
('CT1005332607', 'สินค้าประเภทอื่น', 'อุปกรณ์ทำความสะอาด', '2024-07-18 08:54:08'),
('CT1264362123', 'เครื่องใช้ในครัวเรือน', 'ถุงขยะ', '2024-07-18 08:52:07'),
('CT1444296577', 'ผลิตภัณฑ์เพื่อสุขภาพและความงาม', 'ครีมบำรุงผิว', '2024-07-18 08:52:58'),
('CT1446403269', 'อาหารแห้งและอาหารสำเร็จรูป', 'ขนมขบเคี้ยว', '2024-07-18 08:47:35'),
('CT1576343599', 'อาหารแห้งและอาหารสำเร็จรูป', 'อาหารกระป๋อง', '2024-07-18 08:48:04'),
('CT1715644319', 'ผลิตภัณฑ์นม', 'เนย', '2024-07-18 08:48:55'),
('CT1883527540', 'เครื่องดื่ม', 'ชา กาแฟ', '2024-07-18 08:46:15'),
('CT1902860849', 'ผลไม้และผักสด', 'ผลไม้สด', '2024-07-18 08:49:16'),
('CT2369775768', 'สินค้าประเภทอื่น', 'อาหารสัตว์เลี้ยง', '2024-07-18 08:53:49'),
('CT2448641945', 'เนื้อสัตว์และอาหารทะเล', 'อาหารทะเลสด', '2024-07-18 08:50:11'),
('CT2643848576', 'เนื้อสัตว์และอาหารทะเล', 'เนื้อแช่แข็ง', '2024-07-18 08:50:01'),
('CT2680393806', 'เนื้อสัตว์และอาหารทะเล', 'เนื้อสด', '2024-07-18 08:49:53'),
('CT2900345008', 'ผลิตภัณฑ์เพื่อสุขภาพและความงาม', 'สบู่ แชมพู', '2024-07-18 08:52:18'),
('CT3385017092', 'ผลิตภัณฑ์นม', 'ชีส', '2024-07-18 08:49:03'),
('CT3757236922', 'ผลไม้และผักสด', 'ผักสด', '2024-07-18 08:49:29'),
('CT4003830558', 'ของใช้ส่วนตัว', 'ผ้าอ้อม', '2024-07-18 08:53:25'),
('CT4038092452', 'ผลิตภัณฑ์เพื่อสุขภาพและความงาม', 'ยาสีฟัน', '2024-07-18 08:52:40'),
('CT4187957373', 'ผลิตภัณฑ์นม', 'โยเกิร์ต', '2024-07-18 08:48:44'),
('CT4815028065', 'ผลิตภัณฑ์นม', 'นมสด', '2024-07-18 08:48:21'),
('CT4993736763', 'เนื้อสัตว์และอาหารทะเล', 'อาหารทะเลแช่แข็ง', '2024-07-18 08:50:22'),
('CT5243993127', 'เครื่องใช้ในครัวเรือน', 'ผงซักฟอก', '2024-07-18 08:51:20'),
('CT5273730617', 'ของใช้ส่วนตัว', 'แปรงสีฟัน', '2024-07-18 08:53:32'),
('CT5475111831', 'สินค้าประเภทอื่น', 'ของใช้สำหรับเด็ก', '2024-07-18 08:54:00'),
('CT5533198388', 'เครื่องใช้ในครัวเรือน', 'น้ำยาล้างจาน', '2024-07-18 08:51:47'),
('CT5848520835', 'สินค้าประเภทอื่น', 'ของใช้เบ็ดเตล็ด', '2024-07-18 08:54:17'),
('CT5870343697', 'ของใช้ส่วนตัว', 'ผ้าอนามัย', '2024-07-18 08:53:16'),
('CT6238191027', 'ผลิตภัณฑ์นม', 'นมถั่วเหลือง', '2024-07-18 08:48:33'),
('CT6585447304', 'อาหารแห้งและอาหารสำเร็จรูป', 'ข้าวสาร', '2024-07-18 08:47:53'),
('CT6678328723', 'ขนมและของหวาน', 'เค้ก', '2024-07-18 08:50:32'),
('CT6805419637', 'อาหารแห้งและอาหารสำเร็จรูป', 'ถั่ว', '2024-07-18 08:47:44'),
('CT6833921507', 'เครื่องดื่ม', 'น้ำอัดลม', '2024-07-18 08:46:03'),
('CT7500195163', 'เครื่องดื่ม', 'น้ำผลไม้', '2024-07-18 08:46:23'),
('CT7622634368', 'ขนมและของหวาน', 'ขนมหวาน', '2024-07-18 08:50:48'),
('CT7655226211', 'ขนมและของหวาน', 'ขนมปัง', '2024-07-18 08:50:40'),
('CT8387779945', 'ของใช้ส่วนตัว', 'มีดโกน', '2024-07-18 08:53:39'),
('CT8724958871', 'ขนมและของหวาน', 'ลูกอม', '2024-07-18 08:51:05'),
('CT8764171276', 'เครื่องใช้ในครัวเรือน', 'กระดาษทิชชู่', '2024-07-18 08:51:57'),
('CT8818077643', 'ผลิตภัณฑ์เพื่อสุขภาพและความงาม', 'ผลิตภัณฑ์ดูแลเส้นผม', '2024-07-18 08:53:08'),
('CT9007798000', 'อาหารแห้งและอาหารสำเร็จรูป', 'บะหมี่กึ่งสำเร็จรูป', '2024-07-18 08:47:16'),
('CT9091453339', 'เครื่องดื่ม', 'น้ำดื่ม', '2024-07-18 08:42:59'),
('CT9357613868', 'ผลไม้และผักสด', 'สมุนไพรสด', '2024-07-18 08:49:38'),
('CT9381418561', 'เครื่องดื่ม', 'เครื่องดื่มชูกำลัง', '2024-07-18 08:46:34'),
('CT9429311680', 'ขนมและของหวาน', 'ช็อกโกแลต', '2024-07-18 08:50:56');

-- Create table for Products
CREATE TABLE Products (
    product_id VARCHAR(255) NOT NULL PRIMARY KEY,
    cat_id VARCHAR(255),
    product_name VARCHAR(255) NOT NULL,
    product_price DECIMAL(10, 2) NOT NULL,
    time_order DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cat_id) REFERENCES Categories(cat_id)
);

INSERT INTO `products` (`product_id`, `cat_id`, `product_name`, `product_price`, `time_order`) VALUES
('PD1425473671', 'CT2680393806', 'เนื้อไก่สด', '90.00', '2024-07-19 17:06:01'),
('PD1584214812', 'CT8818077643', 'แชมพูซันซิล', '120.00', '2024-07-19 17:16:01'),
('PD1653540574', 'CT4993736763', 'ปลานิลแช่แข็ง', '70.00', '2024-07-19 17:06:39'),
('PD1782616546', 'CT7655226211', 'ขนมปังฟาร์มเฮ้าส์', '35.00', '2024-07-19 17:07:59'),
('PD1827760940', 'CT9429311680', 'ช็อกโกแลตแคดเบอรี่', '30.00', '2024-07-19 17:08:32'),
('PD1986360441', 'CT7655226211', 'ขนมปังปอนด์', '30.00', '2024-07-19 17:08:20'),
('PD2134911482', 'CT8724958871', 'ลูกอมฮอลล์', '10.00', '2024-07-19 17:08:47'),
('PD2204753963', 'CT4038092452', 'ยาสีฟันคอลเกต', '50.00', '2024-07-19 17:14:43'),
('PD2362545347', 'CT1883527540', 'ชาเขียวอิชิตัน', '20.00', '2024-07-19 16:44:03'),
('PD2848929713', 'CT6238191027', 'นมถั่วเหลืองแลคตาซอย', '12.00', '2024-07-19 17:02:24'),
('PD3283839477', 'CT9357613868', 'โหระพาสด', '100.00', '2024-07-19 17:05:01'),
('PD3381828478', 'CT1005332607', 'น้ำยาถูพื้นไฮเตอร์', '35.00', '2024-07-19 17:19:06'),
('PD3464395156', 'CT9007798000', 'มาม่า รสต้มยำกุ้ง', '6.00', '2024-07-19 16:59:01'),
('PD3567491790', 'CT1264362123', 'ถุงขยะฮีโร่', '20.00', '2024-07-19 17:09:57'),
('PD3913104987', 'CT5273730617', 'แปรงสีฟันดอกเตอร์เบสต์', '30.00', '2024-07-19 17:17:36'),
('PD4120767337', 'CT2900345008', 'สบู่ลักส์', '15.00', '2024-07-19 17:10:53'),
('PD4133267089', 'CT3757236922', 'มะเขือเทศ', '40.00', '2024-07-19 17:04:22'),
('PD4689055457', 'CT5533198388', 'น้ำยาล้างจานซันไลต์', '30.00', '2024-07-19 17:09:21'),
('PD4878678618', 'CT2900345008', 'แชมพูเคลียร์', '120.00', '2024-07-19 17:11:11'),
('PD5235825531', 'CT2680393806', 'เนื้อหมูสันใน', '150.00', '2024-07-19 17:05:35'),
('PD5237773489', 'CT1902860849', 'แอปเปิ้ลฟูจิ', '30.00', '2024-07-19 17:03:41'),
('PD5474243221', 'CT5870343697', 'ผ้าอนามัยโซฟี', '50.00', '2024-07-19 17:16:48'),
('PD5503476508', 'CT4187957373', 'โยเกิร์ตบัลแกเรีย', '20.00', '2024-07-19 17:02:38'),
('PD5801599279', 'CT4003830558', 'ผ้าอ้อมเบบี้เลิฟ', '350.00', '2024-07-19 17:17:21'),
('PD5941997489', 'CT5475111831', 'ขวดนมพีเจ้น', '150.00', '2024-07-19 17:18:48'),
('PD6435809286', 'CT7622634368', 'เค้กเนยสด', '40.00', '2024-07-19 17:07:38'),
('PD6589545299', 'CT1444296577', 'ครีมบำรุงผิววาสลีน', '150.00', '2024-07-19 17:15:00'),
('PD6708234812', 'CT9381418561', 'M-150', '10.00', '2024-07-19 16:46:22'),
('PD6851831233', 'CT1446403269', 'เลย์ รสมันฝรั่ง', '30.00', '2024-07-19 17:00:11'),
('PD6949426179', 'CT1715644319', 'เนยออร์คิด', '70.00', '2024-07-19 17:02:56'),
('PD7174382490', 'CT5243993127', 'ผงซักฟอกบรีส', '85.00', '2024-07-19 17:09:06'),
('PD7285816504', 'CT1576343599', 'ปลากระป๋อง ตราสามแม่ครัว', '22.00', '2024-07-19 17:01:08'),
('PD7328153247', 'CT3757236922', 'ผักคะน้า', '50.00', '2024-07-19 17:04:45'),
('PD7382769630', 'CT9091453339', 'น้ำดื่มสิงห์', '15.00', '2024-07-19 16:42:18'),
('PD7403615743', 'CT5848520835', 'ไฟแช็กบิ๊ก', '10.00', '2024-07-19 17:19:28'),
('PD7509530563', 'CT1902860849', 'กล้วยหอม', '50.00', '2024-07-19 17:04:01'),
('PD7859562183', 'CT2369775768', 'อาหารแมววิสกัส', '120.00', '2024-07-19 17:18:28'),
('PD8043481457', 'CT6585447304', 'ข้าวหอมมะลิ ตราฉัตร', '200.00', '2024-07-19 17:00:50'),
('PD8119885276', 'CT8387779945', 'มีดโกนยิลเลตต์', '150.00', '2024-07-19 17:18:01'),
('PD8765617023', 'CT6833921507', 'โค้ก', '15.00', '2024-07-19 16:43:35'),
('PD9005604908', 'CT4815028065', 'นมสดเมจิ', '50.00', '2024-07-19 17:01:59'),
('PD9061950685', 'CT6805419637', 'ถั่วลิสงโก๋แก่', '35.00', '2024-07-19 17:00:30'),
('PD9211238092', 'CT2448641945', 'กุ้งขาวสด', '300.00', '2024-07-19 17:06:17'),
('PD9229014229', 'CT8764171276', 'กระดาษทิชชู่สก๊อตต์', '50.00', '2024-07-19 17:09:37'),
('PD9441543721', 'CT1005332607', 'ผ้าเช็ดหน้าเอสซู', '50.00', '2024-07-19 17:19:51'),
('PD9486870928', 'CT4993736763', 'ปลาหมึกแช่แข็ง', '250.00', '2024-07-19 17:06:56'),
('PD9557571807', 'CT7500195163', 'น้ำผลไม้ทิปโก้', '40.00', '2024-07-19 16:44:35'),
('PD9887319149', 'CT3385017092', 'ชีส แคร์รี่โกลด์', '180.00', '2024-07-19 17:03:12');

-- Create table for Cart_Orders
CREATE TABLE Cart_Orders (
    cart_id VARCHAR(255) NOT NULL PRIMARY KEY,
    cashier_id VARCHAR(255) NOT NULL,
    product_id VARCHAR(255) NOT NULL,
    cart_product_qty INT NOT NULL,
    time_order DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cashier_id) REFERENCES Users(member_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO `cart_orders` (`cart_id`, `cashier_id`, `product_id`, `cart_product_qty`, `time_order`) VALUES
('CA2966310148', 'MB2248769214', 'PD8043481457', 1, '2024-08-16 09:54:13'),
('CA7111079482', 'MB2248769214', 'PD3464395156', 1, '2024-08-16 10:21:48'),
('CA9653108986', 'MB2248769214', 'PD6851831233', 2, '2024-08-16 09:54:26');

-- Create table for Orders
CREATE TABLE Orders (
    order_id VARCHAR(255) NOT NULL PRIMARY KEY,
    cashier_id VARCHAR(255) NOT NULL,
    customer_id VARCHAR(255) NOT NULL,
    pay_id VARCHAR(255) NOT NULL,
    total_unit INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    member_discount DECIMAL(10, 2) NOT NULL,
    net_total DECIMAL(10, 2) NOT NULL,
    get_money DECIMAL(10, 2) NOT NULL,
    change_money DECIMAL(10, 2) NOT NULL,
    order_time_transaction VARCHAR(255) NOT NULL,
    order_time_payment VARCHAR(255) NOT NULL,
    time_order DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pay_id) REFERENCES Payment_Options(pay_id)
);

INSERT INTO `orders` (`order_id`, `cashier_id`, `customer_id`, `pay_id`, `total_unit`, `total_amount`, `member_discount`, `net_total`, `get_money`, `change_money`, `order_time_transaction`, `order_time_payment`, `time_order`) VALUES
('OD2152580668', 'MB2248769214', 'MB2976892258', 'PA3559307879', 4, '715.00', '7.15', '707.85', '1000.00', '292.15', '22 ส.ค. 2567 19:43:29', '22 ส.ค. 2567 19:43:40', '2024-08-22 19:43:29'),
('OD2373986928', 'MB4444903325', 'MB2976892258', 'PA8746709900', 5, '165.00', '1.65', '163.35', '163.35', '0.00', '5 ส.ค. 2567 09:01:12', '5 ส.ค. 2567 09:04:44', '2024-08-05 09:01:12'),
('OD2433165650', 'MB2248769214', 'MB2976892258', 'PA8746709900', 6, '270.00', '2.70', '267.30', '267.30', '0.00', '21 ส.ค. 2567 20:55:50', '21 ส.ค. 2567 20:55:54', '2024-08-21 20:55:50'),
('OD3317451595', 'MB2248769214', 'MB2976892258', 'PA8746709900', 3, '420.00', '4.20', '415.80', '415.80', '0.00', '13 ส.ค. 2567 18:12:10', '13 ส.ค. 2567 18:12:40', '2024-08-13 18:12:10'),
('OD3348561549', 'MB2248769214', 'N/A', 'PA8746709900', 4, '117.00', '0.00', '117.00', '117.00', '0.00', '16 ส.ค. 2567 09:42:00', '16 ส.ค. 2567 09:44:04', '2024-08-16 09:42:00'),
('OD3445021004', 'MB2248769214', 'MB2976892258', 'PA8746709900', 10, '181.00', '1.81', '179.19', '179.19', '0.00', '5 ส.ค. 2567 10:34:45', '5 ส.ค. 2567 10:35:09', '2024-08-05 10:34:45'),
('OD4354265069', 'MB2248769214', 'N/A', 'PA8746709900', 4, '730.00', '0.00', '730.00', '730.00', '0.00', '21 ส.ค. 2567 20:55:06', '21 ส.ค. 2567 20:55:10', '2024-08-21 20:55:06'),
('OD4645183698', 'MB2248769214', 'MB2976892258', 'PA8746709900', 4, '570.00', '5.70', '564.30', '564.30', '0.00', '22 ส.ค. 2567 18:48:03', '22 ส.ค. 2567 18:48:04', '2024-08-22 18:48:03'),
('OD4697503540', 'MB2248769214', 'MB2976892258', 'PA8746709900', 4, '174.00', '1.74', '172.26', '172.26', '0.00', '21 ส.ค. 2567 20:53:44', '21 ส.ค. 2567 20:53:57', '2024-08-21 20:53:44'),
('OD5480239425', 'MB2248769214', 'N/A', 'PA6246355887', 5, '208.00', '0.00', '208.00', '208.00', '0.00', '5 ส.ค. 2567 10:03:52', '5 ส.ค. 2567 10:04:09', '2024-08-05 10:03:52'),
('OD5921565955', 'MB2248769214', 'MB2976892258', 'PA6246355887', 3, '310.00', '3.10', '306.90', '306.90', '0.00', '22 ส.ค. 2567 19:44:49', '22 ส.ค. 2567 19:45:02', '2024-08-22 19:44:49'),
('OD6714306751', 'MB2248769214', 'N/A', 'PA8746709900', 3, '95.00', '0.00', '95.00', '95.00', '0.00', '14 ส.ค. 2567 10:01:22', '14 ส.ค. 2567 10:01:39', '2024-08-14 10:01:22'),
('OD6783453086', 'MB2248769214', 'N/A', 'PA3559307879', 8, '128.00', '0.00', '128.00', '140.00', '12.00', '5 ส.ค. 2567 10:06:15', '5 ส.ค. 2567 10:06:39', '2024-08-05 10:06:15'),
('OD7939031261', 'MB2248769214', 'N/A', 'PA8746709900', 4, '266.00', '0.00', '266.00', '266.00', '0.00', '21 ส.ค. 2567 20:52:42', '21 ส.ค. 2567 20:53:01', '2024-08-21 20:52:42'),
('OD8558320891', 'MB2248769214', 'N/A', 'PA8746709900', 4, '266.00', '0.00', '266.00', '266.00', '0.00', '22 ส.ค. 2567 18:45:29', '22 ส.ค. 2567 18:45:35', '2024-08-22 18:45:29'),
('OD9052353674', 'MB2248769214', 'MB2976892258', 'PA3559307879', 3, '165.00', '1.65', '163.35', '200.00', '36.65', '22 ส.ค. 2567 20:01:03', '22 ส.ค. 2567 20:01:12', '2024-08-22 20:01:03'),
('OD9258312845', 'MB2248769214', 'MB2976892258', 'PA8746709900', 3, '205.00', '2.05', '202.95', '202.95', '0.00', '22 ส.ค. 2567 19:57:40', '22 ส.ค. 2567 19:59:42', '2024-08-22 19:57:40'),
('OD9268672716', 'MB4444903325', 'N/A', 'PA8746709900', 5, '206.00', '0.00', '206.00', '206.00', '0.00', '5 ส.ค. 2567 09:49:06', '5 ส.ค. 2567 09:49:20', '2024-08-05 09:49:06'),
('OD9270670711', 'MB2248769214', 'MB2976892258', 'PA8746709900', 7, '194.00', '1.94', '192.06', '192.06', '0.00', '5 ส.ค. 2567 09:51:26', '5 ส.ค. 2567 09:51:39', '2024-08-05 09:51:26'),
('OD9291329623', 'MB2248769214', 'N/A', 'PA8746709900', 4, '162.00', '0.00', '162.00', '162.00', '0.00', '5 ส.ค. 2567 10:02:39', '5 ส.ค. 2567 10:02:49', '2024-08-05 10:02:39'),
('OD9517624328', 'MB2248769214', 'MB2976892258', 'PA8746709900', 3, '290.00', '2.90', '287.10', '287.10', '0.00', '22 ส.ค. 2567 18:47:34', '22 ส.ค. 2567 18:47:40', '2024-08-22 18:47:34'),
('OD9906149788', 'MB2248769214', 'MB2976892258', 'PA8746709900', 4, '65.00', '0.65', '64.35', '64.35', '0.00', '22 ส.ค. 2567 18:50:16', '22 ส.ค. 2567 18:50:18', '2024-08-22 18:50:16');

-- Create table for Order_Product_Lists
CREATE TABLE Order_Product_Lists (
    order_id VARCHAR(255) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    cart_product_qty INT NOT NULL,
    product_price DECIMAL(10, 2) NOT NULL,
    time_order DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (order_id, product_name),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO `order_product_lists` (`order_id`, `product_name`, `cart_product_qty`, `product_price`, `time_order`) VALUES
('OD2152580668', 'กุ้งขาวสด', 2, '300.00', '2024-08-22 19:43:29'),
('OD2152580668', 'น้ำยาล้างจานซันไลต์', 1, '30.00', '2024-08-22 19:43:29'),
('OD2152580668', 'ผงซักฟอกบรีส', 1, '85.00', '2024-08-22 19:43:29'),
('OD2373986928', 'ขนมปังปอนด์', 1, '30.00', '2024-08-05 09:01:12'),
('OD2373986928', 'ขนมปังฟาร์มเฮ้าส์', 3, '35.00', '2024-08-05 09:01:12'),
('OD2373986928', 'ช็อกโกแลตแคดเบอรี่', 1, '30.00', '2024-08-05 09:01:12'),
('OD2433165650', 'กล้วยหอม', 1, '50.00', '2024-08-21 20:55:50'),
('OD2433165650', 'ผักคะน้า', 2, '50.00', '2024-08-21 20:55:50'),
('OD2433165650', 'ผ้าเช็ดหน้าเอสซู', 1, '50.00', '2024-08-21 20:55:50'),
('OD2433165650', 'มะเขือเทศ', 1, '40.00', '2024-08-21 20:55:50'),
('OD2433165650', 'แอปเปิ้ลฟูจิ', 1, '30.00', '2024-08-21 20:55:50'),
('OD3317451595', 'กุ้งขาวสด', 1, '300.00', '2024-08-13 18:12:10'),
('OD3317451595', 'ช็อกโกแลตแคดเบอรี่', 1, '30.00', '2024-08-13 18:12:10'),
('OD3317451595', 'เนื้อไก่สด', 1, '90.00', '2024-08-13 18:12:10'),
('OD3348561549', 'น้ำดื่มสิงห์', 1, '15.00', '2024-08-16 09:42:00'),
('OD3348561549', 'มาม่า รสต้มยำกุ้ง', 2, '6.00', '2024-08-16 09:42:00'),
('OD3348561549', 'เนื้อไก่สด', 1, '90.00', '2024-08-16 09:42:00'),
('OD3445021004', 'ขนมปังฟาร์มเฮ้าส์', 2, '35.00', '2024-08-05 10:34:45'),
('OD3445021004', 'นมถั่วเหลืองแลคตาซอย', 1, '12.00', '2024-08-05 10:34:45'),
('OD3445021004', 'มาม่า รสต้มยำกุ้ง', 4, '6.00', '2024-08-05 10:34:45'),
('OD3445021004', 'เลย์ รสมันฝรั่ง', 2, '30.00', '2024-08-05 10:34:45'),
('OD3445021004', 'โค้ก', 1, '15.00', '2024-08-05 10:34:45'),
('OD4354265069', 'ชีส แคร์รี่โกลด์', 1, '180.00', '2024-08-21 20:55:06'),
('OD4354265069', 'นมสดเมจิ', 1, '50.00', '2024-08-21 20:55:06'),
('OD4354265069', 'ผ้าอ้อมเบบี้เลิฟ', 1, '350.00', '2024-08-21 20:55:06'),
('OD4354265069', 'มีดโกนยิลเลตต์', 1, '150.00', '2024-08-21 20:55:06'),
('OD4645183698', 'ผ้าอ้อมเบบี้เลิฟ', 1, '350.00', '2024-08-22 18:48:03'),
('OD4645183698', 'เนยออร์คิด', 1, '70.00', '2024-08-22 18:48:03'),
('OD4645183698', 'แชมพูซันซิล', 1, '120.00', '2024-08-22 18:48:03'),
('OD4645183698', 'แปรงสีฟันดอกเตอร์เบสต์', 1, '30.00', '2024-08-22 18:48:03'),
('OD4697503540', 'นมถั่วเหลืองแลคตาซอย', 2, '12.00', '2024-08-21 20:53:44'),
('OD4697503540', 'แชมพูซันซิล', 1, '120.00', '2024-08-21 20:53:44'),
('OD4697503540', 'แปรงสีฟันดอกเตอร์เบสต์', 1, '30.00', '2024-08-21 20:53:44'),
('OD5480239425', 'ปลากระป๋อง ตราสามแม่ครัว', 4, '22.00', '2024-08-05 10:03:52'),
('OD5480239425', 'อาหารแมววิสกัส', 1, '120.00', '2024-08-05 10:03:52'),
('OD5921565955', 'ปลานิลแช่แข็ง', 1, '70.00', '2024-08-22 19:44:49'),
('OD5921565955', 'เนื้อหมูสันใน', 1, '150.00', '2024-08-22 19:44:49'),
('OD5921565955', 'เนื้อไก่สด', 1, '90.00', '2024-08-22 19:44:49'),
('OD6714306751', 'ขนมปังปอนด์', 2, '30.00', '2024-08-14 10:01:22'),
('OD6714306751', 'ขนมปังฟาร์มเฮ้าส์', 1, '35.00', '2024-08-14 10:01:22'),
('OD6783453086', 'ปลากระป๋อง ตราสามแม่ครัว', 2, '22.00', '2024-08-05 10:06:15'),
('OD6783453086', 'มาม่า รสต้มยำกุ้ง', 4, '6.00', '2024-08-05 10:06:15'),
('OD6783453086', 'เลย์ รสมันฝรั่ง', 2, '30.00', '2024-08-05 10:06:15'),
('OD7939031261', 'ข้าวหอมมะลิ ตราฉัตร', 1, '200.00', '2024-08-21 20:52:42'),
('OD7939031261', 'มาม่า รสต้มยำกุ้ง', 1, '6.00', '2024-08-21 20:52:42'),
('OD7939031261', 'เลย์ รสมันฝรั่ง', 2, '30.00', '2024-08-21 20:52:42'),
('OD8558320891', 'ข้าวหอมมะลิ ตราฉัตร', 1, '200.00', '2024-08-22 18:45:29'),
('OD8558320891', 'มาม่า รสต้มยำกุ้ง', 1, '6.00', '2024-08-22 18:45:29'),
('OD8558320891', 'เลย์ รสมันฝรั่ง', 2, '30.00', '2024-08-22 18:45:29'),
('OD9052353674', 'กระดาษทิชชู่สก๊อตต์', 1, '50.00', '2024-08-22 20:01:03'),
('OD9052353674', 'น้ำยาล้างจานซันไลต์', 1, '30.00', '2024-08-22 20:01:03'),
('OD9052353674', 'ผงซักฟอกบรีส', 1, '85.00', '2024-08-22 20:01:03'),
('OD9258312845', 'น้ำยาล้างจานซันไลต์', 1, '30.00', '2024-08-22 19:57:40'),
('OD9258312845', 'ผงซักฟอกบรีส', 1, '85.00', '2024-08-22 19:57:40'),
('OD9258312845', 'เนื้อไก่สด', 1, '90.00', '2024-08-22 19:57:40'),
('OD9268672716', 'นมถั่วเหลืองแลคตาซอย', 3, '12.00', '2024-08-05 09:49:06'),
('OD9268672716', 'นมสดเมจิ', 1, '50.00', '2024-08-05 09:49:06'),
('OD9268672716', 'แชมพูซันซิล', 1, '120.00', '2024-08-05 09:49:06'),
('OD9270670711', 'ขนมปังฟาร์มเฮ้าส์', 4, '35.00', '2024-08-05 09:51:26'),
('OD9270670711', 'ช็อกโกแลตแคดเบอรี่', 1, '30.00', '2024-08-05 09:51:26'),
('OD9270670711', 'นมถั่วเหลืองแลคตาซอย', 2, '12.00', '2024-08-05 09:51:26'),
('OD9291329623', 'นมถั่วเหลืองแลคตาซอย', 1, '12.00', '2024-08-05 10:02:39'),
('OD9291329623', 'ผ้าเช็ดหน้าเอสซู', 1, '50.00', '2024-08-05 10:02:39'),
('OD9291329623', 'ยาสีฟันคอลเกต', 2, '50.00', '2024-08-05 10:02:39'),
('OD9517624328', 'ชีส แคร์รี่โกลด์', 1, '180.00', '2024-08-22 18:47:34'),
('OD9517624328', 'เค้กเนยสด', 1, '40.00', '2024-08-22 18:47:34'),
('OD9517624328', 'เนยออร์คิด', 1, '70.00', '2024-08-22 18:47:34'),
('OD9906149788', 'ชาเขียวอิชิตัน', 1, '20.00', '2024-08-22 18:50:16'),
('OD9906149788', 'น้ำดื่มสิงห์', 1, '15.00', '2024-08-22 18:50:16'),
('OD9906149788', 'โค้ก', 2, '15.00', '2024-08-22 18:50:16');

-- Create table for User_Role
CREATE TABLE Systen_Settings (
    store_name VARCHAR(255) NOT NULL PRIMARY KEY,
    store_description TEXT NOT NULL,
    store_categorie VARCHAR(255) NOT NULL,
    day_open_1 VARCHAR(255) NOT NULL,
    time_open_1 VARCHAR(255) NOT NULL,
    time_close_1 VARCHAR(255) NOT NULL,
    day_open_2 VARCHAR(255) NOT NULL,
    time_open_2 VARCHAR(255) NOT NULL,
    time_close_2 VARCHAR(255) NOT NULL,
    day_open_3 VARCHAR(255) NOT NULL,
    time_open_3 VARCHAR(255) NOT NULL,
    time_close_3 VARCHAR(255) NOT NULL,
    day_open_4 VARCHAR(255) NOT NULL,
    time_open_4 VARCHAR(255) NOT NULL,
    time_close_4 VARCHAR(255) NOT NULL,
    day_open_5 VARCHAR(255) NOT NULL,
    time_open_5 VARCHAR(255) NOT NULL,
    time_close_5 VARCHAR(255) NOT NULL,
    day_open_6 VARCHAR(255) NOT NULL,
    time_open_6 VARCHAR(255) NOT NULL,
    time_close_6 VARCHAR(255) NOT NULL,
    day_open_7 VARCHAR(255) NOT NULL,
    time_open_7 VARCHAR(255) NOT NULL,
    time_close_7 VARCHAR(255) NOT NULL,
    map_iframe_api TEXT NOT NULL,
    customer_discount VARCHAR(255) NOT NULL,
    privacy_policy TEXT NOT NULL,
    terms_and_conditions TEXT NOT NULL,
    cookie TEXT NOT NULL
);

INSERT INTO `systen_settings` (`store_name`, `store_description`, `store_categorie`, `day_open_1`, `time_open_1`, `time_close_1`, `day_open_2`, `time_open_2`, `time_close_2`, `day_open_3`, `time_open_3`, `time_close_3`, `day_open_4`, `time_open_4`, `time_close_4`, `day_open_5`, `time_open_5`, `time_close_5`, `day_open_6`, `time_open_6`, `time_close_6`, `day_open_7`, `time_open_7`, `time_close_7`, `map_iframe_api`, `customer_discount`, `privacy_policy`, `terms_and_conditions`, `cookie`) VALUES
('ร้านเกมส์มินิมาร์ท', '<p class=\"\">ไม่ระบุ</p>', 'ร้านสะดวกซื้อ (Convenience Store)', 'เปิดทำการ', '06:00', '21:00', 'เปิดทำการ', '06:00', '21:00', 'เปิดทำการ', '06:00', '21:00', 'เปิดทำการ', '06:00', '21:00', 'เปิดทำการ', '06:00', '21:00', 'เปิดทำการ', '06:00', '21:00', 'เปิดทำการ', '06:00', '21:00', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3959.726753096585!2d100.55177423331297!3d7.0413642252143065!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304d2b81c83824cd%3A0xc7197821308ba397!2z4LmA4LiB4Lih4Liq4LmM4Lih4Li04LiZ4Li04Lih4Liy4Lij4LmM4LiX!5e0!3m2!1sth!2sth!4v1724321725919!5m2!1sth!2sth', '0.01', 'เราให้ความสำคัญกับความเป็นส่วนตัวของข้อมูลของคุณ ข้อมูลส่วนบุคคลที่เรารวบรวมจะถูกใช้เพื่อการปรับปรุงบริการและการประมวลผลคำสั่งซื้อของคุณเท่านั้น เราจะไม่แบ่งปันข้อมูลของคุณกับบุคคลที่สามโดยไม่ได้รับความยินยอมจากคุณ หากคุณมีข้อสงสัยเกี่ยวกับนโยบายความเป็นส่วนตัวของเรา โปรดติดต่อเราได้ตลอดเวลา', '<p>การเข้าถึงและการใช้บริการของเว็บไซต์นี้ คุณยอมรับที่จะปฏิบัติตามข้อกำหนดและเงื่อนไขที่ระบุไว้ เราขอสงวนสิทธิ์ในการเปลี่ยนแปลงหรือปรับปรุงข้อกำหนดเหล่านี้โดยไม่ต้องแจ้งให้ทราบล่วงหน้า กรุณาอ่านข้อกำหนดและเงื่อนไขให้ละเอียดก่อนใช้บริการ</p><p><b>คำจำกัดความ</b><br>(ผู้ให้บริการ) หมายถึง เจ้าของระบบ<br>(ผู้ใช้งาน) หมายถึง ร้านค้า และ ลูกค้า</p><p><b>1. การสมัครและการเข้าถึงระบบ<br></b><span style=\"font-size: 1rem;\">ผู้ใช้งานจะต้องทำการสมัครสมาชิกและได้รับการอนุมัติจากผู้ดูแลระบบก่อนที่จะสามารถเข้าถึงและใช้ระบบ Point Of Sale Management System (POSMS) ได้&nbsp;</span><span style=\"font-size: 1rem;\">ผู้ใช้งานจะต้องเก็บรักษาข้อมูลการเข้าสู่ระบบ คือ Username (ชื่อผู้ใช้) และ Password (รหัสผ่าน) เป็นความลับ และไม่ควรเปิดเผยแก่บุคคลที่สาม หากพบว่ามีการใช้บัญชีโดยไม่ได้รับอนุญาต ผู้ใช้งานต้องแจ้งให้ผู้ดูแลระบบทราบทันที</span></p><p><b>2. การใช้งานระบบ<br></b><span style=\"font-size: 1rem;\">ระบบ&nbsp;</span>Point Of Sale Management System (POSMS)<span style=\"font-size: 1rem;\">&nbsp;นี้มีไว้สำหรับการบันทึกการซื้อขาย การจัดการสินค้า และการจัดการข้อมูลลูกค้าเท่านั้น ห้ามใช้ระบบในทางที่ผิดกฎหมายหรือผิดศีลธรรม&nbsp;</span><span style=\"font-size: 1rem;\">ข้อมูลที่บันทึกในระบบจะต้องเป็นข้อมูลที่ถูกต้องและครบถ้วน เพื่อให้ระบบสามารถทำงานได้อย่างมีประสิทธิภาพ</span></p><p><b>3. ความรับผิดชอบของผู้ใช้งาน<br></b><span style=\"font-size: 1rem;\">ผู้ใช้งานต้องรับผิดชอบต่อการกระทำใดๆ ที่เกิดขึ้นจากการใช้บัญชีของตนเอง รวมถึงการทำธุรกรรมและการบันทึกข้อมูลต่างๆ ในระบบ&nbsp;</span>Point Of Sale Management System (POSMS)<span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\">หากเกิดความเสียหายจากการใช้ระบบที่ไม่ถูกต้อง ผู้ใช้งานอาจต้องรับผิดชอบต่อความเสียหายที่เกิดขึ้น</span></p><p><b>4. การบำรุงรักษาและการปรับปรุงระบบ<br></b><span style=\"font-size: 1rem;\">ผู้ให้บริการระบบ&nbsp;</span>Point Of Sale Management System (POSMS)<span style=\"font-size: 1rem;\">&nbsp;มีสิทธิ์ในการบำรุงรักษา ปรับปรุง หรือแก้ไขระบบ โดยไม่ต้องแจ้งให้ทราบล่วงหน้า ทั้งนี้เพื่อปรับปรุงการทำงานของระบบหรือเพื่อความปลอดภัย&nbsp;</span><span style=\"font-size: 1rem;\">ในกรณีที่ระบบต้องหยุดทำงานเพื่อการบำรุงรักษา ผู้ใช้งานจะได้รับแจ้งล่วงหน้า (ยกเว้นกรณีเร่งด่วน)</span></p><p><b>5. การปิดบัญชีผู้ใช้งาน<br></b><span style=\"font-size: 1rem;\">ผู้ให้บริการมีสิทธิ์ในการปิดบัญชีผู้ใช้งาน หากพบว่ามีการละเมิดข้อกำหนดและเงื่อนไข หรือใช้ระบบในทางที่ผิดกฎหมาย&nbsp;</span><span style=\"font-size: 1rem;\">ผู้ใช้งานสามารถขอปิดบัญชีของตนเองได้โดยแจ้งต่อผู้ดูแลระบบ</span></p><p><b>6. การจำกัดความรับผิดชอบ<br></b><span style=\"font-size: 1rem;\">ผู้ให้บริการจะไม่รับผิดชอบต่อความเสียหายหรือความสูญเสียใดๆ ที่เกิดขึ้นจากการใช้งานระบบ&nbsp;</span>Point Of Sale Management System (POSMS)<span style=\"font-size: 1rem;\">&nbsp;รวมถึงการสูญหายของข้อมูล การไม่สามารถใช้งานระบบได้ หรือข้อผิดพลาดในการทำงานของระบบ</span></p><p><b>7. การแก้ไขข้อกำหนดและเงื่อนไข<br></b><span style=\"font-size: 1rem;\">ผู้ให้บริการขอสงวนสิทธิ์ในการแก้ไขหรือเปลี่ยนแปลงข้อกำหนดและเงื่อนไขเหล่านี้ตามที่เห็นสมควร โดยจะแจ้งให้ผู้ใช้งานทราบผ่านทางระบบ&nbsp;</span>Point Of Sale Management System (POSMS)<span style=\"font-size: 1rem;\">&nbsp;หรือวิธีการอื่นๆ</span><span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\">ผู้ใช้งานจะต้องเก็บรักษาข้อมูลการเข้าสู่ระบบ&nbsp;</span>คือ Username (ชื่อผู้ใช้) และ Password (รหัสผ่าน) เป็นความลับ<span style=\"font-size: 1rem;\">&nbsp;และไม่ควรเปิดเผยแก่บุคคลที่สาม หากพบว่ามีการใช้บัญชีโดยไม่ได้รับอนุญาต ผู้ใช้งานต้องแจ้งให้ผู้ดูแลระบบทราบทันที</span></p>', '<p class=\"\">เว็บไซต์ของเราใช้คุกกี้เพื่อปรับปรุงประสบการณ์การใช้งานของคุณ คุกกี้ช่วยให้เราจดจำการตั้งค่าของคุณและปรับปรุงบริการตามที่คุณต้องการ คุณสามารถเลือกปิดการใช้คุกกี้ได้ในเบราว์เซอร์ของคุณ แต่การปิดคุกกี้อาจทำให้บางส่วนของเว็บไซต์ทำงานไม่สมบูรณ์</p>');
