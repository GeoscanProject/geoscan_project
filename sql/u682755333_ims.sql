-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 17, 2024 at 04:03 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u682755333_ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_actionlogs`
--

CREATE TABLE `tbl_actionlogs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `action_id` int(11) NOT NULL,
  `action_desc` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_actionlogs`
--

INSERT INTO `tbl_actionlogs` (`id`, `user_id`, `student_id`, `action_id`, `action_desc`, `created_at`) VALUES
(240, '1', '', 5, 'Department vtfvvt updated', '2024-11-03 06:31:42'),
(241, '1', '', 5, 'Department vtfvvt updated', '2024-11-03 06:33:34'),
(242, '1', '', 22, 'Department test created', '2024-11-03 06:38:32'),
(243, '1', '', 23, 'Deleted DEPARTMENT test', '2024-11-03 06:40:07'),
(244, '1', '', 22, 'Department Test created', '2024-11-03 06:40:15'),
(245, '1', '', 23, 'Deleted DEPARTMENT Test', '2024-11-03 06:40:25'),
(246, '1', '', 22, 'Department College of Computing Studies created', '2024-11-03 06:41:00'),
(247, '1', '', 22, 'Department College of Engineering created', '2024-11-03 06:41:20'),
(248, '1', '', 22, 'Department College of Education created', '2024-11-03 06:41:38'),
(249, '1', '', 4, 'Program College of Industrial Engineering created', '2024-11-03 06:42:57'),
(250, '1', '', 5, 'Program Bachelor of Science in Industrial Engineering updated', '2024-11-03 06:43:42'),
(251, '1', '', 4, 'Program Bachelor of Science in Information Technology created', '2024-11-03 06:44:17'),
(252, '1', '', 4, 'Program Bachelor of Science in Secondary Educatio created', '2024-11-03 06:44:43'),
(253, '1', '', 5, 'Program Bachelor of Science in Secondary Education updated', '2024-11-03 06:44:54'),
(254, '1', '', 1, 'Coordinator account created for charry', '2024-11-03 06:47:26'),
(255, '66650', '2101760', 18, 'Requirement PNC:AA-FO-25 Set Approved for Student Charisma Azores', '2024-11-03 07:16:48'),
(256, '1', '', 20, 'Database backup created to file in date of: 2024-11-03_15-58-17', '2024-11-03 07:58:17'),
(257, '1', '', 4, 'Program Bachelor of Science in Computer Science created', '2024-11-03 08:31:16'),
(258, '1', '', 4, 'Program Bachelor of Science in Electronics Engineering created', '2024-11-03 08:32:40'),
(259, '1', '', 7, 'Company Motorcentral Inc. created', '2024-11-03 08:45:06'),
(260, '1', '', 7, 'Company Cabuyao City Hospital  created', '2024-11-03 08:46:29'),
(261, '1', '', 7, 'Company Light Industry and Science Park created', '2024-11-03 08:48:02'),
(262, '66650', '2027002', 18, 'Requirement PNC:AA-FO-21 Set Approved for Student John Ramos', '2024-11-03 10:18:01'),
(263, '1', '', 9, 'Deleted company Motorcentral Inc.', '2024-11-03 11:19:35'),
(264, '1', '', 9, 'Deleted company Cabuyao City Hospital ', '2024-11-03 11:19:38'),
(265, '1', '', 9, 'Deleted company Light Industry and Science Park', '2024-11-03 11:19:41'),
(266, '1', '', 7, 'Company Coca-Cola Beverages Philippines, Inc. – International created', '2024-11-03 11:19:53'),
(267, '1', '', 7, 'Company Agustinian School Of Cabuyao, Inc. created', '2024-11-03 11:20:00'),
(268, '1', '', 7, 'Company Cabuyao Social Welfare And Development created', '2024-11-03 11:20:14'),
(269, '1', '', 7, 'Company Eastwest Banking Corporation created', '2024-11-03 11:20:20'),
(270, '1', '', 7, 'Company Entrepreneur Rural Bank Inc. created', '2024-11-03 11:20:32'),
(271, '1', '', 7, 'Company B Fuller (Philippines, Inc. created', '2024-11-03 11:20:39'),
(272, '1', '', 7, 'Company Holy Redeemer School Of Cabuyao created', '2024-11-03 11:20:46'),
(273, '1', '', 7, 'Company Local Government Unit Of Cabuyao Through Peso/Ccldo/Dti created', '2024-11-03 11:20:50'),
(274, '1', '', 7, 'Company Panelo Accounting And Management Advisory Services created', '2024-11-03 11:20:55'),
(275, '1', '', 7, 'Company Sfy Integrated Inc. created', '2024-11-03 11:21:01'),
(276, '1', '', 7, 'Company Bureau Of Jail Management And Penology created', '2024-11-03 11:21:06'),
(277, '1', '', 7, 'Company Charus Credit Services Inc. created', '2024-11-03 11:21:11'),
(278, '1', '', 7, 'Company City Disaster Risk Reduction Management Office (Cdrrmo) created', '2024-11-03 11:21:16'),
(279, '1', '', 7, 'Company Corinthians Realty Services created', '2024-11-03 11:21:21'),
(280, '1', '', 7, 'Company Cyberage Construction Corporation created', '2024-11-03 11:21:25'),
(281, '1', '', 7, 'Company A&B Professional Pest Solutions, Corporation created', '2024-11-03 11:21:30'),
(282, '1', '', 7, 'Company Dimaano Accounting Firm created', '2024-11-03 11:21:35'),
(283, '1', '', 7, 'Company Aclan And Co.Cpas created', '2024-11-03 11:21:40'),
(284, '1', '', 7, 'Company Amcar Automotive Corporation created', '2024-11-03 11:21:44'),
(285, '1', '', 7, 'Company Apm Techica Ag created', '2024-11-03 11:21:49'),
(286, '1', '', 7, 'Company Aurotech Corporation created', '2024-11-03 11:21:53'),
(287, '1', '', 7, 'Company Balisong Channel created', '2024-11-03 11:21:59'),
(288, '1', '', 7, 'Company Bell Electronics Corporation created', '2024-11-03 11:22:03'),
(289, '1', '', 7, 'Company Cabuyao Water District created', '2024-11-03 11:22:08'),
(290, '1', '', 7, 'Company Canlubang Techno-Industrial Corporation created', '2024-11-03 11:22:12'),
(291, '1', '', 7, 'Company Cavtech Multi-Resources Technology Inc. created', '2024-11-03 11:22:17'),
(292, '1', '', 7, 'Company Charus Credit Services Inc. (Calamba Branch) created', '2024-11-03 11:22:21'),
(293, '1', '', 7, 'Company City Government Of Cabuyao created', '2024-11-03 11:22:28'),
(294, '1', '', 7, 'Company City Population Office created', '2024-11-03 11:22:33'),
(295, '1', '', 7, 'Company City Social Services created', '2024-11-03 11:22:37'),
(296, '1', '', 7, 'Company Concepcion-Carrier Airconditioning Company created', '2024-11-03 11:22:41'),
(297, '1', '', 7, 'Company Dangal Ng Pagbabago Rehabilitation Center created', '2024-11-03 11:23:15'),
(298, '1', '', 7, 'Company Deped School Division Of Cabuyao City created', '2024-11-03 11:23:20'),
(299, '1', '', 7, 'Company Deped Schools Of Sta. Rosa City created', '2024-11-03 11:23:24'),
(300, '1', '', 7, 'Company Dfph Design To Fit Philippines Garments Manufacturing created', '2024-11-03 11:23:29'),
(301, '1', '', 7, 'Company Dotsprerinch created', '2024-11-03 11:23:33'),
(302, '1', '', 7, 'Company Dynav Engineering Services created', '2024-11-03 11:23:38'),
(303, '1', '', 7, 'Company Engtek Precision Philippines, Inc. created', '2024-11-03 11:23:42'),
(304, '1', '', 7, 'Company T. De Vera Work Assistance And Management created', '2024-11-03 11:24:01'),
(305, '1', '', 7, 'Company Eyefhobe Rehabilitation Center created', '2024-11-03 11:24:06'),
(306, '1', '', 7, 'Company Fausto- Bayla Accounting And Auditing Services created', '2024-11-03 11:24:10'),
(307, '1', '', 7, 'Company Francisco-Mendoza Accounting Services created', '2024-11-03 11:24:15'),
(308, '1', '', 7, 'Company Gendiesel Philippines Inc. created', '2024-11-03 11:24:19'),
(309, '1', '', 7, 'Company Greenplus Corporation created', '2024-11-03 11:24:23'),
(310, '1', '', 7, 'Company Gtycoon Logistic Corporation created', '2024-11-03 11:24:28'),
(311, '1', '', 7, 'Company Hcs Insurance Services created', '2024-11-03 11:24:32'),
(312, '1', '', 7, 'Company Hydrocare System Technology Corporation created', '2024-11-03 11:24:37'),
(313, '1', '', 7, 'Company Institute For Foundational Learning, Inc. created', '2024-11-03 11:24:41'),
(314, '1', '', 7, 'Company Integrated Micro-Electronics, Inc. created', '2024-11-03 11:24:45'),
(315, '1', '', 7, 'Company Ionics Ems Inc. created', '2024-11-03 11:24:50'),
(316, '1', '', 7, 'Company Aclan Medical And Diagnostic Clinic Inc created', '2024-11-03 11:24:54'),
(317, '1', '', 7, 'Company Ja Balomit Accounting And Consultancy created', '2024-11-03 11:24:59'),
(318, '1', '', 7, 'Company Jacobo Z. Gonzales Memorial School Of Arts And Trades created', '2024-11-03 11:25:03'),
(319, '1', '', 7, 'Company Jlr Elevators & Escalators Corp. created', '2024-11-03 11:25:08'),
(320, '1', '', 7, 'Company Jnl Juneric Trading Inc. created', '2024-11-03 11:25:12'),
(321, '1', '', 7, 'Company Jobgrade Global Technologies, Inc. created', '2024-11-03 11:25:16'),
(322, '1', '', 7, 'Company Kabisig Workers Cooperative created', '2024-11-03 11:25:20'),
(323, '1', '', 7, 'Company Kamino Megumi Japanese created', '2024-11-03 11:25:24'),
(324, '1', '', 7, 'Company Kc (Knights Of Corps) Security Agency, Inc. created', '2024-11-03 11:25:29'),
(325, '1', '', 7, 'Company L.A. Buenaventura And Co., Cpas created', '2024-11-03 11:25:38'),
(326, '1', '', 7, 'Company Livelife Homecare Inc created', '2024-11-03 11:25:42'),
(327, '1', '', 7, 'Company Luzon Development Bank created', '2024-11-03 11:25:47'),
(328, '1', '', 7, 'Company Mgaylican Accounting Services created', '2024-11-03 11:25:51'),
(329, '1', '', 7, 'Company Mti Water Technologies Inc. created', '2024-11-03 11:25:55'),
(330, '1', '', 7, 'Company Multi-Mix International Manufacturing Corp. created', '2024-11-03 11:26:05'),
(331, '1', '', 7, 'Company Naivivs Contractor And Trading Corporation created', '2024-11-03 11:26:09'),
(332, '1', '', 7, 'Company Nep Logistic, Inc. created', '2024-11-03 11:26:13'),
(333, '1', '', 7, 'Company Netforce International created', '2024-11-03 11:26:18'),
(334, '1', '', 7, 'Company New Sinai School And Colleges Inc. created', '2024-11-03 11:26:22'),
(335, '1', '', 7, 'Company Nyk-Fil Maritime E-Training Inc. created', '2024-11-03 11:26:27'),
(336, '1', '', 7, 'Company One Green Arrow Manpower Corp. created', '2024-11-03 11:26:31'),
(337, '1', '', 7, 'Company Pag-Asa Youth Rehabilitation Center created', '2024-11-03 11:26:38'),
(338, '1', '', 7, 'Company Pioneer Adhesive Inc created', '2024-11-03 11:26:43'),
(339, '1', '', 7, 'Company Pixel8web Solution 7 Consultancy Inc. created', '2024-11-03 11:26:47'),
(340, '1', '', 7, 'Company  Power Serve (Psi), Inc. created', '2024-11-03 11:26:52'),
(341, '1', '', 7, 'Company Prado And Sons Industries, Inc created', '2024-11-03 11:26:57'),
(342, '1', '', 7, 'Company R.A. Concepcion & Associates created', '2024-11-03 11:27:01'),
(343, '1', '', 7, 'Company Ral Accounting & Ta Consultancy Services created', '2024-11-03 11:27:06'),
(344, '1', '', 7, 'Company Ram Food Products Inc. created', '2024-11-03 11:27:10'),
(345, '1', '', 7, 'Company Ramon F. Garcia & Company created', '2024-11-03 11:27:14'),
(346, '1', '', 7, 'Company Rcd Realty Marketing Corp created', '2024-11-03 11:27:18'),
(347, '1', '', 7, 'Company Reign-Nan Sales Industry And General Contractor Inc. created', '2024-11-03 11:27:23'),
(348, '1', '', 7, 'Company Re-Lag Legacy Corporation created', '2024-11-03 11:27:28'),
(349, '1', '', 7, 'Company Remotask Inc created', '2024-11-03 11:27:34'),
(350, '1', '', 7, 'Company Retreat Paradise Rehabilitation Center created', '2024-11-03 11:27:38'),
(351, '1', '', 7, 'Company Rvfortuna Builders created', '2024-11-03 11:27:43'),
(352, '1', '', 7, 'Company Shin-Etsu Magnetics Philippines Inc. created', '2024-11-03 11:27:47'),
(353, '1', '', 7, 'Company Silgan White Cap South East Asia, Inc. created', '2024-11-03 11:27:51'),
(354, '1', '', 7, 'Company Sol Psychology Services created', '2024-11-03 11:27:56'),
(355, '1', '', 7, 'Company Spumoni Llc created', '2024-11-03 11:28:00'),
(356, '1', '', 7, 'Company Ssangyong Berjaya Motor Philippines created', '2024-11-03 11:28:04'),
(357, '1', '', 7, 'Company Sti College Calamba created', '2024-11-03 11:28:08'),
(358, '1', '', 7, 'Company Taascor Management And General Services Corp created', '2024-11-03 11:28:12'),
(359, '1', '', 7, 'Company Taihei Alltech Construction Philippines, Inc. created', '2024-11-03 11:28:17'),
(360, '1', '', 7, 'Company Ten Soon Machines Tools, Inc. created', '2024-11-03 11:28:21'),
(361, '1', '', 7, 'Company The Accounting Firm Of Olal’s Inc. created', '2024-11-03 11:28:27'),
(362, '1', '', 7, 'Company Themis Enterprise Inc. created', '2024-11-03 11:28:31'),
(363, '1', '', 7, 'Company Total Lubricants V Service Trading created', '2024-11-03 11:28:35'),
(364, '1', '', 7, 'Company Toyota Boshoku Phils. Corp. created', '2024-11-03 11:28:39'),
(365, '1', '', 7, 'Company Unihealth-Sta. Rosa Hospital & Medical Center created', '2024-11-03 11:28:43'),
(366, '1', '', 7, 'Company Vivo Talent Reserve Manpower Corp. created', '2024-11-03 11:28:47'),
(367, '1', '', 7, 'Company Vse Accounting Office created', '2024-11-03 11:28:52'),
(368, '1', '', 7, 'Company Vyq Shuttle Services created', '2024-11-03 11:28:55'),
(369, '1', '', 7, 'Company Wesselton Corporation created', '2024-11-03 11:28:59'),
(370, '1', '', 7, 'Company White Monkey Digital Lab Company created', '2024-11-03 11:29:04'),
(371, '1', '', 7, 'Company Yutaka Manufacturing Philippines Inc. created', '2024-11-03 11:29:08'),
(372, '1', '', 7, 'Company Don Bosco College Inc. created', '2024-11-03 11:29:12'),
(373, '1', '', 7, 'Company Westlake Medical Center created', '2024-11-03 11:29:16'),
(374, '1', '', 7, 'Company Mcpd Accountax And Business Consultation Services created', '2024-11-03 11:29:21'),
(375, '1', '', 7, 'Company Mobilecycle Technologies Inc. created', '2024-11-03 11:29:26'),
(376, '66650', '2027777', 19, 'Adjustment request for Student bell Ara has been approved. Reason: sick', '2024-11-04 12:53:52'),
(377, '1', '', 1, 'Coordinator account created for zy', '2024-11-04 16:49:08'),
(378, '73411', '2101886', 18, 'Requirement PNC:AA-FO-20 Set Approved for Student Zyrel Trinidad', '2024-11-05 17:56:22'),
(379, '73411', '2101886', 18, 'Requirement PNC:AA-FO-20 Set Approved for Student Zyrel Trinidad', '2024-11-05 17:57:12'),
(380, '73411', '2101886', 18, 'Requirement PNC:AA-FO-27 Set Approved for Student Zyrel Trinidad', '2024-11-05 17:57:47'),
(381, '1', '', 17, 'Status Set Inactive for Student Zyrel Trinidad', '2024-11-07 22:48:40'),
(382, '1', '', 1, 'Coordinator account created for asdasd', '2024-11-07 23:13:42'),
(383, '1', '', 22, 'Department Co123123 created', '2024-11-07 23:28:50'),
(384, '1', '', 5, 'Department 123123 updated', '2024-11-07 23:29:28'),
(385, '1', '', 4, 'Program 123123 created', '2024-11-07 23:35:59'),
(386, '1', '', 7, 'Company 12312312 created', '2024-11-07 23:42:55'),
(387, '1', '', 8, 'Company 12312312213123 updated', '2024-11-07 23:43:07'),
(388, '1', '', 9, 'Deleted company 12312312213123', '2024-11-07 23:43:17'),
(389, '1', '', 17, 'Status Set Active for Student Zyrel Trinidad', '2024-11-09 14:03:17'),
(390, '1', '', 4, 'Program asdasdasdas created', '2024-11-13 01:11:28'),
(391, '1', '', 4, 'Program asdasdasedasds created', '2024-11-13 01:12:08'),
(392, '1', '', 4, 'Program asdas213e created', '2024-11-13 02:14:47'),
(393, '1', '', 4, 'Program adsdasdsadasd created', '2024-11-13 02:15:27'),
(394, '1', '', 7, 'Company asdasdsadas created', '2024-11-13 02:56:36'),
(395, '1', '', 22, 'Department asdasdasd created', '2024-11-13 03:05:15'),
(396, '1', '', 1, 'Coordinator account created for 13131', '2024-11-13 03:26:37'),
(397, '1', '', 1, 'Coordinator account created for 123123121512', '2024-11-13 03:30:38'),
(398, '1', '', 1, 'Coordinator account created for ghjyhjkuyjkyu', '2024-11-13 03:36:23'),
(399, '66650', '1902236', 18, 'Requirement PNC:AA-FO-23 Set Approved for Student Gela Salvador', '2024-11-13 04:35:25'),
(400, '73411', '2101886', 18, 'Requirement PNC:AA-FO-21 Set Approved for Student Zyrel Trinidad', '2024-11-13 05:33:02'),
(401, '73411', '2101886', 18, 'Requirement PNC:AA-FO-21 Set Approved for Student Zyrel Trinidad', '2024-11-13 06:02:14'),
(402, '73411', '2101886', 18, 'Requirement PNC:AA-FO-21 Set Approved for Student Zyrel Trinidad', '2024-11-13 06:02:25'),
(403, '66650', '2101760', 18, 'Requirement PNC:AA-FO-28 Set Cancelled for Student Charisma Azores with reason: Not Valid', '2024-11-13 15:07:05'),
(404, '66650', '1902236', 18, 'Requirement PNC:AA-FO-22 Set Cancelled for Student Gela Salvador with reason: wrong', '2024-11-14 06:47:13'),
(405, '66650', '1902217', 18, 'Requirement PNC:AA-FO-22 Set Approved for Student Clrsey Mendoza', '2024-11-14 08:32:52'),
(406, '1', '', 1, 'Coordinator account created for tyutuythjfg', '2024-11-14 17:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adjustments`
--

CREATE TABLE `tbl_adjustments` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `records` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `reject_reason` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_adjustments`
--

INSERT INTO `tbl_adjustments` (`id`, `student_id`, `records`, `reason`, `reject_reason`, `status`, `createdAt`) VALUES
(17, '2027777', '2024-11-03', 'sick', '', 'Approved', '2024-11-04 12:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `token_expiry` datetime NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `username`, `password`, `email`, `reset_token`, `token_expiry`, `createdAt`) VALUES
(1, 'imspnc_linkages', '$2y$10$Q2Ok9bCwCckueLjF5AbhneyY82.42kdQxVV6aWt3vdCfRSZqpywOC', 'imspnc69@gmail.com', '', '0000-00-00 00:00:00', '2024-04-06 02:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_companies`
--

CREATE TABLE `tbl_companies` (
  `id` int(11) NOT NULL,
  `company_id` varchar(255) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_companies`
--

INSERT INTO `tbl_companies` (`id`, `company_id`, `company_name`, `createdAt`) VALUES
(20, '92098', 'Coca-Cola Beverages Philippines, Inc. – International', '2024-11-03 11:19:53'),
(21, '75431', 'Agustinian School Of Cabuyao, Inc.', '2024-11-03 11:20:00'),
(22, '57457', 'Cabuyao Social Welfare And Development', '2024-11-03 11:20:14'),
(23, '28450', 'Eastwest Banking Corporation', '2024-11-03 11:20:20'),
(24, '64868', 'Entrepreneur Rural Bank Inc.', '2024-11-03 11:20:32'),
(25, '77434', 'B Fuller (Philippines, Inc.', '2024-11-03 11:20:39'),
(26, '35324', 'Holy Redeemer School Of Cabuyao', '2024-11-03 11:20:46'),
(27, '43677', 'Local Government Unit Of Cabuyao Through Peso/Ccldo/Dti', '2024-11-03 11:20:50'),
(28, '48028', 'Panelo Accounting And Management Advisory Services', '2024-11-03 11:20:55'),
(29, '31314', 'Sfy Integrated Inc.', '2024-11-03 11:21:01'),
(30, '21016', 'Bureau Of Jail Management And Penology', '2024-11-03 11:21:06'),
(31, '44728', 'Charus Credit Services Inc.', '2024-11-03 11:21:11'),
(32, '68760', 'City Disaster Risk Reduction Management Office (Cdrrmo)', '2024-11-03 11:21:16'),
(33, '31698', 'Corinthians Realty Services', '2024-11-03 11:21:21'),
(34, '38334', 'Cyberage Construction Corporation', '2024-11-03 11:21:25'),
(35, '90166', 'A&B Professional Pest Solutions, Corporation', '2024-11-03 11:21:30'),
(36, '27104', 'Dimaano Accounting Firm', '2024-11-03 11:21:35'),
(37, '83154', 'Aclan And Co.Cpas', '2024-11-03 11:21:40'),
(38, '31962', 'Amcar Automotive Corporation', '2024-11-03 11:21:44'),
(39, '58736', 'Apm Techica Ag', '2024-11-03 11:21:49'),
(40, '92720', 'Aurotech Corporation', '2024-11-03 11:21:53'),
(41, '72031', 'Balisong Channel', '2024-11-03 11:21:59'),
(42, '65176', 'Bell Electronics Corporation', '2024-11-03 11:22:03'),
(43, '58376', 'Cabuyao Water District', '2024-11-03 11:22:08'),
(44, '71805', 'Canlubang Techno-Industrial Corporation', '2024-11-03 11:22:12'),
(45, '82283', 'Cavtech Multi-Resources Technology Inc.', '2024-11-03 11:22:17'),
(46, '64631', 'Charus Credit Services Inc. (Calamba Branch)', '2024-11-03 11:22:21'),
(47, '12276', 'City Government Of Cabuyao', '2024-11-03 11:22:28'),
(48, '82986', 'City Population Office', '2024-11-03 11:22:33'),
(49, '35224', 'City Social Services', '2024-11-03 11:22:37'),
(50, '92576', 'Concepcion-Carrier Airconditioning Company', '2024-11-03 11:22:41'),
(51, '50177', 'Dangal Ng Pagbabago Rehabilitation Center', '2024-11-03 11:23:15'),
(52, '53639', 'Deped School Division Of Cabuyao City', '2024-11-03 11:23:20'),
(53, '29994', 'Deped Schools Of Sta. Rosa City', '2024-11-03 11:23:24'),
(54, '95137', 'Dfph Design To Fit Philippines Garments Manufacturing', '2024-11-03 11:23:29'),
(55, '81178', 'Dotsprerinch', '2024-11-03 11:23:33'),
(56, '19943', 'Dynav Engineering Services', '2024-11-03 11:23:38'),
(57, '10019', 'Engtek Precision Philippines, Inc.', '2024-11-03 11:23:42'),
(58, '98756', 'T. De Vera Work Assistance And Management', '2024-11-03 11:24:01'),
(59, '40021', 'Eyefhobe Rehabilitation Center', '2024-11-03 11:24:06'),
(60, '10101', 'Fausto- Bayla Accounting And Auditing Services', '2024-11-03 11:24:10'),
(61, '64975', 'Francisco-Mendoza Accounting Services', '2024-11-03 11:24:15'),
(62, '91780', 'Gendiesel Philippines Inc.', '2024-11-03 11:24:19'),
(63, '75474', 'Greenplus Corporation', '2024-11-03 11:24:23'),
(64, '15743', 'Gtycoon Logistic Corporation', '2024-11-03 11:24:28'),
(65, '11743', 'Hcs Insurance Services', '2024-11-03 11:24:32'),
(66, '92991', 'Hydrocare System Technology Corporation', '2024-11-03 11:24:37'),
(67, '79652', 'Institute For Foundational Learning, Inc.', '2024-11-03 11:24:41'),
(68, '12304', 'Integrated Micro-Electronics, Inc.', '2024-11-03 11:24:45'),
(69, '14756', 'Ionics Ems Inc.', '2024-11-03 11:24:50'),
(70, '47546', 'Aclan Medical And Diagnostic Clinic Inc', '2024-11-03 11:24:54'),
(71, '55824', 'Ja Balomit Accounting And Consultancy', '2024-11-03 11:24:59'),
(72, '21072', 'Jacobo Z. Gonzales Memorial School Of Arts And Trades', '2024-11-03 11:25:03'),
(73, '88753', 'Jlr Elevators & Escalators Corp.', '2024-11-03 11:25:08'),
(74, '50157', 'Jnl Juneric Trading Inc.', '2024-11-03 11:25:12'),
(75, '24410', 'Jobgrade Global Technologies, Inc.', '2024-11-03 11:25:16'),
(76, '26695', 'Kabisig Workers Cooperative', '2024-11-03 11:25:20'),
(77, '99423', 'Kamino Megumi Japanese', '2024-11-03 11:25:24'),
(78, '89746', 'Kc (Knights Of Corps) Security Agency, Inc.', '2024-11-03 11:25:29'),
(79, '62596', 'L.A. Buenaventura And Co., Cpas', '2024-11-03 11:25:38'),
(80, '75707', 'Livelife Homecare Inc', '2024-11-03 11:25:42'),
(81, '14481', 'Luzon Development Bank', '2024-11-03 11:25:47'),
(82, '43328', 'Mgaylican Accounting Services', '2024-11-03 11:25:51'),
(83, '93776', 'Mti Water Technologies Inc.', '2024-11-03 11:25:55'),
(84, '30755', 'Multi-Mix International Manufacturing Corp.', '2024-11-03 11:26:05'),
(85, '14116', 'Naivivs Contractor And Trading Corporation', '2024-11-03 11:26:09'),
(86, '56711', 'Nep Logistic, Inc.', '2024-11-03 11:26:13'),
(87, '89342', 'Netforce International', '2024-11-03 11:26:18'),
(88, '98938', 'New Sinai School And Colleges Inc.', '2024-11-03 11:26:22'),
(89, '13466', 'Nyk-Fil Maritime E-Training Inc.', '2024-11-03 11:26:27'),
(90, '23862', 'One Green Arrow Manpower Corp.', '2024-11-03 11:26:31'),
(91, '95517', 'Pag-Asa Youth Rehabilitation Center', '2024-11-03 11:26:38'),
(92, '23132', 'Pioneer Adhesive Inc', '2024-11-03 11:26:43'),
(93, '28555', 'Pixel8web Solution 7 Consultancy Inc.', '2024-11-03 11:26:47'),
(94, '39801', ' Power Serve (Psi), Inc.', '2024-11-03 11:26:52'),
(95, '65224', 'Prado And Sons Industries, Inc', '2024-11-03 11:26:57'),
(96, '83160', 'R.A. Concepcion & Associates', '2024-11-03 11:27:01'),
(97, '18828', 'Ral Accounting & Ta Consultancy Services', '2024-11-03 11:27:06'),
(98, '44868', 'Ram Food Products Inc.', '2024-11-03 11:27:10'),
(99, '11408', 'Ramon F. Garcia & Company', '2024-11-03 11:27:14'),
(100, '86018', 'Rcd Realty Marketing Corp', '2024-11-03 11:27:18'),
(101, '61868', 'Reign-Nan Sales Industry And General Contractor Inc.', '2024-11-03 11:27:23'),
(102, '54397', 'Re-Lag Legacy Corporation', '2024-11-03 11:27:28'),
(103, '62089', 'Remotask Inc', '2024-11-03 11:27:34'),
(104, '49326', 'Retreat Paradise Rehabilitation Center', '2024-11-03 11:27:38'),
(105, '98530', 'Rvfortuna Builders', '2024-11-03 11:27:43'),
(106, '62511', 'Shin-Etsu Magnetics Philippines Inc.', '2024-11-03 11:27:47'),
(107, '12988', 'Silgan White Cap South East Asia, Inc.', '2024-11-03 11:27:51'),
(108, '13706', 'Sol Psychology Services', '2024-11-03 11:27:56'),
(109, '65798', 'Spumoni Llc', '2024-11-03 11:28:00'),
(110, '86880', 'Ssangyong Berjaya Motor Philippines', '2024-11-03 11:28:04'),
(111, '93415', 'Sti College Calamba', '2024-11-03 11:28:08'),
(112, '84023', 'Taascor Management And General Services Corp', '2024-11-03 11:28:12'),
(113, '27176', 'Taihei Alltech Construction Philippines, Inc.', '2024-11-03 11:28:17'),
(114, '40796', 'Ten Soon Machines Tools, Inc.', '2024-11-03 11:28:21'),
(115, '85319', 'The Accounting Firm Of Olal’s Inc.', '2024-11-03 11:28:27'),
(116, '87444', 'Themis Enterprise Inc.', '2024-11-03 11:28:31'),
(117, '42170', 'Total Lubricants V Service Trading', '2024-11-03 11:28:35'),
(118, '74639', 'Toyota Boshoku Phils. Corp.', '2024-11-03 11:28:39'),
(119, '94662', 'Unihealth-Sta. Rosa Hospital & Medical Center', '2024-11-03 11:28:43'),
(120, '68633', 'Vivo Talent Reserve Manpower Corp.', '2024-11-03 11:28:47'),
(121, '96396', 'Vse Accounting Office', '2024-11-03 11:28:52'),
(122, '95546', 'Vyq Shuttle Services', '2024-11-03 11:28:55'),
(123, '62883', 'Wesselton Corporation', '2024-11-03 11:28:59'),
(124, '21190', 'White Monkey Digital Lab Company', '2024-11-03 11:29:04'),
(125, '45740', 'Yutaka Manufacturing Philippines Inc.', '2024-11-03 11:29:08'),
(126, '49154', 'Don Bosco College Inc.', '2024-11-03 11:29:12'),
(127, '87012', 'Westlake Medical Center', '2024-11-03 11:29:16'),
(128, '25926', 'Mcpd Accountax And Business Consultation Services', '2024-11-03 11:29:21'),
(129, '20704', 'Mobilecycle Technologies Inc.', '2024-11-03 11:29:26'),
(131, '40365', 'asdasdsadas', '2024-11-13 02:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coordinators`
--

CREATE TABLE `tbl_coordinators` (
  `id` int(11) NOT NULL,
  `coordinator_id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `token_expiry` datetime NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coordinators`
--

INSERT INTO `tbl_coordinators` (`id`, `coordinator_id`, `username`, `password`, `firstname`, `lastname`, `email`, `department_id`, `reset_token`, `token_expiry`, `createdAt`) VALUES
(24, '66650', 'charry', '$2y$10$MVL/zZ8fmFfYiGQQ3CDdk.bkccQSslWIhZO.mvCv.emuO9k3olbLW', 'Cha', 'Azores', 'azorescharisma60@gmail.com', 56958, '', '0000-00-00 00:00:00', '2024-11-03 06:47:26'),
(25, '73411', 'zy', '$2y$10$hqeyfJ3vwPMhqHjGSEjU5eUp1y5zKZ1uX3KMoU3.Vqe7FYC5b0eUe', 'Zyrel', 'Trinidad', 'trinidadzyrel86@gmail.com', 25410, '', '0000-00-00 00:00:00', '2024-11-04 16:49:08'),
(26, '90995', 'asdasd', '$2y$10$dmHbvXOJ1okB8SYz/HceXuyYQbC5shu/pgZqKk0NiVkmxTDFjMwoa', 'asdasd', 'asdasd', 'asdasd', 25410, '', '0000-00-00 00:00:00', '2024-11-07 23:13:42'),
(27, '63627', '13131', '$2y$10$Trr140Vr.S9nJf.uLV0o8e3/KfrzjyhrUqo8Y9KPaoi7bN4FLYl4m', '123123123', 'asdasd', 'asdasdas', 56958, '', '0000-00-00 00:00:00', '2024-11-13 03:26:37'),
(28, '97315', '123123121512', '$2y$10$HAaG3KG730EjR9OQYkY9ceTnIS7uE/R8NuRNm51TedCmztGXoNLDq', '41234124', '24124', '12412412', 56958, '', '0000-00-00 00:00:00', '2024-11-13 03:30:38'),
(29, '26974', 'ghjyhjkuyjkyu', '$2y$10$Ezo4uLayuuXXk2Oj/xMI1.XBriU/vUCEZoKVsVAFOVNEb2aTrtxv6', 'uyikyuiyu', 'uyiuyiuy', 'iuyiuy', 25410, '', '0000-00-00 00:00:00', '2024-11-13 03:36:23'),
(30, '21044', 'tyutuythjfg', '$2y$10$UCHqPuwtXAi/MGfem/Pds.4jlP2kYAXZp.60p0H3Z1GGcvJWOhlaS', 'sdasdas', 'asdasdsa', 'sdasds', 56958, '', '0000-00-00 00:00:00', '2024-11-14 17:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_code` varchar(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`id`, `department_id`, `department_name`, `department_code`, `createdAt`) VALUES
(6, 56958, 'College of Computing Studies', 'CCS', '2024-11-03 06:41:00'),
(7, 14744, 'College of Engineering', 'COE', '2024-11-03 06:41:20'),
(8, 25410, 'College of Education', 'COED', '2024-11-03 06:41:38'),
(9, 24230, '123123', '123123', '2024-11-07 23:28:50'),
(10, 33142, 'asdasdasd', 'sd', '2024-11-13 03:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programs`
--

CREATE TABLE `tbl_programs` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `program_id` varchar(255) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `program_hour` int(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_programs`
--

INSERT INTO `tbl_programs` (`id`, `department_id`, `program_id`, `program_name`, `program_hour`, `createdAt`) VALUES
(30, 14744, '60314', 'Bachelor of Science in Industrial Engineering', 300, '2024-11-03 06:42:57'),
(31, 56958, '12898', 'Bachelor of Science in Information Technology', 500, '2024-11-03 06:44:17'),
(32, 25410, '83465', 'Bachelor of Science in Secondary Education', 480, '2024-11-03 06:44:43'),
(33, 56958, '36273', 'Bachelor of Science in Computer Science', 580, '2024-11-03 08:31:16'),
(34, 14744, '93199', 'Bachelor of Science in Electronics Engineering', 400, '2024-11-03 08:32:40'),
(35, 24230, '78770', '123123', 12312312, '2024-11-07 23:35:59'),
(36, 14744, '70828', 'asdasdasdas', 12312312, '2024-11-13 01:11:28'),
(37, 14744, '22059', 'asdasdasedasds', 2147483647, '2024-11-13 01:12:08'),
(38, 56958, '84237', 'asdas213e', 2147483647, '2024-11-13 02:14:47'),
(39, 56958, '72944', 'adsdasdsadasd', 2147483647, '2024-11-13 02:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reference`
--

CREATE TABLE `tbl_reference` (
  `action_id` int(11) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_reference`
--

INSERT INTO `tbl_reference` (`action_id`, `action_name`) VALUES
(1, 'Created a coordinator'),
(2, 'Updated a coordinator'),
(3, 'Deleted a coordinator'),
(4, 'Created a program'),
(5, 'Updated a program'),
(6, 'Deleted a program'),
(7, 'Created a company'),
(8, 'Updated a company'),
(9, 'Deleted a company'),
(10, 'Deleted a student'),
(11, 'Logged in'),
(12, 'Logged out'),
(13, 'Exported data'),
(14, 'Imported data'),
(15, 'Changed system settings'),
(16, 'Performed a security audit'),
(17, 'Set Status Student'),
(18, 'Set Requirement Status Intern'),
(19, 'Set Adjustment Status Intern'),
(20, 'Created a backup file'),
(21, 'Restored a backup file'),
(22, 'ACTION_CREATE_DEPARTMENT'),
(23, 'ACTION_DELETE_DEPARTMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_requirements`
--

CREATE TABLE `tbl_requirements` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `cancel_reason` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_requirements`
--

INSERT INTO `tbl_requirements` (`id`, `student_id`, `form_type`, `file_name`, `file_path`, `status`, `cancel_reason`, `uploaded_at`) VALUES
(23, '2101760', 'PNC:AA-FO-25', 'Guidelines-for-FInal-Defense-1st-SEM-SY-2024-25.pdf', 'requirements/Guidelines-for-FInal-Defense-1st-SEM-SY-2024-25.pdf', 'Approved', '', '2024-11-03 06:57:41'),
(24, '2101760', 'PNC:AA-FO-28', 'Flowchart-Guide.pdf', 'requirements/Flowchart-Guide.pdf', 'Cancelled', 'Not Valid', '2024-11-03 07:07:52'),
(25, '2027002', 'PNC:AA-FO-21', 'Atienza, Claren R_4IT-A.pdf', 'requirements/Atienza, Claren R_4IT-A.pdf', 'Approved', '', '2024-11-03 10:06:38'),
(27, '2101886', 'PNC:AA-FO-20', 'CONTEXT DIAGRAM.png', 'requirements/CONTEXT DIAGRAM.png', 'Approved', '', '2024-11-05 17:44:35'),
(28, '2101886', 'PNC:AA-FO-20', 'Annual Report in the Implementation of Student Internship Program in the Philippines (SIPP).png', 'requirements/Annual Report in the Implementation of Student Internship Program in the Philippines (SIPP).png', 'Approved', '', '2024-11-05 17:56:55'),
(29, '2101886', 'PNC:AA-FO-27', 'Blank diagram.png', 'requirements/Blank diagram.png', 'Approved', '', '2024-11-05 17:57:37'),
(30, '2101886', 'PNC:AA-FO-21', 'Blank diagram (38).png', 'requirements/Blank diagram (38).png', 'Approved', '', '2024-11-13 03:52:36'),
(31, '2101886', 'PNC:AA-FO-21', 'Blank diagram (38).png', 'requirements/Blank diagram (38).png', 'Approved', '', '2024-11-13 03:52:47'),
(32, '2101886', 'PNC:AA-FO-21', 'Blank diagram (38).png', 'requirements/Blank diagram (38).png', 'Approved', '', '2024-11-13 03:53:28'),
(33, '1902236', 'PNC:AA-FO-23', 'ITP109-WEEK-17-Computer-Organization-and-Architecture-20240605103810.pdf', 'requirements/ITP109-WEEK-17-Computer-Organization-and-Architecture-20240605103810.pdf', 'Approved', '', '2024-11-13 04:34:36'),
(34, '1902236', 'PNC:AA-FO-22', 'Career Attitudes and Strategies Inventory - 1903226 - ATIENZA, CLAREN  RUIN.pdf', 'requirements/Career Attitudes and Strategies Inventory - 1903226 - ATIENZA, CLAREN  RUIN.pdf', 'Cancelled', 'wrong', '2024-11-14 06:46:43'),
(35, '1902217', 'PNC:AA-FO-21', 'letter-for-client-data-gathering-ITA4-1.docx', 'requirements/letter-for-client-data-gathering-ITA4-1.docx', 'Pending', '', '2024-11-14 06:54:23'),
(36, '1902217', 'PNC:AA-FO-29', 'letter-for-validators-coded-ita4.pdf', 'requirements/letter-for-validators-coded-ita4.pdf', 'Pending', '', '2024-11-14 06:57:38'),
(37, '1902217', 'PNC:AA-FO-22', 'letter for ethics.pdf', 'requirements/letter for ethics.pdf', 'Approved', '', '2024-11-14 08:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timelogs`
--

CREATE TABLE `tbl_timelogs` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `pin` char(4) NOT NULL,
  `type` enum('time_in','time_out') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `longitude` decimal(9,6) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `photo` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_timelogs`
--

INSERT INTO `tbl_timelogs` (`id`, `student_id`, `pin`, `type`, `timestamp`, `longitude`, `latitude`, `photo`) VALUES
(126, '2027002', '', 'time_in', '2024-11-03 11:38:02', 121.143648, 14.274013, ''),
(127, '2027002', '', 'time_out', '2024-11-03 12:53:36', 121.143657, 14.273994, ''),
(128, '2027777', '', 'time_in', '2024-11-03 13:18:18', 121.163300, 14.215600, ''),
(129, '2101760', '$2y$', 'time_in', '2024-11-03 13:46:19', 121.163300, 14.215600, 0x313733303634313537362d70686f746f2e706e67),
(130, '1902236', '$2y$', 'time_in', '2024-11-13 04:31:40', 121.134205, 14.259424, 0x313733313437323238322d70686f746f2e706e67),
(131, '1902236', '$2y$', 'time_out', '2024-11-13 07:09:55', 121.162957, 13.946061, 0x313733313438313736382d70686f746f2e706e67),
(132, '1902236', '', 'time_in', '2024-11-14 04:19:56', 121.133622, 14.259335, ''),
(133, '2101886', '', 'time_in', '2024-11-14 06:44:13', 121.133743, 14.259360, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `credential_id` text DEFAULT NULL,
  `attestation_object` text DEFAULT NULL,
  `client_data_json` text DEFAULT NULL,
  `pin` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `program_id` int(11) NOT NULL,
  `coordinator_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profile_pic` varchar(255) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `token_expiry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `student_id`, `credential_id`, `attestation_object`, `client_data_json`, `pin`, `firstname`, `lastname`, `email`, `phone`, `address`, `program_id`, `coordinator_id`, `status`, `createdAt`, `profile_pic`, `reset_token`, `token_expiry`) VALUES
(134, '2101760', NULL, NULL, NULL, '$2y$10$lC7wHg2erZnpHVKOHcuIIOXstl1Vw9HCuwrTsHew1ZLK..CTdlrRm', 'Charisma', 'Azores', 'azorescharisma60@gmail.com', '09528372812', 'Katapatan, Cabuyao', 12898, 66650, 'Active', '2024-11-03 06:54:23', '142174304d8558ec8ce4f2417493c335.jpg', '', '0000-00-00 00:00:00'),
(135, '2027002', '3uY2gCipZR4GtrcxcoBSZwicNubeMWugzLtATe2Otwc=', 'o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YVikNOOt46c0HA7woMs7wSdcSMpSjc6fCx98lEOnb4iaY85FAAAAAAiYcFjK3EuBtuEw3lDcvpYAIN7mNoAoqWUeBra3MXKAUmcInDbm3jFroMy7QE3tjrcHpQECAyYgASFYIFTrBcnnA/lTAKvUKD5kb25fmY+dacb/828lx4U69z04IlgguKCJOPgqrScYqE7k3F0kdIHkASJJ+3YfbvnIkKToVyo=', 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoid240Q2otOUlQNHV1S0hKS2dGVzcxSU44WGROS29yY1JIX2VWVy1Ba2RNNCIsIm9yaWdpbiI6Imh0dHBzOi8vaW1zLXBuYy5zaXRlIiwiY3Jvc3NPcmlnaW4iOmZhbHNlfQ==', '$2y$10$VybeE69szX5ZfCGmtBVXOOBRb2Z5cwD9LRPqLetmmpLYOU..e9b2O', 'John', 'Ramos', 'clarencapstone@gmail.com', '09328192403', 'Calamba Laguna', 12898, 66650, 'Active', '2024-11-03 11:37:23', '', '', '0000-00-00 00:00:00'),
(136, '2027777', 'jU//lmfvpQjInbUWkOguifo6E+EuxOxb+sqOEDa38wA=', 'o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YVikNOOt46c0HA7woMs7wSdcSMpSjc6fCx98lEOnb4iaY85FAAAAAAiYcFjK3EuBtuEw3lDcvpYAII1P/5Zn76UIyJ21FpDoLon6OhPhLsTsW/rKjhA2t/MApQECAyYgASFYILzJCFsqp/L8V0rd9AztCSKis2otun9CcYyCA3fMK+mJIlggTeiw0Upk/5uwGPvWP4UaGxw9Dq2CLXCFU2bnTMKn/oE=', 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiNWRvN2dlYTBCS05BNkREM0pmdU45UWFsX2FkdmlwY21uR0V2WlowUllaYyIsIm9yaWdpbiI6Imh0dHBzOi8vaW1zLXBuYy5zaXRlIiwiY3Jvc3NPcmlnaW4iOmZhbHNlfQ==', '$2y$10$25OCjGX2mMl8z2.pCfa9gOnkbUKbk2NfITQFrq8RWWZ.CKsHbYg2u', 'bell', 'Ara', 'jem@gmail.com', '0915675280', 'Laguna', 36273, 66650, 'Active', '2024-11-03 13:17:54', '', '', '0000-00-00 00:00:00'),
(138, '2101886', 'AUePlg4NyaEfgPW9hRgceR6a+d9cArwnJ6cdc/cJZUvjGKgEvrQ08y4L5/F4mkgeK4BF9kFYkEBm2qxIVdYBcN8=', 'o2NmbXRxYW5kcm9pZC1zYWZldHluZXRnYXR0U3RtdKJjdmVyaTI0NDMzNzAyOWhyZXNwb25zZVkgAGV5SmhiR2NpT2lKU1V6STFOaUlzSW5nMVl5STZXeUpOU1VsR1RIcERRMEpDWldkQmQwbENRV2RKVVVSWU1VRlVhVzUzZG1kTlNuSnZWR2hEYlhoMloxUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUUzVFZGemQwTlJXVVJXVVZGSFJYZEtWbFY2UldWTlFuZEhRVEZWUlVOb1RWWlNNamwyV2pKNGJFbEdVbmxrV0U0d1NVWk9iR051V25CWk1sWjZUVkYzZDBObldVUldVVkZFUlhkT1dGVnFVWGRJYUdOT1RXcFJkMDlVUVRWTlJGa3hUV3BKZVZkb1kwNU5hbEY0VFdwQk5FMUVXVEZOYWtsNFYycEJaRTFTYzNkSFVWbEVWbEZSUkVWNFNtaGtTRkpzWXpOUmRWbFhOV3RqYlRsd1drTTFhbUl5TUhkblowVnBUVUV3UjBOVGNVZFRTV0l6UkZGRlFrRlJWVUZCTkVsQ1JIZEJkMmRuUlV0QmIwbENRVkZEZFZodmMxcGtTVzQzVWs5WFVYaFRjMnh4YjJKbmFUaE9SR2RNYlc5TE15czNORmhxUkhRNFpXUklUbk5qYlVVMWRsVTVOVEpXUkdaR04ySlpSMEprTm1SSFdXUnlaamxOZEU1RVVtMHdiR0Z5VDBOM1lrVnFWVEJ0Y0Vkak1YZENXWFpSY1hSb1YwOUVNek5WYkZkTlJXWjVkV2haWnpGTGVXcDBaR3h4UzI5eVVtMDRiWEIxVEZVMlltdFdlbVpTT0VWVk1GTTVWWEExVFU4cmEyaEVSV1pvU2pjNFdYRmhSVVJ1WW5OeWMyNVBRVEpDTldrMVpGVlRiRWxPU201cU55dHBOSGwyYTNNMVZ5OTZWSE5xWVd4YWNIRlFRVlJGYUdKR2JucDZUelpYVUcxTVdWRlNhV2RqT0dGT2VEQmllazB6U1RKQ1RtaDFTM1Z5T1d0NFRrdFRSbU5tZVV4cVoyeDVXbEJ5YW1aSmJGTTRVbGQwVDJ0bWNVNWpkMG95Wm5salJGUkZjMmxaTlRWR2RrWkdOa3g1YTI5RlltRmhaa1JIV0hGalMxWjZiRzFyWlZnd1UxcDJhalZUVVhGTFkzUkNaR1pCWjAxQ1FVRkhhbWRuU2t4TlNVbERVbnBCVDBKblRsWklVVGhDUVdZNFJVSkJUVU5DWVVGM1JYZFpSRlpTTUd4Q1FYZDNRMmRaU1V0M1dVSkNVVlZJUVhkRmQwUkJXVVJXVWpCVVFWRklMMEpCU1hkQlJFRmtRbWRPVmtoUk5FVkdaMUZWWW5kRE9YZERZMjB3V0VkeWIxRjRSVTFhV1ZwV01uSlFaRzVuZDBoM1dVUldVakJxUWtKbmQwWnZRVlZ0T0dkU2RrUXljVTV5YTNocVJUWlFVazVXV0UxcEwwUjNSMFYzV0dkWlNVdDNXVUpDVVZWSVFWRkZSVlZxUWxGTlEyTkhRME56UjBGUlZVWkNla0ZDYUdoMGIyUklVbmRQYVRoMlluazFkMkV5YTNWYU1qbDJXbms1ZWt3elpIbE9RemxGVjBSQmQwcFJXVWxMZDFsQ1FsRlZTRTFCUzBkSFYyZ3daRWhCTmt4NU9YQk1ia0p5WVZNMWJtSXlPVzVNTTJSNVRrTTFhbU51VVhkSVVWbEVWbEl3VWtKQ1dYZEdTVWxUV1ZoU01GcFlUakJNYlVaMVdraEtkbUZYVVhWWk1qbDBUVUpOUjBFeFZXUkpRVkZOVFVGdmQwTkJXVWRhTkVWTlFWRkpRazFFV1VkQk1WVmtTSGRSZGsxRE1IZExOa0Z3YjBObFIwcFhhREJrU0VFMlRIazVha3h1UW5KaFV6VnVZakk1Ymt3elpIbE9RemxxVG0xNGIxWXlUbTlYVnpWeFQwTTFhbU50ZDNkblowVkZRbWR2Y2tKblJVVkJaRm8xUVdkUlEwSkpTREZDU1VoNVFWQkJRV1JSUWtselQwNXlNbkZhU0U1QkwyeGhaMHcyYmxSRWNraEdTVUo1TVdKa1RFbElXblUzSzNKUFpHbEZZM2RCUVVGYVNGWjRVV0pMUVVGQlJVRjNRa2ROUlZGRFNVUndSMEY1UTFCbVNqUlljWGhOYmtaNFRGRm1Va1p0TjNCU01tMUhPRElyYWxaV1prZHdVSGx0YUdSQmFVSlJNakpKTjAwMWMxWTJVSHBFTkUxRVlpOXNWSEJuVjB0T2VrVnFNblY0UW1Sc1RuUlVSRUU1VWk5UlFqTkJUemRPTUVkVVZqSjRjazk0Vm5remJtSlVUa1UyU1hsb01GbzRkazk2WlhjeFJrbFhWVnA0U0RkWFlrRkJRVUpyWkZoR1FuRlZRVUZCVVVSQlJXZDNVbWRKYUVGT2RUZFlNV3QwT1ZkRVZGVmhkRTlHWkZOdVVUVnlLelV3UlZjelNtRnZiWFZFTTFCMVpuVnpkbFpwUVdsRlFYbElhMUpUVEhoRVFUQXdTRk5YZFdkTmFIZHdaRzB3UW10RlJVWm5MelJXUW01TWRraEhiMjgxUmtGM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFVUm5aMFZDUVVGT2RtcGxlR2h5T0hCTlFVRlFUbVJ1UTJacE9UUlpNMUE0Y1ZoS2EzaHZPRXBEYUdoamVWWk1TMnh5VmtGaldqYzJVMFpMY2toME1HZGFZVEkwU1dreVZVVkxhelpQZDJvM1RYZFNSM0pyV0M5VlZtbE9abFIyWm13dmVtaEdiMnc1YW5JMVYwbFpXR292VDJoSWJUWjBaRGN2WWxBMkswWTNWVEZyVXprMlV6QktTa1YyY3l0Tk5IbHlhVFZRUlRGV1NXazRORGQzUkZSVGFEaGlRMnc0WjNoU01FeHFhM1ZQTTJrclFXWnVZak5sY2k5WmIzaHVjVW9yUjFsNFYyaE9ORTlIUnk5aVNtSnFXRko2VkVsQmN6VTNVRTFzTHpKUVlWbEJRUzlFZFU5cVUxUk9URmhSVTFOWFRuRk1WMWxsTlVWWmNXRldTa3R4VXpKT1NXWm1WVE5UWjJvMFkxSmxjbXBUU0Rjd1JsRkxjalowYjNOTFkyY3JabTlvWlVkNE1XMVhSbWwxY1RKdE1Fa3hSMG95T1ZsTlJIWm5ha1ExY0c5TGExaG5MMjU1VmxoQ1YxUXpSVTlCZGxkWFZWVXZUV1pLZHowaUxDSk5TVWxHUTNwRFEwRjJUMmRCZDBsQ1FXZEpVV1l2UVVaMFRuQXhkVWR3WVhob0wydE5TR05VZWxSQlRrSm5hM0ZvYTJsSE9YY3dRa0ZSYzBaQlJFSklUVkZ6ZDBOUldVUldVVkZIUlhkS1ZsVjZSV2xOUTBGSFFURlZSVU5vVFZwU01qbDJXako0YkVsR1VubGtXRTR3U1VaT2JHTnVXbkJaTWxaNlNVVjRUVkY2UlZWTlFrbEhRVEZWUlVGNFRVeFNNVkpVU1VaS2RtSXpVV2RWYWtWM1NHaGpUazFxVFhoTmFrVjZUVVJyZDAxRVFYZFhhR05PVFdwcmQwMXFTWGROVkZGM1RVUkJkMWRxUVRkTlVYTjNRMUZaUkZaUlVVZEZkMHBXVlhwRlpVMUNkMGRCTVZWRlEyaE5WbEl5T1haYU1uaHNTVVpTZVdSWVRqQkpSazVzWTI1YWNGa3lWbnBOVVhkM1EyZFpSRlpSVVVSRmQwNVlWV3BSZDJkblJXbE5RVEJIUTFOeFIxTkpZak5FVVVWQ1FWRlZRVUUwU1VKRWQwRjNaMmRGUzBGdlNVSkJVVU4yVkd4SEwzcHNRMnMyTkRRNWEyRlhMMFJEYjJseGIzQXdjRWwzZVdGT09FdFJSMkp6VmpJd2MzSXdZalF5T1VweVVrMVJURXBVTHpkelNWSk1jMWhrY2xaalFUVTNOelZXT1ZoUkwwWnNWbEJWYzNsR1VXRlhTRVY0WjJGUllXWXlVRnA0VGxacldXWlVPVk5VTlRkaE9WVmlWaXRPVkd4a1kyNXRlSFp2YjB4dGNHaDNMMVJHZG14dWNIRXljazB4Tlhsc1NHbHhPR3hIY1dkUmNGSTVMelpCVEhWdmJHMVhSRlpQVUVaRlowRnNWR1E1VVc5RlZ6bG5URTExUnpOc1R6TXhiSFJ6Wlc1YVYxUXhiRU5SVXpKU1VsWlRlRmhxTjJOU016SnNXR2RUUlhOck1WcDZOVGRsVW14blEyWjVaa0YyVlVwVmRFMTBPVGd5YzI5T1VqSmtlazlXVDB0cU9YcHNhV1ZHY21Ka1prSmFhSGhhU0ZGdU4wbEtkVWRqWTJScFNtNUxWRlJsWWtKcWVFMW9WV05WU0dzMk1ubHNUemRuWlV4MFlqTktUVlZpWW01MlUxbEVNbFZCWTJ4bmVuSjNiRUZuVFVKQlFVZHFaMlkwZDJkbWMzZEVaMWxFVmxJd1VFRlJTQzlDUVZGRVFXZEhSMDFDTUVkQk1WVmtTbEZSVjAxQ1VVZERRM05IUVZGVlJrSjNUVUpDWjJkeVFtZEZSa0pSWTBSQmFrRlRRbWRPVmtoU1RVSkJaamhGUTBSQlIwRlJTQzlCWjBWQlRVSXdSMEV4VldSRVoxRlhRa0pUWW5sQ1J6aFFZVzh5ZFZSSFRWUnZPVVV4Vm1ONVREaFFRVmxVUVdaQ1owNVdTRk5OUlVkRVFWZG5RbFJyY25semJXTlNiM0pUUTJWR1RERktiVXhQTDNkcFVrNTRVR3BCTUVKblozSkNaMFZHUWxGalFrRlJVVzlOUTFsM1NrRlpTVXQzV1VKQ1VWVklUVUZMUjBkSGFEQmtTRUUyVEhrNWNFeHVRbkpoVXpWdVlqSTVia3d6U1hoTWJVNTVaRVJCY2tKblRsWklVamhGU2tSQmFVMURRMmRJY1VGamFHaHdiMlJJVW5kUGFUaDJXWGsxZDJFeWEzVmFNamwyV25rNWVVd3pTWGhNYlU1NVlrUkJWRUpuVGxaSVUwRkZSRVJCUzAxQlowZENiV1ZDUkVGRlEwRlVRVTVDWjJ0eGFHdHBSemwzTUVKQlVYTkdRVUZQUTBGblJVRm9NbTVFT1ZkRU5YTnJlbFZNUVhodFNXUjBlRlphV2tZNEx6VjNkRFZwWmtsTlZVRlZVazVXZDFwalREbDFkVTkyY2s1VU56VndWbWg1TTFrMFpIRTVVSFJDUkhsSmJXZFVZMGxZY25Gd09FVk1iRkZJWWsxSFVqSnZia014ZVRWb1VtbHZVak5IUnpGS09IRkhRbVV6UWpGRVVYcHVNSEZ2TlVkcmNuZzBhV2xxTDJRMmRIbHZSM2htZW1SQmRuUlFVbEVyYXpaUVlWaGhPRXhYWkdocWNGTXZMMWRHWjA4MlRWaFBTMlUyY1ZScFkxWnRhalkwV0ZsM2FtOUVVVmxPZFZsSWRFTlhVRVp5VnpocGJVTmtNMUl4TlVnck0wdHNRMjVOTjBaMlVYbGtUbkl3TkV4UVZYUXZURmxOT0VkYVNFSktlVlZ4TVc5WWRrVTFVa3RYYTI5M01WQjBTSEIxYlRNNU9IVkhlVlo2Wml0MmRTc3dNV2t2YldSRVVYQnpZaTlKTDFCUlZqbENRVXBwYmpsRk1tTm1XVXhzUVhOT2JEbFdZVlZ2Vldsbk9YRjFiRk1yYW10dVpHaDBUMU5SWTFkMGR6WXlXVXgxUjI4dmVVazVZMFkwVlZrMGNUbHNWMmRPVHpkTU9VbFdWa2hSYnprMGIwTnlUREZuVWsxTFFVNTBSbXRoWTB4RVJVTjNRWFZHVTB0MmRXaGhOMFJoYmxrM2FGbzNXWEZHTmtoclRteEtlbFJCTmxrNVZWSk9jVGxOZUhGS2FFMWxWR1JyWldaNkszTXhRV1F2VVZrd1pUSk5TRWRuWWtVcmIwNWtOR0YzVkdSeVJYaFRNa0l5UlhBM2QyTlRhVEZ2UVRNMGNFbGhTbWRSZFZkMU9FWnliMk5EYzNwemNXTXJiMHBYVkhKM01sWlJaMlU1ZUdkVldsVk5Xa3hTVjJKR05Hb3pSa3RRYzFaV1oxWXJOMmM1TlZKT1JXcEhhRU14VFRoTVlYTTRkM2MxVkN0MVFsQk5USE5UVVdzeVFsSklZM2RtZVVSU01qQTVNa3BHYkdSSGRVRTRUVlZCY2tkT0wyNUlWRVJtVjJGWlRFbFFRMVZvZDBKb2NGbFBha3R1YVRSbFVFeHlZV1J4TjBGSE1sRnZSMVp6ZWxwM1owcGxjVXhZU2tKbUswazJibmw2Um1ReVl6VlBXRTFITmpWT1l6MGlMQ0pOU1VsR1dXcERRMEpGY1dkQmQwbENRV2RKVVdRM01FNWlUbk15SzFKeWNVbFJMMFU0Um1wVVJGUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUpZVFZGemQwTlJXVVJXVVZGSFJYZEtRMUpVUlZwTlFtTkhRVEZWUlVOb1RWRlNNbmgyV1cxR2MxVXliRzVpYVVKMVpHa3hlbGxVUlZGTlFUUkhRVEZWUlVONFRVaFZiVGwyWkVOQ1JGRlVSV0pOUW10SFFURlZSVUY0VFZOU01uaDJXVzFHYzFVeWJHNWlhVUpUWWpJNU1FbEZUa0pOUWpSWVJGUkpkMDFFV1hoUFZFRjNUVVJCTUUxc2IxaEVWRWswVFVSRmVVOUVRWGROUkVFd1RXeHZkMUo2UlV4TlFXdEhRVEZWUlVKb1RVTldWazE0U1dwQlowSm5UbFpDUVc5VVIxVmtkbUl5WkhOYVUwSlZZMjVXZW1SRFFsUmFXRW95WVZkT2JHTjVRazFVUlUxNFJrUkJVMEpuVGxaQ1FVMVVRekJrVlZWNVFsTmlNamt3U1VaSmVFMUpTVU5KYWtGT1FtZHJjV2hyYVVjNWR6QkNRVkZGUmtGQlQwTkJaemhCVFVsSlEwTm5TME5CWjBWQmRHaEZRMmw0TjJwdldHVmlUemw1TDJ4RU5qTnNZV1JCVUV0SU9XZDJiRGxOWjJGRFkyWmlNbXBJTHpjMlRuVTRZV2syV0d3MlQwMVRMMnR5T1hKSU5YcHZVV1J6Wm01R2JEazNkblZtUzJvMlluZFRhVlkyYm5Gc1MzSXJRMDF1ZVRaVGVHNUhVR0l4Tld3ck9FRndaVFl5YVcwNVRWcGhVbmN4VGtWRVVHcFVja1ZVYnpobldXSkZkbk12UVcxUk16VXhhMHRUVldwQ05rY3dNR293ZFZsUFJGQXdaMjFJZFRneFNUaEZNME4zYm5GSmFYSjFObm94YTFveGNTdFFjMEZsZDI1cVNIaG5jMGhCTTNrMmJXSlhkMXBFY2xoWlptbFpZVkpSVFRselNHMXJiRU5wZEVRek9HMDFZV2RKTDNCaWIxQkhhVlZWS3paRVQyOW5ja1phV1VwemRVSTJha00xTVRGd2VuSndNVnByYWpWYVVHRkxORGxzT0V0RmFqaERPRkZOUVV4WVRETXlhRGROTVdKTGQxbFZTQ3RGTkVWNlRtdDBUV2MyVkU4NFZYQnRkazF5VlhCemVWVnhkRVZxTldOMVNFdGFVR1p0WjJoRFRqWktNME5wYjJvMlQwZGhTeTlIVURWQlptdzBMMWgwWTJRdmNESm9MM0p6TXpkRlQyVmFWbGgwVERCdE56bFpRakJsYzFkRGNuVlBRemRZUm5oWmNGWnhPVTl6Tm5CR1RFdGpkMXB3UkVsc1ZHbHllRnBWVkZGQmN6WnhlbXR0TURad09UaG5OMEpCWlN0a1JIRTJaSE52TkRrNWFWbElObFJMV0M4eFdUZEVlbXQyWjNSa2FYcHFhMWhRWkhORWRGRkRkamxWZHl0M2NEbFZOMFJpUjB0dloxQmxUV0V6VFdRcmNIWmxlamRYTXpWRmFVVjFZU3NyZEdkNUwwSkNha1pHUm5remJETlhSbkJQT1V0WFozbzNlbkJ0TjBGbFMwcDBPRlF4TVdSc1pVTm1aVmhyYTFWQlMwbEJaalZ4YjBsaVlYQnpXbGQzY0dKclRrWm9TR0Y0TW5oSlVFVkVaMlpuTVdGNlZsazRNRnBqUm5WamRFdzNWR3hNYmsxUkx6QnNWVlJpYVZOM01XNUlOamxOUnpaNlR6QmlPV1kyUWxGa1owRnRSREEyZVVzMU5tMUVZMWxDV2xWRFFYZEZRVUZoVDBOQlZHZDNaMmRGTUUxQk5FZEJNVlZrUkhkRlFpOTNVVVZCZDBsQ2FHcEJVRUpuVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlVhM0o1YzIxalVtOXlVME5sUmt3eFNtMU1UeTkzYVZKT2VGQnFRV1pDWjA1V1NGTk5SVWRFUVZkblFsSm5aVEpaWVZKUk1saDViMnhSVERNd1JYcFVVMjh2TDNvNVUzcENaMEpuWjNKQ1owVkdRbEZqUWtGUlVsVk5Sa2wzU2xGWlNVdDNXVUpDVVZWSVRVRkhSMGRYYURCa1NFRTJUSGs1ZGxrelRuZE1ia0p5WVZNMWJtSXlPVzVNTW1SNlkycEZkMHRSV1VsTGQxbENRbEZWU0UxQlMwZElWMmd3WkVoQk5reDVPWGRoTW10MVdqSTVkbHA1T1c1ak0wbDRUREprZW1OcVJYVlpNMG93VFVSSlIwRXhWV1JJZDFGeVRVTnJkMG8yUVd4dlEwOUhTVmRvTUdSSVFUWk1lVGxxWTIxM2RXTkhkSEJNYldSMllqSmpkbG96VG5sTlV6bHVZek5KZUV4dFRubGlSRUUzUW1kT1ZraFRRVVZPUkVGNVRVRm5SMEp0WlVKRVFVVkRRVlJCU1VKbldtNW5VWGRDUVdkSmQwUlJXVXhMZDFsQ1FrRklWMlZSU1VaQmQwbDNSRkZaVEV0M1dVSkNRVWhYWlZGSlJrRjNUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSRk5yU0hKRmIyODVRekJrYUdWdFRWaHZhRFprUmxOUWMycGlaRUphUW1sTVp6bE9Vak4wTlZBclZEUldlR1p4TjNaeFprMHZZalZCTTFKcE1XWjVTbTA1WW5ab1pFZGhTbEV6WWpKME5ubE5RVmxPTDI5c1ZXRjZjMkZNSzNsNVJXNDVWM0J5UzBGVFQzTm9TVUZ5UVc5NVdtd3JkRXBoYjNneE1UaG1aWE56YlZodU1XaEpWbmMwTVc5bFVXRXhkakYyWnpSR2RqYzBlbEJzTmk5QmFGTnlkemxWTlhCRFdrVjBORmRwTkhkVGRIbzJaRlJhTDBOTVFVNTRPRXhhYURGS04xRktWbW95Wm1oTmRHWlVTbkk1ZHpSNk16QmFNakE1Wms5Vk1HbFBUWGtyY1dSMVFtMXdkblpaZFZJM2FGcE1Oa1IxY0hONlptNTNNRk5yWm5Sb2N6RTRaRWM1V2t0aU5UbFZhSFp0WVZOSFdsSldZazVSY0hObk0wSmFiSFpwWkRCc1NVdFBNbVF4ZUc5NlkyeFBlbWRxV0ZCWmIzWktTa2wxYkhSNmEwMTFNelJ4VVdJNVUzb3ZlV2xzY21KRFoybzRQU0pkZlEuZXlKdWIyNWpaU0k2SWtaa1RrOHdjVGs1WnpJNE1IWXhjV050VUc0NU9XdzBNRm9yTVZCWk5rVlhWV3hvYzFoSFdtbE9hVFE5SWl3aWRHbHRaWE4wWVcxd1RYTWlPakUzTXpFMU5qWTJNVFU0TlRFc0ltRndhMUJoWTJ0aFoyVk9ZVzFsSWpvaVkyOXRMbWR2YjJkc1pTNWhibVJ5YjJsa0xtZHRjeUlzSW1Gd2EwUnBaMlZ6ZEZOb1lUSTFOaUk2SWxZclRrc3dTVk5IZFV4elQxb3dRWGhpTlZsTmFXMHhjREJzZURJMFkxUmtNV2NySzNNck4zSlRjMVU5SWl3aVkzUnpVSEp2Wm1sc1pVMWhkR05vSWpwMGNuVmxMQ0poY0d0RFpYSjBhV1pwWTJGMFpVUnBaMlZ6ZEZOb1lUSTFOaUk2V3lJNFVERnpWekJGVUVwamMyeDNOMVY2VW5OcFdFdzJOSGNyVHpVd1JXUXJVa0pKUTNSaGVURm5NalJOUFNKZExDSmlZWE5wWTBsdWRHVm5jbWwwZVNJNmRISjFaU3dpWlhaaGJIVmhkR2x2YmxSNWNHVWlPaUpDUVZOSlF5eElRVkpFVjBGU1JWOUNRVU5MUlVRaUxDSmtaWEJ5WldOaGRHbHZia2x1Wm05eWJXRjBhVzl1SWpvaVZHaGxJR0Z3Y0NCcGN5QmhiR3h2ZDJ4cGMzUmxaQ0IwYnlCMWMyVWdkR2hsSUZOaFptVjBlVTVsZENCQmRIUmxjM1JoZEdsdmJpQkJVRWtnZFc1MGFXd2dkR2hsSUdaMWJHd2dkSFZ5Ym1SdmQyNDZJR2gwZEhCek9pOHZaeTVqYnk5d2JHRjVMM05oWm1WMGVXNWxkQzEwYVcxbGJHbHVaUzRpZlEuV2FWdHNKb1NYNzVLSlVNYkRDT2pRc1hWTU1FZ2YxWnE4eF9pSHhkTDV5bG12eVBiSGFVQ1FRR2NNVmxzMFFxWlQ0M2FIWGNyY3lNUWVZclJMRW13VHJ5SkJ1Z0JGMEFZNmY4RlZtQi0zMkFwQlRBWWVvX19VbkVrNXNQTVN2RzJlSmwxRFdqSTkxaDdoZFJRVkM0OXhWeGJ2S0poWXZPN1p1c3ZZRFZZaUFlZlZnaHY1WUkyMWw5TExIQkNSVEdHa0R0ZVpXaFRrWHA2TElpamhzUHg4czVSQVREbk41RGVQODBQNUgwdEpyZlhJaENlZkpQd1JUaXRLZGRQcDVlVkZTTlN0eklWMEhyb0NnVzRPMWNxSlFRU3VGZDNGeG8zWXVTR0xleEVVUllwTVdpZ0RzQkxiQXVfSGJyeWoxb01aZWl6a2pFYUxUQjhRZHV3Tmxhd3l3aGF1dGhEYXRhWMU0463jpzQcDvCgyzvBJ1xIylKNzp8LH3yUQ6dviJpjzkUAAAAAuT/ZYfLmRi+xIoIAIkfeeABBAUePlg4NyaEfgPW9hRgceR6a+d9cArwnJ6cdc/cJZUvjGKgEvrQ08y4L5/F4mkgeK4BF9kFYkEBm2qxIVdYBcN+lAQIDJiABIVggnE0c+LgYDl+MRgmf8p37S9Lc8RcEudGxhIcqubiTfi0iWCCiUmLLZU08k43E7pevFsUpLgBKgN/sjQaKG3e0+TDYng==', 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiSWVlZUotZGYwbTd0ODEzNGxtc21XUFpFM1FLQk9KQ1VQNzQ3NUU2ZWRJWSIsIm9yaWdpbiI6Imh0dHBzOi8vaW1zLXBuYy5zaXRlIiwiY3Jvc3NPcmlnaW4iOmZhbHNlfQ==', '$2y$10$sXO0dVVWhR2iizAtrq.Aq.uSrr3xNLuKPnI5gmuhxfNOUipoBzsaW', 'Zyrel', 'Trinidad', 'trinidadzyrel86@gmail.com', '09099497796', 'Mahogany Phase 3', 83465, 73411, 'Active', '2024-11-14 06:43:36', '', '', '0000-00-00 00:00:00'),
(139, '1902236', 'AYl19HVSObnikUzFIpDgqQl6YZhD9QUdPz+LYO022QpxIwNZyhRHAVKv0qtvraaQYpyjBhJoq9K0LGBKu1biKOI=', 'o2NmbXRxYW5kcm9pZC1zYWZldHluZXRnYXR0U3RtdKJjdmVyaTI0NDMzNzAxM2hyZXNwb25zZVkgAGV5SmhiR2NpT2lKU1V6STFOaUlzSW5nMVl5STZXeUpOU1VsR1RIcERRMEpDWldkQmQwbENRV2RKVVVSWU1VRlVhVzUzZG1kTlNuSnZWR2hEYlhoMloxUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUUzVFZGemQwTlJXVVJXVVZGSFJYZEtWbFY2UldWTlFuZEhRVEZWUlVOb1RWWlNNamwyV2pKNGJFbEdVbmxrV0U0d1NVWk9iR051V25CWk1sWjZUVkYzZDBObldVUldVVkZFUlhkT1dGVnFVWGRJYUdOT1RXcFJkMDlVUVRWTlJGa3hUV3BKZVZkb1kwNU5hbEY0VFdwQk5FMUVXVEZOYWtsNFYycEJaRTFTYzNkSFVWbEVWbEZSUkVWNFNtaGtTRkpzWXpOUmRWbFhOV3RqYlRsd1drTTFhbUl5TUhkblowVnBUVUV3UjBOVGNVZFRTV0l6UkZGRlFrRlJWVUZCTkVsQ1JIZEJkMmRuUlV0QmIwbENRVkZEZFZodmMxcGtTVzQzVWs5WFVYaFRjMnh4YjJKbmFUaE9SR2RNYlc5TE15czNORmhxUkhRNFpXUklUbk5qYlVVMWRsVTVOVEpXUkdaR04ySlpSMEprTm1SSFdXUnlaamxOZEU1RVVtMHdiR0Z5VDBOM1lrVnFWVEJ0Y0Vkak1YZENXWFpSY1hSb1YwOUVNek5WYkZkTlJXWjVkV2haWnpGTGVXcDBaR3h4UzI5eVVtMDRiWEIxVEZVMlltdFdlbVpTT0VWVk1GTTVWWEExVFU4cmEyaEVSV1pvU2pjNFdYRmhSVVJ1WW5OeWMyNVBRVEpDTldrMVpGVlRiRWxPU201cU55dHBOSGwyYTNNMVZ5OTZWSE5xWVd4YWNIRlFRVlJGYUdKR2JucDZUelpYVUcxTVdWRlNhV2RqT0dGT2VEQmllazB6U1RKQ1RtaDFTM1Z5T1d0NFRrdFRSbU5tZVV4cVoyeDVXbEJ5YW1aSmJGTTRVbGQwVDJ0bWNVNWpkMG95Wm5salJGUkZjMmxaTlRWR2RrWkdOa3g1YTI5RlltRmhaa1JIV0hGalMxWjZiRzFyWlZnd1UxcDJhalZUVVhGTFkzUkNaR1pCWjAxQ1FVRkhhbWRuU2t4TlNVbERVbnBCVDBKblRsWklVVGhDUVdZNFJVSkJUVU5DWVVGM1JYZFpSRlpTTUd4Q1FYZDNRMmRaU1V0M1dVSkNVVlZJUVhkRmQwUkJXVVJXVWpCVVFWRklMMEpCU1hkQlJFRmtRbWRPVmtoUk5FVkdaMUZWWW5kRE9YZERZMjB3V0VkeWIxRjRSVTFhV1ZwV01uSlFaRzVuZDBoM1dVUldVakJxUWtKbmQwWnZRVlZ0T0dkU2RrUXljVTV5YTNocVJUWlFVazVXV0UxcEwwUjNSMFYzV0dkWlNVdDNXVUpDVVZWSVFWRkZSVlZxUWxGTlEyTkhRME56UjBGUlZVWkNla0ZDYUdoMGIyUklVbmRQYVRoMlluazFkMkV5YTNWYU1qbDJXbms1ZWt3elpIbE9RemxGVjBSQmQwcFJXVWxMZDFsQ1FsRlZTRTFCUzBkSFYyZ3daRWhCTmt4NU9YQk1ia0p5WVZNMWJtSXlPVzVNTTJSNVRrTTFhbU51VVhkSVVWbEVWbEl3VWtKQ1dYZEdTVWxUV1ZoU01GcFlUakJNYlVaMVdraEtkbUZYVVhWWk1qbDBUVUpOUjBFeFZXUkpRVkZOVFVGdmQwTkJXVWRhTkVWTlFWRkpRazFFV1VkQk1WVmtTSGRSZGsxRE1IZExOa0Z3YjBObFIwcFhhREJrU0VFMlRIazVha3h1UW5KaFV6VnVZakk1Ymt3elpIbE9RemxxVG0xNGIxWXlUbTlYVnpWeFQwTTFhbU50ZDNkblowVkZRbWR2Y2tKblJVVkJaRm8xUVdkUlEwSkpTREZDU1VoNVFWQkJRV1JSUWtselQwNXlNbkZhU0U1QkwyeGhaMHcyYmxSRWNraEdTVUo1TVdKa1RFbElXblUzSzNKUFpHbEZZM2RCUVVGYVNGWjRVV0pMUVVGQlJVRjNRa2ROUlZGRFNVUndSMEY1UTFCbVNqUlljWGhOYmtaNFRGRm1Va1p0TjNCU01tMUhPRElyYWxaV1prZHdVSGx0YUdSQmFVSlJNakpKTjAwMWMxWTJVSHBFTkUxRVlpOXNWSEJuVjB0T2VrVnFNblY0UW1Sc1RuUlVSRUU1VWk5UlFqTkJUemRPTUVkVVZqSjRjazk0Vm5remJtSlVUa1UyU1hsb01GbzRkazk2WlhjeFJrbFhWVnA0U0RkWFlrRkJRVUpyWkZoR1FuRlZRVUZCVVVSQlJXZDNVbWRKYUVGT2RUZFlNV3QwT1ZkRVZGVmhkRTlHWkZOdVVUVnlLelV3UlZjelNtRnZiWFZFTTFCMVpuVnpkbFpwUVdsRlFYbElhMUpUVEhoRVFUQXdTRk5YZFdkTmFIZHdaRzB3UW10RlJVWm5MelJXUW01TWRraEhiMjgxUmtGM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFVUm5aMFZDUVVGT2RtcGxlR2h5T0hCTlFVRlFUbVJ1UTJacE9UUlpNMUE0Y1ZoS2EzaHZPRXBEYUdoamVWWk1TMnh5VmtGaldqYzJVMFpMY2toME1HZGFZVEkwU1dreVZVVkxhelpQZDJvM1RYZFNSM0pyV0M5VlZtbE9abFIyWm13dmVtaEdiMnc1YW5JMVYwbFpXR292VDJoSWJUWjBaRGN2WWxBMkswWTNWVEZyVXprMlV6QktTa1YyY3l0Tk5IbHlhVFZRUlRGV1NXazRORGQzUkZSVGFEaGlRMnc0WjNoU01FeHFhM1ZQTTJrclFXWnVZak5sY2k5WmIzaHVjVW9yUjFsNFYyaE9ORTlIUnk5aVNtSnFXRko2VkVsQmN6VTNVRTFzTHpKUVlWbEJRUzlFZFU5cVUxUk9URmhSVTFOWFRuRk1WMWxsTlVWWmNXRldTa3R4VXpKT1NXWm1WVE5UWjJvMFkxSmxjbXBUU0Rjd1JsRkxjalowYjNOTFkyY3JabTlvWlVkNE1XMVhSbWwxY1RKdE1Fa3hSMG95T1ZsTlJIWm5ha1ExY0c5TGExaG5MMjU1VmxoQ1YxUXpSVTlCZGxkWFZWVXZUV1pLZHowaUxDSk5TVWxHUTNwRFEwRjJUMmRCZDBsQ1FXZEpVV1l2UVVaMFRuQXhkVWR3WVhob0wydE5TR05VZWxSQlRrSm5hM0ZvYTJsSE9YY3dRa0ZSYzBaQlJFSklUVkZ6ZDBOUldVUldVVkZIUlhkS1ZsVjZSV2xOUTBGSFFURlZSVU5vVFZwU01qbDJXako0YkVsR1VubGtXRTR3U1VaT2JHTnVXbkJaTWxaNlNVVjRUVkY2UlZWTlFrbEhRVEZWUlVGNFRVeFNNVkpVU1VaS2RtSXpVV2RWYWtWM1NHaGpUazFxVFhoTmFrVjZUVVJyZDAxRVFYZFhhR05PVFdwcmQwMXFTWGROVkZGM1RVUkJkMWRxUVRkTlVYTjNRMUZaUkZaUlVVZEZkMHBXVlhwRlpVMUNkMGRCTVZWRlEyaE5WbEl5T1haYU1uaHNTVVpTZVdSWVRqQkpSazVzWTI1YWNGa3lWbnBOVVhkM1EyZFpSRlpSVVVSRmQwNVlWV3BSZDJkblJXbE5RVEJIUTFOeFIxTkpZak5FVVVWQ1FWRlZRVUUwU1VKRWQwRjNaMmRGUzBGdlNVSkJVVU4yVkd4SEwzcHNRMnMyTkRRNWEyRlhMMFJEYjJseGIzQXdjRWwzZVdGT09FdFJSMkp6VmpJd2MzSXdZalF5T1VweVVrMVJURXBVTHpkelNWSk1jMWhrY2xaalFUVTNOelZXT1ZoUkwwWnNWbEJWYzNsR1VXRlhTRVY0WjJGUllXWXlVRnA0VGxacldXWlVPVk5VTlRkaE9WVmlWaXRPVkd4a1kyNXRlSFp2YjB4dGNHaDNMMVJHZG14dWNIRXljazB4Tlhsc1NHbHhPR3hIY1dkUmNGSTVMelpCVEhWdmJHMVhSRlpQVUVaRlowRnNWR1E1VVc5RlZ6bG5URTExUnpOc1R6TXhiSFJ6Wlc1YVYxUXhiRU5SVXpKU1VsWlRlRmhxTjJOU016SnNXR2RUUlhOck1WcDZOVGRsVW14blEyWjVaa0YyVlVwVmRFMTBPVGd5YzI5T1VqSmtlazlXVDB0cU9YcHNhV1ZHY21Ka1prSmFhSGhhU0ZGdU4wbEtkVWRqWTJScFNtNUxWRlJsWWtKcWVFMW9WV05WU0dzMk1ubHNUemRuWlV4MFlqTktUVlZpWW01MlUxbEVNbFZCWTJ4bmVuSjNiRUZuVFVKQlFVZHFaMlkwZDJkbWMzZEVaMWxFVmxJd1VFRlJTQzlDUVZGRVFXZEhSMDFDTUVkQk1WVmtTbEZSVjAxQ1VVZERRM05IUVZGVlJrSjNUVUpDWjJkeVFtZEZSa0pSWTBSQmFrRlRRbWRPVmtoU1RVSkJaamhGUTBSQlIwRlJTQzlCWjBWQlRVSXdSMEV4VldSRVoxRlhRa0pUWW5sQ1J6aFFZVzh5ZFZSSFRWUnZPVVV4Vm1ONVREaFFRVmxVUVdaQ1owNVdTRk5OUlVkRVFWZG5RbFJyY25semJXTlNiM0pUUTJWR1RERktiVXhQTDNkcFVrNTRVR3BCTUVKblozSkNaMFZHUWxGalFrRlJVVzlOUTFsM1NrRlpTVXQzV1VKQ1VWVklUVUZMUjBkSGFEQmtTRUUyVEhrNWNFeHVRbkpoVXpWdVlqSTVia3d6U1hoTWJVNTVaRVJCY2tKblRsWklVamhGU2tSQmFVMURRMmRJY1VGamFHaHdiMlJJVW5kUGFUaDJXWGsxZDJFeWEzVmFNamwyV25rNWVVd3pTWGhNYlU1NVlrUkJWRUpuVGxaSVUwRkZSRVJCUzAxQlowZENiV1ZDUkVGRlEwRlVRVTVDWjJ0eGFHdHBSemwzTUVKQlVYTkdRVUZQUTBGblJVRm9NbTVFT1ZkRU5YTnJlbFZNUVhodFNXUjBlRlphV2tZNEx6VjNkRFZwWmtsTlZVRlZVazVXZDFwalREbDFkVTkyY2s1VU56VndWbWg1TTFrMFpIRTVVSFJDUkhsSmJXZFVZMGxZY25Gd09FVk1iRkZJWWsxSFVqSnZia014ZVRWb1VtbHZVak5IUnpGS09IRkhRbVV6UWpGRVVYcHVNSEZ2TlVkcmNuZzBhV2xxTDJRMmRIbHZSM2htZW1SQmRuUlFVbEVyYXpaUVlWaGhPRXhYWkdocWNGTXZMMWRHWjA4MlRWaFBTMlUyY1ZScFkxWnRhalkwV0ZsM2FtOUVVVmxPZFZsSWRFTlhVRVp5VnpocGJVTmtNMUl4TlVnck0wdHNRMjVOTjBaMlVYbGtUbkl3TkV4UVZYUXZURmxOT0VkYVNFSktlVlZ4TVc5WWRrVTFVa3RYYTI5M01WQjBTSEIxYlRNNU9IVkhlVlo2Wml0MmRTc3dNV2t2YldSRVVYQnpZaTlKTDFCUlZqbENRVXBwYmpsRk1tTm1XVXhzUVhOT2JEbFdZVlZ2Vldsbk9YRjFiRk1yYW10dVpHaDBUMU5SWTFkMGR6WXlXVXgxUjI4dmVVazVZMFkwVlZrMGNUbHNWMmRPVHpkTU9VbFdWa2hSYnprMGIwTnlUREZuVWsxTFFVNTBSbXRoWTB4RVJVTjNRWFZHVTB0MmRXaGhOMFJoYmxrM2FGbzNXWEZHTmtoclRteEtlbFJCTmxrNVZWSk9jVGxOZUhGS2FFMWxWR1JyWldaNkszTXhRV1F2VVZrd1pUSk5TRWRuWWtVcmIwNWtOR0YzVkdSeVJYaFRNa0l5UlhBM2QyTlRhVEZ2UVRNMGNFbGhTbWRSZFZkMU9FWnliMk5EYzNwemNXTXJiMHBYVkhKM01sWlJaMlU1ZUdkVldsVk5Xa3hTVjJKR05Hb3pSa3RRYzFaV1oxWXJOMmM1TlZKT1JXcEhhRU14VFRoTVlYTTRkM2MxVkN0MVFsQk5USE5UVVdzeVFsSklZM2RtZVVSU01qQTVNa3BHYkdSSGRVRTRUVlZCY2tkT0wyNUlWRVJtVjJGWlRFbFFRMVZvZDBKb2NGbFBha3R1YVRSbFVFeHlZV1J4TjBGSE1sRnZSMVp6ZWxwM1owcGxjVXhZU2tKbUswazJibmw2Um1ReVl6VlBXRTFITmpWT1l6MGlMQ0pOU1VsR1dXcERRMEpGY1dkQmQwbENRV2RKVVdRM01FNWlUbk15SzFKeWNVbFJMMFU0Um1wVVJGUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUpZVFZGemQwTlJXVVJXVVZGSFJYZEtRMUpVUlZwTlFtTkhRVEZWUlVOb1RWRlNNbmgyV1cxR2MxVXliRzVpYVVKMVpHa3hlbGxVUlZGTlFUUkhRVEZWUlVONFRVaFZiVGwyWkVOQ1JGRlVSV0pOUW10SFFURlZSVUY0VFZOU01uaDJXVzFHYzFVeWJHNWlhVUpUWWpJNU1FbEZUa0pOUWpSWVJGUkpkMDFFV1hoUFZFRjNUVVJCTUUxc2IxaEVWRWswVFVSRmVVOUVRWGROUkVFd1RXeHZkMUo2UlV4TlFXdEhRVEZWUlVKb1RVTldWazE0U1dwQlowSm5UbFpDUVc5VVIxVmtkbUl5WkhOYVUwSlZZMjVXZW1SRFFsUmFXRW95WVZkT2JHTjVRazFVUlUxNFJrUkJVMEpuVGxaQ1FVMVVRekJrVlZWNVFsTmlNamt3U1VaSmVFMUpTVU5KYWtGT1FtZHJjV2hyYVVjNWR6QkNRVkZGUmtGQlQwTkJaemhCVFVsSlEwTm5TME5CWjBWQmRHaEZRMmw0TjJwdldHVmlUemw1TDJ4RU5qTnNZV1JCVUV0SU9XZDJiRGxOWjJGRFkyWmlNbXBJTHpjMlRuVTRZV2syV0d3MlQwMVRMMnR5T1hKSU5YcHZVV1J6Wm01R2JEazNkblZtUzJvMlluZFRhVlkyYm5Gc1MzSXJRMDF1ZVRaVGVHNUhVR0l4Tld3ck9FRndaVFl5YVcwNVRWcGhVbmN4VGtWRVVHcFVja1ZVYnpobldXSkZkbk12UVcxUk16VXhhMHRUVldwQ05rY3dNR293ZFZsUFJGQXdaMjFJZFRneFNUaEZNME4zYm5GSmFYSjFObm94YTFveGNTdFFjMEZsZDI1cVNIaG5jMGhCTTNrMmJXSlhkMXBFY2xoWlptbFpZVkpSVFRselNHMXJiRU5wZEVRek9HMDFZV2RKTDNCaWIxQkhhVlZWS3paRVQyOW5ja1phV1VwemRVSTJha00xTVRGd2VuSndNVnByYWpWYVVHRkxORGxzT0V0RmFqaERPRkZOUVV4WVRETXlhRGROTVdKTGQxbFZTQ3RGTkVWNlRtdDBUV2MyVkU4NFZYQnRkazF5VlhCemVWVnhkRVZxTldOMVNFdGFVR1p0WjJoRFRqWktNME5wYjJvMlQwZGhTeTlIVURWQlptdzBMMWgwWTJRdmNESm9MM0p6TXpkRlQyVmFWbGgwVERCdE56bFpRakJsYzFkRGNuVlBRemRZUm5oWmNGWnhPVTl6Tm5CR1RFdGpkMXB3UkVsc1ZHbHllRnBWVkZGQmN6WnhlbXR0TURad09UaG5OMEpCWlN0a1JIRTJaSE52TkRrNWFWbElObFJMV0M4eFdUZEVlbXQyWjNSa2FYcHFhMWhRWkhORWRGRkRkamxWZHl0M2NEbFZOMFJpUjB0dloxQmxUV0V6VFdRcmNIWmxlamRYTXpWRmFVVjFZU3NyZEdkNUwwSkNha1pHUm5remJETlhSbkJQT1V0WFozbzNlbkJ0TjBGbFMwcDBPRlF4TVdSc1pVTm1aVmhyYTFWQlMwbEJaalZ4YjBsaVlYQnpXbGQzY0dKclRrWm9TR0Y0TW5oSlVFVkVaMlpuTVdGNlZsazRNRnBqUm5WamRFdzNWR3hNYmsxUkx6QnNWVlJpYVZOM01XNUlOamxOUnpaNlR6QmlPV1kyUWxGa1owRnRSREEyZVVzMU5tMUVZMWxDV2xWRFFYZEZRVUZoVDBOQlZHZDNaMmRGTUUxQk5FZEJNVlZrUkhkRlFpOTNVVVZCZDBsQ2FHcEJVRUpuVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlVhM0o1YzIxalVtOXlVME5sUmt3eFNtMU1UeTkzYVZKT2VGQnFRV1pDWjA1V1NGTk5SVWRFUVZkblFsSm5aVEpaWVZKUk1saDViMnhSVERNd1JYcFVVMjh2TDNvNVUzcENaMEpuWjNKQ1owVkdRbEZqUWtGUlVsVk5Sa2wzU2xGWlNVdDNXVUpDVVZWSVRVRkhSMGRYYURCa1NFRTJUSGs1ZGxrelRuZE1ia0p5WVZNMWJtSXlPVzVNTW1SNlkycEZkMHRSV1VsTGQxbENRbEZWU0UxQlMwZElWMmd3WkVoQk5reDVPWGRoTW10MVdqSTVkbHA1T1c1ak0wbDRUREprZW1OcVJYVlpNMG93VFVSSlIwRXhWV1JJZDFGeVRVTnJkMG8yUVd4dlEwOUhTVmRvTUdSSVFUWk1lVGxxWTIxM2RXTkhkSEJNYldSMllqSmpkbG96VG5sTlV6bHVZek5KZUV4dFRubGlSRUUzUW1kT1ZraFRRVVZPUkVGNVRVRm5SMEp0WlVKRVFVVkRRVlJCU1VKbldtNW5VWGRDUVdkSmQwUlJXVXhMZDFsQ1FrRklWMlZSU1VaQmQwbDNSRkZaVEV0M1dVSkNRVWhYWlZGSlJrRjNUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSRk5yU0hKRmIyODVRekJrYUdWdFRWaHZhRFprUmxOUWMycGlaRUphUW1sTVp6bE9Vak4wTlZBclZEUldlR1p4TjNaeFprMHZZalZCTTFKcE1XWjVTbTA1WW5ab1pFZGhTbEV6WWpKME5ubE5RVmxPTDI5c1ZXRjZjMkZNSzNsNVJXNDVWM0J5UzBGVFQzTm9TVUZ5UVc5NVdtd3JkRXBoYjNneE1UaG1aWE56YlZodU1XaEpWbmMwTVc5bFVXRXhkakYyWnpSR2RqYzBlbEJzTmk5QmFGTnlkemxWTlhCRFdrVjBORmRwTkhkVGRIbzJaRlJhTDBOTVFVNTRPRXhhYURGS04xRktWbW95Wm1oTmRHWlVTbkk1ZHpSNk16QmFNakE1Wms5Vk1HbFBUWGtyY1dSMVFtMXdkblpaZFZJM2FGcE1Oa1IxY0hONlptNTNNRk5yWm5Sb2N6RTRaRWM1V2t0aU5UbFZhSFp0WVZOSFdsSldZazVSY0hObk0wSmFiSFpwWkRCc1NVdFBNbVF4ZUc5NlkyeFBlbWRxV0ZCWmIzWktTa2wxYkhSNmEwMTFNelJ4VVdJNVUzb3ZlV2xzY21KRFoybzRQU0pkZlEuZXlKdWIyNWpaU0k2SWxGNlJrdzBRa2xzY1hGak9WTnhVbTVZWTJoU1pUZ3dkelJQWVVoNVNGTXJNbU5HTkdaVGRXUlplalE5SWl3aWRHbHRaWE4wWVcxd1RYTWlPakUzTXpFMU5UWTFOREkzTmpnc0ltRndhMUJoWTJ0aFoyVk9ZVzFsSWpvaVkyOXRMbWR2YjJkc1pTNWhibVJ5YjJsa0xtZHRjeUlzSW1Gd2EwUnBaMlZ6ZEZOb1lUSTFOaUk2SWpadFNFWXhTR1pUUkhKS2RITldWMEZxWlhNd1VYaHpURXBpY25sdllXRldlSGxSYmxoWk4ycHdUV3M5SWl3aVkzUnpVSEp2Wm1sc1pVMWhkR05vSWpwMGNuVmxMQ0poY0d0RFpYSjBhV1pwWTJGMFpVUnBaMlZ6ZEZOb1lUSTFOaUk2V3lJNFVERnpWekJGVUVwamMyeDNOMVY2VW5OcFdFdzJOSGNyVHpVd1JXUXJVa0pKUTNSaGVURm5NalJOUFNKZExDSmlZWE5wWTBsdWRHVm5jbWwwZVNJNmRISjFaU3dpWlhaaGJIVmhkR2x2YmxSNWNHVWlPaUpDUVZOSlF5eElRVkpFVjBGU1JWOUNRVU5MUlVRaUxDSmtaWEJ5WldOaGRHbHZia2x1Wm05eWJXRjBhVzl1SWpvaVZHaGxJR0Z3Y0NCcGN5QmhiR3h2ZDJ4cGMzUmxaQ0IwYnlCMWMyVWdkR2hsSUZOaFptVjBlVTVsZENCQmRIUmxjM1JoZEdsdmJpQkJVRWtnZFc1MGFXd2dkR2hsSUdaMWJHd2dkSFZ5Ym1SdmQyNDZJR2gwZEhCek9pOHZaeTVqYnk5d2JHRjVMM05oWm1WMGVXNWxkQzEwYVcxbGJHbHVaUzRpZlEub1dqcjhGT3JmMzRFWVVpaExldjNPYU1mVzFFMXEwbjFNdmlYNVpuQXRxWi1YOHNzaC1uSTctWVVKWXUtMWNUU2M5M2xHQjktTFBTcUNYTl9TRXc5dU1Zb1hvZHdyNmdkZUhwVnNhU1RmQ1kwSEtKXzNBcVlKd0FUak10UGlvblV1aGw3ZkU3SXJRUEN0NUNtSGxSdnNwdUFGU3M4QWd0TWlTUnRTWGIxWFRxcW5PenpTLTZSOVFhRG51c0x0OFBTZzY3UWNseHdDOXp4Y0E3dHpNel9uaHJETHdnRzFmMm9ZVGNoOUxEM0ZjZzBKc3JPV29SLWRRSDA1a0YwZ1NXLTNRVHotNzgtOG93TVg4cDJvOUVYSk8zazlzQ0ZCc3hUYVV1akRTU2p4NWd6TVd3RGVCWGxTMjc5NnA5TW9yTlM4YWlqWUNzazdLeWVOckxjQk1CcVd3aGF1dGhEYXRhWMU0463jpzQcDvCgyzvBJ1xIylKNzp8LH3yUQ6dviJpjzkUAAAAAuT/ZYfLmRi+xIoIAIkfeeABBAYl19HVSObnikUzFIpDgqQl6YZhD9QUdPz+LYO022QpxIwNZyhRHAVKv0qtvraaQYpyjBhJoq9K0LGBKu1biKOKlAQIDJiABIVgg16whNlu75ccjaMSDiusnzbImMOauDycZDdhewErYggAiWCBPfvlaHkCtKnG8Dg2z5cZh1Vn2q87pNE4uP8lgWmferg==', 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiZjRweGpvQjRfUkNua1JwT2FJdTk2UW5yeE5TREFZZTRuSHdGZHVxaGlsdyIsIm9yaWdpbiI6Imh0dHBzOi8vaW1zLXBuYy5zaXRlIiwiY3Jvc3NPcmlnaW4iOmZhbHNlfQ==', '$2y$10$pkDsYv56erxx2X8X6WAQEe5/Nn7fLSLeV0nGUhjWpbgsAxKOq3ioG', 'Gela', 'Salvador', 'salvadorgela@gmail.com', '0915675310', 'Calamba Laguna', 12898, 66650, 'Active', '2024-11-14 03:55:43', '', '', '0000-00-00 00:00:00'),
(140, '2025001', NULL, NULL, NULL, '$2y$10$Tp2VE94Ra.Qp6XejUYku0etcJ7ldku1na.aK9qDKywJ/z5nRq0S7i', 'Andrea', 'Cruz', 'andrea.cruz@example.com', '639171234587', '123 Enterprise St, Cabuyao, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:43', '', '', '0000-00-00 00:00:00'),
(141, '2025002', NULL, NULL, NULL, '$2y$10$D4PbriJ4cV.Nlw/jA5kP2ecy99o/w1F6495fUNqvY/odfrx9K5nb6', 'Miguel', 'Villanueva', 'miguel.villanueva@example.com', '639171234588', '456 Market Ave, Sta. Rosa, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:43', '', '', '0000-00-00 00:00:00'),
(142, '2025003', NULL, NULL, NULL, '$2y$10$w3S04ogWCwbXUP2ZRef6L.f5A4bBQCRX6RY4yE6pH2Rcnw/QkFKBS', 'Sophia', 'Tan', 'sophia.tan@example.com', '639171234589', '789 Commerce Blvd, Biñan, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:44', '', '', '0000-00-00 00:00:00'),
(143, '2025004', NULL, NULL, NULL, '$2y$10$F/L.oh7o6f5poDWBuvn0beDZMPlGTpL.1wl3arAcb5ej4fQoEDLVm', 'Carlo', 'Lim', 'carlo.lim@example.com', '639171234590', '321 Trade St, San Pedro, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:44', '', '', '0000-00-00 00:00:00'),
(144, '2025005', NULL, NULL, NULL, '$2y$10$Y6S/3ziII.lQ9FDjSZLv3eijKWXiWrMpn99YyoMEWSiW/hLMNRjTa', 'Erika', 'Rivera', 'erika.rivera@example.com', '639171234591', '654 Business Rd, Calamba, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:44', '', '', '0000-00-00 00:00:00'),
(145, '2025006', NULL, NULL, NULL, '$2y$10$HkuhduJy.h/XrWXnfh3i5uwZVWGmDTOwleNTDm.ysKqYxvtkDRH9m', 'Joshua', 'Manalo', 'joshua.manalo@example.com', '639171234592', '987 Finance Ln, Cabuyao, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:44', '', '', '0000-00-00 00:00:00'),
(146, '2025007', NULL, NULL, NULL, '$2y$10$yBy7J7wuXh/SMXNFjEQbjOm8dBqELtC5JIADszr95mPciwUaPRR5e', 'Isabel', 'Bautista', 'isabel.bautista@example.com', '639171234593', '135 Economy St, Calamba, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:44', '', '', '0000-00-00 00:00:00'),
(147, '2025008', NULL, NULL, NULL, '$2y$10$IiT3y0kSeSugKhvE1Y8r4.yPC5JV//wJIiYcpKDdXKbBmWIFqAPR.', 'Kevin', 'Reyes', 'kevin.reyes@example.com', '639171234594', '246 Growth Ave, Biñan, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:44', '', '', '0000-00-00 00:00:00'),
(148, '2025009', NULL, NULL, NULL, '$2y$10$Wfoyex0rNCmpP7IPwhKqa./GWy2I1Ant0kkRaAfz.YI7EFgiiYkVe', 'Melanie', 'Garcia', 'melanie.garcia@example.com', '639171234595', '789 Strategy St, San Pedro, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:44', '', '', '0000-00-00 00:00:00'),
(149, '2025010', NULL, NULL, NULL, '$2y$10$WJCs6MpgUZy8qDA3WU0BbuMI3ZLBiZ9JANztmVQLYB7jDW1F5k0oG', 'Alex', 'Torres', 'alex.torres@example.com', '639171234596', '123 Profit Rd, Sta. Rosa, Laguna', 83465, 73411, 'Active', '2024-11-13 04:48:44', '', '', '0000-00-00 00:00:00'),
(150, '1902217', 'AXn2cSOjZj37aplT96rxshHxeTyzVY4c8BtwoX9ae2QAhYSJsGcHSoZAQrMvsYZ+5ppGoYCqxGZ/Hs+EYOmjj34=', 'o2NmbXRxYW5kcm9pZC1zYWZldHluZXRnYXR0U3RtdKJjdmVyaTI0NDMzNzAyOWhyZXNwb25zZVkgAGV5SmhiR2NpT2lKU1V6STFOaUlzSW5nMVl5STZXeUpOU1VsR1RIcERRMEpDWldkQmQwbENRV2RKVVVSWU1VRlVhVzUzZG1kTlNuSnZWR2hEYlhoMloxUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUUzVFZGemQwTlJXVVJXVVZGSFJYZEtWbFY2UldWTlFuZEhRVEZWUlVOb1RWWlNNamwyV2pKNGJFbEdVbmxrV0U0d1NVWk9iR051V25CWk1sWjZUVkYzZDBObldVUldVVkZFUlhkT1dGVnFVWGRJYUdOT1RXcFJkMDlVUVRWTlJGa3hUV3BKZVZkb1kwNU5hbEY0VFdwQk5FMUVXVEZOYWtsNFYycEJaRTFTYzNkSFVWbEVWbEZSUkVWNFNtaGtTRkpzWXpOUmRWbFhOV3RqYlRsd1drTTFhbUl5TUhkblowVnBUVUV3UjBOVGNVZFRTV0l6UkZGRlFrRlJWVUZCTkVsQ1JIZEJkMmRuUlV0QmIwbENRVkZEZFZodmMxcGtTVzQzVWs5WFVYaFRjMnh4YjJKbmFUaE9SR2RNYlc5TE15czNORmhxUkhRNFpXUklUbk5qYlVVMWRsVTVOVEpXUkdaR04ySlpSMEprTm1SSFdXUnlaamxOZEU1RVVtMHdiR0Z5VDBOM1lrVnFWVEJ0Y0Vkak1YZENXWFpSY1hSb1YwOUVNek5WYkZkTlJXWjVkV2haWnpGTGVXcDBaR3h4UzI5eVVtMDRiWEIxVEZVMlltdFdlbVpTT0VWVk1GTTVWWEExVFU4cmEyaEVSV1pvU2pjNFdYRmhSVVJ1WW5OeWMyNVBRVEpDTldrMVpGVlRiRWxPU201cU55dHBOSGwyYTNNMVZ5OTZWSE5xWVd4YWNIRlFRVlJGYUdKR2JucDZUelpYVUcxTVdWRlNhV2RqT0dGT2VEQmllazB6U1RKQ1RtaDFTM1Z5T1d0NFRrdFRSbU5tZVV4cVoyeDVXbEJ5YW1aSmJGTTRVbGQwVDJ0bWNVNWpkMG95Wm5salJGUkZjMmxaTlRWR2RrWkdOa3g1YTI5RlltRmhaa1JIV0hGalMxWjZiRzFyWlZnd1UxcDJhalZUVVhGTFkzUkNaR1pCWjAxQ1FVRkhhbWRuU2t4TlNVbERVbnBCVDBKblRsWklVVGhDUVdZNFJVSkJUVU5DWVVGM1JYZFpSRlpTTUd4Q1FYZDNRMmRaU1V0M1dVSkNVVlZJUVhkRmQwUkJXVVJXVWpCVVFWRklMMEpCU1hkQlJFRmtRbWRPVmtoUk5FVkdaMUZWWW5kRE9YZERZMjB3V0VkeWIxRjRSVTFhV1ZwV01uSlFaRzVuZDBoM1dVUldVakJxUWtKbmQwWnZRVlZ0T0dkU2RrUXljVTV5YTNocVJUWlFVazVXV0UxcEwwUjNSMFYzV0dkWlNVdDNXVUpDVVZWSVFWRkZSVlZxUWxGTlEyTkhRME56UjBGUlZVWkNla0ZDYUdoMGIyUklVbmRQYVRoMlluazFkMkV5YTNWYU1qbDJXbms1ZWt3elpIbE9RemxGVjBSQmQwcFJXVWxMZDFsQ1FsRlZTRTFCUzBkSFYyZ3daRWhCTmt4NU9YQk1ia0p5WVZNMWJtSXlPVzVNTTJSNVRrTTFhbU51VVhkSVVWbEVWbEl3VWtKQ1dYZEdTVWxUV1ZoU01GcFlUakJNYlVaMVdraEtkbUZYVVhWWk1qbDBUVUpOUjBFeFZXUkpRVkZOVFVGdmQwTkJXVWRhTkVWTlFWRkpRazFFV1VkQk1WVmtTSGRSZGsxRE1IZExOa0Z3YjBObFIwcFhhREJrU0VFMlRIazVha3h1UW5KaFV6VnVZakk1Ymt3elpIbE9RemxxVG0xNGIxWXlUbTlYVnpWeFQwTTFhbU50ZDNkblowVkZRbWR2Y2tKblJVVkJaRm8xUVdkUlEwSkpTREZDU1VoNVFWQkJRV1JSUWtselQwNXlNbkZhU0U1QkwyeGhaMHcyYmxSRWNraEdTVUo1TVdKa1RFbElXblUzSzNKUFpHbEZZM2RCUVVGYVNGWjRVV0pMUVVGQlJVRjNRa2ROUlZGRFNVUndSMEY1UTFCbVNqUlljWGhOYmtaNFRGRm1Va1p0TjNCU01tMUhPRElyYWxaV1prZHdVSGx0YUdSQmFVSlJNakpKTjAwMWMxWTJVSHBFTkUxRVlpOXNWSEJuVjB0T2VrVnFNblY0UW1Sc1RuUlVSRUU1VWk5UlFqTkJUemRPTUVkVVZqSjRjazk0Vm5remJtSlVUa1UyU1hsb01GbzRkazk2WlhjeFJrbFhWVnA0U0RkWFlrRkJRVUpyWkZoR1FuRlZRVUZCVVVSQlJXZDNVbWRKYUVGT2RUZFlNV3QwT1ZkRVZGVmhkRTlHWkZOdVVUVnlLelV3UlZjelNtRnZiWFZFTTFCMVpuVnpkbFpwUVdsRlFYbElhMUpUVEhoRVFUQXdTRk5YZFdkTmFIZHdaRzB3UW10RlJVWm5MelJXUW01TWRraEhiMjgxUmtGM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFVUm5aMFZDUVVGT2RtcGxlR2h5T0hCTlFVRlFUbVJ1UTJacE9UUlpNMUE0Y1ZoS2EzaHZPRXBEYUdoamVWWk1TMnh5VmtGaldqYzJVMFpMY2toME1HZGFZVEkwU1dreVZVVkxhelpQZDJvM1RYZFNSM0pyV0M5VlZtbE9abFIyWm13dmVtaEdiMnc1YW5JMVYwbFpXR292VDJoSWJUWjBaRGN2WWxBMkswWTNWVEZyVXprMlV6QktTa1YyY3l0Tk5IbHlhVFZRUlRGV1NXazRORGQzUkZSVGFEaGlRMnc0WjNoU01FeHFhM1ZQTTJrclFXWnVZak5sY2k5WmIzaHVjVW9yUjFsNFYyaE9ORTlIUnk5aVNtSnFXRko2VkVsQmN6VTNVRTFzTHpKUVlWbEJRUzlFZFU5cVUxUk9URmhSVTFOWFRuRk1WMWxsTlVWWmNXRldTa3R4VXpKT1NXWm1WVE5UWjJvMFkxSmxjbXBUU0Rjd1JsRkxjalowYjNOTFkyY3JabTlvWlVkNE1XMVhSbWwxY1RKdE1Fa3hSMG95T1ZsTlJIWm5ha1ExY0c5TGExaG5MMjU1VmxoQ1YxUXpSVTlCZGxkWFZWVXZUV1pLZHowaUxDSk5TVWxHUTNwRFEwRjJUMmRCZDBsQ1FXZEpVV1l2UVVaMFRuQXhkVWR3WVhob0wydE5TR05VZWxSQlRrSm5hM0ZvYTJsSE9YY3dRa0ZSYzBaQlJFSklUVkZ6ZDBOUldVUldVVkZIUlhkS1ZsVjZSV2xOUTBGSFFURlZSVU5vVFZwU01qbDJXako0YkVsR1VubGtXRTR3U1VaT2JHTnVXbkJaTWxaNlNVVjRUVkY2UlZWTlFrbEhRVEZWUlVGNFRVeFNNVkpVU1VaS2RtSXpVV2RWYWtWM1NHaGpUazFxVFhoTmFrVjZUVVJyZDAxRVFYZFhhR05PVFdwcmQwMXFTWGROVkZGM1RVUkJkMWRxUVRkTlVYTjNRMUZaUkZaUlVVZEZkMHBXVlhwRlpVMUNkMGRCTVZWRlEyaE5WbEl5T1haYU1uaHNTVVpTZVdSWVRqQkpSazVzWTI1YWNGa3lWbnBOVVhkM1EyZFpSRlpSVVVSRmQwNVlWV3BSZDJkblJXbE5RVEJIUTFOeFIxTkpZak5FVVVWQ1FWRlZRVUUwU1VKRWQwRjNaMmRGUzBGdlNVSkJVVU4yVkd4SEwzcHNRMnMyTkRRNWEyRlhMMFJEYjJseGIzQXdjRWwzZVdGT09FdFJSMkp6VmpJd2MzSXdZalF5T1VweVVrMVJURXBVTHpkelNWSk1jMWhrY2xaalFUVTNOelZXT1ZoUkwwWnNWbEJWYzNsR1VXRlhTRVY0WjJGUllXWXlVRnA0VGxacldXWlVPVk5VTlRkaE9WVmlWaXRPVkd4a1kyNXRlSFp2YjB4dGNHaDNMMVJHZG14dWNIRXljazB4Tlhsc1NHbHhPR3hIY1dkUmNGSTVMelpCVEhWdmJHMVhSRlpQVUVaRlowRnNWR1E1VVc5RlZ6bG5URTExUnpOc1R6TXhiSFJ6Wlc1YVYxUXhiRU5SVXpKU1VsWlRlRmhxTjJOU016SnNXR2RUUlhOck1WcDZOVGRsVW14blEyWjVaa0YyVlVwVmRFMTBPVGd5YzI5T1VqSmtlazlXVDB0cU9YcHNhV1ZHY21Ka1prSmFhSGhhU0ZGdU4wbEtkVWRqWTJScFNtNUxWRlJsWWtKcWVFMW9WV05WU0dzMk1ubHNUemRuWlV4MFlqTktUVlZpWW01MlUxbEVNbFZCWTJ4bmVuSjNiRUZuVFVKQlFVZHFaMlkwZDJkbWMzZEVaMWxFVmxJd1VFRlJTQzlDUVZGRVFXZEhSMDFDTUVkQk1WVmtTbEZSVjAxQ1VVZERRM05IUVZGVlJrSjNUVUpDWjJkeVFtZEZSa0pSWTBSQmFrRlRRbWRPVmtoU1RVSkJaamhGUTBSQlIwRlJTQzlCWjBWQlRVSXdSMEV4VldSRVoxRlhRa0pUWW5sQ1J6aFFZVzh5ZFZSSFRWUnZPVVV4Vm1ONVREaFFRVmxVUVdaQ1owNVdTRk5OUlVkRVFWZG5RbFJyY25semJXTlNiM0pUUTJWR1RERktiVXhQTDNkcFVrNTRVR3BCTUVKblozSkNaMFZHUWxGalFrRlJVVzlOUTFsM1NrRlpTVXQzV1VKQ1VWVklUVUZMUjBkSGFEQmtTRUUyVEhrNWNFeHVRbkpoVXpWdVlqSTVia3d6U1hoTWJVNTVaRVJCY2tKblRsWklVamhGU2tSQmFVMURRMmRJY1VGamFHaHdiMlJJVW5kUGFUaDJXWGsxZDJFeWEzVmFNamwyV25rNWVVd3pTWGhNYlU1NVlrUkJWRUpuVGxaSVUwRkZSRVJCUzAxQlowZENiV1ZDUkVGRlEwRlVRVTVDWjJ0eGFHdHBSemwzTUVKQlVYTkdRVUZQUTBGblJVRm9NbTVFT1ZkRU5YTnJlbFZNUVhodFNXUjBlRlphV2tZNEx6VjNkRFZwWmtsTlZVRlZVazVXZDFwalREbDFkVTkyY2s1VU56VndWbWg1TTFrMFpIRTVVSFJDUkhsSmJXZFVZMGxZY25Gd09FVk1iRkZJWWsxSFVqSnZia014ZVRWb1VtbHZVak5IUnpGS09IRkhRbVV6UWpGRVVYcHVNSEZ2TlVkcmNuZzBhV2xxTDJRMmRIbHZSM2htZW1SQmRuUlFVbEVyYXpaUVlWaGhPRXhYWkdocWNGTXZMMWRHWjA4MlRWaFBTMlUyY1ZScFkxWnRhalkwV0ZsM2FtOUVVVmxPZFZsSWRFTlhVRVp5VnpocGJVTmtNMUl4TlVnck0wdHNRMjVOTjBaMlVYbGtUbkl3TkV4UVZYUXZURmxOT0VkYVNFSktlVlZ4TVc5WWRrVTFVa3RYYTI5M01WQjBTSEIxYlRNNU9IVkhlVlo2Wml0MmRTc3dNV2t2YldSRVVYQnpZaTlKTDFCUlZqbENRVXBwYmpsRk1tTm1XVXhzUVhOT2JEbFdZVlZ2Vldsbk9YRjFiRk1yYW10dVpHaDBUMU5SWTFkMGR6WXlXVXgxUjI4dmVVazVZMFkwVlZrMGNUbHNWMmRPVHpkTU9VbFdWa2hSYnprMGIwTnlUREZuVWsxTFFVNTBSbXRoWTB4RVJVTjNRWFZHVTB0MmRXaGhOMFJoYmxrM2FGbzNXWEZHTmtoclRteEtlbFJCTmxrNVZWSk9jVGxOZUhGS2FFMWxWR1JyWldaNkszTXhRV1F2VVZrd1pUSk5TRWRuWWtVcmIwNWtOR0YzVkdSeVJYaFRNa0l5UlhBM2QyTlRhVEZ2UVRNMGNFbGhTbWRSZFZkMU9FWnliMk5EYzNwemNXTXJiMHBYVkhKM01sWlJaMlU1ZUdkVldsVk5Xa3hTVjJKR05Hb3pSa3RRYzFaV1oxWXJOMmM1TlZKT1JXcEhhRU14VFRoTVlYTTRkM2MxVkN0MVFsQk5USE5UVVdzeVFsSklZM2RtZVVSU01qQTVNa3BHYkdSSGRVRTRUVlZCY2tkT0wyNUlWRVJtVjJGWlRFbFFRMVZvZDBKb2NGbFBha3R1YVRSbFVFeHlZV1J4TjBGSE1sRnZSMVp6ZWxwM1owcGxjVXhZU2tKbUswazJibmw2Um1ReVl6VlBXRTFITmpWT1l6MGlMQ0pOU1VsR1dXcERRMEpGY1dkQmQwbENRV2RKVVdRM01FNWlUbk15SzFKeWNVbFJMMFU0Um1wVVJGUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUpZVFZGemQwTlJXVVJXVVZGSFJYZEtRMUpVUlZwTlFtTkhRVEZWUlVOb1RWRlNNbmgyV1cxR2MxVXliRzVpYVVKMVpHa3hlbGxVUlZGTlFUUkhRVEZWUlVONFRVaFZiVGwyWkVOQ1JGRlVSV0pOUW10SFFURlZSVUY0VFZOU01uaDJXVzFHYzFVeWJHNWlhVUpUWWpJNU1FbEZUa0pOUWpSWVJGUkpkMDFFV1hoUFZFRjNUVVJCTUUxc2IxaEVWRWswVFVSRmVVOUVRWGROUkVFd1RXeHZkMUo2UlV4TlFXdEhRVEZWUlVKb1RVTldWazE0U1dwQlowSm5UbFpDUVc5VVIxVmtkbUl5WkhOYVUwSlZZMjVXZW1SRFFsUmFXRW95WVZkT2JHTjVRazFVUlUxNFJrUkJVMEpuVGxaQ1FVMVVRekJrVlZWNVFsTmlNamt3U1VaSmVFMUpTVU5KYWtGT1FtZHJjV2hyYVVjNWR6QkNRVkZGUmtGQlQwTkJaemhCVFVsSlEwTm5TME5CWjBWQmRHaEZRMmw0TjJwdldHVmlUemw1TDJ4RU5qTnNZV1JCVUV0SU9XZDJiRGxOWjJGRFkyWmlNbXBJTHpjMlRuVTRZV2syV0d3MlQwMVRMMnR5T1hKSU5YcHZVV1J6Wm01R2JEazNkblZtUzJvMlluZFRhVlkyYm5Gc1MzSXJRMDF1ZVRaVGVHNUhVR0l4Tld3ck9FRndaVFl5YVcwNVRWcGhVbmN4VGtWRVVHcFVja1ZVYnpobldXSkZkbk12UVcxUk16VXhhMHRUVldwQ05rY3dNR293ZFZsUFJGQXdaMjFJZFRneFNUaEZNME4zYm5GSmFYSjFObm94YTFveGNTdFFjMEZsZDI1cVNIaG5jMGhCTTNrMmJXSlhkMXBFY2xoWlptbFpZVkpSVFRselNHMXJiRU5wZEVRek9HMDFZV2RKTDNCaWIxQkhhVlZWS3paRVQyOW5ja1phV1VwemRVSTJha00xTVRGd2VuSndNVnByYWpWYVVHRkxORGxzT0V0RmFqaERPRkZOUVV4WVRETXlhRGROTVdKTGQxbFZTQ3RGTkVWNlRtdDBUV2MyVkU4NFZYQnRkazF5VlhCemVWVnhkRVZxTldOMVNFdGFVR1p0WjJoRFRqWktNME5wYjJvMlQwZGhTeTlIVURWQlptdzBMMWgwWTJRdmNESm9MM0p6TXpkRlQyVmFWbGgwVERCdE56bFpRakJsYzFkRGNuVlBRemRZUm5oWmNGWnhPVTl6Tm5CR1RFdGpkMXB3UkVsc1ZHbHllRnBWVkZGQmN6WnhlbXR0TURad09UaG5OMEpCWlN0a1JIRTJaSE52TkRrNWFWbElObFJMV0M4eFdUZEVlbXQyWjNSa2FYcHFhMWhRWkhORWRGRkRkamxWZHl0M2NEbFZOMFJpUjB0dloxQmxUV0V6VFdRcmNIWmxlamRYTXpWRmFVVjFZU3NyZEdkNUwwSkNha1pHUm5remJETlhSbkJQT1V0WFozbzNlbkJ0TjBGbFMwcDBPRlF4TVdSc1pVTm1aVmhyYTFWQlMwbEJaalZ4YjBsaVlYQnpXbGQzY0dKclRrWm9TR0Y0TW5oSlVFVkVaMlpuTVdGNlZsazRNRnBqUm5WamRFdzNWR3hNYmsxUkx6QnNWVlJpYVZOM01XNUlOamxOUnpaNlR6QmlPV1kyUWxGa1owRnRSREEyZVVzMU5tMUVZMWxDV2xWRFFYZEZRVUZoVDBOQlZHZDNaMmRGTUUxQk5FZEJNVlZrUkhkRlFpOTNVVVZCZDBsQ2FHcEJVRUpuVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlVhM0o1YzIxalVtOXlVME5sUmt3eFNtMU1UeTkzYVZKT2VGQnFRV1pDWjA1V1NGTk5SVWRFUVZkblFsSm5aVEpaWVZKUk1saDViMnhSVERNd1JYcFVVMjh2TDNvNVUzcENaMEpuWjNKQ1owVkdRbEZqUWtGUlVsVk5Sa2wzU2xGWlNVdDNXVUpDVVZWSVRVRkhSMGRYYURCa1NFRTJUSGs1ZGxrelRuZE1ia0p5WVZNMWJtSXlPVzVNTW1SNlkycEZkMHRSV1VsTGQxbENRbEZWU0UxQlMwZElWMmd3WkVoQk5reDVPWGRoTW10MVdqSTVkbHA1T1c1ak0wbDRUREprZW1OcVJYVlpNMG93VFVSSlIwRXhWV1JJZDFGeVRVTnJkMG8yUVd4dlEwOUhTVmRvTUdSSVFUWk1lVGxxWTIxM2RXTkhkSEJNYldSMllqSmpkbG96VG5sTlV6bHVZek5KZUV4dFRubGlSRUUzUW1kT1ZraFRRVVZPUkVGNVRVRm5SMEp0WlVKRVFVVkRRVlJCU1VKbldtNW5VWGRDUVdkSmQwUlJXVXhMZDFsQ1FrRklWMlZSU1VaQmQwbDNSRkZaVEV0M1dVSkNRVWhYWlZGSlJrRjNUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSRk5yU0hKRmIyODVRekJrYUdWdFRWaHZhRFprUmxOUWMycGlaRUphUW1sTVp6bE9Vak4wTlZBclZEUldlR1p4TjNaeFprMHZZalZCTTFKcE1XWjVTbTA1WW5ab1pFZGhTbEV6WWpKME5ubE5RVmxPTDI5c1ZXRjZjMkZNSzNsNVJXNDVWM0J5UzBGVFQzTm9TVUZ5UVc5NVdtd3JkRXBoYjNneE1UaG1aWE56YlZodU1XaEpWbmMwTVc5bFVXRXhkakYyWnpSR2RqYzBlbEJzTmk5QmFGTnlkemxWTlhCRFdrVjBORmRwTkhkVGRIbzJaRlJhTDBOTVFVNTRPRXhhYURGS04xRktWbW95Wm1oTmRHWlVTbkk1ZHpSNk16QmFNakE1Wms5Vk1HbFBUWGtyY1dSMVFtMXdkblpaZFZJM2FGcE1Oa1IxY0hONlptNTNNRk5yWm5Sb2N6RTRaRWM1V2t0aU5UbFZhSFp0WVZOSFdsSldZazVSY0hObk0wSmFiSFpwWkRCc1NVdFBNbVF4ZUc5NlkyeFBlbWRxV0ZCWmIzWktTa2wxYkhSNmEwMTFNelJ4VVdJNVUzb3ZlV2xzY21KRFoybzRQU0pkZlEuZXlKdWIyNWpaU0k2SW5Zd05IZFlVRFJyUjNKQmIyWlJWMEo0UlhoQ1YxZEJORXh3VTFCT2FrMXpaR1pDU1ZSR1pFdHhha1U5SWl3aWRHbHRaWE4wWVcxd1RYTWlPakUzTXpFMU5qZ3hPVGcwTlRrc0ltRndhMUJoWTJ0aFoyVk9ZVzFsSWpvaVkyOXRMbWR2YjJkc1pTNWhibVJ5YjJsa0xtZHRjeUlzSW1Gd2EwUnBaMlZ6ZEZOb1lUSTFOaUk2SWxZclRrc3dTVk5IZFV4elQxb3dRWGhpTlZsTmFXMHhjREJzZURJMFkxUmtNV2NySzNNck4zSlRjMVU5SWl3aVkzUnpVSEp2Wm1sc1pVMWhkR05vSWpwMGNuVmxMQ0poY0d0RFpYSjBhV1pwWTJGMFpVUnBaMlZ6ZEZOb1lUSTFOaUk2V3lJNFVERnpWekJGVUVwamMyeDNOMVY2VW5OcFdFdzJOSGNyVHpVd1JXUXJVa0pKUTNSaGVURm5NalJOUFNKZExDSmlZWE5wWTBsdWRHVm5jbWwwZVNJNmRISjFaU3dpWlhaaGJIVmhkR2x2YmxSNWNHVWlPaUpDUVZOSlF5eElRVkpFVjBGU1JWOUNRVU5MUlVRaUxDSmtaWEJ5WldOaGRHbHZia2x1Wm05eWJXRjBhVzl1SWpvaVZHaGxJR0Z3Y0NCcGN5QmhiR3h2ZDJ4cGMzUmxaQ0IwYnlCMWMyVWdkR2hsSUZOaFptVjBlVTVsZENCQmRIUmxjM1JoZEdsdmJpQkJVRWtnZFc1MGFXd2dkR2hsSUdaMWJHd2dkSFZ5Ym1SdmQyNDZJR2gwZEhCek9pOHZaeTVqYnk5d2JHRjVMM05oWm1WMGVXNWxkQzEwYVcxbGJHbHVaUzRpZlEuZ2tKR2psSHJqZU80dnR4aHdLUEV5RDFxa2ZwNW5Wa2hmRXZjMHlUSFcyYlRELTZRLWpyWlJzRUxwMHJsRVI3aU1OcUs5NEx0MFFuRG05M1o2aEkweHROeVM5QldCYzVfeXROU084UGxadVg2NktPUW5jZmRWT0w2R1IwX1lxb3gxbEtRZTJLeGNWMHRtOUNtMmUwU3NiSzR3TWNWWkRRZktRZjZTd2hja2U3R3BPRFBZUnVkZE1tbVJlcmk2SDlqUzY4b2k0REwxMEtKUll2MnNfVzVWVzBLSGZQdjAwYjZsV2F3bWVjRkpMZ2p1RENMeE5iVHJpbTJpUm5xNTVjczd1alBiVDBjZDF5TktHTmx1VVFLQXp5LUVtTjVsZ2NwSjhiS2tkRVFZUlVIcHgtS2Z5eWtENnRpM3RleVNSb1JkYm1GNlZxaEhheXVSQWM5ZGpqblFBaGF1dGhEYXRhWMU0463jpzQcDvCgyzvBJ1xIylKNzp8LH3yUQ6dviJpjzkUAAAAAuT/ZYfLmRi+xIoIAIkfeeABBAXn2cSOjZj37aplT96rxshHxeTyzVY4c8BtwoX9ae2QAhYSJsGcHSoZAQrMvsYZ+5ppGoYCqxGZ/Hs+EYOmjj36lAQIDJiABIVggxV785l1mbbbkZo263OduifubeJPAn72PPRJ2VQfuScIiWCCRjTH8Dlp9ocXbx7+APLZCwtQeLgYq923HbC5hOi7img==', 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiZkhScWdtT0s2aHRzTkFVX2NSWnVXRU9JS04xNmNnMFd6b08xUzdqV21mOCIsIm9yaWdpbiI6Imh0dHBzOi8vaW1zLXBuYy5zaXRlIiwiY3Jvc3NPcmlnaW4iOmZhbHNlfQ==', '$2y$10$/rVob9rq.x4xtKvsvVbU0O4.umYxxZnrtTS7WA8HEGMgTawcojxE2', 'Clrsey', 'Mendoza', 'atienzaclarence@gmail.com', '09933041561', 'Cabuyao Laguna', 36273, 66650, 'Active', '2024-11-14 07:09:59', '', '', '0000-00-00 00:00:00');
INSERT INTO `tbl_users` (`id`, `student_id`, `credential_id`, `attestation_object`, `client_data_json`, `pin`, `firstname`, `lastname`, `email`, `phone`, `address`, `program_id`, `coordinator_id`, `status`, `createdAt`, `profile_pic`, `reset_token`, `token_expiry`) VALUES
(151, '100200', 'AYZ1u4olJ8ZT+Su/2OW20rmz2jVhOua2FZrGY0CvVyMJYb5OUIb+0R4xKUvwOp2FV2aon7CnvoC6Nvx8gftoDJI=', 'o2NmbXRxYW5kcm9pZC1zYWZldHluZXRnYXR0U3RtdKJjdmVyaTI0NDMzNzAyOWhyZXNwb25zZVkgAGV5SmhiR2NpT2lKU1V6STFOaUlzSW5nMVl5STZXeUpOU1VsR1RIcERRMEpDWldkQmQwbENRV2RKVVVSWU1VRlVhVzUzZG1kTlNuSnZWR2hEYlhoMloxUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUUzVFZGemQwTlJXVVJXVVZGSFJYZEtWbFY2UldWTlFuZEhRVEZWUlVOb1RWWlNNamwyV2pKNGJFbEdVbmxrV0U0d1NVWk9iR051V25CWk1sWjZUVkYzZDBObldVUldVVkZFUlhkT1dGVnFVWGRJYUdOT1RXcFJkMDlVUVRWTlJGa3hUV3BKZVZkb1kwNU5hbEY0VFdwQk5FMUVXVEZOYWtsNFYycEJaRTFTYzNkSFVWbEVWbEZSUkVWNFNtaGtTRkpzWXpOUmRWbFhOV3RqYlRsd1drTTFhbUl5TUhkblowVnBUVUV3UjBOVGNVZFRTV0l6UkZGRlFrRlJWVUZCTkVsQ1JIZEJkMmRuUlV0QmIwbENRVkZEZFZodmMxcGtTVzQzVWs5WFVYaFRjMnh4YjJKbmFUaE9SR2RNYlc5TE15czNORmhxUkhRNFpXUklUbk5qYlVVMWRsVTVOVEpXUkdaR04ySlpSMEprTm1SSFdXUnlaamxOZEU1RVVtMHdiR0Z5VDBOM1lrVnFWVEJ0Y0Vkak1YZENXWFpSY1hSb1YwOUVNek5WYkZkTlJXWjVkV2haWnpGTGVXcDBaR3h4UzI5eVVtMDRiWEIxVEZVMlltdFdlbVpTT0VWVk1GTTVWWEExVFU4cmEyaEVSV1pvU2pjNFdYRmhSVVJ1WW5OeWMyNVBRVEpDTldrMVpGVlRiRWxPU201cU55dHBOSGwyYTNNMVZ5OTZWSE5xWVd4YWNIRlFRVlJGYUdKR2JucDZUelpYVUcxTVdWRlNhV2RqT0dGT2VEQmllazB6U1RKQ1RtaDFTM1Z5T1d0NFRrdFRSbU5tZVV4cVoyeDVXbEJ5YW1aSmJGTTRVbGQwVDJ0bWNVNWpkMG95Wm5salJGUkZjMmxaTlRWR2RrWkdOa3g1YTI5RlltRmhaa1JIV0hGalMxWjZiRzFyWlZnd1UxcDJhalZUVVhGTFkzUkNaR1pCWjAxQ1FVRkhhbWRuU2t4TlNVbERVbnBCVDBKblRsWklVVGhDUVdZNFJVSkJUVU5DWVVGM1JYZFpSRlpTTUd4Q1FYZDNRMmRaU1V0M1dVSkNVVlZJUVhkRmQwUkJXVVJXVWpCVVFWRklMMEpCU1hkQlJFRmtRbWRPVmtoUk5FVkdaMUZWWW5kRE9YZERZMjB3V0VkeWIxRjRSVTFhV1ZwV01uSlFaRzVuZDBoM1dVUldVakJxUWtKbmQwWnZRVlZ0T0dkU2RrUXljVTV5YTNocVJUWlFVazVXV0UxcEwwUjNSMFYzV0dkWlNVdDNXVUpDVVZWSVFWRkZSVlZxUWxGTlEyTkhRME56UjBGUlZVWkNla0ZDYUdoMGIyUklVbmRQYVRoMlluazFkMkV5YTNWYU1qbDJXbms1ZWt3elpIbE9RemxGVjBSQmQwcFJXVWxMZDFsQ1FsRlZTRTFCUzBkSFYyZ3daRWhCTmt4NU9YQk1ia0p5WVZNMWJtSXlPVzVNTTJSNVRrTTFhbU51VVhkSVVWbEVWbEl3VWtKQ1dYZEdTVWxUV1ZoU01GcFlUakJNYlVaMVdraEtkbUZYVVhWWk1qbDBUVUpOUjBFeFZXUkpRVkZOVFVGdmQwTkJXVWRhTkVWTlFWRkpRazFFV1VkQk1WVmtTSGRSZGsxRE1IZExOa0Z3YjBObFIwcFhhREJrU0VFMlRIazVha3h1UW5KaFV6VnVZakk1Ymt3elpIbE9RemxxVG0xNGIxWXlUbTlYVnpWeFQwTTFhbU50ZDNkblowVkZRbWR2Y2tKblJVVkJaRm8xUVdkUlEwSkpTREZDU1VoNVFWQkJRV1JSUWtselQwNXlNbkZhU0U1QkwyeGhaMHcyYmxSRWNraEdTVUo1TVdKa1RFbElXblUzSzNKUFpHbEZZM2RCUVVGYVNGWjRVV0pMUVVGQlJVRjNRa2ROUlZGRFNVUndSMEY1UTFCbVNqUlljWGhOYmtaNFRGRm1Va1p0TjNCU01tMUhPRElyYWxaV1prZHdVSGx0YUdSQmFVSlJNakpKTjAwMWMxWTJVSHBFTkUxRVlpOXNWSEJuVjB0T2VrVnFNblY0UW1Sc1RuUlVSRUU1VWk5UlFqTkJUemRPTUVkVVZqSjRjazk0Vm5remJtSlVUa1UyU1hsb01GbzRkazk2WlhjeFJrbFhWVnA0U0RkWFlrRkJRVUpyWkZoR1FuRlZRVUZCVVVSQlJXZDNVbWRKYUVGT2RUZFlNV3QwT1ZkRVZGVmhkRTlHWkZOdVVUVnlLelV3UlZjelNtRnZiWFZFTTFCMVpuVnpkbFpwUVdsRlFYbElhMUpUVEhoRVFUQXdTRk5YZFdkTmFIZHdaRzB3UW10RlJVWm5MelJXUW01TWRraEhiMjgxUmtGM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFVUm5aMFZDUVVGT2RtcGxlR2h5T0hCTlFVRlFUbVJ1UTJacE9UUlpNMUE0Y1ZoS2EzaHZPRXBEYUdoamVWWk1TMnh5VmtGaldqYzJVMFpMY2toME1HZGFZVEkwU1dreVZVVkxhelpQZDJvM1RYZFNSM0pyV0M5VlZtbE9abFIyWm13dmVtaEdiMnc1YW5JMVYwbFpXR292VDJoSWJUWjBaRGN2WWxBMkswWTNWVEZyVXprMlV6QktTa1YyY3l0Tk5IbHlhVFZRUlRGV1NXazRORGQzUkZSVGFEaGlRMnc0WjNoU01FeHFhM1ZQTTJrclFXWnVZak5sY2k5WmIzaHVjVW9yUjFsNFYyaE9ORTlIUnk5aVNtSnFXRko2VkVsQmN6VTNVRTFzTHpKUVlWbEJRUzlFZFU5cVUxUk9URmhSVTFOWFRuRk1WMWxsTlVWWmNXRldTa3R4VXpKT1NXWm1WVE5UWjJvMFkxSmxjbXBUU0Rjd1JsRkxjalowYjNOTFkyY3JabTlvWlVkNE1XMVhSbWwxY1RKdE1Fa3hSMG95T1ZsTlJIWm5ha1ExY0c5TGExaG5MMjU1VmxoQ1YxUXpSVTlCZGxkWFZWVXZUV1pLZHowaUxDSk5TVWxHUTNwRFEwRjJUMmRCZDBsQ1FXZEpVV1l2UVVaMFRuQXhkVWR3WVhob0wydE5TR05VZWxSQlRrSm5hM0ZvYTJsSE9YY3dRa0ZSYzBaQlJFSklUVkZ6ZDBOUldVUldVVkZIUlhkS1ZsVjZSV2xOUTBGSFFURlZSVU5vVFZwU01qbDJXako0YkVsR1VubGtXRTR3U1VaT2JHTnVXbkJaTWxaNlNVVjRUVkY2UlZWTlFrbEhRVEZWUlVGNFRVeFNNVkpVU1VaS2RtSXpVV2RWYWtWM1NHaGpUazFxVFhoTmFrVjZUVVJyZDAxRVFYZFhhR05PVFdwcmQwMXFTWGROVkZGM1RVUkJkMWRxUVRkTlVYTjNRMUZaUkZaUlVVZEZkMHBXVlhwRlpVMUNkMGRCTVZWRlEyaE5WbEl5T1haYU1uaHNTVVpTZVdSWVRqQkpSazVzWTI1YWNGa3lWbnBOVVhkM1EyZFpSRlpSVVVSRmQwNVlWV3BSZDJkblJXbE5RVEJIUTFOeFIxTkpZak5FVVVWQ1FWRlZRVUUwU1VKRWQwRjNaMmRGUzBGdlNVSkJVVU4yVkd4SEwzcHNRMnMyTkRRNWEyRlhMMFJEYjJseGIzQXdjRWwzZVdGT09FdFJSMkp6VmpJd2MzSXdZalF5T1VweVVrMVJURXBVTHpkelNWSk1jMWhrY2xaalFUVTNOelZXT1ZoUkwwWnNWbEJWYzNsR1VXRlhTRVY0WjJGUllXWXlVRnA0VGxacldXWlVPVk5VTlRkaE9WVmlWaXRPVkd4a1kyNXRlSFp2YjB4dGNHaDNMMVJHZG14dWNIRXljazB4Tlhsc1NHbHhPR3hIY1dkUmNGSTVMelpCVEhWdmJHMVhSRlpQVUVaRlowRnNWR1E1VVc5RlZ6bG5URTExUnpOc1R6TXhiSFJ6Wlc1YVYxUXhiRU5SVXpKU1VsWlRlRmhxTjJOU016SnNXR2RUUlhOck1WcDZOVGRsVW14blEyWjVaa0YyVlVwVmRFMTBPVGd5YzI5T1VqSmtlazlXVDB0cU9YcHNhV1ZHY21Ka1prSmFhSGhhU0ZGdU4wbEtkVWRqWTJScFNtNUxWRlJsWWtKcWVFMW9WV05WU0dzMk1ubHNUemRuWlV4MFlqTktUVlZpWW01MlUxbEVNbFZCWTJ4bmVuSjNiRUZuVFVKQlFVZHFaMlkwZDJkbWMzZEVaMWxFVmxJd1VFRlJTQzlDUVZGRVFXZEhSMDFDTUVkQk1WVmtTbEZSVjAxQ1VVZERRM05IUVZGVlJrSjNUVUpDWjJkeVFtZEZSa0pSWTBSQmFrRlRRbWRPVmtoU1RVSkJaamhGUTBSQlIwRlJTQzlCWjBWQlRVSXdSMEV4VldSRVoxRlhRa0pUWW5sQ1J6aFFZVzh5ZFZSSFRWUnZPVVV4Vm1ONVREaFFRVmxVUVdaQ1owNVdTRk5OUlVkRVFWZG5RbFJyY25semJXTlNiM0pUUTJWR1RERktiVXhQTDNkcFVrNTRVR3BCTUVKblozSkNaMFZHUWxGalFrRlJVVzlOUTFsM1NrRlpTVXQzV1VKQ1VWVklUVUZMUjBkSGFEQmtTRUUyVEhrNWNFeHVRbkpoVXpWdVlqSTVia3d6U1hoTWJVNTVaRVJCY2tKblRsWklVamhGU2tSQmFVMURRMmRJY1VGamFHaHdiMlJJVW5kUGFUaDJXWGsxZDJFeWEzVmFNamwyV25rNWVVd3pTWGhNYlU1NVlrUkJWRUpuVGxaSVUwRkZSRVJCUzAxQlowZENiV1ZDUkVGRlEwRlVRVTVDWjJ0eGFHdHBSemwzTUVKQlVYTkdRVUZQUTBGblJVRm9NbTVFT1ZkRU5YTnJlbFZNUVhodFNXUjBlRlphV2tZNEx6VjNkRFZwWmtsTlZVRlZVazVXZDFwalREbDFkVTkyY2s1VU56VndWbWg1TTFrMFpIRTVVSFJDUkhsSmJXZFVZMGxZY25Gd09FVk1iRkZJWWsxSFVqSnZia014ZVRWb1VtbHZVak5IUnpGS09IRkhRbVV6UWpGRVVYcHVNSEZ2TlVkcmNuZzBhV2xxTDJRMmRIbHZSM2htZW1SQmRuUlFVbEVyYXpaUVlWaGhPRXhYWkdocWNGTXZMMWRHWjA4MlRWaFBTMlUyY1ZScFkxWnRhalkwV0ZsM2FtOUVVVmxPZFZsSWRFTlhVRVp5VnpocGJVTmtNMUl4TlVnck0wdHNRMjVOTjBaMlVYbGtUbkl3TkV4UVZYUXZURmxOT0VkYVNFSktlVlZ4TVc5WWRrVTFVa3RYYTI5M01WQjBTSEIxYlRNNU9IVkhlVlo2Wml0MmRTc3dNV2t2YldSRVVYQnpZaTlKTDFCUlZqbENRVXBwYmpsRk1tTm1XVXhzUVhOT2JEbFdZVlZ2Vldsbk9YRjFiRk1yYW10dVpHaDBUMU5SWTFkMGR6WXlXVXgxUjI4dmVVazVZMFkwVlZrMGNUbHNWMmRPVHpkTU9VbFdWa2hSYnprMGIwTnlUREZuVWsxTFFVNTBSbXRoWTB4RVJVTjNRWFZHVTB0MmRXaGhOMFJoYmxrM2FGbzNXWEZHTmtoclRteEtlbFJCTmxrNVZWSk9jVGxOZUhGS2FFMWxWR1JyWldaNkszTXhRV1F2VVZrd1pUSk5TRWRuWWtVcmIwNWtOR0YzVkdSeVJYaFRNa0l5UlhBM2QyTlRhVEZ2UVRNMGNFbGhTbWRSZFZkMU9FWnliMk5EYzNwemNXTXJiMHBYVkhKM01sWlJaMlU1ZUdkVldsVk5Xa3hTVjJKR05Hb3pSa3RRYzFaV1oxWXJOMmM1TlZKT1JXcEhhRU14VFRoTVlYTTRkM2MxVkN0MVFsQk5USE5UVVdzeVFsSklZM2RtZVVSU01qQTVNa3BHYkdSSGRVRTRUVlZCY2tkT0wyNUlWRVJtVjJGWlRFbFFRMVZvZDBKb2NGbFBha3R1YVRSbFVFeHlZV1J4TjBGSE1sRnZSMVp6ZWxwM1owcGxjVXhZU2tKbUswazJibmw2Um1ReVl6VlBXRTFITmpWT1l6MGlMQ0pOU1VsR1dXcERRMEpGY1dkQmQwbENRV2RKVVdRM01FNWlUbk15SzFKeWNVbFJMMFU0Um1wVVJGUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUpZVFZGemQwTlJXVVJXVVZGSFJYZEtRMUpVUlZwTlFtTkhRVEZWUlVOb1RWRlNNbmgyV1cxR2MxVXliRzVpYVVKMVpHa3hlbGxVUlZGTlFUUkhRVEZWUlVONFRVaFZiVGwyWkVOQ1JGRlVSV0pOUW10SFFURlZSVUY0VFZOU01uaDJXVzFHYzFVeWJHNWlhVUpUWWpJNU1FbEZUa0pOUWpSWVJGUkpkMDFFV1hoUFZFRjNUVVJCTUUxc2IxaEVWRWswVFVSRmVVOUVRWGROUkVFd1RXeHZkMUo2UlV4TlFXdEhRVEZWUlVKb1RVTldWazE0U1dwQlowSm5UbFpDUVc5VVIxVmtkbUl5WkhOYVUwSlZZMjVXZW1SRFFsUmFXRW95WVZkT2JHTjVRazFVUlUxNFJrUkJVMEpuVGxaQ1FVMVVRekJrVlZWNVFsTmlNamt3U1VaSmVFMUpTVU5KYWtGT1FtZHJjV2hyYVVjNWR6QkNRVkZGUmtGQlQwTkJaemhCVFVsSlEwTm5TME5CWjBWQmRHaEZRMmw0TjJwdldHVmlUemw1TDJ4RU5qTnNZV1JCVUV0SU9XZDJiRGxOWjJGRFkyWmlNbXBJTHpjMlRuVTRZV2syV0d3MlQwMVRMMnR5T1hKSU5YcHZVV1J6Wm01R2JEazNkblZtUzJvMlluZFRhVlkyYm5Gc1MzSXJRMDF1ZVRaVGVHNUhVR0l4Tld3ck9FRndaVFl5YVcwNVRWcGhVbmN4VGtWRVVHcFVja1ZVYnpobldXSkZkbk12UVcxUk16VXhhMHRUVldwQ05rY3dNR293ZFZsUFJGQXdaMjFJZFRneFNUaEZNME4zYm5GSmFYSjFObm94YTFveGNTdFFjMEZsZDI1cVNIaG5jMGhCTTNrMmJXSlhkMXBFY2xoWlptbFpZVkpSVFRselNHMXJiRU5wZEVRek9HMDFZV2RKTDNCaWIxQkhhVlZWS3paRVQyOW5ja1phV1VwemRVSTJha00xTVRGd2VuSndNVnByYWpWYVVHRkxORGxzT0V0RmFqaERPRkZOUVV4WVRETXlhRGROTVdKTGQxbFZTQ3RGTkVWNlRtdDBUV2MyVkU4NFZYQnRkazF5VlhCemVWVnhkRVZxTldOMVNFdGFVR1p0WjJoRFRqWktNME5wYjJvMlQwZGhTeTlIVURWQlptdzBMMWgwWTJRdmNESm9MM0p6TXpkRlQyVmFWbGgwVERCdE56bFpRakJsYzFkRGNuVlBRemRZUm5oWmNGWnhPVTl6Tm5CR1RFdGpkMXB3UkVsc1ZHbHllRnBWVkZGQmN6WnhlbXR0TURad09UaG5OMEpCWlN0a1JIRTJaSE52TkRrNWFWbElObFJMV0M4eFdUZEVlbXQyWjNSa2FYcHFhMWhRWkhORWRGRkRkamxWZHl0M2NEbFZOMFJpUjB0dloxQmxUV0V6VFdRcmNIWmxlamRYTXpWRmFVVjFZU3NyZEdkNUwwSkNha1pHUm5remJETlhSbkJQT1V0WFozbzNlbkJ0TjBGbFMwcDBPRlF4TVdSc1pVTm1aVmhyYTFWQlMwbEJaalZ4YjBsaVlYQnpXbGQzY0dKclRrWm9TR0Y0TW5oSlVFVkVaMlpuTVdGNlZsazRNRnBqUm5WamRFdzNWR3hNYmsxUkx6QnNWVlJpYVZOM01XNUlOamxOUnpaNlR6QmlPV1kyUWxGa1owRnRSREEyZVVzMU5tMUVZMWxDV2xWRFFYZEZRVUZoVDBOQlZHZDNaMmRGTUUxQk5FZEJNVlZrUkhkRlFpOTNVVVZCZDBsQ2FHcEJVRUpuVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlVhM0o1YzIxalVtOXlVME5sUmt3eFNtMU1UeTkzYVZKT2VGQnFRV1pDWjA1V1NGTk5SVWRFUVZkblFsSm5aVEpaWVZKUk1saDViMnhSVERNd1JYcFVVMjh2TDNvNVUzcENaMEpuWjNKQ1owVkdRbEZqUWtGUlVsVk5Sa2wzU2xGWlNVdDNXVUpDVVZWSVRVRkhSMGRYYURCa1NFRTJUSGs1ZGxrelRuZE1ia0p5WVZNMWJtSXlPVzVNTW1SNlkycEZkMHRSV1VsTGQxbENRbEZWU0UxQlMwZElWMmd3WkVoQk5reDVPWGRoTW10MVdqSTVkbHA1T1c1ak0wbDRUREprZW1OcVJYVlpNMG93VFVSSlIwRXhWV1JJZDFGeVRVTnJkMG8yUVd4dlEwOUhTVmRvTUdSSVFUWk1lVGxxWTIxM2RXTkhkSEJNYldSMllqSmpkbG96VG5sTlV6bHVZek5KZUV4dFRubGlSRUUzUW1kT1ZraFRRVVZPUkVGNVRVRm5SMEp0WlVKRVFVVkRRVlJCU1VKbldtNW5VWGRDUVdkSmQwUlJXVXhMZDFsQ1FrRklWMlZSU1VaQmQwbDNSRkZaVEV0M1dVSkNRVWhYWlZGSlJrRjNUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSRk5yU0hKRmIyODVRekJrYUdWdFRWaHZhRFprUmxOUWMycGlaRUphUW1sTVp6bE9Vak4wTlZBclZEUldlR1p4TjNaeFprMHZZalZCTTFKcE1XWjVTbTA1WW5ab1pFZGhTbEV6WWpKME5ubE5RVmxPTDI5c1ZXRjZjMkZNSzNsNVJXNDVWM0J5UzBGVFQzTm9TVUZ5UVc5NVdtd3JkRXBoYjNneE1UaG1aWE56YlZodU1XaEpWbmMwTVc5bFVXRXhkakYyWnpSR2RqYzBlbEJzTmk5QmFGTnlkemxWTlhCRFdrVjBORmRwTkhkVGRIbzJaRlJhTDBOTVFVNTRPRXhhYURGS04xRktWbW95Wm1oTmRHWlVTbkk1ZHpSNk16QmFNakE1Wms5Vk1HbFBUWGtyY1dSMVFtMXdkblpaZFZJM2FGcE1Oa1IxY0hONlptNTNNRk5yWm5Sb2N6RTRaRWM1V2t0aU5UbFZhSFp0WVZOSFdsSldZazVSY0hObk0wSmFiSFpwWkRCc1NVdFBNbVF4ZUc5NlkyeFBlbWRxV0ZCWmIzWktTa2wxYkhSNmEwMTFNelJ4VVdJNVUzb3ZlV2xzY21KRFoybzRQU0pkZlEuZXlKdWIyNWpaU0k2SWtSMmJsSnlZMDl0T0RFMUswWXhTVEJoTW05REwwcDBWVlpQYjNSSVEwSmtkSFZpYkRKc05VZHJUMk05SWl3aWRHbHRaWE4wWVcxd1RYTWlPakUzTXpFMU56UXlPREl6TURFc0ltRndhMUJoWTJ0aFoyVk9ZVzFsSWpvaVkyOXRMbWR2YjJkc1pTNWhibVJ5YjJsa0xtZHRjeUlzSW1Gd2EwUnBaMlZ6ZEZOb1lUSTFOaUk2SWxZclRrc3dTVk5IZFV4elQxb3dRWGhpTlZsTmFXMHhjREJzZURJMFkxUmtNV2NySzNNck4zSlRjMVU5SWl3aVkzUnpVSEp2Wm1sc1pVMWhkR05vSWpwMGNuVmxMQ0poY0d0RFpYSjBhV1pwWTJGMFpVUnBaMlZ6ZEZOb1lUSTFOaUk2V3lJNFVERnpWekJGVUVwamMyeDNOMVY2VW5OcFdFdzJOSGNyVHpVd1JXUXJVa0pKUTNSaGVURm5NalJOUFNKZExDSmlZWE5wWTBsdWRHVm5jbWwwZVNJNmRISjFaU3dpWlhaaGJIVmhkR2x2YmxSNWNHVWlPaUpDUVZOSlF5eElRVkpFVjBGU1JWOUNRVU5MUlVRaUxDSmtaWEJ5WldOaGRHbHZia2x1Wm05eWJXRjBhVzl1SWpvaVZHaGxJR0Z3Y0NCcGN5QmhiR3h2ZDJ4cGMzUmxaQ0IwYnlCMWMyVWdkR2hsSUZOaFptVjBlVTVsZENCQmRIUmxjM1JoZEdsdmJpQkJVRWtnZFc1MGFXd2dkR2hsSUdaMWJHd2dkSFZ5Ym1SdmQyNDZJR2gwZEhCek9pOHZaeTVqYnk5d2JHRjVMM05oWm1WMGVXNWxkQzEwYVcxbGJHbHVaUzRpZlEub1BRLXVMaXRqU3Q5MExnamswVGNTUlhybGt4N1QtQTBBbzBNUDVRLVZYQy0xTXVqTkp6UVo4YnNTeGx0dUFFZUJDcEs3bHU2Q2FockVGNUpoRWV3MlJ6ODRWejdnZzhVZEptVjJTb1Y1YlNuNUlyb3pVR2FwWTZYdVk1SVo2SGpzUDM0QW1yVTRkS09idXBvUTRKaTRmQlBjVGhILTd6VUJ5X3AxSXJHcFplWWpXYjNtSTM1eUtiMGdhZTJTVDJnNzVneUM3aHpwV293bngwck45dFRMb0FwZnFyczg2dklrUUNFeDVhR29CdVVOMnNDZ3NfQkRHRVVaejZkUDkxMXYtVl9XSVk1YUFHUFdUSHBJRENtVk1JQkoyWkE0c3JDNDI5Q2JTSl9DR1lKTUZkemhHN2pRMlA1MHVoNnp2SHFXQ08tWTc4a3BDU01pVmt4cHIzU1l3aGF1dGhEYXRhWMU0463jpzQcDvCgyzvBJ1xIylKNzp8LH3yUQ6dviJpjzkUAAAAAuT/ZYfLmRi+xIoIAIkfeeABBAYZ1u4olJ8ZT+Su/2OW20rmz2jVhOua2FZrGY0CvVyMJYb5OUIb+0R4xKUvwOp2FV2aon7CnvoC6Nvx8gftoDJKlAQIDJiABIVgg4xj5eJfkCY024M4E8erObeeM2909iKWQv6yr1lpjHjsiWCCR6KasNCsx3V60TV1+1gLETSTbeh++ARs2qRWrA2L1jA==', 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiQjBBdm5TTFN2a3d3ak1hWks0b3NOM3RMZmM0cjVKU3lrUTFlSmFCMTItRSIsIm9yaWdpbiI6Imh0dHBzOi8vaW1zLXBuYy5zaXRlIiwiY3Jvc3NPcmlnaW4iOmZhbHNlfQ==', '$2y$10$YyPwPpmZSaPriabcPjTaieFs61zn6OiUDDZg7CfI0QkXZDpiQ0C4q', 'sadasdX', 'SDADSAD', 'XCDASD', '231239', 'SDADS', 12898, 66650, 'Active', '2024-11-14 08:51:22', '', '', '0000-00-00 00:00:00'),
(152, '111111', NULL, NULL, NULL, '$2y$10$LvosMGQTHQ77qII75Oo/seqhacPJfBeTgIAg7Ch01/G4I0lHhslj.', 'Zyrel', 'Trinidad', 'lawrenceboxhz123@gmail.com', '232121321321', 'sffsfsa', 12898, 66650, 'Active', '2024-11-14 13:25:50', '', '', '0000-00-00 00:00:00'),
(153, '1234567', 'AQEtddFF3uNs9YcVkUVMv5McYCfEg+x0KX/qKc3w5+TXOWt1C0gf8g5QJWb9crxj9vYKpa5n5ztAktBlpDK1eRw=', 'o2NmbXRxYW5kcm9pZC1zYWZldHluZXRnYXR0U3RtdKJjdmVyaTI0NDMzNzAyOWhyZXNwb25zZVkgAGV5SmhiR2NpT2lKU1V6STFOaUlzSW5nMVl5STZXeUpOU1VsR1RIcERRMEpDWldkQmQwbENRV2RKVVVSWU1VRlVhVzUzZG1kTlNuSnZWR2hEYlhoMloxUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUUzVFZGemQwTlJXVVJXVVZGSFJYZEtWbFY2UldWTlFuZEhRVEZWUlVOb1RWWlNNamwyV2pKNGJFbEdVbmxrV0U0d1NVWk9iR051V25CWk1sWjZUVkYzZDBObldVUldVVkZFUlhkT1dGVnFVWGRJYUdOT1RXcFJkMDlVUVRWTlJGa3hUV3BKZVZkb1kwNU5hbEY0VFdwQk5FMUVXVEZOYWtsNFYycEJaRTFTYzNkSFVWbEVWbEZSUkVWNFNtaGtTRkpzWXpOUmRWbFhOV3RqYlRsd1drTTFhbUl5TUhkblowVnBUVUV3UjBOVGNVZFRTV0l6UkZGRlFrRlJWVUZCTkVsQ1JIZEJkMmRuUlV0QmIwbENRVkZEZFZodmMxcGtTVzQzVWs5WFVYaFRjMnh4YjJKbmFUaE9SR2RNYlc5TE15czNORmhxUkhRNFpXUklUbk5qYlVVMWRsVTVOVEpXUkdaR04ySlpSMEprTm1SSFdXUnlaamxOZEU1RVVtMHdiR0Z5VDBOM1lrVnFWVEJ0Y0Vkak1YZENXWFpSY1hSb1YwOUVNek5WYkZkTlJXWjVkV2haWnpGTGVXcDBaR3h4UzI5eVVtMDRiWEIxVEZVMlltdFdlbVpTT0VWVk1GTTVWWEExVFU4cmEyaEVSV1pvU2pjNFdYRmhSVVJ1WW5OeWMyNVBRVEpDTldrMVpGVlRiRWxPU201cU55dHBOSGwyYTNNMVZ5OTZWSE5xWVd4YWNIRlFRVlJGYUdKR2JucDZUelpYVUcxTVdWRlNhV2RqT0dGT2VEQmllazB6U1RKQ1RtaDFTM1Z5T1d0NFRrdFRSbU5tZVV4cVoyeDVXbEJ5YW1aSmJGTTRVbGQwVDJ0bWNVNWpkMG95Wm5salJGUkZjMmxaTlRWR2RrWkdOa3g1YTI5RlltRmhaa1JIV0hGalMxWjZiRzFyWlZnd1UxcDJhalZUVVhGTFkzUkNaR1pCWjAxQ1FVRkhhbWRuU2t4TlNVbERVbnBCVDBKblRsWklVVGhDUVdZNFJVSkJUVU5DWVVGM1JYZFpSRlpTTUd4Q1FYZDNRMmRaU1V0M1dVSkNVVlZJUVhkRmQwUkJXVVJXVWpCVVFWRklMMEpCU1hkQlJFRmtRbWRPVmtoUk5FVkdaMUZWWW5kRE9YZERZMjB3V0VkeWIxRjRSVTFhV1ZwV01uSlFaRzVuZDBoM1dVUldVakJxUWtKbmQwWnZRVlZ0T0dkU2RrUXljVTV5YTNocVJUWlFVazVXV0UxcEwwUjNSMFYzV0dkWlNVdDNXVUpDVVZWSVFWRkZSVlZxUWxGTlEyTkhRME56UjBGUlZVWkNla0ZDYUdoMGIyUklVbmRQYVRoMlluazFkMkV5YTNWYU1qbDJXbms1ZWt3elpIbE9RemxGVjBSQmQwcFJXVWxMZDFsQ1FsRlZTRTFCUzBkSFYyZ3daRWhCTmt4NU9YQk1ia0p5WVZNMWJtSXlPVzVNTTJSNVRrTTFhbU51VVhkSVVWbEVWbEl3VWtKQ1dYZEdTVWxUV1ZoU01GcFlUakJNYlVaMVdraEtkbUZYVVhWWk1qbDBUVUpOUjBFeFZXUkpRVkZOVFVGdmQwTkJXVWRhTkVWTlFWRkpRazFFV1VkQk1WVmtTSGRSZGsxRE1IZExOa0Z3YjBObFIwcFhhREJrU0VFMlRIazVha3h1UW5KaFV6VnVZakk1Ymt3elpIbE9RemxxVG0xNGIxWXlUbTlYVnpWeFQwTTFhbU50ZDNkblowVkZRbWR2Y2tKblJVVkJaRm8xUVdkUlEwSkpTREZDU1VoNVFWQkJRV1JSUWtselQwNXlNbkZhU0U1QkwyeGhaMHcyYmxSRWNraEdTVUo1TVdKa1RFbElXblUzSzNKUFpHbEZZM2RCUVVGYVNGWjRVV0pMUVVGQlJVRjNRa2ROUlZGRFNVUndSMEY1UTFCbVNqUlljWGhOYmtaNFRGRm1Va1p0TjNCU01tMUhPRElyYWxaV1prZHdVSGx0YUdSQmFVSlJNakpKTjAwMWMxWTJVSHBFTkUxRVlpOXNWSEJuVjB0T2VrVnFNblY0UW1Sc1RuUlVSRUU1VWk5UlFqTkJUemRPTUVkVVZqSjRjazk0Vm5remJtSlVUa1UyU1hsb01GbzRkazk2WlhjeFJrbFhWVnA0U0RkWFlrRkJRVUpyWkZoR1FuRlZRVUZCVVVSQlJXZDNVbWRKYUVGT2RUZFlNV3QwT1ZkRVZGVmhkRTlHWkZOdVVUVnlLelV3UlZjelNtRnZiWFZFTTFCMVpuVnpkbFpwUVdsRlFYbElhMUpUVEhoRVFUQXdTRk5YZFdkTmFIZHdaRzB3UW10RlJVWm5MelJXUW01TWRraEhiMjgxUmtGM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFVUm5aMFZDUVVGT2RtcGxlR2h5T0hCTlFVRlFUbVJ1UTJacE9UUlpNMUE0Y1ZoS2EzaHZPRXBEYUdoamVWWk1TMnh5VmtGaldqYzJVMFpMY2toME1HZGFZVEkwU1dreVZVVkxhelpQZDJvM1RYZFNSM0pyV0M5VlZtbE9abFIyWm13dmVtaEdiMnc1YW5JMVYwbFpXR292VDJoSWJUWjBaRGN2WWxBMkswWTNWVEZyVXprMlV6QktTa1YyY3l0Tk5IbHlhVFZRUlRGV1NXazRORGQzUkZSVGFEaGlRMnc0WjNoU01FeHFhM1ZQTTJrclFXWnVZak5sY2k5WmIzaHVjVW9yUjFsNFYyaE9ORTlIUnk5aVNtSnFXRko2VkVsQmN6VTNVRTFzTHpKUVlWbEJRUzlFZFU5cVUxUk9URmhSVTFOWFRuRk1WMWxsTlVWWmNXRldTa3R4VXpKT1NXWm1WVE5UWjJvMFkxSmxjbXBUU0Rjd1JsRkxjalowYjNOTFkyY3JabTlvWlVkNE1XMVhSbWwxY1RKdE1Fa3hSMG95T1ZsTlJIWm5ha1ExY0c5TGExaG5MMjU1VmxoQ1YxUXpSVTlCZGxkWFZWVXZUV1pLZHowaUxDSk5TVWxHUTNwRFEwRjJUMmRCZDBsQ1FXZEpVV1l2UVVaMFRuQXhkVWR3WVhob0wydE5TR05VZWxSQlRrSm5hM0ZvYTJsSE9YY3dRa0ZSYzBaQlJFSklUVkZ6ZDBOUldVUldVVkZIUlhkS1ZsVjZSV2xOUTBGSFFURlZSVU5vVFZwU01qbDJXako0YkVsR1VubGtXRTR3U1VaT2JHTnVXbkJaTWxaNlNVVjRUVkY2UlZWTlFrbEhRVEZWUlVGNFRVeFNNVkpVU1VaS2RtSXpVV2RWYWtWM1NHaGpUazFxVFhoTmFrVjZUVVJyZDAxRVFYZFhhR05PVFdwcmQwMXFTWGROVkZGM1RVUkJkMWRxUVRkTlVYTjNRMUZaUkZaUlVVZEZkMHBXVlhwRlpVMUNkMGRCTVZWRlEyaE5WbEl5T1haYU1uaHNTVVpTZVdSWVRqQkpSazVzWTI1YWNGa3lWbnBOVVhkM1EyZFpSRlpSVVVSRmQwNVlWV3BSZDJkblJXbE5RVEJIUTFOeFIxTkpZak5FVVVWQ1FWRlZRVUUwU1VKRWQwRjNaMmRGUzBGdlNVSkJVVU4yVkd4SEwzcHNRMnMyTkRRNWEyRlhMMFJEYjJseGIzQXdjRWwzZVdGT09FdFJSMkp6VmpJd2MzSXdZalF5T1VweVVrMVJURXBVTHpkelNWSk1jMWhrY2xaalFUVTNOelZXT1ZoUkwwWnNWbEJWYzNsR1VXRlhTRVY0WjJGUllXWXlVRnA0VGxacldXWlVPVk5VTlRkaE9WVmlWaXRPVkd4a1kyNXRlSFp2YjB4dGNHaDNMMVJHZG14dWNIRXljazB4Tlhsc1NHbHhPR3hIY1dkUmNGSTVMelpCVEhWdmJHMVhSRlpQVUVaRlowRnNWR1E1VVc5RlZ6bG5URTExUnpOc1R6TXhiSFJ6Wlc1YVYxUXhiRU5SVXpKU1VsWlRlRmhxTjJOU016SnNXR2RUUlhOck1WcDZOVGRsVW14blEyWjVaa0YyVlVwVmRFMTBPVGd5YzI5T1VqSmtlazlXVDB0cU9YcHNhV1ZHY21Ka1prSmFhSGhhU0ZGdU4wbEtkVWRqWTJScFNtNUxWRlJsWWtKcWVFMW9WV05WU0dzMk1ubHNUemRuWlV4MFlqTktUVlZpWW01MlUxbEVNbFZCWTJ4bmVuSjNiRUZuVFVKQlFVZHFaMlkwZDJkbWMzZEVaMWxFVmxJd1VFRlJTQzlDUVZGRVFXZEhSMDFDTUVkQk1WVmtTbEZSVjAxQ1VVZERRM05IUVZGVlJrSjNUVUpDWjJkeVFtZEZSa0pSWTBSQmFrRlRRbWRPVmtoU1RVSkJaamhGUTBSQlIwRlJTQzlCWjBWQlRVSXdSMEV4VldSRVoxRlhRa0pUWW5sQ1J6aFFZVzh5ZFZSSFRWUnZPVVV4Vm1ONVREaFFRVmxVUVdaQ1owNVdTRk5OUlVkRVFWZG5RbFJyY25semJXTlNiM0pUUTJWR1RERktiVXhQTDNkcFVrNTRVR3BCTUVKblozSkNaMFZHUWxGalFrRlJVVzlOUTFsM1NrRlpTVXQzV1VKQ1VWVklUVUZMUjBkSGFEQmtTRUUyVEhrNWNFeHVRbkpoVXpWdVlqSTVia3d6U1hoTWJVNTVaRVJCY2tKblRsWklVamhGU2tSQmFVMURRMmRJY1VGamFHaHdiMlJJVW5kUGFUaDJXWGsxZDJFeWEzVmFNamwyV25rNWVVd3pTWGhNYlU1NVlrUkJWRUpuVGxaSVUwRkZSRVJCUzAxQlowZENiV1ZDUkVGRlEwRlVRVTVDWjJ0eGFHdHBSemwzTUVKQlVYTkdRVUZQUTBGblJVRm9NbTVFT1ZkRU5YTnJlbFZNUVhodFNXUjBlRlphV2tZNEx6VjNkRFZwWmtsTlZVRlZVazVXZDFwalREbDFkVTkyY2s1VU56VndWbWg1TTFrMFpIRTVVSFJDUkhsSmJXZFVZMGxZY25Gd09FVk1iRkZJWWsxSFVqSnZia014ZVRWb1VtbHZVak5IUnpGS09IRkhRbVV6UWpGRVVYcHVNSEZ2TlVkcmNuZzBhV2xxTDJRMmRIbHZSM2htZW1SQmRuUlFVbEVyYXpaUVlWaGhPRXhYWkdocWNGTXZMMWRHWjA4MlRWaFBTMlUyY1ZScFkxWnRhalkwV0ZsM2FtOUVVVmxPZFZsSWRFTlhVRVp5VnpocGJVTmtNMUl4TlVnck0wdHNRMjVOTjBaMlVYbGtUbkl3TkV4UVZYUXZURmxOT0VkYVNFSktlVlZ4TVc5WWRrVTFVa3RYYTI5M01WQjBTSEIxYlRNNU9IVkhlVlo2Wml0MmRTc3dNV2t2YldSRVVYQnpZaTlKTDFCUlZqbENRVXBwYmpsRk1tTm1XVXhzUVhOT2JEbFdZVlZ2Vldsbk9YRjFiRk1yYW10dVpHaDBUMU5SWTFkMGR6WXlXVXgxUjI4dmVVazVZMFkwVlZrMGNUbHNWMmRPVHpkTU9VbFdWa2hSYnprMGIwTnlUREZuVWsxTFFVNTBSbXRoWTB4RVJVTjNRWFZHVTB0MmRXaGhOMFJoYmxrM2FGbzNXWEZHTmtoclRteEtlbFJCTmxrNVZWSk9jVGxOZUhGS2FFMWxWR1JyWldaNkszTXhRV1F2VVZrd1pUSk5TRWRuWWtVcmIwNWtOR0YzVkdSeVJYaFRNa0l5UlhBM2QyTlRhVEZ2UVRNMGNFbGhTbWRSZFZkMU9FWnliMk5EYzNwemNXTXJiMHBYVkhKM01sWlJaMlU1ZUdkVldsVk5Xa3hTVjJKR05Hb3pSa3RRYzFaV1oxWXJOMmM1TlZKT1JXcEhhRU14VFRoTVlYTTRkM2MxVkN0MVFsQk5USE5UVVdzeVFsSklZM2RtZVVSU01qQTVNa3BHYkdSSGRVRTRUVlZCY2tkT0wyNUlWRVJtVjJGWlRFbFFRMVZvZDBKb2NGbFBha3R1YVRSbFVFeHlZV1J4TjBGSE1sRnZSMVp6ZWxwM1owcGxjVXhZU2tKbUswazJibmw2Um1ReVl6VlBXRTFITmpWT1l6MGlMQ0pOU1VsR1dXcERRMEpGY1dkQmQwbENRV2RKVVdRM01FNWlUbk15SzFKeWNVbFJMMFU0Um1wVVJGUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUpZVFZGemQwTlJXVVJXVVZGSFJYZEtRMUpVUlZwTlFtTkhRVEZWUlVOb1RWRlNNbmgyV1cxR2MxVXliRzVpYVVKMVpHa3hlbGxVUlZGTlFUUkhRVEZWUlVONFRVaFZiVGwyWkVOQ1JGRlVSV0pOUW10SFFURlZSVUY0VFZOU01uaDJXVzFHYzFVeWJHNWlhVUpUWWpJNU1FbEZUa0pOUWpSWVJGUkpkMDFFV1hoUFZFRjNUVVJCTUUxc2IxaEVWRWswVFVSRmVVOUVRWGROUkVFd1RXeHZkMUo2UlV4TlFXdEhRVEZWUlVKb1RVTldWazE0U1dwQlowSm5UbFpDUVc5VVIxVmtkbUl5WkhOYVUwSlZZMjVXZW1SRFFsUmFXRW95WVZkT2JHTjVRazFVUlUxNFJrUkJVMEpuVGxaQ1FVMVVRekJrVlZWNVFsTmlNamt3U1VaSmVFMUpTVU5KYWtGT1FtZHJjV2hyYVVjNWR6QkNRVkZGUmtGQlQwTkJaemhCVFVsSlEwTm5TME5CWjBWQmRHaEZRMmw0TjJwdldHVmlUemw1TDJ4RU5qTnNZV1JCVUV0SU9XZDJiRGxOWjJGRFkyWmlNbXBJTHpjMlRuVTRZV2syV0d3MlQwMVRMMnR5T1hKSU5YcHZVV1J6Wm01R2JEazNkblZtUzJvMlluZFRhVlkyYm5Gc1MzSXJRMDF1ZVRaVGVHNUhVR0l4Tld3ck9FRndaVFl5YVcwNVRWcGhVbmN4VGtWRVVHcFVja1ZVYnpobldXSkZkbk12UVcxUk16VXhhMHRUVldwQ05rY3dNR293ZFZsUFJGQXdaMjFJZFRneFNUaEZNME4zYm5GSmFYSjFObm94YTFveGNTdFFjMEZsZDI1cVNIaG5jMGhCTTNrMmJXSlhkMXBFY2xoWlptbFpZVkpSVFRselNHMXJiRU5wZEVRek9HMDFZV2RKTDNCaWIxQkhhVlZWS3paRVQyOW5ja1phV1VwemRVSTJha00xTVRGd2VuSndNVnByYWpWYVVHRkxORGxzT0V0RmFqaERPRkZOUVV4WVRETXlhRGROTVdKTGQxbFZTQ3RGTkVWNlRtdDBUV2MyVkU4NFZYQnRkazF5VlhCemVWVnhkRVZxTldOMVNFdGFVR1p0WjJoRFRqWktNME5wYjJvMlQwZGhTeTlIVURWQlptdzBMMWgwWTJRdmNESm9MM0p6TXpkRlQyVmFWbGgwVERCdE56bFpRakJsYzFkRGNuVlBRemRZUm5oWmNGWnhPVTl6Tm5CR1RFdGpkMXB3UkVsc1ZHbHllRnBWVkZGQmN6WnhlbXR0TURad09UaG5OMEpCWlN0a1JIRTJaSE52TkRrNWFWbElObFJMV0M4eFdUZEVlbXQyWjNSa2FYcHFhMWhRWkhORWRGRkRkamxWZHl0M2NEbFZOMFJpUjB0dloxQmxUV0V6VFdRcmNIWmxlamRYTXpWRmFVVjFZU3NyZEdkNUwwSkNha1pHUm5remJETlhSbkJQT1V0WFozbzNlbkJ0TjBGbFMwcDBPRlF4TVdSc1pVTm1aVmhyYTFWQlMwbEJaalZ4YjBsaVlYQnpXbGQzY0dKclRrWm9TR0Y0TW5oSlVFVkVaMlpuTVdGNlZsazRNRnBqUm5WamRFdzNWR3hNYmsxUkx6QnNWVlJpYVZOM01XNUlOamxOUnpaNlR6QmlPV1kyUWxGa1owRnRSREEyZVVzMU5tMUVZMWxDV2xWRFFYZEZRVUZoVDBOQlZHZDNaMmRGTUUxQk5FZEJNVlZrUkhkRlFpOTNVVVZCZDBsQ2FHcEJVRUpuVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlVhM0o1YzIxalVtOXlVME5sUmt3eFNtMU1UeTkzYVZKT2VGQnFRV1pDWjA1V1NGTk5SVWRFUVZkblFsSm5aVEpaWVZKUk1saDViMnhSVERNd1JYcFVVMjh2TDNvNVUzcENaMEpuWjNKQ1owVkdRbEZqUWtGUlVsVk5Sa2wzU2xGWlNVdDNXVUpDVVZWSVRVRkhSMGRYYURCa1NFRTJUSGs1ZGxrelRuZE1ia0p5WVZNMWJtSXlPVzVNTW1SNlkycEZkMHRSV1VsTGQxbENRbEZWU0UxQlMwZElWMmd3WkVoQk5reDVPWGRoTW10MVdqSTVkbHA1T1c1ak0wbDRUREprZW1OcVJYVlpNMG93VFVSSlIwRXhWV1JJZDFGeVRVTnJkMG8yUVd4dlEwOUhTVmRvTUdSSVFUWk1lVGxxWTIxM2RXTkhkSEJNYldSMllqSmpkbG96VG5sTlV6bHVZek5KZUV4dFRubGlSRUUzUW1kT1ZraFRRVVZPUkVGNVRVRm5SMEp0WlVKRVFVVkRRVlJCU1VKbldtNW5VWGRDUVdkSmQwUlJXVXhMZDFsQ1FrRklWMlZSU1VaQmQwbDNSRkZaVEV0M1dVSkNRVWhYWlZGSlJrRjNUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSRk5yU0hKRmIyODVRekJrYUdWdFRWaHZhRFprUmxOUWMycGlaRUphUW1sTVp6bE9Vak4wTlZBclZEUldlR1p4TjNaeFprMHZZalZCTTFKcE1XWjVTbTA1WW5ab1pFZGhTbEV6WWpKME5ubE5RVmxPTDI5c1ZXRjZjMkZNSzNsNVJXNDVWM0J5UzBGVFQzTm9TVUZ5UVc5NVdtd3JkRXBoYjNneE1UaG1aWE56YlZodU1XaEpWbmMwTVc5bFVXRXhkakYyWnpSR2RqYzBlbEJzTmk5QmFGTnlkemxWTlhCRFdrVjBORmRwTkhkVGRIbzJaRlJhTDBOTVFVNTRPRXhhYURGS04xRktWbW95Wm1oTmRHWlVTbkk1ZHpSNk16QmFNakE1Wms5Vk1HbFBUWGtyY1dSMVFtMXdkblpaZFZJM2FGcE1Oa1IxY0hONlptNTNNRk5yWm5Sb2N6RTRaRWM1V2t0aU5UbFZhSFp0WVZOSFdsSldZazVSY0hObk0wSmFiSFpwWkRCc1NVdFBNbVF4ZUc5NlkyeFBlbWRxV0ZCWmIzWktTa2wxYkhSNmEwMTFNelJ4VVdJNVUzb3ZlV2xzY21KRFoybzRQU0pkZlEuZXlKdWIyNWpaU0k2SW5CbU9VTTNabnBvTUc5aWRGQmtTbWxEWWpFNGQzVTFZbnAwY0hJMVoxQnRTVlpKVWxGNVMyUktSbU05SWl3aWRHbHRaWE4wWVcxd1RYTWlPakUzTXpFMk5UZzJNREE1TkRRc0ltRndhMUJoWTJ0aFoyVk9ZVzFsSWpvaVkyOXRMbWR2YjJkc1pTNWhibVJ5YjJsa0xtZHRjeUlzSW1Gd2EwUnBaMlZ6ZEZOb1lUSTFOaUk2SWxZclRrc3dTVk5IZFV4elQxb3dRWGhpTlZsTmFXMHhjREJzZURJMFkxUmtNV2NySzNNck4zSlRjMVU5SWl3aVkzUnpVSEp2Wm1sc1pVMWhkR05vSWpwMGNuVmxMQ0poY0d0RFpYSjBhV1pwWTJGMFpVUnBaMlZ6ZEZOb1lUSTFOaUk2V3lJNFVERnpWekJGVUVwamMyeDNOMVY2VW5OcFdFdzJOSGNyVHpVd1JXUXJVa0pKUTNSaGVURm5NalJOUFNKZExDSmlZWE5wWTBsdWRHVm5jbWwwZVNJNmRISjFaU3dpWlhaaGJIVmhkR2x2YmxSNWNHVWlPaUpDUVZOSlF5eElRVkpFVjBGU1JWOUNRVU5MUlVRaUxDSmtaWEJ5WldOaGRHbHZia2x1Wm05eWJXRjBhVzl1SWpvaVZHaGxJR0Z3Y0NCcGN5QmhiR3h2ZDJ4cGMzUmxaQ0IwYnlCMWMyVWdkR2hsSUZOaFptVjBlVTVsZENCQmRIUmxjM1JoZEdsdmJpQkJVRWtnZFc1MGFXd2dkR2hsSUdaMWJHd2dkSFZ5Ym1SdmQyNDZJR2gwZEhCek9pOHZaeTVqYnk5d2JHRjVMM05oWm1WMGVXNWxkQzEwYVcxbGJHbHVaUzRpZlEuZ2FUNTZCdEtRUlE3S3ZJUFpRYkR6ckJmWHd1eWhQeVdwdGhQOEUwVHhiQU5NUjNndFFCTi1BcnFPTld3aWk5bTVBZzFIeHpwQlJFN0MxV0JsS0p2NjF2UFFQb0U2d21nTnpXX3EzSGpPV1pnMTJ6THQwczNSYmRwZ18yNmxkYVIzSlBGM0Y5S2dHclFWN3AwUUFSRzZkcVV4V0pzLV84YmprVmhwakhjcDRDbk9GR0hidXZGT29mR3V6Vi1IZ2RxSWxienVSa2p3Q0EzTWhSdnowUzJaMjI0dW9KNEg1V2JaM3JsSVZKU1FEYnl5amdCSm5aR1pQNEU5a0tsTHVnUnl5eVRFbEZidzVvNm5KdjdkQVVTdXJZc3N3Z3lwV3dvU0VyNmZpVDNwbFdBdXV4RTczS0Z3US16UGEtZEp2dWZlbkRUZmFFb3ZFandHWWV4NzdmX09naGF1dGhEYXRhWMU0463jpzQcDvCgyzvBJ1xIylKNzp8LH3yUQ6dviJpjzkUAAAAAuT/ZYfLmRi+xIoIAIkfeeABBAQEtddFF3uNs9YcVkUVMv5McYCfEg+x0KX/qKc3w5+TXOWt1C0gf8g5QJWb9crxj9vYKpa5n5ztAktBlpDK1eRylAQIDJiABIVgg2szLLdojdakCRFLtk6e3MJBoMVkAUV6NFbEII1nHQ1YiWCCuu0m3bFYe3LxaumBJUN+gqq3IG6w5HcnoamNtF9kPpw==', 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiQUo5ZXh3cFZrYk5CdmtxVHppamRaNVlvOFN0ZFA0dTdBcUlpbGFpQTZTYyIsIm9yaWdpbiI6Imh0dHBzOi8vaW1zLXBuYy5zaXRlIiwiY3Jvc3NPcmlnaW4iOmZhbHNlLCJvdGhlcl9rZXlzX2Nhbl9iZV9hZGRlZF9oZXJlIjoiZG8gbm90IGNvbXBhcmUgY2xpZW50RGF0YUpTT04gYWdhaW5zdCBhIHRlbXBsYXRlLiBTZWUgaHR0cHM6Ly9nb28uZ2wveWFiUGV4In0=', '$2y$10$th1GkvObXGqS1fTYfhBOV.37MLQom3e49Ro.bKwHIRRJaPje1VT1i', 'john ', 'doe', 'johndoe@gmail.com', '09539283920', 'block 2 lot 4 katapatan , brgy banay - banay, cabuyao laguna', 36273, 66650, 'Active', '2024-11-15 08:16:41', '', '', '0000-00-00 00:00:00'),
(154, '1234568', 'AT3B9l7kg18b76VYwu/bLuxp7jWYkJQnBwWX3PUesu2pyCQTfmfVP7oV9A6WZaKLNkLF/f145zDtElYHxgze1pQ=', 'o2NmbXRxYW5kcm9pZC1zYWZldHluZXRnYXR0U3RtdKJjdmVyaTI0NDMzNzAyOWhyZXNwb25zZVkgAGV5SmhiR2NpT2lKU1V6STFOaUlzSW5nMVl5STZXeUpOU1VsR1RIcERRMEpDWldkQmQwbENRV2RKVVVSWU1VRlVhVzUzZG1kTlNuSnZWR2hEYlhoMloxUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUUzVFZGemQwTlJXVVJXVVZGSFJYZEtWbFY2UldWTlFuZEhRVEZWUlVOb1RWWlNNamwyV2pKNGJFbEdVbmxrV0U0d1NVWk9iR051V25CWk1sWjZUVkYzZDBObldVUldVVkZFUlhkT1dGVnFVWGRJYUdOT1RXcFJkMDlVUVRWTlJGa3hUV3BKZVZkb1kwNU5hbEY0VFdwQk5FMUVXVEZOYWtsNFYycEJaRTFTYzNkSFVWbEVWbEZSUkVWNFNtaGtTRkpzWXpOUmRWbFhOV3RqYlRsd1drTTFhbUl5TUhkblowVnBUVUV3UjBOVGNVZFRTV0l6UkZGRlFrRlJWVUZCTkVsQ1JIZEJkMmRuUlV0QmIwbENRVkZEZFZodmMxcGtTVzQzVWs5WFVYaFRjMnh4YjJKbmFUaE9SR2RNYlc5TE15czNORmhxUkhRNFpXUklUbk5qYlVVMWRsVTVOVEpXUkdaR04ySlpSMEprTm1SSFdXUnlaamxOZEU1RVVtMHdiR0Z5VDBOM1lrVnFWVEJ0Y0Vkak1YZENXWFpSY1hSb1YwOUVNek5WYkZkTlJXWjVkV2haWnpGTGVXcDBaR3h4UzI5eVVtMDRiWEIxVEZVMlltdFdlbVpTT0VWVk1GTTVWWEExVFU4cmEyaEVSV1pvU2pjNFdYRmhSVVJ1WW5OeWMyNVBRVEpDTldrMVpGVlRiRWxPU201cU55dHBOSGwyYTNNMVZ5OTZWSE5xWVd4YWNIRlFRVlJGYUdKR2JucDZUelpYVUcxTVdWRlNhV2RqT0dGT2VEQmllazB6U1RKQ1RtaDFTM1Z5T1d0NFRrdFRSbU5tZVV4cVoyeDVXbEJ5YW1aSmJGTTRVbGQwVDJ0bWNVNWpkMG95Wm5salJGUkZjMmxaTlRWR2RrWkdOa3g1YTI5RlltRmhaa1JIV0hGalMxWjZiRzFyWlZnd1UxcDJhalZUVVhGTFkzUkNaR1pCWjAxQ1FVRkhhbWRuU2t4TlNVbERVbnBCVDBKblRsWklVVGhDUVdZNFJVSkJUVU5DWVVGM1JYZFpSRlpTTUd4Q1FYZDNRMmRaU1V0M1dVSkNVVlZJUVhkRmQwUkJXVVJXVWpCVVFWRklMMEpCU1hkQlJFRmtRbWRPVmtoUk5FVkdaMUZWWW5kRE9YZERZMjB3V0VkeWIxRjRSVTFhV1ZwV01uSlFaRzVuZDBoM1dVUldVakJxUWtKbmQwWnZRVlZ0T0dkU2RrUXljVTV5YTNocVJUWlFVazVXV0UxcEwwUjNSMFYzV0dkWlNVdDNXVUpDVVZWSVFWRkZSVlZxUWxGTlEyTkhRME56UjBGUlZVWkNla0ZDYUdoMGIyUklVbmRQYVRoMlluazFkMkV5YTNWYU1qbDJXbms1ZWt3elpIbE9RemxGVjBSQmQwcFJXVWxMZDFsQ1FsRlZTRTFCUzBkSFYyZ3daRWhCTmt4NU9YQk1ia0p5WVZNMWJtSXlPVzVNTTJSNVRrTTFhbU51VVhkSVVWbEVWbEl3VWtKQ1dYZEdTVWxUV1ZoU01GcFlUakJNYlVaMVdraEtkbUZYVVhWWk1qbDBUVUpOUjBFeFZXUkpRVkZOVFVGdmQwTkJXVWRhTkVWTlFWRkpRazFFV1VkQk1WVmtTSGRSZGsxRE1IZExOa0Z3YjBObFIwcFhhREJrU0VFMlRIazVha3h1UW5KaFV6VnVZakk1Ymt3elpIbE9RemxxVG0xNGIxWXlUbTlYVnpWeFQwTTFhbU50ZDNkblowVkZRbWR2Y2tKblJVVkJaRm8xUVdkUlEwSkpTREZDU1VoNVFWQkJRV1JSUWtselQwNXlNbkZhU0U1QkwyeGhaMHcyYmxSRWNraEdTVUo1TVdKa1RFbElXblUzSzNKUFpHbEZZM2RCUVVGYVNGWjRVV0pMUVVGQlJVRjNRa2ROUlZGRFNVUndSMEY1UTFCbVNqUlljWGhOYmtaNFRGRm1Va1p0TjNCU01tMUhPRElyYWxaV1prZHdVSGx0YUdSQmFVSlJNakpKTjAwMWMxWTJVSHBFTkUxRVlpOXNWSEJuVjB0T2VrVnFNblY0UW1Sc1RuUlVSRUU1VWk5UlFqTkJUemRPTUVkVVZqSjRjazk0Vm5remJtSlVUa1UyU1hsb01GbzRkazk2WlhjeFJrbFhWVnA0U0RkWFlrRkJRVUpyWkZoR1FuRlZRVUZCVVVSQlJXZDNVbWRKYUVGT2RUZFlNV3QwT1ZkRVZGVmhkRTlHWkZOdVVUVnlLelV3UlZjelNtRnZiWFZFTTFCMVpuVnpkbFpwUVdsRlFYbElhMUpUVEhoRVFUQXdTRk5YZFdkTmFIZHdaRzB3UW10RlJVWm5MelJXUW01TWRraEhiMjgxUmtGM1JGRlpTa3R2V2tsb2RtTk9RVkZGVEVKUlFVUm5aMFZDUVVGT2RtcGxlR2h5T0hCTlFVRlFUbVJ1UTJacE9UUlpNMUE0Y1ZoS2EzaHZPRXBEYUdoamVWWk1TMnh5VmtGaldqYzJVMFpMY2toME1HZGFZVEkwU1dreVZVVkxhelpQZDJvM1RYZFNSM0pyV0M5VlZtbE9abFIyWm13dmVtaEdiMnc1YW5JMVYwbFpXR292VDJoSWJUWjBaRGN2WWxBMkswWTNWVEZyVXprMlV6QktTa1YyY3l0Tk5IbHlhVFZRUlRGV1NXazRORGQzUkZSVGFEaGlRMnc0WjNoU01FeHFhM1ZQTTJrclFXWnVZak5sY2k5WmIzaHVjVW9yUjFsNFYyaE9ORTlIUnk5aVNtSnFXRko2VkVsQmN6VTNVRTFzTHpKUVlWbEJRUzlFZFU5cVUxUk9URmhSVTFOWFRuRk1WMWxsTlVWWmNXRldTa3R4VXpKT1NXWm1WVE5UWjJvMFkxSmxjbXBUU0Rjd1JsRkxjalowYjNOTFkyY3JabTlvWlVkNE1XMVhSbWwxY1RKdE1Fa3hSMG95T1ZsTlJIWm5ha1ExY0c5TGExaG5MMjU1VmxoQ1YxUXpSVTlCZGxkWFZWVXZUV1pLZHowaUxDSk5TVWxHUTNwRFEwRjJUMmRCZDBsQ1FXZEpVV1l2UVVaMFRuQXhkVWR3WVhob0wydE5TR05VZWxSQlRrSm5hM0ZvYTJsSE9YY3dRa0ZSYzBaQlJFSklUVkZ6ZDBOUldVUldVVkZIUlhkS1ZsVjZSV2xOUTBGSFFURlZSVU5vVFZwU01qbDJXako0YkVsR1VubGtXRTR3U1VaT2JHTnVXbkJaTWxaNlNVVjRUVkY2UlZWTlFrbEhRVEZWUlVGNFRVeFNNVkpVU1VaS2RtSXpVV2RWYWtWM1NHaGpUazFxVFhoTmFrVjZUVVJyZDAxRVFYZFhhR05PVFdwcmQwMXFTWGROVkZGM1RVUkJkMWRxUVRkTlVYTjNRMUZaUkZaUlVVZEZkMHBXVlhwRlpVMUNkMGRCTVZWRlEyaE5WbEl5T1haYU1uaHNTVVpTZVdSWVRqQkpSazVzWTI1YWNGa3lWbnBOVVhkM1EyZFpSRlpSVVVSRmQwNVlWV3BSZDJkblJXbE5RVEJIUTFOeFIxTkpZak5FVVVWQ1FWRlZRVUUwU1VKRWQwRjNaMmRGUzBGdlNVSkJVVU4yVkd4SEwzcHNRMnMyTkRRNWEyRlhMMFJEYjJseGIzQXdjRWwzZVdGT09FdFJSMkp6VmpJd2MzSXdZalF5T1VweVVrMVJURXBVTHpkelNWSk1jMWhrY2xaalFUVTNOelZXT1ZoUkwwWnNWbEJWYzNsR1VXRlhTRVY0WjJGUllXWXlVRnA0VGxacldXWlVPVk5VTlRkaE9WVmlWaXRPVkd4a1kyNXRlSFp2YjB4dGNHaDNMMVJHZG14dWNIRXljazB4Tlhsc1NHbHhPR3hIY1dkUmNGSTVMelpCVEhWdmJHMVhSRlpQVUVaRlowRnNWR1E1VVc5RlZ6bG5URTExUnpOc1R6TXhiSFJ6Wlc1YVYxUXhiRU5SVXpKU1VsWlRlRmhxTjJOU016SnNXR2RUUlhOck1WcDZOVGRsVW14blEyWjVaa0YyVlVwVmRFMTBPVGd5YzI5T1VqSmtlazlXVDB0cU9YcHNhV1ZHY21Ka1prSmFhSGhhU0ZGdU4wbEtkVWRqWTJScFNtNUxWRlJsWWtKcWVFMW9WV05WU0dzMk1ubHNUemRuWlV4MFlqTktUVlZpWW01MlUxbEVNbFZCWTJ4bmVuSjNiRUZuVFVKQlFVZHFaMlkwZDJkbWMzZEVaMWxFVmxJd1VFRlJTQzlDUVZGRVFXZEhSMDFDTUVkQk1WVmtTbEZSVjAxQ1VVZERRM05IUVZGVlJrSjNUVUpDWjJkeVFtZEZSa0pSWTBSQmFrRlRRbWRPVmtoU1RVSkJaamhGUTBSQlIwRlJTQzlCWjBWQlRVSXdSMEV4VldSRVoxRlhRa0pUWW5sQ1J6aFFZVzh5ZFZSSFRWUnZPVVV4Vm1ONVREaFFRVmxVUVdaQ1owNVdTRk5OUlVkRVFWZG5RbFJyY25semJXTlNiM0pUUTJWR1RERktiVXhQTDNkcFVrNTRVR3BCTUVKblozSkNaMFZHUWxGalFrRlJVVzlOUTFsM1NrRlpTVXQzV1VKQ1VWVklUVUZMUjBkSGFEQmtTRUUyVEhrNWNFeHVRbkpoVXpWdVlqSTVia3d6U1hoTWJVNTVaRVJCY2tKblRsWklVamhGU2tSQmFVMURRMmRJY1VGamFHaHdiMlJJVW5kUGFUaDJXWGsxZDJFeWEzVmFNamwyV25rNWVVd3pTWGhNYlU1NVlrUkJWRUpuVGxaSVUwRkZSRVJCUzAxQlowZENiV1ZDUkVGRlEwRlVRVTVDWjJ0eGFHdHBSemwzTUVKQlVYTkdRVUZQUTBGblJVRm9NbTVFT1ZkRU5YTnJlbFZNUVhodFNXUjBlRlphV2tZNEx6VjNkRFZwWmtsTlZVRlZVazVXZDFwalREbDFkVTkyY2s1VU56VndWbWg1TTFrMFpIRTVVSFJDUkhsSmJXZFVZMGxZY25Gd09FVk1iRkZJWWsxSFVqSnZia014ZVRWb1VtbHZVak5IUnpGS09IRkhRbVV6UWpGRVVYcHVNSEZ2TlVkcmNuZzBhV2xxTDJRMmRIbHZSM2htZW1SQmRuUlFVbEVyYXpaUVlWaGhPRXhYWkdocWNGTXZMMWRHWjA4MlRWaFBTMlUyY1ZScFkxWnRhalkwV0ZsM2FtOUVVVmxPZFZsSWRFTlhVRVp5VnpocGJVTmtNMUl4TlVnck0wdHNRMjVOTjBaMlVYbGtUbkl3TkV4UVZYUXZURmxOT0VkYVNFSktlVlZ4TVc5WWRrVTFVa3RYYTI5M01WQjBTSEIxYlRNNU9IVkhlVlo2Wml0MmRTc3dNV2t2YldSRVVYQnpZaTlKTDFCUlZqbENRVXBwYmpsRk1tTm1XVXhzUVhOT2JEbFdZVlZ2Vldsbk9YRjFiRk1yYW10dVpHaDBUMU5SWTFkMGR6WXlXVXgxUjI4dmVVazVZMFkwVlZrMGNUbHNWMmRPVHpkTU9VbFdWa2hSYnprMGIwTnlUREZuVWsxTFFVNTBSbXRoWTB4RVJVTjNRWFZHVTB0MmRXaGhOMFJoYmxrM2FGbzNXWEZHTmtoclRteEtlbFJCTmxrNVZWSk9jVGxOZUhGS2FFMWxWR1JyWldaNkszTXhRV1F2VVZrd1pUSk5TRWRuWWtVcmIwNWtOR0YzVkdSeVJYaFRNa0l5UlhBM2QyTlRhVEZ2UVRNMGNFbGhTbWRSZFZkMU9FWnliMk5EYzNwemNXTXJiMHBYVkhKM01sWlJaMlU1ZUdkVldsVk5Xa3hTVjJKR05Hb3pSa3RRYzFaV1oxWXJOMmM1TlZKT1JXcEhhRU14VFRoTVlYTTRkM2MxVkN0MVFsQk5USE5UVVdzeVFsSklZM2RtZVVSU01qQTVNa3BHYkdSSGRVRTRUVlZCY2tkT0wyNUlWRVJtVjJGWlRFbFFRMVZvZDBKb2NGbFBha3R1YVRSbFVFeHlZV1J4TjBGSE1sRnZSMVp6ZWxwM1owcGxjVXhZU2tKbUswazJibmw2Um1ReVl6VlBXRTFITmpWT1l6MGlMQ0pOU1VsR1dXcERRMEpGY1dkQmQwbENRV2RKVVdRM01FNWlUbk15SzFKeWNVbFJMMFU0Um1wVVJGUkJUa0puYTNGb2EybEhPWGN3UWtGUmMwWkJSRUpZVFZGemQwTlJXVVJXVVZGSFJYZEtRMUpVUlZwTlFtTkhRVEZWUlVOb1RWRlNNbmgyV1cxR2MxVXliRzVpYVVKMVpHa3hlbGxVUlZGTlFUUkhRVEZWUlVONFRVaFZiVGwyWkVOQ1JGRlVSV0pOUW10SFFURlZSVUY0VFZOU01uaDJXVzFHYzFVeWJHNWlhVUpUWWpJNU1FbEZUa0pOUWpSWVJGUkpkMDFFV1hoUFZFRjNUVVJCTUUxc2IxaEVWRWswVFVSRmVVOUVRWGROUkVFd1RXeHZkMUo2UlV4TlFXdEhRVEZWUlVKb1RVTldWazE0U1dwQlowSm5UbFpDUVc5VVIxVmtkbUl5WkhOYVUwSlZZMjVXZW1SRFFsUmFXRW95WVZkT2JHTjVRazFVUlUxNFJrUkJVMEpuVGxaQ1FVMVVRekJrVlZWNVFsTmlNamt3U1VaSmVFMUpTVU5KYWtGT1FtZHJjV2hyYVVjNWR6QkNRVkZGUmtGQlQwTkJaemhCVFVsSlEwTm5TME5CWjBWQmRHaEZRMmw0TjJwdldHVmlUemw1TDJ4RU5qTnNZV1JCVUV0SU9XZDJiRGxOWjJGRFkyWmlNbXBJTHpjMlRuVTRZV2syV0d3MlQwMVRMMnR5T1hKSU5YcHZVV1J6Wm01R2JEazNkblZtUzJvMlluZFRhVlkyYm5Gc1MzSXJRMDF1ZVRaVGVHNUhVR0l4Tld3ck9FRndaVFl5YVcwNVRWcGhVbmN4VGtWRVVHcFVja1ZVYnpobldXSkZkbk12UVcxUk16VXhhMHRUVldwQ05rY3dNR293ZFZsUFJGQXdaMjFJZFRneFNUaEZNME4zYm5GSmFYSjFObm94YTFveGNTdFFjMEZsZDI1cVNIaG5jMGhCTTNrMmJXSlhkMXBFY2xoWlptbFpZVkpSVFRselNHMXJiRU5wZEVRek9HMDFZV2RKTDNCaWIxQkhhVlZWS3paRVQyOW5ja1phV1VwemRVSTJha00xTVRGd2VuSndNVnByYWpWYVVHRkxORGxzT0V0RmFqaERPRkZOUVV4WVRETXlhRGROTVdKTGQxbFZTQ3RGTkVWNlRtdDBUV2MyVkU4NFZYQnRkazF5VlhCemVWVnhkRVZxTldOMVNFdGFVR1p0WjJoRFRqWktNME5wYjJvMlQwZGhTeTlIVURWQlptdzBMMWgwWTJRdmNESm9MM0p6TXpkRlQyVmFWbGgwVERCdE56bFpRakJsYzFkRGNuVlBRemRZUm5oWmNGWnhPVTl6Tm5CR1RFdGpkMXB3UkVsc1ZHbHllRnBWVkZGQmN6WnhlbXR0TURad09UaG5OMEpCWlN0a1JIRTJaSE52TkRrNWFWbElObFJMV0M4eFdUZEVlbXQyWjNSa2FYcHFhMWhRWkhORWRGRkRkamxWZHl0M2NEbFZOMFJpUjB0dloxQmxUV0V6VFdRcmNIWmxlamRYTXpWRmFVVjFZU3NyZEdkNUwwSkNha1pHUm5remJETlhSbkJQT1V0WFozbzNlbkJ0TjBGbFMwcDBPRlF4TVdSc1pVTm1aVmhyYTFWQlMwbEJaalZ4YjBsaVlYQnpXbGQzY0dKclRrWm9TR0Y0TW5oSlVFVkVaMlpuTVdGNlZsazRNRnBqUm5WamRFdzNWR3hNYmsxUkx6QnNWVlJpYVZOM01XNUlOamxOUnpaNlR6QmlPV1kyUWxGa1owRnRSREEyZVVzMU5tMUVZMWxDV2xWRFFYZEZRVUZoVDBOQlZHZDNaMmRGTUUxQk5FZEJNVlZrUkhkRlFpOTNVVVZCZDBsQ2FHcEJVRUpuVGxaSVVrMUNRV1k0UlVKVVFVUkJVVWd2VFVJd1IwRXhWV1JFWjFGWFFrSlVhM0o1YzIxalVtOXlVME5sUmt3eFNtMU1UeTkzYVZKT2VGQnFRV1pDWjA1V1NGTk5SVWRFUVZkblFsSm5aVEpaWVZKUk1saDViMnhSVERNd1JYcFVVMjh2TDNvNVUzcENaMEpuWjNKQ1owVkdRbEZqUWtGUlVsVk5Sa2wzU2xGWlNVdDNXVUpDVVZWSVRVRkhSMGRYYURCa1NFRTJUSGs1ZGxrelRuZE1ia0p5WVZNMWJtSXlPVzVNTW1SNlkycEZkMHRSV1VsTGQxbENRbEZWU0UxQlMwZElWMmd3WkVoQk5reDVPWGRoTW10MVdqSTVkbHA1T1c1ak0wbDRUREprZW1OcVJYVlpNMG93VFVSSlIwRXhWV1JJZDFGeVRVTnJkMG8yUVd4dlEwOUhTVmRvTUdSSVFUWk1lVGxxWTIxM2RXTkhkSEJNYldSMllqSmpkbG96VG5sTlV6bHVZek5KZUV4dFRubGlSRUUzUW1kT1ZraFRRVVZPUkVGNVRVRm5SMEp0WlVKRVFVVkRRVlJCU1VKbldtNW5VWGRDUVdkSmQwUlJXVXhMZDFsQ1FrRklWMlZSU1VaQmQwbDNSRkZaVEV0M1dVSkNRVWhYWlZGSlJrRjNUWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJSRk5yU0hKRmIyODVRekJrYUdWdFRWaHZhRFprUmxOUWMycGlaRUphUW1sTVp6bE9Vak4wTlZBclZEUldlR1p4TjNaeFprMHZZalZCTTFKcE1XWjVTbTA1WW5ab1pFZGhTbEV6WWpKME5ubE5RVmxPTDI5c1ZXRjZjMkZNSzNsNVJXNDVWM0J5UzBGVFQzTm9TVUZ5UVc5NVdtd3JkRXBoYjNneE1UaG1aWE56YlZodU1XaEpWbmMwTVc5bFVXRXhkakYyWnpSR2RqYzBlbEJzTmk5QmFGTnlkemxWTlhCRFdrVjBORmRwTkhkVGRIbzJaRlJhTDBOTVFVNTRPRXhhYURGS04xRktWbW95Wm1oTmRHWlVTbkk1ZHpSNk16QmFNakE1Wms5Vk1HbFBUWGtyY1dSMVFtMXdkblpaZFZJM2FGcE1Oa1IxY0hONlptNTNNRk5yWm5Sb2N6RTRaRWM1V2t0aU5UbFZhSFp0WVZOSFdsSldZazVSY0hObk0wSmFiSFpwWkRCc1NVdFBNbVF4ZUc5NlkyeFBlbWRxV0ZCWmIzWktTa2wxYkhSNmEwMTFNelJ4VVdJNVUzb3ZlV2xzY21KRFoybzRQU0pkZlEuZXlKdWIyNWpaU0k2SWpkdlVrVm9aVEJQUWtzNFNVbHZZMVZpTTNaR1VqQkljbmhpTTFkWGRrcHlRMEYxY3poNEt6Tk5OV2M5SWl3aWRHbHRaWE4wWVcxd1RYTWlPakUzTXpFMk5UZzRNelUxTmpnc0ltRndhMUJoWTJ0aFoyVk9ZVzFsSWpvaVkyOXRMbWR2YjJkc1pTNWhibVJ5YjJsa0xtZHRjeUlzSW1Gd2EwUnBaMlZ6ZEZOb1lUSTFOaUk2SWxZclRrc3dTVk5IZFV4elQxb3dRWGhpTlZsTmFXMHhjREJzZURJMFkxUmtNV2NySzNNck4zSlRjMVU5SWl3aVkzUnpVSEp2Wm1sc1pVMWhkR05vSWpwMGNuVmxMQ0poY0d0RFpYSjBhV1pwWTJGMFpVUnBaMlZ6ZEZOb1lUSTFOaUk2V3lJNFVERnpWekJGVUVwamMyeDNOMVY2VW5OcFdFdzJOSGNyVHpVd1JXUXJVa0pKUTNSaGVURm5NalJOUFNKZExDSmlZWE5wWTBsdWRHVm5jbWwwZVNJNmRISjFaU3dpWlhaaGJIVmhkR2x2YmxSNWNHVWlPaUpDUVZOSlF5eElRVkpFVjBGU1JWOUNRVU5MUlVRaUxDSmtaWEJ5WldOaGRHbHZia2x1Wm05eWJXRjBhVzl1SWpvaVZHaGxJR0Z3Y0NCcGN5QmhiR3h2ZDJ4cGMzUmxaQ0IwYnlCMWMyVWdkR2hsSUZOaFptVjBlVTVsZENCQmRIUmxjM1JoZEdsdmJpQkJVRWtnZFc1MGFXd2dkR2hsSUdaMWJHd2dkSFZ5Ym1SdmQyNDZJR2gwZEhCek9pOHZaeTVqYnk5d2JHRjVMM05oWm1WMGVXNWxkQzEwYVcxbGJHbHVaUzRpZlEuRkRBXy1KdkVNQXVoNEdKYjBjaWNzWDl1bENBUEJSMlBYcEhSNzVzZVhoZHFodS1DXzVydUhtTDdZQXZRdUpQalJISFpYVGNQc2w5cW9lcW9lekVwMGdiTGxyX1hkd1RKck9VMXRXYllTUXBJdUVqY1otRG53dVdtc3M2UFNhYmN5RGc0Y1U0M3BKZmhUOWpWRnFWZm5PLTFBMkhiZU5aczl1X09YRFlya3AxT01GN3lKX19adHF4YTE2bjJYUGVkbWVuak01Q3dOajQwUm9CY05zSXdTWGJvbDU0X0c2aWFyNk5fNmxkVzFQY054NkNxOVJGbl9MWk9NbngybHNPekV5S0t3eUpnN0Y0bktNVXJnR0gzNVpkQ2l2Z1hhRnZ5V291amJrd05pMzFiVW1YbWVOQUV6NHhWVEc1RU8tNEFtQWYzbmQzTldramJBdFc3ZlhydU9BaGF1dGhEYXRhWMU0463jpzQcDvCgyzvBJ1xIylKNzp8LH3yUQ6dviJpjzkUAAAAAuT/ZYfLmRi+xIoIAIkfeeABBAT3B9l7kg18b76VYwu/bLuxp7jWYkJQnBwWX3PUesu2pyCQTfmfVP7oV9A6WZaKLNkLF/f145zDtElYHxgze1pSlAQIDJiABIVggRaewascgrmSaTdmiLjZQzMpXnPXZnFjPQ+6U0pLwy/wiWCDj4XYH+yVCIw2C2B3knQR2g3zt6cujxb3fWXXpEkbPfg==', 'eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiTGtGRkNCMlZvd3BOeGtZSGhYYnJxZlN1djN0T29WanZ5ZFk1QUh4ak1HTSIsIm9yaWdpbiI6Imh0dHBzOi8vaW1zLXBuYy5zaXRlIiwiY3Jvc3NPcmlnaW4iOmZhbHNlLCJvdGhlcl9rZXlzX2Nhbl9iZV9hZGRlZF9oZXJlIjoiZG8gbm90IGNvbXBhcmUgY2xpZW50RGF0YUpTT04gYWdhaW5zdCBhIHRlbXBsYXRlLiBTZWUgaHR0cHM6Ly9nb28uZ2wveWFiUGV4In0=', '$2y$10$81vjmBVFoTdCpKGGcCjUj.aDQYgIopLyTWHXCqOuTX7exMoqOjLYS', 'ella', 'santos', 'ellasantos@gmail.com', '09729378293', 'block 2 lot 5 katapatan homes cabuyao laguna', 36273, 66650, 'Active', '2024-11-15 08:20:36', '', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_actionlogs`
--
ALTER TABLE `tbl_actionlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_adjustments`
--
ALTER TABLE `tbl_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coordinators`
--
ALTER TABLE `tbl_coordinators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_programs`
--
ALTER TABLE `tbl_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reference`
--
ALTER TABLE `tbl_reference`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_timelogs`
--
ALTER TABLE `tbl_timelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_actionlogs`
--
ALTER TABLE `tbl_actionlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `tbl_adjustments`
--
ALTER TABLE `tbl_adjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_companies`
--
ALTER TABLE `tbl_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tbl_coordinators`
--
ALTER TABLE `tbl_coordinators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_programs`
--
ALTER TABLE `tbl_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_timelogs`
--
ALTER TABLE `tbl_timelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
