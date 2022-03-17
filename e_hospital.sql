-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 07:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$oT0Pq/VzJ80OHfOHXUzMMOBthWOHq58UNMM050vXZZwGxSCjloZhG', 'F3HNVfqEKD7iWWQT4Ejen8zC8FISmka39kmhuqmLiu5OGj3ARERq5Aa8Appb', '2021-04-09 18:57:03', '2021-04-09 18:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `patient_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_blood` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `patient_name`, `patient_age`, `patient_gender`, `patient_blood`, `doctor_id`, `doctor_name`, `doctor_designation`, `doctor_gender`, `department_name`, `fee`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Reajul Islam', '23', 'Male', 'A-', 1, 'Hridoy', 'Assistant Professor', 'Male', 'Cardiology', 500, 'Approved', '2021-04-10 17:38:20', '2021-04-10 20:56:13'),
(2, 2, 'Reajul Islam', '23', 'Male', 'A-', 1, 'Hridoy', 'Assistant Professor', 'Male', 'Cardiology', 500, 'Approved', '2021-04-10 17:41:09', '2021-04-10 20:56:15'),
(3, 2, 'Reajul Islam', '23', 'Male', 'A-', 1, 'Hridoy', 'Assistant Professor', 'Male', 'Cardiology', 500, 'Approved', '2021-04-10 17:41:18', '2021-04-10 20:56:16'),
(4, 2, 'Reajul Islam', '23', 'Male', 'A-', 1, 'Hridoy', 'Assistant Professor', 'Male', 'Cardiology', 500, 'Approved', '2021-04-10 17:43:18', '2021-04-10 20:56:17'),
(5, 2, 'Reajul Islam', '23', 'Male', 'A-', 2, 'Robin Mojumder', 'Assistant Professor', 'Male', 'Cardiology', 500, 'Ready', '2021-04-10 17:43:50', '2021-04-10 20:57:08'),
(6, 1, 'Robin', '22', 'Male', 'O+', 2, 'Robin Mojumder', 'Assistant Professor', 'Male', 'Cardiology', 500, 'Ready', '2021-04-10 20:53:22', '2021-04-10 20:57:10'),
(7, 3, 'Asfak Hossain Raju', '23', 'Male', 'A+', 3, 'Dr.Solimullah Rahman', 'Professor', 'Male', 'Cancer', 500, 'Ready', '2021-04-11 04:38:48', '2021-04-11 04:41:27'),
(8, 1, 'Robin', '22', 'Male', 'O+', 6, 'Dr.Mohsina Khan', 'Associate Professor', 'Female', 'Child/pediatric', 500, 'Approved', '2021-04-18 07:23:47', '2021-04-18 07:25:42'),
(9, 3, 'Asfak Hossain Raju', '23', 'Male', 'A+', 5, 'Dr.Ashikur Rahman', 'Medical Officer', 'Male', 'Medicine', 500, 'Requested,Pending Approval', '2021-04-18 09:03:25', '2021-04-18 09:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `appointment_id`, `sender`, `receiver`, `message`, `created_at`, `updated_at`) VALUES
(1, 5, 'Dr. Robin Mojumder', 'Reajul Islam', 'check up your health in every Thursday', '2021-04-10 20:58:04', '2021-04-10 20:58:04'),
(2, 6, 'Dr. Robin Mojumder', 'Robin', 'take medicine in time', '2021-04-10 20:58:50', '2021-04-10 20:58:50'),
(3, 6, 'Robin', 'Dr. Robin Mojumder', 'i will doctor', '2021-04-10 20:59:43', '2021-04-10 20:59:43'),
(4, 6, 'Robin', 'Dr. Robin Mojumder', 'i will doctor', '2021-04-10 21:00:00', '2021-04-10 21:00:00'),
(5, 7, 'Dr. Dr.Solimullah Rahman', 'Asfak Hossain Raju', 'Rest as much you can. Stay at home & take the medicines', '2021-04-11 04:42:24', '2021-04-11 04:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cardiology', '2021-04-09 19:45:26', '2021-04-09 19:45:26'),
(2, 'Cancer', '2021-04-11 04:20:10', '2021-04-11 04:20:10'),
(3, 'Emergency', '2021-04-11 04:20:27', '2021-04-11 04:20:27'),
(4, 'Gynochology', '2021-04-11 04:21:06', '2021-04-11 04:21:06'),
(5, 'Medicine', '2021-04-11 04:21:26', '2021-04-11 04:21:26'),
(6, 'Orthooedies', '2021-04-11 04:21:57', '2021-04-11 04:21:57'),
(7, 'Neurology', '2021-04-11 04:22:51', '2021-04-11 04:22:51'),
(8, 'Dermatology', '2021-04-11 04:23:41', '2021-04-11 04:23:41'),
(9, 'Urology', '2021-04-11 04:24:02', '2021-04-11 04:24:02'),
(10, 'Child/pediatric', '2021-04-11 04:25:02', '2021-04-11 04:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_no` int(11) NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `password`, `phone`, `reg_no`, `designation`, `department`, `gender`, `degree`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hridoy', 'hridoy@gmail.com', '$2y$10$FuVPD99ChHcxy7RHJNc2QeghAXGE6XMylp/7WIlPRgHn2LvcTy.PO', '01758963431', 778963, 'Assistant Professor', 'Cardiology', 'Male', 'Fpbs', NULL, '2021-04-09 19:50:50', '2021-04-09 19:50:50'),
(2, 'Robin Mojumder', 'robinmxr@gmail.com', '$2y$10$7LNJa9vBxXMVJ5fD6Yo7V.VXQWz44GZ4WINNi.EOiRbfnHg9QuXRG', '01679136555', 37489, 'Assistant Professor', 'Cardiology', 'Male', 'MBBS,FCPS', 'scTCoKmMUEDu5ykUmgVzIMXkfOkzza5KLU5Qjm3a03XJfnML5SpDkmVybnge', '2021-04-10 17:07:02', '2021-04-10 17:07:02'),
(3, 'Dr.Solimullah Rahman', 'dr.solimullah@gmail.com', '$2y$10$IcOHIoZrrKVgJt4bf3LzQO/vkhqbJH4Z/ivDc93fHl/tF4z3ZuAj2', '01478965321', 1486, 'Professor', 'Cancer', 'Male', 'MBBS,', NULL, '2021-04-11 04:28:41', '2021-04-11 04:28:41'),
(4, 'Dr.Rasha Rahman', 'dr.rasha@gmail.com', '$2y$10$ervYavCYwf2OkaHKtUezmOfGmf0B0Yl0JCGS0zQreTPiaZRhgCHf2', '01456328974', 7856, 'Associate Professor', 'Gynochology', 'Female', 'MBBS', NULL, '2021-04-11 04:30:17', '2021-04-11 04:30:17'),
(5, 'Dr.Ashikur Rahman', 'dr.akshikur@gmail.com', '$2y$10$3JDLDeCDIc1Poyw1BvCSeeX43CT6QERI1yWfvJgveZlxFlUwMUbD6', '01789635478', 4896, 'Medical Officer', 'Medicine', 'Male', 'FPES', NULL, '2021-04-11 04:32:46', '2021-04-11 04:32:46'),
(6, 'Dr.Mohsina Khan', 'dr.mohsina@gmail.com', '$2y$10$/Oxxps8xGrBrRFbnMdLcaOPF0NqOq1WrCNW6jW2Q.mFUN8RVPgpBm', '01987564231', 8564, 'Associate Professor', 'Child/pediatric', 'Female', 'MBBS', NULL, '2021-04-11 04:34:33', '2021-04-11 04:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosage` int(11) NOT NULL,
  `frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_09_16_131718_create_admins_table', 1),
(4, '2020_12_06_174012_create_patients_table', 1),
(5, '2020_12_08_102657_create_doctors_table', 1),
(6, '2020_12_10_170245_create_departments_table', 1),
(8, '2020_12_15_114558_create_conversations_table', 1),
(9, '2020_12_19_143421_create_medicines_table', 1),
(11, '2020_12_21_190737_create_orders_table', 2),
(17, '2021_04_10_002556_create_payments_table', 4),
(18, '2020_12_11_235425_create_appointments_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosage` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `email`, `password`, `phone`, `dob`, `age`, `blood`, `gender`, `address`, `google_id`, `linkedin_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Robin', 'robindj@gmail.com', '$2y$10$z/JrO/5BF.oj564.yWEjuOS7pEgLQOnn380FBwzYwADqPr0ableRW', '01489635481', '1998-04-25', '22', 'O+', 'Male', 'Mohakhali,Dhaka', NULL, NULL, NULL, '2021-04-09 19:54:13', '2021-04-09 19:54:13'),
(2, 'Reajul Islam', 'reajulbd786@gmail.com', '$2y$10$Ri9BCty/aVKJKtfVGtTc7OeJNeO/721mhytC9D22FzjRTz4sSTYyG', '01786554422', '1997-12-02', '23', 'A-', 'Male', 'Mohakhali Wireless Gate ,Block - Ga,House-183(Opposite of Govt.Titumir College)', NULL, NULL, NULL, '2021-04-10 17:37:38', '2021-04-10 17:37:38'),
(3, 'Asfak Hossain Raju', 'ashfaqraju27@gmail.com', '$2y$10$xN2WE.OQcwsc7ScxOn5ZDOYagB84eN..fmvqeEe/FqD.VMBrdxU9G', '01859834455', '1997-12-04', '23', 'A+', 'Male', '54,Sataish Moddhopara,Tongi,Gazipur', NULL, NULL, NULL, '2021-04-11 04:37:08', '2021-04-11 04:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `patient_id`, `appointment_id`, `amount`, `status`, `payment_time`) VALUES
(1, 2, 4, 500, 'Requested,Pending Approval', NULL),
(2, 2, 5, 500, 'Requested,Pending Approval', NULL),
(3, 1, 6, 500, 'Requested,Pending Approval', NULL),
(4, 3, 7, 500, 'Requested,Pending Approval', NULL),
(5, 1, 8, 500, 'Requested,Pending Approval', NULL),
(6, 3, 9, 500, 'Requested,Pending Approval', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `id` (`id`),
  ADD KEY `patient_name` (`patient_name`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`),
  ADD UNIQUE KEY `doctors_reg_no_unique` (`reg_no`),
  ADD UNIQUE KEY `doctors_phone_unique` (`phone`) USING HASH;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_email_unique` (`email`),
  ADD UNIQUE KEY `patients_phone_unique` (`phone`) USING HASH;

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
