-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 02:00 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_manual`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_job`
--

CREATE TABLE `applied_job` (
  `apply_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `job_seeker_id` int(11) DEFAULT NULL,
  `apply_date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applied_job`
--

INSERT INTO `applied_job` (`apply_id`, `post_id`, `job_seeker_id`, `apply_date_time`) VALUES
(3, 1, 2, '2022-01-10 17:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `post_id` int(11) NOT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `state_region` varchar(255) DEFAULT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `post_date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`post_id`, `recruiter_id`, `company_name`, `title`, `tag`, `state_region`, `job_position`, `job_type`, `category`, `post_date_time`, `content`) VALUES
(1, 1, 'Brain Station', 'Jr. Frontend developer', 'Backend', 'Dhaka', 'Junior developer', 'Regular', 'Development', '2021-12-28 00:53:47', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n'),
(2, 1, 'Brain Station', 'Sr Frontend Developer', 'Frontend', 'Callifornia', 'Senior Developer', 'Remote', 'Development', '2021-12-28 07:40:52', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n'),
(3, 2, 'IBM', 'Experienced UX/UI Designer', 'UI/UX Design', 'Melbourn', 'Senior Desiner', 'Regular', 'Design', '2021-12-28 07:43:22', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n'),
(4, 2, 'IBM', 'Experienced UX/UI Designer', 'UI/UX Design', 'Melbourn', 'Senior Desiner', 'Regular', 'Administrator', '2022-01-23 19:31:45', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n'),
(5, 2, 'IBM', 'Experienced UX/UI Designer', 'UI/UX Design', 'Melbourn', 'Senior Desiner', 'Regular', 'Programmer', '2021-12-28 01:43:22', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n'),
(6, 2, 'IBM', 'Experienced UX/UI Designer', 'UI/UX Design', 'Melbourn', 'Senior Desiner', 'Regular', 'Engineering', '2021-12-28 01:43:22', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n'),
(7, 2, 'IBM', 'Experienced UX/UI Designer', 'UI/UX Design', 'Melbourn', 'Senior Desiner', 'Regular', 'Data Science', '2021-12-28 01:43:22', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n'),
(8, 2, 'IBM', 'Experienced UX/UI Designer', 'UI/UX Design', 'Melbourn', 'Senior Desiner', 'Regular', 'Security', '2021-12-28 01:43:22', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n'),
(9, 2, 'IBM', 'Experienced UX/UI Designer', 'UI/UX Design', 'Melbourn', 'Senior Desiner', 'Regular', 'System Analyst', '2021-12-28 01:43:22', '<div class=\"Responsibilities\">\r\n<h2>Responsibilities</h2>\r\n\r\n<ul>\r\n	<li>Provide high quality and creative design for our agency</li>\r\n	<li>Attend virtual meeting for designed work explanation and receive requirements.</li>\r\n	<li>Work under pressure &amp; deal with lot of works.</li>\r\n	<li>Communicate with other team members to provide guide line to use your design.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"qualification\">\r\n<h2>Qualifications</h2>\r\n\r\n<ul>\r\n	<li>Design Website &amp; App UI &amp; Prototype.</li>\r\n	<li>Design Website wireframe.</li>\r\n	<li>Design Website Brand Guilds.</li>\r\n	<li>Design Logo and business cards.</li>\r\n	<li>Make prototype of website &amp; app from design</li>\r\n	<li>1+ years&#39; of experience using Figma/XD/InVision/Sketch/Illustrator (Any one of them)</li>\r\n	<li>Implementing UI/UX design (HTML, CSS, JS)</li>\r\n	<li>Maintain and updates design for corporate website, product branding and marketing material</li>\r\n	<li>Collaborate with clients in determining and documenting their UI requirements.</li>\r\n	<li>Ability to multi-task, organize, and prioritize work</li>\r\n	<li>Clear concepts of creative designs, graphics and artworks.</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"experience\">\r\n<h2>Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>At most 1 year(s)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"requirement\">\r\n<h2>Tools Experience Requirements:</h2>\r\n\r\n<ul>\r\n	<li>Any one of them Figma/XD/InVision/Sketch/Illustrator</li>\r\n	<li>Adobe Photoshop</li>\r\n	<li>Adobe Illustrator</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"communication\">\r\n<h2>Communication::</h2>\r\n\r\n<ul>\r\n	<li>Slack &amp; E-mail</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"salry\">\r\n<h2>Salary:</h2>\r\n\r\n<ul>\r\n	<li>Monthly: 50,000 - 60,000 BDT</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"working_schedule\">\r\n<h2>Working Hours &amp; Days:</h2>\r\n\r\n<ul>\r\n	<li>8 Hours daily (11:00 AM - 7:00 PM)</li>\r\n	<li>Saturday - Thursday</li>\r\n	<li>Overtime available (on your interest)</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"employee_type\">\r\n<h2>Employment Type</h2>\r\n\r\n<ul>\r\n	<li>Full-time</li>\r\n</ul>\r\n</div>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `job_recruiter`
--

CREATE TABLE `job_recruiter` (
  `recruiter_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contact` varchar(13) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_recruiter`
--

INSERT INTO `job_recruiter` (`recruiter_id`, `first_name`, `last_name`, `user_name`, `gender`, `address`, `contact`, `email`, `company_name`, `pass`, `status`) VALUES
(1, 'Md', 'Shuvo', 'mobin', 'male', 'Uttar Badda', '01759425952', 'abdulmobin417@gmail.com', 'Brain Station', '123', 'approved'),
(2, 'hasan', 'rifat', 'hasanrifat', 'male', 'Satarkul', '01712345678', 'rifat@gmail.com', 'IBM', '123', 'approved'),
(3, 'Dipto', 'Pal', 'dipto', 'male', 'Badda', '01798765432', 'dipto@gmail.com', 'TigerIT Bangladesh LTD.', '123', 'pending'),
(4, 'Najmul', 'Hasan', 'najmul', 'male', 'Mirpur 10', '01798720783', 'najmul@gmail.com', 'BJIT', '123', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `job_seeker_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `contact` varchar(13) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`job_seeker_id`, `first_name`, `last_name`, `user_name`, `gender`, `address`, `contact`, `email`, `postal_code`, `pass`, `status`) VALUES
(2, 'Sahadat', 'Hossain', 'sahadat', 'male', 'Mohakhali', '01865479342', 'sahadat@gmail.com', '1209', '123', 'approved'),
(6, 'Abdul', 'Mobin', 'mobin', 'male', 'Uttar Badda', '', 'abdulmobin417@gmail.com', '1211', '123', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_review_box`
--

CREATE TABLE `recruiter_review_box` (
  `recruiter_review_id` int(11) NOT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `review_message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruiter_review_box`
--

INSERT INTO `recruiter_review_box` (`recruiter_review_id`, `recruiter_id`, `email`, `contact`, `review_message`) VALUES
(1, 1, 'abdulmobin417@gmail.com', 1759425952, 'I am a recruiter');

-- --------------------------------------------------------

--
-- Table structure for table `seeker_complain`
--

CREATE TABLE `seeker_complain` (
  `complain_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `complain_details` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seeker_complain`
--

INSERT INTO `seeker_complain` (`complain_id`, `seeker_id`, `user_name`, `email`, `contact`, `complain_details`) VALUES
(2, 6, 'mobin', 'abdulmobin417@gmail.com', NULL, 'I have a big problem');

-- --------------------------------------------------------

--
-- Table structure for table `seeker_review_box`
--

CREATE TABLE `seeker_review_box` (
  `seeker_review_id` int(11) NOT NULL,
  `job_seeker_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `review_message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `skill_test_registration`
--

CREATE TABLE `skill_test_registration` (
  `seeker_id` int(11) NOT NULL,
  `test_name` varchar(500) NOT NULL,
  `test_date` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill_test_registration`
--

INSERT INTO `skill_test_registration` (`seeker_id`, `test_name`, `test_date`) VALUES
(2, 'Administration', 'Jan 30, 2022 10:01:00'),
(6, 'Administration', 'Jan 30, 2022 10:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

CREATE TABLE `test_result` (
  `seeker_id` int(11) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `result` text DEFAULT NULL,
  `feedback` longtext DEFAULT NULL,
  `suggetion` longtext DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `seeker_answer` longtext DEFAULT NULL,
  `seeker_question` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_result`
--

INSERT INTO `test_result` (`seeker_id`, `test_name`, `result`, `feedback`, `suggetion`, `marks`, `seeker_answer`, `seeker_question`) VALUES
(2, 'Administration', 'Pending', NULL, NULL, 0, 'Wrong011191206Wrong011191206Wrong011191206Wrong011191206Wrong011191206Wrong011191206Wrong011191206011191206011191206', NULL),
(6, 'Administration', 'Pending', NULL, NULL, 3, 'Correct011191206Correct011191206Correct011191206Wrong011191206Wrong011191206Wrong011191206Wrong011191206011191206011191206', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_job`
--
ALTER TABLE `applied_job`
  ADD PRIMARY KEY (`apply_id`),
  ADD KEY `job_seeker_id` (`job_seeker_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `recruiter_id` (`recruiter_id`);

--
-- Indexes for table `job_recruiter`
--
ALTER TABLE `job_recruiter`
  ADD PRIMARY KEY (`recruiter_id`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`job_seeker_id`);

--
-- Indexes for table `recruiter_review_box`
--
ALTER TABLE `recruiter_review_box`
  ADD PRIMARY KEY (`recruiter_review_id`),
  ADD KEY `recruiter_id` (`recruiter_id`);

--
-- Indexes for table `seeker_complain`
--
ALTER TABLE `seeker_complain`
  ADD PRIMARY KEY (`complain_id`,`seeker_id`),
  ADD KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `seeker_review_box`
--
ALTER TABLE `seeker_review_box`
  ADD PRIMARY KEY (`seeker_review_id`),
  ADD KEY `job_seeker_id` (`job_seeker_id`);

--
-- Indexes for table `skill_test_registration`
--
ALTER TABLE `skill_test_registration`
  ADD PRIMARY KEY (`seeker_id`,`test_name`),
  ADD UNIQUE KEY `seeker_id` (`seeker_id`);

--
-- Indexes for table `test_result`
--
ALTER TABLE `test_result`
  ADD PRIMARY KEY (`seeker_id`,`test_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_job`
--
ALTER TABLE `applied_job`
  MODIFY `apply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_recruiter`
--
ALTER TABLE `job_recruiter`
  MODIFY `recruiter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_seeker`
--
ALTER TABLE `job_seeker`
  MODIFY `job_seeker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recruiter_review_box`
--
ALTER TABLE `recruiter_review_box`
  MODIFY `recruiter_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seeker_complain`
--
ALTER TABLE `seeker_complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seeker_review_box`
--
ALTER TABLE `seeker_review_box`
  MODIFY `seeker_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_job`
--
ALTER TABLE `applied_job`
  ADD CONSTRAINT `applied_job_ibfk_1` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applied_job_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `job_post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_post`
--
ALTER TABLE `job_post`
  ADD CONSTRAINT `job_post_ibfk_1` FOREIGN KEY (`recruiter_id`) REFERENCES `job_recruiter` (`recruiter_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recruiter_review_box`
--
ALTER TABLE `recruiter_review_box`
  ADD CONSTRAINT `recruiter_review_box_ibfk_1` FOREIGN KEY (`recruiter_id`) REFERENCES `job_recruiter` (`recruiter_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seeker_complain`
--
ALTER TABLE `seeker_complain`
  ADD CONSTRAINT `seeker_complain_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seeker_review_box`
--
ALTER TABLE `seeker_review_box`
  ADD CONSTRAINT `seeker_review_box_ibfk_1` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skill_test_registration`
--
ALTER TABLE `skill_test_registration`
  ADD CONSTRAINT `skill_test_registration_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test_result`
--
ALTER TABLE `test_result`
  ADD CONSTRAINT `test_result_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `job_seeker` (`job_seeker_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
