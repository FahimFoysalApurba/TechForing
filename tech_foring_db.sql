-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2024 at 03:05 PM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_foring_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add project', 7, 'add_project'),
(26, 'Can change project', 7, 'change_project'),
(27, 'Can delete project', 7, 'delete_project'),
(28, 'Can view project', 7, 'view_project'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add task', 9, 'add_task'),
(34, 'Can change task', 9, 'change_task'),
(35, 'Can delete task', 9, 'delete_task'),
(36, 'Can view task', 9, 'view_task'),
(37, 'Can add project member', 10, 'add_projectmember'),
(38, 'Can change project member', 10, 'change_projectmember'),
(39, 'Can delete project member', 10, 'delete_projectmember'),
(40, 'Can view project member', 10, 'view_projectmember'),
(41, 'Can add comment', 11, 'add_comment'),
(42, 'Can change comment', 11, 'change_comment'),
(43, 'Can delete comment', 11, 'delete_comment'),
(44, 'Can view comment', 11, 'view_comment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$oKDqPPm0GhyNWm9MY4RxMu$kMGWU/emiH5Z8kzyVOU+JlrngIHS+/GtsHYHgWRSJTM=', '2024-11-12 12:27:11.830331', 1, 'FahimFoysalApurba', '', '', 'fahim.foysal.apurba@gmail.com', 1, 1, '2024-11-12 12:02:20.250540'),
(2, 'pbkdf2_sha256$870000$6OvYBFklUEYu1dexpln5Nh$hVX8MH50o/W1Iz/kd2P6pYDuXYDKeCVclRuVTQE8+WA=', NULL, 0, 'john_doe', 'John', 'Doe', 'john@example.com', 0, 1, '2024-11-12 13:24:14.383377');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(11, 'TechFor_api', 'comment'),
(7, 'TechFor_api', 'project'),
(10, 'TechFor_api', 'projectmember'),
(9, 'TechFor_api', 'task'),
(8, 'TechFor_api', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-11-12 11:59:47.014425'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-11-12 11:59:47.056140'),
(3, 'auth', '0001_initial', '2024-11-12 11:59:47.386178'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-11-12 11:59:47.415901'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-11-12 11:59:47.435129'),
(6, 'auth', '0004_alter_user_username_opts', '2024-11-12 11:59:47.441078'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-11-12 11:59:47.472214'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-11-12 11:59:47.474208'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-11-12 11:59:47.481188'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-11-12 11:59:47.499963'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-11-12 11:59:47.520791'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-11-12 11:59:47.542026'),
(13, 'auth', '0011_update_proxy_permissions', '2024-11-12 11:59:47.548943'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-11-12 11:59:47.568889'),
(15, 'TechFor_api', '0001_initial', '2024-11-12 11:59:48.036798'),
(16, 'admin', '0001_initial', '2024-11-12 11:59:48.102968'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-11-12 11:59:48.108631'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-12 11:59:48.114089'),
(19, 'sessions', '0001_initial', '2024-11-12 11:59:48.141681');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `techfor_api_comment`
--

CREATE TABLE `techfor_api_comment` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `techfor_api_project`
--

CREATE TABLE `techfor_api_project` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `owner_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `techfor_api_projectmember`
--

CREATE TABLE `techfor_api_projectmember` (
  `id` bigint(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `techfor_api_task`
--

CREATE TABLE `techfor_api_task` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `due_date` datetime(6) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `assigned_to_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `techfor_api_user`
--

CREATE TABLE `techfor_api_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `techfor_api_user`
--

INSERT INTO `techfor_api_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `email`, `date_joined`) VALUES
(1, '', NULL, 0, 'john_doe', 'John', 'Doe', 0, 1, 'john@example.com', '2024-11-12 13:11:45.446297');

-- --------------------------------------------------------

--
-- Table structure for table `techfor_api_user_groups`
--

CREATE TABLE `techfor_api_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `techfor_api_user_user_permissions`
--

CREATE TABLE `techfor_api_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `techfor_api_comment`
--
ALTER TABLE `techfor_api_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TechFor_api_comment_task_id_723f5bcf_fk_TechFor_api_task_id` (`task_id`),
  ADD KEY `TechFor_api_comment_user_id_91c15268_fk_TechFor_api_user_id` (`user_id`);

--
-- Indexes for table `techfor_api_project`
--
ALTER TABLE `techfor_api_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TechFor_api_project_owner_id_037048f9_fk_TechFor_api_user_id` (`owner_id`);

--
-- Indexes for table `techfor_api_projectmember`
--
ALTER TABLE `techfor_api_projectmember`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TechFor_api_projectm_project_id_53ffc51c_fk_TechFor_a` (`project_id`),
  ADD KEY `TechFor_api_projectm_user_id_f8e9f496_fk_TechFor_a` (`user_id`);

--
-- Indexes for table `techfor_api_task`
--
ALTER TABLE `techfor_api_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TechFor_api_task_project_id_8580fa90_fk_TechFor_api_project_id` (`project_id`),
  ADD KEY `TechFor_api_task_assigned_to_id_67a7a9b4_fk_TechFor_api_user_id` (`assigned_to_id`);

--
-- Indexes for table `techfor_api_user`
--
ALTER TABLE `techfor_api_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `techfor_api_user_groups`
--
ALTER TABLE `techfor_api_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TechFor_api_user_groups_user_id_group_id_61507f13_uniq` (`user_id`,`group_id`),
  ADD KEY `TechFor_api_user_groups_group_id_1f27e248_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `techfor_api_user_user_permissions`
--
ALTER TABLE `techfor_api_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TechFor_api_user_user_pe_user_id_permission_id_38d4d2a9_uniq` (`user_id`,`permission_id`),
  ADD KEY `TechFor_api_user_use_permission_id_c2165097_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `techfor_api_comment`
--
ALTER TABLE `techfor_api_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `techfor_api_project`
--
ALTER TABLE `techfor_api_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `techfor_api_projectmember`
--
ALTER TABLE `techfor_api_projectmember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `techfor_api_task`
--
ALTER TABLE `techfor_api_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `techfor_api_user`
--
ALTER TABLE `techfor_api_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `techfor_api_user_groups`
--
ALTER TABLE `techfor_api_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `techfor_api_user_user_permissions`
--
ALTER TABLE `techfor_api_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `techfor_api_comment`
--
ALTER TABLE `techfor_api_comment`
  ADD CONSTRAINT `TechFor_api_comment_task_id_723f5bcf_fk_TechFor_api_task_id` FOREIGN KEY (`task_id`) REFERENCES `techfor_api_task` (`id`),
  ADD CONSTRAINT `TechFor_api_comment_user_id_91c15268_fk_TechFor_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `techfor_api_user` (`id`);

--
-- Constraints for table `techfor_api_project`
--
ALTER TABLE `techfor_api_project`
  ADD CONSTRAINT `TechFor_api_project_owner_id_037048f9_fk_TechFor_api_user_id` FOREIGN KEY (`owner_id`) REFERENCES `techfor_api_user` (`id`);

--
-- Constraints for table `techfor_api_projectmember`
--
ALTER TABLE `techfor_api_projectmember`
  ADD CONSTRAINT `TechFor_api_projectm_project_id_53ffc51c_fk_TechFor_a` FOREIGN KEY (`project_id`) REFERENCES `techfor_api_project` (`id`),
  ADD CONSTRAINT `TechFor_api_projectm_user_id_f8e9f496_fk_TechFor_a` FOREIGN KEY (`user_id`) REFERENCES `techfor_api_user` (`id`);

--
-- Constraints for table `techfor_api_task`
--
ALTER TABLE `techfor_api_task`
  ADD CONSTRAINT `TechFor_api_task_assigned_to_id_67a7a9b4_fk_TechFor_api_user_id` FOREIGN KEY (`assigned_to_id`) REFERENCES `techfor_api_user` (`id`),
  ADD CONSTRAINT `TechFor_api_task_project_id_8580fa90_fk_TechFor_api_project_id` FOREIGN KEY (`project_id`) REFERENCES `techfor_api_project` (`id`);

--
-- Constraints for table `techfor_api_user_groups`
--
ALTER TABLE `techfor_api_user_groups`
  ADD CONSTRAINT `TechFor_api_user_groups_group_id_1f27e248_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `TechFor_api_user_groups_user_id_7cf578d7_fk_TechFor_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `techfor_api_user` (`id`);

--
-- Constraints for table `techfor_api_user_user_permissions`
--
ALTER TABLE `techfor_api_user_user_permissions`
  ADD CONSTRAINT `TechFor_api_user_use_permission_id_c2165097_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `TechFor_api_user_use_user_id_9112d102_fk_TechFor_a` FOREIGN KEY (`user_id`) REFERENCES `techfor_api_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
