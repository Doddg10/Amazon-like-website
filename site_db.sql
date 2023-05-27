-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 09:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(153, 17, 1, ' Wireless Bluetooth Headphones Red', 119, 2, 'headphones.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `favmarkets`
--

CREATE TABLE `favmarkets` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `market_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favmarkets`
--

INSERT INTO `favmarkets` (`id`, `user_id`, `market_name`) VALUES
(6, 25, 'Market1'),
(7, 17, 'Market2'),
(8, 17, 'Market4');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(100) NOT NULL,
  `user_id` int(255) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `pquantity` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(11) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `delivery_state` int(255) NOT NULL DEFAULT 0,
  `time` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `pid`, `pquantity`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `country`, `pin_code`, `total_products`, `total_price`, `delivery_state`, `time`) VALUES
(1, 17, '6', '1', 'Doaa', '01287326721', 'user1@gmail.com', 'cash on delivery', '92L', '92L, Hadayek Al-Ahram', 'Giza', 'Egypt', 12345, 'Galaxy Watch 4 Classic 46 mm Black (1) ', '56', 1, '2023-01-03 06:52:42'),
(2, 17, '2,11', '1,1', 'Doaa', '01287326721', 'user1@gmail.com', 'cash on delivery', '92L', '92L, Hadayek Al-Ahram', 'Giza', 'Egypt', 12345, 'PlayStation 5 Console (Disc Version) With Controller (1) ,Mi Smart Band 6 Fitness Tracker (1) ', '1101', 0, '2023-01-03 06:55:03'),
(3, 17, '16', '1', 'Doaa', '0128721', 'user1@gmail.com', 'cash on delivery', '92L', '92L, Hadayek Al-Ahram', 'Giza', 'Egypt', 12345, 'Extra Chef Multicooker 1400 W FH 1394 Grey (1) ', '59', 0, '2023-01-03 09:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `marketid` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `brief_description` varchar(500) NOT NULL,
  `full_description` varchar(500) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `num_items` int(255) NOT NULL,
  `market_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `marketid`, `name`, `brand`, `price`, `brief_description`, `full_description`, `image_01`, `num_items`, `market_name`) VALUES
(1, 15, ' Wireless Bluetooth Headphones Red', ' P47', 119, 'Designed in such a way to contour your ears perfectly, so that you enjoy your music completely Powerful drivers produce best-in-class sound quality Soft ear cups allows for utmost wearing comfort 3.5mm Music Earphone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'headphones.PNG', 49, 'Market1'),
(2, 15, 'PlayStation 5 Console (Disc Version) With Controller', 'Sony', 224900, 'fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback,adaptive triggers, and 3D Audio, and an all-new generation of incredible PlayStation games.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'playstation.PNG', 49, 'Market1'),
(3, 15, 'IdeaPad Gaming 3 15IHU6 Laptop 15.6-Inch', 'Lenovo', 22499, 'Excellent choice for both business and personal computing needs battery Integrated 45Wh intel Core i5-11320H (4C / 8T, 3.2 / 4.5GHz, 8MB)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'laptop.PNG', 50, 'Market1'),
(4, 15, 'Smart 6 Dual SIM 2GB RAM 32GB 4G LTE Polar Black', 'Infinix', 3299, 'WLAN Wi-Fi 802.11 b/g/n, hotspot Bluetooth Yes GPS Yes, with A-GPS NFC No Radio FM radio USB microUSB 2.0. Build Glass front, plastic back', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'mobile.PNG', 50, 'Market1'),
(5, 15, '43-Inch Full HD Smart TV With Built In Receiver', 'Samsung', 8990, 'Analyzing original content with an advanced algorithm Ultra Clean View gives you higher quality images.Watch your favourite content with natural colours.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'screen.PNG', 50, 'Market1'),
(6, 15, 'Galaxy Watch 4 Classic 46 mm Black', 'Samsung', 6475, 'This rotating bezel turns more than heads some looks are timeless, like the Galaxy Watch4 Classics rotating bezel and vivid screen.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'watch.PNG', 49, 'Market1'),
(10, 15, 'Laptop Gf63 Thin 10Sc With 15.6 Inch Fhd Display', 'MSI', 23999, 'Laptop Gf63 Thin 10Sc With 15.6 Inch Fhd Display, Intel Core I7-10750H Processor / 8Gb Ram / 1Tb Hdd / 256Gb Ssd/Nvidia Geforce Gtx 1650 4Gb / Dos English/Arabic Black', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'laptop2.PNG', 50, 'Market1'),
(11, 15, 'Mi Smart Band 6 Fitness Tracker', 'Xiaomi', 777, 'Full screen 1.56&#34; AMOLED display has been improved all around*. Easily check text messages, calls and notifications with a quick glance.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'band.PNG', 49, 'Market1'),
(12, 15, '43-Inch LED Full HD TV With Built-In Receiver Black', 'LG', 6599, 'Full HD screen delivers more accurate images in stunning resolution and vivid color.Advanced image processor adjusts color for richer, more natural images', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'screen2.PNG', 50, 'Market1'),
(13, 15, 'In-ear Wired Earphones with Mic White', 'Samsung', 54, 'Provides superior sound isolation from background noise.Control buttons lets you answer and reject calls easily.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'earphones.PNG', 50, 'Market1'),
(14, 16, 'Wall Fan 16-Inch 2200 W TWF-16 multicolour', 'Tornado', 868, 'Specially designed blades deliver fresh air reaching every corner.Creates a soothing ambience with an elevated aura.Streamlines a well crafted exterior that boasts extensive utilisation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'fan.PNG', 50, 'Market2'),
(15, 16, 'Uno 1 Cup Coffee Maker 0.5 L 300 W CM31416A Black', 'Mienta', 385, 'Features an adequate 0.5-litre capacity for preparing and serving 1 cup of delicious and hot coffee effortlessly.Sturdy stainless steel construction resists corrosion and withstands minor abrasion to offer lasting use', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'coffee.PNG', 50, 'Market2'),
(16, 16, 'Extra Chef Multicooker 1400 W FH 1394 Grey', 'De&#39;Longhi', 9200, 'Food is crispy outside and tasty and juicy inside.Can accommodate 1.7kg of fresh potatoes and 1.5kg of frozen potatoes without adding oil.Automatic mixing process with 4 pre-set programs and 3 special programs', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'frier.PNG', 49, 'Market2'),
(17, 16, 'TORNADO Microwave 25 L 900 W TM-25MS Silver', 'Tornado', 3109, 'Heat-resistant material ensures safety from electric shock and injury during use.Features spaciously slotted design to effectively dissipate heat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'microwave.PNG', 50, 'Market2'),
(18, 16, 'EOS 250D DSLR Camera، With EFS 18-55 DC III Lens 24.1 MP،', 'Canon', 20042, 'A super-portable DSLR that’s fun and simple to use whatever you’re shooting، delivering excellent results.A versatile EF-S 18-55mm f/3.5-5.6 III lens lets you photograph everything', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'camera.PNG', 50, 'Market2'),
(19, 24, '4-Piece Frying Pans Set Marble Black 16/20/22/26cm', 'Grandi', 420, 'Reliable for kitchen and cooking use, perfect for everyday use Eliminates need for unnecessary amounts of oils and butters to create a non-stick enviroment, encourages healthy eating.Easy to clean', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'pan.PNG', 50, 'Market3'),
(20, 24, 'Travel Plug Adapter Converter Multicolour', 'iLock', 32, 'Slim design doesn’t slip from the socket Works with almost all types of plugs (UK, China and USA) All contacts made with copper Flame retardant plastic High attachment to the plug prevents sparks and fire', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'plug.PNG', 50, 'Market3'),
(21, 24, 'Ilock Travel Plug Adapter Converter (Pack 3) White/Grey 30cm', 'iLock', 85, 'Pack of 3 adapters Slim design doesn’t slip from the socket Works with almost all types of plugs (UK, China and USA) All contacts made with copper Flame retardant plastic 16 A 250 V High attachment to the plug prevents sparks and fire', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'plugs.PNG', 50, 'Market3'),
(22, 24, '4 AAA Black Blister card 18.4ounce', 'Eveready', 85, 'Powerful solution for your power-hungry devices Offers innovative and superior technology to fulfil the diverse portable energy requirements Economical choice for clocks, flashlights, radios and other devices', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'batteries.PNG', 50, 'Market3'),
(23, 24, 'Extension Cord Lock 16 Amp 250V Black 5meter', 'iLock', 139, 'Extension Cord Lock - 16 Amp - 250V -5 M Cable wire (2x1mm) 16A / 250V / 3500W Female plug is equipped with patented technology that can fix plugs therefore preventing the attached cord from accidentally being unplugged and losing power', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'cord.PNG', 50, 'Market3'),
(24, 24, 'Power Strip 3 Universal Outlets With 16A Switch Yellow-Black', 'iLock', 195, '1. Power strip with 3 universal outlets - MAX 2860 W2. Extension cable 2-meter PVC 3x1mm2 Cable with angle schuko plug3. High precision universal sockets that accommodate plugs of various types EU UK USA AU', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'outlet.PNG', 50, 'Market3'),
(25, 24, 'PluGuard Power Strip 3 Outlets With Switch - 3500W - 16A - 250V black 30cm', 'iLock', 149, 'Power strip with 3 outlets • High quality product with thick cable and sturdy plastic housing • Extension cable 2 meter with angled connectors for easy connection without much effort', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'plug1.PNG', 50, 'Market3'),
(26, 24, 'Note 11 Dual Sim 6 GB RAM 128GB 4G LTE Glacier Green', 'Infinix', 6363, 'Type amoled, 650 nits (peak)Size 6.7 inches, 108.4 cm2 (~86.0% screen-to-body ratio) Resolution 1080 x 2400 pixels, 20:9 ratio OS Android 11, XOS 10Chipset MediaTek Helio G88 (12nm)CPU Octa-core ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'mobile3.PNG', 50, 'Market3'),
(27, 25, 'Galaxy Buds 2 Graphite', 'Samsung', 2865, 'Galaxy Buds 2 come up to 20 hours of playback time with active noise cancellation (ANC) turned on The TWS earphones appear to have a total of three microphones and an integrated voice recording unit for high quality calls', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'black.PNG', 50, 'Market4'),
(28, 25, 'Type-C In-Ear Earphone With Microphone Black', 'Samsung', 199, 'Type-C jack is compatible with smartphones, tablets and laptops that have Type-C audio interface. In-line control function, enables you to control music and calls. Built-in highly sensitive microphone allows you to have a clear phone call.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'black2.PNG', 50, 'Market4'),
(29, 25, 'Class Qn90B Neo Qled 4K Smart Tv 2022 65QN90B Titan Black', 'Samsung', 39415, 'QUANTUM MATRIX WITH MINI LEDs: Brilliant details shine even in daylight; Powered by a huge grid of Samsung’s ultra precise Quantum Mini LEDs, it takes exact control of the individual zones of light in your picture for breathtaking color and contrast', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'screen4.PNG', 50, 'Market4'),
(30, 25, 'Electric Blender , 1.5 Liter, 2 Mills, 1.5 L 500 W  Black', 'Tornado', 799, 'Engineered with dual stainless steel blades to efficiently chop, grind, and process various ingredients to the desired consistency Transparent jar allows you to check the consistency of the processed ingredients, and the unbreakable construction ensures lasting use', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'kitchen.PNG', 50, 'Market4'),
(31, 25, 'Stainless Steel Kettle 1.7 Liter , 1850-2200 Watt 1.7 l 2200 W', 'Tornado', 499, 'Heating Element is hidden to more protection and safety Automatically turn off at 100 Degree Cord storage Boil dry protection Easy Lid-opening', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'kettle.PNG', 50, 'Market4'),
(32, 25, 'TORNADO Plastic Kettle, 1.7 Liter, 1800-, 1.7 L White', 'Tornado', 699, 'Keeps the heating element hidden for more protection and safety Fosters a 360 degree rotational design Fixed with a water gauge at both sides to show water level', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'kettle2.PNG', 50, 'Market4'),
(33, 25, 'Countertop Electric Kettle 2L 2 l MT-K101 Silver/Black/Clear', 'Media Tech', 549, 'Glass kettle with detachable non slip base Steam, anti-dry, overheating the auto power off function of triple protection Big mouth design which is easy for cleaning Transparent water gauge to show water level Featuring On/Off switch with power indicator', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing eli', 'kettle3.PNG', 50, 'Market4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user',
  `address` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `profilePic` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `balanceno` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `user_type`, `address`, `phone`, `location`, `profilePic`, `balance`, `balanceno`) VALUES
(15, 'Market1', 'market1@gmail.com', '202cb962ac59075b964b07152d234b70', 'market', '92L', 1287326721, 'Giza,Egypt', 'watch.PNG', 232152, 12345),
(16, 'Market2', 'market2@gmail.com', '202cb962ac59075b964b07152d234b70', 'market', '92L', 1287326721, 'Giza,Egypt', '2.jpg', 9200, 123456),
(17, 'User', 'user1@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', '92L', 1287326721, 'Giza,Egypt', '3.jpg', 0, 0),
(24, 'Market3', 'market3@gmail.com', '202cb962ac59075b964b07152d234b70', 'market', '92L', 1287326721, 'Giza,Egypt', '1.jpeg', 0, 876543),
(25, 'Market4', 'market4@gmail.com', '202cb962ac59075b964b07152d234b70', 'market', '92L', 1287326721, 'Giza,Egypt', '10.jpg', 0, 9876524);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(1, 17, 1, ' Wireless Bluetooth Headphones Red', 119, 'headphones.PNG'),
(2, 17, 16, 'Extra Chef Multicooker 1400 W FH 1394 Grey', 9200, 'frier.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id cart` (`user_id`),
  ADD KEY `pid cart` (`pid`);

--
-- Indexes for table `favmarkets`
--
ALTER TABLE `favmarkets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid wishlist` (`pid`),
  ADD KEY `user_id wishlist` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `favmarkets`
--
ALTER TABLE `favmarkets`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `pid cart` FOREIGN KEY (`pid`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_id cart` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `pid wishlist` FOREIGN KEY (`pid`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_id wishlist` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
