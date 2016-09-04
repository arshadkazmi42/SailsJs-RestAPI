-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 04, 2016 at 04:03 PM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arshad`
--

-- --------------------------------------------------------

--
-- Table structure for table `battles`
--

CREATE TABLE `battles` (
  `id` int(11) NOT NULL,
  `name` varchar(52) DEFAULT NULL,
  `year` int(3) DEFAULT NULL,
  `battle_number` int(2) DEFAULT NULL,
  `attacker_king` varchar(24) DEFAULT NULL,
  `defender_king` varchar(24) DEFAULT NULL,
  `attacker_1` varchar(27) DEFAULT NULL,
  `attacker_2` varchar(9) DEFAULT NULL,
  `attacker_3` varchar(7) DEFAULT NULL,
  `attacker_4` varchar(6) DEFAULT NULL,
  `defender_1` varchar(16) DEFAULT NULL,
  `defender_2` varchar(9) DEFAULT NULL,
  `defender_3` varchar(10) DEFAULT NULL,
  `defender_4` varchar(10) DEFAULT NULL,
  `attacker_outcome` varchar(4) DEFAULT NULL,
  `battle_type` varchar(14) DEFAULT NULL,
  `major_death` varchar(1) DEFAULT NULL,
  `major_capture` varchar(1) DEFAULT NULL,
  `attacker_size` varchar(6) DEFAULT NULL,
  `defender_size` varchar(5) DEFAULT NULL,
  `attacker_commander` varchar(95) DEFAULT NULL,
  `defender_commander` varchar(109) DEFAULT NULL,
  `summer` varchar(1) DEFAULT NULL,
  `location` varchar(36) DEFAULT NULL,
  `region` varchar(15) DEFAULT NULL,
  `note` varchar(257) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `battles`
--

INSERT INTO `battles` (`id`, `name`, `year`, `battle_number`, `attacker_king`, `defender_king`, `attacker_1`, `attacker_2`, `attacker_3`, `attacker_4`, `defender_1`, `defender_2`, `defender_3`, `defender_4`, `attacker_outcome`, `battle_type`, `major_death`, `major_capture`, `attacker_size`, `defender_size`, `attacker_commander`, `defender_commander`, `summer`, `location`, `region`, `note`) VALUES
(1, 'Battle of the Golden Tooth', 298, 1, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Lannister', '', '', '', 'Tully', '', '', '', 'win', 'pitched battle', '1', '0', '15000', '4000', 'Jaime Lannister', 'Clement Piper, Vance', '1', 'Golden Tooth', 'The Westerlands', ''),
(2, 'Battle at the Mummer\'s Ford', 298, 2, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Lannister', '', '', '', 'Baratheon', '', '', '', 'win', 'ambush', '1', '0', '', '120', 'Gregor Clegane', 'Beric Dondarrion', '1', 'Mummer\'s Ford', 'The Riverlands', ''),
(3, 'Battle of Riverrun', 298, 3, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Lannister', '', '', '', 'Tully', '', '', '', 'win', 'pitched battle', '0', '1', '15000', '10000', 'Jaime Lannister, Andros Brax', 'Edmure Tully, Tytos Blackwood', '1', 'Riverrun', 'The Riverlands', ''),
(4, 'Battle of the Green Fork', 298, 4, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Stark', '', '', '', 'Lannister', '', '', '', 'loss', 'pitched battle', '1', '1', '18000', '20000', 'Roose Bolton, Wylis Manderly, Medger Cerwyn, Harrion Karstark, Halys Hornwood', 'Tywin Lannister, Gregor Clegane, Kevan Lannister, Addam Marbrand', '1', 'Green Fork', 'The Riverlands', ''),
(5, 'Battle of the Whispering Wood', 298, 5, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Stark', 'Tully', '', '', 'Lannister', '', '', '', 'win', 'ambush', '1', '1', '1875', '6000', 'Robb Stark, Brynden Tully', 'Jaime Lannister', '1', 'Whispering Wood', 'The Riverlands', ''),
(6, 'Battle of the Camps', 298, 6, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Stark', 'Tully', '', '', 'Lannister', '', '', '', 'win', 'ambush', '0', '0', '6000', '12625', 'Robb Stark, Tytos Blackwood, Brynden Tully', 'Lord Andros Brax, Forley Prester', '1', 'Riverrun', 'The Riverlands', ''),
(7, 'Sack of Darry', 298, 7, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Lannister', '', '', '', 'Darry', '', '', '', 'win', 'pitched battle', '0', '0', '', '', 'Gregor Clegane', 'Lyman Darry', '1', 'Darry', 'The Riverlands', ''),
(8, 'Battle of Moat Cailin', 299, 8, 'Balon/Euron Greyjoy', 'Robb Stark', 'Greyjoy', '', '', '', 'Stark', '', '', '', 'win', 'pitched battle', '0', '0', '', '', 'Victarion Greyjoy', '', '1', 'Moat Cailin', 'The North', ''),
(9, 'Battle of Deepwood Motte', 299, 9, 'Balon/Euron Greyjoy', 'Robb Stark', 'Greyjoy', '', '', '', 'Stark', '', '', '', 'win', 'siege', '0', '0', '1000', '', 'Asha Greyjoy', '', '1', 'Deepwood Motte', 'The North', ''),
(10, 'Battle of the Stony Shore', 299, 10, 'Balon/Euron Greyjoy', 'Robb Stark', 'Greyjoy', '', '', '', 'Stark', '', '', '', 'win', 'ambush', '0', '0', '264', '', 'Theon Greyjoy', '', '1', 'Stony Shore', 'The North', 'Greyjoy\'s troop number based on the Battle of Deepwood Motte, in which Asha had 1000 soldier on 30 longships. That comes out to ~33 per longship. In the Battle of the Stony Shore, Theon has 8 longships, and just we can estimate that he has 8*33 =265 troops.'),
(11, 'Battle of Torrhen\'s Square', 299, 11, 'Robb Stark', 'Balon/Euron Greyjoy', 'Stark', '', '', '', 'Greyjoy', '', '', '', 'win', 'pitched battle', '0', '0', '244', '900', 'Rodrik Cassel, Cley Cerwyn', 'Dagmer Cleftjaw', '1', 'Torrhen\'s Square', 'The North', 'Greyjoy\'s troop number comes from the 264 estimate to have arrived on the stony shore minus the 20 Theon takes to attack Winterfell. Thus 264-20=244'),
(12, 'Battle of Winterfell', 299, 12, 'Balon/Euron Greyjoy', 'Robb Stark', 'Greyjoy', '', '', '', 'Stark', '', '', '', 'win', 'ambush', '0', '1', '20', '', 'Theon Greyjoy', 'Bran Stark', '1', 'Winterfell', 'The North', 'It isn\'t mentioned how many Stark men are left in Winterfell, other than "very few".'),
(13, 'Sack of Torrhen\'s Square', 299, 13, 'Balon/Euron Greyjoy', 'Balon/Euron Greyjoy', 'Greyjoy', '', '', '', 'Stark', '', '', '', 'win', 'siege', '0', '1', '', '', 'Dagmer Cleftjaw', '', '1', 'Torrhen\'s Square', 'The North', ''),
(14, 'Sack of Winterfell', 299, 14, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Bolton', 'Greyjoy', '', '', 'Stark', '', '', '', 'win', 'ambush', '1', '0', '618', '2000', 'Ramsay Snow, Theon Greyjoy ', 'Rodrik Cassel, Cley Cerwyn, Leobald Tallhart', '1', 'Winterfell', 'The North', 'Since House Bolton betrays the Starks for House Lannister, we code this battle as between these two houses. Greyjoy men, numbering only 20, don\'t play a major part in the fighting and end up dying anyway.'),
(15, 'Battle of Oxcross', 299, 15, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Stark', 'Tully', '', '', 'Lannister', '', '', '', 'win', 'ambush', '1', '1', '6000', '10000', 'Robb Stark, Brynden Tully', 'Stafford Lannister, Roland Crakehall, Antario Jast', '1', 'Oxcross', 'The Westerlands', ''),
(16, 'Siege of Storm\'s End', 299, 16, 'Stannis Baratheon', 'Renly Baratheon', 'Baratheon', '', '', '', 'Baratheon', '', '', '', 'win', 'siege', '1', '0', '5000', '20000', 'Stannis Baratheon, Davos Seaworth', 'Renly Baratheon, Cortnay Penrose, Loras Tyrell, Randyll Tarly, Mathis Rowan', '1', 'Storm\'s End', 'The Stormlands', ''),
(17, 'Battle of the Fords', 299, 17, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Lannister', '', '', '', 'Tully', '', '', '', 'loss', 'pitched battle', '0', '0', '20000', '10000', 'Tywin Lannister, Flement Brax, Gregor Clegane, Addam Marbrand, Lyle Crakehall, Leo Lefford', 'Edmure Tully, Jason Mallister, Karyl Vance', '1', 'Red Fork', 'The Riverlands', ''),
(18, 'Sack of Harrenhal', 299, 18, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Stark', '', '', '', 'Lannister', '', '', '', 'win', 'ambush', '1', '0', '100', '100', 'Roose Bolton, Vargo Hoat, Robett Glover', 'Amory Lorch', '1', 'Harrenhal', 'The Riverlands', ''),
(19, 'Battle of the Crag', 299, 19, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Stark', '', '', '', 'Lannister', '', '', '', 'win', 'ambush', '0', '0', '6000', '', 'Robb Stark, Smalljon Umber, Black Walder Frey', 'Rolph Spicer', '1', 'Crag', 'The Westerlands', ''),
(20, 'Battle of the Blackwater', 299, 20, 'Stannis Baratheon', 'Joffrey/Tommen Baratheon', 'Baratheon', '', '', '', 'Lannister', '', '', '', 'loss', 'pitched battle', '1', '1', '21000', '7250', 'Stannis Baratheon, Imry Florent, Guyard Morrigen, Rolland Storm, Salladhor Saan, Davos Seaworth', 'Tyrion Lannister, Jacelyn Bywater, Sandor Clegane, Tywin Lannister, Garlan Tyrell, Mace Tyrell, Randyll Tarly', '1', 'King\'s Landing', 'The Crownlands', ''),
(21, 'Siege of Darry', 299, 21, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Darry', '', '', '', 'Lannister', '', '', '', 'win', 'siege', '0', '0', '', '', 'Helman Tallhart', '', '1', 'Darry', 'The Riverlands', ''),
(22, 'Battle of Duskendale', 299, 22, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Stark', '', '', '', 'Lannister', '', '', '', 'loss', 'pitched battle', '1', '0', '3000', '', 'Robertt Glover, Helman Tallhart', 'Randyll Tarly, Gregor Clegane', '1', 'Duskendale', 'The Crownlands', ''),
(23, 'Battle of the Burning Septry', 299, 23, '', '', 'Brotherhood without Banners', '', '', '', 'Brave Companions', '', '', '', 'win', 'pitched battle', '0', '0', '', '', '', '', '1', '', 'The Riverlands', ''),
(24, 'Battle of the Ruby Ford', 299, 24, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Lannister', '', '', '', 'Stark', '', '', '', 'win', 'pitched battle', '0', '0', '', '6000', 'Gregor Clegane', 'Roose Bolton, Wylis Manderly', '', 'Ruby Ford', 'The Riverlands', ''),
(25, 'Retaking of Harrenhal', 299, 25, 'Joffrey/Tommen Baratheon', '', 'Lannister', '', '', '', 'Brave Companions', '', '', '', 'win', 'pitched battle', '1', '0', '', '', 'Gregor Clegane', 'Vargo Hoat', '1', 'Harrenhal', 'The Riverlands', ''),
(26, 'The Red Wedding', 299, 26, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Frey', 'Bolton', '', '', 'Stark', '', '', '', 'win', 'ambush', '1', '1', '3500', '3500', 'Walder Frey, Roose Bolton, Walder Rivers', 'Robb Stark', '1', 'The Twins', 'The Riverlands', 'This observation refers to the battle against the Stark men, not the attack on the wedding'),
(27, 'Siege of Seagard', 299, 27, 'Robb Stark', 'Joffrey/Tommen Baratheon', 'Frey', '', '', '', 'Mallister', '', '', '', 'win', 'siege', '0', '1', '', '', 'Walder Frey', 'Jason Mallister', '1', 'Seagard', 'The Riverlands', ''),
(28, 'Battle of Castle Black', 300, 28, 'Stannis Baratheon', 'Mance Rayder', 'Free folk', 'Thenns', 'Giants', '', 'Night\'s Watch', 'Baratheon', '', '', 'loss', 'siege', '1', '1', '100000', '1240', 'Mance Rayder, Tormund Giantsbane, Harma Dogshead, Magnar Styr, Varamyr', 'Stannis Baratheon, Jon Snow, Donal Noye, Cotter Pyke', '0', 'Castle Black', 'Beyond the Wall', ''),
(29, 'Fall of Moat Cailin', 300, 29, 'Joffrey/Tommen Baratheon', 'Balon/Euron Greyjoy', 'Bolton', '', '', '', 'Greyjoy', '', '', '', 'win', 'siege', '0', '0', '', '', 'Ramsey Bolton', '', '0', 'Moat Cailin', 'The North', ''),
(30, 'Sack of Saltpans', 300, 30, '', '', 'Brave Companions', '', '', '', '', '', '', '', 'win', 'razing', '0', '0', '', '', 'Rorge', '', '0', 'Saltpans', 'The Riverlands', ''),
(31, 'Retaking of Deepwood Motte', 300, 31, 'Stannis Baratheon', 'Balon/Euron Greyjoy', 'Baratheon', 'Karstark', 'Mormont', 'Glover', 'Greyjoy', '', '', '', 'win', 'pitched battle', '0', '0', '4500', '200', 'Stannis Baratheon, Alysane Mormot', 'Asha Greyjoy', '0', 'Deepwood Motte', 'The North', ''),
(32, 'Battle of the Shield Islands', 300, 32, 'Balon/Euron Greyjoy', 'Joffrey/Tommen Baratheon', 'Greyjoy', '', '', '', 'Tyrell', '', '', '', 'win', 'pitched battle', '0', '0', '', '', 'Euron Greyjoy, Victarion Greyjoy', '', '0', 'Shield Islands', 'The Reach', ''),
(33, 'Invasion of Ryamsport, Vinetown, and Starfish Harbor', 300, 33, 'Balon/Euron Greyjoy', 'Joffrey/Tommen Baratheon', 'Greyjoy', '', '', '', 'Tyrell', '', '', '', 'win', 'razing', '0', '0', '', '', 'Euron Greyjoy, Victarion Greyjoy', '', '0', 'Ryamsport, Vinetown, Starfish Harbor', 'The Reach', ''),
(34, 'Second Seige of Storm\'s End', 300, 34, 'Joffrey/Tommen Baratheon', 'Stannis Baratheon', 'Baratheon', '', '', '', 'Baratheon', '', '', '', 'win', 'siege', '0', '0', '', '200', 'Mace Tyrell, Mathis Rowan', 'Gilbert Farring', '0', 'Storm\'s End', 'The Stormlands', ''),
(35, 'Siege of Dragonstone', 300, 35, 'Joffrey/Tommen Baratheon', 'Stannis Baratheon', 'Baratheon', '', '', '', 'Baratheon', '', '', '', 'win', 'siege', '0', '0', '2000', '', 'Loras Tyrell, Raxter Redwyne', 'Rolland Storm', '0', 'Dragonstone', 'The Stormlands', ''),
(36, 'Siege of Riverrun', 300, 36, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Lannister', 'Frey', '', '', 'Tully', '', '', '', 'win', 'siege', '0', '0', '3000', '', 'Daven Lannister, Ryman Fey, Jaime Lannister', 'Brynden Tully', '0', 'Riverrun', 'The Riverlands', ''),
(37, 'Siege of Raventree', 300, 37, 'Joffrey/Tommen Baratheon', 'Robb Stark', 'Bracken', 'Lannister', '', '', 'Blackwood', '', '', '', 'win', 'siege', '0', '1', '1500', '', 'Jonos Bracken, Jaime Lannister', 'Tytos Blackwood', '0', 'Raventree', 'The Riverlands', ''),
(38, 'Siege of Winterfell', 300, 38, 'Stannis Baratheon', 'Joffrey/Tommen Baratheon', 'Baratheon', 'Karstark', 'Mormont', 'Glover', 'Bolton', 'Frey', '', '', '', '', '', '', '5000', '8000', 'Stannis Baratheon', 'Roose Bolton', '0', 'Winterfell', 'The North', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `battles`
--
ALTER TABLE `battles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `battles`
--
ALTER TABLE `battles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
