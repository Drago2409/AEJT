-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 04:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_buddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `cpass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `fname`, `lname`, `email`, `phone`, `pass`, `cpass`) VALUES
(1, 'Sunny', 'Fernandes', 'sf@gmail.com', '8329544092', '1234', '1234'),
(2, 'Elgan', 'Dsouza', 'ed@gmail.com', '9689184658', '1234', '1234'),
(3, 'Idwal', 'Dias', 'id@gmail.com', '77449271799', '1234', '1234'),
(4, 'Jason', 'Rodrigues', 'jr@gmail.com', '9422949307', '5678', '5678'),
(5, 'Abhishek', 'Kuddalkar', 'aK@gmail.com', '8698856333', '5678', '5678'),
(6, 'Guest', 'Member', 'gm@gmail.com', '0000000000', '5678', '5678');

-- --------------------------------------------------------

--
-- Table structure for table `beach_activities`
--

CREATE TABLE `beach_activities` (
  `beach_activities_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beach_activities`
--

INSERT INTO `beach_activities` (`beach_activities_id`, `name`, `image`, `address`, `description`, `location_id`) VALUES
(1, 'Jet Skiing', 'images/beach_activities_images/JetSkiing_1.jpeg', 'Baga Beach', 'Ride a jet ski on the waves and enjoy the thrill of speeding across the water', 2),
(2, 'Parasailing', 'images/beach_activities_images/Parasailing_1.jpeg', 'Calangute Beach', 'Soar high above the beach with a panoramic view of the coastline while parasailing', 2),
(3, 'Banana Boat Rides', 'images/beach_activities_images/BananaBoatRides_1.jpeg', 'Baga Beach', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 2),
(4, 'Scuba Diving', 'images/beach_activities_images/ScubaDiving_1.jpeg', 'Candolim Beach', 'Explore the underwater world and witness the vibrant marine life by scuba diving. (Specific shops/centers require research upon arrival)', 2),
(5, 'Surfing Lessons', 'images/beach_activities_images/SurfingLessons_2.jpeg', 'Anjuna Beach', 'Learn the basics of surfing from experienced instructors amd catch your first wave. (Surf schools require research upon arrival)', 2),
(6, 'Kayaking', 'images/beach_activities_images/Kayaking_1.jpeg', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 12),
(7, 'Stand-Up Paddleboarding', 'images/beach_activities_images/Stand-UpPaddleboarding.jpeg', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 12),
(8, 'Sunset Sailing', 'images/beach_activities_images/SunsetSailing_1.jpeg', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 7),
(9, 'Snorkel Trips', 'images/beach_activities_images/SnorkelTrips.jpeg', 'Bogmalo Beach', 'Discover underwater world without needing scuba gear with snorkeling trips.(Shops/centers require research upon arrival)', 9),
(10, 'Dolphin Watching Tours', 'images/beach_activities_images/DolphinWatchingTours_1.jpeg', 'Calangute', 'Embark on boat trip in search playful dolphins in their natural habitat.(Tours offered by vendors on he beach)', 9),
(11, 'Banana Boat Rides', 'images/beach_activities_images/BananaBoatRides_2.jpeg', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 9),
(12, 'Parasailing', 'images/beach_activities_images/Parasailing_2.jpeg', 'Colva Beach', 'Climb aboard a giant inflatable banana and rise high for a fun-filled ride followed by a boat', 2),
(13, 'Kayaking', 'images/beach_activities_images/Kayaking_2.jpeg', 'Agonda Beach', 'Soar high above the beach with panoramic view of coastline while parasailing', 2),
(14, 'Scuba Diving', 'images/beach_activities_images/ScubaDiving_2.jpeg', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 12),
(15, 'Dolphin Watching Tours', 'images/beach_activities_images/DolphinWatchingTours_2.jpeg', 'Palolem Beach', 'Embark on boat trip in search playful dolphins in their natural habitat (Tours offered by vendors on beach)', 9),
(16, 'Jet Skiing', 'images/beach_activities_images/JetSkiing_2.jpeg', 'Dona Paula Beach', 'Ride jet ski on waves enjoy thrill speeding across water', 2),
(17, 'Fly Boarding', 'images/beach_activities_images/FlyBoarding.jpeg', 'Vagator Beach', 'Flyboarding adrenaline-pumping water sport lets soar through air dive underwater thanks powerful water jetpack', 2),
(18, 'Sunset Sailing', 'images/beach_activities_images/SunsetSailing_2.jpeg', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 9),
(19, 'Surfing Lessons', 'images/beach_activities_images/SurfingLessons_1.jpeg', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 12),
(20, 'Ringo Ride', 'images/beach_activities_images/RingoRide.jpeg', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 9);

-- --------------------------------------------------------

--
-- Table structure for table `booked_bus`
--

CREATE TABLE `booked_bus` (
  `booked_bus_id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `pickup_date` date NOT NULL,
  `drop_date` date NOT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_bus`
--

INSERT INTO `booked_bus` (`booked_bus_id`, `cust_id`, `pickup_date`, `drop_date`, `bus_id`, `booking_id`) VALUES
(1, 1, '2024-05-30', '2024-05-31', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booked_flights`
--

CREATE TABLE `booked_flights` (
  `booked_flight_id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `flight_number` varchar(50) DEFAULT NULL,
  `flight_name` varchar(100) DEFAULT NULL,
  `depart_airport` varchar(100) DEFAULT NULL,
  `arrive_airport` varchar(100) DEFAULT NULL,
  `depart_time` datetime DEFAULT NULL,
  `arrive_time` datetime DEFAULT NULL,
  `seat_no` varchar(10) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_flights`
--

INSERT INTO `booked_flights` (`booked_flight_id`, `cust_id`, `flight_number`, `flight_name`, `depart_airport`, `arrive_airport`, `depart_time`, `arrive_time`, `seat_no`, `price`, `flight_id`, `booking_id`) VALUES
(1, 2, 'IX972', 'Air India Express', 'hyderabad', 'Goa', '2024-06-27 20:43:17', '2024-06-27 20:43:17', '1', '6455.00', 1, 2),
(10, 19, NULL, NULL, NULL, NULL, '2024-06-10 21:09:03', '2024-06-19 21:09:03', NULL, NULL, 1, 30),
(11, 19, NULL, NULL, NULL, NULL, '2024-06-10 21:09:03', '2024-06-19 21:09:03', NULL, NULL, 1, 31),
(12, 19, NULL, NULL, NULL, NULL, '2024-06-10 21:09:03', '2024-06-19 21:09:03', NULL, NULL, 11, 32),
(13, 19, NULL, NULL, NULL, NULL, '2024-06-10 21:09:03', '2024-06-19 21:09:03', NULL, NULL, 1, 34),
(14, 19, NULL, NULL, NULL, NULL, '2024-06-10 21:09:03', '2024-06-19 21:09:03', NULL, NULL, 1, 35),
(15, 19, NULL, NULL, NULL, NULL, '2024-06-10 21:09:03', '2024-06-19 21:09:03', NULL, NULL, 14, 36);

-- --------------------------------------------------------

--
-- Table structure for table `booked_hotel`
--

CREATE TABLE `booked_hotel` (
  `booked_hotel_id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `hotels_name` varchar(255) DEFAULT NULL,
  `hotels_description` text DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_hotel`
--

INSERT INTO `booked_hotel` (`booked_hotel_id`, `cust_id`, `hotel_id`, `hotels_name`, `hotels_description`, `check_in`, `check_out`, `rating`, `address`, `room_no`, `booking_id`) VALUES
(1, 16, 1, 'Taj Exotica Goa\r\n\r\n\r\n\r\n', 'Luxurious beachfront resort offering upscale rooms...', '2024-06-12 23:35:57', '2024-06-13 23:36:05', '5.00', 'Benaulim', '101', 4),
(4, 19, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30),
(5, 19, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31),
(6, 19, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32),
(7, 19, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34),
(8, 19, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35),
(9, 19, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36);

-- --------------------------------------------------------

--
-- Table structure for table `booked_train`
--

CREATE TABLE `booked_train` (
  `booked_train_id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `train_number` varchar(50) DEFAULT NULL,
  `train_name` varchar(100) DEFAULT NULL,
  `depart_station` varchar(100) DEFAULT NULL,
  `arrive_station` varchar(100) DEFAULT NULL,
  `depart_time` datetime DEFAULT NULL,
  `arrive_time` datetime DEFAULT NULL,
  `seat_no` varchar(10) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `train_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_train`
--

INSERT INTO `booked_train` (`booked_train_id`, `cust_id`, `train_number`, `train_name`, `depart_station`, `arrive_station`, `depart_time`, `arrive_time`, `seat_no`, `price`, `train_id`, `booking_id`) VALUES
(1, 3, 'TRN1001', 'Express Rail', 'Delhi', 'Goa', '2024-06-27 20:43:17', '2024-04-01 17:35:00', '1', '150.00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `booked_vehicle_rentals`
--

CREATE TABLE `booked_vehicle_rentals` (
  `booked_vehicle_id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `vehicle_rental_id` int(11) DEFAULT NULL,
  `vehicle_number` varchar(50) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_vehicle_rentals`
--

INSERT INTO `booked_vehicle_rentals` (`booked_vehicle_id`, `cust_id`, `vehicle_rental_id`, `vehicle_number`, `booking_id`) VALUES
(1, 18, 1, 'GA 06 C 4566', 6);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `token_id` int(11) NOT NULL,
  `travel_type` varchar(255) DEFAULT NULL,
  `trip_type` varchar(255) DEFAULT NULL,
  `arrival_date` varchar(255) DEFAULT NULL,
  `departure_date` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `numTravelers` varchar(255) DEFAULT NULL,
  `ageGroup` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `token_id`, `travel_type`, `trip_type`, `arrival_date`, `departure_date`, `source`, `destination`, `numTravelers`, `ageGroup`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 93, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe'),
(34, 94, 'Couple', 'Touristy ( 2-3 activities)', '2024-06-20', '2024-06-22', 'Hyderabad ', 'Goa', '2', '18-24'),
(35, 95, 'Couple', 'Touristy ( 2-3 activities)', '2024-06-20', '2024-06-22', 'Hyderabad ', 'Goa', '2', '18-24'),
(36, 96, 'Couple', 'Touristy ( 2-3 activities)', '2024-06-20', '2024-06-22', 'Hyderabad ', 'Goa', '2', '18-24');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `depart_stand` varchar(255) NOT NULL,
  `arrive_stand` varchar(255) NOT NULL,
  `depart_time` time NOT NULL,
  `arrive_time` time NOT NULL,
  `seats_available` int(11) NOT NULL,
  `total_seats` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_id`, `bus_name`, `images`, `depart_stand`, `arrive_stand`, `depart_time`, `arrive_time`, `seats_available`, `total_seats`, `price`, `vendor_id`) VALUES
(1, 'zingbus', 'images/bus_images/zingbus.jpg', 'Borivali West', 'Goa', '08:35:00', '17:00:00', 19, 37, 1510, 130),
(2, 'Kadamba Transport Corporation Limited  (KTCL)  - 97386\r\n', 'images/bus_images/KadambaTransportCorporationLimited.jpeg', 'Borivali West\r\n', 'Goa', '17:05:22', '07:30:22', 6, 41, 1200, 128),
(3, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Borivali West', 'Goa', '09:45:00', '17:00:00', 27, 37, 1252, 129),
(4, 'zingbus', 'images/bus_images/zingbus.jpg', 'Borivali West', 'Goa', '11:15:00', '18:00:00', 28, 37, 1471, 130),
(5, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Sion', 'Goa', '09:45:00', '19:15:00', 24, 37, 1738, 129),
(6, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Borivali West', 'Goa', '10:00:00', '16:00:00', 22, 37, 1827, 129),
(7, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Borivali West', 'Goa', '10:15:00', '18:45:00', 21, 37, 1528, 129),
(8, 'zingbus', 'images/bus_images/zingbus.jpg', 'Borivali West', 'Goa', '12:55:00', '20:00:00', 23, 37, 1336, 130),
(9, 'Dolphin Travel House ', 'images/bus_images/DolphinTravelHouse.jpeg', 'Borivali West', 'Goa', '06:30:00', '13:30:00', 35, 40, 1510, 135),
(10, 'Jolly Tours and Travels', 'images/bus_images/JollyToursandTravels.jpeg', 'Sion', 'Goa', '08:00:00', '18:35:00', 15, 40, 1499, 136),
(11, 'travels', 'images/bus_images/VRLTravels.jpeg', 'Patancheru', 'Goa', '18:30:00', '10:35:00', 28, 40, 1671, 137),
(12, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Patancheru', 'Goa', '19:00:00', '11:05:00', 20, 40, 1716, 129),
(13, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Patancheru', 'Goa', '19:30:00', '11:00:00', 18, 40, 1868, 129),
(14, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Kachiguda', 'Goa', '21:45:00', '15:00:00', 23, 40, 3200, 129),
(15, 'PVS Tours and Travels', 'images/bus_images/PVSToursandTravels.jpeg', 'Mehdipatnam', 'Goa', '20:00:00', '10:30:00', 17, 37, 1999, 150),
(16, 'Om Sri Tours and Travels', 'images/bus_images/OmSriToursandTravels.jpeg', 'Bhel', 'Goa', '18:15:00', '09:00:00', 33, 37, 2200, 153),
(17, 'Orange Tours And Travels', 'images/bus_images/OrangeToursAndTravels.jpeg', 'Chanda Nagar', 'Goa', '20:00:00', '10:30:00', 29, 37, 2200, 144),
(18, 'Orange Tours And Travels', 'images/bus_images/OrangeToursAndTravels.jpeg', 'Habsiguda', 'Goa', '14:20:00', '08:15:00', 32, 37, 2200, 144),
(19, 'Orange Tours and Travels Grand', 'images/bus_images/OrangeToursAndTravels.jpeg', 'Miyapur', 'Goa', '19:00:00', '10:00:00', 27, 37, 1900, 144),
(20, 'Northern Travels', 'images/bus_images/NorthernTravels.jpeg', 'Lakdikapul', 'Goa', '22:15:00', '15:00:00', 23, 37, 1499, 146),
(21, 'BTR Travels', 'images/bus_images/BTRTravels.jpeg', 'NIZAMPET', 'Goa', '19:45:00', '11:30:00', 26, 37, 1890, 147),
(22, 'Shirdi Xpress', 'images/bus_images/ShirdiXpress.jpeg', 'Paradise', 'Goa', '19:30:00', '10:30:00', 36, 37, 2000, 148),
(23, 'NEW DHEERAJ TOURS AND TRAVELS', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', 'Zaheerabad', 'Goa', '02:30:00', '16:00:00', 28, 37, 3200, 149),
(24, 'PVS Tours and Travels', 'images/bus_images/PVSToursandTravels.jpeg', 'Paradise', 'Goa', '19:30:00', '10:30:00', 32, 37, 1690, 150),
(25, 'NEW DHEERAJ TOURS AND TRAVELS', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', 'Paradise', 'Goa', '19:30:00', '10:30:00', 36, 37, 2000, 149),
(26, 'NEW DHEERAJ TOURS AND TRAVELS', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', 'Mehdipatnam', 'Goa', '20:30:00', '11:00:00', 22, 37, 1899, 149),
(27, 'Om Sri Tours and Travels', 'images/bus_images/OmSriToursandTravels.jpeg', 'Ramoji Film City', 'Goa', '14:15:00', '15:30:00', 24, 37, 1500, 153),
(28, 'GOWTHAMI TOURS AND TRAVELS', 'images/bus_images/GOWTHAMITOURSANDTRAVELS.jpg', 'Miyapur', 'Goa', '23:00:00', '14:30:00', 26, 40, 1999, 154),
(29, 'R National Travels', 'images/bus_images/RNationalTravels.jpeg', 'Mehdipatnam', 'Goa', '18:00:00', '08:30:00', 23, 40, 2099, 155),
(30, 'Om Sri Tours and Travels', 'images/bus_images/OmSriToursandTravels.jpeg', 'LB Nagar', 'Goa', '21:00:00', '12:00:00', 36, 37, 2000, 153),
(31, 'NEW DHEERAJ TOURS AND TRAVELS', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', 'Lakdikapool-Opposite Metro ', 'Goa', '17:00:00', '09:30:00', 24, 40, 1300, 149),
(32, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Patancheru', 'Goa', '18:30:00', '10:35:00', 28, 40, 1671, 129),
(33, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Patancheru', 'Goa', '19:00:00', '11:05:00', 20, 37, 1716, 129),
(34, 'IntrCity SmartBus', 'images/bus_images/IntrCitySmartBus.jpeg', 'Patancheru', 'Goa', '19:30:00', '11:00:00', 18, 37, 1868, 129),
(35, 'PVS Tours and Travels', 'images/bus_images/PVSToursandTravels.jpeg', 'Kachiguda', 'Goa', '21:45:00', '15:00:00', 23, 37, 3200, 150),
(36, 'Om Sri Tours and Travels', 'images/bus_images/OmSriToursandTravels.jpeg', 'Mehdipatnam', 'Goa', '20:00:00', '10:30:00', 17, 37, 1999, 153),
(37, 'Orange Tours And Travels', 'images/bus_images/OrangeToursAndTravels.jpeg', 'Bhel', 'Goa', '18:15:00', '09:00:00', 33, 37, 2200, 144),
(38, 'Orange Tours And Travels', 'images/bus_images/OrangeToursAndTravels.jpeg', 'Chanda Nagar', 'Goa', '20:00:00', '10:30:00', 29, 0, 2200, 144),
(39, 'Orange Tours and Travels Grand', 'images/bus_images/OrangeToursAndTravels.jpeg', 'Habsiguda', 'Goa', '14:20:00', '08:15:00', 32, 37, 2200, 144),
(40, 'BTR Travels', 'images/bus_images/BTRTravels.jpeg', 'Lakdikapul', 'Goa', '22:15:00', '15:00:00', 23, 37, 1499, 147),
(41, 'Northern Travels', 'images/bus_images/NorthernTravels.jpeg', 'Miyapur', 'Goa', '19:00:00', '10:00:00', 27, 37, 1900, 146),
(42, 'Shirdi Xpress', 'images/bus_images/ShirdiXpress.jpeg', 'NIZAMPET ', 'Goa', '19:45:00', '11:30:00', 26, 37, 1890, 148),
(43, 'NEW DHEERAJ TOURS AND TRAVELS', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', 'Paradise', 'Goa', '19:30:00', '10:30:00', 36, 37, 2000, 149),
(44, 'PVS Tours and Travels', 'images/bus_images/PVSToursandTravels.jpeg', 'Zaheerabad', 'Goa', '02:30:00', '16:00:00', 28, 37, 3200, 150),
(45, 'Om Sri Tours and Travels', 'images/bus_images/OmSriToursandTravels.jpeg', 'Mehdipatnam', 'Goa', '20:30:00', '11:00:00', 22, 37, 1899, 153),
(46, 'NEW DHEERAJ TOURS AND TRAVELS', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', 'Paradise', 'Goa', '19:30:00', '10:30:00', 32, 37, 1690, 149),
(47, 'NEW DHEERAJ TOURS AND TRAVELS', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', 'Paradise', 'Goa', '19:30:00', '10:30:00', 36, 37, 2000, 149),
(48, 'GOWTHAMI TOURS AND TRAVELS', 'images/bus_images/GOWTHAMITOURSANDTRAVELS.jpg', 'Ramoji Film City', 'Goa', '14:15:00', '15:30:00', 24, 37, 1699, 154),
(49, 'R National Travels', 'images/bus_images/RNationalTravels.jpeg', 'Miyapur', 'Goa', '23:00:00', '14:30:00', 26, 40, 1999, 155),
(50, 'Om Sri Tours and Travels', 'images/bus_images/OmSriToursandTravels.jpeg', 'Mehdipatnam', 'Goa', '18:00:00', '08:30:00', 23, 37, 2099, 153),
(51, 'NEW DHEERAJ TOURS AND TRAVELS', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', 'LB Nagar', 'Goa', '21:00:00', '12:00:00', 36, 37, 2000, 149),
(52, 'VRL Travels', 'images/bus_images/VRLTravels.jpeg', 'Lakdikapool-Opposite Metro ', 'Goa', '17:00:00', '09:30:00', 24, 37, 1300, 178);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `cpass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `fname`, `lname`, `gender`, `email`, `phone`, `pass`, `cpass`) VALUES
(1, 'vanzic', 'barretto', 'Male', 'vanzic@gmail.com', '456255555', '2580', '2580'),
(2, 'Jason', 'Fernandes', 'Male', 'jasonrod@gmail.com', '8007504525', '6969', '6969'),
(3, 'Flancy', 'Mascarenhas', 'Female', 'flancy@gmail.com', '9307062712', '123456', '123456'),
(4, 'John', 'Doe', 'Male', 'johndoe@example.com', '123-456-7890', 'password123', 'password123'),
(5, 'Alice', 'Smith', 'Female', 'alice.smith@example.com', '987-654-3210', 'alice123', 'alice123'),
(6, 'Michael', 'Johnson', 'Female', 'mike.j@example.com', '555-555-5555', 'mjohnson22', 'mjohnson22'),
(7, 'Emily', 'Brown', 'Female', 'emilybrown@example.com', '111-222-3333', 'emilyb99', 'emilyb99'),
(8, 'Sarah', 'Wilson', 'Female', 'swilson@example.com', '444-444-4444', 'sarahwilson1', 'sarahwilson1'),
(9, 'David', 'Lee', 'Male', 'david.lee@example.com', '777-777-7777', 'dlee1234', 'dlee1234'),
(10, 'Jessica', 'Martinez', 'Female', 'jessmartinez@example.com', '888-888-8888', 'jmartinez22', 'jmartinez22'),
(11, 'Matthew', 'Taylor', 'Male', 'matt.taylor@example.com', '999-999-9999', 'matttaylor33', 'matttaylor33'),
(12, 'Lauren', 'Clark', 'Female', 'lclark@example.com', '333-333-3333', 'lclark123', 'lclark123'),
(13, 'Ryan', 'Rodriguez', 'Male', 'ryanr@example.com', '222-222-2222', 'rrodriguez44', 'rrodriguez44'),
(14, 'Kimberly', 'Hall', 'Female', 'kimhall@example.com', '666-666-6666', 'kimhall55', 'kimhall55'),
(15, 'Christopher', 'White', 'Male', 'chris.white@example.com', '555-123-4567', 'chrisw123', 'chrisw123'),
(16, 'Megan', 'Anderson', 'Female', 'megan.anderson@example.com', '111-555-5555', 'megan1234', 'megan1234'),
(17, 'Kevin', 'Garcia', 'Male', 'kevingarcia@example.com', '444-111-2222', 'keving22', 'keving22'),
(18, 'Amanda', 'Martinez', 'Female', 'amartinez@example.com', '777-999-8888', 'amartinez123', 'amartinez123'),
(19, 'Idwal', 'Dias', 'Other', 'id@gmail.com', '1234567890', '963', '963');

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `doc_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `aadhar` varchar(255) DEFAULT NULL,
  `Driving_license` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `docs`
--

INSERT INTO `docs` (`doc_id`, `cust_id`, `aadhar`, `Driving_license`, `passport`) VALUES
(6, 1, '456', '456', '852'),
(8, 1, '456', NULL, '852');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `flight_number` varchar(255) NOT NULL,
  `flight_name` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `depart_airport` varchar(255) NOT NULL,
  `arrive_airport` varchar(255) NOT NULL,
  `depart_time` time NOT NULL,
  `arrive_time` time NOT NULL,
  `seats_available` int(11) NOT NULL,
  `total_seats` int(11) NOT NULL,
  `price` float NOT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `flight_number`, `flight_name`, `images`, `depart_airport`, `arrive_airport`, `depart_time`, `arrive_time`, `seats_available`, `total_seats`, `price`, `vendor_id`) VALUES
(1, 'IX972', 'Air India Express', 'images/flight_images/AirIndiaExpress.jpeg', 'Hyderabad ', 'Goa ', '16:20:00', '17:35:00', 30, 180, 6455.08, 260),
(2, '6E977', 'IndiGo', 'images/flight_images/IndiGo.jpeg', 'Banglore ', 'Goa ', '21:40:00', '22:50:00', 20, 180, 7917.13, 265),
(3, '6E522', 'IndiGo\r\n', 'images/flight_images/IndiGo.jpeg', 'Ahmedabad ', 'Goa ', '02:00:00', '03:30:00', 40, 180, 4865.72, 265),
(4, '6E588', 'IndiGo', 'images/flight_images/IndiGo.jpeg', 'Chennai ', 'Goa ', '05:45:00', '07:20:00', 50, 180, 5131.94, 265),
(5, 'UK583', 'Vistara\r\n', 'images/flight_images/Vistara.jpeg', 'Banglore ', 'Goa ', '05:00:00', '06:20:00', 158, 180, 4389.09, 282),
(6, '6E211', 'IndiGo', 'images/flight_images/IndiGo.jpeg', 'Kerala ', 'Goa ', '05:35:00', '06:55:00', 180, 140, 4827.82, 265),
(7, '6E885', 'IndiGo\r\n', 'images/flight_images/IndiGo.jpeg', 'Raipur ', 'Goa ', '18:45:00', '20:40:00', 40, 180, 5917.52, 265),
(8, '6E211', 'IndiGo\r\n', 'images/flight_images/IndiGo.jpeg', 'Kerala ', 'Goa ', '05:35:00', '06:55:00', 22, 180, 4825.59, 265),
(9, 'AI101', 'Air India Express', 'images/flight_images/AirIndiaExpress.jpeg', 'Mumbai ', 'Goa ', '08:00:00', '09:30:00', 120, 150, 4865.72, 260),
(10, '6E202', 'IndiGo', 'images/flight_images/IndiGo.jpeg', 'Delhi ', 'Goa ', '09:30:00', '11:00:00', 100, 120, 5131.94, 265),
(11, 'SG303', 'SpiceJet', 'image/flight_images/SpiceJet.jpeg', 'Bangalore', 'Goa ', '10:00:00', '11:45:00', 130, 160, 6455.08, 270),
(12, 'UK404', 'Vistara', 'images/flight_images/Vistara.jpeg', 'Kolkata ', 'Goa ', '11:30:00', '13:15:00', 110, 140, 7917.13, 282),
(13, 'G8505', 'GoAir', 'images/flight_images/GoAir.jpeg', 'Chennai', 'Goa ', '12:00:00', '13:30:00', 90, 110, 4827.82, 272),
(14, 'SG305', 'SpiceJet', 'image/flight_images/SpiceJet.jpeg', 'Hyderabad', 'Goa ', '13:30:00', '15:00:00', 105, 130, 4321.69, 270),
(15, '6E206', 'IndiGo', 'images/flight_images/IndiGo.jpeg', 'Pune ', 'Goa ', '14:00:00', '15:30:00', 125, 150, 3242.59, 265),
(16, 'AI107', 'Air India Express', 'images/flight_images/AirIndiaExpress.jpeg', 'Chandigarh ', 'Goa ', '15:30:00', '17:00:00', 100, 120, 6504.49, 260),
(17, 'UK406', 'Vistara', 'images/flight_images/Vistara.jpeg', 'Jaipur', 'Goa ', '16:00:00', '17:45:00', 115, 140, 7901.33, 282),
(18, 'G8509', 'GoAir', 'images/flight_images/GoAir.jpeg', 'Lucknow ', 'Goa ', '17:30:00', '19:00:00', 95, 115, 4323.78, 272),
(19, '6E210', 'IndiGo', 'images/flight_images/IndiGo.jpeg', 'Ahmedabad ', 'Goa ', '18:00:00', '19:30:00', 130, 160, 4567.32, 265),
(20, 'AI109', 'Air India Express', 'images/flight_images/AirIndiaExpress.jpeg', 'Bhopal ', 'Goa ', '19:30:00', '21:00:00', 120, 150, 7917.13, 260),
(21, 'SG311', 'SpiceJet', 'image/flight_images/SpiceJet.jpeg', 'Indore', 'Goa ', '20:00:00', '21:45:00', 110, 130, 6155.21, 270),
(22, '6E212', 'IndiGo', 'images/flight_images/IndiGo.jpeg', 'Varanasi ', 'Goa', '21:30:00', '23:00:00', 105, 120, 4326.67, 265),
(23, 'UK414', 'Vistara', 'images/flight_images/Vistara.jpeg', 'Guwahati ', 'Goa ', '22:00:00', '00:15:00', 95, 110, 5678.44, 282),
(24, 'G8513', 'GoAir', 'images/flight_images/GoAir.jpeg', 'Patna ', 'Goa', '07:00:00', '08:30:00', 100, 120, 4567.55, 272),
(25, '6E216', 'IndiGo', 'images/flight_images/IndiGo.jpeg', 'Raipur ', 'Goa ', '08:30:00', '10:00:00', 110, 140, 4873.56, 265),
(26, 'AI113', 'Air India Express', 'images/flight_images/AirIndiaExpress.jpeg', 'Ranchi ', 'Goa ', '09:00:00', '10:45:00', 120, 150, 2050, 260),
(27, 'SG317', 'SpiceJet', 'image/flight_images/SpiceJet.jpeg', 'Bhubaneswar ', 'Goa ', '10:30:00', '12:00:00', 105, 130, 1950, 270),
(28, 'IX972', 'Air India Express\r\n', 'images/flight_images/AirIndiaExpress.jpeg', 'Hyderabad ', 'Goa ', '16:20:00', '17:35:00', 30, 180, 6455.08, 260);

-- --------------------------------------------------------

--
-- Table structure for table `hiking`
--

CREATE TABLE `hiking` (
  `hiking_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hiking`
--

INSERT INTO `hiking` (`hiking_id`, `name`, `image`, `description`, `address`, `price`, `location_id`) VALUES
(1, 'Dudhsagar Waterfalls', 'images/hiking_images/dudhsagarfalls.jpg', 'Located in the Bhagwan Mahaveer Sanctuary and Mollem National Park, Dudhsagar Waterfalls is one of the tallest waterfalls in India. The hike to Dudhsagar is adventurous and takes you through dense forests, streams, and breathtaking scenery.', 'Sonaulim', 1190, 11),
(2, 'Cotigao Wildlife Sanctuary', 'images/hiking_images/CotigaoWildlifeSanctuary.jpeg', 'This sanctuary offers various hiking trails amidst dense forests, where you can spot diverse flora and fauna, including various species of birds and butterflies. The popular trails include the 2.5 km Tree Top Canopy Walk and the Nature Interpretation Cent', 'Khotigao', 30, 12),
(3, 'Trek to Vagheri Peaks', 'images/hiking_images/TrektoVagheriPeaks.jpeg', ' Vagheri Peaks is a lesser-known gem in Goa, offering picturesque landscapes and relatively untouched trails. The trek to Vagheri Peaks is moderately difficult and rewards you with panoramic views of the Western Ghats', ' Keri', 1000, 4),
(4, 'Netravali Wildlife Sanctuary', 'images/hiking_images/NetravaliWildlifeSanctuary.jpg', 'Netravali Wildlife Sanctuary is known for its pristine beauty and diverse ecosystem. The sanctuary offers several hiking trails that take you through dense forests, sparkling streams, and ancient temples.', 'Neturlim', 100, 11),
(5, 'Trek to Todo Waterfalls:', 'images/hiking_images/TrektoTodoWaterfalls.jpeg', 'Todo Waterfalls, located near the village of Netravali, is a hidden gem in South Goa. The trek to Todo Waterfalls is relatively easy and takes you through lush greenery, making it a perfect escape into nature.\r\n\r\n', 'Netravali', 3000, 11);

-- --------------------------------------------------------

--
-- Table structure for table `historic`
--

CREATE TABLE `historic` (
  `historic_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `historic`
--

INSERT INTO `historic` (`historic_id`, `name`, `image`, `description`, `address`, `location_id`) VALUES
(1, 'Basilica of Bom Jesus', 'images/historic_images/BasilicaofbomjesusFrontView.jpg', 'The Basilica of Bom Jesus in Goa, India, is a UNESCO World Heritage Site known for its baroque architecture. Built in 1594, it holds the remains of St. Francis Xavier and features a marble mosaic floor and intricate carvings. The church\'s facade bears the', 'Panaji', 7),
(2, 'Se Cathedral', 'images/historic_images/SeCathedralMain.jpg', 'Se Cathedral in Goa is a significant church dedicated to Saint Catherine, showcasing Portuguese-Manueline architecture. It houses the impressive Golden Bell, audible throughout the state. The cathedral\'s design is simple yet elegant, featuring 14 intricat', 'Panaji', 7),
(3, 'Fort Aguada', 'images/historic_images/fortaguadagoa.jpg', 'Fort Aguada, a 17th-century Portuguese fort, stands at the Mandovi River-Arabian Sea junction, featuring a unique four-storey lighthouse and stunning sunset vistas. Initially a defense against Dutch and Marathas, it served as a crucial water source for sa', 'Sinquerim', 2),
(4, 'Church of St Francis of Assisi', 'images/historic_images/StFrancisOfAssisiChurchMain.jpg', 'Church of St Francis of Assisi is a 16th-century Portuguese church located near Se Cathedral in Goa. It is a famous landmark which exhibits an eclectic mix of stunning architecture and intricate carvings. The statue of Mother Mary stands at the front of t', 'Panaji', 7),
(5, 'Church of Our Lady of the Immaculate Conception', 'images/historic_images/StFrancisOfAssisiChurchMain.jpg', 'Our Lady of Immaculate Conception in Panjim is a renowned Portuguese Baroque chapel with the second largest church bells in Goa, originally from the Church of Our Lady of Grace. Built in 1541 and later expanded, its white facade and hilltop location offer', 'Panaji', 7),
(6, 'Shri Ramnath Temple', 'images/historic_images/ShriRamnathTemple.jpg', 'Shri Ramnath Temple, also known as the temple of Ramnathi, is dedicated to five deities - Lord Rama, Lakshmi Narayan, Lord Ganesh, Kamakshi, Shanteri and Betal & Kalbhairav. Located in Ramnathim, Bandivade in Goa, the 450-year-old temple is of immense rel', 'Vasco de gama', 8),
(7, 'Mae De Deus Church', 'images/historic_images/MaeDeDeusChurch.jpg', 'The Mae de Deus church in Saligao showcases stunning neo-gothic architecture, housing the miraculous Mae de Deus statue from Old Goa. Built in 1873, its fairy-tale castle appearance and intricate interiors attract tourists worldwide. The church\'s feast on', 'Saligao', 2),
(9, 'Safa Shahouri Masjid', 'images/historic_images/SafaShahouriMasjid.jpg', 'Safa Shahouri Masjid in Ponda, Goa, is a 16th-century mosque believed to be constructed in 1560 by Adil Shah. With its simple yet captivating architecture, gardens, and fountains, the national monument offers a serene atmosphere ideal for moments of peace', 'Panaji', 8),
(10, 'Church Of St Augustine', 'images/historic_images/ChurchofStAugustine.jpg', 'The Church of St. Augustine, once Goa\'s largest church, now stands as a ruined complex near the Nunnery of Santa Monica in Old Goa. Its solitary St. Augustine Tower, completed in 1602, is part of the World Heritage Site, showcasing the grandeur of the 17t', 'Velha Goa', 7),
(11, 'Church of St. Cajetan', 'images/historic_images/ChurchofStCajetan.jpg', 'The Church of Saint Cajetan, a 17th-century marvel near Se Cathedral in Old Goa, stands as a testament to exquisite Roman Catholic architecture. Named after St. Cajetan, it\'s part of the World Heritage Site and houses altars dedicated to various saints. D', 'Velha Goa', 7),
(12, 'Reis Magos Fort', 'images/historic_images/ReisMagosFort.jpg', 'Reis Magos Fort, Goa\'s oldest fort on the banks of River Bardez, was restored and opened to the public in 2012. With its majestic reddish walls, it hosts exhibitions, cultural events, and galleries showcasing Portuguese-Indian architectural fusion. The fo', 'Verem', 2),
(13, 'Cabo De Rama Fort', 'images/historic_images/CaboDeRamaFort.jpg', 'Cabo de Rama, a 17th-century Portuguese fort in Canacona, South Goa, is associated with the Ramayana legend of Lord Rama\'s exile. Captured by the Portuguese in the 1760s, it served as a military base and prison, adding historical significance. Despite its', 'Cabo De Rama', 12),
(14, 'Corjuem Fort', 'images/historic_images/corjuemfort.jpg', 'Corjuem Fort, built in 1705 near River Mapusa in Aldona village, Goa, stands as a testament to history and resilience. Despite its smaller size, it offers sweeping vistas and remains relatively intact among Goa\'s forts. With a rich history of battles and ', 'Aldona', 2),
(15, 'Church Of Our Lady Of The Mount Goa', 'images/historic_images/ChurchOfOurLadyOfTheMountGoa.jpg', 'The Church of Our Lady of the Mount, a 16th-century hilltop church in Goa, offers a stunning view of old Goa amid lush vegetation. Although partly in ruins and closed for daily visits, it hosts evening mass on the 8th of each month and opens during the Mo', 'Panaji', 7),
(16, 'Church Of Our Lady Of The Rosary', 'images/historic_images/ChurchOfOurLadyOfTheRosary.jpg', 'Church Of Our Lady Of The Rosary is one of the oldest churches in Goa and is now considered as a World Heritage Site. The church was built on the orders of Afonso de Albuquerque after Goa was conquered by the Portuguese. The captivating design of the chur', 'Panaji', 7),
(17, 'images/historic_images/Shri Shantadurga Temple', 'images/historic_images/ShriShantadurgaTemple.jpg', 'Shri Shantadurga Temple, among Goa\'s largest temple complexes, venerates Goddess Durga and showcases Indo-Portuguese architecture. Featuring a golden palki and built of Kashmir stone, it houses the main temple and three smaller ones. Relocated in 1715 AD,', 'Donshiwado', 6),
(18, 'Mangeshi Temple', 'images/historic_images/ShriMangeshTemple.JPG', 'The Shri Mangueshi Temple in Mangeshi village, Goa, is dedicated to Lord Shiva and renowned for its stunning architecture, including grand domes and a water tank. It is the largest and most visited temple in Goa, honoring Bhagwan Manguesh, the Kuldevata o', 'Mardol', 6),
(19, 'Tambdi Surla', 'images/historic_images/TambdiSurla.jpg', 'Tambdi Surla, also known as Mahadev Temple, is a 12th-century Shaivite temple dedicated to Lord Shiva in Goa. Built of black basalt, it showcases remarkable architectural beauty, including a majestic Shiva linga and a headless bull idol in the inner sanct', 'Surla', 11),
(20, 'Chapel of St Catherine', 'images/historic_images/ChapelofStCatherine.jpg', 'Chapel of St Catherine is a 16th century historic chapel that was built over a Cathedral in 1552 on the orders of Afonso de Albuquerque after the Portuguese conquered the state. Located in Old Goa, it is a UNESCO World Heritage Site. The splendid Renaissa', 'Panaji', 7),
(21, 'Three Kings Church', 'images/historic_images/ThreeKingsChurch.jpg', 'The Three Kings Church in Cansaulim, Goa, is renowned for its haunting aura and captivating hilltop location. Built in 1599 by Fr Gonzalo Carvalho S.J., it offers stunning views of the sea and lush green Ghats of South Goa. Tourists are drawn to its encha', 'Vasco Da Gama', 8),
(22, 'Fort Tiracol', 'images/historic_images/FortTiracol.jpg', 'Tiracol Fort, across Terekhol river from Querim beach in North Goa, serves as Fort Tiracol heritage hotel with stunning sea views. Its picturesque setting includes an 18th-century church, accessible during special occasions like the annual feast in May. V', 'Tiracol', 1),
(23, 'Mormugao Fort', 'images/historic_images/MormugaoFort.jpg', 'Mormugao Fort near Vasco de Gama in Goa, built in the 17th century, protects Mormugao port and overlooks Varca Beach. Despite ruins, it features Fonte de Malabar and Fonte Santo Ignacio fountains from a gold and sulphur mine. The original fort included bu', 'Vasco Da Gama', 8),
(24, 'St. Andrew\'s Church Goa', 'images/historic_images/StAndrew\'sChurchGoa.jpg', 'The Church of St. Andrew\'s in Vasco da Gama, founded in 1570, features Neo-Gothic architecture with recent prayer hall extensions. Celebrating St. Andrew\'s feast on November 30th, it boasts a white exterior, golden grottos, and a marble statue of Lady of ', 'Vasco Da Gama', 8),
(25, 'Royal Chapel of St Anthony', 'images/historic_images/RoyalChapelofStAnthony.jpg', 'Chapel of St. Anthony, built in the 17th century by the Portuguese, is dedicated to the patron saint of the Portuguese Navy and the Army, St. Anthony. The attraction is located very close to the Monastery of St. Augustine in Goa. The chapel has a unique a', 'Velha Goa', 7),
(26, 'Santa Cruz Church', 'images/historic_images/SantaCruzChurch.jpg', 'The Holy Cross church in Santa Cruz, Goa, founded in 1957, is now the largest parish and a replica of the Se Cathedral. Its Neo-Roman architecture blends Indian and European influences, celebrated during the annual feast in May. This vibrant event marks t', 'Panaji', 7),
(27, 'Sri Mahadeva Temple', 'images/historic_images/ShriMahadevTemple.jpg', 'Sri Mahadeva Temple in Tambdi Surla, Goa, is an ancient Lord Shiva temple with influences from the Yadava and Kadamba Dynasties. Built with basalt rocks from the Deccan Plateau, it showcases intricate carvings and a Shiva Linga in the inner sanctum. The t', 'Surla', 11),
(28, 'Shri Mahalaxmi Temple', 'images/historic_images/ShriMahalaxmiTemple.jpg', 'Shri Mahalaxmi Temple located in Bandora, 4km from Ponda in Goa, is dedicated to Goddess Mahalakshmi. The highlight of the temple is the idol of the Goddess with a linga on her head and is considered a Satvik (peaceful) form of the Devi. The deity was wor', 'Panaji', 7),
(29, 'Chapora Fort', 'images/historic_images/ChaporaFort.jpg', 'Chapora Fort, 10 km from Mapusa, is renowned as the \'Dil Chahta Hai Fort\' due to a famous Bollywood film shot here. Built by the Portuguese in 1717 atop an ancient Muslim fort, it offers panoramic views of Vagator beach and the Arabian Sea. The fort\'s his', 'Chapora ', 2),
(30, 'Sinquerim Fort', 'images/historic_images/SinquerimFort.jpg', 'Located at a distance of 18 kms from Panaji, Sinquerim Fort was constructed in 1612 and overlooks the beautiful Sinquerim Beach. The magnificent fort was used as the reference point for goods arriving from Europe. Also, it was used to guard the territory ', ' Candolim', 2),
(31, 'Nanuz Fort', 'images/historic_images/Nanuzfort.jpg', 'Located in the Sattari district of North Goa, Nanuz Fort was built by the legendary ruler Shivaji and was later taken over by the Portuguese. Although comparatively smaller in size and currently in ruins, the fort is still flocked by many tourists to expe', 'Valpoi', 4),
(32, 'Rachol Fort', 'images/historic_images/RacholFort.jpeg', 'Situated northeast to Margao in Salcette, South Goa, Rachol Fort is famous for the battles fought between Vijayanagar and Bijapur empires. Built completely out of laterite stones, the majestic fort has become a major tourist attraction of the city. Mostly', 'Madgaon', 9),
(33, 'St. Lawrence Church Sinquerim', 'images/historic_images/St.LawrenceChurchSinquerim.jpg', 'Perched away atop Sinquerim Hill, the beautiful St. Lawrence Church was built in the 16th century by the Jesuits. Built-in stunning Portuguese architecture, come here to seek the blessings of the divine.\r\nThe church is dedicated to the martyr St. Lawrence', 'Sinquerim', 2),
(34, 'St. Estevam Island', 'images/historic_images/StEstevamIsland.jpg', '', 'St. Estevam, ', 7),
(35, 'Viceroy\'s arc', 'images/historic_images/Viceroy\'sarc.jpg', 'The archway, built by Francisco da Gama in 1597, features a deer emblem and a statue of Vasco da Gama facing the sea. The other side shows an European woman with a sword, standing over an Indian. The arch required repairs in 1954 after collapsing on the s', 'Velha Goa', 7),
(36, 'Miramar Twin Statues', 'images/historic_images/MiramarTwinStatues.jpg', 'Miramar Twin Statues stand as iconic landmarks at Miramar Beach in Goa. These statues depict two dolphins leaping out of the sea, symbolizing the natural beauty and marine life of the region. They serve as popular photo spots and landmarks for visitors an', 'Miramar', 7),
(37, 'Pandava Caves', 'images/historic_images/PandavaCaves.jpg', 'Khandepar Caves are four free-standing rock cut sanctuaries at Khandepar that date back to the 10th or 11th centuries, which was generally the period of structural temples. Located at Khandepar in North Goa District, these caves have been carved out of a ', 'Sanquelim', 3),
(38, 'Chhatrapati Shivaji Maharaj Fort', 'images/historic_images/ChhatrapatiShivajiMaharajFort.jpg', 'Chhatrapati Shivaji Maharaj Fort, is a modern reconstruction converted into a park. Neglect and poor materials caused the 2017 collapse of the lower walls, prompting a rebuild. The original stone-and-mud structure contrasts with the red-plastered concrete', 'Bandoda', 6),
(40, 'Menezes Braganca House', 'images/historic_images/MenezesBragancaHouse.jpg', 'Menezes Braganza House, a 17th-century Portuguese mansion in Chandor Village, South Goa, is renowned for its historical significance and size. Filled with antique furniture, art, and artifacts, it boasts the largest Ball Room among Goan Portuguese mansion', 'Chandor', 9),
(41, 'Fernandes Heritage House', 'images/historic_images/FernandesHeritageHouse.jpg', 'Sara Fernandes House is a 500 years Heritage house which was built even before the Portuguese arrival. Located in Chandor “Voddlem Ghor” has a large ballroom, spacious verandah, French glass windows, mirrors and crystal chandeliers which adorn the beauty ', 'Chandor', 9),
(42, 'Betul Fort', 'images/historic_images/BetulFort.jpg', 'Betul Fort, also known as Fortaleza de São José de Cacucho, is a historic fort located in the village of Betul in South Goa, India. Built by the Portuguese in the 17th century, the fort overlooks the picturesque Betul Beach and the confluence of the Sal R', 'Betul', 9),
(43, 'Adil Shah Palace Gateway', 'images/historic_images/AdilShahPalaceGateway.jpg', 'Once part of Yusuf Adil Shah\'s palace, this site became a Portuguese residence after their victory in 1510. Used by Portuguese Governors until 1695, it hosted the new Viceroy awaiting ceremonial keys at the Viceroy\'s Arch in Old Goa, while the departing V', 'Old Goa', 7),
(44, 'The Arch Of Conception', 'images/historic_images/TheArchOfConception.jpg', 'After Goa\'s conquest in 1510, the city\'s expansion led to the removal of its enclosing wall, leaving four gates intact. The Mandovim Gate, now named after Our Lady, was a stop for the condemned during the Goa Inquisition, praying at an image of Our Lady o', 'Velha Goa', 7),
(45, 'Mill Stones of Gun Powder Factory', 'images/historic_images/MillStonesofGunPowderFactory.jpg', 'Established in 1630 by Viceroy Dom Francisco da Gama, a gunpowder factory in Panelim supplied other Portuguese colonies until its closure in 1869.', ' Velha Goa', 7),
(46, 'Cross Of St. Alex Church', 'images/historic_images/CrossOfStAlexChurch.jpg', 'St. Alex Church, one of Goa\'s oldest, began as a chapel in 1576, rebuilt by Franciscans in 1595, and later dedicated to St. Alex in 1815. The current structure dates to 1741, with towers added in 1765 and sanctuary rebuilt in 1916.', 'Saligao', 2),
(47, 'Azad Maidan', 'images/historic_images/AzadMaidan.jpg', 'situated at the bank of river Mandovi, near old Secretariat, commemorates the memory of Abbe Faria, the first hypnotist in the world. The statue was sculpted by Ramchandra Pandurang Kamat and was inaugurated on 20th September, 1945.', 'Panaji', 7),
(48, 'Statue of Abbe Faria', 'images/historic_images/StatueofAbbeFaria.jpg', 'situated at the bank of river Mandovi, near old Secretariat, commemorates the memory of Abbe Faria, the first hypnotist in the world. The statue was sculpted by Ramchandra Pandurang Kamat and was inaugurated on 20th September, 1945', 'Candolim', 2),
(50, 'Alorna Fort', 'images/historic_images/AlornaFort.jpg', 'Alorna Fort, also known as \'Halarn Fort,\' is among Goa\'s oldest fortresses, built by the Bhonsles in the 17th century to defend against Maratha attacks. Located in Mapusa, it now sits abandoned, overgrown with wild vegetation, offering views of the nearby', 'Alorna ', 1),
(51, 'Usgalimal', 'images/historic_images/Usgalimal.jpg', 'Situated on the banks of river Kushavati, these engravings exhibit earliest traces of human settlement in Goa. These petroglyphs (rock art) are approximately 4,000 to 6,000 years old and belong to the Neolithic Period. More than 100 distinct figures, spre', 'Rivona VP', 11);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotels_name` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `hotels_description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `location_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotels_name`, `images`, `address`, `rating`, `hotels_description`, `price`, `location_id`, `vendor_id`) VALUES
(1, 'Taj Exotica Goa', '\'images/hotels_images/TajExoticaGoa.jpg\'', ' Benaulim', 5, 'Luxurious beachfront resort offering upscale rooms & suites, plus dining, a spa & outdoor pools.', 18708, 9, 1),
(2, 'The Leela Goa', 'images/hotels_images/TheLeelaGoa.jpg', 'Cavelossim, ', 5, 'Elegant resort with refined rooms & suites, plus dining, a spa, 2 pools & beach access.', 18000, 9, 2),
(3, 'Park Hyatt Goa Resort and Spa', 'images/hotels_images/ParkHyattGoa.jpeg', ' Cansaulim', 5, 'Opulent beachfront resort with posh rooms & suites, plus dining, a spa & a casino.', 13066, 9, 3),
(4, 'Alila Diwa Goa', 'images/hotels_images/AlilaDiwaGoa.jpeg', 'Majorda', 5, 'Eco-friendly resort offering sleek rooms & suites, plus dining, a spa & a pool.', 11629, 9, 4),
(5, 'Taj Cidade de Goa Heritage', 'images/hotels_images/TajCidadedeGoaHeritage.jpeg', 'Panjim', 4, 'Upscale beachfront resort with refined rooms & suites, plus dining, a spa & an outdoor pool.', 16500, 7, 5),
(6, 'The Pentacon A Resort\r\n', 'images/hotels_images/ThePentaconAResort.jpeg', 'Palolem', 3, 'Casual hotel with international cuisine\r\n', 2366, 12, 6),
(7, 'The LaLiT Golf & Spa Resort Goa\r\n', 'images/hotels_images/TheLaLiTGolf&SpaResortGoa.jpeg', 'Palolem', 5, 'Experience the grandeur of one of the best luxury hotels in Goa as you bask in the beauty of the Sahyadri mountain range within an abode located close to the Talpone river and the Arabian sea. Regarded as the top 5 star hotel in Goa, the resort has Baroqu', 10110, 12, 7),
(8, 'Hotel Sea Shine \r\n', 'images/hotels_images/HotelSeaShine.jpg', ' Palolem', 3, 'SEA SHINE BEACH RESORT is a great choice for travellers looking for a star hotel in Goa.', 2500, 12, 8),
(9, 'Hotel My Soulmate\r\n', 'images/hotels_images/HotelMySoulmate.jpeg', 'Palolem', 3, 'Close to Palolem Beach, Hotel My Soulmate, Palolem Beach provides a free daily manager\'s reception, a terrace and a coffee shop/cafe.', 3000, 12, 9),
(10, 'Molyma Hotels\r\n', 'images/hotels_images/MolymaHotels.jpg', 'Ponsulem', 3, 'Molyma Hotels comprises of 42 tastefully designed and furnished rooms set a midst green, luscious hedges of foliage and groves of coconut trees. The clean, pristine and white sandy beaches of Rajbag and Palolem are accessible to guests from a well-paved r', 2585, 12, 10),
(11, 'Akasa Goa\r\n', 'images/hotels_images/AkasaGoa.jpg', 'Palolem', 3, 'Luxurious beachfront resort with upscale rooms, dining, spa, and pools, just steps away from Palolem Beach. Close to Ourem and Patnem Beaches for additional dining and shopping options.', 3000, 12, 11),
(12, 'Varandas de Canacona\r\n', 'images/hotels_images/VarandasdeCanacona.jpg', 'Tarir Rajbagh', 4, 'Varandas de Canacona is a picturesque and tranquil resort nestled in the serene landscapes of Canacona offering a blend of modern comforts with traditional Goan architecture, providing guests with a peaceful retreat amidst lush greenery and swaying palm t', 3865, 12, 12),
(13, 'Cuba Patnem\r\n', 'images/hotels_images/CubaPatnem.jpeg', 'Patnem', 4, 'Cuba Patnem is a charming beachfront retreat located in Patnem offering guests a peaceful escape amidst swaying palm trees and the gentle sounds of the Arabian Sea. \r\nThe resort features cozy cottages and beach huts, each designed with simplicity and comf', 3155, 12, 13),
(14, 'Marron Sea View Resort\n', 'images/hotels_images/MarronSeaViewResort.jpg', 'Palolem', 3, 'Marron Sea View Resort offers a delightful escape nestled along the scenic coastline. Overlooking the azure waters, this charming resort combines modern comfort with traditional hospitality.', 4800, 12, 14),
(15, 'Royal Touch Beach Huts & Restaurant\r\n', 'images/hotels_images/RoyalTouchBeach.jpg', 'Palolem', 3, 'Royal Touch Beach Huts & Restaurant offers a delightful beachfront retreat where guests can immerse themselves in the beauty of the coastline and the warmth of traditional hospitality.\r\n Nestled along the sandy shores, the resort features cozy beach huts ', 1350, 12, 15),
(16, 'Maria Guest House\r\n', 'images/hotels_images/MariaGuestHouse.jpeg', 'Palolem', 4, 'Located 200 metres from Palolem Beach, Maria Guest House offers air-conditioned accommodation with a terrace and free WiFiand comes with a balcony. \r\nThe guest house features family rooms ', 2016, 12, 16),
(17, 'Art Resort Goa\r\n', 'images/hotels_images/ArtResortGoa.jpeg', 'Palolem', 4, 'Art Resort Goa is a unique blend of artistic inspiration and coastal serenity, nestled in the vibrant landscape of Goa, India. This boutique resort celebrates creativity in every aspect, from its eclectic decor to its vibrant community spaces. Guests are ', 4500, 12, 17),
(18, 'Peace Garden Beach Resort\r\n', 'images/hotels_images/PeaceGardenBeachResort.jpg', 'Talpona', 3, 'Peace Garden Beach Resort is a tranquil oasis nestled along the pristine shores, offering a serene escape for travelers seeking relaxation and rejuvenation. Surrounded by lush tropical gardens and overlooking the azure waters of the ocean, this charming r', 3800, 12, 18),
(19, 'De Garland, Palolem - AM Hotel Kollection\r\n', 'images/hotels_images/DeGarland.jpeg', 'Palolem', 4, 'De Garland, Palolem, a distinguished property under the AM Hotel Kollection, epitomizes luxury and charm in the heart of Palolem, Goa. Nestled along the shores of one of Goa\'s most iconic beaches, De Garland offers guests a unique blend of opulent accommo', 4800, 12, 19),
(20, 'The Hawaii Comforts\r\n', 'images/hotels_images/TheHawaiiComforts.jpeg', 'Panaji,', 3, 'The Hawaii Comforts offers a cozy and welcoming stay in the vibrant city of Goa. With its comfortable accommodations, modern amenities, and warm hospitality, guests can enjoy a pleasant and memorable experience during their visit.', 2800, 7, 20),
(21, 'ORANGE SKY INN HOLIDAY HOME', 'images/hotels_images/ORANGESKYINN.jpeg', ' Palolem', 4, 'Orange Sky Inn Holiday Home offers a warm and welcoming retreat for travelers seeking comfort and convenience during their vacation,this charming holiday home provides a cozy ambiance with personalized hospitality. Guests can relax in well-appointed rooms', 1500, 12, 21),
(22, 'SOBIT SAROVAR PORTICO GOA - PALOLEM\r\n', 'images/hotels_images/SOBITSAROVARPORTICO.jpeg', 'Palolem', 4, 'Sobit Sarovar Portico Goa - Palolem, situated in the picturesque town of Palolem in Goa, India, offers a delightful blend of modern comforts and coastal charm. This contemporary hotel provides guests with a serene escape just a stone\'s throw away from the', 5800, 12, 22),
(23, 'Roundcube Patnem\r\n', 'images/hotels_images/RoundcubePatnem.jpeg', 'Palolem', 4, 'Roundcube Patnem offers a distinctive and intimate retreat for travelers seeking a tranquil escape in the coastal town of Patnem, Goa. Nestled amidst lush tropical greenery, this boutique resort provides a serene ambiance with personalized hospitality. Gu', 2100, 12, 23),
(24, 'Ciarans\r\n', 'images/hotels_images/Ciarans.jpeg', '', 3, 'Built around the picturesque Palolem beach, Ciarans is a luscious boutique cottage resort that screams opulence and cozy inside-out. Each room is designed aesthetically to quench the artsy and comfort that your memory imbibes', 2300, 10, 24),
(25, 'Palm Forest Palolem\r\n', 'images/hotels_images/PalmForest.jpeg', 'Palolem ', 3, 'Palm Forest Palolem is a serene retreat nestled amidst lush greenery in the enchanting coastal town of Palolem.\r\nThis eco-conscious resort offers guests a tranquil escape from the hustle and bustle of everyday life, surrounded by the beauty of nature. \r\nT', 5500, 12, 25),
(26, 'Agonda Beach Resort\r\n', 'images/hotels_images/AgondaBeachResort.jpg', 'Agonda ', 3, 'Agonda Beach Resort offers a blissful retreat on the pristine shores of Agonda Beach, located in South Goa, India. This charming beachfront property provides guests with a tranquil escape amidst the natural beauty of the Arabian Sea and lush tropical surr', 3655, 12, 26),
(27, 'Casa Susegad', 'images/hotels_images/CasaSusegad.jpeg', 'Loutolim', 4, 'n imaginatively restored colonial mansion house only 20 minutes drive from beaches, with all of the friendliness and charm of a rural village setting. Set in one and a half acres of beautiful grounds we are surrounded by forest and jungle in what is often', 6400, 9, 27),
(28, 'Chrisander\'s Resort & Restaurant\r\n', 'images/hotels_images/Chrisander\'sResort.jpeg', 'Karally', 3, 'Chrisander\'s Resort & Restaurant is a charming beachfront retreat located in the vibrant coastal town of [insert location], Goa, India. Nestled along the golden sands of [insert beach name], this inviting resort offers guests a tranquil escape amidst the ', 3500, 10, 28),
(29, 'Flagship Springfield Hotel\r\n', 'images/hotels_images/FlagshipSpringfieldHotel.jpeg', 'Sirvoi', 2, 'Flagship Springfield Hotel offers a comfortable and convenient situated in a prime location, this hotel provides easy access to nearby attractions, shopping centers, and dining options.\r\nThe accommodation options range from cozy rooms to spacious suites, ', 2400, 10, 29),
(30, 'Hotel Apple Rosa\r\n', 'images/hotels_images/HotelAppleRosa.jpeg', 'Margao', 2, 'Hotel Apple Rosa is a charming and cozy retreat is a boutique hotel offers guests a warm and inviting atmosphere, with tastefully decorated rooms and modern amenities to ensure a comfortable stay. Whether you\'re traveling for business or leisure, Hotel Ap', 1600, 9, 30),
(31, 'Hotel Raj Resort\r\n', 'images/hotels_images/HotelRajResort.jpeg', ' Aquem ', 3, 'Hotel Raj Resort offers a comfortable stay with modern amenities.\r\nEnjoy convenience and relaxation with our well-appointed rooms and friendly service', 3400, 9, 31),
(32, 'Seasons Hotel & Spa\r\n', 'images/hotels_images/SeasonsHotel&Spa.jpg', 'Fatorda', 3, 'Seasons Hotel & Spa offers a luxurious retreat in the heart of Fatorda. Indulge in upscale accommodations, fine dining, and rejuvenating spa treatments for a memorable stay.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 3900, 9, 32),
(33, 'XEC Residency\r\n', 'images/hotels_images/XECResidency.jpeg', 'Gogol', 4, 'XEC Residency provides a comfortable and convenient stay in Gogol. Enjoy modern amenities and friendly service for a pleasant experience.', 2855, 9, 33),
(34, 'Nirvana Hill Resort\r\n', 'images/hotels_images/NirvanaHillResort.jpeg', 'Curtorim', 4, 'Nirvana Hill Resort offers a serene escape amidst the natural beauty of Curtorim. Relax in comfortable accommodations, surrounded by breathtaking views and tranquility.', 5550, 10, 34),
(35, 'Hotel Z Square\r\n', 'images/hotels_images/HotelZSquare.jpeg', 'Vasco da Gama', 3, 'Hotel Z Square provides a modern and comfortable stay in the heart of Vasco de Gama. Enjoy convenient amenities and excellent service for a pleasant experience.', 1388, 8, 35),
(36, 'Bogmallo Beach Resort South Goa\r\n', 'images/hotels_images/BogmalloBeachResort.jpeg', 'Bogmalo', 4, 'Bogmallo Beach Resort South Goa offers a luxurious beachfront escape in the serene landscapes of South Goa. With upscale accommodations, stunning ocean views, and a range of amenities including dining options, spa services, and recreational activities, gu', 9200, 8, 36),
(37, 'Hotel Villa De Vasco\r\n', 'images/hotels_images/HotelVillaDeVasco.jpeg', 'Vasco da Gama ', 2, 'Hotel Villa De Vasco offers a charming and comfortable stay in the heart of Vasco de Gama. With its cozy accommodations and warm hospitality, guests can enjoy a relaxing retreat amidst the vibrant atmosphere of the area', 2100, 8, 37),
(38, 'Sanman Hotels, Vasco\r\n', 'images/hotels_images/SanmanHotels.jpeg', 'Vasco da Gama', 3, 'Sanman Hotels in Vasco offers a convenient and comfortable stay in the vibrant city of Vasco da Gama, Goa. With its modern amenities, friendly service, and convenient location, guests can enjoy a pleasant experience whether traveling for business or leisu', 1566, 8, 38),
(39, 'The Citadel Hotel\r\n', 'images/hotels_images/TheCitadelHotel.jpeg', ' Vasco da Gama', 3, 'The Citadel Hotel offers a sophisticated and comfortable stay in the heart of Vasco da Gama. With its elegant accommodations, attentive service, and modern amenities, guests can enjoy a luxurious retreat in the city.', 2788, 8, 39),
(40, 'ATHI RESORTS\r\n', 'images/hotels_images/ATHIRESORTS.jpeg', 'Vasco da Gama', 3, 'Athi Resorts provides a serene and picturesque getaway amidst the natural beauty of Vasco de Gama. With comfortable accommodations, scenic surroundings, and a range of amenities, guests can relax and unwind in tranquility.\n\n\n\n\n\n', 5500, 8, 40),
(41, 'Hotel karma plaza\r\n', 'images/hotels_images/Hotelkarmaplaza.jpeg', 'Vasco da Gama', 2, 'Hotel Karma Plaza offers a welcoming stay in the heart of [insert location]. With its comfortable accommodations and convenient amenities, guests can enjoy a pleasant experience during their visit.', 2365, 8, 41),
(42, 'Rejenta Palace Vasco Goa\r\n', 'images/hotels_images/RejentaPalace.jpeg', 'Vasco da Gama', 4, 'Rejenta Palace Vasco Goa offers a regal and luxurious stay in the vibrant city of Vasco da Gama, Goa. With its elegant accommodations, impeccable service, and convenient location, guests can experience the grandeur of Goan hospitality during their stay.', 3546, 8, 42),
(43, 'Collection O Hotel Maharaja\r\n', 'images/hotels_images/CollectionOHotelMaharaja.jpeg', 'Vasco de Gama', 1, '\r\nCollection O Hotel Maharaja offers a comfortable and convenient stay in Vasco de Gama. With its modern amenities and attentive service, guests can enjoy a pleasant experience during their visit', 1400, 8, 43),
(44, 'Hotel Taniya\r\n', 'images/hotels_images/HotelTaniya.jpeg', 'Vasco da Gama', 3, '\r\nHotel Taniya provides a cozy and welcoming stay in the heart of Vasco da Gama. With its comfortable accommodations and friendly service, guests can enjoy a pleasant and convenient experience during their visit.', 3577, 8, 44),
(45, 'DoubleTree by Hilton Goa\r\n', 'images/hotels_images/DoubleTree.jpeg', 'Panaji', 5, '\r\nDoubleTree by Hilton Goa offers a luxurious and memorable stay in the vibrant coastal city of Goa. With its upscale accommodations, impeccable service, and array of amenities including dining options, pool facilities, and more, guests can experience the', 8366, 7, 45),
(46, 'Hotel Shaurya\r\n', 'images/hotels_images/HotelShaurya.jpeg', 'Panaji', 3, 'Hotel Shaurya provides a comfortable and convenient stay in Panaji. With its cozy accommodations and attentive service, guests can enjoy a pleasant experience during their visit.', 4299, 7, 46),
(47, 'The Fern Kadamba Hotel & Spa', 'images/hotels_images/TheFernKadamba.jpeg', 'Velha Goa', 5, '\r\nThe Fern Kadamba Hotel & Spa offers a luxurious and rejuvenating retreat in the scenic surroundings of [insert location]. With its upscale accommodations, state-of-the-art spa facilities, and impeccable service, guests can indulge in relaxation and tran', 7644, 7, 47),
(48, 'Hotel Omkar\r\n', 'images/hotels_images/HotelOmkar.jpg', 'Marcela', 2, 'The Fern Kadamba Hotel & Spa offers a luxurious and rejuvenating retreat in the scenic surroundings of [insert location]. With its upscale accommodations, state-of-the-art spa facilities, and impeccable service, guests can indulge in relaxation and tranqu', 2300, 6, 48),
(49, 'Ronaldo\'s Restaurant & Hotel\r\n', 'images/hotels_images/Ronaldo\'sHotel.jpg', 'Kadamba Plateau', 3, 'Ronaldo\'s Restaurant & Hotel offers a charming and welcoming stay in Kadamba Plateau. With its comfortable accommodations and delicious dining options, guests can enjoy a delightful experience during their visit.', 3478, 6, 49),
(50, 'Hotel Menino Executive', 'images/hotels_images/HotelMeninoExecutive.jpeg', 'Kaziwada', 2, 'Hotel Menino Executive provides a comfortable and convenient stay in Kaziwada. With its well-appointed accommodations and attentive service, guests can enjoy a pleasant experience during their visit.', 1534, 6, 50),
(51, 'Hotel Shakti Palace\r\n', 'images/hotels_images/HotelShaktiPalace.jpeg', 'Shanti Nagar', 3, 'Hotel Shakti Palace offers a comfortable and welcoming stay in the heart of Shanti Nagar. With its cozy accommodations and friendly service, guests can enjoy a pleasant experience during their visit.', 2500, 6, 51),
(52, 'Hotel Sungrace', 'images/hotels_images/HotelSungrace.jpeg', 'Khadpabandh', 3, 'Hotel Sungrace offers a cozy and inviting stay in Khadpabandh. With its comfortable accommodations and warm hospitality, guests can enjoy a pleasant and relaxing experience during their visit.', 4316, 6, 52),
(53, 'Hotel Padmavi\r\n', 'images/hotels_images/HotelPadmavi.jpeg', 'Khadpabandh', 3, 'Hotel Padmavi provides a comfortable and convenient stay in Khadpabandh. With its cozy accommodations and friendly service, guests can enjoy a pleasant experience during their visit.', 2844, 6, 53),
(54, 'SPOT ON 44584 Hotel Vaishali Residency\r\n', 'images/hotels_images/HotelVaishaResidency.jpeg', 'Carambolim', 3, 'SPOT ON 44584 Hotel Vaishali Residency offers a convenient and budget-friendly stay in Carambolim. With its comfortable accommodations and essential amenities, guests can enjoy a simple yet pleasant experience during their visit.', 3554, 7, 54),
(55, 'Athome Comforts\r\n', 'images/hotels_images/AthomeComforts.jpeg', 'Panaji', 3, 'AtHome Comforts offers a cozy and homely stay in Panaji. With its comfortable accommodations and personalized service, guests can enjoy a relaxing and inviting experience during their visit.', 2430, 7, 55),
(56, 'Vivanta Goa\r\n', 'images/hotels_images/VivantaGoa.jpeg', 'Miramar', 5, '\r\nVivanta Goa offers a luxurious and unforgettable stay in the coastal paradise of Goa. With its upscale accommodations, world-class amenities, and stunning ocean views, guests can indulge in relaxation and adventure during their visit to this exquisite h', 7552, 7, 56),
(57, 'Mateus Boutique Hotel\r\n', 'images/hotels_images/MateusBoutiqueHotel.jpeg', 'Panaji', 3, 'Mateus Boutique Hotel offers a distinctive and charming stay in Panaji. With its stylish accommodations, personalized service, and unique ambiance, guests can enjoy a memorable and delightful experience during their visit.', 4200, 7, 57),
(58, 'Varanda Do Mar\r\n', 'images/hotels_images/VarandaDoMar.jpeg', 'Panaji', 4, 'Varanda Do Mar offers a delightful and scenic stay overlooking the ocean in Panaji . With its charming accommodations, stunning views, and warm hospitality, guests can enjoy a serene and unforgettable experience during their visit', 3644, 7, 58),
(59, 'Hotel Zillion Inn\r\n', 'images/hotels_images/HotelZillionInn.jpeg', 'Panaji', 2, 'Hotel Zillion Inn provides a comfortable and convenient stay in panaji. With its cozy accommodations and friendly service, guests can enjoy a pleasant experience during their visit.', 2145, 7, 59),
(60, 'Hotel Liberty\r\n', 'images/hotels_images/HotelLiberty.jpeg', 'Panaji', 1, 'Hotel Liberty offers a welcoming and comfortable stay in the heart of panaji. With its cozy accommodations and attentive service, guests can enjoy a pleasant experience during their visit.', 1390, 7, 60),
(61, 'Campal Beach Resort\r\n', 'images/hotels_images/CampalBeachResort.jpeg', 'Miramar', 2, 'Modest hotel with simple rooms\r\n', 2500, 7, 61),
(62, 'Hotel Grande Delmon', 'images/hotels_images/HotelGrandeDelmon.jpeg', 'Panaji', 3, 'Hotel Grande Delmon offers a comfortable and convenient stay in the heart of Panaji, Goa. With its well-appointed accommodations, friendly service, and central location, guests can enjoy a pleasant experience during their visit to the vibrant city.', 4043, 7, 62),
(63, 'Ginger Goa\r\n', 'images/hotels_images/GingerGoa.jpeg', 'Panaji', 3, 'Ginger Goa offers a modern and affordable stay in the vibrant state of Goa. With its comfortable accommodations, convenient amenities, and warm hospitality, guests can enjoy a pleasant and hassle-free experience during their visit to this popular tourist ', 6144, 7, 63),
(64, 'Wildernest Nature Resort\r\n', 'images/hotels_images/WildernestNatureResort.jpeg', 'Chorla Ghats', 3, 'Wildernest Nature Resort offers a unique and immersive stay amidst the natural beauty of Goa\'s Western Ghats. Nestled in the lush greenery, this eco-friendly resort provides comfortable accommodations, breathtaking views, and a range of outdoor activities', 7800, 4, 64),
(65, 'Hotel Wilsha\r\n', 'images/hotels_images/HotelWilsha.jpeg', 'Karmali', 2, 'Hotel Wilsha offers a convenient and comfortable stay near Karmali Railway Station in Goa. With its cozy accommodations and warm hospitality, guests can enjoy a pleasant experience during their visit to this vibrant tourist destination', 3645, 7, 65),
(66, 'The Green Boutique\r\n', 'images/hotels_images/TheGreenBoutique.jpeg', 'St Cruz', 3, 'The Green Boutique offers a serene and eco-friendly retreat amidst the natural beauty of St Cruz. With its sustainable practices, comfortable accommodations, and personalized service, guests can enjoy a tranquil escape while minimizing their environmental', 3466, 7, 66),
(67, 'Serene Waters Homestay Goa\r\n', 'images/hotels_images/SereneWatersHomestayGoa.jpeg', 'Ribandar', 2, 'Serene Waters Homestay in Goa offers a tranquil retreat amidst the scenic beauty of the region. With its cozy accommodations, warm hospitality, and picturesque surroundings along the water, guests can enjoy a peaceful and rejuvenating stay away from the h', 2644, 7, 67),
(68, 'Resort Marinha Dourada\r\n', 'images/hotels_images/ResortMarinhaDourada.jpeg', 'Arpora', 3, 'Resort Marinha Dourada offers a delightful retreat amidst the serene landscapes of Goa, India. With its charming accommodations, lush gardens, and tranquil swimming pools, guests can enjoy a relaxing stay surrounded by nature. The resort also provides eas', 3322, 2, 68),
(69, 'Nazri Resort & Lawns', 'images/hotels_images/NazriResort&Lawns.jpeg', 'Baga\r\n', 3, 'Nazri Resort & Lawns offers a delightful stay in the vibrant coastal town of Baga, Goa. With its comfortable accommodations, lush lawns, and proximity to the beach, guests can enjoy a relaxing retreat surrounded by nature. The resort also features a range', 3166, 2, 69),
(70, 'Fortune Miramar', 'images/hotels_images/FortuneMiramar.jpeg', 'Miramar', 5, '\r\nFortune Miramar offers a luxurious and elegant stay in the picturesque city of Miramar, Goa. With its upscale accommodations, stunning views of the Arabian Sea, and impeccable service, guests can enjoy a truly memorable experience during their visit. Th', 10667, 7, 70),
(71, 'Grand Goa Exotica\r\n', 'images/hotels_images/GrandGoaExotica.jpeg', 'Guirim', 4, 'Grand Goa Exotica offers a lavish and indulgent retreat in the heart of Goa\'s vibrant landscape. With its luxurious accommodations, expansive grounds, and world-class amenities, guests can immerse themselves in opulence and relaxation. From exquisite dini', 63400, 2, 71),
(72, 'Hard Rock Hotel Goa\r\n', 'images/hotels_images/HardRockHotelGoa.jpeg', 'Calangute', 5, 'Hard Rock Hotel Goa offers a rockin\' and vibrant stay in the heart of Goa\'s entertainment scene. With its stylish accommodations, electrifying music-themed ambiance, and array of amenities including live music events and poolside parties, guests can exper', 11450, 2, 72),
(73, 'Kyriad Prestige \r\n', 'images/hotels_images/KyriadPrestige.jpeg', 'Calangute', 4, 'Kyriad Prestige offers a sophisticated and upscale stay in the heart of calangute. With its elegant accommodations, modern amenities, and impeccable service, guests can enjoy a luxurious and comfortable experience during their visit.', 6214, 3, 73),
(74, 'Angels Resort\r\n', 'images/hotels_images/AngelsResort.jpg', 'Porvorim', 3, 'Angels Resort offers a tranquil and picturesque stay in the vibrant city of Goa. With its comfortable accommodations, lush surroundings, and range of amenities including swimming pools, restaurants, and recreational facilities, guests can enjoy a relaxing', 3000, 2, 74),
(75, 'Hotel Picnic Plaza \r\n', 'images/hotels_images/HotelPicnicPlaza.jpg', 'Sangolda', 2, 'Hotel Picnic Plaza offers a convenient and comfortable stay in sangolda. With its cozy accommodations and friendly service, guests can enjoy a pleasant experience during their visit.', 2667, 2, 75),
(76, 'De Grand Riviera\r\n', 'images/hotels_images/DeGrandRiviera.jpeg', 'Calangute', 3, 'De Grand Riviera offers a luxurious and elegant stay in the heart of Calangute. With its upscale accommodations, sophisticated ambiance, and impeccable service, guests can enjoy a memorable and indulgent experience during their visit.', 4050, 2, 76),
(77, 'Poonam Resort\r\n', 'images/hotels_images/PoonamResort.jpeg', 'Anjuna', 3, 'Poonam Resort offers a peaceful and comfortable stay in the scenic surroundings of anjuna. With its cozy accommodations, warm hospitality, and range of amenities, guests can enjoy a relaxing retreat amidst nature. Whether unwinding by the pool or explor', 1475, 2, 77),
(78, '3102bce - A Vedic Resort\r\n', 'images/hotels_images/AVedicResort.jpeg', 'Vagator', 5, '3102bce - A Vedic Resort offers a unique and tranquil retreat inspired by ancient Vedic traditions. With its serene ambiance, holistic wellness programs, and luxurious accommodations, guests can experience rejuvenation and harmony of mind, body, and spiri', 5000, 2, 78),
(79, 'Surya Sangolda - The Apartment Hotel\r\n', 'images/hotels_images/SuryaSangolda.jpeg', 'sangolda', 4, 'Surya Sangolda - The Apartment Hotel offers a comfortable and convenient stay in the charming village of Sangolda, Goa. With its spacious and well-appointed apartments, guests can enjoy a homely atmosphere and all the amenities needed for a pleasant stay.', 7000, 2, 79),
(80, 'Somy Plaza ( formerly Somy Resort)\r\n', 'images/hotels_images/SomyPlaza.jpeg', 'Calangute', 4, 'Somy Plaza (formerly Somy Resort) offers a comfortable and inviting stay in the heart of calangute. With its well-appointed accommodations and friendly service, guests can enjoy a pleasant experience during their visit.', 4500, 2, 80),
(81, 'Palacete Rodrigues - Heritage Holiday Mansion\r\n', 'images/hotels_images/HeritageHolidayMansion.jpeg', 'Anjuna', 3, 'Palacete Rodrigues - Heritage Holiday Mansion offers a unique and memorable stay in the historic city of Goa. With its exquisite architecture, rich heritage, and luxurious accommodations, guests can immerse themselves in the grandeur of a bygone era. The ', 20159, 2, 81),
(82, 'Fort Tiracol Heritage Hotel\r\n', 'images/hotels_images/FortTiracolHeritageHotel.jpeg', 'Tiracol', 4, 'Fort Tiracol Heritage Hotel offers a captivating and historic stay in the coastal town of Tiracol, Goa. Perched atop a picturesque cliff overlooking the Arabian Sea, this heritage hotel provides guests with a unique opportunity to experience the charm and', 8400, 1, 82),
(83, 'Span Suites and Villas\r\n', 'images/hotels_images/SpanSuitesandVillas.jpeg', 'Agarwada', 4, '\r\nSpan Suites and Villas offers a luxurious and exclusive stay in the heart of Goa. With its spacious suites and private villas, guests can enjoy unparalleled comfort and privacy amidst lush surroundings. The resort\'s upscale amenities, personalized servi', 8632, 1, 83),
(84, 'Lamore Beach Resort\r\n', 'images/hotels_images/LamoreBeachResort.jpeg', 'Ashvem Beach', 1, 'Lamore Beach Resort offers a serene and picturesque stay along the coastline of Goa. With its charming beachfront accommodations, stunning ocean views, and tranquil ambiance, guests can enjoy a relaxing retreat amidst the natural beauty of the Arabian Sea', 17489, 1, 84),
(85, 'Ashvem Beach Inn\r\n', 'images/hotels_images/AshvemBeachInn.jpeg', 'Ashvem', 2, 'Ashvem Beach Inn offers a cozy and laid-back stay right by the beautiful shores of Ashvem Beach in Goa. With its beachfront accommodations, serene ambiance, and warm hospitality, guests can enjoy a relaxing retreat amidst the natural beauty of the Arabian', 1600, 1, 85),
(86, 'Sur La Mer\r\n', 'images/hotels_images/SurLaMer.jpeg', 'Morjim', 3, 'Sur La Mer offers a tranquil and luxurious beachfront retreat in the scenic coastal town of Goa. With its elegant accommodations, stunning ocean views, and personalized service, guests can enjoy a serene escape amidst the natural beauty of the Arabian Sea', 13924, 1, 86),
(87, 'Cocks Town\r\n', 'images/hotels_images/CocksTown.jpeg', 'Arambol', 3, 'Cocks Town Hotel in Arambol, offers a comfortable and convenient stay near the vibrant Arambol Beach. With its cozy accommodations and proximity to the beach and local attractions, guests can enjoy a pleasant experience during their visit to this popular ', 2399, 2, 87),
(88, 'Mayem Lake View (GTDC)\r\n', 'images/hotels_images/MayemLakeView.jpeg', 'Mayem', 3, 'Mayem Lake View, operated, offers a tranquil retreat overlooking the serene Mayem Lake in Goa. With its scenic surroundings, comfortable accommodations, and range of amenities, guests can enjoy a relaxing stay amidst nature\'s beauty. The resort\'s convenie', 2000, 4, 88),
(89, 'Hotel Dattapasad  \r\n', 'images/hotels_images/HotelDattapasad .jpeg', 'Vatadev\r\n', 2, 'Hotel Dattaprasad offers a comfortable and welcoming stay in Vatadev. With its cozy accommodations and friendly service, guests can enjoy a pleasant experience during their visit', 2465, 3, 89),
(90, 'The Hq', 'images/hotels_images/TheHq.jpeg', 'Vasco Da Gama', 4, 'The HQ offers a modern and stylish stay in vasco da gama. With its contemporary accommodations, upscale amenities, and central location, guests can enjoy a comfortable and convenient experience during their visit.', 2383, 8, 90),
(91, 'Shambho Retreat', 'images/hotels_images/ShambhoRetreat.jpeg', 'Agonda', 3, 'Shambho Retreat offers a serene and tranquil stay in the heart of agonda. With its peaceful ambiance, comfortable accommodations, and personalized service, guests can enjoy a relaxing and rejuvenating experience amidst nature.', 3341, 12, 91),
(92, 'Robusta hotel', 'images/hotels_images/Robustahotel.jpeg', 'Varca', 5, 'Elements by Rosetta offers a sophisticated and luxurious stay in varca. With its elegant design, upscale amenities, and personalized service, guests can enjoy a memorable and indulgent experience during their visit.', 2393, 9, 92),
(93, 'Johnnie Holiday Homes Mainath Bati ', 'images/hotels_images/JohnnieHolidayHomesMainathBati.jpeg', 'Arpora', 4, 'Johnnie Holiday Homes Mainath Bati offers a comfortable and convenient stay in arpora. With its cozy accommodations and friendly service, guests can enjoy a pleasant experience during their visit.', 2599, 2, 93),
(94, 'di Casa Resort ', 'images/hotels_images/diCasaResort.jpeg', 'Calangute', 3, 'Di Casa Resort offers a charming and cozy stay in the heart of calangute. With its comfortable accommodations, tranquil ambiance, and personalized service, guests can enjoy a relaxing and memorable experience during their visit.', 2517, 2, 94),
(95, 'Andaz Arambol - Artist Party Hostel', 'images/hotels_images/AndazArambol.jpeg', 'Arambol', 3, 'Andaz Arambol - Artist Party Hostel offers a vibrant and energetic stay in the lively coastal town of Arambol, Goa. With its artistic ambiance, lively atmosphere, and social events, guests can immerse themselves in a creative and fun-filled experience. Wh', 3466, 2, 95),
(96, 'Baywatch Beach Resort', 'images/hotels_images/BaywatchBeachResort.jpeg', 'Patnem', 3, 'Baywatch Beach Resort offers a picturesque and relaxing stay along the pristine shores of palolem. With its charming beachfront accommodations, stunning ocean views, and range of amenities, guests can enjoy a memorable beach holiday. Whether lounging on t', 3985, 12, 96),
(97, 'The Fern Habitat', 'images/hotels_images/TheFernHabitat.jpeg', 'Candolim', 4, 'The Fern Habitat offers a serene and eco-friendly stay amidst the natural beauty of Candolim. With its sustainable practices, comfortable accommodations, and tranquil ambiance, guests can enjoy a peaceful retreat surrounded by lush greenery. The resort\'s ', 7939, 2, 97),
(98, 'Origin Boutique Hotel', 'images/hotels_images/OriginBoutiqueHotel.jpeg', 'Baga', 3, 'Origin Boutique Hotel offers a stylish and unique stay in the heart of Baga. With its chic design, upscale amenities, and personalized service, guests can enjoy a memorable and comfortable experience during their visit. Whether exploring the city\'s attrac', 3955, 2, 98),
(99, 'Tridiva Morjim', 'images/hotels_images/TridivaMorjim.jpeg', 'Morjim', 2, 'Tridiva Morjim offers a serene and luxurious stay in the picturesque coastal village of Morjim, Goa. With its elegant accommodations, tranquil ambiance, and personalized service, guests can enjoy a relaxing retreat amidst the beauty of nature. Whether lou', 2527, 1, 99),
(100, 'TGI Ameya Grand', 'images/hotels_images/TGIAmeyaGrand.jpeg', 'Panjim', 3, 'TGI Ameya Grand offers a luxurious and welcoming stay in panjim. With its upscale accommodations, modern amenities, and attentive service, guests can enjoy a comfortable and memorable experience during their visit.', 3566, 7, 100),
(101, 'W Goa', 'images/hotels_images/WGoa.jpeg', 'Vagator', 5, 'W Goa offers a luxurious and vibrant stay in the heart of North Goa\'s beach belt. With its stylish accommodations, chic design, and lively atmosphere, guests can immerse themselves in the dynamic energy of Goa. Whether relaxing by the pool, enjoying world', 25075, 2, 101),
(102, 'La Vera Boutique Hotel\r\n', 'images/hotels_images/LaVeraBoutiqueHotel.jpeg', 'Mandrem', 3, 'La Vera Boutique Hotel offers a charming and intimate stay in the heart of Mandrem. With its boutique accommodations, personalized service, and stylish design, guests can enjoy a unique and memorable experience during their visit.', 2210, 1, 102),
(103, 'JW Marriott Goa', 'images/hotels_images/JWMarriott.jpeg', 'Vagator', 1, 'JW Marriott Goa offers a luxurious and sophisticated stay in the heart of South Goa. With its upscale accommodations, world-class amenities, and impeccable service, guests can indulge in comfort and relaxation during their visit. Whether lounging by the p', 22420, 2, 103),
(104, 'Cerca Del Mar', 'images/hotels_images/CercaDelMar.jpeg', 'Calangute', 1, 'Cerca Del Mar offers a charming and tranquil stay near the shores of calangute. With its serene ambiance, comfortable accommodations, and warm hospitality, guests can enjoy a relaxing retreat amidst the beauty of the coastal surroundings. Whether lounging', 1613, 2, 104),
(105, 'Blue Door', 'images/hotels_images/BlueDoor.jpeg', 'Morjim', 1, 'Blue Door offers a cozy and inviting stay in Morjim]. With its charming accommodations, personalized service, and convenient location, guests can enjoy a pleasant and comfortable experience during their visit', 1382, 1, 105),
(106, 'Hostel Mandala', 'images/hotels_images/HostelMandala.jpeg', 'Anjuna', 1, 'Hostel Mandala offers a vibrant and communal stay in Anjuna. With its welcoming atmosphere, budget-friendly accommodations, and social activities, guests can enjoy a unique and lively experience during their visit. Whether connecting with fellow travelers', 1495, 2, 106),
(107, 'Germanium Haven\r\n', 'images/hotels_images/GermaniumHaven.jpeg', 'Arambol', 2, 'Geranium Haven offers a tranquil and rejuvenating retreat in the heart of Arambol. With its lush gardens, comfortable accommodations, and serene ambiance, guests can unwind and reconnect with nature. Whether indulging in spa treatments, enjoying leisurely', 2995, 2, 107),
(108, 'Tropical Palms ', 'images/hotels_images/TropicalPalms.jpeg', 'Palolem', 1, 'Tropical Palms offers a tranquil and charming stay in Palolem. With its lush gardens, comfortable accommodations, and serene ambiance, guests can unwind and rejuvenate amidst nature\'s beauty. Whether lounging by the pool, exploring nearby attractions, or ', 2000, 12, 108),
(109, 'Hotel Salty Waves Baga', 'images/hotels_images/HotelSaltyWaves.jpeg', 'Baga', 1, 'Hotel Salty Waves Baga offers a delightful stay in the lively coastal town of Baga, Goa. With its cozy accommodations, warm hospitality, and proximity to the vibrant Baga Beach, guests can enjoy a memorable beach holiday. Whether lounging on the sand, exp', 1556, 2, 109),
(110, 'City Xpress Goa ', 'images/hotels_images/CityXpressGoa.jpeg', 'Panjim', 1, 'City Xpress Goa offers a convenient and comfortable stay in the heart of Panjim. With its centrally located accommodations, friendly service, and easy access to local attractions, guests can enjoy a pleasant experience during their visit.', 1429, 7, 110),
(111, 'Backwoods Camp', 'images/hotels_images/BackwoodsCamp.jpeg', 'Tombdi Surla', 2, 'Backwoods Camp offers a unique and adventurous stay in the heart of nature. With its rustic accommodations, outdoor activities, and serene surroundings, guests can immerse themselves in the wilderness and experience the beauty of the outdoors. Whether hik', 6173, 11, 111),
(112, 'Tanshikar Spice Farm Cottages', 'images/hotels_images/TanshikarSpiceFarmCottages.jpeg', 'Netravali', 2, 'Tanshikar Spice Farm Cottages offer a charming and immersive stay amidst the lush greenery of a spice farm. With its cozy cottages, organic surroundings, and authentic Goan hospitality, guests can experience the tranquility of rural life. Whether explorin', 4000, 11, 112),
(113, 'Tanishkar Guest House', 'images/hotels_images/TanishkarGuestHouse.jpeg', 'Netravali', 2, 'Tanishkar Guest House offers a comfortable and welcoming stay in Netravali. With its cozy accommodations, friendly service, and convenient location, guests can enjoy a pleasant experience during their visit.', 2477, 11, 113),
(114, 'Dudhsagar Plantation', 'images/hotels_images/DudhsagarPlantation.jpeg', 'Mollem', 3, 'Dudhsagar Plantation offers a unique and immersive stay amidst the lush greenery of a working plantation. With its rustic cottages, organic surroundings, and warm hospitality, guests can experience the tranquility of rural life. Whether exploring the plan', 4277, 11, 114),
(115, 'Casa De Royale- Boutique Resort', 'images/hotels_images/CasaDeRoyale.jpeg', 'Zhor Vaddo', 3, 'Casa De Royale - Boutique Resort offers a luxurious and intimate stay in [insert location]. With its elegant accommodations, personalized service, and chic ambiance, guests can enjoy a stylish and memorable experience during their visit.', 1306, 11, 115),
(116, 'Mangaal Farmstay Goa', 'images/hotels_images/MangaalFarmstayGoa.jpeg', 'Mangaal', 3, 'Mangaal Farmstay Goa offers a serene and immersive stay amidst the lush greenery of a working farm. With its rustic cottages, organic surroundings, and warm hospitality, guests can experience the tranquility of rural life. Whether exploring the farm\'s pla', 5598, 10, 116),
(117, 'Neemrana\'s Three Waters', 'images/hotels_images/Neemrana\'sThreeWaters.jpeg', 'Betul', 3, 'Neemrana\'s Three Waters offers a unique and picturesque stay in the scenic landscapes of Betul. With its historic architecture, serene ambiance, and personalized service, guests can immerse themselves in the charm and elegance of a bygone era. Whether exp', 6384, 10, 117),
(118, 'Sterling Goa Varca', 'images/hotels_image/SterlingGoaVarca.jpeg', 'Varca', 4, 'Sterling Goa Varca offers a luxurious and relaxing stay in the serene surroundings of Varca Beach, Goa. With its comfortable accommodations, modern amenities, and warm hospitality, guests can enjoy a memorable beach holiday. Whether lounging by the pool, ', 6712, 9, 118),
(119, 'Country Inn Tarika', 'images/hotels_images/CountryInnTarika.jpeg', 'Varca', 3, 'Country Inn Tarika offers a comfortable and welcoming stay in Varca. With its cozy accommodations, friendly service, and convenient location, guests can enjoy a pleasant experience during their visit.', 4722, 9, 119),
(120, 'Sea Breeze Max Resort & Spa', 'images/hotels_images/SeaBreezeMaxResort&Spa.jpeg', 'Varca', 3, 'Sea Breeze Max Resort & Spa offers a luxurious and rejuvenating stay in the serene coastal setting of varca. With its upscale accommodations, rejuvenating spa treatments, and breathtaking ocean views, guests can indulge in relaxation and tranquility durin', 4782, 9, 120),
(122, 'Treehouse Silken Sands Hotel', 'images/hotels_images/TreehouseSilkenSandsHotel.jpeg', 'Benaulim', 3, 'Treehouse Silken Sands Hotel offers a serene and luxurious stay amidst the tranquil surroundings of Benaulim. With its elegant accommodations, lush gardens, and personalized service, guests can enjoy a peaceful retreat amidst nature\'s beauty. Whether rela', 2950, 9, 122),
(123, 'Azaya Pool Suites', 'images/hotels_images/AzayaPoolSuites.jpeg', 'Benaulim', 4, 'Azaya Pool Suites offers an opulent and exclusive stay in the vibrant coastal city of Goa. With its luxurious pool suites, personalized service, and stunning ocean views, guests can indulge in ultimate comfort and relaxation during their visit. Whether ', 14250, 9, 123),
(124, 'Fortune Resort', 'images/hotels_images/FortuneResort.jpeg', 'Benaulim', 3, 'Fortune Resort offers a comfortable and convenient stay in the heart of benaulim. With its well-appointed accommodations, modern amenities, and warm hospitality, guests can enjoy a pleasant experience during their visit. Whether exploring the city\'s attra', 15000, 9, 124),
(125, 'Fabhotel Grand Royal Palms', 'images/hotels_images/FabhotelGrandRoyalPalms.jpeg', 'Benaulim', 3, 'FabHotel Grand Royal Palms offers a convenient and comfortable stay in the heart of Benaulim. With its well-appointed accommodations, modern amenities, and friendly service, guests can enjoy a pleasant experience during their visit. Whether exploring the ', 3260, 9, 125),
(126, 'Rendezvous Place-', 'images/hotels_images/RendezvousPlace.jpeg', 'Varca', 3, 'Rendezvous Place offers a comfortable and upscale stay with modern amenities and stylish furnishings. Located in a serene area, guests can enjoy a peaceful ambiance while still being close to attractions and amenities in Varca. Whether you\'re looking for ', 4455, 9, 126);

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `itinerary_id` int(11) NOT NULL,
  `days` varchar(50) NOT NULL,
  `itinerary` text NOT NULL,
  `itinerary_loc` varchar(255) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `taluka` varchar(20) NOT NULL,
  `token_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`itinerary_id`, `days`, `itinerary`, `itinerary_loc`, `description`, `taluka`, `token_id`, `image`) VALUES
(1, '', '\'day 1\' \n[(13, \'Kamaki\', \'Calangute, Goa\', \'A vibrant nightclub known for its Greek-themed decor, music, and energetic dance floor.\', Decimal(\'15.54350000\'), Decimal(\'73.75520000\'), 11, 11, \'Bardez\', \'Goa\', 403507)] \n\n\'day 2\'\n[(8, \'Reis Magos Fort\', \'Reis Magos, Goa\', \'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.\', Decimal(\'15.48820000\'), Decimal(\'73.77290000\'), 2, 2, \'Margao\', \'Goa\', 403601)], [(2, \'Swimming\', \'Sample Beach Address 2\', \'Enjoy a refreshing swim in the clear waters.\', Decimal(\'15.28040000\'), Decimal(\'73.95850000\'), 2, 2, \'Margao\', \'Goa\', 403601)], [(15, \'Silent Noise Club\', \'Palolem Beach, Goa\', \'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.\', Decimal(\'15.01030000\'), Decimal(\'74.02320000\'), 7, 7, \'Canacona\', \'Goa\', 403702)], \n\n\'day 3\'\n[(6, \'Boat Tours\', \'Sample Beach Address 6\', \'Embark on scenic boat tours along the coast.\', Decimal(\'15.58970000\'), Decimal(\'73.82200000\'), 6, 6, \'Bicholim\', \'Goa\', 403504)], [(6, \'Shri Mangeshi Temple\', \'Mangeshi Village, Goa\', \'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.\', Decimal(\'15.39170000\'), Decimal(\'73.97990000\'), 6, 6, \'Bicholim\', \'Goa\', 403504)], [(9, \'Chronicle\', \'Vagator, Goa\', \'A beach club and lounge known for its stunning sunset views, electronic music, and beachside dining.\', Decimal(\'15.60400000\'), Decimal(\'73.74140000\'), 11, 11, \'Bardez\', \'Goa\', 403507)]', '', '', '', 1, NULL),
(2, '', '\'day 1\'\r\n[(7, \'Curlies Beach Shack\', \'Anjuna Beach, Goa\', \'A famous beach shack and nightclub on Anjuna Beach, known for its chilled-out vibe, live music, and beach parties.\', Decimal(\'15.58740000\'), Decimal(\'73.74220000\'), 11, 11, \'Bardez\', \'Goa\', 403507)]\r\n\r\n\'day 2\'\r\n[(9, \'Terekhol Fort\', \'Terekhol, Goa\', \'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.\', Decimal(\'15.72730000\'), Decimal(\'73.67820000\'), 10, 10, \'Salcete\', \'Goa\', 403707)], [(10, \'Dolphin Spotting\', \'Sample Beach Address 10\', \'Take a boat ride to spot playful dolphins.\', Decimal(\'15.00540000\'), Decimal(\'74.03780000\'), 10, 10, \'Salcete\', \'Goa\', 403707)], [(9, \'Chronicle\', \'Vagator, Goa\', \'A beach club and lounge known for its stunning sunset views, electronic music, and beachside dining.\', Decimal(\'15.60400000\'), Decimal(\'73.74140000\'), 11, 11, \'Bardez\', \'Goa\', 403507)]\r\n\r\n\'day 3\'\r\n[(14, \'Sahakari Spice Farm\', \'Ponda, Goa\', \'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.\', Decimal(\'15.44190000\'), Decimal(\'74.01800000\'), 4, 4, \'Ponda\', \'Goa\', 403401)], [(4, \'Water Sports\', \'Sample Beach Address 4\', \'Experience thrilling water sports activities.\', Decimal(\'15.39970000\'), Decimal(\'74.01240000\'), 4, 4, \'Ponda\', \'Goa\', 403401)], [(15, \'Silent Noise Club\', \'Palolem Beach, Goa\', \'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.\', Decimal(\'15.01030000\'), Decimal(\'74.02320000\'), 7, 7, \'Canacona\', \'Goa\', 403702)]]', '', '', '', 2, NULL),
(3, '', '\'day 1\' \r\n[(10, \'Dolphin Spotting\', \'Sample Beach Address 10\', \'Take a boat ride to spot playful dolphins.\', Decimal(\'15.00540000\'), Decimal(\'74.03780000\'), 10, 10, \'Salcete\', \'Goa\', 403707)]\r\n\r\n\'day 2\'\r\n[(1, \'Sunbathing\', \'Sample Beach Address 1\', \'Relax and soak up the sun on the sandy beaches.\', Decimal(\'15.49090000\'), Decimal(\'73.82780000\'), 1, 1, \'Panaji\', \'Goa\', 403001)], [(8, \'Reis Magos Fort\', \'Reis Magos, Goa\', \'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.\', Decimal(\'15.48820000\'), Decimal(\'73.77290000\'), 2, 2, \'Margao\', \'Goa\', 403601)], [(2, \'Caculo Mall\', \'St Inez Rd, Panaji, Goa\', \'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.\', Decimal(\'15.49100000\'), Decimal(\'73.82730000\'), 1, 1, \'Panaji\', \'Goa\', 403001)]\r\n\r\n\'day 3\'\r\n[(6, \'Mapusa Market\', \'Mapusa, Goa\', \'A traditional market known for its fresh produce, spices, seafood, clothing, and household items.\', Decimal(\'15.59470000\'), Decimal(\'73.80910000\'), 3, 3, \'Mapusa\', \'Goa\', 403507)], [(4, \'Chapora Fort\', \'Chapora, Goa\', \'A scenic fort overlooking the Chapora River and the Arabian Sea, featured in the Bollywood movie \"Dil Chahta Hai.\"\', Decimal(\'15.60420000\'), Decimal(\'73.73760000\'), 4, 4, \'Ponda\', \'Goa\', 403401)], [(2, \'Swimming\', \'Sample Beach Address 2\', \'Enjoy a refreshing swim in the clear waters.\', Decimal(\'15.28040000\'), Decimal(\'73.95850000\'), 2, 2, \'Margao\', \'Goa\', 403601)]]', '', '', '', 3, NULL),
(4, '', '\'day 1\'\r\n[(2, \"Tito\'s Club\", \"Tito\'s Lane, Saunta Vaddo, Baga, Goa\", \'A legendary nightclub in Baga known for its energetic vibe, international DJs, and late-night parties.\', Decimal(\'15.55240000\'), Decimal(\'73.75400000\'), 11, 11, \'Bardez\', \'Goa\', 403507)], \r\n\r\n\'day 2\'\r\n[(8, \'Sunset Watching\', \'Sample Beach Address 8\', \'Witness breathtaking sunsets over the horizon.\', Decimal(\'15.39200000\'), Decimal(\'73.81410000\'), 8, 8, \'Quepem\', \'Goa\', 403705)], [(7, \'Ancestral Goa\', \'Loutolim, Goa\', \'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.\', Decimal(\'15.31440000\'), Decimal(\'73.95270000\'), 8, 8, \'Quepem\', \'Goa\', 403705)], [(15, \"Flea Market, Mackie\'s Night Bazaar\", \'Baga River Rd, Arpora, Goa\', \'A weekly flea market featuring stalls selling a diverse range of products including clothing, accessories, handicrafts, and more.\', Decimal(\'15.57830000\'), Decimal(\'73.74420000\'), 10, 10, \'Salcete\', \'Goa\', 403707)]\r\n\r\n\'day 3\'\r\n[(8, \'Saraya Art Gallery\', \'Palolem, Canacona, Goa\', \'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.\', Decimal(\'15.00940000\'), Decimal(\'73.92330000\'), 7, 7, \'Canacona\', \'Goa\', 403702)], [(6, \'Boat Tours\', \'Sample Beach Address 6\', \'Embark on scenic boat tours along the coast.\', Decimal(\'15.58970000\'), Decimal(\'73.82200000\'), 6, 6, \'Bicholim\', \'Goa\', 403504)], [(6, \'Shri Mangeshi Temple\', \'Mangeshi Village, Goa\', \'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.\', Decimal(\'15.39170000\'), Decimal(\'73.97990000\'), 6, 6, \'Bicholim\', \'Goa\', 403504)]]', '', '', '', 4, NULL),
(5, '', '\'day 1\'\r\n[(10, \'Dolphin Spotting\', \'Sample Beach Address 10\', \'Take a boat ride to spot playful dolphins.\', Decimal(\'15.00540000\'), Decimal(\'74.03780000\'), 10, 10, \'Salcete\', \'Goa\', 403707)]\r\n\r\n\'day 2\'\r\n[(6, \'Shri Mangeshi Temple\', \'Mangeshi Village, Goa\', \'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.\', Decimal(\'15.39170000\'), Decimal(\'73.97990000\'), 6, 6, \'Bicholim\', \'Goa\', 403504)], [(8, \'Saraya Art Gallery\', \'Palolem, Canacona, Goa\', \'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.\', Decimal(\'15.00940000\'), Decimal(\'73.92330000\'), 7, 7, \'Canacona\', \'Goa\', 403702)], [(6, \'Boat Tours\', \'Sample Beach Address 6\', \'Embark on scenic boat tours along the coast.\', Decimal(\'15.58970000\'), Decimal(\'73.82200000\'), 6, 6, \'Bicholim\', \'Goa\', 403504)]\r\n\r\n\'day 3\'\r\n[(8, \'Reis Magos Fort\', \'Reis Magos, Goa\', \'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.\', Decimal(\'15.48820000\'), Decimal(\'73.77290000\'), 2, 2, \'Margao\', \'Goa\', 403601)], [(2, \'Swimming\', \'Sample Beach Address 2\', \'Enjoy a refreshing swim in the clear waters.\', Decimal(\'15.28040000\'), Decimal(\'73.95850000\'), 2, 2, \'Margao\', \'Goa\', 403601)], [(10, \'Leopard Valley\', \'Agonda, Goa\', \'A unique open-air nightclub nestled in the jungle, featuring electronic music events and a natural setting.\', Decimal(\'15.02540000\'), Decimal(\'74.02350000\'), 7, 7, \'Canacona\', \'Goa\', 403702)]]', '', '', '', 5, NULL),
(6, '', '', '', '', '', 6, NULL),
(11, 'Day 1', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 10, NULL),
(12, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 10, NULL),
(13, 'Day 2', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 10, NULL),
(14, 'Day 2', 'Bang Bang Club Goa\r\n', 'Candolim ', '', 'Bicholim', 10, NULL),
(15, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 10, NULL),
(16, 'Day 3', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 10, NULL),
(17, 'Day 3', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 10, NULL),
(18, 'Day 2', 'Ingo\'s Saturday Night Market', 'Arpora', 'A vibrant night market offering a mix of handicrafts, clothing, jewelry, accessories, and live music entertainment.', 'Bardez', 11, NULL),
(19, 'Day 2', 'Surfing Lessons', 'Anjuna Beach', 'Learn the basics of surfing from experienced instructors amd catch your first wave. (Surf schools require research upon arrival)', 'Bardez', 11, NULL),
(20, 'Day 2', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 11, NULL),
(21, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 11, NULL),
(22, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 11, NULL),
(23, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 11, NULL),
(24, 'Day 1', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 12, NULL),
(25, 'Day 2', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 12, NULL),
(26, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 12, NULL),
(27, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 12, NULL),
(28, 'Day 3', 'Dolphin Watching Tours', 'Palolem Beach', 'Embark on boat trip in search playful dolphins in their natural habitat (Tours offered by vendors on beach)', 'Salcette', 12, NULL),
(29, 'Day 3', 'Se Cathedral', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 'Tiswadi', 12, NULL),
(30, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 12, NULL),
(31, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 13, NULL),
(32, 'Day 2', 'Kayaking', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 'Canacona', 13, NULL),
(33, 'Day 2', 'Alpha Club\r\n', 'Canacona', '', 'Canacona', 13, NULL),
(34, 'Day 3', 'Surfing Lessons', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 'Canacona', 13, NULL),
(35, 'Day 3', 'Fashion Factory\r\n', 'Margao', 'Fashion Factory is Reliance Retail’s multi-brand fashion discount retail chain that has an eclectic assortment of top international and national brands in fashion wear, sportswear, luggage and accesso', 'Salcette', 13, NULL),
(36, 'Day 3', 'Leopard Valley', 'Agonda', 'A unique open-air nightclub nestled in the jungle, featuring electronic music events and a natural setting.', 'Canacona', 13, NULL),
(37, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 14, NULL),
(38, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 14, NULL),
(39, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 14, NULL),
(40, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 14, NULL),
(41, 'Day 3', 'Dolphin Watching Tours', 'Palolem Beach', 'Embark on boat trip in search playful dolphins in their natural habitat (Tours offered by vendors on beach)', 'Salcette', 14, NULL),
(42, 'Day 3', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 14, NULL),
(43, 'Day 2', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 15, NULL),
(44, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 15, NULL),
(45, 'Day 2', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 15, NULL),
(46, 'Day 3', 'Snorkel Trips', 'Bogmalo Beach', 'Discover underwater world without needing scuba gear with snorkeling trips.(Shops/centers require research upon arrival)', 'Salcette', 15, NULL),
(47, 'Day 3', 'Umiya Mercado\r\n', 'Benaulim', 'It contains multinational brands shops offering a wide range of retail stores, food outlets, and entertainment options.', 'Salcette', 15, NULL),
(48, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 15, NULL),
(49, 'Day 2', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 16, NULL),
(50, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 16, NULL),
(51, 'Day 2', 'Umiya Mercado\r\n', 'Benaulim', 'It contains multinational brands shops offering a wide range of retail stores, food outlets, and entertainment options.', 'Salcette', 16, NULL),
(52, 'Day 3', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 16, NULL),
(53, 'Day 3', 'Se Cathedral', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 'Tiswadi', 16, NULL),
(54, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 16, NULL),
(55, 'Day 1', 'Silent Noise Club', 'Palolem Beach', 'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.', 'Canacona', 17, NULL),
(56, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 17, NULL),
(57, 'Day 2', 'Kayaking', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 'Canacona', 17, NULL),
(58, 'Day 2', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 17, NULL),
(59, 'Day 3', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 17, NULL),
(60, 'Day 3', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 17, NULL),
(61, 'Day 3', 'Reliance Atria\r\n', 'Margao', 'It contains multiple shops offering a wide range of retail stores and food outlets.', 'Salcette', 17, NULL),
(62, 'Day 1', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 18, NULL),
(63, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 18, NULL),
(64, 'Day 2', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 18, NULL),
(65, 'Day 2', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 18, NULL),
(66, 'Day 3', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 18, NULL),
(67, 'Day 3', 'Valanka Shopping Mall\r\n', 'Calangute', NULL, 'Bardez', 18, NULL),
(68, 'Day 3', 'Kamaki', 'Calangute', 'A vibrant nightclub known for its Greek-themed decor, music, and energetic dance floor.', 'Bardez', 18, NULL),
(69, 'Day 2', 'Valanka Shopping Mall\r\n', 'Calangute', NULL, 'Bardez', 19, NULL),
(70, 'Day 2', 'Reis Magos Fort', 'Reis Magos', 'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.', 'Bardez', 19, NULL),
(71, 'Day 2', 'Chronicle', 'Vagator', 'A beach club and lounge known for its stunning sunset views, electronic music, and beachside dining.', 'Bardez', 19, NULL),
(72, 'Day 3', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 19, NULL),
(73, 'Day 3', 'Mall De Goa', 'Porvorim', 'A modern shopping mall offering a wide range of retail stores, food outlets, and entertainment options.', 'Bardez', 19, NULL),
(74, 'Day 3', 'LPK Waterfront', 'Nerul', 'A scenic riverside club offering stunning views, live music, and themed parties in a vibrant ambiance.', 'Bardez', 19, NULL),
(75, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 20, NULL),
(76, 'Day 2', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 20, NULL),
(77, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 20, NULL),
(78, 'Day 3', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 20, NULL),
(79, 'Day 3', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 20, NULL),
(80, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 20, NULL),
(81, 'Day 2', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 21, NULL),
(82, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 21, NULL),
(83, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 21, NULL),
(84, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 21, NULL),
(85, 'Day 3', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 21, NULL),
(86, 'Day 3', 'Bang Bang Club Goa\r\n', 'Candolim ', '', 'Bicholim', 21, NULL),
(87, 'Day 2', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 22, NULL),
(88, 'Day 2', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 22, NULL),
(89, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 22, NULL),
(90, 'Day 3', 'Snorkel Trips', 'Bogmalo Beach', 'Discover underwater world without needing scuba gear with snorkeling trips.(Shops/centers require research upon arrival)', 'Salcette', 22, NULL),
(91, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 22, NULL),
(92, 'Day 3', 'Beach Barrels Bar \r\n', 'Colva', '', 'Salcette', 22, NULL),
(93, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 23, NULL),
(94, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 23, NULL),
(95, 'Day 2', 'Refresh Night Club in Goa\r\n', 'Calangute', '', 'Bicholim', 23, NULL),
(96, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 23, NULL),
(97, 'Day 3', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 23, NULL),
(98, 'Day 3', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 23, NULL),
(99, 'Day 1', 'Club Cubana', 'Arpora', 'One of Goa\'s most popular nightclubs, known for its lively atmosphere, music, and pool parties.', 'Bardez', 24, NULL),
(100, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 24, NULL),
(101, 'Day 2', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 24, NULL),
(102, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 24, NULL),
(103, 'Day 3', 'Snorkel Trips', 'Bogmalo Beach', 'Discover underwater world without needing scuba gear with snorkeling trips.(Shops/centers require research upon arrival)', 'Salcette', 24, NULL),
(104, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 24, NULL),
(105, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 24, NULL),
(106, 'Day 2', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 25, NULL),
(107, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 25, NULL),
(108, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 25, NULL),
(109, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 25, NULL),
(110, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 25, NULL),
(111, 'Day 3', 'D\'Aggies - Lounge & Disc for Couples & Families\r\n', 'Colva', 'Trendy destination featuring indoor & outdoor bars, plus hookah, live music & regular DJ nights.', 'Salcette', 25, NULL),
(112, 'Day 1', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 26, NULL),
(113, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 26, NULL),
(114, 'Day 2', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 26, NULL),
(115, 'Day 2', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 26, NULL),
(116, 'Day 3', 'Reliance Atria\r\n', 'Margao', 'It contains multiple shops offering a wide range of retail stores and food outlets.', 'Salcette', 26, NULL),
(117, 'Day 3', 'Snorkel Trips', 'Bogmalo Beach', 'Discover underwater world without needing scuba gear with snorkeling trips.(Shops/centers require research upon arrival)', 'Salcette', 26, NULL),
(118, 'Day 3', 'D\'Aggies - Lounge & Disc for Couples & Families\r\n', 'Colva', 'Trendy destination featuring indoor & outdoor bars, plus hookah, live music & regular DJ nights.', 'Salcette', 26, NULL),
(119, 'Day 1', 'Reis Magos Fort', 'Reis Magos', 'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.', 'Bardez', 27, NULL),
(120, 'Day 1', 'Jet Skiing', 'Baga Beach', 'Ride a jet ski on the waves and enjoy the thrill of speeding across the water', 'Bardez', 27, NULL),
(121, 'Day 1', 'Ingo\'s Saturday Night Market', 'Arpora', 'A vibrant night market offering a mix of handicrafts, clothing, jewelry, accessories, and live music entertainment.', 'Bardez', 27, NULL),
(122, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 27, NULL),
(123, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 27, NULL),
(124, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 27, NULL),
(125, 'Day 3', 'Scuba Diving', 'Candolim Beach', 'Explore the underwater world and witness the vibrant marine life by scuba diving. (Specific shops/centers require research upon arrival)', 'Bardez', 27, NULL),
(126, 'Day 3', 'Valanka Shopping Mall\r\n', 'Calangute', NULL, 'Bardez', 27, NULL),
(127, 'Day 3', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 27, NULL),
(128, 'Day 2', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 28, NULL),
(129, 'Day 2', 'Surfing Lessons', 'Anjuna Beach', 'Learn the basics of surfing from experienced instructors amd catch your first wave. (Surf schools require research upon arrival)', 'Bardez', 28, NULL),
(130, 'Day 2', 'Carpe Diem Art Gallery', 'Candolim', 'An art gallery and cultural space hosting exhibitions, workshops, and events showcasing contemporary art and design.', 'Bardez', 28, NULL),
(131, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 28, NULL),
(132, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 28, NULL),
(133, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 28, NULL),
(134, 'Day 1', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 29, NULL),
(135, 'Day 2', 'Banana Boat Rides', 'Baga Beach', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Bardez', 29, NULL),
(136, 'Day 2', 'Flea Market, Mackie\'s Night Bazaar', 'Arpora', 'A weekly flea market featuring stalls selling a diverse range of products including clothing, accessories, handicrafts, and more.', 'Bardez', 29, NULL),
(137, 'Day 2', 'Fort Aguada', 'Sinquerim', 'A well-preserved seventeenth-century Portuguese fort with a lighthouse offering panoramic views of the Arabian Sea.', 'Bardez', 29, NULL),
(138, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 29, NULL),
(139, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 29, NULL),
(140, 'Day 3', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 29, NULL),
(141, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 30, NULL),
(142, 'Day 2', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 30, NULL),
(143, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 30, NULL),
(144, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 30, NULL),
(145, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 30, NULL),
(146, 'Day 3', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 30, NULL),
(147, 'Day 2', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 31, NULL),
(148, 'Day 2', 'Big G', 'Pajifond, Margao', 'Discover a wide range of footwear for every occasion at Big G Shopping Centre in Margao, featuring everything from casual shoes and sneakers to sports footwear, sandals, and specialty shoes for men, w', 'Salcette', 31, NULL),
(149, 'Day 2', 'Club Margarita\r\n', 'Colva', 'Compact nightspot with a high-energy atmosphere offering alcohol & light bites, plus DJs & hookah.', 'Salcette', 31, NULL),
(150, 'Day 3', 'Se Cathedral', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 'Tiswadi', 31, NULL),
(151, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 31, NULL),
(152, 'Day 3', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 31, NULL),
(153, 'Day 1', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 32, NULL),
(154, 'Day 2', 'Dolphin Watching Tours', 'Palolem Beach', 'Embark on boat trip in search playful dolphins in their natural habitat (Tours offered by vendors on beach)', 'Salcette', 32, NULL),
(155, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 32, NULL),
(156, 'Day 2', 'Big G', 'Pajifond, Margao', 'Discover a wide range of footwear for every occasion at Big G Shopping Centre in Margao, featuring everything from casual shoes and sneakers to sports footwear, sandals, and specialty shoes for men, w', 'Salcette', 32, NULL),
(157, 'Day 3', 'Surfing Lessons', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 'Canacona', 32, NULL),
(158, 'Day 3', 'Fashion Factory\r\n', 'Margao', 'Fashion Factory is Reliance Retail’s multi-brand fashion discount retail chain that has an eclectic assortment of top international and national brands in fashion wear, sportswear, luggage and accesso', 'Salcette', 32, NULL),
(159, 'Day 3', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 32, NULL),
(160, 'Day 1', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 33, NULL),
(161, 'Day 2', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 33, NULL),
(162, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 33, NULL),
(163, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 33, NULL),
(164, 'Day 3', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 33, NULL),
(165, 'Day 3', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 33, NULL),
(166, 'Day 3', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 33, NULL),
(167, 'Day 1', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 34, NULL),
(168, 'Day 2', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 34, NULL),
(169, 'Day 2', 'Dudhsagar Falls', 'Dudhsagar', 'One of India\'s tallest waterfalls, surrounded by lush greenery and accessible via trekking or train ride.', 'Sanguem', 34, NULL),
(170, 'Day 2', 'Leopard Valley', 'Agonda', 'A unique open-air nightclub nestled in the jungle, featuring electronic music events and a natural setting.', 'Canacona', 34, NULL),
(171, 'Day 3', 'Dolphin Watching Tours', 'Calangute', 'Embark on boat trip in search playful dolphins in their natural habitat.(Tours offered by vendors on he beach)', 'Salcette', 34, NULL),
(172, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 34, NULL),
(173, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 34, NULL),
(174, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 35, NULL),
(175, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 35, NULL),
(176, 'Day 2', 'Refresh Night Club in Goa\r\n', 'Calangute', '', 'Bicholim', 35, NULL),
(177, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 35, NULL),
(178, 'Day 3', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 35, NULL),
(179, 'Day 3', 'Alpha Club\r\n', 'Canacona', '', 'Canacona', 35, NULL),
(180, 'Day 2', 'Anjuna Flea Market', 'Anjuna', 'A famous flea market featuring a colorful array of stalls selling clothing, jewelry, handicrafts, and souvenirs.', 'Bardez', 36, NULL),
(181, 'Day 2', 'Fort Aguada', 'Sinquerim', 'A well-preserved seventeenth-century Portuguese fort with a lighthouse offering panoramic views of the Arabian Sea.', 'Bardez', 36, NULL),
(182, 'Day 2', 'Kamaki', 'Calangute', 'A vibrant nightclub known for its Greek-themed decor, music, and energetic dance floor.', 'Bardez', 36, NULL),
(183, 'Day 3', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 36, NULL),
(184, 'Day 3', 'Fashion Factory\r\n', 'Margao', 'Fashion Factory is Reliance Retail’s multi-brand fashion discount retail chain that has an eclectic assortment of top international and national brands in fashion wear, sportswear, luggage and accesso', 'Salcette', 36, NULL),
(185, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 36, NULL),
(186, 'Day 2', 'Fashion Factory\r\n', 'Margao', 'Fashion Factory is Reliance Retail’s multi-brand fashion discount retail chain that has an eclectic assortment of top international and national brands in fashion wear, sportswear, luggage and accesso', 'Salcette', 37, NULL),
(187, 'Day 2', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 37, NULL),
(188, 'Day 2', 'Club Margarita\r\n', 'Colva', 'Compact nightspot with a high-energy atmosphere offering alcohol & light bites, plus DJs & hookah.', 'Salcette', 37, NULL),
(189, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 37, NULL),
(190, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 37, NULL),
(191, 'Day 3', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 37, NULL),
(192, 'Day 2', 'Mollem National Park', 'Mollem', 'A biodiverse national park known for its wildlife, waterfalls, and trekking trails, including the famous Dudhsagar Falls.', 'Sanguem', 38, NULL),
(193, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 38, NULL),
(194, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 38, NULL),
(195, 'Day 3', 'Dudhsagar Falls', 'Dudhsagar', 'One of India\'s tallest waterfalls, surrounded by lush greenery and accessible via trekking or train ride.', 'Sanguem', 38, NULL),
(196, 'Day 3', 'Kayaking', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 'Canacona', 38, NULL),
(197, 'Day 3', 'Alpha Club\r\n', 'Canacona', '', 'Canacona', 38, NULL),
(198, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 39, NULL),
(199, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 39, NULL),
(200, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 39, NULL),
(201, 'Day 3', 'Flea Market, Mackie\'s Night Bazaar', 'Arpora', 'A weekly flea market featuring stalls selling a diverse range of products including clothing, accessories, handicrafts, and more.', 'Bardez', 39, NULL),
(202, 'Day 3', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 39, NULL),
(203, 'Day 3', 'Fly Boarding', 'Vagator Beach', 'Flyboarding adrenaline-pumping water sport lets soar through air dive underwater thanks powerful water jetpack', 'Bardez', 39, NULL),
(204, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 41, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(205, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 41, 'images/shopping_images/TheAtriumMall.jpg'),
(206, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 41, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(207, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 41, 'images/shopping_images/SarayaArtGallery.jpg'),
(208, 'Day 3', 'Mollem National Park', 'Mollem', 'A biodiverse national park known for its wildlife, waterfalls, and trekking trails, including the famous Dudhsagar Falls.', 'Sanguem', 41, 'images/sightseeing_images/MollemNationalPark.jpeg'),
(209, 'Day 3', 'Surfing Lessons', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 'Canacona', 41, 'images/beach_activities_images/SurfingLessons_1.jpeg'),
(210, 'Day 2', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 42, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(211, 'Day 2', 'Surfing Lessons', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 'Canacona', 42, 'images/beach_activities_images/SurfingLessons_1.jpeg'),
(212, 'Day 2', 'Leopard Valley', 'Agonda', 'A unique open-air nightclub nestled in the jungle, featuring electronic music events and a natural setting.', 'Canacona', 42, 'images/nightlife_images/leopardvalley.jpg'),
(213, 'Day 3', 'Kayaking', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 'Canacona', 42, 'images/beach_activities_images/Kayaking_1.jpeg'),
(214, 'Day 3', 'Mollem National Park', 'Mollem', 'A biodiverse national park known for its wildlife, waterfalls, and trekking trails, including the famous Dudhsagar Falls.', 'Sanguem', 42, 'images/sightseeing_images/MollemNationalPark.jpeg'),
(215, 'Day 3', 'D\'Aggies - Lounge & Disc for Couples & Families\r\n', 'Colva', 'Trendy destination featuring indoor & outdoor bars, plus hookah, live music & regular DJ nights.', 'Salcette', 42, 'images/nightlife_images/D\'AggiesLoungeDiscforCouplesFamilies.jpg'),
(216, 'Day 2', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 43, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(217, 'Day 2', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 43, 'images/beach_activities_images/Stand-UpPaddleboarding.jpeg'),
(218, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 43, 'images/shopping_images/SarayaArtGallery.jpg'),
(219, 'Day 3', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 43, 'images/sightseeing_images/SahakariSpiceFarm.jpeg'),
(220, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 43, 'images/shopping_images/TheAtriumMall.jpg'),
(221, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 43, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(222, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 44, 'images/sightseeing_images/AncestralGoa.jpeg'),
(223, 'Day 2', 'Dolphin Watching Tours', 'Palolem Beach', 'Embark on boat trip in search playful dolphins in their natural habitat (Tours offered by vendors on beach)', 'Salcette', 44, 'images/beach_activities_images/DolphinWatchingTours_2.jpeg'),
(224, 'Day 2', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 44, 'images/shopping_images/Newton\'sSupermarket.jpg'),
(225, 'Day 3', 'Fashion Factory\r\n', 'Margao', 'Fashion Factory is Reliance Retail’s multi-brand fashion discount retail chain that has an eclectic assortment of top international and national brands in fashion wear, sportswear, luggage and accesso', 'Salcette', 44, 'images/shopping_images/FashionFactory.png'),
(226, 'Day 3', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 44, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(227, 'Day 3', 'Mollem National Park', 'Mollem', 'A biodiverse national park known for its wildlife, waterfalls, and trekking trails, including the famous Dudhsagar Falls.', 'Sanguem', 44, 'images/sightseeing_images/MollemNationalPark.jpeg'),
(228, 'Day 2', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 45, 'images/beach_activities_images/Stand-UpPaddleboarding.jpeg'),
(229, 'Day 2', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 45, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(230, 'Day 2', 'Silent Noise Club', 'Palolem Beach', 'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.', 'Canacona', 45, 'images/nightlife_images/SilentNoiseClub.jpg'),
(231, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 45, 'images/sightseeing_images/AncestralGoa.jpeg'),
(232, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 45, 'images/shopping_images/Newton\'sSupermarket.jpg'),
(233, 'Day 3', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 45, 'images/beach_activities_images/RingoRide.jpeg'),
(234, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 46, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(235, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 46, 'images/shopping_images/TheAtriumMall.jpg'),
(236, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 46, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(237, 'Day 3', 'Banana Boat Rides', 'Baga Beach', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Bardez', 46, 'images/beach_activities_images/BananaBoatRides_1.jpeg'),
(238, 'Day 3', 'Ingo\'s Saturday Night Market', 'Arpora', 'A vibrant night market offering a mix of handicrafts, clothing, jewelry, accessories, and live music entertainment.', 'Bardez', 46, 'images/shopping_images/Ingo\'sSaturdayNightMarket.jpg'),
(239, 'Day 3', 'HillTop Goa', 'Vagator', 'A legendary outdoor party venue atop a hill, hosting trance and electronic music events with a psychedelic atmosphere.', 'Bardez', 46, 'images/nightlife_images/HillTopGoa.jpg'),
(240, 'Day 1', 'Leopard Valley', 'Agonda', 'A unique open-air nightclub nestled in the jungle, featuring electronic music events and a natural setting.', 'Canacona', 47, 'images/nightlife_images/leopardvalley.jpg'),
(241, 'Day 2', 'Se Cathedral', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 'Tiswadi', 47, 'images/sightseeing_images/SeCathedral.jpeg'),
(242, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 47, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(243, 'Day 2', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 47, 'images/shopping_images/CaculoMall.jpg');
INSERT INTO `itinerary` (`itinerary_id`, `days`, `itinerary`, `itinerary_loc`, `description`, `taluka`, `token_id`, `image`) VALUES
(244, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 47, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(245, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 47, 'images/shopping_images/TheAtriumMall.jpg'),
(246, 'Day 3', 'Dolphin Watching Tours', 'Calangute', 'Embark on boat trip in search playful dolphins in their natural habitat.(Tours offered by vendors on he beach)', 'Salcette', 47, 'images/beach_activities_images/DolphinWatchingTours_1.jpeg'),
(247, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 48, 'images/shopping_images/TheAtriumMall.jpg'),
(248, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 48, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(249, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 48, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(250, 'Day 3', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 48, 'images/shopping_images/AzadHindStores.jpg'),
(251, 'Day 3', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 48, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(252, 'Day 3', 'Bang Bang Club Goa\r\n', 'Candolim ', '', 'Bicholim', 48, 'images/nightlife_images/BangBangClubGoa.jpg'),
(253, 'Day 2', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 49, 'images/beach_activities_images/BananaBoatRides_2.jpeg'),
(254, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 49, 'images/sightseeing_images/AncestralGoa.jpeg'),
(255, 'Day 2', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 49, 'images/shopping_images/Newton\'sSupermarket.jpg'),
(256, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 49, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(257, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 49, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(258, 'Day 3', 'Bang Bang Club Goa\r\n', 'Candolim ', '', 'Bicholim', 49, 'images/nightlife_images/BangBangClubGoa.jpg'),
(259, 'Day 2', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 50, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(260, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 50, 'images/sightseeing_images/AncestralGoa.jpeg'),
(261, 'Day 2', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 50, 'images/shopping_images/Newton\'sSupermarket.jpg'),
(262, 'Day 3', 'Calangute Market Square', 'Calangute', 'A bustling market area known for its wide variety of goods including clothing, accessories, souvenirs, and beachwear.', 'Bardez', 50, 'images/shopping_images/CalanguteMarketSquare.jpeg'),
(263, 'Day 3', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 50, 'images/sightseeing_images/TerekholFort.jpeg'),
(264, 'Day 3', 'Banana Boat Rides', 'Baga Beach', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Bardez', 50, 'images/beach_activities_images/BananaBoatRides_1.jpeg'),
(265, 'Day 1', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 51, 'images/shopping_images/AzadHindStores.jpg'),
(266, 'Day 1', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 51, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(267, 'Day 1', 'Basilica of Bom Jesus', 'Old Goa', 'A UNESCO World Heritage Site, known for its exquisite Baroque architecture and the remains of St. Francis Xavier.', 'Tiswadi', 51, 'images/sightseeing_images/BasilicaoBomJesus.jpeg'),
(268, 'Day 2', 'Kayaking', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 'Canacona', 51, 'images/beach_activities_images/Kayaking_1.jpeg'),
(269, 'Day 2', 'Mollem National Park', 'Mollem', 'A biodiverse national park known for its wildlife, waterfalls, and trekking trails, including the famous Dudhsagar Falls.', 'Sanguem', 51, 'images/sightseeing_images/MollemNationalPark.jpeg'),
(270, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 51, 'images/shopping_images/SarayaArtGallery.jpg'),
(271, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 51, 'images/shopping_images/Newton\'sSupermarket.jpg'),
(272, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 51, 'images/sightseeing_images/AncestralGoa.jpeg'),
(273, 'Day 3', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 51, 'images/beach_activities_images/BananaBoatRides_2.jpeg'),
(274, 'Day 1', 'Club Margarita\r\n', 'Colva', 'Compact nightspot with a high-energy atmosphere offering alcohol & light bites, plus DJs & hookah.', 'Salcette', 52, 'images/nightlife_images/ClubMargarita.jpeg'),
(275, 'Day 2', 'Surfing Lessons', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 'Canacona', 52, 'images/beach_activities_images/SurfingLessons_1.jpeg'),
(276, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 52, 'images/shopping_images/SarayaArtGallery.jpg'),
(277, 'Day 2', 'Mollem National Park', 'Mollem', 'A biodiverse national park known for its wildlife, waterfalls, and trekking trails, including the famous Dudhsagar Falls.', 'Sanguem', 52, 'images/sightseeing_images/MollemNationalPark.jpeg'),
(278, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 52, 'images/sightseeing_images/AncestralGoa.jpeg'),
(279, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 52, 'images/shopping_images/Newton\'sSupermarket.jpg'),
(280, 'Day 3', 'Dolphin Watching Tours', 'Calangute', 'Embark on boat trip in search playful dolphins in their natural habitat.(Tours offered by vendors on he beach)', 'Salcette', 52, 'images/beach_activities_images/DolphinWatchingTours_1.jpeg'),
(281, 'Day 1', 'Big G', 'Pajifond, Margao', 'Discover a wide range of footwear for every occasion at Big G Shopping Centre in Margao, featuring everything from casual shoes and sneakers to sports footwear, sandals, and specialty shoes for men, w', 'Salcette', 53, 'images/shopping_images/Big-G.jpg'),
(282, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 53, 'images/shopping_images/TheAtriumMall.jpg'),
(283, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 53, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(284, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 53, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(285, 'Day 3', 'Basilica of Bom Jesus', 'Old Goa', 'A UNESCO World Heritage Site, known for its exquisite Baroque architecture and the remains of St. Francis Xavier.', 'Tiswadi', 53, 'images/sightseeing_images/BasilicaoBomJesus.jpeg'),
(286, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 53, 'images/shopping_images/CaculoMall.jpg'),
(287, 'Day 3', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 53, 'images/nightlife_images/TheDenBarLounge.jpg'),
(288, 'Day 2', 'Jet Skiing', 'Dona Paula Beach', 'Ride jet ski on waves enjoy thrill speeding across water', 'Bardez', 54, 'images/beach_activities_images/JetSkiing_2.jpeg'),
(289, 'Day 2', 'The Saturday Night Market', 'Arpora ', 'A bustling night market featuring stalls selling clothing, jewelry, accessories, handicrafts, and food.', 'Bardez', 54, 'images/shopping_images/TheSaturdayNightMarket.jpeg'),
(290, 'Day 2', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 54, 'images/sightseeing_images/TerekholFort.jpeg'),
(291, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 54, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(292, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 54, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(293, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 54, 'images/shopping_images/TheAtriumMall.jpg'),
(294, 'Day 1', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 55, 'images/sightseeing_images/DonaPaulaViewPoint.jpeg'),
(295, 'Day 1', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 55, 'images/shopping_images/CaculoMall.jpg'),
(296, 'Day 2', 'Surfing Lessons', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 'Canacona', 55, 'images/beach_activities_images/SurfingLessons_1.jpeg'),
(297, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 55, 'images/shopping_images/SarayaArtGallery.jpg'),
(298, 'Day 2', 'Silent Noise Club', 'Palolem Beach', 'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.', 'Canacona', 55, 'images/nightlife_images/SilentNoiseClub.jpg'),
(299, 'Day 3', 'Fort Aguada', 'Sinquerim', 'A well-preserved seventeenth-century Portuguese fort with a lighthouse offering panoramic views of the Arabian Sea.', 'Bardez', 55, 'images/sightseeing_images/FortAguada.jpeg'),
(300, 'Day 3', 'Flea Market, Mackie\'s Night Bazaar', 'Arpora', 'A weekly flea market featuring stalls selling a diverse range of products including clothing, accessories, handicrafts, and more.', 'Bardez', 55, 'images/shopping_images/FleaMarketMackie\'sNightBazaar.jpeg'),
(301, 'Day 3', 'Hype', 'Candolim', 'A trendy nightclub offering a fusion of music genres, cocktails, and a lively atmosphere.', 'Bardez', 55, 'images/nightlife_images/Hype.jpg'),
(302, 'Day 1', 'Reis Magos Fort', 'Reis Magos', 'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.', 'Bardez', 56, 'images/sightseeing_images/ReisMagosFort.jpeg'),
(303, 'Day 1', 'SinQ Night Club', 'Candolim', 'An upscale nightclub featuring international DJs, indoor and outdoor spaces, and poolside lounging.', 'Bardez', 56, 'images/nightlife_images/SinQNightClub.webp'),
(304, 'Day 2', 'Basilica of Bom Jesus', 'Old Goa', 'A UNESCO World Heritage Site, known for its exquisite Baroque architecture and the remains of St. Francis Xavier.', 'Tiswadi', 56, 'images/sightseeing_images/BasilicaoBomJesus.jpeg'),
(305, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 56, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(306, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 56, 'images/nightlife_images/TheDenBarLounge.jpg'),
(307, 'Day 3', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 56, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(308, 'Day 3', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 56, 'images/sightseeing_images/SahakariSpiceFarm.jpeg'),
(309, 'Day 3', 'D\'Aggies - Lounge & Disc for Couples & Families\r\n', 'Colva', 'Trendy destination featuring indoor & outdoor bars, plus hookah, live music & regular DJ nights.', 'Salcette', 56, 'images/nightlife_images/D_AggiesLoungeDiscforCouplesFamilies.jpg'),
(310, 'Day 2', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 57, 'images/sightseeing_images/BhagwanMahavirWildlifeSanctuary.jpeg'),
(311, 'Day 2', 'Trek to Todo Waterfalls:', 'Netravali', 'Todo Waterfalls, located near the village of Netravali, is a hidden gem in South Goa. The trek to Todo Waterfalls is relatively easy and takes you through lush greenery, making it a perfect escape int', 'Sanguem', 57, 'images/hiking_images/TrektoTodoWaterfalls.jpeg'),
(312, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 57, 'images/shopping_images/SarayaArtGallery.jpg'),
(313, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 57, 'images/shopping_images/TheAtriumMall.jpg'),
(314, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 57, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(315, 'Day 3', 'Refresh Night Club in Goa\r\n', 'Calangute', '', 'Bicholim', 57, 'images/nightlife_images/RefreshNightClubinGoa.jpg'),
(316, 'Day 1', 'Kayaking', 'Agonda Beach', 'Soar high above the beach with panoramic view of coastline while parasailing', 'Bardez', 58, 'images/beach_activities_images/Kayaking_2.jpeg'),
(317, 'Day 2', 'Jet Skiing', 'Dona Paula Beach', 'Ride jet ski on waves enjoy thrill speeding across water', 'Bardez', 58, 'images/beach_activities_images/JetSkiing_2.jpeg'),
(318, 'Day 2', 'Reis Magos Fort', 'Reis Magos', 'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.', 'Bardez', 58, 'images/sightseeing_images/ReisMagosFort.jpeg'),
(319, 'Day 2', 'Curlies Beach Shack', 'Anjuna', 'A famous beach shack and nightclub on Anjuna Beach, known for its chilled-out vibe, live music, and beach parties.', 'Bardez', 58, 'images/nightlife_images/CurliesBeachShack.jpeg'),
(320, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 58, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(321, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 58, 'images/shopping_images/TheAtriumMall.jpg'),
(322, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 58, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(323, 'Day 1', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 59, 'images/shopping_images/AzadHindStores.jpg'),
(324, 'Day 2', 'Parasailing', 'Calangute Beach', 'Soar high above the beach with a panoramic view of the coastline while parasailing', 'Bardez', 59, 'images/beach_activities_images/Parasailing_1.jpeg'),
(325, 'Day 2', 'Mall De Goa', 'Porvorim', 'A modern shopping mall offering a wide range of retail stores, food outlets, and entertainment options.', 'Bardez', 59, 'images/shopping_images/MallDeGoa.jpeg'),
(326, 'Day 2', 'Reis Magos Fort', 'Reis Magos', 'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.', 'Bardez', 59, 'images/sightseeing_images/ReisMagosFort.jpeg'),
(327, 'Day 3', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 59, 'images/beach_activities_images/BananaBoatRides_2.jpeg'),
(328, 'Day 3', 'Reliance Atria\r\n', 'Margao', 'It contains multiple shops offering a wide range of retail stores and food outlets.', 'Salcette', 59, 'images/shopping_images/RelianceAtria.jpg'),
(329, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 59, 'images/sightseeing_images/AncestralGoa.jpeg'),
(330, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 60, 'images/shopping_images/SarayaArtGallery.jpg'),
(331, 'Day 2', 'Mollem National Park', 'Mollem', 'A biodiverse national park known for its wildlife, waterfalls, and trekking trails, including the famous Dudhsagar Falls.', 'Sanguem', 60, 'images/sightseeing_images/MollemNationalPark.jpeg'),
(332, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 60, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(333, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 60, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(334, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 60, 'images/shopping_images/TheAtriumMall.jpg'),
(335, 'Day 3', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 60, 'images/nightlife_images/TheDenBarLounge.jpg'),
(336, 'Day 1', 'Ingo\'s Saturday Night Market', 'Arpora', 'A vibrant night market offering a mix of handicrafts, clothing, jewelry, accessories, and live music entertainment.', 'Bardez', 61, 'images/shopping_images/Ingo\'sSaturdayNightMarket.jpg'),
(337, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 61, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(338, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 61, 'images/shopping_images/TheAtriumMall.jpg'),
(339, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 61, 'images/nightlife_images/TheDenBarLounge.jpg'),
(340, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 61, 'images/sightseeing_images/AncestralGoa.jpeg'),
(341, 'Day 3', 'Big G', 'Pajifond, Margao', 'Discover a wide range of footwear for every occasion at Big G Shopping Centre in Margao, featuring everything from casual shoes and sneakers to sports footwear, sandals, and specialty shoes for men, w', 'Salcette', 61, 'images/shopping_images/Big-G.jpg'),
(342, 'Day 3', 'Dolphin Watching Tours', 'Palolem Beach', 'Embark on boat trip in search playful dolphins in their natural habitat (Tours offered by vendors on beach)', 'Salcette', 61, 'images/beach_activities_images/DolphinWatchingTours_2.jpeg'),
(343, 'Day 1', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 62, 'images/nightlife_images/TheDenBarLounge.jpg'),
(344, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 62, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(345, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 62, 'images/shopping_images/TheAtriumMall.jpg'),
(346, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 62, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(347, 'Day 3', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 62, 'images/sightseeing_images/SahakariSpiceFarm.jpeg'),
(348, 'Day 3', 'Dolphin Watching Tours', 'Palolem Beach', 'Embark on boat trip in search playful dolphins in their natural habitat (Tours offered by vendors on beach)', 'Salcette', 62, 'images/beach_activities_images/DolphinWatchingTours_2.jpeg'),
(349, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 62, 'images/shopping_images/CaculoMall.jpg'),
(350, 'Day 2', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 63, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(351, 'Day 2', 'Fashion Factory\r\n', 'Margao', 'Fashion Factory is Reliance Retail’s multi-brand fashion discount retail chain that has an eclectic assortment of top international and national brands in fashion wear, sportswear, luggage and accesso', 'Salcette', 63, 'images/shopping_images/FashionFactory.png'),
(352, 'Day 2', 'Club Margarita\r\n', 'Colva', 'Compact nightspot with a high-energy atmosphere offering alcohol & light bites, plus DJs & hookah.', 'Salcette', 63, 'images/nightlife_images/ClubMargarita.jpeg'),
(353, 'Day 3', 'Mapusa Market', 'Mapusa', 'A traditional market known for its fresh produce, spices, seafood, clothing, and household items.', 'Bardez', 63, 'images/shopping_images/MapusaMarket.jpg'),
(354, 'Day 3', 'Fly Boarding', 'Vagator Beach', 'Flyboarding adrenaline-pumping water sport lets soar through air dive underwater thanks powerful water jetpack', 'Bardez', 63, 'images/beach_activities_images/FlyBoarding.jpeg'),
(355, 'Day 3', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 63, 'images/sightseeing_images/TerekholFort.jpeg'),
(356, 'Day 2', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 64, 'images/shopping_images/Newton_sSupermarket.jpg'),
(357, 'Day 2', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 64, 'images/beach_activities_images/RingoRide.jpeg'),
(358, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 64, 'images/sightseeing_images/AncestralGoa.jpeg'),
(359, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 64, 'images/shopping_images/SarayaArtGallery.jpg'),
(360, 'Day 3', 'Dudhsagar Falls', 'Dudhsagar', 'One of India\'s tallest waterfalls, surrounded by lush greenery and accessible via trekking or train ride.', 'Sanguem', 64, 'images/sightseeing_images/DudhsagarFalls.jpeg'),
(361, 'Day 3', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 64, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(362, 'Day 1', 'The Bootlegger Bar Goa\r\n', 'Margao', '', 'Salcette', 65, 'images/nightlife_images/TheBootleggerBarGoa.jpeg'),
(363, 'Day 2', 'Anjuna Flea Market', 'Anjuna', 'A famous flea market featuring a colorful array of stalls selling clothing, jewelry, handicrafts, and souvenirs.', 'Bardez', 65, 'images/shopping_images/AnjunaFleaMarket.jpeg'),
(364, 'Day 2', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 65, 'images/sightseeing_images/TerekholFort.jpeg'),
(365, 'Day 2', 'Fly Boarding', 'Vagator Beach', 'Flyboarding adrenaline-pumping water sport lets soar through air dive underwater thanks powerful water jetpack', 'Bardez', 65, 'images/beach_activities_images/FlyBoarding.jpeg'),
(366, 'Day 3', 'Se Cathedral', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 'Tiswadi', 65, 'images/sightseeing_images/SeCathedral.jpeg'),
(367, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 65, 'images/shopping_images/CaculoMall.jpg'),
(368, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 65, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(369, 'Day 2', 'Kayaking', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 'Canacona', 66, 'images/beach_activities_images/Kayaking_1.jpeg'),
(370, 'Day 2', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 66, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(371, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 66, 'images/shopping_images/SarayaArtGallery.jpg'),
(372, 'Day 3', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 66, 'images/beach_activities_images/BananaBoatRides_2.jpeg'),
(373, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 66, 'images/sightseeing_images/AncestralGoa.jpeg'),
(374, 'Day 3', 'Umiya Mercado\r\n', 'Benaulim', 'It contains multinational brands shops offering a wide range of retail stores, food outlets, and entertainment options.', 'Salcette', 66, 'images/shopping_images/UmiyaMercado.jpg'),
(375, 'Day 1', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 67, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(376, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 67, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(377, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 67, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(378, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 67, 'images/nightlife_images/TheDenBarLounge.jpg'),
(379, 'Day 3', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 67, 'images/shopping_images/AzadHindStores.jpg'),
(380, 'Day 3', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 67, 'images/beach_activities_images/RingoRide.jpeg'),
(381, 'Day 3', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 67, 'images/sightseeing_images/DonaPaulaViewPoint.jpeg'),
(382, 'Day 1', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 68, 'images/sightseeing_images/AncestralGoa.jpeg'),
(383, 'Day 2', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 68, 'images/sightseeing_images/BhagwanMahavirWildlifeSanctuary.jpeg'),
(384, 'Day 2', 'Dolphin Watching Tours', 'Calangute', 'Embark on boat trip in search playful dolphins in their natural habitat.(Tours offered by vendors on he beach)', 'Salcette', 68, 'images/beach_activities_images/DolphinWatchingTours_1.jpeg'),
(385, 'Day 2', 'D\'Aggies - Lounge & Disc for Couples & Families\r\n', 'Colva', 'Trendy destination featuring indoor & outdoor bars, plus hookah, live music & regular DJ nights.', 'Salcette', 68, 'images/nightlife_images/D_AggiesLoungeDiscforCouplesFamilies.jpg'),
(386, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 68, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(387, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 68, 'images/shopping_images/TheAtriumMall.jpg'),
(388, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 68, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(389, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 69, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(390, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 69, 'images/shopping_images/TheAtriumMall.jpg'),
(391, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 69, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(392, 'Day 3', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 69, 'images/shopping_images/AzadHindStores.jpg'),
(393, 'Day 3', 'Snorkel Trips', 'Bogmalo Beach', 'Discover underwater world without needing scuba gear with snorkeling trips.(Shops/centers require research upon arrival)', 'Salcette', 69, 'images/beach_activities_images/SnorkelTrips.jpeg'),
(394, 'Day 3', 'Se Cathedral', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 'Tiswadi', 69, 'images/sightseeing_images/SeCathedral.jpeg'),
(395, 'Day 1', 'The Bootlegger Bar Goa\r\n', 'Margao', '', 'Salcette', 70, 'images/nightlife_images/TheBootleggerBarGoa.jpeg'),
(396, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 70, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(397, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 70, 'images/shopping_images/TheAtriumMall.jpg'),
(398, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 70, 'images/nightlife_images/TheDenBarLounge.jpg'),
(399, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 70, 'images/shopping_images/Newton_sSupermarket.jpg'),
(400, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 70, 'images/sightseeing_images/AncestralGoa.jpeg'),
(401, 'Day 3', 'Silent Noise Club', 'Palolem Beach', 'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.', 'Canacona', 70, 'images/nightlife_images/SilentNoiseClub.jpg'),
(402, 'Day 1', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 71, 'images/sightseeing_images/TerekholFort.jpeg'),
(403, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 71, 'images/sightseeing_images/AncestralGoa.jpeg'),
(404, 'Day 2', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 71, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(405, 'Day 2', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 71, 'images/shopping_images/Newton_sSupermarket.jpg'),
(406, 'Day 3', 'Parasailing', 'Colva Beach', 'Climb aboard a giant inflatable banana and rise high for a fun-filled ride followed by a boat', 'Bardez', 71, 'images/beach_activities_images/Parasailing_2.jpeg'),
(407, 'Day 3', 'The Saturday Night Market', 'Arpora ', 'A bustling night market featuring stalls selling clothing, jewelry, accessories, handicrafts, and food.', 'Bardez', 71, 'images/shopping_images/TheSaturdayNightMarket.jpeg'),
(408, 'Day 3', 'Sinq Beach Club', 'Candolim', 'A beachfront club offering a luxurious experience with music, dining, and poolside relaxation.', 'Bardez', 71, 'images/nightlife_images/SinqBeachClub.jpg'),
(409, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 72, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(410, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 72, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(411, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 72, 'images/shopping_images/TheAtriumMall.jpg'),
(412, 'Day 3', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 72, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(413, 'Day 3', 'Basilica of Bom Jesus', 'Old Goa', 'A UNESCO World Heritage Site, known for its exquisite Baroque architecture and the remains of St. Francis Xavier.', 'Tiswadi', 72, 'images/sightseeing_images/BasilicaoBomJesus.jpeg'),
(414, 'Day 3', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 72, 'images/nightlife_images/TheDenBarLounge.jpg'),
(415, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 73, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(416, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 73, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(417, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 73, 'images/shopping_images/TheAtriumMall.jpg'),
(418, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 73, 'images/shopping_images/SarayaArtGallery.jpg'),
(419, 'Day 3', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 73, 'images/beach_activities_images/Stand-UpPaddleboarding.jpeg'),
(420, 'Day 3', 'Silent Noise Club', 'Palolem Beach', 'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.', 'Canacona', 73, 'images/nightlife_images/SilentNoiseClub.jpg'),
(421, 'Day 1', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 74, 'images/sightseeing_images/TerekholFort.jpeg'),
(422, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 74, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(423, 'Day 2', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 74, 'images/shopping_images/CaculoMall.jpg'),
(424, 'Day 2', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 74, 'images/sightseeing_images/DonaPaulaViewPoint.jpeg'),
(425, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 74, 'images/sightseeing_images/AncestralGoa.jpeg'),
(426, 'Day 3', 'Big G', 'Pajifond, Margao', 'Discover a wide range of footwear for every occasion at Big G Shopping Centre in Margao, featuring everything from casual shoes and sneakers to sports footwear, sandals, and specialty shoes for men, w', 'Salcette', 74, 'images/shopping_images/Big-G.jpg'),
(427, 'Day 3', 'Bat Club Goa\r\n', 'Betalbatim', '', 'Salcette', 74, 'images/nightlife_images/BatClubGoa.jpg'),
(428, 'Day 1', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 75, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(429, 'Day 2', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 75, 'images/sightseeing_images/TerekholFort.jpeg'),
(430, 'Day 2', 'Kayaking', 'Agonda Beach', 'Soar high above the beach with panoramic view of coastline while parasailing', 'Bardez', 75, 'images/beach_activities_images/Kayaking_2.jpeg'),
(431, 'Day 2', 'Cafe Mambo', 'Baga', 'A popular beachfront club in Baga known for its eclectic music, cocktails, and beach parties.', 'Bardez', 75, 'images/nightlife_images/CafeMambo.jpg'),
(432, 'Day 3', 'Kayaking', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 'Canacona', 75, 'images/beach_activities_images/Kayaking_1.jpeg'),
(433, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 75, 'images/shopping_images/SarayaArtGallery.jpg'),
(434, 'Day 3', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 75, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(435, 'Day 2', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 76, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(436, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 76, 'images/shopping_images/SarayaArtGallery.jpg'),
(437, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 76, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(438, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 76, 'images/sightseeing_images/AncestralGoa.jpeg'),
(439, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 76, 'images/shopping_images/Newton_sSupermarket.jpg'),
(440, 'Day 3', 'Dolphin Watching Tours', 'Calangute', 'Embark on boat trip in search playful dolphins in their natural habitat.(Tours offered by vendors on he beach)', 'Salcette', 76, 'images/beach_activities_images/DolphinWatchingTours_1.jpeg'),
(441, 'Day 2', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 77, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(442, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 77, 'images/sightseeing_images/AncestralGoa.jpeg'),
(443, 'Day 2', 'Bat Club Goa\r\n', 'Betalbatim', '', 'Salcette', 77, 'images/nightlife_images/BatClubGoa.jpg'),
(444, 'Day 3', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 77, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(445, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 77, 'images/shopping_images/SarayaArtGallery.jpg'),
(446, 'Day 3', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 77, 'images/beach_activities_images/Stand-UpPaddleboarding.jpeg'),
(447, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 78, 'images/shopping_images/SarayaArtGallery.jpg'),
(448, 'Day 2', 'Dudhsagar Falls', 'Dudhsagar', 'One of India\'s tallest waterfalls, surrounded by lush greenery and accessible via trekking or train ride.', 'Sanguem', 78, 'images/sightseeing_images/DudhsagarFalls.jpeg'),
(449, 'Day 2', 'Silent Noise Club', 'Palolem Beach', 'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.', 'Canacona', 78, 'images/nightlife_images/SilentNoiseClub.jpg'),
(450, 'Day 3', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 78, 'images/beach_activities_images/RingoRide.jpeg'),
(451, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 78, 'images/sightseeing_images/AncestralGoa.jpeg'),
(452, 'Day 3', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 78, 'images/nightlife_images/TheDenBarLounge.jpg'),
(453, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 79, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(454, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 79, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(455, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 79, 'images/nightlife_images/TheDenBarLounge.jpg'),
(456, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 79, 'images/sightseeing_images/AncestralGoa.jpeg'),
(457, 'Day 3', 'Snorkel Trips', 'Bogmalo Beach', 'Discover underwater world without needing scuba gear with snorkeling trips.(Shops/centers require research upon arrival)', 'Salcette', 79, 'images/beach_activities_images/SnorkelTrips.jpeg'),
(458, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 79, 'images/shopping_images/Newton_sSupermarket.jpg'),
(459, 'Day 1', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 80, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(460, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 80, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(461, 'Day 2', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 80, 'images/sightseeing_images/SahakariSpiceFarm.jpeg'),
(462, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 80, 'images/shopping_images/TheAtriumMall.jpg'),
(463, 'Day 3', 'Banana Boat Rides', 'Baga Beach', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Bardez', 80, 'images/beach_activities_images/BananaBoatRides_1.jpeg'),
(464, 'Day 3', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 80, 'images/sightseeing_images/TerekholFort.jpeg'),
(465, 'Day 3', 'Curlies Beach Shack', 'Anjuna', 'A famous beach shack and nightclub on Anjuna Beach, known for its chilled-out vibe, live music, and beach parties.', 'Bardez', 80, 'images/nightlife_images/CurliesBeachShack.jpeg'),
(466, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 81, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(467, 'Day 2', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 81, 'images/sightseeing_images/BhagwanMahavirWildlifeSanctuary.jpeg'),
(468, 'Day 2', 'Alpha Club\r\n', 'Canacona', '', 'Canacona', 81, 'images/nightlife_images/AlphaClub.jpg'),
(469, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 81, 'images/shopping_images/TheAtriumMall.jpg'),
(470, 'Day 3', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 81, 'images/sightseeing_images/SahakariSpiceFarm.jpeg'),
(471, 'Day 3', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 81, 'images/nightlife_images/TheDenBarLounge.jpg'),
(472, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 82, 'images/shopping_images/TheAtriumMall.jpg'),
(473, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 82, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(474, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 82, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(475, 'Day 3', 'Surfing Lessons', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 'Canacona', 82, 'images/beach_activities_images/SurfingLessons_1.jpeg'),
(476, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 82, 'images/shopping_images/SarayaArtGallery.jpg'),
(477, 'Day 3', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 82, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(478, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 83, 'images/beach_activities_images/SunsetSailing_1.jpeg');
INSERT INTO `itinerary` (`itinerary_id`, `days`, `itinerary`, `itinerary_loc`, `description`, `taluka`, `token_id`, `image`) VALUES
(479, 'Day 2', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 83, 'images/sightseeing_images/DonaPaulaViewPoint.jpeg'),
(480, 'Day 2', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 83, 'images/shopping_images/AzadHindStores.jpg'),
(481, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 83, 'images/shopping_images/SarayaArtGallery.jpg'),
(482, 'Day 3', 'Kayaking', 'Palolem Beach', 'Paddle along the calm waters and explore the scenic coastline at your own pace. (Rentals available at the beach)', 'Canacona', 83, 'images/beach_activities_images/Kayaking_1.jpeg'),
(483, 'Day 3', 'Dudhsagar Falls', 'Dudhsagar', 'One of India\'s tallest waterfalls, surrounded by lush greenery and accessible via trekking or train ride.', 'Sanguem', 83, 'images/sightseeing_images/DudhsagarFalls.jpeg'),
(484, 'Day 1', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 84, 'images/nightlife_images/TheDenBarLounge.jpg'),
(485, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 84, 'images/shopping_images/SarayaArtGallery.jpg'),
(486, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 84, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(487, 'Day 2', 'Leopard Valley', 'Agonda', 'A unique open-air nightclub nestled in the jungle, featuring electronic music events and a natural setting.', 'Canacona', 84, 'images/nightlife_images/leopardvalley.jpg'),
(488, 'Day 3', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 84, 'images/sightseeing_images/BhagwanMahavirWildlifeSanctuary.jpeg'),
(489, 'Day 3', 'Stand-Up Paddleboarding', 'Palolem Beach', 'Enjoy a unique perspective while standing on a paddleboard and gliding across the water. (Rentals available at he beach)', 'Canacona', 84, 'images/beach_activities_images/Stand-UpPaddleboarding.jpeg'),
(490, 'Day 3', 'Fashion Factory\r\n', 'Margao', 'Fashion Factory is Reliance Retail’s multi-brand fashion discount retail chain that has an eclectic assortment of top international and national brands in fashion wear, sportswear, luggage and accesso', 'Salcette', 84, 'images/shopping_images/FashionFactory.png'),
(491, 'Day 2', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 85, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(492, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 85, 'images/shopping_images/SarayaArtGallery.jpg'),
(493, 'Day 2', 'Surfing Lessons', 'Candolim', 'Learn basics surfing from experienced instructors catch first wave (Surf schools require research upon arrival)', 'Canacona', 85, 'images/beach_activities_images/SurfingLessons_1.jpeg'),
(494, 'Day 3', 'Scuba Diving', 'Candolim Beach', 'Explore the underwater world and witness the vibrant marine life by scuba diving. (Specific shops/centers require research upon arrival)', 'Bardez', 85, 'images/beach_activities_images/ScubaDiving_1.jpeg'),
(495, 'Day 3', 'Anjuna Flea Market', 'Anjuna', 'A famous flea market featuring a colorful array of stalls selling clothing, jewelry, handicrafts, and souvenirs.', 'Bardez', 85, 'images/shopping_images/AnjunaFleaMarket.jpeg'),
(496, 'Day 3', 'Chapora Fort', 'Chapora', 'A scenic fort overlooking the Chapora River and the Arabian Sea, featured in the Bollywood movie \"Dil Chahta Hai.\"', 'Bardez', 85, 'images/sightseeing_images/ChaporaFort.jpeg'),
(497, 'Day 1', 'Cabo de Rama Fort', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 'Canacona', 86, 'images/sightseeing_images/CabodeRamaFort.jpeg'),
(498, 'Day 2', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 86, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(499, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 86, 'images/shopping_images/TheAtriumMall.jpg'),
(500, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 86, 'images/nightlife_images/TheDenBarLounge.jpg'),
(501, 'Day 3', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 86, 'images/sightseeing_images/AncestralGoa.jpeg'),
(502, 'Day 3', 'Dolphin Watching Tours', 'Calangute', 'Embark on boat trip in search playful dolphins in their natural habitat.(Tours offered by vendors on he beach)', 'Salcette', 86, 'images/beach_activities_images/DolphinWatchingTours_1.jpeg'),
(503, 'Day 3', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 86, 'images/shopping_images/Newton_sSupermarket.jpg'),
(504, 'Day 1', 'Newton\'s Supermarket', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 'Mormugao', 87, 'images/shopping_images/Newton_sSupermarket.jpg'),
(505, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 87, 'images/shopping_images/TheAtriumMall.jpg'),
(506, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 87, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(507, 'Day 2', 'Refresh Night Club in Goa\r\n', 'Calangute', '', 'Bicholim', 87, 'images/nightlife_images/RefreshNightClubinGoa.jpg'),
(508, 'Day 3', 'Se Cathedral', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 'Tiswadi', 87, 'images/sightseeing_images/SeCathedral.jpeg'),
(509, 'Day 3', 'Ringo Ride', 'Colva', 'A ringo ride is fun exhilarating water sport activity perfect those seeking some thrills Goa beach trip', 'Salcette', 87, 'images/beach_activities_images/RingoRide.jpeg'),
(510, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 87, 'images/shopping_images/CaculoMall.jpg'),
(511, 'Day 2', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 88, 'images/sightseeing_images/BhagwanMahavirWildlifeSanctuary.jpeg'),
(512, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 88, 'images/shopping_images/SarayaArtGallery.jpg'),
(513, 'Day 2', 'Alpha Club\r\n', 'Canacona', '', 'Canacona', 88, 'images/nightlife_images/AlphaClub.jpg'),
(514, 'Day 2', 'Dudhsagar Falls', 'Dudhsagar', 'One of India\'s tallest waterfalls, surrounded by lush greenery and accessible via trekking or train ride.', 'Sanguem', 89, 'images/sightseeing_images/DudhsagarFalls.jpeg'),
(515, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 89, 'images/shopping_images/SarayaArtGallery.jpg'),
(516, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 89, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(517, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 89, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(518, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 89, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(519, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 89, 'images/shopping_images/TheAtriumMall.jpg'),
(520, 'Day 1', 'Kayaking', 'Agonda Beach', 'Soar high above the beach with panoramic view of coastline while parasailing', 'Bardez', 90, 'images/beach_activities_images/Kayaking_2.jpeg'),
(521, 'Day 2', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 90, 'images/sightseeing_images/SahakariSpiceFarm.jpeg'),
(522, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 90, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(523, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 90, 'images/shopping_images/TheAtriumMall.jpg'),
(524, 'Day 3', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 90, 'images/beach_activities_images/BananaBoatRides_2.jpeg'),
(525, 'Day 3', 'Shri Mangeshi Temple', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 'Ponda', 90, 'images/sightseeing_images/ShriMangeshiTemple.jpeg'),
(526, 'Day 3', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 90, 'images/shopping_images/AzadHindStores.jpg'),
(527, 'Day 2', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 91, 'images/sightseeing_images/SahakariSpiceFarm.jpeg'),
(528, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 91, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(529, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 91, 'images/shopping_images/TheAtriumMall.jpg'),
(530, 'Day 3', 'Basilica of Bom Jesus', 'Old Goa', 'A UNESCO World Heritage Site, known for its exquisite Baroque architecture and the remains of St. Francis Xavier.', 'Tiswadi', 91, 'images/sightseeing_images/BasilicaoBomJesus.jpeg'),
(531, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 91, 'images/shopping_images/CaculoMall.jpg'),
(532, 'Day 3', 'Sunset Sailing', 'Palolem Beach', 'Set sail on a boat tour witness breathtaking sunset over Arabian Sea (Tours offered by vendors on beach)', 'Salcette', 91, 'images/beach_activities_images/SunsetSailing_2.jpeg'),
(533, 'Day 2', 'Azad Hind Stores', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 'Tiswadi', 92, 'images/shopping_images/AzadHindStores.jpg'),
(534, 'Day 2', 'Basilica of Bom Jesus', 'Old Goa', 'A UNESCO World Heritage Site, known for its exquisite Baroque architecture and the remains of St. Francis Xavier.', 'Tiswadi', 92, 'images/sightseeing_images/BasilicaoBomJesus.jpeg'),
(535, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 92, 'images/nightlife_images/TheDenBarLounge.jpg'),
(536, 'Day 3', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 92, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(537, 'Day 3', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 92, 'images/shopping_images/TheAtriumMall.jpg'),
(538, 'Day 3', 'The Bootlegger Bar Goa\r\n', 'Margao', '', 'Salcette', 92, 'images/nightlife_images/TheBootleggerBarGoa.jpeg'),
(539, 'Day 1', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 93, 'images/sightseeing_images/AncestralGoa.jpeg'),
(540, 'Day 2', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 93, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(541, 'Day 2', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 93, 'images/shopping_images/SarayaArtGallery.jpg'),
(542, 'Day 2', 'Leopard Valley', 'Agonda', 'A unique open-air nightclub nestled in the jungle, featuring electronic music events and a natural setting.', 'Canacona', 93, 'images/nightlife_images/leopardvalley.jpg'),
(543, 'Day 3', 'Dudhsagar Falls', 'Dudhsagar', 'One of India\'s tallest waterfalls, surrounded by lush greenery and accessible via trekking or train ride.', 'Sanguem', 93, 'images/sightseeing_images/DudhsagarFalls.jpeg'),
(544, 'Day 3', 'Big G', 'Pajifond, Margao', 'Discover a wide range of footwear for every occasion at Big G Shopping Centre in Margao, featuring everything from casual shoes and sneakers to sports footwear, sandals, and specialty shoes for men, w', 'Salcette', 93, 'images/shopping_images/Big-G.jpg'),
(545, 'Day 3', 'Snorkel Trips', 'Bogmalo Beach', 'Discover underwater world without needing scuba gear with snorkeling trips.(Shops/centers require research upon arrival)', 'Salcette', 93, 'images/beach_activities_images/SnorkelTrips.jpeg'),
(546, 'Day 4', 'Reliance Atria\r\n', 'Margao', 'It contains multiple shops offering a wide range of retail stores and food outlets.', 'Salcette', 93, 'images/shopping_images/RelianceAtria.jpg'),
(547, 'Day 4', 'Banana Boat Rides', 'Colva', 'Climb aboard a giant inflatable banana and hold on tight for a fun-filled ride towed by a boat', 'Salcette', 93, 'images/beach_activities_images/BananaBoatRides_2.jpeg'),
(548, 'Day 4', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 93, 'images/sightseeing_images/BhagwanMahavirWildlifeSanctuary.jpeg'),
(549, 'Day 2', 'The Atrium Mall\r\n', 'Ponda', NULL, 'Ponda', 94, 'images/shopping_images/TheAtriumMall.jpg'),
(550, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 94, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(551, 'Day 2', 'Sahakari Spice Farm', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 'Ponda', 94, 'images/sightseeing_images/SahakariSpiceFarm.jpeg'),
(552, 'Day 3', 'Saraya Art Gallery', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 'Canacona', 94, 'images/shopping_images/SarayaArtGallery.jpg'),
(553, 'Day 3', 'Scuba Diving', 'Colva Beach', 'Explore underwater world witness vibrant marine life by scuba diving (Specific shops/centers require research upon arrival)', 'Canacona', 94, 'images/beach_activities_images/ScubaDiving_2.jpeg'),
(554, 'Day 3', 'Bhagwan Mahavir Wildlife Sanctuary', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 'Sanguem', 94, 'images/sightseeing_images/BhagwanMahavirWildlifeSanctuary.jpeg'),
(555, 'Day 2', 'Sunset Sailing', 'Dona Paula Beach', 'Set sail on a boat tour and witness breathtaking sunset over Arabian Sea. (Tours offered by vendors on he beach)', 'Tiswadi', 95, 'images/beach_activities_images/SunsetSailing_1.jpeg'),
(556, 'Day 2', 'Se Cathedral', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 'Tiswadi', 95, 'images/sightseeing_images/SeCathedral.jpeg'),
(557, 'Day 2', 'The Den Bar & Lounge\r\n', 'Navelim', '', 'Mormugao', 95, 'images/nightlife_images/TheDenBarLounge.jpg'),
(558, 'Day 3', 'Caculo Mall', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 'Tiswadi', 95, 'images/shopping_images/CaculoMall.jpg'),
(559, 'Day 3', 'Dolphin Watching Tours', 'Calangute', 'Embark on boat trip in search playful dolphins in their natural habitat.(Tours offered by vendors on he beach)', 'Salcette', 95, 'images/beach_activities_images/DolphinWatchingTours_1.jpeg'),
(560, 'Day 3', 'Dona Paula View Point', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 'Tiswadi', 95, 'images/sightseeing_images/DonaPaulaViewPoint.jpeg'),
(561, 'Day 1', 'Fly Boarding', 'Vagator Beach', 'Flyboarding adrenaline-pumping water sport lets soar through air dive underwater thanks powerful water jetpack', 'Bardez', 96, 'images/beach_activities_images/FlyBoarding.jpeg'),
(562, 'Day 2', 'Dolphin Watching Tours', 'Palolem Beach', 'Embark on boat trip in search playful dolphins in their natural habitat (Tours offered by vendors on beach)', 'Salcette', 96, 'images/beach_activities_images/DolphinWatchingTours_2.jpeg'),
(563, 'Day 2', 'Ancestral Goa', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 'Salcette', 96, 'images/sightseeing_images/AncestralGoa.jpeg'),
(564, 'Day 2', 'Umiya Mercado\r\n', 'Benaulim', 'It contains multinational brands shops offering a wide range of retail stores, food outlets, and entertainment options.', 'Salcette', 96, 'images/shopping_images/UmiyaMercado.jpg'),
(565, 'Day 3', 'Valanka Shopping Mall\r\n', 'Calangute', NULL, 'Bardez', 96, 'images/shopping_images/ValankaShoppingMall.jpeg'),
(566, 'Day 3', 'Terekhol Fort', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 'Pernem', 96, 'images/sightseeing_images/TerekholFort.jpeg'),
(567, 'Day 3', 'Jet Skiing', 'Dona Paula Beach', 'Ride jet ski on waves enjoy thrill speeding across water', 'Bardez', 96, 'images/beach_activities_images/JetSkiing_2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `talukas` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `talukas`, `district`, `state`) VALUES
(1, 'Pernem', 'North Goa', 'Goa'),
(2, 'Bardez', 'North Goa', 'Goa'),
(3, 'Bicholim', 'North Goa', 'Goa'),
(4, 'Sattari', 'North Goa', 'Goa'),
(5, 'Dharbandora', 'South Goa', 'Goa'),
(6, 'Ponda', 'South Goa', 'Goa'),
(7, 'Tiswadi', 'North Goa', 'Goa'),
(8, 'Mormugao', 'South Goa', 'Goa'),
(9, 'Salcette', 'South  Goa', 'Goa'),
(10, 'Quepem', 'South  Goa', 'Goa'),
(11, 'Sanguem', 'South  Goa', 'Goa'),
(12, 'Canacona', 'South  Goa', 'Goa');

-- --------------------------------------------------------

--
-- Table structure for table `museum`
--

CREATE TABLE `museum` (
  `museum_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` text NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `museum`
--

INSERT INTO `museum` (`museum_id`, `name`, `image`, `address`, `description`, `location_id`) VALUES
(0, 'Kerkar Art Complex', 'images/museum_images/KerkarArtComplex.jpeg', ' Calangute\r\n', 'The small gallery showcases colourful paintings, photographs and sculptures from local artist, Dr Subodh Kerkar as well as guest artists.', 2),
(1, 'Goa State Museum', 'images/museum_images/GoaStateMuseum.jpeg', 'Panaji', 'Exhibits Goan history, culture, and artifacts including sculpture, coins, paintings, and manuscripts.', 7),
(2, 'Naval Aviation Museum', 'images/museum_images/NavalAviationMuseum.jpg', 'Bogmalo', 'Showcases the evolution of Indian Naval Aviation, including aircraft, engines, and maritime reconnaissance equipment.', 8),
(3, 'Archaeological Museum and Portrait Gallery', 'images/museum_images/ArchaeologicalMuseumandPortraitGallery.jpeg', 'Vasco da Gama', 'Features antiquities, sculptures, and portraits reflecting the history and culture of Goa.', 8),
(4, 'Ancestral Goa Museum', 'images/museum_images/AncestralGoaMuseum.jpg', 'Loutolim', 'A living museum preserving Goan rural life and tradition, with exhibits on Goan history, architecture, and lifestyle.', 9),
(5, 'BENZ WAX MUSEUM & FISH AQUARIUM', 'images/museum_images/BenzWaxMuseum&FishAquarium.jpeg', 'Arpora', 'Celebrity Wax Statutes are displayed at Benz Celebrity Wax Museum, Goa. 9D Cinema is the second attraction at Benz Celebrity Wax Museum, Goa. Dashing Cars Game available for children.', 2),
(6, 'Big Foot Art Gallery', 'images/museum_images/BigFootArtGallery.jpg', 'Loutolim', 'Houses a collection of sculptures and artwork by Goan artist Maendra Jocelino Araujo Alvares, depicting Goan culture, traditions, and folklore.', 9),
(7, 'Christian Art Museum', 'images/museum_images/ChristianArtMuseum.jpg', 'Pilar', 'Displays a rich collection of Christian art, artifacts, and relics, providing insights into the history of Christianity in Goa.', 7),
(8, 'Goa Chitra Museum', 'images/museum_images/GoaChitraMuseum.jpeg', 'Benaulim', 'Dedicated to preserving and showcasing the agrarian and rural heritage of Goa, featuring artifacts, tools, and implements.', 9),
(9, 'Wax World Museum', 'images/museum_images/WaxWorldMuseum.jpeg', ' Saligao', 'Home to lifelike wax statues depicting historical figures, celebrities, and famous personalities from around the world.', 2),
(10, 'Gomant Vidya Niketan Archaeological Museum', 'images/museum_images/GomantVidyaNiketanArchaeologicalMuseum.jpg', 'Old Goa', 'Showcases archaeological artifacts, sculptures, and inscriptions dating back to the ancient history of Goa.', 7),
(11, 'Museum of Goa (MOG)', 'images/museum_images/MuseumofGoa(MOG).jpeg', 'Pilerne', 'Exhibits contemporary art by Goan and international artists, fostering creativity, innovation, and cultural exchange.', 2),
(12, 'The Kala Academy Art Gallery', 'images/museum_images/TheKalaAcademyArtGallery.jpg', 'Panaji', 'Hosts exhibitions of contemporary art, paintings, sculptures, and installations, promoting artistic expression and cultural dialogue.', 7),
(13, 'The Goa State Museum', 'images/museum_images/GoaStateMuseum.jpeg', '\r\n Panaji', 'Offers interactive exhibits and educational programs on science, technology, and innovation, aimed at fostering scientific curiosity and inquiry.', 7),
(14, 'The Museum of Printing History', 'images/museum_images/TheMuseumofPrintingHistory.jpeg', 'Panaji', 'Preserves the history and evolution of printing technology, featuring antique printing presses, typesetting equipment, and rare printed materials.', 7),
(15, 'All About Alcohol (AAA) Museum', 'images/museum_images/AllAboutAlcohol(AAA)Museum.jpg', 'Candolim', 'The museum is a tribute to alcohol with special emphasis on feni, the indigenous drink of Goa.', 2),
(16, 'Indian Customs & Central Excise Museum', 'images/museum_images/IndianCustomsCentralExciseMuseum.jpeg', 'Panaji', 'National Museum of Customs & GST Museum is first of its kind in the country. This museum has been established to promote appreciation of the evolution of the Indian Customs and Central Excise from ancient times, its modernization and relevance today for revenue generation, protection, culture and natural heritage, protecting the county from illicit trade, including narcotics and psychotropic substances.', 7),
(17, 'Pilar Seminary Museum', 'images/museum_images/PilarSeminaryMuseum.jpeg', 'Pilar', 'The Pilar Museum is a witness to this rich cultural heritage of Pilar hillock and to a great extent, the heritage of the Shilaharas (765 – 1020 AD) and the Kadambas (1050 – 1354 AD), who had their capital city, Govapuri, around the hillock. Right through the Muslim and Portuguese conquests, the history continues down to the present day Goa State of the Indian Union. ', 7),
(18, 'Ulta Pulta Museum', 'images/museum_images/UltaPultaMuseum.jpeg', 'Dabolim', 'It was a unique concept and wonderfully executed. A tour along with photographs can be completed in less than 45 mins and rest assured kids will be delighted.', 8),
(19, 'The Figueiredo Mansion', 'images/museum_images/TheFigueiredoMansion.jpeg', 'Loutolim', 'An Indo-Portuguese mansion almost as old as time, in the lilting town of Loutolim in Goa, Figueiredo Mansion invites you to come, stay and spend a while at the heritage inn. This beautiful mansion belonging to the Figueriedo family in Goa, is a museum and now an inn as well. It’s absolutely vintage and has five rooms to stay in. It is a typical Indo-Portuguese structure with a big verandah surrounding it and courtyards in the middle of the house.', 9),
(20, 'Ashvek Vintage World Car Museum', 'images/museum_images/AshvekVintageWorldCarMuseum.jpeg', 'Nuvem', 'Ashvek Vintage World is a vintage car museum in South Goa, India. It describes itself as \"Goa\'s first and only vintage car museum and showroom\"', 9),
(21, 'San Thome Museum', 'images/museum_images/SanThomeMuseum.jpeg', 'Benaulim', 'San Thome Museum of Goa is a museum of antiques and technical evolution dating back to the time of Thomas Elva Edison. It was established to exhibit the evolution of science and technology right from the time of Thomas Alva Edison. One can explore every aspect of technology used from the 18th century to date displayed at the museum. It is a perfect attraction for technology buffs and students.', 9),
(22, 'Palácio do Deão\r\n', 'images/museum_images/PaláciodoDeão.jpeg', 'Palácio do Deão', 'This 213 years old mansion was built by a Portuguese noble man, who was the Dean of the Church, and founder of Quepem town.\r\n\r\nThe house faces the Church he built and is on the banks of the wildly beautiful Kushavati River.\r\n\r\nIt is built in an unusual style blending elements of Hindu and Portuguese architecture.\r\n\r\nAnother of its outstanding features are the lush gardens which have managed to preserve their historical features and have, since old times, been known as the most beautiful pleasure gardens in Goa.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `nightlife`
--

CREATE TABLE `nightlife` (
  `nightlife_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nightlife`
--

INSERT INTO `nightlife` (`nightlife_id`, `name`, `image`, `address`, `description`, `location_id`) VALUES
(1, 'Club Cubana', 'images/nightlife_images/ClubCubana.jpg', 'Arpora', 'One of Goa\'s most popular nightclubs, known for its lively atmosphere, music, and pool parties.', 2),
(2, 'Tito\'s Club', 'images/nightlife_images/Tito\'sClub.jpg', 'Baga', 'A legendary nightclub in Baga known for its energetic vibe, international DJs, and late-night parties.', 2),
(3, 'LPK Waterfront', 'images/nightlife_images/LPKWaterfront.jpg', 'Nerul', 'A scenic riverside club offering stunning views, live music, and themed parties in a vibrant ambiance.', 2),
(4, 'Cafe Mambo', 'images/nightlife_images/CafeMambo.jpg', 'Baga', 'A popular beachfront club in Baga known for its eclectic music, cocktails, and beach parties.', 2),
(5, 'SinQ Night Club', 'images/nightlife_images/SinQNightClub.webp', 'Candolim', 'An upscale nightclub featuring international DJs, indoor and outdoor spaces, and poolside lounging.', 2),
(6, 'HillTop Goa', 'images/nightlife_images/HillTopGoa.jpg', 'Vagator', 'A legendary outdoor party venue atop a hill, hosting trance and electronic music events with a psychedelic atmosphere.', 2),
(7, 'Curlies Beach Shack', 'images/nightlife_images/CurliesBeachShack.jpeg', 'Anjuna', 'A famous beach shack and nightclub on Anjuna Beach, known for its chilled-out vibe, live music, and beach parties.', 2),
(8, 'Sinq Beach Club', 'images/nightlife_images/SinqBeachClub.jpg', 'Candolim', 'A beachfront club offering a luxurious experience with music, dining, and poolside relaxation.', 2),
(9, 'Chronicle', 'images/nightlife_images/Chronicle.jpg', 'Vagator', 'A beach club and lounge known for its stunning sunset views, electronic music, and beachside dining.', 2),
(10, 'Leopard Valley', 'images/nightlife_images/leopardvalley.jpg', 'Agonda', 'A unique open-air nightclub nestled in the jungle, featuring electronic music events and a natural setting.', 12),
(11, 'Hype', 'images/nightlife_images/Hype.jpg', 'Candolim', 'A trendy nightclub offering a fusion of music genres, cocktails, and a lively atmosphere.', 2),
(12, 'Cohiba Bar & Kitchen', 'images/nightlife_images/CohibaBarKitchen.jpg', 'Candolim', 'An elegant bar and restaurant offering live music, cocktails, and gourmet cuisine.', 2),
(13, 'Kamaki', 'images/nightlife_images/kamaki.jpg', 'Calangute', 'A vibrant nightclub known for its Greek-themed decor, music, and energetic dance floor.', 2),
(14, 'Cape Town Cafe', 'images/nightlife_images/capetowncafe.jpg', ' Baga', 'A lively club and cafe known for its music, cocktails, and outdoor seating.', 2),
(15, 'Silent Noise Club', 'images/nightlife_images/SilentNoiseClub.jpg', 'Palolem Beach', 'An innovative silent disco experience where partygoers wear headphones to listen to different DJs, creating a unique atmosphere.', 12),
(16, 'Club Margarita\r\n', 'images/nightlife_images/ClubMargarita.jpeg', 'Colva', 'Compact nightspot with a high-energy atmosphere offering alcohol & light bites, plus DJs & hookah.', 9),
(17, 'D\'Aggies - Lounge & Disc for Couples & Families\r\n', 'images/nightlife_images/D_AggiesLoungeDiscforCouplesFamilies.jpg', 'Colva', 'Trendy destination featuring indoor & outdoor bars, plus hookah, live music & regular DJ nights.', 9),
(18, 'Bat Club Goa\r\n', 'images/nightlife_images/BatClubGoa.jpg', 'Betalbatim', '', 9),
(19, 'Alpha Club\r\n', 'images/nightlife_images/AlphaClub.jpg', 'Canacona', '', 12),
(20, 'Hammerzz Nightclub\r\n', 'images/nightlife_images/HammerzzNightclub.jpeg', 'Baga', 'High-energy club featuring lounge areas & a spacious dance floor with flashy light displays.', 2),
(21, 'Beach Barrels Bar \r\n', 'images/nightlife_images/BeachBarrelsBar.jpg', 'Colva', '', 9),
(22, 'THE WHITE GOA\r\n', 'images/nightlife_images/THEWHITEGOA.jpeg', 'Baga', '', 2),
(23, 'The Bootlegger Bar Goa\r\n', 'images/nightlife_images/TheBootleggerBarGoa.jpeg', 'Margao', '', 9),
(24, 'Bang Bang Club Goa\r\n', 'images/nightlife_images/BangBangClubGoa.jpg', 'Candolim ', '', 3),
(25, 'Refresh Night Club in Goa\r\n', 'images/nightlife_images/RefreshNightClubinGoa.jpg', 'Calangute', '', 3),
(26, 'The Den Bar & Lounge\r\n', 'images/nightlife_images/TheDenBarLounge.jpg', 'Navelim', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `upi_id` varchar(255) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `cust_id`, `upi_id`, `booking_id`, `budget`) VALUES
(1, 1, 'sdf@sd.c', 23, '10'),
(2, 1, 'a@b.c', 23, '20'),
(3, 1, 'abc@def.ghi', 24, '30'),
(4, 1, 'abc@def.ghi', 25, '40'),
(5, 1, 'plm@oiu.cvb', 26, '50'),
(6, 1, 'qwe@rty.bnm', 27, '60'),
(7, 1, 'abc@def.ghi', 29, '70'),
(8, 19, 'id@oksbi', 30, '80'),
(9, 19, 'abc@def.ghi', 31, '90'),
(10, 19, 'id@oksbi', 32, '100'),
(11, 19, 'abc@def.ghi', 34, '110'),
(12, 19, 'asf@fs.v', 35, '120'),
(13, 19, 'abc@def.ghi', 36, '19041.38');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `rec_id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `rec_itinerary` text DEFAULT NULL,
  `rec_description` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `reviews` int(11) DEFAULT NULL,
  `no_of_days` int(100) NOT NULL,
  `no_of_travelers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`rec_id`, `package_name`, `rec_itinerary`, `rec_description`, `images`, `price`, `reviews`, `no_of_days`, `no_of_travelers`) VALUES
(1, 'package_1', 'Day 1:\nDepart from Kolkata at 09:00 to Goa - Dabolim Airport at 11:30\nRent a car at Dabolim Airport\nCheck-In to Cidade de Goa in Dona Paula at 09:30 AM\nHave your breakfast at  Perfect Cup in Dona Paula\nExplore Dona Paula View Point and Miramar Beach\nLunch at Mum\'s Kitchen in Panaji\nVisit the Goa Science Centre & Planetarium,Miramar\nDinner at Kokni Kanteen Goa in Panaji\nNightlife at Big Daddy Casino\n\nDay 2:\nHave your Breakfast at Citi Cafe in Margao\nHead to palolem and do beach activites\nLunch at SABINA\'S COASTAL DELIGHTS in Palolem\nExplore  and shopping at main street of palolem beach\nEnjoy sunset at Colomb Beach,Canacona\nDinner at Kala Bahia,patnem\nDepart from Dabolim Airport at 23:00 and Arrive in Bangalore at 24:30', 'Experience the thrill of adventure mixed with the serene beauty of Goa with this exciting itinerary', 'dsdsdss', '50000.00', 5, 2, 2),
(2, 'package_2', 'Day 1:\r\nDepart from Sydney Kingsford Smith Airport at 23:00 to Goa - Dabolim Airport at 13:00.\r\nArrive in Goa and transfer to W Goa, Vagator.\r\nCheck-in and unwind.\r\nLunch at Antares Restaurant & Beach Club.\r\nExplore the ruins of Chapora Fort.\r\nDinner at Sublime, Morjim.\r\n\r\nDay 2:\r\nBreakfast at Artjuna Garden Café, Anjuna.\r\nLunch at Gunpowder, Assagao.\r\nExplore Arambol Beach and its bohemian vibe.\r\nDinner at Thalassa, Vagator.\r\nExperience the nightlife at Club Cubana, Arpora.\r\n\r\nDay 3:\r\nBreakfast at Bean Me Up, Anjuna.\r\nExplore Hill Top Goa\r\nLunch at Spice Goa\r\nExplore the Ashwem Beach.\r\nDinner at La Plage, Ashwem.\r\n\r\nDay 4:\r\nBreakfast at German Bakery, Anjuna.\r\nHead for a morning yoga session at Purple Valley Yoga Retreat.\r\nVisit the Aguada Fort for panoramic views.\r\nLunch at  Fisherman\'s Wharf, Panaji.\r\nSpend the afternoon at Candolim Beach, indulging in water sports.\r\nDinner at Vinayak Family Restaurant.\r\n\r\nDay 5:\r\nCheck-out from W Goa, Vagator\r\nBreakfast at Baba Au Rhum, Anjuna.\r\nVisit Reis Magos Fort\r\nLunch at Mum\'s Kitchen, Panaji.\r\nExplore Dona Paula Beach, Goa\r\nDepart from Dabolim Airport at 20:00 and Arrive in Sydney at 08:30 ', 'Explore South Goa\'s beaches, forts, and culture with this thrilling package—relax on pristine shores, delve into history, enjoy water sports, and savor a taste of Goan cooking!', 'sssssf', '100000.00', 4, 5, 1),
(3, 'package_3', 'Day 1:\r\n- Depart from Rajasthan to Goa (Mopa Airport) around 9:00hours\r\n- Rent a car at Mopa Airport\r\n- Check-in to your accommodation in South Goa (Lalit Spa and Resort) around midday\r\n- Freshen up\r\n- Have lunch at the hotel restaurant (lalit)\r\n- Explore nearby beaches, Palolem\r\n- Enjoy dinner at a beachside restaurant (Dropadi Bar and Restaurant )\r\n- Relax and unwind at your accommodation\r\n\r\nDay 2:\r\n- Have breakfast at a local cafe or bakery\r\n- Visit Cabo de Rama Fort\r\n- Lunch at The Cape Goa\r\n- Cola Beach, kayaking \r\n- Watch the sunset at Agonda Beach\r\n- Enjoy dinner at Dunhill Restaurant in Agonda\r\n\r\nDay 3:\r\n- Have breakfast at the accommodation\r\n- visit Basilica of Bom Jesus\r\n-Visit the Museum of Christian Art\r\n- Explore the charming streets of Panaji and Fontainhas for Portuguese architecture and local shops\r\n- Have lunch at a local Goan eatery \r\n- Spend your afternoon at Miramar Beach\r\n- Enjoy a farewell dinner at a seafood restaurant overlooking the sea\r\n- Depart from Goa (Dabolim Airport) to Rajasthan in the evening next dat at 3:00hours', 'Embark on a whirlwind tour of Goa\'s stunning landscapes, historical sites, and vibrant nightlife', 'hgfhhtg', '100000.00', 4, 3, 3),
(4, 'package_4', 'Day 1:\r\nDepart from Bangalore by sleeper bus in the evening \r\nArrival at Mapusa Bus Stand in the morning\r\nCheck-in at Casa Baga, Baga  10:30\r\nRent a bike\r\nBreakfast at Infantaria, Calangute\r\nRelax at Baga Beach\r\nLunch at St. Anthony\'s, Baga Beach\r\n\r\nDay 2:\r\nHave breakfast at Britto\'s Restaurant & Bar,Baga\r\nExplore Anjuna Flea Market\r\nVisit Chapora Fort\r\nLunch at Gunpowder, Assagao\r\nVisit Vagator Beach and relax\r\nSunset at Anjuna Beach\r\nDinner at Curlies Beach Shack, Anjuna\r\n\r\nDay 3:\r\nBreakfast at Artjuna, Anjuna\r\nVisit Arambol Beach\r\nLunch at La Plage, Ashwem Beach\r\nExplore Morjim Beach and visit Olive Ridley Turtle Nesting Site\r\nCheck-in at Casa Baga, Baga\r\nDepart from Mapusa Bus Stand in the evening', 'Indulge in the ultimate beach getaway with our Goa Beach Paradise package. Enjoy pristine beaches, breathtaking sunsets, and cultural excursions for a rejuvenating experience.', 'sdsds', '40000.00', 4, 3, 4),
(5, 'package_5', 'Day1:\r\n- Depart from Abu Dhabi at 02:20 to Goa - Dabolim Airport at 11:10\r\n- Rent a car at Dobolim Airport \r\n- Check-In to Nanutel Margao at 11:30AM\r\n- Freshen up \r\n- Have you lunch at The Goan Kitchen \r\n- Explore Margao Market, Benaulim Beach\r\n- Have dinner at The Southern Deck Beach Bar & Bistro Benaulim\r\n\r\nDay2:\r\n- Have your Breakfast at Cafe Tato\r\n- Fontainhas in Panaji\r\n- Lunch at Ritz Classic\r\n- Visit Calangute Beach and do beach activities\r\n- Watch sunset at Calangute Beach\r\n- Have dinner at Chelsea Beach Shack\r\n- Enjoy Nightlife at Hammerzz Nightclub\r\n\r\nDay3:\r\n- Check-out from Nanutel Margao\r\n- Have your Breakfast at AJ’s\r\n- Visit Basilica of Bom Jesus and  Se Cathedral\r\n- Lunch at adlem Goi\r\n- Head to vasco and visit Ulta Pulta Museum\r\n- Drop your Rent a car at Dabolim Airport \r\n- Report at Airport at 17:40 \r\n- Depart from Dabolim Airport at 20:40 and Arrive in Dubai at 08:35', 'Immerse yourself in the rich history and culture of Goa with our Heritage Trail package. Discover ancient churches, colonial architecture, and traditional Goan cuisine on this enriching journey.', 'fdfdfdfdf', '80000.00', 4, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--

CREATE TABLE `shopping` (
  `shopping_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` text NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopping`
--

INSERT INTO `shopping` (`shopping_id`, `name`, `image`, `address`, `description`, `location_id`) VALUES
(1, 'Mall De Goa', 'images/shopping_images/MallDeGoa.jpeg', 'Porvorim', 'A modern shopping mall offering a wide range of retail stores, food outlets, and entertainment options.', 2),
(2, 'Caculo Mall', 'images/shopping_images/CaculoMall.jpg', 'Panaji', 'A popular shopping destination featuring branded stores, restaurants, and a multiplex cinema.', 7),
(3, 'Delfinos Hypermarket', 'images/shopping_images/DelfinosHypermarket.jpg', 'Alto Porvorim', 'A large hypermarket offering groceries, electronics, household items, and more at competitive prices.', 2),
(4, 'Calangute Market Square', 'images/shopping_images/CalanguteMarketSquare.jpeg', 'Calangute', 'A bustling market area known for its wide variety of goods including clothing, accessories, souvenirs, and beachwear.', 2),
(5, 'Ingo\'s Saturday Night Market', 'images/shopping_images/Ingo_sSaturdayNightMarket.jpg', 'Arpora', 'A vibrant night market offering a mix of handicrafts, clothing, jewelry, accessories, and live music entertainment.', 2),
(6, 'Mapusa Market', 'images/shopping_images/MapusaMarket.jpg', 'Mapusa', 'A traditional market known for its fresh produce, spices, seafood, clothing, and household items.', 2),
(7, 'Anjuna Flea Market', 'images/shopping_images/AnjunaFleaMarket.jpeg', 'Anjuna', 'A famous flea market featuring a colorful array of stalls selling clothing, jewelry, handicrafts, and souvenirs.', 2),
(8, 'Saraya Art Gallery', 'images/shopping_images/SarayaArtGallery.jpg', 'Canacona', 'A boutique gallery showcasing unique artwork, handicrafts, and home decor items crafted by local artisans.', 12),
(9, 'Carpe Diem Art Gallery', 'images/shopping_images/CarpeDiemArtGallery.jpg', 'Candolim', 'An art gallery and cultural space hosting exhibitions, workshops, and events showcasing contemporary art and design.', 2),
(10, 'Azad Hind Stores', 'images/shopping_images/AzadHindStores.jpg', 'Panaji', 'A historic department store offering a wide range of goods including clothing, accessories, footwear, and home essentials.', 7),
(11, 'Newton\'s Supermarket', 'images/shopping_images/Newton_sSupermarket.jpg', 'Vasco da Gama', 'A well-known supermarket chain offering a variety of groceries, fresh produce, and household items.', 8),
(12, 'The Saturday Night Market', 'images/shopping_images/TheSaturdayNightMarket.jpeg', 'Arpora ', 'A bustling night market featuring stalls selling clothing, jewelry, accessories, handicrafts, and food.', 2),
(15, 'Flea Market, Mackie\'s Night Bazaar', 'images/shopping_images/FleaMarketMackie_sNightBazaar.jpeg', 'Arpora', 'A weekly flea market featuring stalls selling a diverse range of products including clothing, accessories, handicrafts, and more.', 2),
(16, 'Reliance Atria\r\n', 'images/shopping_images/RelianceAtria.jpg', 'Margao', 'It contains multiple shops offering a wide range of retail stores and food outlets.', 9),
(17, 'Big G', 'images/shopping_images/Big-G.jpg', 'Pajifond, Margao', 'Discover a wide range of footwear for every occasion at Big G Shopping Centre in Margao, featuring everything from casual shoes and sneakers to sports footwear, sandals, and specialty shoes for men, women, and children.', 9),
(18, 'Fashion Factory\r\n', 'images/shopping_images/FashionFactory.png', 'Margao', 'Fashion Factory is Reliance Retail’s multi-brand fashion discount retail chain that has an eclectic assortment of top international and national brands in fashion wear, sportswear, luggage and accessories, at unbeatable prices.', 9),
(19, 'The Atrium Mall\r\n', 'images/shopping_images/TheAtriumMall.jpg', 'Ponda', NULL, 6),
(20, 'Valanka Shopping Mall\r\n', 'images/shopping_images/ValankaShoppingMall.jpeg', 'Calangute', NULL, 2),
(21, 'Umiya Mercado\r\n', 'images/shopping_images/UmiyaMercado.jpg', 'Benaulim', 'It contains multinational brands shops offering a wide range of retail stores, food outlets, and entertainment options.', 9);

-- --------------------------------------------------------

--
-- Table structure for table `sightseeing`
--

CREATE TABLE `sightseeing` (
  `sightseeing_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` text NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sightseeing`
--

INSERT INTO `sightseeing` (`sightseeing_id`, `name`, `image`, `address`, `description`, `location_id`) VALUES
(1, 'Dudhsagar Falls', 'images/sightseeing_images/DudhsagarFalls.jpeg', 'Dudhsagar', 'One of India\'s tallest waterfalls, surrounded by lush greenery and accessible via trekking or train ride.', 11),
(2, 'Fort Aguada', 'images/sightseeing_images/FortAguada.jpeg', 'Sinquerim', 'A well-preserved seventeenth-century Portuguese fort with a lighthouse offering panoramic views of the Arabian Sea.', 2),
(3, 'Basilica of Bom Jesus', 'images/sightseeing_images/BasilicaoBomJesus.jpeg', 'Old Goa', 'A UNESCO World Heritage Site, known for its exquisite Baroque architecture and the remains of St. Francis Xavier.', 7),
(4, 'Chapora Fort', 'images/sightseeing_images/ChaporaFort.jpeg', 'Chapora', 'A scenic fort overlooking the Chapora River and the Arabian Sea, featured in the Bollywood movie \"Dil Chahta Hai.\"', 2),
(5, 'Se Cathedral', 'images/sightseeing_images/SeCathedral.jpeg', 'Old Goa', 'One of the largest churches in Asia, known for its Portuguese-Manueline architecture and the Golden Bell.', 7),
(6, 'Shri Mangeshi Temple', 'images/sightseeing_images/ShriMangeshiTemple.jpeg', 'Mangeshi ', 'An ancient Hindu temple dedicated to Lord Shiva, featuring intricate carvings and a peaceful ambiance.', 6),
(7, 'Ancestral Goa', 'images/sightseeing_images/AncestralGoa.jpeg', 'Loutolim', 'A cultural village showcasing Goan rural life, with art installations, handicrafts, and a spice plantation.', 9),
(8, 'Reis Magos Fort', 'images/sightseeing_images/ReisMagosFort.jpeg', 'Reis Magos', 'A historic fort offering panoramic views of the Mandovi River and the Arabian Sea, now housing an art gallery.', 2),
(9, 'Terekhol Fort', 'images/sightseeing_images/TerekholFort.jpeg', 'Terekhol, Goa', 'A seventeenth-century fort overlooking the Terekhol River and the Arabian Sea, offering scenic views and historical significance.', 1),
(10, 'Cabo de Rama Fort', 'images/sightseeing_images/CabodeRamaFort.jpeg', 'Cabo de Rama ', 'A cliffside fort with sweeping views of the Arabian Sea, steeped in history and surrounded by natural beauty.', 12),
(11, 'Mollem National Park', 'images/sightseeing_images/MollemNationalPark.jpeg', 'Mollem', 'A biodiverse national park known for its wildlife, waterfalls, and trekking trails, including the famous Dudhsagar Falls.', 11),
(12, 'Bhagwan Mahavir Wildlife Sanctuary', 'images/sightseeing_images/BhagwanMahavirWildlifeSanctuary.jpeg', 'sonauli', 'A protected area encompassing lush forests, diverse wildlife, and the ancient Tambdi Surla Temple.', 11),
(13, 'Dona Paula View Point', 'images/sightseeing_images/DonaPaulaViewPoint.jpeg', 'Dona Paula', 'A popular viewpoint offering panoramic views of the Arabian Sea and the coastline, named after Dona Paula de Meneses.', 7),
(14, 'Sahakari Spice Farm', 'images/sightseeing_images/SahakariSpiceFarm.jpeg', 'curti', 'A spice plantation offering guided tours, showcasing a variety of spices, tropical fruits, and traditional Goan cuisine.', 6),
(15, 'Arvalem Caves', 'images/sightseeing_images/ArvalemCaves.jpeg', 'Sanquelim', 'Ancient rock-cut caves believed to date back to the 6th century, with intricate carvings and a scenic waterfall nearby.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `token_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`token_id`, `cust_id`) VALUES
(1, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(90, 19),
(91, 19),
(92, 19),
(93, 19),
(94, 19),
(95, 19),
(96, 19);

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `train_id` int(11) NOT NULL,
  `train_number` varchar(255) NOT NULL,
  `train_name` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `depart_station` varchar(255) NOT NULL,
  `arrive_station` varchar(255) NOT NULL,
  `depart_time` time NOT NULL,
  `arrive_time` time NOT NULL,
  `seats_available` int(11) NOT NULL,
  `total_seats` int(11) NOT NULL,
  `price` float NOT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`train_id`, `train_number`, `train_name`, `images`, `depart_station`, `arrive_station`, `depart_time`, `arrive_time`, `seats_available`, `total_seats`, `price`, `vendor_id`) VALUES
(1, 'TRN1001', 'Express Rail', 'images/train_images/ExpressRails.jpeg', 'Delhi', 'Goa', '08:00:00', '10:00:00', 150, 200, 30, 179),
(3, '12345', 'Goa Express', 'images/train_images/GoaVelankanniExpress.jpeg', 'Delhi', 'Goa', '08:00:00', '20:00:00', 150, 200, 500, 180),
(4, '23456', 'Konkan Kanya Express', 'images/train_images/KonkanKanyaExpress.jpeg', 'Mumbai', 'Goa', '09:00:00', '15:00:00', 100, 150, 450, 181),
(5, '34567', 'Goa Sampark Kranti Express', 'images/train_images/GoaSamparkKrantiExpress.jpeg', 'New Delhi', 'Goa', '10:00:00', '22:00:00', 200, 250, 550, 182),
(6, '45678', 'Goa Velankanni Express', 'images/train_images/GoaVelankanniExpress.jpeg', 'Chennai', 'Goa', '11:00:00', '23:00:00', 120, 180, 600, 183),
(7, '56789', 'Mandovi Express', 'images/train_images/MandoviExpress.jpeg', 'Mangalore', 'Goa', '12:00:00', '18:00:00', 180, 220, 480, 184),
(8, '67890', 'Goa Carnival Express', 'images/train_images/GoaAjmerExpress.jpeg', 'Bangalore', 'Goa', '13:00:00', '21:00:00', 160, 190, 520, 185),
(9, '78901', 'Goa Superfast Express', 'images/train_images/ExpressRails.jpeg', 'Hyderabad', 'Goa', '14:00:00', '23:00:00', 140, 170, 580, 186),
(10, '89012', 'Goa Special', 'images/train_images/GoaJabalpurExpress.jpeg', 'Pune', 'Goa', '15:00:00', '20:00:00', 110, 160, 530, 187),
(11, '90123', 'Goa Rajdhani Express', 'images/train_images/ExpressRails.jpeg', 'Kolkata', 'Goa', '16:00:00', '08:00:00', 190, 230, 650, 188),
(12, '01234', 'Goa Duronto Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Ahmedabad', 'Goa', '17:00:00', '10:00:00', 170, 210, 620, 189),
(13, '12346', 'Goa Jan Shatabdi Express', 'images/train_images/GoaJanShatabdiExpress.jpeg', 'Jaipur', 'Goa', '08:30:00', '18:30:00', 140, 180, 560, 190),
(14, '23457', 'Goa Garib Rath Express', 'images/train_images/GoaGaribRathExpress.jpeg', 'Lucknow', 'Goa', '09:30:00', '19:30:00', 160, 200, 540, 191),
(15, '34568', 'Goa Nizamuddin Express', 'images/train_images/GoaNizamuddinExpress.jpeg', 'Bhopal', 'Goa', '10:30:00', '20:30:00', 180, 220, 580, 192),
(16, '45679', 'Goa Chennai Express', 'images/train_images/GoaNizamuddinExpress.jpeg', 'Coimbatore', 'Goa', '11:30:00', '21:30:00', 200, 240, 620, 193),
(17, '56780', 'Goa Secunderabad Express', 'images/train_images/GoaSecunderabadExpress.jpg', 'Visakhapatnam', 'Goa', '12:30:00', '22:30:00', 220, 260, 660, 194),
(18, '67891', 'Goa Howrah Express', 'images/train_images/GoaHowrahExpress.jpeg', 'Patna', 'Goa', '13:30:00', '23:30:00', 240, 280, 700, 195),
(19, '78902', 'Goa Guwahati Express', 'images/train_images/GoaGuwahatiExpress.jpeg', 'Guwahati', 'Goa', '14:30:00', '08:30:00', 260, 300, 740, 196),
(20, '89013', 'Goa Indore Express', 'images/train_images/GoaIndoreExpress.jpeg', 'Indore', 'Goa', '15:30:00', '09:30:00', 280, 320, 780, 197),
(21, '90124', 'Goa Jabalpur Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Jabalpur', 'Goa', '16:30:00', '10:30:00', 300, 340, 820, 198),
(22, '01235', 'Goa Varanasi Express', 'images/train_images/GoaVaranasiExpress.jpeg', 'Varanasi', 'Goa', '17:30:00', '11:30:00', 320, 360, 860, 199),
(23, '12347', 'Goa Gorakhpur Express', 'images/train_images/GoaSecunderabadExpress.jpg', 'Gorakhpur', 'Goa', '08:45:00', '18:45:00', 340, 380, 900, 200),
(24, '23458', 'Goa Udaipur Express', 'images/train_images/GoaUdaipurExpress.jpeg', 'Udaipur', 'Goa', '09:45:00', '19:45:00', 360, 400, 940, 201),
(25, '34569', 'Goa Ajmer Express', 'images/train_images/GoaAjmerExpress.jpeg', 'Ajmer', 'Goa', '10:45:00', '20:45:00', 380, 420, 980, 202),
(26, '45680', 'Goa Ranchi Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Ranchi', 'Goa', '11:45:00', '21:45:00', 400, 440, 1020, 203),
(27, '56781', 'Goa Nagpur Express', 'images/train_images/GoaNagpurExpress.jpeg', 'Nagpur', 'Goa', '12:45:00', '22:45:00', 420, 460, 1060, 204),
(28, '67892', 'Goa Raipur Express', 'images/train_images/ExpressRails.jpeg', 'Raipur', 'Goa', '13:45:00', '23:45:00', 440, 480, 1100, 205),
(29, '78903', 'Goa Jodhpur Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Jodhpur', 'Goa', '14:45:00', '08:45:00', 460, 500, 1140, 206),
(30, '89014', 'Goa Bhubaneswar Express', 'images/train_images/GoaAjmerExpress.jpeg', 'Bhubaneswar', 'Goa', '15:45:00', '09:45:00', 480, 520, 1180, 207),
(31, '90125', 'Goa Kanpur Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Kanpur', 'Goa', '16:45:00', '10:45:00', 500, 540, 1220, 208),
(32, '01236', 'Goa Surat Express', 'images/train_images/ExpressRails.jpeg', 'Surat', 'Goa', '17:45:00', '11:45:00', 520, 560, 1260, 209),
(33, '12348', 'Goa Amritsar Express', 'images/train_images/GoaAjmerExpress.jpeg', 'Amritsar', 'Goa', '08:15:00', '18:15:00', 540, 580, 1300, 210),
(34, '23459', 'Goa Jabalpur Express', 'images/train_images/ExpressRails.jpeg', 'Jabalpur', 'Goa', '09:15:00', '19:15:00', 560, 600, 1340, 211),
(35, '34570', 'Goa Bilaspur Express', 'images/train_images/GoaNizamuddinExpress.jpeg', 'Bilaspur', 'Goa', '10:15:00', '20:15:00', 580, 620, 1380, 212),
(36, '45681', 'Goa Ajmer Express', 'images/train_images/GoaAjmerExpress.jpeg', 'Ajmer', 'Goa', '11:15:00', '21:15:00', 600, 640, 1420, 213),
(37, '56782', 'Goa Gwalior Express', 'images/train_images/GoaGaribRathExpress.jpeg', 'Gwalior', 'Goa', '12:15:00', '22:15:00', 620, 660, 1460, 214),
(38, '67893', 'Goa Haridwar Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Haridwar', 'Goa', '13:15:00', '23:15:00', 640, 680, 1500, 215),
(39, '78904', 'Goa Coimbatore Express', 'images/train_images/GoaAjmerExpress.jpeg', 'Coimbatore', 'Goa', '14:15:00', '08:15:00', 660, 700, 1540, 216),
(40, '89015', 'Goa Lucknow Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Lucknow', 'Goa', '15:15:00', '09:15:00', 680, 720, 1580, 217),
(41, '90126', 'Goa Bhopal Express', 'images/train_images/GoaNizamuddinExpress.jpeg', 'Bhopal', 'Goa', '16:15:00', '10:15:00', 700, 740, 1620, 218),
(42, '01237', 'Goa Pune Express', 'images/train_images/ExpressRails.jpeg', 'Pune', 'Goa', '17:15:00', '11:15:00', 720, 760, 1660, 219),
(43, '12349', 'Goa Chandigarh Express', 'images/train_images/GoaNizamuddinExpress.jpeg', 'Chandigarh', 'Goa', '08:20:00', '18:20:00', 740, 780, 1700, 220),
(44, '23460', 'Goa Vadodara Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Vadodara', 'Goa', '09:20:00', '19:20:00', 760, 800, 1740, 221),
(45, '34571', 'Goa Rameswaram Express', 'images/train_images/ExpressRails.jpeg', 'Rameswaram', 'Goa', '10:20:00', '20:20:00', 780, 820, 1780, 222),
(46, '45682', 'Goa Mangalore Express', 'images/train_images/GoaGaribRathExpress.jpeg', 'Mangalore', 'Goa', '11:20:00', '21:20:00', 800, 840, 1820, 223),
(47, '56783', 'Goa Tirupati Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Tirupati', 'Goa', '12:20:00', '22:20:00', 820, 860, 1860, 224),
(48, '67894', 'Goa Vijayawada Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Vijayawada', 'Goa', '13:20:00', '23:20:00', 840, 880, 1900, 225),
(49, '78905', 'Goa Kochi Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Kochi', 'Goa', '14:20:00', '08:20:00', 860, 900, 1940, 226),
(50, '89016', 'Goa Jaipur Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Jaipur', 'Goa', '15:20:00', '09:20:00', 880, 920, 1980, 228),
(51, '90127', 'Goa Jaisalmer Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Jaisalmer', 'Goa', '16:20:00', '10:20:00', 900, 940, 2020, 229),
(52, '01238', 'Goa Kathgodam Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Kathgodam', 'Goa', '17:20:00', '11:20:00', 920, 960, 2060, 230),
(53, '12350', 'Goa Bareilly Express', 'images/train_images/ExpressRails.jpeg', 'Bareilly', 'Goa', '08:25:00', '18:25:00', 940, 980, 2100, 231),
(54, '23461', 'Goa Dehradun Express', 'images/train_images/GoaGaribRathExpress.jpeg', 'Dehradun', 'Goa', '09:25:00', '19:25:00', 960, 1000, 2140, 232),
(55, '34572', 'Goa Mathura Express', 'images/train_images/GoaGaribRathExpress.jpeg', 'Mathura', 'Goa', '10:25:00', '20:25:00', 980, 1020, 2180, 233),
(56, '45683', 'Goa Bhuj Express', 'images/train_images/GoaAjmerExpress.jpeg', 'Bhuj', 'Goa', '11:25:00', '21:25:00', 1000, 1040, 2220, 234),
(57, '56784', 'Goa Bikaner Express', 'images/train_images/ExpressRails.jpeg', 'Bikaner', 'Goa', '12:25:00', '22:25:00', 1020, 1060, 2260, 235),
(58, '67895', 'Goa Gorakhpur Express', 'images/train_images/GoaGorakhpurExpress.jpeg', 'Gorakhpur', 'Goa', '13:25:00', '23:25:00', 1040, 1080, 2300, 236),
(59, '78906', 'Goa Meerut Express', 'images/train_images/GoaGaribRathExpress.jpeg', 'Meerut', 'Goa', '14:25:00', '08:25:00', 1060, 1100, 2340, 237),
(60, '89017', 'Goa Shimla Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Shimla', 'Goa', '15:25:00', '09:25:00', 1080, 1120, 2380, 238),
(61, '90128', 'Goa Darbhanga Express', 'images/train_images/GoaGaribRathExpress.jpeg', 'Darbhanga', 'Goa', '16:25:00', '10:25:00', 1100, 1140, 2420, 239),
(62, '01239', 'Goa Gaya Express', 'images/train_images/GoaSecunderabadExpress.jpg', 'Gaya', 'Goa', '17:25:00', '11:25:00', 1120, 1160, 2460, 240),
(63, '12351', 'Goa Bhagalpur Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Bhagalpur', 'Goa', '08:35:00', '18:35:00', 1140, 1180, 2500, 241),
(64, '23462', 'Goa Rishikesh Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Rishikesh', 'Goa', '09:35:00', '19:35:00', 1160, 1200, 2540, 242),
(65, '34573', 'Goa Kanyakumari Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Kanyakumari', 'Goa', '10:35:00', '20:35:00', 1180, 1220, 2580, 243),
(66, '45684', 'Goa Alappuzha Express', 'images/train_images/GoaAjmerExpress.jpeg', 'Alappuzha', 'Goa', '11:35:00', '21:35:00', 1200, 1240, 2620, 244),
(67, '56785', 'Goa Madurai Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Madurai', 'Goa', '12:35:00', '22:35:00', 1220, 1260, 2660, 245),
(68, '67896', 'Goa Palakkad Express', 'images/train_images/ExpressRails.jpeg', 'Palakkad', 'Goa', '13:35:00', '23:35:00', 1240, 1280, 2700, 246),
(69, '78907', 'Goa Tiruchirapalli Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Tiruchirapalli', 'Goa', '14:35:00', '08:35:00', 1260, 1300, 2740, 247),
(70, '89018', 'Goa Mangaluru Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Mangaluru', 'Goa', '15:35:00', '09:35:00', 1280, 1320, 2780, 248),
(71, '90129', 'Goa Kochuveli Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Kochuveli', 'Goa', '16:35:00', '10:35:00', 1300, 1340, 2820, 249),
(72, '01240', 'Goa Kannur Express', 'images/train_images/ExpressRails.jpeg', 'Kannur', 'Goa', '17:35:00', '11:35:00', 1320, 1360, 2860, 250),
(73, '12352', 'Goa Haridwar Express', 'images/train_images/GoaGaribRathExpress.jpeg', 'Haridwar', 'Goa', '08:40:00', '18:40:00', 1340, 1380, 2900, 251),
(74, '23463', 'Goa Dharamshala Express', 'images/train_images/ExpressRails.jpeg', 'Dharamshala', 'Goa', '09:40:00', '19:40:00', 1360, 1400, 2940, 251),
(75, '34574', 'Goa Vrindavan Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Vrindavan', 'Goa', '10:40:00', '20:40:00', 1380, 1420, 2980, 252),
(76, '45685', 'Goa Nanded Express', 'images/train_images/ExpressRails.jpeg', 'Nanded', 'Goa', '11:40:00', '21:40:00', 1400, 1440, 3020, 253),
(77, '56786', 'Goa Muzaffarpur Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Muzaffarpur', 'Goa', '12:40:00', '22:40:00', 1420, 1460, 3060, 254),
(78, '67897', 'Goa Jabalpur Express', 'images/train_images/GoaJabalpurExpress.jpeg', 'Jabalpur', 'Goa', '13:40:00', '23:40:00', 1440, 1480, 3100, 255),
(79, '78908', 'Goa Surat Express', 'images/train_images/ExpressRails.jpeg', 'Surat', 'Goa', '14:40:00', '08:40:00', 1460, 1500, 3140, 256),
(80, '89019', 'Goa Kanpur Express', 'images/train_images/GoaDurontoExpress.jpeg', 'Kanpur', 'Goa', '15:40:00', '09:40:00', 1480, 1520, 3180, 257);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--
-- Error reading structure for table travel_buddy.userdata: #1932 - Table &#039;travel_buddy.userdata&#039; doesn&#039;t exist in engine
-- Error reading data for table travel_buddy.userdata: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `travel_buddy`.`userdata`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `userdata1`
--

CREATE TABLE `userdata1` (
  `age_range` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `days` varchar(255) NOT NULL,
  `travel_type` varchar(255) NOT NULL,
  `nots` varchar(255) NOT NULL,
  `activities` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `trip_type` varchar(255) NOT NULL,
  `hotel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata1`
--

INSERT INTO `userdata1` (`age_range`, `gender`, `days`, `travel_type`, `nots`, `activities`, `budget`, `trip_type`, `hotel`) VALUES
('18-24', 'Male', '3', 'Couple', '2', 'Sightseeing, Beach Activities, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '7', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife', '10000 - 20000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '4', 'Family', '3', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('35-44', 'Male', '7', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife', '20000 - 40000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('18-24', 'Female', '7', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '10000 - 20000', 'Packed ( 3 or more activities)', 'Low (1-2 star)\r'),
('18-24', 'Female', '8', 'Couple', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '60000 - 80000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '1', 'Solo', '1', 'Sightseeing, Beach Activities, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('45-54', 'Male', '5', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Museum, Nightlife, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('25-34', 'Female', '3', 'Couple', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '20000 - 40000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', '10000 - 20000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('0-17', 'Female', '3', 'Family', '2', 'Sightseeing, Beach Activities, Nightlife, Shopping', '10000 - 20000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '3', 'Group', '3', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Group', '6', 'Sightseeing, Beach Activities, Historic, Nightlife, Shopping', '10000 - 20000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '2', 'Group', '4', 'Hiking/Trekking, Historic, Museum', '20000 - 40000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '7', 'Group', '7', 'Hiking/Trekking', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '1', 'Group', '8', 'Beach Activities, Nightlife', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '10', 'Group', '5', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Group', '4', 'Sightseeing, Beach Activities, Nightlife, Shopping', '60000 - 80000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '7', 'Group', '6', 'Sightseeing, Beach Activities, Nightlife, Shopping', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '10', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('0-17', 'Female', '4', 'Group', '6', 'Hiking/Trekking, Nightlife', '20000 - 40000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Group', '4', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '7', 'Solo', '1', 'Sightseeing', '10000 - 20000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '7', 'Group', '3', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '40000 - 60000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '5', 'Group', '5', 'Beach Activities, Hiking/Trekking, Museum, Nightlife', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '7', 'Family', '6', 'Shopping', '80000 - 100000', 'Packed ( 3 or more activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '5', 'Family', '6', 'Sightseeing, Historic, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('0-17', 'Female', '4', 'Family', '6', 'Historic', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '2', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '4', 'Group', '4', 'Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Couple', '6', 'Sightseeing, Beach Activities, Nightlife', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '4', 'Group', '4', 'Sightseeing, Beach Activities, Historic, Museum, Shopping', '10000 - 20000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '6', 'Solo', '1', 'Sightseeing, Hiking/Trekking', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '7', 'Group', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Family', '3', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Family', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Group', '5', 'Sightseeing, Beach Activities, Museum, Nightlife, Shopping', '80000 - 100000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Group', '5', 'Sightseeing, Beach Activities, Nightlife, Shopping', '80000 - 100000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '6', 'Group', '6', 'Sightseeing, Beach Activities, Historic, Nightlife', '80000 - 100000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Solo', '1', 'Sightseeing, Beach Activities, Nightlife', '10000 - 20000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Family', '5', 'Sightseeing, Hiking/Trekking, Museum, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '8', 'Group', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Historic', '10000 - 20000', 'Packed ( 3 or more activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '5', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '9', 'Group', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '10000 - 20000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '4', 'Solo', '1', 'Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '7', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife', '10000 - 20000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '10', 'Group', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '80000 - 100000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Family', '6', 'Sightseeing', '80000 - 100000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '6', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '6', 'Group', '5', 'Sightseeing, Hiking/Trekking, Nightlife', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '5', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Group', '3', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '7', 'Solo', '1', 'Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '7', 'Group', '3', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Low (1-2 star)\r'),
('18-24', 'Others', '6', 'Solo', '1', 'Sightseeing', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '5', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', '10000 - 20000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '2', 'Group', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '10000 - 20000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '7', 'Group', '3', 'Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '4', 'Family', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Shopping', '10000 - 20000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '2', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '3', 'Solo', '1', 'Sightseeing, Beach Activities, Nightlife', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '3', 'Group', '6', 'Historic, Museum, Nightlife, Shopping', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '7', 'Couple', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('25-34', 'Male', '5', 'Group', '4', 'Sightseeing', '10000 - 20000', 'Touristy ( 2-3 activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '6', 'Group', '7', 'Sightseeing, Beach Activities, Hiking/Trekking', '80000 - 100000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('65 or older', 'Male', '10', 'Solo', '1', 'Beach Activities, Hiking/Trekking', '20000 - 40000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '5', 'Solo', '1', 'Sightseeing, Nightlife, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '7', 'Group', '5', 'Nightlife', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '7', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '60000 - 80000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '15', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '2', 'Solo', '3', 'Sightseeing, Beach Activities, Nightlife', '20000 - 40000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '6', 'Family', '4', 'Beach Activities, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('0-17', 'Female', '7', 'Family', '4', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '3', 'Solo', '1', 'Sightseeing, Historic, Museum, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Nightlife', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('25-34', 'Male', '7', 'Solo', '1', 'Historic', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '10', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Family', '6', 'Sightseeing, Beach Activities, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Solo', '5', 'Sightseeing, Beach Activities, Nightlife, Shopping', '80000 - 100000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '7', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '60000 - 80000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '3', 'Solo', '1', 'Sightseeing, Beach Activities, Historic, Nightlife, Shopping', '10000 - 20000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '4', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '20000 - 40000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '2', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '80000 - 100000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('25-34', 'Female', '7', 'Couple', '2', 'Sightseeing', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '4', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('25-34', 'Female', '3', 'Family', '6', 'Sightseeing, Museum, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('25-34', 'Male', '6', 'Group', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Solo', '', 'Sightseeing', 'Less than 10000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('35-44', 'Male', '5', 'Family', '5', 'Historic', '20000 - 40000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('45-54', 'Male', '5', 'Family', '3', 'Sightseeing, Beach Activities, Museum', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '6', 'Couple', '2', 'Sightseeing, Beach Activities, Nightlife, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '2', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '10000 - 20000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '3', 'Family', '4', 'Hiking/Trekking, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '6', 'Family', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('25-34', 'Female', '8', 'Family', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife, Shopping', '80000 - 100000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '6', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Group', '3', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Shopping', '20000 - 40000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '4', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '7', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife', '80000 - 100000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('25-34', 'Male', '8', 'Couple', '2', 'Sightseeing, Shopping', '80000 - 100000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '6', 'Family', '4', 'Sightseeing, Museum, Shopping', '20000 - 40000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('0-17', 'Female', '6', 'Group', '5', 'Nightlife', '40000 - 60000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '10', 'Couple', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '80000 - 100000', 'Packed ( 3 or more activities)', 'Low (1-2 star)\r'),
('55-64', 'Male', '7', 'Family', '4', 'Sightseeing, Historic', '60000 - 80000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '7', 'Group', '7', 'Sightseeing', '60000 - 80000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('45-54', 'Female', '7', 'Family', '4', 'Historic, Museum, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '7', 'Couple', '2', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '10', 'Group', '10', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '80000 - 100000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '8', 'Group', '5', 'Nightlife', '60000 - 80000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '10', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '80000 - 100000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('18-24', 'Female', '3', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '10', 'Couple', '2', 'Beach Activities, Hiking/Trekking, Shopping', '80000 - 100000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('55-64', 'Male', '4', 'Solo', '1', 'Sightseeing', 'Less than 10000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('18-24', 'Female', '5', 'Group', '2', 'Nightlife', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '7', 'Group', '3', 'Sightseeing, Beach Activities, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('45-54', 'Female', '4', 'Couple', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('35-44', 'Male', '4', 'Family', '4', 'Sightseeing', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '14', 'Family', '8', 'Sightseeing, Hiking/Trekking, Historic, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '8', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '7', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '5', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '4', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Historic, Nightlife', 'Less than 10000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('25-34', 'Female', '7', 'Couple', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife', '80000 - 100000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('45-54', 'Male', '5', 'Group', '4', 'Sightseeing, Beach Activities, Nightlife', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '10', 'Group', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '80000 - 100000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '2', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('25-34', 'Female', '4', 'Solo', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('45-54', 'Male', '10', 'Family', '4', 'Sightseeing, Beach Activities, Historic', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '4', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '10', 'Solo', '1', 'Sightseeing, Beach Activities, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '14', 'Solo', '1', 'Sightseeing, Historic, Shopping', '80000 - 100000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '10', 'Family', '3', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('35-44', 'Male', '14', 'Family', '4', 'Sightseeing, Beach Activities, Museum, Shopping', '80000 - 100000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('45-54', 'Male', '4', 'Family', '4', 'Sightseeing, Beach Activities, Historic, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('45-54', 'Male', '10', 'Group', '12', 'Sightseeing', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '14', 'Family', '4', 'Hiking/Trekking, Historic, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('35-44', 'Female', '4', 'Family', '3', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('45-54', 'Male', '8', 'Family', '3', 'Historic', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '4', 'Family', '4', 'Sightseeing, Beach Activities, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('35-44', 'Male', '1', 'Family', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '10', 'Family', '7', 'Sightseeing, Beach Activities, Hiking/Trekking, Museum, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '4', 'Group', '8', 'Beach Activities, Nightlife', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '10', 'Group', '5', 'Sightseeing', '80000 - 100000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Group', '5', 'Sightseeing, Beach Activities, Nightlife', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Low (1-2 star)\r'),
('0-17', 'Female', '7', 'Group', '3', 'Beach Activities, Hiking/Trekking, Nightlife, Shopping', '60000 - 80000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '6', 'Group', '10', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '80000 - 100000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('25-34', 'Male', '4', 'Family', '8', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife', '60000 - 80000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '8', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('35-44', 'Female', '14', 'Family', '4', 'Sightseeing', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '7', 'Solo', '1', 'Sightseeing, Beach Activities, Nightlife, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '4', 'Family', '4', 'Sightseeing, Beach Activities, Museum, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '3', 'Solo', '2', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Low (1-2 star)\r'),
('18-24', 'Female', '10', 'Couple', '2', 'Beach Activities, Hiking/Trekking, Museum, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Group', '6', 'Hiking/Trekking', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('45-54', 'Male', '10', 'Family', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Nightlife, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('45-54', 'Female', '15', 'Family', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('35-44', 'Female', '6', 'Family', '4', 'Sightseeing', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('0-17', 'Male', '7', 'Group', '7', 'Hiking/Trekking', '40000 - 60000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '10', 'Group', '5', 'Sightseeing, Beach Activities, Nightlife, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '14', 'Group', '7', 'Sightseeing, Beach Activities, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '4', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('45-54', 'Male', '10', 'Family', '4', 'Beach Activities, Hiking/Trekking, Historic, Nightlife', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '2', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife', '20000 - 40000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '14', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '5', 'Group', '6', 'Sightseeing, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Solo', '1', 'Sightseeing, Beach Activities, Hiking/Trekking', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('25-34', 'Male', '3', 'Group', '4', 'Sightseeing, Beach Activities, Nightlife', '80000 - 100000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Family', '4', 'Sightseeing, Historic, Museum, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('35-44', 'Male', '6', 'Couple', '2', 'Sightseeing, Beach Activities, Museum, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '4', 'Solo', '1', 'Sightseeing, Beach Activities, Nightlife, Shopping', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '4', 'Family', '5', 'Sightseeing, Beach Activities, Museum, Shopping', '60000 - 80000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '3', 'Couple', '2', 'Beach Activities, Museum', '40000 - 60000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('0-17', 'Male', '7', 'Group', '4', 'Sightseeing, Historic, Museum, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('25-34', 'Female', '3', 'Group', '3', 'Sightseeing, Museum, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '6', 'Group', '4', 'Sightseeing, Beach Activities, Nightlife, Shopping', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '14', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Nightlife', '10000 - 20000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('35-44', 'Male', '5', 'Solo', '1', 'Sightseeing, Hiking/Trekking, Historic, Nightlife', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('45-54', 'Male', '4', 'Family', '4', 'Sightseeing, Beach Activities, Historic, Museum, Shopping', '60000 - 80000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('35-44', 'Male', '2', 'Solo', '1', 'Beach Activities, Nightlife, Shopping', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('0-17', 'Male', '2', 'Family', '5', 'Beach Activities', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('25-34', 'Male', '6', 'Couple', '2', 'Sightseeing, Historic, Museum, Shopping', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Solo', '1', 'Beach Activities, Historic', 'Less than 10000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Group', '4', 'Sightseeing, Beach Activities, Hiking/Trekking, Historic, Museum, Nightlife, Shopping', '40000 - 60000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('35-44', 'Others', '7', 'Solo', '1', 'Sightseeing, Beach Activities, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '4', 'Family', '4', 'Sightseeing, Hiking/Trekking, Museum, Shopping', '80000 - 100000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '2', 'Solo', '1', 'Sightseeing', 'Less than 10000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('18-24', 'Male', '14', 'Group', '4', 'Beach Activities', '40000 - 60000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('55-64', 'Male', '5', 'Couple', '2', 'Sightseeing, Beach Activities, Historic, Museum', 'More than ₹100,000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '10', 'Couple', '2', 'Beach Activities, Museum, Nightlife', '40000 - 60000', 'Chill ( 1-2 activities)', 'Low (1-2 star)\r'),
('35-44', 'Others', '4', 'Family', '4', 'Beach Activities, Historic, Museum, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '3', 'Group', '5', 'Sightseeing, Hiking/Trekking, Historic', '40000 - 60000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '6', 'Family', '9', 'Hiking/Trekking, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '3', 'Family', '4', 'Sightseeing, Hiking/Trekking, Historic', '20000 - 40000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Family', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Shopping', '40000 - 60000', 'Chill ( 1-2 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '7', 'Group', '10', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '5', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '60000 - 80000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '14', 'Group', '10', 'Sightseeing, Hiking/Trekking, Nightlife', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '6', 'Group', '4', 'Sightseeing, Beach Activities, Hiking/Trekking', '20000 - 40000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '10', 'Group', '5', 'Sightseeing, Beach Activities, Hiking/Trekking, Museum, Nightlife, Shopping', 'More than ₹100,000', 'Packed ( 3 or more activities)', 'High (4-5 star)\r'),
('18-24', 'Female', '8', 'Solo', '1', 'Historic, Museum, Shopping', '80000 - 100000', 'Chill ( 1-2 activities)', 'High (4-5 star)\r'),
('18-24', 'Male', '5', 'Couple', '2', 'Sightseeing, Beach Activities, Nightlife, Shopping', 'More than ₹100,000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Female', '5', 'Group', '6', 'Sightseeing, Beach Activities, Hiking/Trekking, Nightlife, Shopping', '40000 - 60000', 'Touristy ( 2-3 activities)', 'Mid (3 star)\r'),
('18-24', 'Male', '9', 'Family', '6', 'Beach Activities, Historic, Museum, Shopping', '60000 - 80000', 'Packed ( 3 or more activities)', 'Mid (3 star)');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_rental`
--

CREATE TABLE `vehicle_rental` (
  `vehicle_rental_id` int(11) NOT NULL,
  `vehicle_rental_name` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `vehicle_available` int(11) NOT NULL,
  `total_vehicle` int(11) NOT NULL,
  `price` float NOT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_rental`
--

INSERT INTO `vehicle_rental` (`vehicle_rental_id`, `vehicle_rental_name`, `images`, `vehicle_available`, `total_vehicle`, `price`, `vendor_id`) VALUES
(1, 'Fatima Self Drive Car Rental', 'images/rental_images/FatimaSelfDriveCarRental.png', 5, 10, 500, 289),
(2, 'Rent Wheels Goa Car Rental', 'images/rental_images/RentWheelsGoaCarRental.png', 3, 7, 750, 290),
(3, 'Rajesh Bike & Car Rental Goa', 'images/rental_images/RajeshBike&CarRentalGoa.jpg', 8, 15, 400, 291),
(4, 'Sagar Rental Bikes & Cars', 'images/rental_images/SagarRentalBikes&Cars.jpg', 2, 4, 800, 292),
(5, 'Goa Bike and Car Rental', 'images/rental_images/GoaBikeandCarRental.jpg', 7, 12, 600, 293),
(6, 'Ketan Rental Bikes and Cars Anjuna Goa', 'images/rental_images/KetanRentalBikesandCars.png', 4, 8, 450, 294),
(7, 'Yuvraj Rent a car/bike', 'images/rental_images/YuvrajRent.jpg', 1, 3, 1000, 295),
(8, 'G3 CARS & BIKE RENTAL', 'images/rental_images/G3CARS&BIKERENTAL.jpg', 6, 10, 350, 296),
(9, 'Santosh Cars and Bike Rentals Goa', 'images/rental_images/SantoshCarsandBikeRentalsGoa.jpg', 9, 14, 420, 297),
(10, 'Exotic car & bike rental', 'images/rental_images/Exoticcar&bikerental.png', 5, 9, 650, 298),
(11, 'Sohail Rental Bikes And Cars', 'images/rental_images/SohailRentalBikesAndCars.jpg', 3, 6, 850, 299),
(12, 'Sahil Car And Bike Rental', 'images/rental_images/SahilCarAndBikeRental.jpg', 8, 13, 380, 300),
(13, 'Speed Goa ', 'images/rental_images/SpeedGoa.jpg', 2, 5, 900, 301),
(14, 'Mahesh car n bike for rent', 'images/rental_images/Maheshcarandbike.jpg', 4, 8, 400, 302),
(15, 'S.S BIKES AND CAR RENTALS GOA', 'images/rental_images/S.SBIKESANDCARRENTALS.jpg', 7, 11, 550, 303),
(16, 'Arnav Kumar rent bike and rent car service\r\n', 'images/rental_images/ArnavKumarrentals.jpg', 10, 15, 250, 304),
(17, 'Lobo Car Rentals Goa', 'images/rental_images/LoboCarRentalsGoa.png', 6, 10, 700, 305),
(18, 'Avi rent a bike and car', 'images/rental_images/Avirental.jpg', 8, 12, 300, 306),
(19, 'Jagdish Bike & Car Rental', 'images/rental_images/JagdishBike&CarRental.jpg', 5, 9, 480, 307),
(20, 'Clinton Car and Bike Rentals', 'images/rental_images/ClintonCarandBikeRentals.jpg', 3, 7, 620, 308),
(21, 'Sai krupa Rent A CaB', 'images/rental_images/SaikrupaRentACaB.jpg', 0, 0, 500, 309),
(22, 'Prakash Rent a Car/bike/scooty Margao Goa', 'images/rental_images/PrakashRental.jpg', 2, 2, 400, 310),
(23, 'BASU RENTAL CARS SERVICES', 'C:\\Users\\elgan\\Downloads\\INTELLIGENT-TRIP-PLANNER-AND-GUIDANCE-ASSISTANT\\travelbuddyflask\\static\\images\\rental_images\\BASURENTALCARSSERVICES.jpg', 5, 5, 240, 311),
(24, 'Laxmi rent a bike & car taxi service', 'images/rental_images/Laxmirental.jpg', 8, 8, 380, 312),
(25, 'Sayyed Car & Bike Rentals', 'images/rental_images/SayyedCar&BikeRentals.png', 3, 5, 450, 313),
(26, 'Farhan car and bike rentals', 'images/rental_images/Farhancarandbikerentals.jpg', 6, 6, 500, 314),
(27, 'Salim Car & Bike Rentals\r\n', 'images/rental_images/SalimCar&BikeRentals.png', 9, 9, 200, 315),
(28, 'Popular Rent Bike & Car', 'images/rental_images/PopularRentBike&Car.jpg', 2, 4, 500, 316),
(29, 'Royal Car & Bike Rental', 'images/rental_images/RoyalCar&BikeRental.png', 2, 5, 300, 317),
(30, 'Prince Travels', 'images/rental_images/PrinceTravels.jpg', 1, 5, 300, 318);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `vendor_type` enum('flight','bus','train','rental','hotel') NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `business_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `business_photo` text DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `cpass` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `fname`, `lname`, `vendor_type`, `email`, `phone_number`, `business_name`, `address`, `business_photo`, `pass`, `cpass`, `location_id`) VALUES
(1, 'John ', 'Smith', 'hotel', 'js@hotel.com', '1234567890', 'Taj Exotica Goa', 'Benaulim', 'images/hotels_images/TajExoticaGoa.jpg', '0001', '0001', 9),
(2, 'Emma ', 'Johnson', 'hotel', 'ej@hotel.com', '1234567891', 'The Leela Goa', 'Cavelossim', 'images/hotels_images/TheLeelaGoa.jpg', '0002', '0002', 9),
(3, 'Michael', 'Brown', 'hotel', 'mb@hotel.com', '1234567892', 'Park Hyatt Goa Resort and Spa', 'Cansaulim', 'images/hotels_images/ParkHyattGoa.jpeg', '0003', '0003', 9),
(4, 'Olivia ', 'Jones', 'hotel', 'oj@hotel.com', '1234567893', 'Alila Diwa Goa', 'Majorda', 'images/hotels_images/AlilaDiwaGoa.jpeg', '0004', '0004', 9),
(5, 'James ', 'Rodriguez', 'hotel', 'jr@hotel.com', '1234567894', 'Taj Cidade de Goa Heritage', 'Panjim', 'images/hotels_images/TajCidadedeGoaHeritage.jpeg', '0005', '0005', 7),
(6, 'William ', 'Garcia', 'hotel', 'wg@hotel.com', '1234567895', 'The Pentacon A Resort', 'Palolem', 'images/hotels_images/ThePentaconAResort.jpeg', '0006', '0006', 12),
(7, 'Sophia ', 'Martinez', 'hotel', 'sm@hotel.com', '1234567896', 'The LaLiT Golf & Spa Resort Goa', 'Palolem', 'images/hotels_images/TheLaLiTGolf&SpaResortGoa.jpeg', '0007', '0007', 12),
(8, 'Isabella ', 'Hernandez', 'hotel', 'ih@hotel.com', '1234567897', 'Hotel Sea Shine', 'Palolem', 'images/hotels_images/HotelSeaShine.jpg', '0008', '0008', 12),
(9, 'Benjamin', 'Wilson', 'hotel', 'bw@hotel.com', '1234567898', 'Hotel My Soulmate', 'Palolem', 'images/hotels_images/HotelMySoulmate.jpeg', '0009', '0009', 12),
(10, 'Mia ', 'Anderson', 'hotel', 'ma@hotel.com', '1234567899', 'Molyma Hotels', 'Ponsulem', 'images/hotels_images/MolymaHotels.jpg', '0010', '0010', 12),
(11, 'Lucas ', 'Thomas', 'hotel', 'lt@hotel.com', '1234567800', 'Akasa Goa', 'Palolem', 'images/hotels_images/AkasaGoa.jpg', '0011', '0011', 12),
(12, 'Amelia ', 'Taylor', 'hotel', 'at@hotel.com', '1234567801', 'Varandas de Canacona', 'Tarir Rajbagh', 'images/hotels_images/VarandasdeCanacona.jpg', '0012', '0012', 12),
(13, 'Mason ', 'Moore', 'hotel', 'mm@hotel.com', '1234567802', 'Cuba Patnem', 'Patnem', 'images/hotels_images/CubaPatnem.jpeg', '0013', '0013', 12),
(14, 'Evelyn', ' Lee', 'hotel', 'el@hotel.com', '1234567803', 'Marron Sea View Resort', 'Palolem', 'images/hotels_images/MarronSeaViewResort.jpg', '0014', '0014', 12),
(15, 'Logan', ' Harris', 'hotel', 'lh@hotel.com', '9956776764', 'Royal Touch Beach Huts & Restaurant', 'Palolem', 'images/hotels_images/RoyalTouchBeach.jpg', '0015', '0015', 12),
(16, 'Harper ', 'Clark', 'hotel', 'hc@hotel.com', '9445265652', 'Maria Guest House', 'Palolem', 'images/hotels_images/MariaGuestHouse.jpeg', '0016', '0016', 12),
(17, 'Alexander ', 'Walker', 'hotel', 'aw@hotel.com', '8834545345', 'Art Resort Goa', 'Palolem', 'images/hotels_images/ArtResortGoa.jpeg', '0017', '0017', 12),
(18, 'Abigail ', 'Young', 'hotel', 'ay@hotel.com', '9934776676', 'Peace Garden Beach Resort', 'Talpona', 'images/hotels_images/PeaceGardenBeachResort.jpg', '0018', '0018', 12),
(19, 'Ethan ', 'Hall', 'hotel', 'eh@hotel.com', '773545345', 'De Garland, Palolem - AM Hotel Kollection', 'Palolem', 'images/hotels_images/DeGarland.jpeg', '0019', '0019', 12),
(20, 'Emily', ' King', 'hotel', 'ek@hotel.com', '9934538873', 'The Hawaii Comforts', 'Panaji', 'images/hotels_images/TheHawaiiComforts.jpeg', '0020', '0020', 7),
(21, 'Daniel ', 'Wright', 'hotel', 'dw@hotel.com', '834453643', 'Orange Sky Inn Holiday Home', 'Palolem', 'images/hotels_images/ORANGESKYINN.jpeg', '0021', '0021', 12),
(22, 'Ella ', 'Scott', 'hotel', 'es@hotel.com', '993655365', 'Sobit Sarovar Portico Goa - Palolem', 'Palolem', 'images/hotels_images/SOBITSAROVARPORTICO.jpeg', '0022', '0022', 12),
(23, 'Matthew', ' Adams', 'hotel', 'ma@hotel.com', '1234567890', 'Roundcube Patnem', 'Palolem', 'images/hotels_images/RoundcubePatnem.jpeg', '0023', '0023', 12),
(24, 'Lily ', 'Hill', 'hotel', 'lh@hotel.com', '993455365', 'Ciarans', '', 'images/hotels_images/Ciarans.jpeg', '0024', '0024', 10),
(25, 'Aiden ', 'Green', 'hotel', 'ag@hotel.com', '1234567890', 'Palm Forest Palolem', 'Palolem', 'images/hotels_images/PalmForest.jpeg', '0025', '0025', 12),
(26, 'Grace ', 'Baker', 'hotel', 'gb@hotel.com', '1234567890', 'Agonda Beach Resort', 'Agonda', 'images/hotels_images/AgondaBeachResort.jpg', '0026', '0026', 12),
(27, 'Henry ', 'Gonzalez', 'hotel', 'hg@hotel.com', '1234567890', 'Casa Susegad', 'Loutolim', 'images/hotels_images/CasaSusegad.jpeg', '0027', '0027', 9),
(28, 'Victoria ', 'Nelson', 'hotel', 'vn@hotel.com', '1234567890', 'Chrisander\'s Resort & Restaurant', 'Karally', 'images/hotels_images/Chrisander\'sResort.jpeg', '0028', '0028', 10),
(29, 'Joseph ', 'Carter', 'hotel', 'jc@hotel.com', '1234567890', 'Flagship Springfield Hotel', 'Sirvoi', 'images/hotels_images/FlagshipSpringfieldHotel.jpeg', '0029', '0029', 10),
(30, 'Zoey ', 'Mitchell', 'hotel', 'zm@hotel.com', '1234567890', 'Hotel Apple Rosa', 'Margao', 'images/hotels_images/HotelAppleRosa.jpeg', '0030', '0030', 9),
(31, 'Samuel ', 'Perez', 'hotel', 'sp@hotel.com', '1234567890', 'Hotel Raj Resort', 'Aquem', 'images/hotels_images/HotelRajResort.jpeg', '0031', '0031', 9),
(32, 'Chloe ', 'Roberts', 'hotel', 'cr@hotel.com', '1234567890', 'Seasons Hotel & Spa', 'Fatorda', 'images/hotels_images/SeasonsHotel&Spa.jpg', '0032', '0032', 9),
(33, 'David ', 'Turner', 'hotel', 'dt@hotel.com', '1234567890', 'XEC Residency', 'Gogol', 'images/hotels_images/XECResidency.jpeg', '0033', '0033', 9),
(34, 'Penelope ', 'Phillips', 'hotel', 'pp@hotel.com', '1234567890', 'Nirvana Hill Resort', 'Curtorim', 'images/hotels_images/NirvanaHillResort.jpeg', '0034', '0034', 10),
(35, 'Jackson ', 'Campbell', 'hotel', 'jc@hotel.com', '1234567890', 'Hotel Z Square', 'Vasco da Gama', 'images/hotels_images/HotelZSquare.jpeg', '0035', '0035', 8),
(36, 'Layla', 'Parker', 'hotel', 'lp@hotel.com', '1234567890', 'Bogmallo Beach Resort South Goa', 'Bogmalo', 'images/hotels_images/BogmalloBeachResort.jpeg', '0036', '0036', 8),
(37, 'Sebastian ', 'Evans', 'hotel', 'se@hotel.com', '1234567890', 'Hotel Villa De Vasco', 'Vasco da Gama', 'images/hotels_images/HotelVillaDeVasco.jpeg', '0037', '0037', 8),
(38, 'Riley ', 'Edwards', 'hotel', 're@hotel.com', '1234567890', 'Sanman Hotels, Vasco', 'Vasco da Gama', 'images/hotels_images/SanmanHotels.jpeg', '0038', '0038', 8),
(39, 'Owen ', 'Collins', 'hotel', 'oc@hotel.com', '1234567890', 'The Citadel Hotel', 'Vasco da Gama', 'images/hotels_images/TheCitadelHotel.jpeg', '0039', '0039', 8),
(40, 'Aria ', 'Stewart', 'hotel', 'as@hotel.com', '1234567890', 'ATHI RESORTS', 'Vasco da Gama', 'images/hotels_images/ATHIRESORTS.jpeg', '0040', '0040', 8),
(41, 'Jack ', 'Morris', 'hotel', 'jm@hotel.com', '1234567890', 'Hotel Karma Plaza', 'Vasco da Gama', 'images/hotels_images/Hotelkarmaplaza.jpeg', '0041', '0041', 8),
(42, 'Nora ', 'Sanchez', 'hotel', 'ns@hotel.com', '1234567890', 'Rejenta Palace Vasco Goa', 'Vasco da Gama', 'images/hotels_images/RejentaPalace.jpeg', '0042', '0042', 8),
(43, 'Julian ', 'Rivera', 'hotel', 'jr@hotel.com', '1234567890', 'Collection O Hotel Maharaja', 'Vasco da Gama', 'images/hotels_images/CollectionOHotelMaharaja.jpeg', '0043', '0043', 8),
(44, 'Scarlett ', 'Price', 'hotel', 'sp@hotel.com', '1234567890', 'Hotel Taniya', 'Vasco da Gama', 'images/hotels_images/HotelTaniya.jpeg', '0044', '0044', 8),
(45, 'Levi ', 'Torres', 'hotel', 'lt@hotel.com', '1234567890', 'DoubleTree by Hilton Goa', 'Panaji', 'images/hotels_images/DoubleTree.jpeg', '0045', '0045', 7),
(46, 'Mila ', 'Bennett', 'hotel', 'lb@hotel.com', '1234567890', 'Hotel Shaurya', 'Panaji', 'images/hotels_images/HotelShaurya.jpeg', '0046', '0046', 7),
(47, 'Wyatt ', 'Peterson', 'hotel', 'wp@hotel.com', '1234567890', 'The Fern Kadamba Hotel & Spa', 'Velha Goa', 'images/hotels_images/TheFernKadamba.jpeg', '0047', '0047', 7),
(48, 'Aurora ', 'Reed', 'hotel', 'ar@hotel.com', '1234567890', 'Hotel Omkar', 'Marcela', 'images/hotels_images/HotelOmkar.jpg', '0048', '0048', 6),
(49, 'Caleb ', 'Bailey', 'hotel', 'cb@hotel.com', '1234567890', 'Ronaldo\'s Restaurant & Hotel', 'Kadamba Plateau', 'images/hotels_images/Ronaldo\'sHotel.jpg', '0049', '0049', 6),
(50, 'Ellie', ' Cook', 'hotel', 'ec@hotel.com', '1234567890', 'Hotel Menino Executive', 'Kaziwada', 'images/hotels_images/HotelMeninoExecutive.jpeg', '0050', '0050', 6),
(51, 'Nathan ', 'Kelly', 'hotel', 'nk@hotel.com', '1234567890', 'Hotel Shakti Palace', 'Shanti Nagar', 'images/hotels_images/HotelShaktiPalace.jpeg', '0051', '0051', 6),
(52, 'Hannah', ' Morgan', 'hotel', 'hm@hotel.com', '9855468787', 'Hotel Sungrace', '', NULL, '0052', '0052', 6),
(53, 'Dylan ', 'Brooks', 'hotel', 'db@hotel.com', '9345567676', 'Hotel Padmavi', 'Khadpabandh', NULL, '0053', '0053', 6),
(54, 'Lillian ', 'Cooper', 'hotel', 'lc@hotel.com \r\n', '9567676434', 'SPOT ON 44584 Hotel Vaishali Residency', '\r\nCarambolim', NULL, '', '', NULL),
(55, 'Leo ', 'Richardson', 'hotel', 'lr@hotel.com', '12345655', 'Athome Comforts', 'Panaji', 'images/hotels_images/AthomeComforts.jpeg', '0055', '0055', 7),
(56, 'Paisley', ' Cox', 'hotel', 'pc@hotel.com', '', 'Vivanta Goa', 'Miramar', 'images/hotels_images/VivantaGoa.jpeg', 'pass56', 'pass56', 7),
(57, 'Ryan ', 'Howard', 'hotel', 'rh@hotel.com', '9912345657', 'Mateus Boutique Hotel', 'Panaji', 'images/hotels_images/MateusBoutiqueHotel.jpeg', '0057', '0057', 7),
(58, 'Addison ', 'Ward', 'hotel', 'aw@hotel.com', '9312345658', 'Varanda Do Mar', 'Panaji', 'images/hotels_images/VarandaDoMar.jpeg', '0058', '0058', 7),
(59, 'Isaiah ', 'Flores', 'hotel', 'if@hotel.com', '9312345659', 'Hotel Zillion Inn', 'Panaji', 'images/hotels_images/HotelZillionInn.jpeg', '0059', '0059', 7),
(60, 'Stella ', 'Ramirez', 'hotel', 'sr@hotel.com', '9912345660', 'Hotel Liberty', 'Panaji', 'images/hotels_images/HotelLiberty.jpeg', '0060', '0060', 7),
(61, 'Gabriel ', 'Butler', 'hotel', 'gb@hotel.com', '9612345661', 'Campal Beach Resort', 'Miramar', 'images/hotels_images/CampalBeachResort.jpeg', '0061', '0061', 7),
(62, 'Natalie ', 'Bryant', 'hotel', 'nb@hotel.com', '9312345662', 'Hotel Grande Delmon', 'Panaji', 'images/hotels_images/HotelGrandeDelmon.jpeg', '0062', '0062', 7),
(63, 'Anthony', ' Fisher', 'hotel', 'af@hotel.com', '9612345663', 'Ginger Goa', 'Panaji', 'images/hotels_images/GingerGoa.jpeg', '0063', '0063', 7),
(64, 'Savannah ', 'Morales', 'hotel', 'sm@hotel.com', '9912345664', 'Wildernest Nature Resort', 'Chorla Ghats', 'images/hotels_images/WildernestNatureResort.jpeg', '0064', '0064', 4),
(65, 'Lincoln ', 'Alexander', 'hotel', 'la@hotel.com', '9712345665', 'Hotel Wilsha', 'Karmali', 'images/hotels_images/HotelWilsha.jpeg', '0065', '0065', 7),
(66, 'Leah ', 'Russell', 'hotel', 'lr@hotel.com', '9912345666', 'The Green Boutique', 'St Cruz', 'images/hotels_images/TheGreenBoutique.jpeg', '0066', '0066', 7),
(67, 'Christopher ', 'Griffin', 'hotel', 'cg@hotel.com', '9912345667', 'Serene Waters Homestay Goa', 'Ribandar', 'images/hotels_images/SereneWatersHomestayGoa.jpeg', '0067', '0067', 7),
(68, 'Zoe ', 'Hayes', 'hotel', 'zh@hotel.com', '9912345668', 'Resort Marinha Dourada', 'Arpora', 'images/hotels_images/ResortMarinhaDourada.jpeg', '0068', '0068', 2),
(69, 'Eli ', 'Simmons', 'hotel', 'es@hotel.com', '9912345669', 'Nazri Resort & Lawns', 'Baga', 'images/hotels_images/NazriResort&Lawns.jpeg', '0069', '0069', 2),
(70, 'Brooklyn ', 'Long', 'hotel', 'bl@hotel.com', '9912345670', 'Fortune Miramar', 'Miramar', 'images/hotels_images/FortuneMiramar.jpeg', '0070', '0070', 7),
(71, 'Hunter ', 'Foster', 'hotel', 'hf@hotel.com', '9912345671', 'Grand Goa Exotica', 'Guirim', 'images/hotels_images/GrandGoaExotica.jpeg', '0071', '0071', 2),
(72, 'Lucy ', 'Powell', 'hotel', 'lp@hotel.com', '9912345672', '', 'Calangute', 'images/hotels_images/HardRockHotelGoa.jpeg', '0072', '0072', 2),
(73, 'Joshua ', 'Jenkins', 'hotel', 'jj@hotel.com', '12345673', 'Kyriad Prestige', 'Calangute', 'images/hotels_images/KyriadPrestige.jpeg', '0073', '0073', 3),
(74, 'Claire ', 'Perry', 'hotel', 'cp@hotel.com', '12345674', 'Angels Resort', 'Porvorim', 'images/hotels_images/AngelsResort.jpg', '0074', '0074', 2),
(75, 'Carter ', 'Patterson', 'hotel', 'cp@hotel.com', '12345675', 'Hotel Picnic Plaza', 'Sangolda', 'images/hotels_images/HotelPicnicPlaza.jpg', '0075', '0075', 2),
(76, 'Samantha ', 'Hughes', 'hotel', 'sh@hotel.com', '12345676', 'De Grand Riviera', 'Calangute', 'images/hotels_images/DeGrandRiviera.jpeg', '0076', '0076', 2),
(77, 'Landon ', 'Sanders', 'hotel', 'ls@hotel.com', '9866767698', 'Poonam Resort', 'Anjuna', 'images/hotels_images/PoonamResort.jpeg', '0077', '0077', 2),
(78, 'Audrey ', 'Myers', 'hotel', 'am@hotel.com', '9244568787', '3102bce - A Vedic Resort', 'Vagator', 'images/hotels_images/AVedicResort.jpeg', '0078', '0078', 2),
(79, 'Christian ', 'Ross', 'hotel', 'cr@hotel.com', '9343426565', 'Surya Sangolda - The Apartment Hotel', 'sangolda', 'images/hotels_images/SuryaSangolda.jpeg', '0079', '0079', 2),
(80, 'Violet ', 'Long', 'hotel', 'vl@hotel.com', '9234568099', 'Somy Plaza (formerly Somy Resort)', 'Calangute', 'images/hotels_images/SomyPlaza.jpeg', '0080', '0080', 2),
(81, 'Cameron ', 'Barnes', 'hotel', 'cb@hotel.com', '9912345681', 'Palacete Rodrigues - Heritage Holiday Mansion', 'Anjuna', 'images/hotels_images/HeritageHolidayMansion.jpeg', '0081', '0081', 2),
(82, 'Aurora ', 'Hughes', 'hotel', 'ah@hotel.com', '9912345682', 'Fort Tiracol Heritage Hotel', 'Tiracol', 'images/hotels_images/FortTiracolHeritageHotel.jpeg', '0082', '0082', 1),
(83, 'Adrian ', 'Freeman', 'hotel', 'af@hotel.com', '12345683', 'Span Suites and Villas', 'Agarwada', 'images/hotels_images/SpanSuitesandVillas.jpeg', '0083', '0083', 1),
(84, 'Eleanor ', 'Brooks', 'hotel', 'eb@hotel.com', '9212345684', 'Lamore Beach Resort', 'Ashvem Beach', 'images/hotels_images/LamoreBeachResort.jpeg', '0084', '0084', 1),
(85, 'Jonathan ', 'Webb', 'hotel', 'jw@hotel.com', '12345685', 'Ashvem Beach Inn', 'Ashvem', 'images/hotels_images/AshvemBeachInn.jpeg', '0085', '0085', 1),
(86, 'Ellie ', 'Bailey', 'hotel', 'eb@hotel.com', '12345686', 'Sur La Mer', 'Morjim', 'images/hotels_images/SurLaMer.jpeg', '0086', '0086', 1),
(87, ' Charles ', 'Ortiz', 'hotel', 'co@hotel.com', '9412345687', 'Cocks Town', 'Arambol', 'images/hotels_images/CocksTown.jpeg', '0087', '0087', 2),
(88, 'Hazel ', 'Diaz', 'hotel', 'hd@hotel.com', '9512345688', 'Mayem Lake View', 'Mayem', 'images/hotels_images/MayemLakeView.jpeg', '0088', '0088', 4),
(89, 'Thomas ', 'Gray', 'hotel', 'tg@hotel.com', '9912345689', 'Hotel Dattapasad', 'Vatadev', 'images/hotels_images/HotelDattapasad.jpeg', '0089', '0089', 3),
(90, 'Madison ', 'Gardner', 'hotel', 'mg@hotel.com', '9512345690', 'The Hq', 'Vasco Da Gama', 'images/hotels_images/TheHq.jpeg', '0090', '0090', 8),
(91, 'Aaron ', 'Cole', 'hotel', 'ac@hotel.com', '9812345691', 'Shambho Retreat', 'Agonda', 'images/hotels_images/ShambhoRetreat.jpeg', '0091', '0091', 12),
(92, 'Leah ', 'Riley', 'hotel', 'lr@hotel.com', '12345692', 'Robusta hotel', 'Varca', 'images/hotels_images/Robustahotel.jpeg', '0092', '0092', 9),
(93, 'Eli ', 'Lewis', 'hotel', 'el@hotel.com', '12345693', 'Johnnie Holiday Homes Mainath Bati', 'Arpora', 'images/hotels_images/JohnnieHolidayHomesMainathBati.jpeg', '0093', '0093', 2),
(94, 'Elizabeth ', 'Patterson', 'hotel', 'ep@hotel.com', '9212345694', 'di Casa Resort', 'Calangute', 'images/hotels_images/diCasaResort.jpeg', '0094', '0094', 2),
(95, 'Connor ', 'Bell', 'hotel', 'cb@hotel.com', '9912345695', 'Andaz Arambol - Artist Party Hostel', 'Arambol', 'images/hotels_images/AndazArambol.jpeg', '0095', '0095', 2),
(96, 'Samantha ', 'Cooper', 'hotel', 'sc@hotel.com', '9612345696', 'Baywatch Beach Resort', 'Patnem', 'images/hotels_images/BaywatchBeachResort.jpeg', '0096', '0096', 12),
(97, 'Jayden ', 'Perez', 'hotel', 'jp@hotel.com', '9912345697', 'The Fern Habitat', 'Candolim', 'images/hotels_images/TheFernHabitat.jpeg', '0097', '0097', 2),
(98, 'Sophie ', 'Roberts', 'hotel', 'sr@hotel.com', '9612345698', 'Origin Boutique Hotel', 'Baga', 'images/hotels_images/OriginBoutiqueHotel.jpeg', '0098', '0098', 2),
(99, 'Isaiah ', 'Hughes', 'hotel', 'ih@hotel.com', '9912345699', 'Tridiva Morjim', 'Morjim', 'images/hotels_images/TridivaMorjim.jpeg', '0099', '0099', 1),
(100, 'Lillian ', 'Jenkins', 'hotel', 'lj@hotel.com', '95123456100', 'TGI Ameya Grand', 'Panjim', 'images/hotels_images/TGIAmeyaGrand.jpeg', '0100', '0100', 7),
(101, 'Nolan ', 'Martinez', 'hotel', 'nm@hotel.com', '99123456101', 'W Goa', 'Vagator', 'images/hotels_images/WGoa.jpeg', '0101', '0101', 2),
(102, 'Avery ', 'Hernandez', 'hotel', 'ah@hotel.com', '99123456102', 'La Vera Boutique Hotel', 'Mandrem', 'images/hotels_images/LaVeraBoutiqueHotel.jpeg', '0102', '0102', 1),
(103, 'Easton ', 'Green', 'hotel', 'eg@hotel.com', '94123456103', 'JW Marriott Goa', 'Vagator', 'images/hotels_images/JWMarriott.jpeg', '0103', '0103', 2),
(104, 'Grace ', 'Phillips', 'hotel', 'gp@hotel.com', '99123456104', 'Cerca Del Mar', 'Calangute', 'images/hotels_images/CercaDelMar.jpeg', '0104', '0104', 2),
(105, 'Robert ', 'Howard', 'hotel', 'rh@hotel.com', '94123456105', 'Blue Door', 'Morjim', 'images/hotels_images/BlueDoor.jpeg', '0105', '0105', 1),
(106, 'Addison ', 'Foster', 'hotel', 'af@hotel.com', '94123456106', 'Hostel Mandala', 'Anjuna', 'images/hotels_images/HostelMandala.jpeg', '0106', '0106', 2),
(107, 'Angel ', 'Adams', 'hotel', 'aa@hotel.com', '91123456107', 'Germanium Haven', 'Arambol', 'images/hotels_images/GermaniumHaven.jpeg', '0107', '0107', 2),
(108, 'Zoey ', 'Ross', 'hotel', 'zr@hotel.com', '99123456108', 'Tropical Palms', 'Palolem', 'images/hotels_images/TropicalPalms.jpeg', '0108', '0108', 12),
(109, 'Gavin ', 'Cox', 'hotel', 'gc@hotel.com', '95123456109', 'Hotel Salty Waves Baga', 'Baga', 'images/hotels_images/HotelSaltyWaves.jpeg', '0109', '0109', 2),
(110, 'Penelope ', 'Brooks', 'hotel', 'pb@hotel.com', '99123456110', 'City Xpress Goa', 'Panjim', 'images/hotels_images/CityXpressGoa.jpeg', '0110', '0110', 7),
(111, ' Dominic ', 'Ward', 'hotel', 'dw@hotel.com', '95123456111', 'Backwoods Camp', 'Tombdi Surla', 'images/hotels_images/BackwoodsCamp.jpeg', '0111', '0111', 11),
(112, 'Scarlett ', 'Kelly', 'hotel', 'sk@hotel.com', '98123456112', 'Tanshikar Spice Farm Cottages', 'Netravali', 'images/hotels_images/TanshikarSpiceFarmCottages.jpeg', '0112', '0112', 11),
(113, 'Brayden ', 'Bryant', 'hotel', 'bb@hotel.com', '99123456113', 'Tanishkar Guest House', 'Netravali', 'images/hotels_images/TanishkarGuestHouse.jpeg', '0113', '0113', 11),
(114, 'Paisley ', 'Hayes', 'hotel', 'ph@hotel.com', '95123456114', 'Dudhsagar Plantation', 'Mollem', 'images/hotels_images/DudhsagarPlantation.jpeg', '0114', '0114', 11),
(115, 'Cooper ', 'Peterson', 'hotel', 'cp@hotel.com', '95123456115', 'Casa De Royale- Boutique Resort', 'Zhor Vaddo', 'images/hotels_images/CasaDeRoyale.jpeg', '0115', '0115', 11),
(116, 'Harper ', 'Richardson', 'hotel', 'hr@hotel.com', '98123456116', 'Mangaal Farmstay Goa', 'Mangaal', 'images/hotels_images/MangaalFarmstayGoa.jpeg', '0116', '0116', 10),
(117, 'Jordan ', 'Patterson', 'hotel', 'jp@hotel.com', '99123456117', 'Neemrana\'s Three Waters', 'Betul', 'images/hotels_images/Neemrana\'sThreeWaters.jpeg', '0117', '0117', 10),
(118, 'Stella ', 'Hughes', 'hotel', 'sh@hotel.com', '99123456118', 'Sterling Goa Varca', 'Varca', 'images/hotels_image/SterlingGoaVarca.jpeg', '0118', '0118', 9),
(119, 'Luke', ' Bell', 'hotel', 'lb@hotel.com', '95123456119', 'Country Inn Tarika', 'Varca', 'images/hotels_images/CountryInnTarika.jpeg', '0119', '0119', 9),
(120, 'Ellie ', 'Carter', 'hotel', 'ec@hotel.com', '95123456120', 'Sea Breeze Max Resort & Spa', 'Varca', 'images/hotels_images/SeaBreezeMaxResort&Spa.jpeg', '0120', '0120', 9),
(122, 'Josiah ', 'Gray', 'hotel', 'jg@hotel.com', '99123456122', 'Treehouse Silken Sands Hotel', 'Benaulim', 'images/hotels_images/TreehouseSilkenSandsHotel.jpeg', '0122', '0122', 9),
(123, 'Lucy ', 'Green', 'hotel', 'lg@hotel.com', '9612345612', 'Azaya Pool Suites', 'Benaulim', 'images/hotels_images/AzayaPoolSuites.jpeg', '0123', '0123', 9),
(124, 'Brandon ', 'Martinez', 'hotel', 'bm@hotel.com', '9912345612', 'Fortune Resort', 'Benaulim', 'images/hotels_images/FortuneResort.jpeg', '0124', '0124', 9),
(125, 'Savannah ', 'Bailey', 'hotel', 'sb@hotel.com', '9123456125', 'Fabhotel Grand Royal Palms', 'Benaulim', 'images/hotels_images/FabhotelGrandRoyalPalms.jpeg', '0125', '0125', 9),
(126, 'Tyler ', 'Murphy', 'hotel', 'tm@hotel.com', '9123456126', 'Rendezvous Place-', 'Varca', 'images/hotels_images/RendezvousPlace.jpeg', '0126', '0126', 9),
(128, 'Bella ', 'Rutherford', 'bus', 'br@bus.com', '8834534534', 'Kadamba Transport Corporation Limited  (KTCL)  - 97386\n', 'Borivali West\r\n', 'images/bus_images/KadambaTransportCorporationLimited.jpeg', '1002', '1002', 1),
(129, 'Cody', ' Sinclair', 'bus', 'cs@bus.com', '9455652345', 'IntrCity SmartBus', 'Borivali West', 'images/bus_images/IntrCitySmartBus.jpeg', '1003', '1003', 1),
(130, 'Danielle ', 'Trent', 'bus', 'dt@bus.com', '934435345', 'zingbus', 'Borivali West', 'images/bus_images/zingbus.jpg', '1004', '1004', 1),
(135, 'Isaac ', 'York', 'bus', 'iy@bus.com', '9934534543', 'Dolphin Travel House ', 'Borivali West', 'images/bus_images/DolphinTravelHouse.jpeg', '1009', '1009', 1),
(136, 'Jasmine ', 'Ziegler', 'bus', 'jz@bus.com', '9976556555', 'Jolly Tours and Travels', 'Sion', 'images/bus_images/JollyToursandTravels.jpeg', '1010', '1010', 1),
(137, 'Kyle ', 'Archer', 'bus', 'ka@bus.com', '9942536565', 'travels', 'Patancheru', 'images/bus_images/VRLTravels.jpeg', '1011', '1011', 1),
(144, 'Rachel ', 'Hale', 'bus', 'rh@bus.com', '8344657673', 'Orange Tours And Travels', 'Habsiguda', 'images/bus_images/OrangeToursAndTravels.jpeg', '1018', '1018', 1),
(145, 'Simon ', 'Ivy', 'bus', 'si@bus.com', '9266767624', 'Orange Tours and Travels Grand', 'Miyapur', 'images/bus_images/OrangeToursAndTravels.jpeg', '1019', '1019', 1),
(146, 'Tara ', 'Jenkins', 'bus', 'tj@bus.com', '9366756453', 'Northern Travels', 'Lakdikapul', 'images/bus_images/NorthernTravels.jpeg', '1020', '1020', 1),
(147, 'Ulysses ', 'Knox', 'bus', 'uk@bus.com', '9255635456', 'BTR Travels', 'NIZAMPET', 'images/bus_images/BTRTravels.jpeg', '1021', '1021', 1),
(148, 'Valerie ', 'Lane', 'bus', 'vl@bus.com', '8935442543', 'Shirdi Xpress', 'Paradise', 'images/bus_images/ShirdiXpress.jpeg', '1022', '1022', 1),
(149, 'Wyatt ', 'Moore', 'bus', 'wm@bus.com', '9344756763', 'NEW DHEERAJ TOURS AND TRAVELS', 'Zaheerabad', 'images/bus_images/NEWDHEERAJTOURSANDTRAVELS.jpeg', '1023', '1023', 1),
(150, ' Zachary ', 'Peterson', 'bus', 'zp@bus.com', '8455656576', 'PVS Tours and Travels', 'Paradise', 'images/bus_images/PVSToursandTravels.jpeg', '1026', '1026', 1),
(153, 'Amanda ', 'Quintero', 'bus', 'Om Sri Tours and Travels@example.com', '983354656', 'Om Sri Tours and Travels', 'Ramoji Film City', 'images/bus_images/OmSriToursandTravels.jpeg', '1027', '1027', 1),
(154, 'Brandon', ' Reynolds', 'bus', 'br@bus.com', '945565654', 'GOWTHAMI TOURS AND TRAVELS', 'Miyapur', 'images/bus_images/GOWTHAMITOURSANDTRAVELS.jpg', '1028', '1028', 1),
(155, 'Caroline ', 'Stevens', 'bus', 'cs@bus.com', '9344253454', 'R National Travels', 'Mehdipatnam', 'images/bus_images/RNationalTravels.jpeg', '1029', '1029', 1),
(165, 'Molly ', 'Carter', 'bus', 'mc@bus.com', '0000000000', 'Orange Tours and Travels Grand', 'Habsiguda', 'images/bus_images/OrangeToursAndTravels.jpeg', '1039', '1039', 1),
(178, 'zana', 'Paulson', 'bus', 'zp@bus.com', '9566565653', 'VRL Travels', 'Lakdikapool-Opposite Metro ', 'images/bus_images/VRLTravels.jpeg', '1052', '1052', 1),
(179, 'Adam', 'Quigley', 'train', 'aq@train.com', '9821456325', 'Express Rail', 'Margao', '', '2000', '2000', 9),
(180, 'Brooke', 'Roberts', 'train', 'br@train.com', '9344545456', 'Goa Express', 'Margao', '', '2001', '2001', 9),
(181, 'Charles', 'Stewart', 'train', 'cs@train.com', '9344545457', ' Konkan Kanya Express', 'Mumbai', '', '2002', '2002', 9),
(182, 'Diana', 'Thompson', 'train', 'dt@train.com', '9344545458', 'Goa Sampark Kranti Express', 'Chennai', '', '2003', '2003', 9),
(183, 'Ethan', 'Underhill', 'train', 'eu@train.com', '9344545459', 'Goa Velankanni Express', 'Kolkata', '', '2004', '2004', 9),
(184, 'Felicia', 'Vance', 'train', 'fv@train.com', '9344545460', 'Mandovi Express', 'Delhi', '', '2005', '2005', 9),
(185, 'George', 'Wilson', 'train', 'gw@train.com', '9344545461', 'Goa Carnival Express', 'Pune', '', '2006', '2006', 9),
(186, 'Haley', 'Xu', 'train', 'hx@train.com', '9344545462', 'Goa Superfast Express', 'Jaipur', '', '2007', '2007', 9),
(187, 'Ian', 'Young', 'train', 'iy@train.com', '9344545463', 'Goa Special', 'Bangalore', '', '2008', '2008', 9),
(188, 'Julia', 'Zimmerman', 'train', 'jz@train.com', '9344545464', 'Goa Rajdhani Express', 'Ahmedabad', '', '2009', '2009', 9),
(189, 'Kevin', 'Allen', 'train', 'ka@train.com', '9344545465', 'Goa Duronto Express', 'Hajipur', '', '2010', '2010', 9),
(190, 'Lauren', 'Benson', 'train', 'lb@train.com', '9344545466', 'Goa Jan Shatabdi Express', 'Jabalpur', '', '2011', '2011', 9),
(191, 'Michael', 'Campbell', 'train', 'mc@train.com', '9344545467', 'Goa Garib Rath Express', 'Secunderabad', '', '2012', '2012', 9),
(192, 'Nancy', 'Davies', 'train', 'nd@train.com', '9344545468', 'Goa Nizamuddin Express', 'Allahabad', '', '2013', '2013', 9),
(193, 'Owen', 'Evans', 'train', 'oe@train.com', '9344545469', 'Goa Chennai Express', 'Bilaspur', '', '2014', '2014', 9),
(194, 'Penelope', 'Fox', 'train', 'pf@train.com', '9344545470', 'Goa Secunderabad Express', 'Maligaon', '', '2015', '2015', 9),
(195, 'Quentin', 'Garcia', 'train', 'qg@train.com', '9344545471', 'Goa Howrah Express', 'Guwahati', '', '2016', '2016', 9),
(196, 'Ryan', 'Harris', 'train', 'rh@train.com', '9344545472', 'Goa Guwahati Express', 'Mumbai', '', '2017', '2017', 9),
(197, 'Sophia', 'Ivers', 'train', 'si@train.com', '9344545473', 'Goa Indore Express', 'Chennai', '', '2018', '2018', 9),
(198, 'Trevor', 'Jackson', 'train', 'tj@train.com', '9344545474', 'Goa Jabalpur Express', 'Kolkata', '', '2019', '2019', 9),
(199, 'Ursula', 'King', 'train', 'uk@train.com', '9344545475', 'Goa Varanasi Express', 'Delhi', '', '2020', '2020', 9),
(200, 'Victoria', 'Lewis', 'train', 'vl@train.com', '9344545476', 'Goa Gorakhpur Express', 'Pune', '', '2021', '2021', 9),
(201, 'William', 'Morris', 'train', 'wm@train.com', '9344545477', 'Goa Udaipur Express', 'Jaipur', '', '2022', '2022', 9),
(202, 'Xenia', 'Nelson', 'train', 'xn@train.com', '9344545478', 'Goa Ajmer Express', 'Bangalore', '', '2023', '2023', 9),
(203, 'Yvonne', 'Owens', 'train', 'yo@train.com', '9344545479', 'Goa Ranchi Express', 'Ahmedabad', '', '2024', '2024', 9),
(204, 'Zander', 'Price', 'train', 'zp@train.com', '9344545480', 'Goa Nagpur Express', 'Hajipur', '', '2025', '2025', 9),
(205, 'Alice', 'Quinn', 'train', 'aq@train.com', '9344545481', 'Goa Raipur Express', 'Jabalpur', '', '2026', '2026', 9),
(206, 'Benjamin', 'Reynolds', 'train', 'br@train.com', '9344545482', 'Goa Jodhpur Express', 'Secunderabad', '', '2027', '2027', 9),
(207, 'Chloe', 'Smith', 'train', 'cs@train.com', '9344545483', 'Goa Bhubaneswar Express', 'Allahabad', '', '2028', '2028', 9),
(208, 'David', 'Taylor', 'train', 'dt@train.com', '9344545484', 'Goa Kanpur Express', 'Bilaspur', '', '2029', '2029', 9),
(209, 'Emma', 'Upton', 'train', 'eu@train.com', '9344545485', 'Goa Surat Express', 'Maligaon', '', '2030', '2030', 9),
(210, 'Frank', 'Vincent', 'train', 'fv@train.com', '9344545486', 'Goa Amritsar Express', 'Guwahati', '', '2031', '2031', 9),
(211, 'Grace', 'Walker', 'train', 'gw@train.com', '9344545487', 'Goa Jabalpur Express', 'Mumbai', '', '2032', '2032', 9),
(212, 'Harry', 'Xander', 'train', 'hx@train.com', '9344545488', 'Goa Bilaspur Express', 'Chennai', '', '2033', '2033', 9),
(213, 'Isabella', 'York', 'train', 'iy@train.com', '9344545489', 'Goa Ajmer Express', 'Kolkata', '', '2034', '2034', 9),
(214, 'Jack', 'Zane', 'train', 'jz@train.com', '9344545490', 'Goa Gwalior Express', 'Delhi', '', '2035', '2035', 9),
(215, 'Kimberly', 'Adams', 'train', 'ka@train.com', '9344545491', 'Goa Haridwar Express', 'Pune', '', '2036', '2036', 9),
(216, 'Lucas', 'Barnes', 'train', 'lb@train.com', '9344545492', 'Goa Coimbatore Express', 'Jaipur', '', '2037', '2037', 9),
(217, 'Madison', 'Clarke', 'train', 'mc@train.com', '9344545493', 'Goa Lucknow Express', 'Bangalore', '', '2038', '2038', 9),
(218, 'Nathaniel', 'Dixon', 'train', 'nd@train.com', '9344545494', 'Goa Bhopal Express', 'Ahmedabad', '', '2039', '2039', 9),
(219, 'Olivia', 'Edwards', 'train', 'oe@train.com', '9344545495', 'Goa Pune Express', 'Hajipur', '', '2040', '2040', 9),
(220, 'Paul', 'Foster', 'train', 'pf@train.com', '9344545496', 'Goa Chandigarh Express', 'Jabalpur', '', '2041', '2041', 9),
(221, 'Rebecca', 'Hart', 'train', 'rh@train.com', '9344545497', 'Goa Vadodara Express', 'Vadodara', '', '2042', '2042', 9),
(222, 'Simon', 'Irwin', 'train', 'si@train.com', '9344545498', 'Goa Rameswaram Express', 'Rameswaram', '', '2043', '2043', 9),
(223, 'Tabitha', 'James', 'train', 'tj@train.com', '9344545499', 'Goa Mangalore Express', 'Mangalore', '', '2044', '2044', 9),
(224, 'Uriel', 'Knight', 'train', 'uk@train.com', '9344545500', 'Goa Tirupati Express', 'Tirupati', '', '2045', '2045', 9),
(225, 'Veronica', 'Lowe', 'train', 'vl@train.com', '9344545501', 'Goa Vijayawada Express', 'Vijayawada', '', '2046', '2046', 9),
(226, 'Wesley', 'Mitchell', 'train', 'wm@train.com', '9344545502', 'Goa Kochi Express', 'Kochi', '', '2047', '2047', 9),
(227, 'Xander', 'North', 'train', 'xn@train.com', '9344545503', 'Goa Jaipur Express', 'Jaipur', '', '2048', '2048', 9),
(228, 'Yasmin', 'Oliver', 'train', 'yo@train.com', '9344545504', 'Goa Jaisalmer Express', 'Jaisalmer', '', '2049', '2049', 9),
(229, 'Zachary', 'Parker', 'train', 'zp@train.com', '9344545505', 'Goa Kathgodam Express', 'Kathgodam', '', '2050', '2050', 9),
(230, 'Allison', 'Quade', 'train', 'aq@train.com', '9344545506', 'Goa Bareilly Express', 'Bareilly', '', '2051', '2051', 9),
(231, 'Brandon', 'Ross', 'train', 'br@train.com', '9344545507', 'Goa Dehradun Express', 'Dehradun', '', '2052', '2052', 9),
(232, 'Caitlin', 'Sanders', 'train', 'cs@train.com', '9344545508', 'Goa Mathura Express', 'Mathura', '', '2053', '2053', 9),
(233, 'Dennis', 'Thompson', 'train', 'dt@train.com', '9344545509', 'Goa Bhuj Express', 'Bhuj', '', '2054', '2054', 9),
(234, 'Elise', 'Underwood', 'train', 'eu@train.com', '9344545510', 'Goa Bikaner Express', 'Bikaner', '', '2055', '2055', 9),
(235, 'Frederick', 'Vance', 'train', 'fv@train.com', '9344545511', 'Goa Gorakhpur Express', 'Gorakhpur', '', '2056', '2056', 9),
(236, 'Gregory', 'White', 'train', 'gw@train.com', '9344545512', 'Goa Meerut Express', 'Meerut', '', '2057', '2057', 7),
(237, 'Hannah', 'Xavier', 'train', 'hx@train.com', '9344545513', 'Goa Shimla Express', 'Shimla', '', '2058', '2058', 7),
(238, 'Isaac', 'Young', 'train', 'iy@train.com', '9344545514', 'Goa Darbhanga Express', 'Darbhanga', '', '2059', '2059', 9),
(239, 'Jessica', 'Zane', 'train', 'jz@train.com', '9344545515', 'Goa Gaya Express', 'Gaya', '', '2060', '2060', 9),
(240, 'Kenneth', 'Andrews', 'train', 'ka@train.com', '9344545516', 'Goa Bhagalpur Express', 'Bhagalpur', '', '2061', '2061', 9),
(241, 'Lily', 'Brown', 'train', 'lb@train.com', '9344545517', 'Goa Rishikesh Express', 'Rishikesh', '', '2062', '2062', 7),
(242, 'Mason', 'Carter', 'train', 'mc@train.com', '9344545518', 'Goa Kanyakumari Express', 'Kanyakumari', '', '2563', '2063', 9),
(243, 'Natalie', 'Dean', 'train', 'nd@train.com', '9344545519', 'Goa Alappuzha Express', 'Alappuzha', '', '2064', '2064', 9),
(244, 'Owen', 'Ellison', 'train', 'oe@train.com', '9344545520', 'Goa Madurai Express', 'Madurai', '', '2065', '2065', 9),
(245, 'Piper', 'Franklin', 'train', 'pf@train.com', '9344545521', 'Goa Palakkad Express', 'Palakkad', '', '2067', '2067', 9),
(246, 'Quentin', 'Green', 'train', 'qg@train.com', '9344545522', 'Goa Tiruchirapalli Express', 'Tiruchirapalli', '', '2068', '2068', 9),
(247, 'Riley', 'Hayes', 'train', 'rh@train.com', '9344545523', 'Goa Mangaluru Express', 'Mangaluru', '', '2069', '2069', 9),
(248, 'Samuel', 'Iverson', 'train', 'si@train.com', '9344545524', 'Goa Kochuveli Express', 'Kochuveli', '', '2070', '2070', 9),
(249, 'Tessa', 'Johnson', 'train', 'tj@train.com', '9344545525', 'Goa Kannur Express', 'Kannur', '', '2071', '2071', 9),
(250, 'Ulrich', 'Kennedy', 'train', 'uk@train.com', '9344545526', 'Goa Haridwar Express', 'Haridwar', '', '2072', '2072', 9),
(251, 'Vanessa', 'Lane', 'train', 'vl@train.com', '9344545527', 'Goa Dharamshala Express', 'Dharamshala', '', '2073', '2073', 9),
(252, 'Wesley', 'Myers', 'train', 'wm@train.com', '9344545528', 'Goa Vrindavan Express', 'Vrindavan', '', '2074', '2074', 9),
(253, 'Xander', 'Nixon', 'train', 'xn@train.com', '9344545529', 'Goa Nanded Express', 'Nanded', '', '2075', '2075', 9),
(254, 'Yasmine', 'Owens', 'train', 'yo@train.com', '9344545530', 'Goa Muzaffarpur Express', 'Muzaffarpur', '', '2076', '2076', 9),
(255, 'Zachary', 'Powell', 'train', 'zp@train.com', '9344545531', 'Goa Jabalpur Express', 'Jabalpur', '', '2077', '2077', 9),
(256, 'Amanda', 'Quintero', 'train', 'aq@train.com', '9344545532', 'Goa Surat Express', 'Surat', '', '2078', '2078', 9),
(257, 'Brian', 'Reynolds', 'train', 'br@train.com', '9344545533', 'Goa Kanpur Express', 'Kanpur', '', '1079', '2079', 9),
(260, 'Aaron', 'Bennett', 'flight', 'ab@flight.com', '9821456325', 'Air India Express', 'Dabolim', '', '3000', '3000', 7),
(265, 'Kaitlyn', 'Lewis', 'flight', 'kl@flight.com', '9234567890', 'IndiGo', 'Dabolim', '', '3005', '3005', 7),
(270, 'Elijah', 'Freeman', 'flight', 'ef@flight.com', '9789012345', 'SpiceJet', 'Dabolim', '', '3010', '3010', 7),
(272, 'Jack', 'Kelly', 'flight', 'jk@flight.com', '8000123456', 'GoAir', 'Dabolim', '', '3012', '3012', 7),
(282, 'Xavier', 'York', 'flight', 'xy@flight.com', '7773456789', 'Vistara', 'Dabolim', '', '3022', '3022', 7),
(289, 'Emily', 'Johnson', 'rental', 'ej@rental.com', '9821456325', 'Fatima Self Drive Car Rental', 'Davorlim', '', '4000', '4000', 9),
(290, 'Liam', 'Thompson', 'rental', 'lt@rental.com', '9821456326', 'Rent Wheels Goa Car Rental', 'Davorlim', '', '4001', '4001', 9),
(291, 'Olivia', 'Martinez', 'rental', 'om@rental.com', '9821456327', 'Rajesh Bike & Car Rental Goa', 'vasco de gama', '', '4002', '4002', 8),
(292, 'Ethan', 'Wilson', 'rental', 'ew@rental.com', '9821456328', 'Sagar Rental Bikes & Cars', 'Margao', '', '4003', '4003', 9),
(293, 'Ava', 'Anderson', 'rental', 'aa@rental.com', '9821456329', 'Goa Bike and Car Rental', 'Margao', '', '4004', '4004', 9),
(294, 'Noah', 'Thomas', 'rental', 'nt@rental.com', '9821456330', 'Ketan Rental Bikes and Cars Anjuna Goa', 'Anjuna', '', '4005', '4005', 2),
(295, 'Isabella', 'Harris', 'rental', 'ih@rental.com', '9821456331', 'Yuvraj Rent a car/bike', 'Margao', '', '4006', '4006', 9),
(296, 'Mason', 'White', 'rental', 'mw@rental.com', '9821456332', 'G3 CARS & BIKE RENTAL', 'Candolim', '', '4007', '4007', 2),
(297, 'Sophia', 'Davis', 'rental', 'sd@rental.com', '9821456333', 'Santosh Cars and Bike Rentals Goa', 'Margao', '', '4008', '4008', 9),
(298, 'Logan', 'Rodriguez', 'rental', 'lr@rental.com', '9821456334', 'Exotic car & bike rental', 'Dabolim', '', '4009', '4009', 7),
(299, 'Mia', 'Garcia', 'rental', 'mg@rental.com', '9821456335', 'Sohail Rental Bikes And Cars', 'Margao', '', '4010', '4010', 9),
(300, 'Lucas', 'Martinez', 'rental', 'lm@rental.com', '9821456336', 'Sahil Car And Bike Rental', 'Davorlim', '', '4011', '4011', 9),
(301, 'Amelia', 'Taylor', 'rental', 'at@rental.com', '9821456337', 'Speed Goa', 'Porvorim', '', '4012', '4012', 7),
(302, 'Oliver', 'Jackson', 'rental', 'oj@rental.com', '9821456338', 'Mahesh car n bike for rent', 'Margao', '', '4013', '4013', 9),
(303, 'Harper', 'Brown', 'rental', 'hb@rental.com', '9821456339', 'S.S BIKES AND CAR RENTALS GOA', 'Cavelossim', '', '4014', '4014', 9),
(304, 'Elijah', 'Moore', 'rental', 'em@rental.com', '9821456340', 'Arnav Kumar rent bike and rent car service', 'Margao', '', '4015', '4015', 9),
(305, 'Charlotte', 'Lee', 'rental', 'cl@rental.com', '9821456341', 'Lobo Car Rentals Goa', 'Candolim', '', '4016', '4016', 2),
(306, 'Jacob', 'Perez', 'rental', 'jp@rental.com', '9821456342', 'Avi rent a bike and car', 'Vasco da Gama', '', '4017', '4017', 9),
(307, 'Abigail', 'Lewis', 'rental', 'al@rental.com', '9821456343', 'Jagdish Bike & Car Rental', 'Margao', '', '4018', '4018', 9),
(308, 'Michael', 'Allen', 'rental', 'ma@rental.com', '9821456344', 'Clinton Car and Bike Rentals', 'Varca', '', '4019', '4019', 9),
(309, 'Elizabeth', 'Young', 'rental', 'ey@rental.com', '9821456345', 'Sai krupa Rent A CaB', 'Vasco de Gama', '', '4020', '4020', 8),
(310, 'James', 'Scott', 'rental', 'js@rental.com', '9821456346', 'Prakash Rent a Car/bike/scooty Margao Goa', 'Margao', '', '4021', '4021', 9),
(311, 'Evelyn', 'Wright', 'rental', 'ewr@rental.com', '9821456347', 'BASU RENTAL CARS SERVICES', 'Margao', '', '4022', '4022', 9),
(312, 'Benjamin', 'King', 'rental', 'bk@rental.com', '9821456348', 'Laxmi rent a bike & car taxi service', 'Siolim', '', '4023', '4023', 2),
(313, 'Emma', 'Adams', 'rental', 'ea@rental.com', '9821456349', 'Sayyed Car & Bike Rentals', 'Aquem', '', '4024', '4024', 9),
(314, 'William', 'Turner', 'rental', 'wt@rental.com', '9821456350', 'Farhan car and bike rentals', 'panjim', '', '4025', '4025', 7),
(315, 'Grace', 'Baker', 'rental', 'gb@rental.com', '9821456351', 'Salim Car & Bike Rentals', 'Dabolim', '', '4026', '4026', 7),
(316, 'Alexander', 'Hill', 'rental', 'ah@rental.com', '9821456352', 'Popular Rent Bike & Car', 'Margao', '', '4027', '4027', 9),
(317, 'Madison', 'Ward', 'rental', 'mw@rental.com', '9821456353', 'Royal Car & Bike Rental', 'Vasco', '', '4028', '4028', 8),
(318, 'Samuel', 'Clark', 'rental', 'sc@rental.com', '9821456354', 'Prince Travels', 'Goa', '', '4029', '4029', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `beach_activities`
--
ALTER TABLE `beach_activities`
  ADD PRIMARY KEY (`beach_activities_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `booked_bus`
--
ALTER TABLE `booked_bus`
  ADD PRIMARY KEY (`booked_bus_id`),
  ADD KEY `bus_id` (`bus_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `fk_cust_id` (`cust_id`);

--
-- Indexes for table `booked_flights`
--
ALTER TABLE `booked_flights`
  ADD PRIMARY KEY (`booked_flight_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `booked_hotel`
--
ALTER TABLE `booked_hotel`
  ADD PRIMARY KEY (`booked_hotel_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `booked_train`
--
ALTER TABLE `booked_train`
  ADD PRIMARY KEY (`booked_train_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booked_vehicle_rentals`
--
ALTER TABLE `booked_vehicle_rentals`
  ADD PRIMARY KEY (`booked_vehicle_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `vehicle_rental_id` (`vehicle_rental_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `itinerary_id` (`token_id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bus_id`),
  ADD KEY `fk_bus_vendor_id` (`vendor_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `fk_flights_vendor_id` (`vendor_id`);

--
-- Indexes for table `hiking`
--
ALTER TABLE `hiking`
  ADD PRIMARY KEY (`hiking_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `historic`
--
ALTER TABLE `historic`
  ADD PRIMARY KEY (`historic_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `fk_hotels_vendor_id` (`vendor_id`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`itinerary_id`),
  ADD KEY `token_id` (`token_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `museum`
--
ALTER TABLE `museum`
  ADD PRIMARY KEY (`museum_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `nightlife`
--
ALTER TABLE `nightlife`
  ADD PRIMARY KEY (`nightlife_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `payments_ibfk_2` (`booking_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`shopping_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `sightseeing`
--
ALTER TABLE `sightseeing`
  ADD PRIMARY KEY (`sightseeing_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`train_id`),
  ADD KEY `fk_trains_vendor_id` (`vendor_id`);

--
-- Indexes for table `vehicle_rental`
--
ALTER TABLE `vehicle_rental`
  ADD PRIMARY KEY (`vehicle_rental_id`),
  ADD KEY `fk_vehicle_rental_vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `location_id` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `beach_activities`
--
ALTER TABLE `beach_activities`
  MODIFY `beach_activities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booked_bus`
--
ALTER TABLE `booked_bus`
  MODIFY `booked_bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booked_flights`
--
ALTER TABLE `booked_flights`
  MODIFY `booked_flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booked_hotel`
--
ALTER TABLE `booked_hotel`
  MODIFY `booked_hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booked_train`
--
ALTER TABLE `booked_train`
  MODIFY `booked_train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booked_vehicle_rentals`
--
ALTER TABLE `booked_vehicle_rentals`
  MODIFY `booked_vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `hiking`
--
ALTER TABLE `hiking`
  MODIFY `hiking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `historic`
--
ALTER TABLE `historic`
  MODIFY `historic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `itinerary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nightlife`
--
ALTER TABLE `nightlife`
  MODIFY `nightlife_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1116;

--
-- AUTO_INCREMENT for table `shopping`
--
ALTER TABLE `shopping`
  MODIFY `shopping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `vehicle_rental`
--
ALTER TABLE `vehicle_rental`
  MODIFY `vehicle_rental_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beach_activities`
--
ALTER TABLE `beach_activities`
  ADD CONSTRAINT `beach_activities_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `booked_bus`
--
ALTER TABLE `booked_bus`
  ADD CONSTRAINT `booked_bus_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`),
  ADD CONSTRAINT `booked_bus_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `fk_cust_id` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `booked_flights`
--
ALTER TABLE `booked_flights`
  ADD CONSTRAINT `booked_flights_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`),
  ADD CONSTRAINT `booked_flights_ibfk_3` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `booked_flights_ibfk_4` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `booked_hotel`
--
ALTER TABLE `booked_hotel`
  ADD CONSTRAINT `booked_hotel_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  ADD CONSTRAINT `booked_hotel_ibfk_3` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `booked_hotel_ibfk_4` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `booked_train`
--
ALTER TABLE `booked_train`
  ADD CONSTRAINT `booked_train_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `booked_train_ibfk_2` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`),
  ADD CONSTRAINT `booked_train_ibfk_3` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `booked_vehicle_rentals`
--
ALTER TABLE `booked_vehicle_rentals`
  ADD CONSTRAINT `booked_vehicle_rentals_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `booked_vehicle_rentals_ibfk_2` FOREIGN KEY (`vehicle_rental_id`) REFERENCES `vehicle_rental` (`vehicle_rental_id`),
  ADD CONSTRAINT `booked_vehicle_rentals_ibfk_3` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`token_id`) REFERENCES `token` (`token_id`);

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `fk_bus_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `docs`
--
ALTER TABLE `docs`
  ADD CONSTRAINT `docs_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `fk_flights_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `hiking`
--
ALTER TABLE `hiking`
  ADD CONSTRAINT `hiking_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `historic`
--
ALTER TABLE `historic`
  ADD CONSTRAINT `historic_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `fk_hotels_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`),
  ADD CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD CONSTRAINT `itinerary_ibfk_1` FOREIGN KEY (`token_id`) REFERENCES `token` (`token_id`);

--
-- Constraints for table `museum`
--
ALTER TABLE `museum`
  ADD CONSTRAINT `fk_museum_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `nightlife`
--
ALTER TABLE `nightlife`
  ADD CONSTRAINT `nightlife_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `shopping`
--
ALTER TABLE `shopping`
  ADD CONSTRAINT `fk_shopping_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `sightseeing`
--
ALTER TABLE `sightseeing`
  ADD CONSTRAINT `sightseeing_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `token_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `trains`
--
ALTER TABLE `trains`
  ADD CONSTRAINT `fk_trains_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `vehicle_rental`
--
ALTER TABLE `vehicle_rental`
  ADD CONSTRAINT `fk_vehicle_rental_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
