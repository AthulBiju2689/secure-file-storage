-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 07:25 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `securefile`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add doctor', 7, 'add_doctor'),
(26, 'Can change doctor', 7, 'change_doctor'),
(27, 'Can delete doctor', 7, 'delete_doctor'),
(28, 'Can view doctor', 7, 'view_doctor'),
(29, 'Can add patient', 8, 'add_patient'),
(30, 'Can change patient', 8, 'change_patient'),
(31, 'Can delete patient', 8, 'delete_patient'),
(32, 'Can view patient', 8, 'view_patient'),
(33, 'Can add patient record', 9, 'add_patientrecord'),
(34, 'Can change patient record', 9, 'change_patientrecord'),
(35, 'Can delete patient record', 9, 'delete_patientrecord'),
(36, 'Can view patient record', 9, 'view_patientrecord'),
(37, 'Can add appoint', 10, 'add_appoint'),
(38, 'Can change appoint', 10, 'change_appoint'),
(39, 'Can delete appoint', 10, 'delete_appoint'),
(40, 'Can view appoint', 10, 'view_appoint'),
(41, 'Can add slot', 11, 'add_slot'),
(42, 'Can change slot', 11, 'change_slot'),
(43, 'Can delete slot', 11, 'delete_slot'),
(44, 'Can view slot', 11, 'view_slot'),
(45, 'Can add staff', 12, 'add_staff'),
(46, 'Can change staff', 12, 'change_staff'),
(47, 'Can delete staff', 12, 'delete_staff'),
(48, 'Can view staff', 12, 'view_staff');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `basic_appoint`
--

CREATE TABLE IF NOT EXISTS `basic_appoint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `symptom` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `pname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `basic_appoint`
--

INSERT INTO `basic_appoint` (`id`, `dname`, `time`, `symptom`, `date`, `pname`) VALUES
(1, 'vignesh', '10', 'fever', '2023-10-28', 'jerry'),
(2, 'vignesh', '4pm', 'cough', '2023-11-22', 'jerin');

-- --------------------------------------------------------

--
-- Table structure for table `basic_doctor`
--

CREATE TABLE IF NOT EXISTS `basic_doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(130) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(230) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `department` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `basic_doctor`
--

INSERT INTO `basic_doctor` (`id`, `name`, `email`, `username`, `password`, `address`, `phone`, `department`, `gender`) VALUES
(1, 'jeirn', 'j@gmail.com', 'jerin', '123', 'rtghyjnhbgfvc', '9242266262', 'Ophthalmologist', 'Male'),
(2, 'vignesh', 'v@gmail.com', 'vignesh', '1234', 'ekm', '9654273492', 'Psychiatrist', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `basic_patient`
--

CREATE TABLE IF NOT EXISTS `basic_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(130) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `basic_patient`l`, `username`, `password`, `gender`, `age`, `key`, `phone`) VALUES
(5, 'davood', 'd@gmail.com', 'babu', '123', 'Male', '32', '6375', '9675277457'),
(9, 'jerin', 'jerimes707@gmail.com', 'jerry', '1234', 'Male', '25', '2148', '9654673492'),
(10, 'jerin', 'jerinjames707@gmail.com', 'jerin', '1234', 'Male', '25', '3239', '9654273492');

-- --------------------------------------------------------

--
-- Table structure for table `basic_patientrecord`
--

CREATE TABLE IF NOT EXISTS `basic_patientrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(200) NOT NULL,
--

INSERT INTO `basic_patient` (`id`, `name`, `emai
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basic_patientrecord_doctor_id_04dacedd_fk_basic_doctor_id` (`doctor_id`),
  KEY `basic_patientrecord_patient_id_087dcf81_fk_basic_patient_id` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `basic_slot`
--

CREATE TABLE IF NOT EXISTS `basic_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) NOT NULL,
  `starttime` varchar(200) NOT NULL,
  `endtime` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `basic_slot`
--

INSERT INTO `basic_slot` (`id`, `dname`, `starttime`, `endtime`, `date`) VALUES
(1, 'vignesh', '10:00', '2:00', '2023-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `basic_staff`
--

CREATE TABLE IF NOT EXISTS `basic_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(130) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'basic', 'appoint'),
(7, 'basic', 'doctor'),
(8, 'basic', 'patient'),
(9, 'basic', 'patientrecord'),
(11, 'basic', 'slot'),
(12, 'basic', 'staff'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-24 04:15:25.536346'),
(2, 'auth', '0001_initial', '2023-03-24 04:15:27.764107'),
(3, 'admin', '0001_initial', '2023-03-24 04:15:27.968952'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-24 04:15:27.977954'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-24 04:15:27.987952'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-24 04:15:28.058240'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-24 04:15:28.094022'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-24 04:15:28.130741'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-24 04:15:28.139848'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-24 04:15:28.186688'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-24 04:15:28.189686'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-24 04:15:28.198688'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-24 04:15:28.235630'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-24 04:15:28.265072'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-24 04:15:28.305645'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-24 04:15:28.313646'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-24 04:15:28.347396'),
(18, 'basic', '0001_initial', '2023-03-24 04:15:28.514745'),
(19, 'basic', '0002_appoint_slot', '2023-03-24 04:15:28.598177'),
(20, 'sessions', '0001_initial', '2023-03-24 04:15:28.744999'),
(21, 'basic', '0003_staff', '2023-03-24 04:38:14.006310');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0xj16fav4654nuaifh01amfncfxa2hhi', 'eyJkbmFtZSI6ImplcmluIiwidXNlciI6ImRvY3RvciJ9:1q3V1R:k724HDeFfb5YB8icXXQPeTrVbhAm3NNisR11Wt9Onmk', '2023-06-12 05:02:21.247932'),
('xr5l1erfkwdps1of3ecjdjosc9ofpe68', 'eyJ1c2VybmFtZSI6ImRhdm9vZCIsInVzZXIiOiJwYXRpZW50In0:1q78lj:YN2IwGs6AOh8TY3AzR9A4M82_PG9sQHSmtg8xq55PNU', '2023-06-22 06:05:11.609079'),
('yilmx4xwh177wqy8sprv0fj1ki0cj2ss', 'eyJkbmFtZSI6ImplcmluIiwidXNlciI6ImRvY3RvciJ9:1pfZlW:gipNJ2RbX9F7eZByfP2HysRIcqBjkyZIiQe-XGj8i_o', '2023-04-07 05:15:02.510087'),
('yq0yb4pc3qtin2cx9ar1z5zdqzgnprs0', 'eyJkbmFtZSI6InZpZ25lc2giLCJ1c2VyIjoiZG9jdG9yIn0:1r2NcJ:tey0KVbzl3qnn3YmPMVG-NNxANB4gtXg69c0fAHBir8', '2023-11-27 03:28:03.315098');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `basic_patientrecord`
--
ALTER TABLE `basic_patientrecord`
  ADD CONSTRAINT `basic_patientrecord_doctor_id_04dacedd_fk_basic_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `basic_doctor` (`id`),
  ADD CONSTRAINT `basic_patientrecord_patient_id_087dcf81_fk_basic_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `basic_patient` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
