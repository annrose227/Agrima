-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 09:16 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', 'The Palai Social Welfare Society (PSWS) is the result of the foresightedness of our late beloved Bishop Mar Sebastian Vayalil, the first Bishop of the diocese of Palai, for the upliftment of the people. It is an apolitical, secular voluntary organization, established in the year 1964\r\n\r\nand registered under Travancore Cochin Literacy Scientific and Charitable Societyâ€™s Act of 1955, which constituted as a Charitable Organization. PSWS is also registered under the Foreign Contribution Regulation Act (FCRA) and has Income Tax Exemption under 12A.', 'The society is committed, since its very inception, to the cause of the marginalized sections of the society regardless of their caste, creed, community and sex. It is engaged in a process towards their socio-economic and political empowerment and sustainable development. Its interventions are geared towards building critical mass/ critical consciousness, community organization, community /integral health, sanitation and personal hygiene, gender sensitization and womenâ€™s emancipation, utmost use and management of solar and renewable energy, upholding control over and eco-friendly effective management of natural resources and so on.\r\n\r\nPeopleâ€™s issues, needs and rights have constituted the driving force behind all its initiatives. The agency facilitates community action toward the fulfilment of basic amenities and creation of household and community assets. It has adopted Self Help Group Approach to a holistic development of society. It does boost community initiatives for tapping into the government resources and provisions meant for them.\r\n\r\nThe major beneficiaries of our concern are nearly twenty thousand people whom spread over three districts of Kerala â€“ Kottayam, Idukki, and Ernakulam. The Society is well connected to the people in the grassroots level through the 1200 Self Help Groups for Women / Men and hence the Society is able to understand and help whenever there is a necessity.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '7777775500', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(31, '::1', 3, '80', 'Small'),
(34, '::1', 2, '175', 'Large'),
(76, '::1', 0, '70', 'Select a Size'),
(222, '::1', 3, '300', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(3, 'FOOD GROCERIES', 'no', 'selfconfidence-icon-confidence-life-skills-600w-2221514161.webp'),
(4, 'MILLETS', 'yes', 'othericon.png'),
(5, 'HOME & KITCHEN', 'yes', 'import.png'),
(6, 'HOME CARE', 'yes', 'farm-fresh-logo-is-green-logo_647881-672.avif'),
(7, 'PERSONAL CARE', 'yes', 'agrima favicon.png'),
(8, 'Supply Store', 'yes', 'agrima.ico'),
(9, 'Nursery', 'yes', 'agrima.ico'),
(10, 'Fruits and Vegetables', 'yes', 'agrima.ico');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'dsssp@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(5, 8, 'Sale', '10', 'CASTRO', 2, 1),
(6, 14, 'Sale', '65', 'CODEASTRO', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(3, 'Demo Customer', 'demo@customer.com', 'Password123', 'DemoCountry', 'DemoCity', '700000000', 'DemoAddress', 'sample_image.jpg', '::1', ''),
(6, 'Sample Customer', 'customer@mail.com', 'Password123', 'Sample Country', 'Sample City', '7800000000', 'Sample Address', 'user-icn-min.png', '::1', '174829126'),
(7, 'Manu Sebastian', 'manusebastian018@gmail.com', 'example@123', 'India', 'ERATTUPETTA', '7012234829', 'Thengummoottil', 'blank-profile-picture-973460_960_720.webp', '::1', '805089460');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(23, 3, 20, 1762810884, 1, 'Medium', '2021-09-14 08:35:57', 'Complete'),
(24, 4, 100, 1972602052, 1, 'Large', '2021-09-14 16:37:52', 'Complete'),
(25, 4, 90, 2008540778, 1, 'Medium', '2021-09-14 16:43:15', 'pending'),
(27, 5, 120, 2138906686, 1, 'Small', '2021-09-15 03:18:41', 'Complete'),
(28, 5, 180, 361540113, 2, 'Medium', '2021-09-15 03:25:42', 'Complete'),
(29, 3, 100, 858195683, 1, 'Large', '2021-09-15 03:14:01', 'Complete'),
(31, 6, 245, 901707655, 1, 'Medium', '2021-09-15 03:52:18', 'Complete'),
(32, 6, 75, 2125554712, 1, 'Large', '2021-09-15 03:52:58', 'pending'),
(33, 7, 50, 946322478, 2, 'Small', '2024-06-11 09:52:12', 'pending'),
(34, 7, 125, 1725160547, 5, 'Select a Size', '2024-06-15 09:04:07', 'pending'),
(35, 7, 100, 863105951, 2, 'Select a Size', '2024-06-17 07:50:43', 'pending'),
(36, 7, 0, 863105951, 0, 'Select a Size', '2024-06-17 07:50:43', 'pending'),
(37, 7, 10, 863105951, 2, 'Select a Size', '2024-06-17 07:50:43', 'pending'),
(38, 7, 25, 1293604782, 5, 'Select a Size', '2024-06-17 08:57:45', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(8, 'MOON FOODS', 'yes', 'sample_img360.png'),
(9, 'Local Producer', 'yes', ''),
(10, 'JME MANNACKANAD', 'yes', ''),
(11, 'Mithras ', 'yes', ''),
(12, 'Mithram', 'yes', ''),
(13, 'KANJIRAMATTAM - KAPCO', 'yes', ''),
(14, 'Agrima ', 'yes', ''),
(15, 'MILLET BANK', 'no', ''),
(16, 'BATH SOAP', 'yes', ''),
(18, 'Others', 'yes', ''),
(19, 'AG PACKING', 'yes', ''),
(20, 'ATHULYAM DRYMIX', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni', 443, 865, '11/1/2016'),
(4, 6906, 400, 'Western Union', 101025780, 696950, 'January 1'),
(5, 10023, 20, 'Bank Code', 1000010101, 6969, '09/14/2021'),
(6, 69088, 100, 'Bank Code', 1010101022, 88669, '09/14/2021'),
(7, 1835758347, 480, 'Western Union', 1785002101, 66990, '09-04-2021'),
(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(32, 6, 2125554712, '15', 1, 'Large', 'pending'),
(33, 7, 946322478, '16', 2, 'Small', 'pending'),
(34, 7, 1725160547, '16', 5, 'Select a Size', 'pending'),
(35, 7, 863105951, '19', 2, 'Select a Size', 'pending'),
(36, 7, 863105951, '24', 0, 'Select a Size', 'pending'),
(37, 7, 863105951, '25', 2, 'Select a Size', 'pending'),
(38, 7, 1293604782, '25', 5, 'Select a Size', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(18, 16, 4, 9, '2024-06-22 07:10:22', 'Elephant foot Yam', 'yam-1 ', 'elephant-foot-yam.jpg', '51RXzZfRxQL._AC_UF1000,1000_QL80_.jpg', '51RXzZfRxQL._AC_UF1000,1000_QL80_.jpg', 126, 130, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'yam', 'Sale', 'product'),
(19, 9, 5, 11, '2024-06-22 07:10:33', 'Chikoo', 'chikoo-1', 'chikoo.jpg', 'chikoo.jpg', '309673-chikoo.jpg', 50, 50, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'fruits', 'Sale', 'product'),
(20, 16, 3, 8, '2024-06-22 07:10:44', 'Coconut', 'coco-1', 'coco.jpg', 'cocobut.jpg', 'coco.jpg', 40, 40, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'naalikera', 'Sale', 'product'),
(21, 9, 3, 9, '2024-06-21 08:22:57', 'Poovan Pazham', 'banana 2', 'banana.jpg', 'banana.1.jpg', 'banana.jpg', 65, 65, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'banana', 'Sale', 'product'),
(22, 9, 3, 9, '2024-06-21 08:22:57', 'Nethra pazham', 'banana 2', 'nethra.jpg', 'product-jpeg-500x500.jpg', 'nethra.jpg', 65, 65, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'banana', 'Sale', 'product'),
(23, 9, 3, 11, '2024-06-21 08:22:57', 'Pappaya', 'pappaya 2', 'papp-1000x1000.jpg', 'NADAN-PAPPAYA.jpg', 'papp-1000x1000.jpg', 75, 75, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'fruit ', 'Sale', 'product'),
(24, 16, 3, 13, '2024-06-21 08:22:57', 'cucumber', 'cumber', 'cucmber.jpg', 'cucu.jpg', 'cucmber.jpg', 40, 40, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'veg', 'Sale', 'product'),
(26, 17, 3, 14, '2024-06-21 08:22:57', 'Pearl Millets(à´•à´®àµà´ªàµ)', 'mil', 'pearl.jpg', 'pearl2.jpg', 'pearl.jpg', 50, 48, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(27, 17, 3, 14, '2024-06-21 08:22:57', 'Proso Millet(à´ªà´¨à´¿à´µà´°à´•àµ)', 'mil2', 'porso .jpg', 'pors2.jpg', 'porso .jpg', 80, 70, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(28, 17, 6, 14, '2024-06-21 08:22:57', 'Kodo Millets(à´µà´°à´•àµ à´…à´°à´¿)', 'mil3', 'WhatsApp Image 2024-06-17 at 15.51.24_f03b7628.jpg', 'k2.jpg', 'WhatsApp Image 2024-06-17 at 15.51.24_f03b7628.jpg', 80, 70, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(29, 17, 6, 14, '2024-06-21 08:22:57', 'Kurumbullu(à´•àµà´±àµà´®àµà´ªàµà´²àµà´²àµ)', 'mil4', 'kurumb.jpg', 'kur2.jpg', 'kurumb.jpg', 30, 25, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(30, 17, 3, 14, '2024-06-21 08:22:57', 'Sorgham(à´œàµ‹à´µàµ¼)', 'mil5', 'sorgh.jpg', 'sorgh 2.jpg', 'sorgh.jpg', 60, 55, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(31, 17, 3, 14, '2024-06-21 08:22:57', 'Little Millets(à´šà´¾à´® à´…à´°à´¿)', 'mil6', 'lil mill.jpg', 'lil mill2.jpg', 'lil mill.jpg', 80, 70, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(32, 17, 3, 14, '2024-06-21 08:22:57', 'Barnyard (à´•àµà´¤à´¿à´°à´µà´¾à´²à´¿)', 'ml7', 'kuthiravali.jpg', 'kuth2.jpg', 'kuthiravali.jpg', 90, 80, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(33, 17, 3, 14, '2024-06-21 08:22:57', 'Foxtail Millets(à´¤à´¿à´¨ à´…à´°à´¿)', 'mill8', 'foxtail.jpg', 'foxtail2.jpg', 'foxtail.jpg', 80, 70, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(34, 17, 3, 14, '2024-06-21 08:22:57', 'Browntop millets(à´•àµŠà´±àµ‡à´²à´¿)', 'mil55', 'btop.jpg', 'bt2.jpg', 'btop.jpg', 175, 160, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Tasty,Healthy,Pure,No GMO ', 'Sale', 'product'),
(35, 16, 3, 9, '2024-06-21 08:22:57', 'Onion(à´¸à´µà´¾à´³)', 'oni', 'oni.jpg', 'Onion-72ea178.webp', 'oni.jpg', 50, 50, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'organic', 'Sale', 'product'),
(36, 22, 3, 19, '2024-06-21 08:22:57', 'UNAKKU KAPPA 1KG\'', '36', 'images.jpeg', 'images.jpeg', 'images.jpeg', 120, 110, '', '', '', '100% Organic', 'Sale', 'product'),
(37, 28, 4, 14, '2024-06-21 08:22:57', 'MIXED MILLET ATTA/ FLOUR 500GM\'', '37', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 75, '', '', '', '100% Organic', 'Sale', 'product'),
(38, 28, 4, 14, '2024-06-21 08:22:57', 'MIXED MILLET ATTA/ FLOUR KG', '38', 'images.jpeg', 'images.jpeg', 'images.jpeg', 160, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(39, 23, 4, 14, '2024-06-21 08:22:57', 'CHAMA MILLET FLAKES/ AVAL 500G', '39', 'images.jpeg', 'images.jpeg', 'images.jpeg', 145, 140, '', '', '', '100% Organic', 'Sale', 'product'),
(40, 23, 4, 14, '2024-06-21 08:22:57', 'CHAMA MILLET FLAKES/ AVAL KG', '40', 'images.jpeg', 'images.jpeg', 'images.jpeg', 290, 280, '', '', '', '100% Organic', 'Sale', 'product'),
(41, 23, 4, 14, '2024-06-21 08:22:57', 'KUTHIRAVALY MILLET FLAKES/ AVAL 400G', '41', 'images.jpeg', 'images.jpeg', 'images.jpeg', 125, 115, '', '', '', '100% Organic', 'Sale', 'product'),
(42, 23, 4, 14, '2024-06-21 08:22:57', 'MIXED MILLET FLAKES 400GM', '42', 'images.jpeg', 'images.jpeg', 'images.jpeg', 110, 110, '', '', '', '100% Organic', 'Sale', 'product'),
(43, 23, 4, 14, '2024-06-21 08:22:57', 'RAGI AVAL/ FLAKES 400GM', '43', 'images.jpeg', 'images.jpeg', 'images.jpeg', 110, 110, '', '', '', '100% Organic', 'Sale', 'product'),
(44, 24, 4, 20, '2024-06-21 08:22:57', 'DRYMIX BEETROOT MURUKKU 200G', '44', 'images.jpeg', 'images.jpeg', 'images.jpeg', 90, 86, '', '', '', '100% Organic', 'Sale', 'product'),
(45, 24, 4, 20, '2024-06-21 08:22:57', 'DRYMIX MORINGA MURUKKU 200G', '45', 'images.jpeg', 'images.jpeg', 'images.jpeg', 90, 86, '', '', '', '100% Organic', 'Sale', 'product'),
(46, 24, 4, 20, '2024-06-21 08:22:57', 'DRYMIX MORINGA PAKKAVADA 200G', '46', 'images.jpeg', 'images.jpeg', 'images.jpeg', 90, 86, '', '', '', '100% Organic', 'Sale', 'product'),
(47, 24, 4, 20, '2024-06-21 08:22:57', 'DRYMIX RAGI MURUKKU 200G', '47', 'images.jpeg', 'images.jpeg', 'images.jpeg', 90, 86, '', '', '', '100% Organic', 'Sale', 'product'),
(48, 24, 4, 20, '2024-06-21 08:22:57', 'DRYMIX RAGI PAKKAVADA 200G', '48', 'images.jpeg', 'images.jpeg', 'images.jpeg', 90, 86, '', '', '', '100% Organic', 'Sale', 'product'),
(49, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP AYURVEDIC', '49', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(50, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP CHANDRIKA', '50', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(51, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP JASMINE', '51', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(52, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP LAVENDER', '52', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(53, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP LEMON', '53', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(54, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP LUX', '54', 'images.jpeg', 'images.jpeg', 'images.jpeg', 18, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(55, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP MULTANI MITTI', '55', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(56, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP PAPAYA', '56', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(57, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP REXONA', '57', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(58, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP SANDAL', '58', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(59, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP STRAWBERRY', '59', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(60, 26, 7, 16, '2024-06-21 08:22:57', 'BATH SOAP TURMERIC', '60', 'images.jpeg', 'images.jpeg', 'images.jpeg', 20, 16, '', '', '', '100% Organic', 'Sale', 'product'),
(61, 26, 7, 16, '2024-06-21 08:22:57', 'ROYAL BATH SOAP BLUE', '61', 'images.jpeg', 'images.jpeg', 'images.jpeg', 25, 20, '', '', '', '100% Organic', 'Sale', 'product'),
(62, 26, 7, 16, '2024-06-21 08:22:57', 'ROYAL BATH SOAP GREEN', '62', 'images.jpeg', 'images.jpeg', 'images.jpeg', 25, 20, '', '', '', '100% Organic', 'Sale', 'product'),
(63, 26, 7, 16, '2024-06-21 08:22:57', 'ROYAL BATH SOAP REGULAR', '63', 'images.jpeg', 'images.jpeg', 'images.jpeg', 25, 20, '', '', '', '100% Organic', 'Sale', 'product'),
(64, 19, 3, 10, '2024-06-21 08:22:57', 'JME CHILLY POWDER 100G', '64', 'images.jpeg', 'images.jpeg', 'images.jpeg', 50, 50, '', '', '', '100% Organic', 'Sale', 'product'),
(65, 19, 3, 10, '2024-06-21 08:22:57', 'JME CHILLY POWDER 250G', '65', 'images.jpeg', 'images.jpeg', 'images.jpeg', 125, 125, '', '', '', '100% Organic', 'Sale', 'product'),
(66, 19, 3, 10, '2024-06-21 08:22:57', 'JME COFFEE POWDER 100G', '66', 'images.jpeg', 'images.jpeg', 'images.jpeg', 65, 65, '', '', '', '100% Organic', 'Sale', 'product'),
(67, 19, 3, 10, '2024-06-21 08:22:57', 'JME COFFEE POWDER 250G', '67', 'images.jpeg', 'images.jpeg', 'images.jpeg', 155, 155, '', '', '', '100% Organic', 'Sale', 'product'),
(68, 19, 3, 10, '2024-06-22 05:16:33', 'JME CORIANDER POWDER 100G', '68', 'JME-CORIANDER-POWDER-100Gfront.jpg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(69, 19, 3, 10, '2024-06-21 08:22:57', 'JME CORIANDER POWDER 250G', '69', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(70, 19, 3, 10, '2024-06-21 08:22:57', 'JME KASHMIRI CHILLY', '70', 'images.jpeg', 'images.jpeg', 'images.jpeg', 120, 120, '', '', '', '100% Organic', 'Sale', 'product'),
(71, 19, 3, 10, '2024-06-22 05:16:33', 'JME KASHMIRI CHILLY POWDER 100G', '71', 'JME-KASHMIRI-CHILLY-POWDER-100Gfront.jpg', 'IMG-20240621-WA0005.jpg', 'images.jpeg', 90, 90, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', '100% Organic', 'Sale', 'product'),
(72, 19, 3, 10, '2024-06-22 05:16:33', 'JME KASHMIRI CHILLY POWDER 250', '72', 'JME-KASHMIRI-CHILLY-POWDER-250front.jpg', 'images.jpeg', 'images.jpeg', 225, 220, '', '', '', '100% Organic', 'Sale', 'product'),
(73, 19, 3, 10, '2024-06-21 08:22:57', 'JME PIRIYAN CHILLY POWDER 100G', '73', 'images.jpeg', 'images.jpeg', 'images.jpeg', 60, 60, '', '', '', '100% Organic', 'Sale', 'product'),
(74, 19, 3, 10, '2024-06-21 08:22:57', 'JME PIRIYAN CHILLY POWDER 250G', '74', 'images.jpeg', 'images.jpeg', 'images.jpeg', 150, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(75, 19, 3, 10, '2024-06-21 08:22:57', 'JME ROASTA BROWN 100G', '75', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 70, '', '', '', '100% Organic', 'Sale', 'product'),
(76, 19, 3, 10, '2024-06-22 05:16:33', 'JME ROASTA BROWN SPECIAL 100G', '76', 'JME-ROASTA-BROWN-SPECIAL-100Gfront.jpg', 'images.jpeg', 'images.jpeg', 70, 70, '', '', '', '100% Organic', 'Sale', 'product'),
(77, 19, 3, 10, '2024-06-21 08:22:57', 'JME TURMERIC POWDER 100G', '77', 'images.jpeg', 'images.jpeg', 'images.jpeg', 35, 35, '', '', '', '100% Organic', 'Sale', 'product'),
(78, 19, 3, 10, '2024-06-21 08:22:57', 'JME TURMERIC POWDER 250G', '78', 'images.jpeg', 'images.jpeg', 'images.jpeg', 85, 85, '', '', '', '100% Organic', 'Sale', 'product'),
(79, 22, 3, 10, '2024-06-21 08:22:57', 'JME BANANA CHIPS 100G', '79', 'images.jpeg', 'images.jpeg', 'images.jpeg', 40, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(80, 22, 3, 10, '2024-06-21 08:22:57', 'JME IDIYIRACHI 250G', '80', 'images.jpeg', 'images.jpeg', 'images.jpeg', 750, 748, '', '', '', '100% Organic', 'Sale', 'product'),
(81, 22, 3, 10, '2024-06-22 05:16:32', 'JME IDIYIRACHI EASY COOK 250G', '81', 'JME-IDIYIRACHI-EASY-COOK-250Gfront.jpg', 'images.jpeg', 'images.jpeg', 700, 698, '', '', '', '100% Organic', 'Sale', 'product'),
(82, 22, 3, 10, '2024-06-21 08:22:57', 'JME PAVAKKA KONDATTAM 100G', '82', 'images.jpeg', 'images.jpeg', 'images.jpeg', 72, 70, '', '', '', '100% Organic', 'Sale', 'product'),
(83, 22, 3, 10, '2024-06-21 08:22:57', 'JME PAVAKKA KONDATTAM KG', '83', 'images.jpeg', 'images.jpeg', 'images.jpeg', 720, 700, '', '', '', '100% Organic', 'Sale', 'product'),
(84, 18, 3, 13, '2024-06-21 08:22:57', 'KAPCO BEETROOT PUTTUPODI 500GM', '84', 'images.jpeg', 'images.jpeg', 'images.jpeg', 60, 60, '', '', '', '100% Organic', 'Sale', 'product'),
(85, 18, 3, 13, '2024-06-21 08:22:57', 'KAPCO CARROT PUTTUPODI 500GM', '85', 'images.jpeg', 'images.jpeg', 'images.jpeg', 60, 60, '', '', '', '100% Organic', 'Sale', 'product'),
(86, 18, 3, 13, '2024-06-22 05:16:33', 'KAPCO INTRYAPPAM PODI 500G', '86', 'KAPCO-INTRYAPPAM-PODI-500Gfront.jpg', 'images.jpeg', 'images.jpeg', 90, 90, '', '', '', '100% Organic', 'Sale', 'product'),
(87, 18, 3, 13, '2024-06-22 05:16:33', 'KAPCO JACKFRUIT PUTTUPODI 500GM', '87', 'KAPCO-JACKFRUIT-PUTTUPODI-500GMfront.jpg', 'images.jpeg', 'images.jpeg', 120, 120, '', '', '', '100% Organic', 'Sale', 'product'),
(88, 18, 3, 13, '2024-06-21 08:22:57', 'KAPCO KOOVAPODI 250G', '88', 'images.jpeg', 'images.jpeg', 'images.jpeg', 350, 350, '', '', '', '100% Organic', 'Sale', 'product'),
(89, 18, 3, 13, '2024-06-21 08:22:57', 'KAPCO PALAPPAM PODI 500GM', '89', 'images.jpeg', 'images.jpeg', 'images.jpeg', 40, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(90, 18, 3, 13, '2024-06-22 05:16:33', 'KAPCO PANAMPODI 250GM', '90', 'KAPCO-PANAMPODI-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 175, 175, '', '', '', '100% Organic', 'Sale', 'product'),
(91, 18, 3, 13, '2024-06-21 08:22:57', 'KAPCO PANAMPODI 500GM', '91', 'images.jpeg', 'images.jpeg', 'images.jpeg', 350, 350, '', '', '', '100% Organic', 'Sale', 'product'),
(92, 18, 3, 13, '2024-06-22 05:16:33', 'KAPCO RICE FLOUR 1KG', '92', 'KAPCO-RICE-FLOUR-1KGfront.jpg', 'images.jpeg', 'images.jpeg', 70, 70, '', '', '', '100% Organic', 'Sale', 'product'),
(93, 18, 3, 13, '2024-06-22 05:16:33', 'KAPCO RICE PUTTUPODI 1KG', '93', 'KAPCO-RICE-PUTTUPODI-1KGfront.jpg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(94, 18, 3, 13, '2024-06-21 08:22:57', 'KAPCO TAPIOCA PUTTUPODI 500G', '94', 'images.jpeg', 'images.jpeg', 'images.jpeg', 60, 60, '', '', '', '100% Organic', 'Sale', 'product'),
(95, 18, 3, 13, '2024-06-21 08:22:57', 'KAPCO WHEAT MEAL 1KG', '95', 'images.jpeg', 'images.jpeg', 'images.jpeg', 65, 65, '', '', '', '100% Organic', 'Sale', 'product'),
(96, 18, 3, 13, '2024-06-21 08:22:57', 'KAPCO WHEAT PODI 800G', '96', 'images.jpeg', 'images.jpeg', 'images.jpeg', 55, 55, '', '', '', '100% Organic', 'Sale', 'product'),
(97, 18, 3, 13, '2024-06-22 05:16:33', 'KAPCO WHEAT PUTTUPODI 1KG', '97', 'KAPCO-WHEAT-PUTTUPODI-1KGfront.jpg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(98, 18, 3, 13, '2024-06-22 05:16:33', 'KAPCO WHEAT PUTTUPODI 500G', '98', 'KAPCO-WHEAT-PUTTUPODI-500Gfront.jpg', 'images.jpeg', 'images.jpeg', 40, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(99, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO CHICKEN MASALA 100GM', '99', 'images.jpeg', 'images.jpeg', 'images.jpeg', 60, 60, '', '', '', '100% Organic', 'Sale', 'product'),
(100, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO CHICKEN MASALA 250GM', '100', 'images.jpeg', 'images.jpeg', 'images.jpeg', 140, 140, '', '', '', '100% Organic', 'Sale', 'product'),
(101, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO CHILLY POWDER 100GM', '101', 'KAPCO-CHILLY-POWDER-100GMfront.jpg', 'images.jpeg', 'images.jpeg', 55, 55, '', '', '', '100% Organic', 'Sale', 'product'),
(102, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO CHILLY POWDER 250GM', '102', 'KAPCO-CHILLY-POWDER-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 125, 125, '', '', '', '100% Organic', 'Sale', 'product'),
(103, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO CHILLY POWDER 500GM', '103', 'KAPCO-CHILLY-POWDER-500GMfront.jpg', 'images.jpeg', 'images.jpeg', 250, 250, '', '', '', '100% Organic', 'Sale', 'product'),
(104, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO CORIANDER POWDER 100GM', '104', 'KAPCO-CORIANDER-POWDER-100GMfront.jpg', 'images.jpeg', 'images.jpeg', 40, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(105, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO CORIANDER POWDER 1KG', '105', 'images.jpeg', 'images.jpeg', 'images.jpeg', 300, 300, '', '', '', '100% Organic', 'Sale', 'product'),
(106, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO CORIANDER POWDER 250GM', '106', 'KAPCO-CORIANDER-POWDER-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 75, 75, '', '', '', '100% Organic', 'Sale', 'product'),
(107, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO CORIANDER POWDER 500G', '107', 'KAPCO-CORIANDER-POWDER-500Gfront.jpg', 'images.jpeg', 'images.jpeg', 150, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(108, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO FISH MASALA 100GM', '108', 'KAPCO-FISH-MASALA-100GMfront.jpg', 'images.jpeg', 'images.jpeg', 60, 60, '', '', '', '100% Organic', 'Sale', 'product'),
(109, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO FISH MASALA 250GM', '109', 'images.jpeg', 'images.jpeg', 'images.jpeg', 140, 140, '', '', '', '100% Organic', 'Sale', 'product'),
(110, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO GARAM MASALA 100GM', '110', 'KAPCO-GARAM-MASALA-100GMfront.jpg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(111, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO GARAM MASALA 250GM', '111', 'KAPCO-GARAM-MASALA-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 200, 200, '', '', '', '100% Organic', 'Sale', 'product'),
(112, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO KASHMIRI CHILLY POWDER 100GM', '112', 'images.jpeg', 'images.jpeg', 'images.jpeg', 105, 85, '', '', '', '100% Organic', 'Sale', 'product'),
(113, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO KASHMIRI CHILLY POWDER 250GM', '113', 'KAPCO-KASHMIRI-CHILLY-POWDER-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 250, 200, '', '', '', '100% Organic', 'Sale', 'product'),
(114, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO KASHMIRI CHILLY POWDER 500GM', '114', 'KAPCO-KASHMIRI-CHILLY-POWDER-500GMfront.jpg', 'images.jpeg', 'images.jpeg', 500, 500, '', '', '', '100% Organic', 'Sale', 'product'),
(115, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO MEAT MASALA 100GM', '115', 'KAPCO-MEAT-MASALA-100GMfront.jpg', 'images.jpeg', 'images.jpeg', 50, 50, '', '', '', '100% Organic', 'Sale', 'product'),
(116, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO MEAT MASALA 250GM', '116', 'KAPCO-MEAT-MASALA-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 120, 120, '', '', '', '100% Organic', 'Sale', 'product'),
(117, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO PIRIYAN CHILLY POWDER 100GM', '117', 'KAPCO-PIRIYAN-CHILLY-POWDER-100GMfront.jpg', 'images.jpeg', 'images.jpeg', 90, 75, '', '', '', '100% Organic', 'Sale', 'product'),
(118, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO PIRIYAN CHILLY POWDER 1KG', '118', 'images.jpeg', 'images.jpeg', 'images.jpeg', 900, 900, '', '', '', '100% Organic', 'Sale', 'product'),
(119, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO PIRIYAN CHILLY POWDER 250GM', '119', 'KAPCO-PIRIYAN-CHILLY-POWDER-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 225, 225, '', '', '', '100% Organic', 'Sale', 'product'),
(120, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO PIRIYAN CHILLY POWDER 500G', '120', 'images.jpeg', 'images.jpeg', 'images.jpeg', 450, 450, '', '', '', '100% Organic', 'Sale', 'product'),
(121, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO SAMBAR POWDER 100G', '121', 'KAPCO-SAMBAR-POWDER-100Gfront.jpg', 'images.jpeg', 'images.jpeg', 50, 50, '', '', '', '100% Organic', 'Sale', 'product'),
(122, 19, 3, 13, '2024-06-22 05:16:33', 'KAPCO SAMBAR POWDER 250GM', '122', 'KAPCO-SAMBAR-POWDER-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 120, 120, '', '', '', '100% Organic', 'Sale', 'product'),
(123, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO TURMERIC POWDER 100GM', '123', 'images.jpeg', 'images.jpeg', 'images.jpeg', 45, 45, '', '', '', '100% Organic', 'Sale', 'product'),
(124, 19, 3, 13, '2024-06-21 08:22:57', 'KAPCO TURMERIC POWDER 250GM', '124', 'images.jpeg', 'images.jpeg', 'images.jpeg', 100, 100, '', '', '', '100% Organic', 'Sale', 'product'),
(125, 20, 3, 13, '2024-06-22 05:16:33', 'KAPCO COCONUT OIL 1 LTR', '125', 'KAPCO-COCONUT-OIL-1-LTRfront.jpg', 'images.jpeg', 'images.jpeg', 260, 260, '', '', '', '100% Organic', 'Sale', 'product'),
(126, 20, 3, 13, '2024-06-22 05:16:33', 'KAPCO COCONUT OIL 500 ML', '126', 'KAPCO-COCONUT-OIL-500-MLfront.jpg', 'images.jpeg', 'images.jpeg', 130, 130, '', '', '', '100% Organic', 'Sale', 'product'),
(127, 21, 3, 13, '2024-06-22 05:16:33', 'KAPCO COFFEE POWDER 250GM', '127', 'KAPCO-COFFEE-POWDER-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 200, 200, '', '', '', '100% Organic', 'Sale', 'product'),
(128, 22, 3, 13, '2024-06-21 08:22:57', 'KAPCO DRIED JACKFRUIT 250GM', '128', 'images.jpeg', 'images.jpeg', 'images.jpeg', 165, 165, '', '', '', '100% Organic', 'Sale', 'product'),
(129, 22, 3, 13, '2024-06-22 05:16:33', 'KAPCO DRIED JACKFRUIT 500G', '129', 'KAPCO-DRIED-JACKFRUIT-500Gfront.jpg', 'images.jpeg', 'images.jpeg', 400, 400, '', '', '', '100% Organic', 'Sale', 'product'),
(130, 22, 3, 13, '2024-06-21 08:22:57', 'KAPCO DRIED JACKFRUIT KG', '130', 'images.jpeg', 'images.jpeg', 'images.jpeg', 670, 660, '', '', '', '100% Organic', 'Sale', 'product'),
(131, 22, 3, 13, '2024-06-22 05:16:33', 'KAPCO DRIED MEAT 250GM', '131', 'KAPCO-DRIED-MEAT-250GMfront.jpg', 'images.jpeg', 'images.jpeg', 650, 650, '', '', '', '100% Organic', 'Sale', 'product'),
(132, 24, 4, 15, '2024-06-21 08:22:57', 'MB LITTLE MILLET JAGGERY COOKIES 100G', '132', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 65, '', '', '', '100% Organic', 'Sale', 'product'),
(133, 24, 4, 15, '2024-06-21 08:22:57', 'MB LITTLE MILLET JEERA COOKIES 100G', '133', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 65, '', '', '', '100% Organic', 'Sale', 'product'),
(134, 24, 4, 15, '2024-06-21 08:22:57', 'MB MULTI MILLET JAGGERY COOKIES 100G', '134', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 70, '', '', '', '100% Organic', 'Sale', 'product'),
(135, 24, 4, 15, '2024-06-21 08:22:57', 'MB MULTI MILLET TUTTI FRUITY COOKIES 100G', '135', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 65, '', '', '', '100% Organic', 'Sale', 'product'),
(136, 24, 4, 15, '2024-06-21 08:22:57', 'MB RAGI CHOCOLATE COOKIES 100G', '136', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 65, '', '', '', '100% Organic', 'Sale', 'product'),
(137, 24, 4, 15, '2024-06-21 08:22:57', 'MB RAGI ELAICHI COOKIES 100G', '137', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 70, '', '', '', '100% Organic', 'Sale', 'product'),
(138, 24, 4, 15, '2024-06-21 08:22:57', 'MG RAGI ELAICHI COOKIES 100G', '138', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 65, '', '', '', '100% Organic', 'Sale', 'product'),
(139, 18, 3, 12, '2024-06-22 05:16:33', 'MITHRAM BANANA POWDER 500GM', '139', 'MITHRAM-BANANA-POWDER-500GMfront.jpg', 'images.jpeg', 'images.jpeg', 250, 250, '', '', '', '100% Organic', 'Sale', 'product'),
(140, 22, 3, 12, '2024-06-21 08:22:57', 'MITHRAM CHAKKA UNAKKIYATH/ DRIED JACKFRUIT 250G', '140', 'images.jpeg', 'images.jpeg', 'images.jpeg', 175, 175, '', '', '', '100% Organic', 'Sale', 'product'),
(141, 22, 3, 12, '2024-06-21 08:22:57', 'MITHRAM CHAKKA UNAKKIYATH/ DRIED JACKFRUIT 500G', '141', 'images.jpeg', 'images.jpeg', 'images.jpeg', 350, 350, '', '', '', '100% Organic', 'Sale', 'product'),
(142, 28, 4, 12, '2024-06-21 08:22:57', 'MITHRAM CHEMBA PUTTUPODI KG', '142', 'images.jpeg', 'images.jpeg', 'images.jpeg', 100, 100, '', '', '', '100% Organic', 'Sale', 'product'),
(143, 29, 3, 12, '2024-06-22 05:16:33', 'MITHRAM CHAMANTHI PODI 250G', '143', 'MITHRAM-CHAMANTHI-PODI-250Gfront.jpg', 'images.jpeg', 'images.jpeg', 125, 125, '', '', '', '100% Organic', 'Sale', 'product'),
(144, 30, 3, 12, '2024-06-22 05:16:33', 'MITHRAM AVALOSE PODI 500G', '144', 'MITHRAM-AVALOSE-PODI-500Gfront.jpg', 'images.jpeg', 'images.jpeg', 150, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(145, 30, 3, 12, '2024-06-21 08:22:57', 'MITHRAM MADHURASEVA 150G', '145', 'images.jpeg', 'images.jpeg', 'images.jpeg', 55, 55, '', '', '', '100% Organic', 'Sale', 'product'),
(146, 30, 3, 12, '2024-06-21 08:22:57', 'MITHRAM MIXTURE 150G', '146', 'images.jpeg', 'images.jpeg', 'images.jpeg', 55, 55, '', '', '', '100% Organic', 'Sale', 'product'),
(147, 30, 3, 12, '2024-06-21 08:22:57', 'MITHRAM MURUKKU 150G', '147', 'images.jpeg', 'images.jpeg', 'images.jpeg', 55, 55, '', '', '', '100% Organic', 'Sale', 'product'),
(148, 30, 3, 12, '2024-06-21 08:22:57', 'MITHRAM PAKKAVADA 150G', '148', 'images.jpeg', 'images.jpeg', 'images.jpeg', 55, 55, '', '', '', '100% Organic', 'Sale', 'product'),
(149, 30, 3, 12, '2024-06-21 08:22:57', 'MITHRAM TAPIOCA/ KAPPA CHIPS 150G', '149', 'images.jpeg', 'images.jpeg', 'images.jpeg', 55, 55, '', '', '', '100% Organic', 'Sale', 'product'),
(150, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM CHICKEN MASALA 150GM', '150', 'images.jpeg', 'images.jpeg', 'images.jpeg', 85, 85, '', '', '', '100% Organic', 'Sale', 'product'),
(151, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM CHILLY POWDER 250', '151', 'images.jpeg', 'images.jpeg', 'images.jpeg', 110, 110, '', '', '', '100% Organic', 'Sale', 'product'),
(152, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM COFFEE POWDER 250G', '152', 'images.jpeg', 'images.jpeg', 'images.jpeg', 140, 140, '', '', '', '100% Organic', 'Sale', 'product'),
(153, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM CORIANDER POWDER 250', '153', 'images.jpeg', 'images.jpeg', 'images.jpeg', 75, 75, '', '', '', '100% Organic', 'Sale', 'product'),
(154, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM GARAM MASALA 150G', '154', 'images.jpeg', 'images.jpeg', 'images.jpeg', 110, 110, '', '', '', '100% Organic', 'Sale', 'product'),
(155, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM KASHMIRI CHILLY POWDER 250', '155', 'images.jpeg', 'images.jpeg', 'images.jpeg', 220, 220, '', '', '', '100% Organic', 'Sale', 'product'),
(156, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM MEAT MASALA 150GM', '156', 'images.jpeg', 'images.jpeg', 'images.jpeg', 85, 85, '', '', '', '100% Organic', 'Sale', 'product'),
(157, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM SAMBAR PODI 150G', '157', 'images.jpeg', 'images.jpeg', 'images.jpeg', 85, 85, '', '', '', '100% Organic', 'Sale', 'product'),
(158, 19, 3, 12, '2024-06-21 08:22:57', 'MITHRAM TURMERIC POWDER 250', '158', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(159, 22, 3, 12, '2024-06-22 05:16:33', 'MITHRAM DRIED COCONUT 200G', '159', 'MITHRAM-DRIED-COCONUT-200Gfront.jpg', 'images.jpeg', 'images.jpeg', 100, 100, '', '', '', '100% Organic', 'Sale', 'product'),
(160, 22, 3, 12, '2024-06-21 08:22:57', 'MITHRAM DRIED JACKFRUIT 250G', '160', 'images.jpeg', 'images.jpeg', 'images.jpeg', 150, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(161, 22, 3, 12, '2024-06-22 05:16:33', 'MITHRAM DRIED JACKFRUIT 500G', '161', 'MITHRAM-DRIED-JACKFRUIT-500Gfront.jpg', 'images.jpeg', 'images.jpeg', 300, 300, '', '', '', '100% Organic', 'Sale', 'product'),
(162, 22, 3, 12, '2024-06-21 08:22:57', 'MITHRAM DRIED JACKFRUIT KG', '162', 'images.jpeg', 'images.jpeg', 'images.jpeg', 600, 600, '', '', '', '100% Organic', 'Sale', 'product'),
(163, 22, 3, 12, '2024-06-21 08:22:57', 'MITHRAM UPPERI KAPPA 250G', '163', 'images.jpeg', 'images.jpeg', 'images.jpeg', 70, 70, '', '', '', '100% Organic', 'Sale', 'product'),
(164, 22, 3, 12, '2024-06-21 08:22:57', 'MITHRAM UPPERI KAPPA 500G', '164', 'images.jpeg', 'images.jpeg', 'images.jpeg', 150, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(165, 18, 3, 12, '2024-06-22 05:16:33', 'MITHRAM JACK FRUIT POWDER 500G', '165', 'MITHRAM-JACK-FRUIT-POWDER-500Gfront.jpg', 'images.jpeg', 'images.jpeg', 360, 360, '', '', '', '100% Organic', 'Sale', 'product'),
(166, 18, 3, 12, '2024-06-22 05:16:33', 'MITHRAM MAIZE POWDER 1KG', '166', 'MITHRAM-MAIZE-POWDER-1KGfront.jpg', 'images.jpeg', 'images.jpeg', 90, 90, '', '', '', '100% Organic', 'Sale', 'product'),
(167, 18, 3, 12, '2024-06-21 08:22:57', 'MITHRAM MAIZE POWDER 500GM', '167', 'images.jpeg', 'images.jpeg', 'images.jpeg', 50, 50, '', '', '', '100% Organic', 'Sale', 'product'),
(168, 21, 3, 12, '2024-06-22 05:16:33', 'MITHRAM PINEAPPLE SQUASH', '168', 'MITHRAM-PINEAPPLE-SQUASHfront.jpg', 'images.jpeg', 'images.jpeg', 150, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(169, 28, 4, 12, '2024-06-22 05:16:33', 'MITHRAM RAGI POWDER 1KG', '169', 'MITHRAM-RAGI-POWDER-1KGfront.jpg', 'images.jpeg', 'images.jpeg', 100, 100, '', '', '', '100% Organic', 'Sale', 'product'),
(170, 28, 4, 12, '2024-06-22 05:16:33', 'MITHRAM RAGI POWDER 500GM', '170', 'MITHRAM-RAGI-POWDER-500GMfront.jpg', 'images.jpeg', 'images.jpeg', 55, 55, '', '', '', '100% Organic', 'Sale', 'product'),
(171, 31, 3, 12, '2024-06-21 08:22:57', 'MITHRAM PINEAPPLE JAM ', '171', 'images.jpeg', 'images.jpeg', 'images.jpeg', 140, 140, '', '', '', '100% Organic', 'Sale', 'product'),
(172, 31, 3, 12, '2024-06-21 08:22:57', 'MITHRAM PINEAPPLE JAM 350GM', '172', 'images.jpeg', 'images.jpeg', 'images.jpeg', 120, 120, '', '', '', '100% Organic', 'Sale', 'product'),
(173, 29, 3, 11, '2024-06-21 08:22:57', 'MITHRAS DRIED CILAMBIKKA PICKLE 200GM', '173', 'images.jpeg', 'images.jpeg', 'images.jpeg', 100, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(174, 29, 3, 11, '2024-06-22 05:16:33', 'MITHRAS FISH PICKLE 200GM', '174', 'MITHRAS-FISH-PICKLE-200GMfront.jpg', 'images.jpeg', 'images.jpeg', 210, 190, '', '', '', '100% Organic', 'Sale', 'product'),
(175, 29, 3, 11, '2024-06-22 05:16:33', 'MITHRAS KADUMANGA PICKLE 200GM', '175', 'MITHRAS-KADUMANGA-PICKLE-200GMfront.jpg', 'images.jpeg', 'images.jpeg', 100, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(176, 29, 3, 11, '2024-06-21 08:22:57', 'MITHRAS KADUMANGA PICKLE KG', '176', 'images.jpeg', 'images.jpeg', 'images.jpeg', 420, 400, '', '', '', '100% Organic', 'Sale', 'product'),
(177, 29, 3, 11, '2024-06-21 08:22:57', 'MITHRAS LEMON AND DATES PICKLE 200GM', '177', 'images.jpeg', 'images.jpeg', 'images.jpeg', 120, 100, '', '', '', '100% Organic', 'Sale', 'product'),
(178, 29, 3, 11, '2024-06-22 05:16:33', 'MITHRAS LEMON PICKLE 200GM', '178', 'MITHRAS-LEMON-PICKLE-200GMfront.jpg', 'images.jpeg', 'images.jpeg', 100, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(179, 29, 3, 11, '2024-06-21 08:22:57', 'MITHRAS LEMON PICKLE KG', '179', 'images.jpeg', 'images.jpeg', 'images.jpeg', 420, 400, '', '', '', '100% Organic', 'Sale', 'product'),
(180, 29, 3, 11, '2024-06-21 08:22:57', 'MITHRAS MEAT PICKLE 200GM', '180', 'images.jpeg', 'images.jpeg', 'images.jpeg', 220, 200, '', '', '', '100% Organic', 'Sale', 'product'),
(181, 29, 3, 11, '2024-06-21 08:22:57', 'MITHRAS MEAT PICKLE KG', '181', 'images.jpeg', 'images.jpeg', 'images.jpeg', 1100, 1000, '', '', '', '100% Organic', 'Sale', 'product'),
(182, 29, 3, 11, '2024-06-21 08:22:57', 'MITHRAS NELLICKA PICKLE 200GM', '182', 'images.jpeg', 'images.jpeg', 'images.jpeg', 90, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(183, 29, 3, 11, '2024-06-21 08:22:57', 'MITHRAS NELLICKA PICKLE KG', '183', 'images.jpeg', 'images.jpeg', 'images.jpeg', 420, 400, '', '', '', '100% Organic', 'Sale', 'product'),
(184, 29, 3, 11, '2024-06-22 05:16:33', 'MITHRAS VELUTHULLI PICKLE 200GM', '184', 'MITHRAS-VELUTHULLI-PICKLE-200GMfront.jpg', 'images.jpeg', 'images.jpeg', 120, 100, '', '', '', '100% Organic', 'Sale', 'product'),
(185, 29, 3, 11, '2024-06-22 05:16:33', 'MUSHROOM PICKLE 250G', '185', 'MUSHROOM-PICKLE-250Gfront.jpg', 'images.jpeg', 'images.jpeg', 155, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(186, 24, 4, 8, '2024-06-21 08:22:57', 'BARNYARD MILLET COOKIES 250G', '186', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(187, 24, 4, 8, '2024-06-21 08:22:57', 'BARNYARD MILLET COOKIES 90G', '187', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(188, 24, 4, 8, '2024-06-21 08:22:57', 'BARNYARD MILLET GLUTEN FREE COOKIES 90G', '188', 'images.jpeg', 'images.jpeg', 'images.jpeg', 45, 45, '', '', '', '100% Organic', 'Sale', 'product'),
(189, 24, 4, 8, '2024-06-21 08:22:57', 'BARNYARD MILLET RUSK 110G', '189', 'images.jpeg', 'images.jpeg', 'images.jpeg', 35, 35, '', '', '', '100% Organic', 'Sale', 'product'),
(190, 24, 4, 8, '2024-06-21 08:22:57', 'FINGER MILLET COOKIES 250G', '190', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(191, 24, 4, 8, '2024-06-21 08:22:57', 'FINGER MILLET COOKIES 90G', '191', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(192, 24, 4, 8, '2024-06-21 08:22:57', 'FOXTAIL MILLET RUSK 110G', '192', 'images.jpeg', 'images.jpeg', 'images.jpeg', 35, 35, '', '', '', '100% Organic', 'Sale', 'product'),
(193, 24, 4, 8, '2024-06-21 08:22:57', 'FOXTAIL WITH HONEY COOKIES 250G', '193', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(194, 24, 4, 8, '2024-06-21 08:22:57', 'FOXTAIL WITH HONEY COOKIES 90G', '194', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(195, 24, 4, 8, '2024-06-21 08:22:57', 'GLUTEN FREE BROWNTOP MILLET COOKIES 90G', '195', 'images.jpeg', 'images.jpeg', 'images.jpeg', 40, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(196, 24, 4, 8, '2024-06-21 08:22:57', 'GLUTEN FREE FOXTAIL MILLET COOKIES 90G', '196', 'images.jpeg', 'images.jpeg', 'images.jpeg', 40, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(197, 24, 4, 8, '2024-06-21 08:22:57', 'GLUTEN FREE LITTLE MILLET COOKIES 90G', '197', 'images.jpeg', 'images.jpeg', 'images.jpeg', 40, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(198, 24, 4, 8, '2024-06-21 08:22:57', 'GLUTEN FREE QUINOA MILLET COOKIES 90G', '198', 'images.jpeg', 'images.jpeg', 'images.jpeg', 40, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(199, 24, 4, 8, '2024-06-21 08:22:57', 'JAR MILLET COOKIES NAVAGRAIN 20G', '199', 'images.jpeg', 'images.jpeg', 'images.jpeg', 5, 5, '', '', '', '100% Organic', 'Sale', 'product'),
(200, 24, 4, 8, '2024-06-21 08:22:57', 'JAR MILLET COOKIES PEARL 20G', '200', 'images.jpeg', 'images.jpeg', 'images.jpeg', 5, 5, '', '', '', '100% Organic', 'Sale', 'product'),
(201, 24, 4, 8, '2024-06-21 08:22:57', 'KODO MILLET COOKIES 250G', '201', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(202, 24, 4, 8, '2024-06-21 08:22:57', 'KODO MILLET COOKIES 90G', '202', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(203, 24, 4, 8, '2024-06-21 08:22:57', 'LITTLE MILLET COOKIES 250G', '203', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(204, 24, 4, 8, '2024-06-21 08:22:57', 'LITTLE MILLET COOKIES 90G', '204', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(205, 24, 4, 8, '2024-06-21 08:22:57', 'LITTLE MILLET RUSK 110G', '205', 'images.jpeg', 'images.jpeg', 'images.jpeg', 35, 35, '', '', '', '100% Organic', 'Sale', 'product'),
(206, 24, 4, 8, '2024-06-21 08:22:57', 'NAVAGRAIN MILLET COOKIES 250G', '206', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(207, 24, 4, 8, '2024-06-21 08:22:57', 'NAVAGRAIN MILLET COOKIES 90G', '207', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(208, 24, 4, 8, '2024-06-21 08:22:57', 'NAVAGRAIN MILLET RUSK 110G', '208', 'images.jpeg', 'images.jpeg', 'images.jpeg', 35, 35, '', '', '', '100% Organic', 'Sale', 'product'),
(209, 24, 4, 8, '2024-06-21 08:22:57', 'PEARL MILLET COOKIES 250G', '209', 'images.jpeg', 'images.jpeg', 'images.jpeg', 80, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(210, 24, 4, 8, '2024-06-21 08:22:57', 'PEARL MILLET COOKIES 90G', '210', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(211, 24, 4, 8, '2024-06-21 08:22:57', 'PROSO MILLET COOKIES 90G', '211', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(212, 24, 4, 8, '2024-06-21 08:22:57', 'SORGHUM MILLET COOKIES 90G', '212', 'images.jpeg', 'images.jpeg', 'images.jpeg', 30, 30, '', '', '', '100% Organic', 'Sale', 'product'),
(213, 25, 5, 18, '2024-06-21 08:22:57', 'MULTI NPURPOSE LIQUID 1L', '213', 'images.jpeg', 'images.jpeg', 'images.jpeg', 90, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(214, 25, 5, 18, '2024-06-21 08:22:57', 'LIQUID SOAP KIT', '214', 'images.jpeg', 'images.jpeg', 'images.jpeg', 350, 300, '', '', '', '100% Organic', 'Sale', 'product'),
(215, 25, 6, 18, '2024-06-21 08:22:57', 'PHENOIL 1LTR', '215', 'images.jpeg', 'images.jpeg', 'images.jpeg', 45, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(216, 27, 6, 18, '2024-06-21 08:22:57', 'LIQUID DETERGENT WASHING MACHINE 1LTR', '216', 'images.jpeg', 'images.jpeg', 'images.jpeg', 180, 150, '', '', '', '100% Organic', 'Sale', 'product'),
(217, 27, 6, 18, '2024-06-21 08:22:57', 'LIQUID DETERGENT WASHING MACHINE 5KG', '217', 'images.jpeg', 'images.jpeg', 'images.jpeg', 750, 650, '', '', '', '100% Organic', 'Sale', 'product'),
(218, 27, 6, 18, '2024-06-21 08:22:57', 'WASHING POWDER BLUE MATIC 1KG', '218', 'images.jpeg', 'images.jpeg', 'images.jpeg', 100, 80, '', '', '', '100% Organic', 'Sale', 'product'),
(219, 27, 6, 18, '2024-06-21 08:22:57', 'WASHING POWDER BLUE MATIC 4KG', '219', 'images.jpeg', 'images.jpeg', 'images.jpeg', 350, 330, '', '', '', '100% Organic', 'Sale', 'product'),
(220, 27, 6, 18, '2024-06-21 08:22:57', 'WASHING POWDER BLUE MATIC 500G', '220', 'images.jpeg', 'images.jpeg', 'images.jpeg', 50, 40, '', '', '', '100% Organic', 'Sale', 'product'),
(221, 27, 6, 18, '2024-06-21 08:22:57', 'WASHING POWDER BLUE MATIC 5KG', '221', 'images.jpeg', 'images.jpeg', 'images.jpeg', 400, 350, '', '', '', '100% Organic', 'Sale', 'product'),
(222, 27, 6, 18, '2024-06-21 08:22:57', 'WASHING POWDER KIT 5KG', '222', 'images.jpeg', 'images.jpeg', 'images.jpeg', 350, 300, '', '', '', '100% Organic', 'Sale', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(9, 'Fruits', 'no', 'trousericn.png'),
(10, 'Seedlings', 'yes', ''),
(11, 'Fresh Food(24 hr )', 'yes', ''),
(13, 'Fertilizers', 'yes', ''),
(16, 'Vegetables', 'yes', ''),
(17, 'Millets', 'yes', ''),
(18, 'FLOUR ITEMS', 'yes', ''),
(19, 'CURRY POWDER & MASALAS', 'yes', ''),
(20, 'EDIBLE OILS & VINEGARS', 'yes', ''),
(21, 'JUICES AND BEVERAGES', 'no', ''),
(22, 'DRIED FOODS', 'no', ''),
(23, 'OTHER MILLET PRODUCTS', 'no', ''),
(24, 'MILLET COOKIES & RUSK', 'yes', ''),
(25, 'ALL PURPOSE CLEANERS', 'yes', ''),
(26, 'BATH & HAND WASH', 'no', ''),
(27, 'DETERGENTS', 'yes', ''),
(28, 'MILLET FLOUR ITEMS', 'yes', ''),
(29, 'PICKLES AND CHUTNEYS', 'yes', ''),
(30, 'BAKERY SNACKS', 'yes', ''),
(31, 'SPREADS AND SAUCES', '', ''),
(32, 'Seeds', 'no', ''),
(33, 'Tools', 'yes', ''),
(34, 'Plant pots', 'yes', ''),
(35, 'Fertilizers', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'Karshaka open market palai', 'agrima-karshaka-open-market-pala-town-kottayam-agricultural-consultants-dpk4y80dql.avif', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n that are not treated with chemicals thus they are 100% organic . \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'more', 'https://imagy.app/image-aspect-ratio-changer/'),
(5, 'Agrima Nursery Palai', '203700064_150273060498319_3846504646214316181_n.jpg', '\r\nAgrima nursery, located near the Santhom complex pala - contains seedlings and well nourished plants.\r\nthis store contains weedlimgs of locally grown plants and they can be farmed excellent in the local weather conditions.Here , we also have bud varieties,high breeds and top varieties of saplings.\r\n\r\n', 'more', '');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15),
(6, 7, 217);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
