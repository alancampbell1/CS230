-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2018 at 02:29 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CS230_Quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `ID` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`ID`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, 'Side Seated Angle Pose & Upward Facing Seated Angle Posture'),
(2, 1, 0, 'Downward Dog Style & American Taxpayer'),
(3, 1, 0, 'Seated Inward Pose & Upward Facing Seated Angle Posture'),
(4, 1, 0, 'Inward and Sideward'),
(5, 2, 1, 'Side Seated Angle Pose, One Leg Bridge pose, One Leg Supported Shoulderstand Pose & Reclining Angle Pose'),
(6, 2, 0, 'Side Seated Leg Down, One Leg Up, One Supported Shoulderstand & Reclining Angle Pose'),
(7, 2, 0, 'Downward Dog Style, American Taxpayer, Irish Shamrock & Japanese Dog Dip'),
(8, 2, 0, 'Downward Dog Style, Irish Shamrock, Japanese Dog Dip & Side Seated Angle Pose'),
(9, 3, 1, 'Upward Warrior 2, Warrior 3 Pose, Revolved Extended Side Angle & Half Moon Pose'),
(10, 3, 0, 'Upward Wimp 2, Wimp 3 Pose, Revolver Side Angle & Half Moon Pose'),
(11, 3, 0, 'Japanese Warrior, Irish Pose, Revolved Side & Half Moon Walk'),
(12, 3, 0, 'Long Stretch, The Warrior, Side Angle & Half Moon Walk'),
(13, 4, 1, 'Bridge pose, Bridge On the Head, Upward Couch & Bridge pose'),
(14, 4, 0, 'nose pose, Bridge On the Water, Upward Cough & Bridge nose'),
(15, 4, 0, 'nose maker, Smoke On the Water, Upward Laugh & Bridge Blow'),
(16, 4, 0, 'Structural pose, Bridge break, Upward motion & Bridge Side'),
(17, 5, 1, 'Seated Revolving Knee Pose, Revolved Knee to the Head, Knee to the Head & Supported King Pigeon Pose'),
(18, 5, 0, 'Lion King, Revolved body, Knee to the neck & Supported King Cobra Pose'),
(19, 5, 0, 'Seated Revolving Knee Pose, Revolved Knee to the Head, Knee to the Head & Supported King Pigeon Pose'),
(20, 5, 0, 'Seated Revolving Knee Pose, Revolved head, Knee to the Head & Supported King McGregor'),
(21, 6, 1, 'Camel Pose'),
(22, 6, 0, 'Tiger Pose'),
(23, 6, 0, 'Lion Pose'),
(24, 6, 0, 'Snake Pose'),
(25, 7, 1, 'The Lunge Twist, Revolved Triangle Pose & Crescent Pose'),
(26, 7, 0, 'The Leg Twist, Revolved Rectangle Pose & Crescent Nose'),
(27, 7, 0, 'Do the Twist, Triangle Face & Crescent Moon'),
(28, 7, 0, 'Twister, Revolver & the Crescent'),
(29, 8, 1, 'Half Moon Pose, Reverse Half Moon Pose & Warrior 3 Pose'),
(30, 8, 0, 'Full Moon Pose, Reverse Full Moon Pose & Warriors Pose'),
(31, 8, 0, 'Moon Pose, Reverse Half Sun Pose & Warrior 27 Pose'),
(32, 8, 0, 'Moon Walker, Reversed Pose & Warrior Code'),
(33, 9, 1, 'Warrior 1 Pose, Warrior 2 Pose & Warrior 3 Pose'),
(34, 9, 0, 'Warrior 1 Rose, Warrior 2 Rose & Warrior 3 Rose'),
(35, 9, 0, 'Warrior 1 Nose, Warrior 2 Nose & Warrior 3 Nose'),
(36, 9, 0, 'Warrior 1 froze, Warrior 2 froze & Warrior 3 froze'),
(37, 10, 1, 'Chair Pose & Standing Forward Bend'),
(38, 10, 0, 'Chair Pose & Stand Forward Blend'),
(39, 10, 0, 'Couch Pose & Standing Forward Blend'),
(40, 10, 0, 'Table Pose & Standing Forward back bend'),
(41, 11, 1, 'Revolved Seated Angle Pose, Side Seated Angle Pose, Upward Facing Seated Angle Posture & Seated Angle'),
(42, 11, 0, 'Revolved Seated Angel Pose, Side Seated Angel Pose, Upward Facing Seated Angel Posture & Seated Angel'),
(43, 11, 0, 'Revolved upright Angle Pose, Side upright Angle Pose, Upward Facing Seated Angle Posture & upright Angle'),
(44, 11, 0, 'Revolved Seated Angle Fose, Side Seated Angle Fose, Upward Facing Seated Angle Posture & Seated'),
(45, 12, 1, 'Lying Down Westward Pose, The Plough, Yogic Sleep Pose & Reclining Angle Pose'),
(46, 12, 0, 'Lying Down Westward Pose, The Play, Yogic Sheep Pose & Reclining Angle Pose'),
(47, 12, 0, 'Lying Down Westward Pose, The Pound, Yogic Slept Pose & Reclining Angle Pose'),
(48, 12, 0, 'Lying Down Westward Pose, The Pale, Yogic Split Pose & Reclining Angle Pose'),
(49, 13, 1, 'Hero Pose, Heron Pose, Knee to the Head 2 & Side Seated Angle Pose'),
(50, 13, 0, 'Zero Pose, Zeron Pose, Knee to the Head 2 & Side Seated Angle Pose'),
(51, 13, 0, 'Hero Pose, Heron Pose, Knee to the neck & Side Seated Angle Froze'),
(52, 13, 0, 'Hero Pose, Superhero Pose, Knee to the Head 2 & Side Seated Angle Pose'),
(53, 14, 1, 'One Leg Downward Facing Dog, Downward Facing Staff Pose, Four Limb Staff Pose & Cobra Pose'),
(54, 14, 0, 'Two Leg Downward Facing Dog, Downward Facing Staff Pose, Five Limb Staff Pose & Cobra Pose'),
(55, 14, 0, 'One Leg Downward Facing Cat, Downward Facing Staff Pose, Four Limb Staff Pose & Frog Pose'),
(56, 14, 0, 'Three Leg Downward Facing Dog, Downward Facing Staff Pose, Twenty Limb Staff Pose & Cobra Pose'),
(57, 15, 1, 'Frog Cobra Pose, Half Lotus pose, Cat Flow & Seated Angle'),
(58, 15, 0, 'Spider Cobra Pose, Half Lotus pose, Cat Flow & Seated Angle'),
(59, 15, 0, 'Scorpion Cobra Pose, Half Lotus pose, Cat Flow & Seated Angle'),
(60, 15, 0, 'Beetle Cobra Pose, Half Lotus pose, Cat Flow & Seated Angle '),
(61, 16, 1, 'Half Lotus pose & Upward Facing Seated Angle Posture'),
(62, 16, 0, 'Full Lotus pose, Downward Facing Seated Angle Posture & Upavistha Konasana'),
(63, 16, 0, 'Lotus flower pose & Upward Facing Seated Angle Posture'),
(64, 16, 0, 'Flower power pose & Upward Facing Seated Angle Posture'),
(65, 17, 1, 'Half Lotus pose & One Leg Revolving Seated Pose'),
(66, 17, 0, 'Half Lotus pose & One Leg Revolver Seated Pose'),
(67, 17, 0, 'Half Lotus pose & One Leg Revolving Standing Pose'),
(68, 17, 0, 'Half Lotus flower pose & One Leg Revolving Lying Pose'),
(69, 18, 1, 'Half Lotus pose, Frog Cobra Pose & Cat Flow'),
(70, 18, 0, 'Half Lotus pose, King Cobra Pose & Dog Flow'),
(71, 18, 0, 'Half Lotus pose, Dead Frog Pose & Cat Flow'),
(72, 18, 0, 'Full Lotus pose, Frog Cobra Pose & Cat Bow'),
(73, 19, 1, 'Half Lotus pose'),
(74, 19, 0, 'Full Lotus pose'),
(75, 19, 0, 'Quarter Lotus pose'),
(76, 19, 0, 'Third Lotus pose'),
(77, 20, 1, 'Half Lotus pose, Bow To The Ear & Westward'),
(78, 20, 0, 'Half Lotus pose, Bow To The Toes & Westward'),
(79, 20, 0, 'Half Lotus pose, Bow To The Ear & Eastward'),
(80, 20, 0, 'Half Lotus pose, Bow To The Ear & Southward');

-- --------------------------------------------------------

--
-- Table structure for table `choicesSan`
--

CREATE TABLE `choicesSan` (
  `ID` int(100) NOT NULL,
  `question_number` int(100) NOT NULL,
  `is_correct` tinyint(10) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choicesSan`
--

INSERT INTO `choicesSan` (`ID`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, 'Parsva Upavistha Konasana & Urdhva Mukha Upavistha Konasana'),
(2, 1, 0, 'Parsva Upavistha Kona & Urdhva Muk Avistha Konasana'),
(3, 1, 0, 'Parsva Konasana & Urdhva Mukha Konasana'),
(4, 1, 0, 'Pars Upavistha Konas & Urdhva Muk Upavistha Konasana'),
(5, 2, 1, 'Parsva Upavistha Konasana, Eka Pada Setu Bandhasanasana, Eka Pada Salamba Sarvangasana, Supta Konasana & Matsyasana'),
(6, 2, 0, 'Parsva Upavisa Konasana, Eka Pada Setu Bandh, Eka Padman Salamba Sarvangasana, Supta Konasana & Matsyasana'),
(7, 2, 0, 'Parsva Upavistha Konasana, Eka Pada Setu Bandhasanasana, Elk Pada Salmon Sarvangasana, Supta Konasana & Matsya'),
(8, 2, 0, 'Paris Upavisit Konasana, Eka Pad-one Setup Bandhasanasana, Eka Pada Salamba Sarvangasana, Supta Matsyasana'),
(9, 3, 1, 'Urdhva Virabhadrasana II, Virabhadrasana 3, Parivrtta Parsvakonasana & Ardha Chandrasana'),
(10, 3, 0, 'Urdhva Virbhadsana, Virabhadrasana, Parivrtta Parsvakonasana & Ard Chandras'),
(11, 3, 0, 'Urdhva Virabhadrasana 203, virb, Parivrttii Parsvakonasana & Arda Chandsders'),
(12, 3, 0, 'Urdhva, Virabhadrasana 3, Parivrtta & Ardha Chandrasana'),
(13, 4, 1, 'Setu Bandhasanasana, Sirsa Setu Bandhasanasana, Urdhva Paryankasana & Sirsa Setu Bandhasanasana'),
(14, 4, 0, 'Setu Bandana, Sirsa  Bandana, Urdhva Paryankasana & Set to you Bandhasanasana'),
(15, 4, 0, 'Setu Bandhasanasana, Setu Bandhasanasana, Uphill Paryanks & Sirsa Setu Bandhasanasana'),
(16, 4, 0, 'Setu, Setu Bandhasanasana, Urdhva Paryankasana & Sirsa Setu Bandhasanasana'),
(17, 5, 1, 'Upavistha Januparivrttasana, Parivrttta Janu Sirsasana, Janu Sirsasana & Salamba Raja Kapotasana'),
(18, 5, 0, 'Upavistha Jupiter, Janaku Sirsasana, Janu & Salmon Fish'),
(19, 5, 0, 'Upavistha, Parivrttta Janu Sirsasana, Janu & Salamba Raja Kapto'),
(20, 5, 0, 'Upavistha Januparivrttasana, Parivrttta, Janu Sirsasana & Salamba Raja Kapotasana'),
(21, 6, 1, 'Ustra sandy'),
(22, 6, 0, 'Ustrasana uidy'),
(23, 6, 0, 'Ultras'),
(24, 6, 0, 'Ustra'),
(25, 7, 1, 'Parivrtta Parsvakonasana, Parivrtta Trikonasana & Anjaneyasana'),
(26, 7, 0, 'Paprika Parsvakonasana, Paprika Trikonasana & Anjaneyasana'),
(27, 7, 0, 'Pari Parsvakonasana, Pari Trikonasana & Anjaneyasana'),
(28, 7, 0, 'Peri Peri Chicken, Parivrtta Trikonasana & Anjaneyasana'),
(29, 8, 1, 'Ardha Chandrasana, Parivrtta Ardha Chandrasana & Virabhadrasana 3'),
(30, 8, 0, 'Ard Chand, Parivrtta Chandrasana & Virabhadrasana 3'),
(31, 8, 0, 'Chandrasana, Parivrtta Ardha Chandra & Virabhadrasana 3'),
(32, 8, 0, 'Ardha Chandrasana, Parivrtta & Virabhadrasana 25'),
(33, 9, 1, 'Virabhadrasana 1, Virabhadrasana II & Virabhadrasana 3'),
(34, 9, 0, 'Virabhadrasana 55, Virabhadrasana 55 & Virabhadrasana 55'),
(35, 9, 0, 'Virabh 1, Virabh II & Virabh 3'),
(36, 9, 0, 'Virabhadrasana, Virabhadrasana & Virabhadrasana'),
(37, 10, 1, 'Utkatasana & Uttanasana'),
(38, 10, 0, 'Utkatasa & Uttana'),
(39, 10, 0, 'Utkatasanansys & Uttanasananansas'),
(40, 10, 0, 'Utkatasanayasa & Utta'),
(41, 11, 1, 'Parivrtta Upavistha Konasana, Parsva Upavistha Konasana, Urdhva Mukha Upavistha Konasana & Upavistha Konasana'),
(42, 11, 0, 'Parivrtta Upavistha Konasana, Paris Upavistha Konasana, Urdhva Muck Upavistha Konasana & Upside Konasana'),
(43, 11, 0, 'Pavarotti Upavistha Konasana, Parsva Upavistha Konasana, Urrrr Mukha Upavistha & Upavistha Konasana'),
(44, 11, 0, 'Paprika Upavistha Konasana, Pairing Upavistha Konasana, Urdhva Mukha Upavistha Konasana & Upavistha Korma'),
(45, 12, 1, 'Supta Paschimottasana, Halasana, Yoganidrasana & Supta Konasana'),
(46, 12, 0, 'Supta Paschimottasana, Salsa, Yoganidrasana & Super Kong'),
(47, 12, 0, 'Stupid Paschimottasana, Halai, Yoganidrasana & Super Duper'),
(48, 12, 0, 'Supta Paschimottasana, Halasana, Yogart & Supta Kona'),
(49, 13, 1, 'Virasana, Krounchasana, Janu Sirsasana II & Parsva Upavistha Konasana'),
(50, 13, 0, 'Virus, Krounchasana, Janu Sirsasana 100 & Parsva Upavail Konasana'),
(51, 13, 0, 'Virasana, Krounchasana, Jaku Sirsasana II & Parsvy Upavistha Konasana'),
(52, 13, 0, 'Virasana, Krounchasana, Jaku Sirsasana II & Parsvy Upavistha Konasana'),
(53, 14, 1, 'Eka Pada Adho Mukha Svanasana, Adho Mukha Dandasana, Chaturanga Dandasana & Bhujangasana'),
(54, 14, 0, 'Elk Pad Adho Mukha Svanasana, Ado Mukha Dandasana, Chaturanga Dandas & Beigjing'),
(55, 14, 0, 'Eka Fada Adho Mukha, Adho Mukha Dandasana, Chaturanga Dandasana & Jungle'),
(56, 14, 0, 'Eka Pada Adho Mukha Svanasana, Mudda Dandasana, Chaturanga Dandasana & Bhujangasana'),
(57, 15, 1, 'Bheka Bhujangasana, Ardha Padmasana, Cat to Cow & Upavistha Konasana'),
(58, 15, 0, 'Bheka Bhujangasana, Ardha Padmas, Cows & Upavistha Konasana'),
(59, 15, 0, 'Baked beans, Ardha Padmasana, Cat to Cow & Upavistha Konasana'),
(60, 15, 0, 'Bheka Bhujangasana, Padmasana, Horse & Upavistha Konasa'),
(61, 16, 1, 'Ardha Padmasana, Urdhva Mukha Upavistha Konasana & Upavistha Konasana'),
(62, 16, 0, 'Ardha Padmasana, Konasana & Upavisth Konasana'),
(63, 16, 0, 'Ardha, Padmasana, Urdhva Mukha, Upavistha, Konasana & Upavistha, Konasana'),
(64, 16, 0, 'Ardha Upavistha Konasana & Upavistha Konasana'),
(65, 17, 1, 'Ardha Padmasana & Eka Pada Parivrtta Upavisthasana'),
(66, 17, 0, 'Ardha Padmasana & Eka Papi Parivrtta Upavisthasana'),
(67, 17, 0, 'Ardha Padmasana & Eka Paddy Parivrtta Upavisthasana'),
(68, 17, 0, 'Ardha Padmasana & Eka Paprika Parivrtta Upavisthasana'),
(69, 18, 1, 'Ardha Padmasana, Bheka Bhujangasana & Cat to Cow'),
(70, 18, 0, 'Ardha Padmasana, Bheka Bhujangasana & Cat to Hour'),
(71, 18, 0, 'Ardha Padmasana, Bheka Bhujangasana & Cat to na'),
(72, 18, 0, 'Ardha Padmasana, Bheka Bhujangasana & Cat to #123'),
(73, 19, 1, 'Ardha Padmasana'),
(74, 19, 0, 'Ardha Padone'),
(75, 19, 0, 'Ardha Padman'),
(76, 19, 0, 'Ardha Patrick'),
(77, 20, 1, 'Ardha Padmasana, Akarna Dhanurasana & Paschimottasana'),
(78, 20, 0, 'Ardha Padmasana, Akarna Dhanurasana & Pmottasana'),
(79, 20, 0, 'Ardha Padmasana, Akarna Dhanurasana & Paschimoty'),
(80, 20, 0, 'Ardha Padmasana, Akarna & Practice');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`) VALUES
(1, 'What are the English names of the following yoga moves?'),
(2, 'What are the English names of the following yoga moves?'),
(3, 'What are the English names of the following yoga moves?'),
(4, 'What are the English names of the following yoga moves?'),
(5, 'What are the English names of the following yoga moves?'),
(6, 'What are the English names of the following yoga moves?'),
(7, 'What are the English names of the following yoga moves?'),
(8, 'What are the English names of the following yoga moves?'),
(9, 'What are the English names of the following yoga moves?'),
(10, 'What are the English names of the following yoga moves?'),
(11, 'What are the English names of the following yoga moves?'),
(12, 'What are the English names of the following yoga moves?'),
(13, 'What are the English names of the following yoga moves?'),
(14, 'What are the English names of the following yoga moves?'),
(15, 'What are the English names of the following yoga moves?'),
(16, 'What are the English names of the following yoga moves?'),
(17, 'What are the English names of the following yoga moves?'),
(18, 'What are the English names of the following yoga moves?'),
(19, 'What are the English names of the following yoga moves?'),
(20, 'What are the English names of the following yoga moves?');

-- --------------------------------------------------------

--
-- Table structure for table `questionsSan`
--

CREATE TABLE `questionsSan` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionsSan`
--

INSERT INTO `questionsSan` (`question_number`, `text`) VALUES
(1, 'What are the Sanskrit names of the following yoga moves?'),
(2, 'What are the Sanskrit names of the following yoga moves?'),
(3, 'What are the Sanskrit names of the following yoga moves?'),
(4, 'What are the Sanskrit names of the following yoga moves?'),
(5, 'What are the Sanskrit names of the following yoga moves?'),
(6, 'What are the Sanskrit names of the following yoga moves?'),
(7, 'What are the Sanskrit names of the following yoga moves?'),
(8, 'What are the Sanskrit names of the following yoga moves?'),
(9, 'What are the Sanskrit names of the following yoga moves?'),
(10, 'What are the Sanskrit names of the following yoga moves?'),
(11, 'What are the Sanskrit names of the following yoga moves?'),
(12, 'What are the Sanskrit names of the following yoga moves?'),
(13, 'What are the Sanskrit names of the following yoga moves?'),
(14, 'What are the Sanskrit names of the following yoga moves?'),
(15, 'What are the Sanskrit names of the following yoga moves?'),
(16, 'What are the Sanskrit names of the following yoga moves?'),
(17, 'What are the Sanskrit names of the following yoga moves?'),
(18, 'What are the Sanskrit names of the following yoga moves?'),
(19, 'What are the Sanskrit names of the following yoga moves?'),
(20, 'What are the Sanskrit names of the following yoga moves?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `choicesSan`
--
ALTER TABLE `choicesSan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `questionsSan`
--
ALTER TABLE `questionsSan`
  ADD PRIMARY KEY (`question_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `choicesSan`
--
ALTER TABLE `choicesSan`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `questionsSan`
--
ALTER TABLE `questionsSan`
  MODIFY `question_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
