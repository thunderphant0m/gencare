-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 03:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genpharma`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(14) NOT NULL,
  `amount` varchar(64) DEFAULT NULL,
  `due` varchar(64) DEFAULT NULL,
  `paid` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_report`
--

CREATE TABLE `accounts_report` (
  `id` int(14) NOT NULL,
  `transection_type` varchar(128) DEFAULT NULL,
  `transection_name` varchar(128) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `mtype` varchar(128) DEFAULT NULL,
  `cheque` varchar(128) DEFAULT NULL,
  `issuedate` varchar(128) DEFAULT NULL,
  `bankid` varchar(128) DEFAULT NULL,
  `amount` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accounts_report`
--

INSERT INTO `accounts_report` (`id`, `transection_type`, `transection_name`, `description`, `mtype`, `cheque`, `issuedate`, `bankid`, `amount`, `entry_id`, `date`) VALUES
(26, 'Payment', 'dsfsf', 'sdfsdf', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(27, 'Receipt', 'dfgfdgd', 'sdfds', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(28, 'Payment', 'fgdfds', 'fgdgfd', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(29, 'Payment', 'fgfdg', 'sdfsd', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(30, 'Payment', 'xfsdf', 'dsfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(31, 'Payment', 'fdsfs', 'sfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(32, 'Payment', 'fdsfs', 'sfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(33, 'Payment', 'fdgdfgd', 'dfssf', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(34, 'Payment', 'fsfs', 'dsfds', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(35, 'Payment', 'ghgf', 'fsd', 'Cash', '', '', '1', NULL, 'U392', '1522778400'),
(36, 'Payment', 'dasda', 'dfdsfs', 'Cash', '', '', '1', NULL, 'U392', '1522778400'),
(37, 'Payment', 'dsadsa', 'asdas', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(38, 'Receipt', 'sdfsdfs', 'sdfds', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(39, 'Payment', 'fsdfs', 'sdffsd', 'Cash', '', '', '1', '1000', 'U392', '1522778400');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(11) NOT NULL,
  `name` varchar(333) NOT NULL,
  `email` varchar(333) NOT NULL,
  `contact` varchar(333) NOT NULL,
  `address` varchar(333) NOT NULL,
  `hospital_name` varchar(333) NOT NULL,
  `notes` varchar(333) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(14) NOT NULL,
  `bank_name` varchar(256) DEFAULT NULL,
  `account_name` varchar(256) DEFAULT NULL,
  `account_number` varchar(512) DEFAULT NULL,
  `branch` varchar(512) DEFAULT NULL,
  `signature` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `closing`
--

CREATE TABLE `closing` (
  `id` int(14) NOT NULL,
  `date` varchar(128) DEFAULT NULL,
  `opening_balance` varchar(128) DEFAULT NULL,
  `cash_in` varchar(128) DEFAULT NULL,
  `cash_out` varchar(128) DEFAULT NULL,
  `cash_in_hand` varchar(128) DEFAULT NULL,
  `closing_balance` varchar(128) DEFAULT NULL,
  `adjustment` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(128) NOT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `status`) VALUES
(1, 'ACI', 'ACTIVE'),
(2, 'Aristopharma', 'ACTIVE'),
(3, 'Global', 'ACTIVE'),
(4, 'Beximco', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(14) NOT NULL,
  `c_id` varchar(64) DEFAULT NULL,
  `c_name` varchar(256) DEFAULT NULL,
  `pharmacy_name` varchar(256) DEFAULT NULL,
  `c_email` varchar(256) DEFAULT NULL,
  `c_type` enum('Regular','Wholesale') NOT NULL DEFAULT 'Regular',
  `barcode` varchar(512) DEFAULT NULL,
  `cus_contact` varchar(64) DEFAULT NULL,
  `c_address` varchar(512) DEFAULT NULL,
  `c_note` varchar(512) DEFAULT NULL,
  `c_img` varchar(128) DEFAULT NULL,
  `regular_discount` varchar(64) DEFAULT NULL,
  `target_amount` varchar(64) DEFAULT NULL,
  `target_discount` varchar(64) DEFAULT NULL,
  `entrydate` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `c_id`, `c_name`, `pharmacy_name`, `c_email`, `c_type`, `barcode`, `cus_contact`, `c_address`, `c_note`, `c_img`, `regular_discount`, `target_amount`, `target_discount`, `entrydate`) VALUES
(39, 'C11654732', 'PWD', NULL, 'pwd@gmail.com', 'Regular', '3847282', '', '', '', 'C11654732.png', '', '10000000', '20.00', '1675094400'),
(40, '2', 'PWD2', NULL, 'pwd2@gmail.com', 'Regular', '3802175', '2311232', 'calamba', '', 'C16856149.png', '20', '10000000', '20', '1675094400');

-- --------------------------------------------------------

--
-- Table structure for table `customer_ledger`
--

CREATE TABLE `customer_ledger` (
  `id` int(14) NOT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `total_balance` varchar(64) DEFAULT NULL,
  `total_paid` varchar(64) NOT NULL,
  `total_due` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer_ledger`
--

INSERT INTO `customer_ledger` (`id`, `customer_id`, `total_balance`, `total_paid`, `total_due`) VALUES
(20, 'C11654732', '0', '0', '0'),
(21, 'C16856149', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `contact` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fire_service`
--

CREATE TABLE `fire_service` (
  `id` int(11) NOT NULL,
  `name` varchar(223) NOT NULL,
  `email` varchar(223) NOT NULL,
  `contact` varchar(223) NOT NULL,
  `address` varchar(223) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `contact` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL,
  `login` varchar(64) DEFAULT NULL,
  `logout` varchar(64) DEFAULT NULL,
  `counter` varchar(64) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `em_id`, `date`, `login`, `logout`, `counter`, `status`) VALUES
(35, 'U392', '2023/01/30', '1675034787', '1675036972', 'ADMIN', ''),
(36, 'U327', '2023/01/30', '1675036980', '1675038141', 'ADMIN', ''),
(37, 'U134', '2023/01/30', '1675038148', '0', 'MANAGER', '1'),
(38, 'U327', '2023/01/31', '1675139213', '0', 'ADMIN', '1'),
(39, 'U327', '2023/01/31', '1675153896', '1675161157', 'ADMIN', ''),
(40, 'U327', '2023/01/31', '1675161255', '0', 'ADMIN', '1'),
(41, 'U327', '2023/01/03', '1672716710', '0', 'ADMIN', '1'),
(42, 'U327', '2023/02/01', '1675224497', '1675232296', 'ADMIN', ''),
(43, 'U327', '2023/02/01', '1675232403', '0', 'ADMIN', '1'),
(44, 'U327', '2023/02/01', '1675272083', '1675279977', 'ADMIN', ''),
(45, 'U327', '2023/02/02', '1675279988', '1675303663', 'ADMIN', ''),
(46, 'U327', '2023/02/02', '1675303687', '1675318968', 'ADMIN', ''),
(47, 'U327', '2023/02/02', '1675304959', '0', 'ADMIN', '1'),
(48, 'U327', '2023/02/02', '1675318980', '1675318994', 'ADMIN', ''),
(49, 'U327', '2023/02/02', '1675319542', '0', 'ADMIN', '1'),
(50, 'U327', '2023/02/07', '1675759123', '1675759127', 'ADMIN', ''),
(51, 'U327', '2023/02/08', '1675820333', '1675827260', 'ADMIN', ''),
(52, 'U327', '2023/02/08', '1675827270', '0', 'ADMIN', '1'),
(53, 'U327', '2023/02/08', '1675827379', '0', 'ADMIN', '1'),
(54, 'U327', '2023/02/08', '1675841132', '1675844162', 'ADMIN', ''),
(55, 'U327', '2023/02/08', '1675844230', '1675845558', 'ADMIN', ''),
(56, 'U327', '2023/02/08', '1675845596', '1675849533', 'ADMIN', ''),
(57, 'U327', '2023/02/08', '1675849789', '1675850168', 'ADMIN', ''),
(58, 'U327', '2023/02/08', '1675850183', '1675850567', 'ADMIN', ''),
(59, 'U327', '2023/02/08', '1675851637', '1675851937', 'ADMIN', ''),
(60, 'U327', '2023/02/08', '1675851949', '1675852349', 'ADMIN', ''),
(61, 'U327', '2023/02/08', '1675851949', '1675852349', 'ADMIN', ''),
(62, 'U327', '2023/02/08', '1675852503', '0', 'ADMIN', '1'),
(63, 'U327', '2023/02/09', '1675883172', '1675899187', 'ADMIN', ''),
(64, 'U327', '2023/02/09', '1675899315', '1675899323', 'ADMIN', ''),
(65, 'U327', '2023/02/09', '1675899774', '1675903156', 'ADMIN', ''),
(66, 'U327', '2023/02/09', '1675903268', '1675903856', 'ADMIN', ''),
(67, 'U327', '2023/02/09', '1675905557', '1675911364', 'ADMIN', ''),
(68, 'U327', '2023/02/09', '1675916260', '1675916370', 'ADMIN', ''),
(69, 'U327', '2023/02/09', '1675916660', '1675917488', 'ADMIN', ''),
(70, 'U327', '2023/02/09', '1675917535', '1675917542', 'ADMIN', ''),
(71, 'U327', '2023/02/09', '1675917568', '0', 'ADMIN', '1'),
(72, 'U327', '2023/02/10', '1676000152', '0', 'ADMIN', '1');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` bigint(20) NOT NULL,
  `product_id` varchar(64) DEFAULT NULL,
  `supplier_id` varchar(64) DEFAULT NULL,
  `batch_no` varchar(256) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `generic_name` varchar(64) DEFAULT NULL,
  `strength` varchar(64) DEFAULT NULL,
  `form` varchar(64) DEFAULT NULL,
  `box_size` varchar(64) DEFAULT NULL,
  `trade_price` varchar(64) DEFAULT NULL,
  `mrp` varchar(64) DEFAULT NULL,
  `box_price` varchar(64) DEFAULT NULL,
  `product_details` varchar(512) DEFAULT NULL,
  `side_effect` varchar(512) DEFAULT NULL,
  `expire_date` varchar(64) DEFAULT NULL,
  `instock` int(128) DEFAULT NULL,
  `w_discount` varchar(128) DEFAULT NULL,
  `product_image` varchar(256) DEFAULT NULL,
  `short_stock` int(128) DEFAULT NULL,
  `favourite` enum('1','0') NOT NULL DEFAULT '0',
  `date` varchar(256) DEFAULT NULL,
  `discount` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `sale_qty` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `product_id`, `supplier_id`, `batch_no`, `product_name`, `generic_name`, `strength`, `form`, `box_size`, `trade_price`, `mrp`, `box_price`, `product_details`, `side_effect`, `expire_date`, `instock`, `w_discount`, `product_image`, `short_stock`, `favourite`, `date`, `discount`, `sale_qty`) VALUES
(366, 'P12401', 'S34998', '4800047862557', 'White Blush', 'Body and Face Powder', '50g', 'Tablet', '200', '30', '20', '4000.00', NULL, '', '08/02/2024', 0, NULL, 'P12401.png', 20, '1', '1690927200', 'YES', '160'),
(368, 'P35206', 'S32074', '6973388670346', 'Baby Wipes', 'Runbeimian', '80pcs', 'Others', '30', '15', '20', '600.00', NULL, '', '08/02/2024', 185, NULL, 'P35206.png', 10, '1', '1690927200', 'YES', '195'),
(369, 'P42192', 'S45530', '1470142022', 'BareVanilla La Creme', 'Vinecya\'s Secret', '75ml', 'Others', '30', '50', '60', '1800.00', NULL, '', '24/02/2024', 3, NULL, 'P42192.png', 10, '1', '1690927200', 'YES', '0'),
(370, 'P46080', 'S41245', '4801981118519', 'Royal', 'Royal', '250ml', 'Others', '6', '10', '12', '72.00', NULL, '', '08/02/2023', 0, NULL, 'P46080.png', 10, '1', '1690927200', 'YES', NULL),
(371, 'P20596', 'S41245', '4801981118519', 'Royal', 'Royal', '250ml', 'Others', '6', '10', '12', '72.00', NULL, '', '08/02/2023', 0, NULL, 'P20596.png', 10, '1', '1690927200', 'YES', NULL),
(372, 'P5685', 'S32074', '1271399230', 'Strawberry', 'Wipes Strawberry', '50g', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '08/02/2024', 0, NULL, 'P5685.png', 20, '1', '1690927200', 'YES', NULL),
(373, 'P34634', 'S32074', '1271399230', 'Strawberry', 'Wipes Strawberry', '50g', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '08/02/2024', 0, NULL, 'P34634.png', 20, '1', '1690927200', 'YES', NULL),
(374, 'P21814', 'S32074', '445808804', 'Vanilla', 'Baby Vanilla', '50g', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '24/02/2024', 0, NULL, 'P21814.png', 20, '1', '1690927200', 'YES', NULL),
(375, 'P32473', 'S32074', '874141786', 'Lemon', 'Baby lemon', '60', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P32473.png', 20, '1', '1690927200', 'YES', NULL),
(376, 'P35413', 'S32074', '123131321313', 'Lemon 2', 'Baby lemon 2', '60', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P35413.png', 0, '1', '1690927200', 'YES', NULL),
(377, 'P19197', 'S32074', '123131321313', 'Lemon 3', 'Baby lemon 3', '60', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P19197.png', 0, '1', '1690927200', 'YES', NULL),
(378, 'P21179', 'S32074', '594007835', 'Strawberry 2', 'Wipes Strawberry 2', '50g', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P21179.png', 0, '1', '1690927200', 'YES', NULL),
(379, 'P20436', 'S32074', '594007835', 'Strawberry 2', 'Wipes Strawberry 2', '50g', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P20436.png', 20, '1', '1690927200', 'YES', NULL),
(380, 'P44761', 'S32074', '594007835', 'Strawberry 2', 'Wipes Strawberry 2', '50g', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P44761.png', 20, '1', '1690927200', 'YES', NULL),
(381, 'P15873', 'S32074', '1216614877', 'Blueberry', 'Blueberry', '20g', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '08/02/2024', 0, NULL, 'P15873.png', 20, '1', '1690927200', 'YES', NULL),
(382, 'P36722', 'S32074', '1216614877', 'Blueberry', 'Blueberry', '20g', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '08/02/2024', 0, NULL, 'P36722.png', 20, '1', '1690927200', 'YES', NULL),
(383, 'P4016', 'S32074', '248644138', 'bb', 'bb', '20', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P4016.png', 5, '1', '1690927200', 'YES', NULL),
(384, 'P34370', 'S32074', '248644138', 'bb', 'bb', '20', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P34370.png', 5, '1', '1690927200', 'YES', NULL),
(385, 'P22813', 'S32074', '248644133', 'gg', 'gg', '20', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P22813.png', 5, '1', '1690927200', 'YES', NULL),
(386, 'P5131', 'S32074', '784327970', 'BSD', 'BSD', '20', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 200, NULL, 'P5131.png', 20, '1', '1690927200', 'YES', NULL),
(387, 'P27381', 'S32074', '784327972', 'BSD', 'BSF', '20', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P27381.png', 20, '1', '1690927200', 'YES', NULL),
(388, 'P33223', 'S32074', '951662115', 'WIPESAA', 'WIPESAA', '20', 'Tablet', '200', '20', '20', '4000.00', NULL, '', '09/02/2023', 0, NULL, 'P33223.png', 20, '1', '1690927200', 'YES', NULL),
(389, 'P7990', 'S53429', '750515031043', 'skyflakes', 'skyflakes', '30', 'Others', '11', '5', '10', '110.00', NULL, '', '09/02/2023', 0, NULL, 'P7990.png', 10, '1', '1693605600', 'YES', '100'),
(390, 'P36012', 'S53429', '750515031043', 'skyflakes', 'skyflakes', '30', 'Tablet', '11', '5', '10', '110.00', NULL, '', '09/02/2023', 0, NULL, 'P36012.png', 10, '1', '1693605600', 'YES', NULL),
(391, 'P42113', 'S53429', '750515031043', 'skyflakes', 'skyflakes', '30', 'Tablet', '11', '5', '10', '110.00', NULL, '', '09/02/2023', 0, NULL, 'P42113.png', 10, '1', '1693605600', 'YES', NULL),
(392, 'P32254', 'S53429', '750515031043', 'skyflakes', 'skyflakes', '30', 'Tablet', '11', '5', '10', '110.00', NULL, '', '09/02/2023', 0, NULL, 'P32254.png', 10, '1', '1693605600', 'YES', NULL),
(393, 'P38844', 'S53429', '750515031043', 'skyflakes', 'skyflakes', '30', 'Tablet', '11', '5', '10', '110.00', NULL, '', '09/02/2023', 0, NULL, 'P38844.png', 10, '1', '1693605600', 'YES', NULL),
(394, 'P41590', 'S41245', '929124035', 'Cokemismo', 'CokeMismo', '30', 'Tablet', '200', '20', '2', '400.00', NULL, '', '09/02/2023', 0, NULL, 'P41590.png', 20, '1', '1693605600', 'YES', NULL),
(395, 'P43745', 'S32074', '8935001880158', 'ballpen', 'ballpen', '54', 'Tablet', '544', '454', '4', '2176.00', NULL, '', '09/02/2023', 0, NULL, 'P43745.png', 0, '1', '1693605600', 'YES', NULL),
(396, 'P39890', 'S32074', '8935001880158', 'ballpen', 'ballpen', '54', 'Tablet', '544', '454', '4', '2176.00', NULL, '', '09/02/2023', 0, NULL, 'P39890.png', 696, '1', '1693605600', 'YES', NULL),
(397, 'P46397', 'S32074', '8935001880158', 'ballpen', 'ballpen', '54', 'Tablet', '544', '454', '4', '2176.00', NULL, '', '09/02/2023', 0, NULL, 'P46397.png', 696, '1', '1693605600', 'YES', NULL),
(398, 'P1872', 'S32074', '8935001880158', 'ballpen', 'ballpen', '54', 'Tablet', '544', '454', '4', '2176.00', NULL, '', '09/02/2023', 0, NULL, 'P1872.png', 696, '1', '1693605600', 'YES', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(14) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `contact` varchar(256) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(14) NOT NULL,
  `p_id` varchar(64) DEFAULT NULL,
  `sid` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(64) DEFAULT NULL,
  `pur_date` varchar(64) DEFAULT NULL,
  `pur_details` varchar(64) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL,
  `gtotal_amount` varchar(64) DEFAULT NULL,
  `entry_date` varchar(64) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `p_id`, `sid`, `invoice_no`, `pur_date`, `pur_details`, `total_discount`, `gtotal_amount`, `entry_date`, `entry_id`) VALUES
(146, 'P2071864', 'S45530', '54468945556', '1675810800', '', NULL, '500', '1675853330', 'U327'),
(147, 'P9979243', 'S53429', '2453543653', '1675897200', '', NULL, '500', '1675906988', 'U327'),
(148, 'P5294323', 'S32074', '21312314', '1675897200', '', NULL, '4000', '1675910977', 'U327');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `ph_id` int(14) NOT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `qty` varchar(128) DEFAULT NULL,
  `supplier_price` varchar(128) DEFAULT NULL,
  `discount` varchar(128) DEFAULT NULL,
  `expire_date` varchar(128) DEFAULT NULL,
  `total_amount` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `pur_id`, `mid`, `supp_id`, `qty`, `supplier_price`, `discount`, `expire_date`, `total_amount`) VALUES
(256, 'P2071864', 'P42192', 'S45530', '10', '50', NULL, '0', '500'),
(257, 'P9979243', 'P7990', 'S53429', '100', '5', NULL, '1693584000', '500'),
(258, 'P5294323', 'P5131', 'S32074', '200', '20', NULL, '1693584000', '4000');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `id` int(14) NOT NULL,
  `r_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(64) DEFAULT NULL,
  `sid` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(128) DEFAULT NULL,
  `return_date` varchar(128) DEFAULT NULL,
  `total_deduction` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` int(14) NOT NULL,
  `r_id` varchar(128) DEFAULT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `return_qty` varchar(64) DEFAULT NULL,
  `deduction_amount` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(14) NOT NULL,
  `sale_id` varchar(64) DEFAULT NULL,
  `cus_id` varchar(64) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL,
  `total_amount` varchar(64) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `due_amount` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(128) DEFAULT NULL,
  `create_date` varchar(128) DEFAULT NULL,
  `monthyear` varchar(64) DEFAULT NULL,
  `entryid` varchar(64) DEFAULT NULL,
  `counter` varchar(64) DEFAULT NULL,
  `pay_status` enum('Hold','Pay') NOT NULL DEFAULT 'Pay',
  `sales_time` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_id`, `cus_id`, `total_discount`, `total_amount`, `paid_amount`, `due_amount`, `invoice_no`, `create_date`, `monthyear`, `entryid`, `counter`, `pay_status`, `sales_time`) VALUES
(392, 'S7762154', 'WalkIn', '4', '16', '16', '0', '32617692', '1675849138', '2023-02', 'U327', 'ADMIN', 'Pay', '1675849138'),
(393, 'S6884104', 'WalkIn', '60', '240', '100', '140', '28058346', '1675853682', '2023-02', 'U327', 'ADMIN', 'Pay', '1675853682'),
(394, 'S3984386', 'WalkIn', '80', '320', '320', '0', '10743662', '1675853912', '2023-02', 'U327', 'ADMIN', 'Pay', '1675853912'),
(395, 'S8378943', 'WalkIn', '0', '800', '800', '0', '43338628', '1675907284', '2023-02', 'U327', 'ADMIN', 'Pay', '1675907284'),
(396, 'S1655846', 'WalkIn', '0', '240', '240', '0', '31935823', '1675907515', '2023-02', 'U327', 'ADMIN', 'Pay', '1675907515'),
(397, 'S6184227', 'WalkIn', '0', '100', '100', '0', '30699408', '1675907665', '2023-02', 'U327', 'ADMIN', 'Pay', '1675907665');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sd_id` int(14) NOT NULL,
  `sale_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `cartoon` varchar(128) DEFAULT NULL,
  `qty` varchar(128) DEFAULT NULL,
  `rate` varchar(128) DEFAULT NULL,
  `supp_rate` varchar(128) NOT NULL,
  `total_price` varchar(128) DEFAULT NULL,
  `discount` varchar(128) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sd_id`, `sale_id`, `mid`, `cartoon`, `qty`, `rate`, `supp_rate`, `total_price`, `discount`, `total_discount`) VALUES
(653, 'S5055449', 'P39566', NULL, '2', '', '', '2000', '0', NULL),
(654, 'S5055449', 'P39566', NULL, '15', '', '', '15000', '0', NULL),
(655, 'S1947586', 'P39566', NULL, '3', '', '', '3000', '0', NULL),
(656, 'S1192876', 'P39566', NULL, '3', '', '', '3000', '0', NULL),
(657, 'S2749518', 'P21355', NULL, '23', '', '', '23000', '0', NULL),
(658, 'S3125423', 'P49598', NULL, '3', '', '', '3000', '0', NULL),
(659, 'S924268', 'P49598', NULL, '2', '', '', '2000', '0', NULL),
(660, 'S9640524', 'P49598', NULL, '4', '', '', '4000', '0', NULL),
(661, 'S8952517', 'P6283', NULL, '1', '', '', '10', '0', NULL),
(662, 'S2272334', 'P42249', NULL, '100', '', '', '1000', '0', NULL),
(663, 'S2272334', 'P42249', NULL, '1', '', '', '10', '0', NULL),
(664, 'S1173140', 'P42249', NULL, '99', '', '', '990', '0', NULL),
(665, 'S1173140', 'P42249', NULL, '1', '', '', '10', '0', NULL),
(666, 'S4455296', 'P42249', NULL, '2', '', '', '20', '0', NULL),
(667, 'S4455296', 'P42249', NULL, '1', '', '', '10', '0', NULL),
(668, 'S5944488', 'P49598', NULL, '91', '', '', '91000', '0', NULL),
(669, 'S5944488', 'P49598', NULL, '1', '', '', '1000', '0', NULL),
(670, 'S4584966', 'P42249', NULL, '199', '', '', '1990', '0', NULL),
(671, 'S4584966', 'P42249', NULL, '20', '', '', '200', '0', NULL),
(672, 'S3722188', 'P42249', NULL, '80', '', '', '800', '0', NULL),
(673, 'S3722188', 'P42249', NULL, '1', '', '', '10', '0', NULL),
(674, 'S9401694', 'P42249', NULL, '19', '', '', '190', '0', NULL),
(675, 'S9401694', 'P42249', NULL, '1', '', '', '10', '0', NULL),
(676, 'S7250002', 'P42249', NULL, '9', '', '', '90', '0', NULL),
(677, 'S7250002', 'P42249', NULL, '1', '', '', '10', '0', NULL),
(678, 'S3265658', 'P42249', NULL, '89', '', '', '890', '0', NULL),
(679, 'S7197223', 'P4398', NULL, '20', '', '', '200', '0', NULL),
(680, 'S9810778', 'P4398', NULL, '180', '', '', '1800', '0', NULL),
(681, 'S2594139', 'P36582', NULL, '20', '', '', '200', '0', NULL),
(682, 'S7325453', 'P36582', NULL, '23', '', '', '230', '0', NULL),
(683, 'S2475844', 'P4502', NULL, '2', '', '', '4', '0', NULL),
(684, 'S2475844', 'P36582', NULL, '3', '', '', '30', '0', NULL),
(685, 'S2475844', 'P40098', NULL, '8', '', '', '8000', '0', NULL),
(686, 'S2475844', 'P49598', NULL, '9', '', '', '9000', '0', NULL),
(687, 'S2475844', 'P15631', NULL, '9', '', '', '9', '0', NULL),
(688, 'S7072744', 'P6283', NULL, '4', '', '', '40', '0', NULL),
(689, 'S6191508', 'P43103', NULL, '20', '', '', '4660', '0', NULL),
(690, 'S5781333', 'P43103', NULL, '20', '', '', '3728', '932', NULL),
(691, 'S466368', 'P12401', NULL, '20', '', '', '320', '80', NULL),
(692, 'S4789175', 'P35206', NULL, '1', '', '', '20', '0', NULL),
(693, 'S7762154', 'P35206', NULL, '1', '', '', '16', '4', NULL),
(694, 'S6884104', 'P42192', NULL, '5', '', '', '240', '60', NULL),
(695, 'S3984386', 'P35206', NULL, '10', '', '', '160', '40', NULL),
(696, 'S3984386', 'P12401', NULL, '10', '', '', '160', '40', NULL),
(697, 'S8378943', 'P7990', NULL, '80', '', '', '800', '0', NULL),
(698, 'S1655846', 'P7990', NULL, '20', '', '', '200', '0', NULL),
(699, 'S1655846', 'P35206', NULL, '2', '', '', '40', '0', NULL),
(700, 'S6184227', 'P35206', NULL, '5', '', '', '100', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `id` int(14) NOT NULL,
  `sr_id` varchar(128) DEFAULT NULL,
  `cus_id` varchar(128) DEFAULT NULL,
  `sale_id` varchar(128) DEFAULT NULL,
  `invoice_no` varchar(256) DEFAULT NULL,
  `return_date` varchar(128) DEFAULT NULL,
  `total_deduction` varchar(128) DEFAULT NULL,
  `total_amount` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL,
  `counter` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_details`
--

CREATE TABLE `sales_return_details` (
  `id` int(14) NOT NULL,
  `sr_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `r_qty` varchar(128) DEFAULT NULL,
  `r_total` varchar(128) DEFAULT NULL,
  `r_deduction` varchar(128) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `sitelogo` varchar(128) DEFAULT NULL,
  `sitetitle` varchar(256) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `copyright` varchar(128) DEFAULT NULL,
  `contact` varchar(128) DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL,
  `symbol` varchar(64) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `sitelogo`, `sitetitle`, `description`, `copyright`, `contact`, `currency`, `symbol`, `email`, `address`) VALUES
(1, 'Gencare Pharmacy', 'logo2.png', 'Gencare Pharmacy', 'Gencare Pharmacy', 'Genit Bangladesh', '09175587104', 'TK', 'TK', 'Gencare@gmail.com', 'Cabuyao Laguna');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(14) NOT NULL,
  `s_id` varchar(64) DEFAULT NULL,
  `s_name` varchar(256) DEFAULT NULL,
  `s_email` varchar(256) DEFAULT NULL,
  `s_note` varchar(512) DEFAULT NULL,
  `s_phone` varchar(128) DEFAULT NULL,
  `s_address` varchar(512) NOT NULL,
  `s_img` varchar(256) DEFAULT NULL,
  `entrydate` varchar(128) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `s_id`, `s_name`, `s_email`, `s_note`, `s_phone`, `s_address`, `s_img`, `entrydate`, `status`) VALUES
(76, 'S34998', 'Lewis&Pearl', 'lp@gmail.com', '', '092636662772', 'Calamba City', 'S34998.png', '02-08-2023 03:40:32pm', 'Active'),
(77, 'S32074', 'Shandong', 'shandong@gmail.com', '', '09655213685', 'Linyi City', 'S32074.png', '02-08-2023 03:48:20pm', 'Active'),
(78, 'S45530', 'Vinecya\'s Secret', 'VinecyaSecret@gmail.com', '', '09547784531', 'Calamba City', 'S45530.png', '02-08-2023 03:56:59pm', 'Active'),
(79, 'S41245', 'COCACOLA', 'cocacola@gmail.com', '', '095641557865', 'Calamba City', 'S41245.png', '02-08-2023 06:38:26pm', 'Active'),
(80, 'S53429', 'M.Y. SAN', 'MYSAN@gmail.com', '', '0945587457621', 'calamba city', 'S53429.png', '02-09-2023 09:23:32am', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_ledger`
--

CREATE TABLE `supplier_ledger` (
  `id` int(14) NOT NULL,
  `supplier_id` varchar(256) DEFAULT NULL,
  `total_amount` varchar(256) DEFAULT NULL,
  `total_paid` varchar(256) DEFAULT NULL,
  `total_due` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `supplier_ledger`
--

INSERT INTO `supplier_ledger` (`id`, `supplier_id`, `total_amount`, `total_paid`, `total_due`) VALUES
(61, 'S34998', '6000', '20', '5980'),
(62, 'S32074', '7000', '11000', '4000'),
(63, 'S45530', '500', '500', '0'),
(64, 'S41245', '0', '0', '0'),
(65, 'S53429', '500', '100', '400');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE `supplier_product` (
  `sp_id` int(14) NOT NULL,
  `pro_id` varchar(64) DEFAULT NULL,
  `sup_id` varchar(64) DEFAULT NULL,
  `sup_price` varchar(64) DEFAULT NULL,
  `sup_date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supp_account`
--

CREATE TABLE `supp_account` (
  `id` int(14) NOT NULL,
  `supplier_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `total_amount` varchar(64) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `due_amount` varchar(256) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `supp_account`
--

INSERT INTO `supp_account` (`id`, `supplier_id`, `pur_id`, `total_amount`, `paid_amount`, `due_amount`, `date`) VALUES
(31, 'S33148', 'P8947243', '0', '10000', '10000', ''),
(32, 'S33148', 'P4013193', '2980', '0', '0', ''),
(33, 'S48650', 'P1030291', '1000', '0', '0', ''),
(34, 'S48650', 'P3810945', '1100', '2000', '900', ''),
(35, 'S33148', 'P9768238', '2000', '3000', '1000', ''),
(36, 'S48650', 'P3358291', '2000', '3000', '1000', ''),
(37, 'S33148', 'P2965045', '1000', '2000', '1000', ''),
(38, 'S33148', 'P8327682', '1000', '2000', '1000', ''),
(39, 'S33148', 'P2532904', '40000', '80000', '40000', ''),
(40, 'S33148', 'P6044159', '30', '40', '10', ''),
(41, 'S33148', 'P9451332', '2000', '3000', '1000', ''),
(42, 'S33148', 'P9324713', '1000', '1000', '0', ''),
(43, 'S33148', 'P3406961', '200', '200', '0', ''),
(44, 'S33148', 'P5186375', '100', '100', '0', ''),
(45, 'S33148', 'P3581852', '900', '900', '0', ''),
(46, 'S48650', 'P9560504', '3000', '3000', '0', ''),
(47, 'S34998', 'P242108', '6000', '20', '5980', ''),
(48, 'S32074', 'P360736', '3000', '3000', '0', '02/08/2023'),
(49, 'S45530', 'P2071864', '500', '500', '0', ''),
(50, 'S53429', 'P9979243', '500', '100', '400', ''),
(51, 'S32074', 'P5294323', '4000', '8000', '4000', '');

-- --------------------------------------------------------

--
-- Table structure for table `supp_payment`
--

CREATE TABLE `supp_payment` (
  `id` int(14) NOT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `bank_id` int(14) DEFAULT NULL,
  `cheque_no` varchar(128) DEFAULT NULL,
  `issue_date` varchar(64) DEFAULT NULL,
  `receiver_name` varchar(128) DEFAULT NULL,
  `receiver_contact` varchar(128) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `supp_payment`
--

INSERT INTO `supp_payment` (`id`, `supp_id`, `pur_id`, `type`, `bank_id`, `cheque_no`, `issue_date`, `receiver_name`, `receiver_contact`, `paid_amount`, `date`) VALUES
(46, 'S33148', 'P8947243', 'Credit', NULL, NULL, NULL, '', '', '10000', ''),
(47, 'S33148', 'P4013193', 'Credit', NULL, NULL, NULL, '', '', '0', ''),
(48, 'S48650', 'P1030291', 'Credit', NULL, NULL, NULL, '', '', '0', ''),
(49, 'S48650', 'P3810945', 'Credit', NULL, NULL, NULL, '', '', '2000', ''),
(50, 'S33148', 'P9768238', 'Credit', NULL, NULL, NULL, '', '', '3000', ''),
(51, 'S48650', 'P3358291', 'Credit', NULL, NULL, NULL, '', '', '3000', ''),
(52, 'S33148', 'P2965045', 'Credit', NULL, NULL, NULL, '', '', '2000', ''),
(53, 'S33148', 'P8327682', 'Credit', NULL, NULL, NULL, '', '', '2000', ''),
(54, 'S33148', 'P2532904', 'Credit', NULL, NULL, NULL, '', '', '80000', ''),
(55, 'S33148', 'P6044159', 'Credit', NULL, NULL, NULL, '', '', '40', ''),
(56, 'S33148', 'P9451332', 'Credit', NULL, NULL, NULL, '', '', '3000', ''),
(57, 'S33148', 'P9324713', 'Credit', NULL, NULL, NULL, '', '', '1000', ''),
(58, 'S33148', 'P3406961', 'Credit', NULL, NULL, NULL, '', '', '200', ''),
(59, 'S33148', 'P5186375', 'Credit', NULL, NULL, NULL, '', '', '100', ''),
(60, 'S33148', 'P3581852', 'Credit', NULL, NULL, NULL, '', '', '900', ''),
(61, 'S48650', 'P9560504', 'Credit', NULL, NULL, NULL, '', '', '3000', ''),
(62, 'S34998', 'P242108', 'Credit', NULL, NULL, NULL, '', '', '20', ''),
(63, 'S32074', 'P360736', 'Credit', NULL, NULL, NULL, 'jenica suarez', '09745114748', '3000', '02/08/2023'),
(64, 'S45530', 'P2071864', 'Credit', NULL, NULL, NULL, '', '', '500', ''),
(65, 'S53429', 'P9979243', 'Credit', NULL, NULL, NULL, '', '', '100', ''),
(66, 'S32074', 'P5294323', 'Credit', NULL, NULL, NULL, '', '', '8000', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `em_name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `em_role` enum('SALESMAN','ADMIN','MANAGER') NOT NULL DEFAULT 'SALESMAN',
  `em_contact` varchar(128) DEFAULT NULL,
  `em_address` varchar(512) DEFAULT NULL,
  `em_image` varchar(256) DEFAULT NULL,
  `em_details` varchar(512) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `em_entrydate` varchar(64) DEFAULT NULL,
  `em_ip` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `em_id`, `em_name`, `email`, `password`, `em_role`, `em_contact`, `em_address`, `em_image`, `em_details`, `status`, `em_entrydate`, `em_ip`) VALUES
(24, 'U392', 'nawjesh', 'admin@gmail.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'ADMIN', '01723177901', 'egrvrevge rgret', 'U3921.jpg', 'erer treter r gefgfdfg dfs', 'ACTIVE', '0', '::1'),
(25, 'U134', 'Nawjesh', 'example@example.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'MANAGER', '01723177901', 'Kolabagan', 'U134.jpg', 'Nawjesh jahan soyeb', 'ACTIVE', '0', '::1'),
(26, 'U310', 'Nawjesh', 'nawjeshbd@gmail.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'SALESMAN', '01723177901', 'egrvrevge rgret', NULL, 'dfgfdgfdg fdg df', 'INACTIVE', '0', '::1'),
(27, 'U327', 'Gencare', 'gencare@gmail.com', 'ca6158c0f6170c7d39203faa94cc6430192aceb8', 'ADMIN', '0998454343', 'calamba city, laguna', 'U327.png', '', 'ACTIVE', '0', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_report`
--
ALTER TABLE `accounts_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `closing`
--
ALTER TABLE `closing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_ledger`
--
ALTER TABLE `customer_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_service`
--
ALTER TABLE `fire_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sd_id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `supp_account`
--
ALTER TABLE `supp_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supp_payment`
--
ALTER TABLE `supp_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_report`
--
ALTER TABLE `accounts_report`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `closing`
--
ALTER TABLE `closing`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `customer_ledger`
--
ALTER TABLE `customer_ledger`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `ph_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sd_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `sp_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supp_account`
--
ALTER TABLE `supp_account`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `supp_payment`
--
ALTER TABLE `supp_payment`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
