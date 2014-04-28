-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2014 at 03:14 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foursquare_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `fap_categories`
--

CREATE TABLE IF NOT EXISTS `fap_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venuId` int(11) DEFAULT NULL,
  `categoryId` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pluralName` varchar(100) DEFAULT NULL,
  `shortName` varchar(100) DEFAULT NULL,
  `iconPrefix` varchar(255) DEFAULT NULL,
  `iconSuffix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fap_categories_ibfk_1` (`venuId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `fap_categories`
--

INSERT INTO `fap_categories` (`id`, `venuId`, `categoryId`, `name`, `pluralName`, `shortName`, `iconPrefix`, `iconSuffix`) VALUES
(1, 240, '4bf58dd8d48988d1e1931735', 'Arcade', 'Arcades', 'Arcade', 'https://ss1.4sqi.net/img/categories_v2/arts_entertainment/arcade_', '.png'),
(2, 241, '4bf58dd8d48988d163941735', 'Park', 'Parks', 'Park', 'https://ss1.4sqi.net/img/categories_v2/parks_outdoors/park_', '.png'),
(3, 243, '4bf58dd8d48988d1cb941735', 'Food Truck', 'Food Trucks', 'Food Truck', 'https://ss1.4sqi.net/img/categories_v2/food/streetfood_', '.png'),
(4, 244, '4bf58dd8d48988d1df941735', 'Bridge', 'Bridges', 'Bridge', 'https://ss1.4sqi.net/img/categories_v2/parks_outdoors/bridge_', '.png'),
(5, 245, '4bf58dd8d48988d15e941735', 'Pool', 'Pools', 'Pool', 'https://ss1.4sqi.net/img/categories_v2/parks_outdoors/pool_', '.png'),
(6, 246, '4bf58dd8d48988d16f941735', 'Hot Dog Joint', 'Hot Dog Joints', 'Hot Dogs', 'https://ss1.4sqi.net/img/categories_v2/food/hotdog_', '.png'),
(7, 249, '4bf58dd8d48988d110951735', 'Salon / Barbershop', 'Salons / Barbershops', 'Salon / Barbershop', 'https://ss1.4sqi.net/img/categories_v2/shops/salon_barber_', '.png'),
(8, 251, '4bf58dd8d48988d165941735', 'Scenic Lookout', 'Scenic Lookouts', 'Scenic Lookout', 'https://ss1.4sqi.net/img/categories_v2/parks_outdoors/sceniclookout_', '.png'),
(9, 254, '4bf58dd8d48988d177941735', 'Doctor''s Office', 'Doctor''s Offices', 'Doctor''s Office', 'https://ss1.4sqi.net/img/categories_v2/building/medical_doctorsoffice_', '.png'),
(10, 255, '4bf58dd8d48988d1a3941735', 'College Residence Hall', 'College Residence Halls', 'Residence Hall', 'https://ss1.4sqi.net/img/categories_v2/education/residencehall_', '.png'),
(11, 256, '4bf58dd8d48988d145941735', 'Chinese Restaurant', 'Chinese Restaurants', 'Chinese', 'https://ss1.4sqi.net/img/categories_v2/food/chinese_', '.png'),
(12, 257, '4bf58dd8d48988d154941735', 'Cuban Restaurant', 'Cuban Restaurants', 'Cuban', 'https://ss1.4sqi.net/img/categories_v2/food/default_', '.png'),
(13, 258, '4f2a25ac4b909258e854f55f', 'Neighborhood', 'Neighborhoods', 'Neighborhood', 'https://ss1.4sqi.net/img/categories_v2/parks_outdoors/neighborhood_', '.png'),
(14, 259, '4bf58dd8d48988d176941735', 'Gym', 'Gyms', 'Gym', 'https://ss1.4sqi.net/img/categories_v2/building/gym_', '.png'),
(15, 260, '4bf58dd8d48988d102941735', 'Yoga Studio', 'Yoga Studios', 'Yoga Studio', 'https://ss1.4sqi.net/img/categories_v2/shops/gym_yogastudio_', '.png'),
(16, 261, '4bf58dd8d48988d146941735', 'Deli / Bodega', 'Delis / Bodegas', 'Deli / Bodega', 'https://ss1.4sqi.net/img/categories_v2/food/deli_', '.png'),
(17, 262, '4bf58dd8d48988d1db931735', 'Tapas Restaurant', 'Tapas Restaurants', 'Tapas', 'https://ss1.4sqi.net/img/categories_v2/food/tapas_', '.png'),
(18, 263, '4eb1d4dd4b900d56c88a45fd', 'River', 'Rivers', 'River', 'https://ss1.4sqi.net/img/categories_v2/parks_outdoors/river_', '.png'),
(19, 264, '5032891291d4c4b30a586d68', 'Assisted Living', 'Assisted Living', 'Assisted Living', 'https://ss1.4sqi.net/img/categories_v2/building/apartment_', '.png'),
(20, 265, '4bf58dd8d48988d118941735', 'Dive Bar', 'Dive Bars', 'Dive Bar', 'https://ss1.4sqi.net/img/categories_v2/nightlife/divebar_', '.png'),
(21, 266, '4d954b06a243a5684965b473', 'Residential Building (Apartment / Condo)', 'Residential Buildings (Apartments / Condos)', 'Residential', 'https://ss1.4sqi.net/img/categories_v2/building/apartment_', '.png'),
(22, 268, '4bf58dd8d48988d12d951735', 'Boat or Ferry', 'Boats or Ferries', 'Boat / Ferry', 'https://ss1.4sqi.net/img/categories_v2/travel/boat_', '.png'),
(23, 270, '4d4b7105d754a06375d81259', 'Professional & Other Places', 'Professional & Other Places', 'Professional', 'https://ss1.4sqi.net/img/categories_v2/building/default_', '.png'),
(24, 272, '4bf58dd8d48988d124941735', 'Office', 'Offices', 'Office', 'https://ss1.4sqi.net/img/categories_v2/building/default_', '.png'),
(25, 273, '4bf58dd8d48988d125941735', 'Tech Startup', 'Tech Startups', 'Tech Startup', 'https://ss1.4sqi.net/img/categories_v2/shops/technology_', '.png');

-- --------------------------------------------------------

--
-- Table structure for table `fap_venues`
--

CREATE TABLE IF NOT EXISTS `fap_venues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venuId` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL COMMENT 'contact type field',
  `formattedPhone` varchar(100) DEFAULT NULL COMMENT 'contact type field',
  `address` varchar(255) DEFAULT NULL COMMENT 'location type field',
  `crossStreet` varchar(255) DEFAULT NULL COMMENT 'location type field',
  `lat` varchar(50) DEFAULT NULL COMMENT 'location type field',
  `lng` varchar(50) DEFAULT NULL COMMENT 'location type field',
  `distance` int(11) DEFAULT NULL COMMENT 'location type field',
  `postalCode` int(11) DEFAULT NULL COMMENT 'location type field',
  `cc` varchar(50) DEFAULT NULL COMMENT 'location type field',
  `city` varchar(255) DEFAULT NULL COMMENT 'location type field',
  `state` varchar(50) DEFAULT NULL COMMENT 'location type field',
  `country` varchar(50) DEFAULT NULL COMMENT 'location type field',
  `verified` tinyint(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=276 ;

--
-- Dumping data for table `fap_venues`
--

INSERT INTO `fap_venues` (`id`, `venuId`, `name`, `phone`, `formattedPhone`, `address`, `crossStreet`, `lat`, `lng`, `distance`, `postalCode`, `cc`, `city`, `state`, `country`, `verified`, `url`, `createdAt`) VALUES
(240, '503de4dce4b0857b003af5f7', 'monkeyHut', '', '', '', '', '40.7', '-74', 0, 10004, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:37'),
(241, '42377700f964a52024201fe3', 'Brooklyn Heights Promenade', '', '', 'Columbia Heights', 'btwn Remsen & Orange', '40.69829137716', '-73.996632099152', 342, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, 'http://nyharborparks.org/visit/brhe.html', '2014-04-28 01:59:37'),
(242, '4ebac60a0cd6904066e4108f', 'Brookyn Bridge Park Greenway', '', '', 'Fulton Ferry Landing to Atlantic Ave.', '', '40.700259802125', '-73.996986150742', 255, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:37'),
(243, '500d8171e4b02ee07c2b90d8', 'Chinese Mirch', '', '', 'Front Street and Wall Street', '', '40.700843811035', '-74.002113342285', 201, 10005, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:37'),
(244, '50bf8948e4b0b67e346ab18b', 'Squibb Park Bridge', '', '', '', '', '40.70099075975', '-73.995843844089', 367, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:37'),
(245, '4ff6de22e4b02ca33c0a04fb', 'Brooklyn Bridge Park Pop Up Pool', '', '', '', '', '40.699938955308', '-73.996693178973', 279, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:37'),
(246, '4d1b6de99aa55481bd14cee0', 'Hot Dog Vendor on corner of John and Front', '', '', 'John Street', 'Front Street', '40.7001719', '-74.000928', 80, 0, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:37'),
(247, '5284fe6811d2114d599b3e15', 'Brooklyn Bridge Park - Pier 3', '', '', '334 Furman St', 'Clark St.', '40.699072246916', '-73.99854183197', 160, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, 'http://www.brooklynbridgepark.org/the-park/future-park/pier-3', '2014-04-28 01:59:38'),
(248, '51eabef6498e10cf3aea7942', 'Brooklyn Bridge Park - Pier 2', '', '', 'Furman St', 'Brooklyn Bridge Park Greenway', '40.699747340664', '-73.996647269076', 284, 0, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(249, '4f2c1bbae4b0ccfb1d99b510', 'kk hair salon', '', '', '', '', '40.699565887451', '-74.001083374023', 103, 0, NULL, 'Manhattan', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(250, '5295dc7f11d2d6647ee2a8a6', 'Turner Construction Site: Pier 2', '', '', '', '', '40.69954', '-73.997108', 249, 0, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(251, '4a9acb4bf964a520c13220e3', 'Fruit Street Sitting Area', '', '', 'Columbia Heights', 'Cranberry St.', '40.700715297135', '-73.995237350464', 409, 0, NULL, 'New York', 'NY', 'United States', 1, 'http://nyc.gov/parks', '2014-04-28 01:59:38'),
(252, '4d9788e5daec224b4642333e', 'Dr Shur', '', '', '140 Elgar Place', '', '40.698978', '-74.00043', 119, 0, NULL, 'Bronx', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(253, '4d2cb2c677a2a1cd02c387b7', 'QBE', '', '', '80 Pine St', 'Water St', '40.698978', '-74.00043', 119, 10005, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(254, '4dac4c974df01c19b1b0fc82', 'Internal Medicine Associates', '', '', '530 1st Ave', '30th street', '40.698978', '-74.00043', 119, 10016, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(255, '4cb92bdc7148f04d9336d5ab', 'Livys apartment !', '', '', '95 Wall St', 'Water st', '40.700249', '-74.001442', 124, 10005, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(256, '51ec27ce498e6aba2b159f3a', 'China Max', '', '', '', '', '40.701491509762', '-73.999809287553', 166, 0, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(257, '5054eb43e4b04ed4f0dd1b30', 'La cabana', '', '', '', '', '40.69875', '-73.99953', 144, 0, NULL, 'Manhattan', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(258, '50f42c19e4b0966177888196', 'Columbia Hts at Clark St', '', '', '', '', '40.698481083286', '-74.001875187947', 231, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(259, '4fa7fa1ae4b089a95c20b508', 'EmblemHealth Fitness Center', '', '', '', '', '40.70160484227', '-74.00157678149', 222, 10004, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(260, '4e58103118382ada067671f2', 'Yoga Zone', '', '', '', '', '40.699906900078', '-73.996193908247', 321, 0, NULL, '', 'New York', 'United States', 0, '', '2014-04-28 01:59:38'),
(261, '4f603afae4b006673a95c90c', 'Best Of New York', '', '', '', '', '40.702198116212', '-73.998305757144', 283, 0, NULL, 'Manhattan', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(262, '50397c85e4b0b7a03bc9f5d5', 'swallow', '', '', '', '', '40.7007111', '-74.0019946', 186, 0, NULL, '', 'New York', 'United States', 0, '', '2014-04-28 01:59:38'),
(263, '501d4a16e4b00e1d08cc25ab', 'Free Kayaking In Brooklyn Meetup', '', '', 'Pier 1 @ Brooklyn Bridge Park', '', '40.700836696191', '-73.996825169867', 283, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(264, '519906d3498edb9fbe545f7b', '124 Columbia Heights', '', '', '', '', '40.699214352741', '-73.995797933988', 365, 0, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(265, '4d5dca375c39b1f73a39e449', 'Blackout @ BJ''s on Wall', '', '', '45 Wall', '', '40.701609', '-73.998774', 206, 0, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(266, '5199223d498e76a6074fe267', '124 C. H.', '', '', '', '', '40.699571217104', '-73.995993051842', 341, 0, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(267, '5074d119e4b084ad6e011d47', 'Where Paulo proposed to Niqui', '', '', '', '', '40.699091598076', '-73.997582681066', 227, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:38'),
(268, '4fd91ce8e4b0a8dbd1eddc69', 'SS Gawker', '', '', '', '', '40.699006108892', '-74.001714507605', 182, 0, NULL, '', 'New York', 'United States', 0, '', '2014-04-28 01:59:38'),
(269, '4df50edee4cda09e6da88d90', 'Boat Ramp @ Brooklyn Bridge Park', '', '', 'Pier 1', 'Middagh & Cranberry St.', '40.70279509325', '-73.99851808849', 335, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 01:59:39'),
(270, '4e2ee1ff483b93c2f2d97eb0', 'BGC Partners', '', '', '', '', '40.70266296308', '-74.001721994666', 330, 0, NULL, '', 'New York', 'United States', 0, '', '2014-04-28 02:00:14'),
(271, '4c704f0334443704e4cc235f', 'Spiral Pool', '', '', '', '', '40.699134168351', '-73.9973760874', 241, 11201, NULL, 'Brooklyn', 'NY', 'United States', 0, '', '2014-04-28 02:00:14'),
(272, '4ea6c238cc219396a4873a6d', 'The Beverage works', '', '', '', '', '40.697762145845', '-74.001060307676', 264, 0, NULL, '', 'New York', 'United States', 0, '', '2014-04-28 02:00:14'),
(273, '535a771311d218330f7cd639', 'REDI', '', '', '80 Pine St', '', '40.702799094657', '-73.998609907378', 332, 10005, NULL, 'New York', 'NY', 'United States', 0, '', '2014-04-28 02:41:14'),
(274, '42829c80f964a5205f221fe3', 'American Express Tower', '+12126405130', '+1 212-640-5130', '200 Vesey St', 'at West St', '40.713677641437', '-74.014218478013', 1938, 10285, NULL, 'New York', 'NY', 'United States', 1, 'http://about.americanexpress.com/community-guidelines/', '2014-04-28 02:54:54'),
(275, '4a32c3f9f964a5208c9a1fe3', 'Manhattan Bridge', '', '', 'Manhattan Bridge', '', '40.705888200473', '-73.990001678467', 1068, 10002, NULL, 'New York', 'NY', 'United States', 1, 'http://www.nyc.gov/dot', '2014-04-28 02:54:54');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fap_categories`
--
ALTER TABLE `fap_categories`
  ADD CONSTRAINT `fap_categories_ibfk_1` FOREIGN KEY (`venuId`) REFERENCES `fap_venues` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
