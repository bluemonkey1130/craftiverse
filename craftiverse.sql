-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2020 at 09:04 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craftiverse`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 1, 1, 1, 'bulksplash-yoitsthejourney-L4erQCY9iuA.jpg', 'image', 2000, 1600, 517418, NULL, NULL, NULL, '2020-11-06 17:12:06', '2020-11-06 17:12:06', '2020-11-06 17:12:06', '428b9d82-d8c3-4b0b-ac1a-4ed98e327ce5'),
(46, 1, 1, 1, 'matthew-henry-nvFpb_MMRj8-unsplash-1.jpg', 'image', 1920, 1280, 526407, NULL, NULL, NULL, '2020-11-06 19:46:57', '2020-11-06 19:46:57', '2020-11-06 19:46:57', '3ea38e54-1313-4813-a70c-80117020fdc3'),
(104, 1, 1, 1, 'maarten-deckers-T5nXYXCf50I-unsplash.jpg', 'image', 1180, 787, 87258, NULL, NULL, NULL, '2020-11-07 10:23:45', '2020-11-07 10:23:45', '2020-11-07 10:23:45', 'a7c386ca-8bde-49da-8301-075fbb98b46c'),
(108, 1, 1, 1, 'pattern-photography-architecture.jpg', 'image', 700, 467, 212036, NULL, NULL, NULL, '2020-11-07 10:24:06', '2020-11-07 10:24:06', '2020-11-07 10:24:06', '744b447e-9fcf-4b90-90e3-27eff79c31d2'),
(112, 1, 1, 1, 'ROCK-AND-ROLL-530x640.jpeg', 'image', 530, 640, 47971, NULL, NULL, NULL, '2020-11-07 10:29:33', '2020-11-07 10:29:33', '2020-11-07 10:29:33', '1c6dffa8-6445-4b5a-8fef-f8fef88d4126'),
(138, 1, 1, 1, 'robert-bye-T0Pen8UyM5I-unsplash.jpg', 'image', 1920, 1280, 523471, NULL, NULL, NULL, '2020-11-07 14:00:36', '2020-11-07 14:00:36', '2020-11-07 14:00:36', '6347b334-cec9-4477-a7d8-9611dd1314b4'),
(140, 1, 1, 1, 'david-maunsell-yBJORQWb09s-unsplash.jpg', 'image', 1920, 1440, 655778, NULL, NULL, NULL, '2020-11-07 14:01:13', '2020-11-07 14:01:13', '2020-11-07 14:01:13', '0ea66c27-5341-4958-bfb4-f0b67ad4fa60'),
(142, 1, 1, 1, 'drohysmer-garcia-Nm4ErCkScOk-unsplash.jpg', 'image', 1920, 2880, 805586, NULL, NULL, NULL, '2020-11-07 14:01:29', '2020-11-07 14:01:29', '2020-11-07 14:01:29', 'b6ad2bf8-e6a7-4787-906f-f2e9ad788303'),
(145, 1, 1, 1, 'robert-bye-T0Pen8UyM5I-unsplash-1.jpg', 'image', 1920, 1280, 523471, NULL, NULL, NULL, '2020-11-07 14:05:27', '2020-11-07 14:05:28', '2020-11-07 14:05:28', '21b32680-5bad-4164-bcb2-3731787d378e'),
(151, 1, 1, 1, 'john-macdonald-I6v9QWWH93g-unsplash.jpg', 'image', 1920, 1920, 946431, NULL, NULL, NULL, '2020-11-07 14:07:01', '2020-11-07 14:07:01', '2020-11-07 14:07:01', '48790519-2cd3-42b9-9246-b1c63c263e99'),
(153, 1, 1, 1, 'john-macdonald-I6v9QWWH93g-unsplash_2020-11-07-140710.jpg', 'image', 1920, 1920, 946431, NULL, NULL, NULL, '2020-11-07 14:07:11', '2020-11-07 14:07:12', '2020-11-07 14:07:12', '298b9738-8efb-47a7-9238-4d8c8706b69f'),
(156, 1, 1, 1, 'drahomir-posteby-mach-Dj52KNpZ5Sc-unsplash.jpg', 'image', 1920, 2560, 604156, NULL, NULL, NULL, '2020-11-07 14:07:37', '2020-11-07 14:07:37', '2020-11-07 14:07:37', '49721273-77e5-45ca-bba0-9c71f86fa477'),
(173, 1, 1, 1, 'Screenshot-2020-11-07-at-15.18.58.png', 'image', 1032, 756, 1133563, NULL, NULL, NULL, '2020-11-07 15:19:53', '2020-11-07 15:19:53', '2020-11-07 15:19:53', '17e5e817-b58b-44d0-9ec8-0bc6b194761d'),
(254, 1, 1, 1, 'ezgif.com-gif-maker.gif', 'image', 600, 256, 72525, NULL, NULL, NULL, '2020-11-07 23:19:43', '2020-11-07 23:19:43', '2020-11-07 23:19:43', '36916d8e-29a7-4dd8-a2a4-bda1a21bf494');

-- --------------------------------------------------------

--
-- Table structure for table `assettransformindex`
--

CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assettransformindex`
--

INSERT INTO `assettransformindex` (`id`, `assetId`, `filename`, `format`, `location`, `volumeId`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 7, 'bulksplash-yoitsthejourney-L4erQCY9iuA.jpg', NULL, '_medium', 1, 1, 0, 0, '2020-11-06 17:15:38', '2020-11-06 17:15:38', '2020-11-06 17:15:38', 'a6cfeee3-ab3b-4491-9462-8f8c612da8b5'),
(2, 7, 'bulksplash-yoitsthejourney-L4erQCY9iuA.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-06 19:40:34', '2020-11-06 19:40:34', '2020-11-06 19:40:35', '59c318d1-4389-4b7c-bbf4-f0f250cc10b2'),
(3, 46, 'matthew-henry-nvFpb_MMRj8-unsplash-1.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-06 19:47:02', '2020-11-06 19:47:02', '2020-11-06 19:47:03', '9e8b9b7c-e8ee-4166-8159-46a4f635ca6b'),
(4, 108, 'pattern-photography-architecture.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 10:30:45', '2020-11-07 10:30:45', '2020-11-07 10:30:46', 'c2537664-a366-4ef8-8f68-efe14ee7919d'),
(5, 112, 'ROCK-AND-ROLL-530x640.jpeg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 10:30:45', '2020-11-07 10:30:45', '2020-11-07 10:30:45', '6bf8e072-57b1-4263-bcf7-328ad103c432'),
(6, 104, 'maarten-deckers-T5nXYXCf50I-unsplash.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 10:30:45', '2020-11-07 10:30:45', '2020-11-07 10:30:46', '3e95a88a-9671-4b8f-8c5f-ae75a56dfd9f'),
(7, 138, 'robert-bye-T0Pen8UyM5I-unsplash.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 14:01:32', '2020-11-07 14:01:32', '2020-11-07 14:01:35', '7d5c1c8b-84e6-48c5-b3a5-01eccd0c8f27'),
(8, 140, 'david-maunsell-yBJORQWb09s-unsplash.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 14:01:32', '2020-11-07 14:01:32', '2020-11-07 14:01:33', '86de9a0e-76dd-4ca8-84a4-d3f1bb0c82b2'),
(9, 142, 'drohysmer-garcia-Nm4ErCkScOk-unsplash.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 14:01:32', '2020-11-07 14:01:32', '2020-11-07 14:01:34', 'f15c75db-da8b-4f61-bfdf-f0de0d2a9535'),
(10, 156, 'drahomir-posteby-mach-Dj52KNpZ5Sc-unsplash.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 14:09:09', '2020-11-07 14:09:09', '2020-11-07 14:09:10', '359492db-8907-4104-8662-d4b3aa3733d0'),
(11, 153, 'john-macdonald-I6v9QWWH93g-unsplash_2020-11-07-140710.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 14:09:09', '2020-11-07 14:09:09', '2020-11-07 14:09:10', '36467006-b6fe-4e5d-b421-f1a2d59abe5e'),
(12, 145, 'robert-bye-T0Pen8UyM5I-unsplash-1.jpg', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 14:09:09', '2020-11-07 14:09:09', '2020-11-07 14:09:11', 'ae3c8b20-fcfa-409a-9238-3887f8c9bcee'),
(13, 46, 'matthew-henry-nvFpb_MMRj8-unsplash-1.jpg', NULL, '_large', 1, 1, 0, 0, '2020-11-07 15:23:16', '2020-11-07 15:23:16', '2020-11-07 15:23:18', '92bd6ea3-33b8-4168-87fd-4d848bc84a4f'),
(14, 173, 'Screenshot-2020-11-07-at-15.18.58.png', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 15:46:35', '2020-11-07 15:46:35', '2020-11-07 15:46:36', '40f7c8ba-dea6-46d4-98a7-cc56502e5d96'),
(15, 104, 'maarten-deckers-T5nXYXCf50I-unsplash.jpg', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:25:19', '2020-11-07 22:25:19', '2020-11-07 22:25:22', '2282ce83-2c1b-4097-aca6-2de1107fa0f1'),
(16, 108, 'pattern-photography-architecture.jpg', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:25:19', '2020-11-07 22:25:19', '2020-11-07 22:25:20', '7ae5efe6-bc08-4c01-955b-845248e4b23f'),
(17, 112, 'ROCK-AND-ROLL-530x640.jpeg', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:25:19', '2020-11-07 22:25:19', '2020-11-07 22:25:22', '0fa75108-5f54-45fd-b424-a4177a807fd9'),
(18, 138, 'robert-bye-T0Pen8UyM5I-unsplash.jpg', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:25:19', '2020-11-07 22:25:19', '2020-11-07 22:25:21', 'd04f9347-a7a8-458c-aaaf-f8def1be07d6'),
(19, 140, 'david-maunsell-yBJORQWb09s-unsplash.jpg', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:25:19', '2020-11-07 22:25:19', '2020-11-07 22:25:21', '36ef5480-60af-4861-b642-68ba94c14896'),
(20, 142, 'drohysmer-garcia-Nm4ErCkScOk-unsplash.jpg', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:25:19', '2020-11-07 22:25:19', '2020-11-07 22:25:22', '09210c10-efc4-4dad-b717-b2f0e2547903'),
(21, 156, 'drahomir-posteby-mach-Dj52KNpZ5Sc-unsplash.jpg', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:25:19', '2020-11-07 22:25:19', '2020-11-07 22:25:23', '28625be6-6aed-460c-91cd-387995383eb9'),
(22, 145, 'robert-bye-T0Pen8UyM5I-unsplash-1.jpg', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:25:19', '2020-11-07 22:25:19', '2020-11-07 22:25:23', 'd73885c8-13ae-4fdc-9aaf-99c0b4146518'),
(23, 173, 'Screenshot-2020-11-07-at-15.18.58.png', NULL, '_fourthree', 1, 1, 0, 0, '2020-11-07 22:29:57', '2020-11-07 22:29:57', '2020-11-07 22:29:57', '791c9c41-9c5f-4d72-a6f3-8d40c7235c6e'),
(24, 254, 'ezgif.com-gif-maker.gif', NULL, '_hero', 1, 1, 0, 0, '2020-11-07 23:19:48', '2020-11-07 23:19:48', '2020-11-07 23:19:49', 'b7af692b-9937-4138-b5e7-f461b87190cc');

-- --------------------------------------------------------

--
-- Table structure for table `assettransforms`
--

CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assettransforms`
--

INSERT INTO `assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `width`, `height`, `format`, `quality`, `interlace`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Medium', 'medium', 'fit', 'center-center', 700, 500, NULL, NULL, 'none', '2020-11-06 17:15:08', '2020-11-06 17:15:08', '2020-11-06 17:15:08', '2b421359-679c-4f05-8c95-c4844287a432'),
(2, 'Hero', 'hero', 'crop', 'center-center', 1280, 720, NULL, NULL, 'none', '2020-11-06 19:40:23', '2020-11-06 19:40:23', '2020-11-06 19:40:23', '5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c'),
(3, 'Large', 'large', 'crop', 'center-center', 1920, 1080, NULL, NULL, 'none', '2020-11-07 15:23:06', '2020-11-07 15:23:06', '2020-11-07 15:23:06', 'c081fd4e-748e-4425-a2d1-da4f75efb0da'),
(4, 'FourThree', 'fourthree', 'crop', 'center-center', 600, 450, NULL, NULL, 'none', '2020-11-07 22:25:10', '2020-11-07 22:25:10', '2020-11-07 22:25:10', 'ef2d295f-82f4-4bbb-bca6-52b90d546884');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 1, '2020-11-06 19:47:43', 0, 1),
(2, 1, 2, '2020-11-07 23:19:46', 0, 1),
(2, 1, 10, '2020-11-08 11:07:16', 0, 1),
(2, 1, 14, '2020-11-06 22:43:24', 0, 1),
(2, 1, 15, '2020-11-07 15:19:54', 0, 1),
(2, 1, 16, '2020-11-07 22:28:28', 0, 1),
(2, 1, 18, '2020-11-07 15:35:30', 0, 1),
(2, 1, 19, '2020-11-08 11:39:57', 0, 1),
(2, 1, 20, '2020-11-07 15:53:43', 0, 1),
(2, 1, 21, '2020-11-07 15:55:01', 0, 1),
(10, 1, 1, '2020-11-06 17:30:50', 0, 1),
(13, 1, 1, '2020-11-06 17:31:04', 0, 1),
(92, 1, 1, '2020-11-07 09:58:14', 0, 1),
(96, 1, 1, '2020-11-07 09:58:13', 0, 1),
(99, 1, 1, '2020-11-07 09:58:14', 0, 1),
(102, 1, 2, '2020-11-07 14:37:11', 0, 1),
(109, 1, 1, '2020-11-07 12:58:05', 0, 1),
(109, 1, 2, '2020-11-07 14:36:44', 0, 1),
(113, 1, 2, '2020-11-07 14:36:55', 0, 1),
(116, 1, 1, '2020-11-07 12:56:05', 0, 1),
(118, 1, 1, '2020-11-07 16:31:13', 0, 1),
(128, 1, 1, '2020-11-07 13:14:29', 0, 1),
(128, 1, 2, '2020-11-07 14:01:30', 0, 1),
(133, 1, 2, '2020-11-07 14:01:01', 0, 1),
(136, 1, 2, '2020-11-07 14:01:15', 0, 1),
(146, 1, 2, '2020-11-07 14:36:31', 0, 1),
(149, 1, 2, '2020-11-07 14:36:21', 0, 1),
(157, 1, 2, '2020-11-07 14:36:08', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_richText` text,
  `field_button` text,
  `field_ctaText` text,
  `field_channelLinkText` text,
  `field_locationText` text,
  `field_locationButtonText` text,
  `field_address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_richText`, `field_button`, `field_ctaText`, `field_channelLinkText`, `field_locationText`, `field_locationButtonText`, `field_address`) VALUES
(1, 1, 1, NULL, '2020-11-06 16:46:00', '2020-11-06 16:46:00', 'd53fa03b-600a-45d4-912e-95018c02ed53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 'Home', '2020-11-06 16:46:55', '2020-11-08 11:39:56', '1421de2c-b696-4b00-acf6-da6b88b27aea', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2 class=\"h1\">Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2 class=\"h1\">A message followed by a way to get in touch</h2>\n<h2>+44 (0) 1234 567 890</h2>', 'Button Text', NULL),
(3, 3, 1, 'Home', '2020-11-06 16:46:55', '2020-11-06 16:46:55', 'a534fd46-03e8-49ab-9ac3-80464e369f0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 'Home', '2020-11-06 16:55:02', '2020-11-06 16:55:02', 'b7c2b337-5d32-48ad-b1be-1d54c95c4952', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, 'Home', '2020-11-06 16:55:42', '2020-11-06 16:55:42', 'f234f31a-e86c-410f-a053-f139cbbc5818', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 'Home', '2020-11-06 17:11:23', '2020-11-06 17:11:23', 'ba74420b-2fa9-43d4-8d40-e49f92785f00', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, 'Bulksplash yoitsthejourney L4er QCY9iu A', '2020-11-06 17:12:04', '2020-11-06 17:12:04', '2bd6d015-dfe7-4d97-bccb-22ef4d4b6001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 'Home', '2020-11-06 17:12:08', '2020-11-06 17:12:08', '0ed91365-0ebd-4bf1-ba19-98df2a61593e', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, 'Home', '2020-11-06 17:17:25', '2020-11-06 17:17:25', 'dc4dda4f-fc04-403d-b414-6f4e6c30e768', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, 'About Us', '2020-11-06 17:28:49', '2020-11-06 17:30:50', '41aed7eb-a106-45d8-b1c4-1cfaaba4d6ce', '<p>Eligendi iusto aliquam nisi ea dolore explicabo. Veniam rerum ex molestiae exercitationem accusamus. Itaque repudiandae ad. Doucement commencement longtemps justice mener nourrir public. Important environ haut preuve ligne possible montrer. Contraire entretenir engager mode selon. Debitis at mollitia vel dicta iste ipsum. Illo occaecati eveniet beatae eligendi illum earum. Explicabo placeat beatae repudiandae suscipit incidunt.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, 'About Us', '2020-11-06 17:28:49', '2020-11-06 17:28:49', '80d04a3a-c68b-4516-93d9-ff1c09c1b5df', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, 'About Us', '2020-11-06 17:28:50', '2020-11-06 17:28:50', '4515d0c0-b01c-4fa4-803b-77328b552344', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, 'Contact', '2020-11-06 17:29:11', '2020-11-06 17:31:04', 'ca4e61f0-d0cb-4f60-84fb-9bdd01f11c6d', '<p>Terre présence comprendre pouvoir former vérité. Asseoir répondre y réfléchir sommet curiosité partager. Chemise cours endormir beaucoup idée.<br /><br />Envie acheter oser recommencer. Dire auquel dimanche. Rapidement obliger retourner reposer.<br /><br />Nemo eius velit blanditiis aliquid consequatur. Tempora quidem consequatur saepe quasi. Tenetur accusamus nihil facere.<br /><br />Police apply some could person under. Factor investment many sister movement long see oil. Pressure three position protect relate town.<br /><br />Facilis libero eligendi quos commodi eius cum. Quas nisi maxime doloribus eaque. Voluptatibus sapiente similique hic dicta. Eligendi iusto aliquam nisi ea dolore explicabo. Veniam rerum ex molestiae exercitationem accusamus. Itaque repudiandae ad. Doucement commencement longtemps justice mener nourrir public. Important environ haut preuve ligne possible montrer. Contraire entretenir engager mode selon. Debitis at mollitia vel dicta iste ipsum. Illo occaecati eveniet beatae eligendi illum earum. Explicabo placeat beatae repudiandae suscipit incidunt.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, 'Contact', '2020-11-06 17:29:11', '2020-11-06 17:29:11', '7d36e709-d0fa-4591-bc56-078eebd3147e', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, 'About Us', '2020-11-06 17:30:06', '2020-11-06 17:30:06', 'efcce14a-b7ed-40b3-9871-5efd6595403c', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, 'Contact', '2020-11-06 17:30:18', '2020-11-06 17:30:18', 'c45ac436-76d0-4bae-b327-90863171ef3d', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, 1, 'About Us', '2020-11-06 17:30:50', '2020-11-06 17:30:50', '278220d9-5d68-4d41-b4d0-1bc997f6e750', '<p>Eligendi iusto aliquam nisi ea dolore explicabo. Veniam rerum ex molestiae exercitationem accusamus. Itaque repudiandae ad. Doucement commencement longtemps justice mener nourrir public. Important environ haut preuve ligne possible montrer. Contraire entretenir engager mode selon. Debitis at mollitia vel dicta iste ipsum. Illo occaecati eveniet beatae eligendi illum earum. Explicabo placeat beatae repudiandae suscipit incidunt.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 1, 'Contact', '2020-11-06 17:31:04', '2020-11-06 17:31:04', 'fb610b19-65db-41bb-a50d-e77095d294b7', '<p>Terre présence comprendre pouvoir former vérité. Asseoir répondre y réfléchir sommet curiosité partager. Chemise cours endormir beaucoup idée.<br /><br />Envie acheter oser recommencer. Dire auquel dimanche. Rapidement obliger retourner reposer.<br /><br />Nemo eius velit blanditiis aliquid consequatur. Tempora quidem consequatur saepe quasi. Tenetur accusamus nihil facere.<br /><br />Police apply some could person under. Factor investment many sister movement long see oil. Pressure three position protect relate town.<br /><br />Facilis libero eligendi quos commodi eius cum. Quas nisi maxime doloribus eaque. Voluptatibus sapiente similique hic dicta. Eligendi iusto aliquam nisi ea dolore explicabo. Veniam rerum ex molestiae exercitationem accusamus. Itaque repudiandae ad. Doucement commencement longtemps justice mener nourrir public. Important environ haut preuve ligne possible montrer. Contraire entretenir engager mode selon. Debitis at mollitia vel dicta iste ipsum. Illo occaecati eveniet beatae eligendi illum earum. Explicabo placeat beatae repudiandae suscipit incidunt.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 1, NULL, '2020-11-06 17:34:01', '2020-11-07 20:49:26', '85eb9795-03df-4f90-bac4-6c7f76d83e18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 22, 1, NULL, '2020-11-06 17:40:07', '2020-11-07 22:40:07', '989e4fef-e44b-46bf-b84d-b3efd61af5bf', '<p>© Horizon Company No. 199899939 VAT No. 199899939</p>', NULL, NULL, 'Contact Us', NULL, NULL, '<p>Floor 5,<br />12-14 Grey Street,<br />Newcastle upon Tyne,<br />NE1 6TE<br /></p>\n<p><a href=\"tel:011120212208111\" target=\"_blank\" rel=\"noreferrer noopener\">Tel:0111 212 8111</a><br /><a href=\"mailto:admin@horizonthemes.co.uk\" target=\"_blank\" rel=\"noreferrer noopener\">admin@horizonthemes.co.uk</a></p>'),
(22, 24, 1, 'Post One', '2020-11-06 17:47:32', '2020-11-06 17:47:32', 'c87c6400-1534-44ec-93bb-1e163eb180f6', '<p>Sujet ramener solitude roi. Voyage examiner ou immense visite. Entrer exprimer passé nord fils.</p>\n<p>Nature particular have economy. Stock blood store because whatever technology organization. Shake position for apply use type.</p>\n<p>Response dog star international. Run there event alone many prove total drop. System able fall table.</p>\n<p>Iusto vero necessitatibus eius alias. Repellat qui tempore ratione iusto exercitationem. Sequi sit itaque tempore ipsa similique illo laudantium.</p>\n<p>Environmental someone relationship high medical despite season happy. Operation hot read others mention hot. Night by star government career same leader.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 25, 1, 'Post One', '2020-11-06 17:47:32', '2020-11-06 17:47:32', 'f06dbfbd-0f66-4360-aa90-dc97ba56d3f6', '<p>Sujet ramener solitude roi. Voyage examiner ou immense visite. Entrer exprimer passé nord fils.</p>\n<p>Nature particular have economy. Stock blood store because whatever technology organization. Shake position for apply use type.</p>\n<p>Response dog star international. Run there event alone many prove total drop. System able fall table.</p>\n<p>Iusto vero necessitatibus eius alias. Repellat qui tempore ratione iusto exercitationem. Sequi sit itaque tempore ipsa similique illo laudantium.</p>\n<p>Environmental someone relationship high medical despite season happy. Operation hot read others mention hot. Night by star government career same leader.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 27, 1, 'Post Two', '2020-11-06 17:47:45', '2020-11-06 17:47:45', '727fa385-ca74-49b8-b1a6-cbafe297666a', '<p>Ligne payer théâtre exemple ajouter. Étranger gloire défaut. Mauvais printemps marché façon voyage nul long.</p>\n<p>Recusandae maiores nam aspernatur. Nulla saepe officiis error eaque. Itaque quam quidem et eius eius velit.</p>\n<p>Autre sauvage plus éclater. Bon entrer réflexion même blanc elle. Réclamer retourner vue recommencer.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 28, 1, 'Post Two', '2020-11-06 17:47:45', '2020-11-06 17:47:45', '6fd7020d-be82-4207-8ea7-22a301f03c74', '<p>Ligne payer théâtre exemple ajouter. Étranger gloire défaut. Mauvais printemps marché façon voyage nul long.</p>\n<p>Recusandae maiores nam aspernatur. Nulla saepe officiis error eaque. Itaque quam quidem et eius eius velit.</p>\n<p>Autre sauvage plus éclater. Bon entrer réflexion même blanc elle. Réclamer retourner vue recommencer.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 30, 1, 'Post Three', '2020-11-06 17:48:00', '2020-11-06 17:48:00', '7b745c83-bb5b-4c86-b6f8-e5163c295575', '<p>68, avenue Bernadette Bourgeois</p>\n<p>10380 Saint Élodie-la-Forêt</p>\n<p>Calle de Soledad Lara 63 Apt. 10 </p>\n<p>Palencia, 83874</p>\n<p>17218 Martin Fields</p>\n<p>East Jorgeberg, UT 10773</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 31, 1, 'Post Three', '2020-11-06 17:48:00', '2020-11-06 17:48:00', 'de984ca1-f377-44a1-b0a2-b75fda1e3897', '<p>68, avenue Bernadette Bourgeois</p>\n<p>10380 Saint Élodie-la-Forêt</p>\n<p>Calle de Soledad Lara 63 Apt. 10 </p>\n<p>Palencia, 83874</p>\n<p>17218 Martin Fields</p>\n<p>East Jorgeberg, UT 10773</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 32, 1, 'Blog', '2020-11-06 17:54:31', '2020-11-06 17:54:32', 'bdbac786-527f-47f4-8f75-5017171ba3db', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 33, 1, 'Blog', '2020-11-06 17:54:31', '2020-11-06 17:54:31', 'e8fab1e6-aca4-4b55-a0f7-820eda0999cf', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 34, 1, 'Blog', '2020-11-06 17:54:32', '2020-11-06 17:54:32', '6b359b21-b050-428a-b85b-6a92cec6e3e6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 36, 1, 'Home', '2020-11-06 18:31:50', '2020-11-06 18:31:50', '5c955a4a-036a-4890-8dd1-42c127676432', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 37, 1, 'Home', '2020-11-06 18:32:23', '2020-11-06 18:32:23', '1eb853f1-3479-4f62-bcd1-f6148d724955', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 38, 1, 'Home', '2020-11-06 18:33:04', '2020-11-06 18:33:04', '2f905541-c450-413b-91aa-49412b50161d', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 39, 1, 'Home', '2020-11-06 18:35:03', '2020-11-06 18:35:03', '80dfd5bb-8e50-4dcd-bb59-40538fb6e1a4', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 40, 1, 'Home', '2020-11-06 18:35:28', '2020-11-06 18:35:28', 'ff2768dc-4f54-4d92-b3e0-9c46e05ded4d', '<h2>Trou après achever rare source venir foule. </h2>\n<p><strong>Obtenir</strong> repas traîner poitrine remettre. Parole parfaitement vieux apparaître loup.</p>\n<p>Enim architecto blanditiis consequuntur qui. </p><ol><li>Assumenda </li><li>adipisci explicabo. Laudantium quod quae dolore explicabo.</li></ol><p>Franchir lorsque principe chien près vers commencement. Agir comment lors précieux haut pencher ressembler. Également environ me visite tu pourquoi depuis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 44, 1, 'Home', '2020-11-06 19:32:06', '2020-11-06 19:32:06', '5be6a70e-699f-4973-ab1f-51ac5067a485', '<h2>Here we have a two line display intro</h2>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax. Weight article bit accept. Train cruel éclater lorsque distinguer humain approcher. Moyen poète entraîner service paraître imaginer lequel. Fumée aller agiter. Quasi molestias inventore corporis libero iure. Ad accusamus esse. Nostrum odit quos optio rem alias officiis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 45, 1, 'Home', '2020-11-06 19:41:07', '2020-11-06 19:41:07', '76272568-1c8f-440a-9783-e0b46eb1569c', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax. Weight article bit accept. Train cruel éclater lorsque distinguer humain approcher. Moyen poète entraîner service paraître imaginer lequel. Fumée aller agiter. Quasi molestias inventore corporis libero iure. Ad accusamus esse. Nostrum odit quos optio rem alias officiis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 46, 1, 'Matthew henry nv Fpb MM Rj8 unsplash 1', '2020-11-06 19:46:56', '2020-11-06 19:46:56', 'fb440359-9e94-4c46-b937-ea18672f0bb3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 47, 1, 'Home', '2020-11-06 19:46:59', '2020-11-06 19:46:59', 'd24e16f9-b0be-4ecd-9e70-5aa08917b632', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax. Weight article bit accept. Train cruel éclater lorsque distinguer humain approcher. Moyen poète entraîner service paraître imaginer lequel. Fumée aller agiter. Quasi molestias inventore corporis libero iure. Ad accusamus esse. Nostrum odit quos optio rem alias officiis.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 48, 1, 'Home', '2020-11-06 19:47:43', '2020-11-06 19:47:43', '5cde097c-bb8f-4f28-a199-9b3addb27416', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 50, 1, 'Home', '2020-11-06 19:50:36', '2020-11-06 19:50:36', 'c1f739aa-69aa-4cfc-ab43-ebfdfed5a93c', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 52, 1, 'Home', '2020-11-06 19:57:30', '2020-11-06 19:57:30', '51fbe06a-e8c2-4bbc-a25a-7bd62e0c8da9', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 53, 1, 'Home', '2020-11-06 20:18:06', '2020-11-06 20:18:06', 'abe966e4-8f62-4fce-a051-4ff68c844633', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 56, 1, 'Home', '2020-11-06 20:18:53', '2020-11-06 20:18:53', 'befffbc1-4f13-473b-b824-327fa0dc6784', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 59, 1, 'Home', '2020-11-06 20:59:50', '2020-11-06 20:59:50', 'e77bd494-3217-43a4-b8a2-8a520e2bd206', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 63, 1, 'Home', '2020-11-06 21:07:08', '2020-11-06 21:07:08', '6f27f178-ebcc-41fe-bf28-87c146f21532', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 67, 1, 'Home', '2020-11-06 21:24:15', '2020-11-06 21:24:15', '90a7d3a4-5a58-41cf-b4a0-7e1bb51e1c83', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 71, 1, 'Home', '2020-11-06 22:33:41', '2020-11-06 22:33:41', 'fadf9c13-699d-4d6e-a28e-51677e15735b', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 75, 1, 'Home', '2020-11-06 22:33:55', '2020-11-06 22:33:55', '05b7913f-3c5b-46ba-bb17-cee4194dab09', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 79, 1, 'Home', '2020-11-06 22:43:07', '2020-11-06 22:43:07', 'f15e285b-59d7-4c66-8a42-90d4b290ce96', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 83, 1, 'Home', '2020-11-06 22:43:24', '2020-11-06 22:43:24', '9523d71d-03c6-49ab-9e22-3f663a7e1252', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', NULL, NULL, NULL, NULL, NULL),
(54, 87, 1, 'Home', '2020-11-06 22:43:47', '2020-11-06 22:43:47', '7bc76a67-0a50-4a7a-8b93-627aa111155e', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', NULL, NULL, NULL, NULL, NULL),
(56, 92, 1, 'Post One', '2020-11-07 09:42:48', '2020-11-07 09:58:14', '6360e39c-d40d-452d-9656-3e1ee3e13f7c', '<p>Who table other major question structure marriage consider. Give region event class decide. Rate clear according current Congress why. Ipsum animi natus fuga dolorum asperiores hic ipsam. Blanditiis occaecati ex aliquam. Sed iure odio et ullam eveniet nesciunt. New accept state recently suffer. Think grow may start. Show without impact full. Goal no perhaps door only certainly. Yard now late knowledge wonder. Nation while few realize. Vel aliquam vel magni nam tempora. Saepe blanditiis beatae dignissimos autem pariatur. Cum alias illo occaecati quam laboriosam doloribus.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 93, 1, 'Post One', '2020-11-07 09:42:48', '2020-11-07 09:42:48', 'ec087fb2-dfe1-4c59-add2-3003988d4bb7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 94, 1, 'Post One', '2020-11-07 09:43:20', '2020-11-07 09:43:20', 'cfe0e8d5-d57f-41fc-8d75-ef95f399e069', '<p>Who table other major question structure marriage consider. Give region event class decide. Rate clear according current Congress why. Ipsum animi natus fuga dolorum asperiores hic ipsam. Blanditiis occaecati ex aliquam. Sed iure odio et ullam eveniet nesciunt. New accept state recently suffer. Think grow may start. Show without impact full. Goal no perhaps door only certainly. Yard now late knowledge wonder. Nation while few realize. Vel aliquam vel magni nam tempora. Saepe blanditiis beatae dignissimos autem pariatur. Cum alias illo occaecati quam laboriosam doloribus.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 96, 1, 'Post Two', '2020-11-07 09:43:45', '2020-11-07 09:58:13', '70b36fba-1df2-480c-b27b-ca38457f610a', '<p>Fonction garçon masse blond satisfaire rêver plaisir tourner. Avenir crise doigt haine violent. Dehors douter finir montagne président cher continuer. Attacher supporter sens haut lentement espace tard. Docteur poids dur direction intérieur. Ouvrage prononcer yeux établir. Repudiandae blanditiis error exercitationem repellendus architecto sit distinctio. Molestiae molestiae facilis nesciunt molestiae vel. Distinctio placeat saepe libero nobis. Reprehenderit nemo quibusdam minima id. Placeat dolorum enim ipsa quis minima. Eum laudantium cumque. Et accusantium soluta mollitia. Numquam totam dolor autem provident. Quia quam sapiente quia illo.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 97, 1, 'Post Two', '2020-11-07 09:43:45', '2020-11-07 09:43:45', '12e15f8a-f7e7-482c-acb1-309d58ef7212', '<p>Fonction garçon masse blond satisfaire rêver plaisir tourner. Avenir crise doigt haine violent. Dehors douter finir montagne président cher continuer. Attacher supporter sens haut lentement espace tard. Docteur poids dur direction intérieur. Ouvrage prononcer yeux établir. Repudiandae blanditiis error exercitationem repellendus architecto sit distinctio. Molestiae molestiae facilis nesciunt molestiae vel. Distinctio placeat saepe libero nobis. Reprehenderit nemo quibusdam minima id. Placeat dolorum enim ipsa quis minima. Eum laudantium cumque. Et accusantium soluta mollitia. Numquam totam dolor autem provident. Quia quam sapiente quia illo.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 99, 1, 'Post Three', '2020-11-07 09:44:08', '2020-11-07 09:58:14', 'a32b90c5-a366-454c-b643-6a6f88ac0362', '<p>Aut veniam eum alias sint. Earum amet praesentium dicta consequuntur similique. Cumque culpa quidem eveniet repellendus consectetur. Vaste également chien vin comment succès. Taire rouge salle mur puis. Monter claire promettre foi chance sommet dimanche aucun. Eveniet nam quidem. Quos cupiditate necessitatibus aliquid esse velit. A at aut sunt consequuntur repellendus odio dignissimos. Autem consequatur commodi distinctio non quam. Saepe molestiae quisquam atque. Corporis laudantium consectetur consequuntur incidunt. Quod dicta consequatur quis voluptatum. Quibusdam distinctio occaecati tempore harum eveniet officiis. Temporibus praesentium quidem quisquam eum.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 100, 1, 'Post Three', '2020-11-07 09:44:08', '2020-11-07 09:44:08', 'c84bde52-ba45-49e9-92a8-757043d06b1a', '<p>Aut veniam eum alias sint. Earum amet praesentium dicta consequuntur similique. Cumque culpa quidem eveniet repellendus consectetur. Vaste également chien vin comment succès. Taire rouge salle mur puis. Monter claire promettre foi chance sommet dimanche aucun. Eveniet nam quidem. Quos cupiditate necessitatibus aliquid esse velit. A at aut sunt consequuntur repellendus odio dignissimos. Autem consequatur commodi distinctio non quam. Saepe molestiae quisquam atque. Corporis laudantium consectetur consequuntur incidunt. Quod dicta consequatur quis voluptatum. Quibusdam distinctio occaecati tempore harum eveniet officiis. Temporibus praesentium quidem quisquam eum.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 102, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:14:34', '2020-11-07 14:37:10', '7480cd52-f2aa-4f1b-b61f-c22d22a118a8', '<p>Order but role production. Hair analysis risk put PM pretty particular. Remain TV prove when same. Nihil tempore debitis molestias iure hic. Rerum maiores rerum distinctio. Magnam quibusdam sit doloribus eligendi omnis iure illum</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 103, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:14:34', '2020-11-07 10:14:34', 'cee9a95c-db71-4b30-813b-439f75a304f0', '<p>Order but role production. Hair analysis risk put PM pretty particular. Remain TV prove when same. Nihil tempore debitis molestias iure hic. Rerum maiores rerum distinctio. Magnam quibusdam sit doloribus eligendi omnis iure illum</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 104, 1, 'Maarten deckers T5n XYX Cf50 I unsplash', '2020-11-07 10:23:45', '2020-11-07 10:23:45', 'b0b8c684-7f2b-4a26-a298-4df39c928e80', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 105, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:23:48', '2020-11-07 10:23:48', '8bebbf21-4560-411c-b0e3-e432ddd6e3a3', '<p>Order but role production. Hair analysis risk put PM pretty particular. Remain TV prove when same. Nihil tempore debitis molestias iure hic. Rerum maiores rerum distinctio. Magnam quibusdam sit doloribus eligendi omnis iure illum</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 106, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:23:57', '2020-11-07 10:23:57', 'c0dd370b-934d-4baa-9331-bd6186de6516', '<p>Order but role production. Hair analysis risk put PM pretty particular. Remain TV prove when same. Nihil tempore debitis molestias iure hic. Rerum maiores rerum distinctio. Magnam quibusdam sit doloribus eligendi omnis iure illum</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 108, 1, 'Pattern photography architecture', '2020-11-07 10:24:05', '2020-11-07 10:24:05', '4343e02b-f8a2-4dfb-9f44-688b9784a5e6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 109, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:24:20', '2020-11-07 14:36:44', '1a37b5fe-81e3-4807-b6ca-28771038c861', '<p>Dolor maxime quidem ab expedita iure tenetur. Alias ab mollitia doloremque veritatis iure repudiandae. Reiciendis sunt repellat odit quidem. Voluptatem blanditiis eligendi. Nulla suscipit distinctio incidunt architecto non. Saepe cum a cum consectetur maxime adipisci. Accusantium dolorum officiis vel. Neque distinctio quae cumque facere et. Cumque quod rerum sint quas. Neque praesentium itaque eos illo veniam consequatur. Necessitatibus laborum dolores facilis eius sequi. Cumque ut explicabo vero cupiditate occaecati. Corrupti accusamus provident ratione consequuntur cum. Quod perferendis laborum veniam dicta in. Totam nihil quaerat laboriosam sapiente enim incidunt quam.</p><h2>User haut naturel tout musique parvenir reconnaître intérieur. </h2>\n<p><strong>Puis caractère possible discuter rester accomplir</strong>. Parce Que présent différent violence important pouvoir corde mais. Since professor notice service. Shoulder huge nature indicate buy question. List class stage. Similique fugiat fuga qui tempora sint iusto. Explicabo placeat corrupti sit dolorem. Sequi illum numquam libero id. Consentir preuve douceur salle direction protéger. Dormir rapide chiffre envoyer. Tenter aide souffrance bouche vague secours. Mollitia veniam a voluptas at delectus. Amet reiciendis est doloribus tempore odit dolore. Aperiam quidem eaque illum porro. As citizen theory do reach be dream cultural. Water no continue receive least to where. Support bank sport action my air financial daughter.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 110, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:24:20', '2020-11-07 10:24:20', '94972113-99e1-4351-a525-f0ebdb8963a8', '<p>Dolor maxime quidem ab expedita iure tenetur. Alias ab mollitia doloremque veritatis iure repudiandae. Reiciendis sunt repellat odit quidem. Âme marche livre roche songer remplir. Juger hier payer faible. Éprouver puissance fortune confier certes sac quoi</p>\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 112, 1, 'ROCK AND ROLL 530x640', '2020-11-07 10:29:33', '2020-11-07 10:29:33', '1fd3168e-c12f-4f4a-be83-d92827364e31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 113, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:29:34', '2020-11-07 14:36:55', 'ad8761b1-495e-4caa-bf3c-ef2a4297b66a', '<p>Franchir bête pouvoir appel cent. Société voici partager devenir tempête mon chasser. Voici classe prix prix désigner jambe intérieur. Laborum aspernatur autem. Cum molestias doloribus natus. Laboriosam maiores inventore aspernatur in. </p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 114, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:29:34', '2020-11-07 10:29:34', 'd18c70b8-cb63-4100-8605-1266f24b4471', '<p>Franchir bête pouvoir appel cent. Société voici partager devenir tempête mon chasser. Voici classe prix prix désigner jambe intérieur. Laborum aspernatur autem. Cum molestias doloribus natus. Laboriosam maiores inventore aspernatur in. </p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 115, 1, 'This is a wide container title stretching two lines', '2020-11-07 10:35:06', '2020-11-07 10:35:06', 'da158bf0-e8dd-422e-9cec-a151d6425590', '<p>Dolor maxime quidem ab expedita iure tenetur. Alias ab mollitia doloremque veritatis iure repudiandae. Reiciendis sunt repellat odit quidem.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 116, 1, 'About us', '2020-11-07 10:50:32', '2020-11-07 12:56:05', 'a667686d-af2a-44aa-9a90-c11a7316d0bf', '<p>Party anyone car suffer consider everyone history. Line participant particular up than. Provide third hospital put act. Malheur but vers agir revenir malgré. Remplacer banc vêtir essuyer rayon lui. Loup été demi ne adresser attention attention. Common road yet never. Suggest somebody stuff help method game soldier car. Region bar open now.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 117, 1, 'About us', '2020-11-07 10:50:32', '2020-11-07 10:50:32', '4ae05742-6026-43e2-a595-237ae8a052e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 118, 1, 'Contact', '2020-11-07 10:50:50', '2020-11-07 16:31:13', '02b6848c-f0d3-4931-a70e-166f5450a5ad', '<h2>Day possible safe win attack woman rest. </h2>\n<p><strong>Simply million never style our amount end. Wife happy let whose office four.</strong></p>\n<p>Per he author like. Meet box city rest. Century speech what question accept. Service may election of country keep around. Clearly small various past. Perform shake drop race while measure drive. Fuga minima aperiam ipsam commodi sequi ipsam perspiciatis. Quos eum eligendi repudiandae nemo. Sint suscipit debitis reiciendis aspernatur voluptatum voluptatem quia.</p>\n\n\n<p>Joue sentier papa plusieurs face. Repas toit vers déchirer diriger dehors. Tour secrétaire paquet. Harum porro voluptatum minima deleniti eaque culpa nemo. Ullam delectus atque molestias. Consequatur cumque tempora expedita. Suscipit maxime eveniet eaque quam rem architecto. Ipsam tempore optio quam. Laudantium eos sit nulla iure.</p>\n\n\n<p>De mériter de étranger coûter unique fortune. Fleur avis propre fort révéler. Réflexion importer vide vêtement. Chaud aller après moitié secours peine animal. Suivant rang endroit ceci. Souhaiter portier rouge ton. Suivant vision semaine besoin poitrine cesser. Chaîne loin fin grand jusque. Lisser riche élever.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 119, 1, 'Contact', '2020-11-07 10:50:50', '2020-11-07 10:50:50', '63284903-0234-4d44-b73e-a420c14d1f8b', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 120, 1, 'About us', '2020-11-07 12:50:36', '2020-11-07 12:50:36', '0c95c24d-e871-4d01-af9b-e785006be865', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 121, 1, 'Contact', '2020-11-07 12:50:45', '2020-11-07 12:50:45', '98147886-f1ff-4120-be5f-e2f21b1d6481', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 122, 1, 'About us', '2020-11-07 12:56:05', '2020-11-07 12:56:05', '2472bb15-ef46-4e93-8230-c4bc6d3bd159', '<p>Party anyone car suffer consider everyone history. Line participant particular up than. Provide third hospital put act. Malheur but vers agir revenir malgré. Remplacer banc vêtir essuyer rayon lui. Loup été demi ne adresser attention attention. Common road yet never. Suggest somebody stuff help method game soldier car. Region bar open now.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 123, 1, 'This is a wide container title stretching two lines', '2020-11-07 12:57:16', '2020-11-07 12:57:16', '4a1642ef-0fe3-4069-be0f-84c7d052b3d9', '<p>Dolor maxime quidem ab expedita iure tenetur. Alias ab mollitia doloremque veritatis iure repudiandae. Reiciendis sunt repellat odit quidem. Voluptatem blanditiis eligendi. Nulla suscipit distinctio incidunt architecto non. Saepe cum a cum consectetur maxime adipisci. Accusantium dolorum officiis vel. Neque distinctio quae cumque facere et. Cumque quod rerum sint quas. Neque praesentium itaque eos illo veniam consequatur. Necessitatibus laborum dolores facilis eius sequi. Cumque ut explicabo vero cupiditate occaecati. Corrupti accusamus provident ratione consequuntur cum. Quod perferendis laborum veniam dicta in. Totam nihil quaerat laboriosam sapiente enim incidunt quam.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 124, 1, 'This is a wide container title stretching two lines', '2020-11-07 12:58:05', '2020-11-07 12:58:05', '80d01158-555c-4368-92c9-fb959740c1fb', '<p>Dolor maxime quidem ab expedita iure tenetur. Alias ab mollitia doloremque veritatis iure repudiandae. Reiciendis sunt repellat odit quidem. Voluptatem blanditiis eligendi. Nulla suscipit distinctio incidunt architecto non. Saepe cum a cum consectetur maxime adipisci. Accusantium dolorum officiis vel. Neque distinctio quae cumque facere et. Cumque quod rerum sint quas. Neque praesentium itaque eos illo veniam consequatur. Necessitatibus laborum dolores facilis eius sequi. Cumque ut explicabo vero cupiditate occaecati. Corrupti accusamus provident ratione consequuntur cum. Quod perferendis laborum veniam dicta in. Totam nihil quaerat laboriosam sapiente enim incidunt quam.</p><h2>User haut naturel tout musique parvenir reconnaître intérieur. </h2>\n<p><strong>Puis caractère possible discuter rester accomplir</strong>. Parce Que présent différent violence important pouvoir corde mais. Since professor notice service. Shoulder huge nature indicate buy question. List class stage. Similique fugiat fuga qui tempora sint iusto. Explicabo placeat corrupti sit dolorem. Sequi illum numquam libero id. Consentir preuve douceur salle direction protéger. Dormir rapide chiffre envoyer. Tenter aide souffrance bouche vague secours. Mollitia veniam a voluptas at delectus. Amet reiciendis est doloribus tempore odit dolore. Aperiam quidem eaque illum porro. As citizen theory do reach be dream cultural. Water no continue receive least to where. Support bank sport action my air financial daughter.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 125, 1, 'This is a long', '2020-11-07 13:10:50', '2020-11-07 13:10:59', '9ab93caa-a17d-4798-b81c-406ec40d77f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 126, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:11:07', '2020-11-07 13:11:07', '82274ea3-0264-440a-9553-881b74cf7fea', '<p>Dolor maxime quidem ab expedita iure tenetur. Alias ab mollitia doloremque veritatis iure repudiandae. Reiciendis sunt repellat odit quidem. Voluptatem blanditiis eligendi. Nulla suscipit distinctio incidunt architecto non. Saepe cum a cum consectetur maxime adipisci. Accusantium dolorum officiis vel. Neque distinctio quae cumque facere et. Cumque quod rerum sint quas. Neque praesentium itaque eos illo veniam consequatur. Necessitatibus laborum dolores facilis eius sequi. Cumque ut explicabo vero cupiditate occaecati. Corrupti accusamus provident ratione consequuntur cum. Quod perferendis laborum veniam dicta in. Totam nihil quaerat laboriosam sapiente enim incidunt quam.</p><h2>User haut naturel tout musique parvenir reconnaître intérieur. </h2>\n<p><strong>Puis caractère possible discuter rester accomplir</strong>. Parce Que présent différent violence important pouvoir corde mais. Since professor notice service. Shoulder huge nature indicate buy question. List class stage. Similique fugiat fuga qui tempora sint iusto. Explicabo placeat corrupti sit dolorem. Sequi illum numquam libero id. Consentir preuve douceur salle direction protéger. Dormir rapide chiffre envoyer. Tenter aide souffrance bouche vague secours. Mollitia veniam a voluptas at delectus. Amet reiciendis est doloribus tempore odit dolore. Aperiam quidem eaque illum porro. As citizen theory do reach be dream cultural. Water no continue receive least to where. Support bank sport action my air financial daughter.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 128, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:12:11', '2020-11-07 14:01:30', 'ed58cca0-1a3d-4633-af67-b30ad195e78f', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h3>Aperiam quasi repudiandae alias labore tenetur. </h3>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam.</strong> Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 129, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:12:11', '2020-11-07 13:12:11', '6cc8a6d9-c13b-4fb3-a53f-13a9897dc51e', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n\n\n\n\n<h2>Aperiam quasi repudiandae alias labore tenetur. </h2>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam.</strong> Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 130, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:14:29', '2020-11-07 13:14:29', '026185ee-a481-4210-b3c1-6fe48c8be574', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h3>Aperiam quasi repudiandae alias labore tenetur. </h3>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam.</strong> Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 131, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:18:14', '2020-11-07 13:18:14', 'f2c9f63e-51ee-4a47-81c7-3c8ce35afd24', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h3>Aperiam quasi repudiandae alias labore tenetur. </h3>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam.</strong> Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 133, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:18:32', '2020-11-07 14:01:01', '3140fd23-885f-4256-ad39-b6cf4df700f5', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h3>Aperiam quasi repudiandae alias labore tenetur.</h3>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam.</strong> Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 134, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:18:32', '2020-11-07 13:18:32', '490e9859-faf1-40e6-a311-32a40cbdc118', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h3>Aperiam quasi repudiandae alias labore tenetur.</h3>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam.</strong> Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_richText`, `field_button`, `field_ctaText`, `field_channelLinkText`, `field_locationText`, `field_locationButtonText`, `field_address`) VALUES
(100, 136, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:18:56', '2020-11-07 14:01:15', '7f59d8f1-b321-4dea-80cc-5e56ab78695a', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h2>Aperiam quasi repudiandae alias labore tenetur.</h2>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam</strong>. Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 137, 1, 'This is a wide container title stretching two lines', '2020-11-07 13:18:56', '2020-11-07 13:18:56', '8eb11fff-4d09-4081-8252-e29b7ab0756b', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h2>Aperiam quasi repudiandae alias labore tenetur.</h2>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam</strong>. Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 138, 1, 'Robert bye T0 Pen8 Uy M5 I unsplash', '2020-11-07 14:00:35', '2020-11-07 14:00:35', '30e6ae57-dbff-4b96-a559-434ccd2f0d02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 139, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:01:01', '2020-11-07 14:01:01', '71b7481f-567d-414f-a543-9b3030ea61f1', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h3>Aperiam quasi repudiandae alias labore tenetur.</h3>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam.</strong> Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 140, 1, 'David maunsell y BJORQ Wb09s unsplash', '2020-11-07 14:01:12', '2020-11-07 14:01:12', '84cee194-c2f5-4670-80b5-804e58ec0f6e', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 141, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:01:15', '2020-11-07 14:01:15', '8bc3ae2e-aeae-4395-a408-43fe38537c0f', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h2>Aperiam quasi repudiandae alias labore tenetur.</h2>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam</strong>. Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 142, 1, 'Drohysmer garcia Nm4 Er Ck Sc Ok unsplash', '2020-11-07 14:01:27', '2020-11-07 14:01:27', '0f840ccf-82e9-44e4-a06e-f6114c57d433', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 143, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:01:30', '2020-11-07 14:01:30', '584731ac-79b2-42d4-9886-b0912ad35f07', '<p>Ab esse quo cupiditate. Libero quo tempore. Aspernatur aperiam beatae aspernatur tempore nihil nesciunt quibusdam.Yard kitchen ball simply summer. Remain grow police claim fast. Crime speak form item play item especially. Fugit pariatur ea assumenda unde. Qui laborum inventore rerum sunt ea distinctio. Nemo eius cum facere. Rose partir train étranger. Volonté soldat avant autrement. Pointe mur moment hauteur hors ferme discussion. Buy minute reveal admit. Visit wall pattern people. Almost close subject successful.</p>\n<h3>Aperiam quasi repudiandae alias labore tenetur. </h3>\n<p><strong>Minima tempora nisi quam vel tenetur laboriosam.</strong> Quisquam aut voluptatum animi. Etc livrer devant. Souffler sans en son. Accorder delà recevoir finir déchirer Quant À yeux attention faible intéresser juger souffrance. On réalité bois sable intérieur. Dangereux mauvais aujourd\'hui jardin discussion encore Tôt caractère tourner vaincre rejoindre. Réalité barbe sept colline pénétrer creuser échapper. Personne camarade allumer rappeler minute rappeler Quo ea rerum cupiditate vel culpa. Ratione commodi laboriosam laudantium enim veritatis doloribus. Dolores aut placeat laborum accusamus.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 145, 1, 'Robert bye T0 Pen8 Uy M5 I unsplash 1', '2020-11-07 14:05:27', '2020-11-07 14:05:27', '9e4e1901-1475-4c84-bb8d-db5e144e6924', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 146, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:05:54', '2020-11-07 14:36:31', '3a3015d5-1842-4c17-a78b-54556dad2e3a', '<h2>Mission most industry southern. </h2>\n<p>Shoulder fire case soon case since religious cause. Last on but enough player.Doloremque nihil nihil hic. Facilis quisquam nostrum laboriosam ab. Similique excepturi magni fugiat. Purpose receive structure line follow value. Summer receive myself air agreement simply fly. Stock time discussion.</p>\n\n\n<p><strong>Port vie compagnie prière nommer. Animal vérité mari révolution terreur fête.</strong> Rue confondre recevoir dur temps départ. Premier coeur rôle inquiétude. Céder auquel quatre creuser raison. Soi grave écraser montagne Create simply property structure become. Goal third someone herself country. Race well everyone company Eum cupiditate cumque reiciendis explicabo assumenda odio odit. Nulla aut eligendi maiores nam. Sequi quaerat culpa sint neque quae sit officiis.</p>\n\n\n\n<p>In fugit tempora amet blanditiis aspernatur. Reiciendis consequatur laudantium modi quidem. Aut eligendi officiis ducimus officia distinctio Ad recusandae harum velit. Molestiae a in quisquam quam sunt quasi. Ut modi nostrum necessitatibus eligendi fugit iure qui Hic deleniti labore eveniet eius corporis error dolore. Qui laboriosam labore tempore dolor repellat. Laboriosam veniam perferendis necessitatibus culpa inventore.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 147, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:05:54', '2020-11-07 14:05:54', '421dd7b4-f8a7-4442-8e47-40c26e8dbba1', '<h2>Mission most industry southern. </h2>\n<p>Shoulder fire case soon case since religious cause. Last on but enough player.Doloremque nihil nihil hic. Facilis quisquam nostrum laboriosam ab. Similique excepturi magni fugiat. Purpose receive structure line follow value. Summer receive myself air agreement simply fly. Stock time discussion.</p>\n\n\n<p><strong>Port vie compagnie prière nommer. Animal vérité mari révolution terreur fête.</strong> Rue confondre recevoir dur temps départ. Premier coeur rôle inquiétude. Céder auquel quatre creuser raison. Soi grave écraser montagne Create simply property structure become. Goal third someone herself country. Race well everyone company Eum cupiditate cumque reiciendis explicabo assumenda odio odit. Nulla aut eligendi maiores nam. Sequi quaerat culpa sint neque quae sit officiis.</p>\n\n\n\n<p>In fugit tempora amet blanditiis aspernatur. Reiciendis consequatur laudantium modi quidem. Aut eligendi officiis ducimus officia distinctio Ad recusandae harum velit. Molestiae a in quisquam quam sunt quasi. Ut modi nostrum necessitatibus eligendi fugit iure qui Hic deleniti labore eveniet eius corporis error dolore. Qui laboriosam labore tempore dolor repellat. Laboriosam veniam perferendis necessitatibus culpa inventore.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 149, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:06:46', '2020-11-07 14:36:20', '0a279500-dbd3-4551-a917-67464eca5656', '<p>Voice a happen thank development their. Man scene discuss democratic. Else boy listen compare. Réveiller docteur fier observer plutôt prendre falloir. Rapporter roche blanc blanc sauver bois lèvre. Cou curiosité d\'autres spectacle réalité. Terreur figurer dangereux marcher. Calme réveiller vue fait. Lui franc égal même anglais lune. Dolorum commodi fugiat necessitatibus corrupti. Eius fugit eos aperiam. Error nesciunt eligendi dignissimos nemo optio saepe aut.<br /></p><h2>Possible still society manage sure culture begin. </h2>\n<p><strong>Less shoulder service exist service condition. Opportunity staff evening clear seem us onto.</strong></p>\n\n\n\n<p>Quis nisi iusto rem facilis rem quo. Facilis libero qui incidunt. Inventore explicabo asperiores eaque dolore. Difference like moment memory. Garden rise here. Team southern meet morning. Consequatur eaque excepturi veritatis dolore sed. Accusamus commodi officiis consequatur nobis. Illo dolore aperiam quas ratione dolor velit. Right mother action amount already leg. When apply particularly environmental teacher subject military success. Free when top wide financial step. Pointe précieux distinguer haute amuser joindre. Mine caresser exemple prévenir fonction roche. Sembler revenir devant joli société vite d\'autres oui.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 150, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:06:46', '2020-11-07 14:06:46', '7f85889c-a58f-4166-b3f3-2c736c2df2f4', '<p>Voice a happen thank development their. Man scene discuss democratic. Else boy listen compare. Réveiller docteur fier observer plutôt prendre falloir. Rapporter roche blanc blanc sauver bois lèvre. Cou curiosité d\'autres spectacle réalité. Terreur figurer dangereux marcher. Calme réveiller vue fait. Lui franc égal même anglais lune. Dolorum commodi fugiat necessitatibus corrupti. Eius fugit eos aperiam. Error nesciunt eligendi dignissimos nemo optio saepe aut.<br /></p><h2>Possible still society manage sure culture begin. </h2>\n<p><strong>Less shoulder service exist service condition. Opportunity staff evening clear seem us onto.</strong></p>\n\n\n\n<p>Quis nisi iusto rem facilis rem quo. Facilis libero qui incidunt. Inventore explicabo asperiores eaque dolore. Difference like moment memory. Garden rise here. Team southern meet morning. Consequatur eaque excepturi veritatis dolore sed. Accusamus commodi officiis consequatur nobis. Illo dolore aperiam quas ratione dolor velit. Right mother action amount already leg. When apply particularly environmental teacher subject military success. Free when top wide financial step. Pointe précieux distinguer haute amuser joindre. Mine caresser exemple prévenir fonction roche. Sembler revenir devant joli société vite d\'autres oui.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 151, 1, 'John macdonald I6v9 QWWH93g unsplash', '2020-11-07 14:06:59', '2020-11-07 14:06:59', 'd07935f9-dd4f-46f1-b945-3addf1832bf6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 152, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:07:01', '2020-11-07 14:07:01', '0bb0cde4-1808-4ef2-ae4a-a56eed898191', '<p>Voice a happen thank development their. Man scene discuss democratic. Else boy listen compare. Réveiller docteur fier observer plutôt prendre falloir. Rapporter roche blanc blanc sauver bois lèvre. Cou curiosité d\'autres spectacle réalité. Terreur figurer dangereux marcher. Calme réveiller vue fait. Lui franc égal même anglais lune. Dolorum commodi fugiat necessitatibus corrupti. Eius fugit eos aperiam. Error nesciunt eligendi dignissimos nemo optio saepe aut.<br /></p><h2>Possible still society manage sure culture begin. </h2>\n<p><strong>Less shoulder service exist service condition. Opportunity staff evening clear seem us onto.</strong></p>\n\n\n\n<p>Quis nisi iusto rem facilis rem quo. Facilis libero qui incidunt. Inventore explicabo asperiores eaque dolore. Difference like moment memory. Garden rise here. Team southern meet morning. Consequatur eaque excepturi veritatis dolore sed. Accusamus commodi officiis consequatur nobis. Illo dolore aperiam quas ratione dolor velit. Right mother action amount already leg. When apply particularly environmental teacher subject military success. Free when top wide financial step. Pointe précieux distinguer haute amuser joindre. Mine caresser exemple prévenir fonction roche. Sembler revenir devant joli société vite d\'autres oui.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 153, 1, 'John macdonald I6v9 QWWH93g unsplash', '2020-11-07 14:07:10', '2020-11-07 14:07:10', 'd057a668-ae8b-44b3-b3cb-7be15aaaeefb', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 154, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:07:13', '2020-11-07 14:07:13', 'c8dd8269-b34f-4ada-813e-1a101718afd2', '<p>Voice a happen thank development their. Man scene discuss democratic. Else boy listen compare. Réveiller docteur fier observer plutôt prendre falloir. Rapporter roche blanc blanc sauver bois lèvre. Cou curiosité d\'autres spectacle réalité. Terreur figurer dangereux marcher. Calme réveiller vue fait. Lui franc égal même anglais lune. Dolorum commodi fugiat necessitatibus corrupti. Eius fugit eos aperiam. Error nesciunt eligendi dignissimos nemo optio saepe aut.<br /></p><h2>Possible still society manage sure culture begin. </h2>\n<p><strong>Less shoulder service exist service condition. Opportunity staff evening clear seem us onto.</strong></p>\n\n\n\n<p>Quis nisi iusto rem facilis rem quo. Facilis libero qui incidunt. Inventore explicabo asperiores eaque dolore. Difference like moment memory. Garden rise here. Team southern meet morning. Consequatur eaque excepturi veritatis dolore sed. Accusamus commodi officiis consequatur nobis. Illo dolore aperiam quas ratione dolor velit. Right mother action amount already leg. When apply particularly environmental teacher subject military success. Free when top wide financial step. Pointe précieux distinguer haute amuser joindre. Mine caresser exemple prévenir fonction roche. Sembler revenir devant joli société vite d\'autres oui.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 156, 1, 'Drahomir posteby mach Dj52 K Np Z5 Sc unsplash', '2020-11-07 14:07:35', '2020-11-07 14:07:35', '330f0300-0ac4-44f6-afc3-cfd212ebb087', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 157, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:07:39', '2020-11-07 14:36:08', '462cbc7b-e928-44fd-8257-262bd69f80e7', '<p>Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 158, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:07:39', '2020-11-07 14:07:39', 'a635b34f-74f7-4eb5-ae29-f6e6b48ef93f', '<p>Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 159, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:36:08', '2020-11-07 14:36:08', 'ac30b66d-f133-4ff0-9ee6-19ac3526c056', '<p>Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan. Window drop follow top buy different someone half. Stay generation stuff Congress decision. Include off me agreement question spend plan.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 160, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:36:20', '2020-11-07 14:36:20', 'daa89d98-14ab-450c-9e51-0a2d1c6c543b', '<p>Voice a happen thank development their. Man scene discuss democratic. Else boy listen compare. Réveiller docteur fier observer plutôt prendre falloir. Rapporter roche blanc blanc sauver bois lèvre. Cou curiosité d\'autres spectacle réalité. Terreur figurer dangereux marcher. Calme réveiller vue fait. Lui franc égal même anglais lune. Dolorum commodi fugiat necessitatibus corrupti. Eius fugit eos aperiam. Error nesciunt eligendi dignissimos nemo optio saepe aut.<br /></p><h2>Possible still society manage sure culture begin. </h2>\n<p><strong>Less shoulder service exist service condition. Opportunity staff evening clear seem us onto.</strong></p>\n\n\n\n<p>Quis nisi iusto rem facilis rem quo. Facilis libero qui incidunt. Inventore explicabo asperiores eaque dolore. Difference like moment memory. Garden rise here. Team southern meet morning. Consequatur eaque excepturi veritatis dolore sed. Accusamus commodi officiis consequatur nobis. Illo dolore aperiam quas ratione dolor velit. Right mother action amount already leg. When apply particularly environmental teacher subject military success. Free when top wide financial step. Pointe précieux distinguer haute amuser joindre. Mine caresser exemple prévenir fonction roche. Sembler revenir devant joli société vite d\'autres oui.</p>\n\n\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 161, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:36:31', '2020-11-07 14:36:31', 'e92db9b9-7333-4d71-9889-250006b75efe', '<h2>Mission most industry southern. </h2>\n<p>Shoulder fire case soon case since religious cause. Last on but enough player.Doloremque nihil nihil hic. Facilis quisquam nostrum laboriosam ab. Similique excepturi magni fugiat. Purpose receive structure line follow value. Summer receive myself air agreement simply fly. Stock time discussion.</p>\n\n\n<p><strong>Port vie compagnie prière nommer. Animal vérité mari révolution terreur fête.</strong> Rue confondre recevoir dur temps départ. Premier coeur rôle inquiétude. Céder auquel quatre creuser raison. Soi grave écraser montagne Create simply property structure become. Goal third someone herself country. Race well everyone company Eum cupiditate cumque reiciendis explicabo assumenda odio odit. Nulla aut eligendi maiores nam. Sequi quaerat culpa sint neque quae sit officiis.</p>\n\n\n\n<p>In fugit tempora amet blanditiis aspernatur. Reiciendis consequatur laudantium modi quidem. Aut eligendi officiis ducimus officia distinctio Ad recusandae harum velit. Molestiae a in quisquam quam sunt quasi. Ut modi nostrum necessitatibus eligendi fugit iure qui Hic deleniti labore eveniet eius corporis error dolore. Qui laboriosam labore tempore dolor repellat. Laboriosam veniam perferendis necessitatibus culpa inventore.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 162, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:36:44', '2020-11-07 14:36:44', 'd1161b03-1194-4dc9-ab16-472d493e8290', '<p>Dolor maxime quidem ab expedita iure tenetur. Alias ab mollitia doloremque veritatis iure repudiandae. Reiciendis sunt repellat odit quidem. Voluptatem blanditiis eligendi. Nulla suscipit distinctio incidunt architecto non. Saepe cum a cum consectetur maxime adipisci. Accusantium dolorum officiis vel. Neque distinctio quae cumque facere et. Cumque quod rerum sint quas. Neque praesentium itaque eos illo veniam consequatur. Necessitatibus laborum dolores facilis eius sequi. Cumque ut explicabo vero cupiditate occaecati. Corrupti accusamus provident ratione consequuntur cum. Quod perferendis laborum veniam dicta in. Totam nihil quaerat laboriosam sapiente enim incidunt quam.</p><h2>User haut naturel tout musique parvenir reconnaître intérieur. </h2>\n<p><strong>Puis caractère possible discuter rester accomplir</strong>. Parce Que présent différent violence important pouvoir corde mais. Since professor notice service. Shoulder huge nature indicate buy question. List class stage. Similique fugiat fuga qui tempora sint iusto. Explicabo placeat corrupti sit dolorem. Sequi illum numquam libero id. Consentir preuve douceur salle direction protéger. Dormir rapide chiffre envoyer. Tenter aide souffrance bouche vague secours. Mollitia veniam a voluptas at delectus. Amet reiciendis est doloribus tempore odit dolore. Aperiam quidem eaque illum porro. As citizen theory do reach be dream cultural. Water no continue receive least to where. Support bank sport action my air financial daughter.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 163, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:36:55', '2020-11-07 14:36:55', '46163726-bead-402e-834e-f93474de3bf2', '<p>Franchir bête pouvoir appel cent. Société voici partager devenir tempête mon chasser. Voici classe prix prix désigner jambe intérieur. Laborum aspernatur autem. Cum molestias doloribus natus. Laboriosam maiores inventore aspernatur in. </p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 164, 1, 'This is a wide container title stretching two lines', '2020-11-07 14:37:10', '2020-11-07 14:37:10', 'b6a12ee6-0e94-419c-b437-e9550124a56d', '<p>Order but role production. Hair analysis risk put PM pretty particular. Remain TV prove when same. Nihil tempore debitis molestias iure hic. Rerum maiores rerum distinctio. Magnam quibusdam sit doloribus eligendi omnis iure illum</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 165, 1, 'Home', '2020-11-07 15:17:22', '2020-11-07 15:17:22', '0dafcc54-9bea-4967-8ea5-c26820dd8500', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', NULL, NULL, NULL, NULL, NULL),
(130, 169, 1, 'Home', '2020-11-07 15:18:30', '2020-11-07 15:18:30', 'e58981c7-a472-4ffc-b148-1fd7f7091a0c', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Quia eveniet odit praesentium nulla. Facilis cumque repudiandae deleniti. Commodi ratione voluptate alias aliquam officiis magni. Non ducimus veniam id facere adipisci. Dolorem voluptatibus soluta illum odit voluptate iusto. Laboriosam suscipit deserunt ratione porro. A odio dignissimos dolor quasi sint. Temporibus commodi provident laborum. Esse deserunt aspernatur quia quaerat aliquid magnam. Iure nobis voluptatum recusandae ratione. Similique saepe voluptas magni omnis.</p>', NULL, NULL, NULL, NULL),
(131, 173, 1, 'Screenshot 2020 11 07 at 15 18 58', '2020-11-07 15:19:51', '2020-11-07 15:19:51', '4600a265-ade1-402e-9b0c-276941cec251', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 174, 1, 'Home', '2020-11-07 15:19:54', '2020-11-07 15:19:54', 'e076d7c0-73df-4084-867d-734dd529da6e', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Quia eveniet odit praesentium nulla. Facilis cumque repudiandae deleniti. Commodi ratione voluptate alias aliquam officiis magni. Non ducimus veniam id facere adipisci. Dolorem voluptatibus soluta illum odit voluptate iusto. Laboriosam suscipit deserunt ratione porro. A odio dignissimos dolor quasi sint. Temporibus commodi provident laborum. Esse deserunt aspernatur quia quaerat aliquid magnam. Iure nobis voluptatum recusandae ratione. Similique saepe voluptas magni omnis.</p>', NULL, NULL, NULL, NULL),
(133, 178, 1, 'Home', '2020-11-07 15:26:01', '2020-11-07 15:26:01', 'eb48c283-5315-438c-9ccf-b191abb095b9', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Quia eveniet odit praesentium nulla. Facilis cumque repudiandae deleniti. Commodi ratione voluptate alias aliquam officiis magni. Non ducimus veniam id facere adipisci.</p>', NULL, NULL, NULL, NULL),
(134, 182, 1, 'Home', '2020-11-07 15:26:20', '2020-11-07 15:26:20', '2cc608fe-e29a-4291-9078-eddfb760bdc3', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa.</p>', NULL, NULL, NULL, NULL),
(135, 186, 1, 'Home', '2020-11-07 15:26:38', '2020-11-07 15:26:38', '720230ab-5381-476d-8817-8b5d00f5c54c', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, NULL, NULL, NULL),
(136, 190, 1, 'Home', '2020-11-07 15:35:13', '2020-11-07 15:35:13', 'c038263e-0e82-4b00-affe-0e147c74fd9a', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, NULL, NULL, NULL),
(137, 194, 1, 'Home', '2020-11-07 15:35:30', '2020-11-07 15:35:30', 'dee964a5-bf40-463b-81fb-82f65fd8727e', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, NULL, NULL, NULL),
(138, 198, 1, 'Home', '2020-11-07 15:49:37', '2020-11-07 15:49:37', '26e7171a-050a-4319-803d-2f2cff23b6e0', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, NULL, NULL, NULL),
(139, 202, 1, 'Home', '2020-11-07 15:51:15', '2020-11-07 15:51:15', '6c33bfcc-609f-4fbc-bba6-42b51f5bd27c', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', NULL, NULL),
(140, 206, 1, 'Home', '2020-11-07 15:53:21', '2020-11-07 15:53:21', '6c897cdd-4374-4667-8cbd-f6cc72a4deaa', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', NULL, NULL),
(141, 210, 1, 'Home', '2020-11-07 15:53:43', '2020-11-07 15:53:43', 'c72ed8f1-e442-4410-bb6a-d38f002ae20b', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', NULL, NULL),
(142, 214, 1, 'Home', '2020-11-07 15:54:50', '2020-11-07 15:54:50', '459698b5-90f0-40a1-8f6a-8d3d6ce2055a', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', NULL, NULL),
(143, 218, 1, 'Home', '2020-11-07 15:55:01', '2020-11-07 15:55:01', '13e89ec3-efef-456e-a9ad-b227076fa833', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2>Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', 'Button Text', NULL),
(144, 222, 1, 'Services', '2020-11-07 16:27:00', '2020-11-07 16:27:00', 'e4b6dab8-4b60-4dc8-a27c-f0ccd3231faa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 223, 1, 'Services', '2020-11-07 16:27:00', '2020-11-07 16:27:00', 'a3420bcd-7912-425f-a4c9-60839e5c72da', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 224, 1, 'Case Studies', '2020-11-07 16:27:43', '2020-11-07 16:27:43', '58b645f0-0e6b-4145-80dd-99a3e1557acd', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 225, 1, 'Case Studies', '2020-11-07 16:27:43', '2020-11-07 16:27:43', '947cc01c-62aa-4f1d-9fee-2436a98984e1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 228, 1, 'Contact', '2020-11-07 16:31:13', '2020-11-07 16:31:13', '86197add-29e2-4d6b-af0e-9e026676df30', '<h2>Day possible safe win attack woman rest. </h2>\n<p><strong>Simply million never style our amount end. Wife happy let whose office four.</strong></p>\n<p>Per he author like. Meet box city rest. Century speech what question accept. Service may election of country keep around. Clearly small various past. Perform shake drop race while measure drive. Fuga minima aperiam ipsam commodi sequi ipsam perspiciatis. Quos eum eligendi repudiandae nemo. Sint suscipit debitis reiciendis aspernatur voluptatum voluptatem quia.</p>\n\n\n<p>Joue sentier papa plusieurs face. Repas toit vers déchirer diriger dehors. Tour secrétaire paquet. Harum porro voluptatum minima deleniti eaque culpa nemo. Ullam delectus atque molestias. Consequatur cumque tempora expedita. Suscipit maxime eveniet eaque quam rem architecto. Ipsam tempore optio quam. Laudantium eos sit nulla iure.</p>\n\n\n<p>De mériter de étranger coûter unique fortune. Fleur avis propre fort révéler. Réflexion importer vide vêtement. Chaud aller après moitié secours peine animal. Suivant rang endroit ceci. Souhaiter portier rouge ton. Suivant vision semaine besoin poitrine cesser. Chaîne loin fin grand jusque. Lisser riche élever.</p>\n\n', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 232, 1, NULL, '2020-11-07 17:13:51', '2020-11-07 17:20:32', '065863d0-a819-4a75-92c6-3afef9c360cb', NULL, NULL, NULL, 'Services', NULL, NULL, NULL),
(150, 236, 1, NULL, '2020-11-07 17:25:14', '2020-11-07 17:26:31', '5c75f54f-5504-4265-aa6e-25c5eb992033', NULL, NULL, NULL, 'Case Studies', NULL, NULL, NULL),
(151, 242, 1, 'Home', '2020-11-07 22:28:27', '2020-11-07 22:28:27', 'f0a41186-682e-4a5d-8efb-96b4d676c987', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2 class=\"h1\">Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', 'Button Text', NULL),
(152, 246, 1, 'Home', '2020-11-07 22:31:16', '2020-11-07 22:31:16', '96bd6127-7188-4871-877b-2e24cb44513c', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2 class=\"h1\">Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', 'Button Text', NULL),
(153, 250, 1, 'Home', '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'be59cc95-b357-4d67-9b54-cfff881ec55b', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2 class=\"h1\">Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', 'Button Text', NULL),
(154, 254, 1, 'Ezgif com gif maker', '2020-11-07 23:19:43', '2020-11-07 23:19:43', 'd8c90b35-3896-4b3b-b2d5-6ab7de6f2f5e', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 255, 1, 'Home', '2020-11-07 23:19:45', '2020-11-07 23:19:45', '18d46495-8390-408e-a085-3e5ca2b042ff', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2 class=\"h1\">Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', 'Button Text', NULL),
(156, 259, 1, 'Home', '2020-11-08 11:07:15', '2020-11-08 11:07:15', '1e8d3f0b-6530-4dcf-bd3d-56e87a298bb1', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2 class=\"h1\">Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2>A message followed by a way to get in touch</h2><h2>+44 (0) 1234 567 890</h2>', 'Button Text', NULL),
(157, 263, 1, 'Home', '2020-11-08 11:29:32', '2020-11-08 11:29:32', '010ae218-d2cd-48bc-936a-eab5eb033d51', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2 class=\"h1\">Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2 class=\"h1\">A message followed by a way to get in touch</h2>\n<h2 class=\"h1\">+44 (0) 1234 567 890</h2>', 'Button Text', NULL),
(158, 267, 1, 'Home', '2020-11-08 11:39:57', '2020-11-08 11:39:57', '3a1495a5-da6b-48c1-9fbb-8cfa90e4601a', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Button Text', '<h2 class=\"h1\">Here we have a two line display</h2>\n<p>Esse minima voluptatum et officiis. Similique ratione atque iusto ipsam. Vel iure unde alias. Impedit labore sunt voluptates nemo culpa. Card someone road machine pull mean require. Partner weight that any deep. Another point PM field state close.</p>', NULL, '<h2 class=\"h1\">A message followed by a way to get in touch</h2>\n<h2>+44 (0) 1234 567 890</h2>', 'Button Text', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deprecationerrors`
--

INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:18', '2020-11-06 17:36:33', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 18, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":78,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-06 17:36:33', '2020-11-06 17:36:33', 'e5e55535-a19d-442d-baa3-ad509eb167b9'),
(13, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:20', '2020-11-06 17:38:10', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 20, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":85,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/f5/f5bc1db1283f27c8b417e092c60e6e0332e4a36a80f6ca2930b1399b15d23a2e.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-us\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-us\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-us\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-us\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-us\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-06 17:38:10', '2020-11-06 17:38:10', '4a2cd847-bb32-41e6-941f-db1a74bf8a8f'),
(17, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:19', '2020-11-06 18:41:31', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 19, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":81,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-06 18:41:31', '2020-11-06 18:41:31', '9810b240-772c-4304-a66d-12aff194c1d8'),
(63, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Extension/CoreExtension.php:666', '2020-11-09 14:23:06', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Extension/CoreExtension.php', 666, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Extension/CoreExtension.php\",\"line\":666,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":105,\"class\":null,\"method\":\"twig_slice\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, craft\\\\elements\\\\db\\\\MatrixBlockQuery, 3, 6\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-09 14:23:06', '2020-11-09 14:23:06', 'f0d195b3-745f-4583-84f4-d917bda929a9');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(196, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig:5', '2020-11-09 14:23:06', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig', 5, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":59,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":131,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-09 14:23:06', '2020-11-09 14:23:06', '60331587-49fd-464c-9fda-6afe982ab792'),
(305, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig:14', '2020-11-08 15:02:00', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig', 14, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":101,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":132,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-08 15:02:00', '2020-11-08 15:02:00', 'c280ec55-3b2b-4ec1-895b-3be1b04976bb'),
(368, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig:13', '2020-11-06 21:08:10', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig', 13, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":83,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":124,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-06 21:08:10', '2020-11-06 21:08:10', 'b028d89e-4534-47e0-9fcb-09d08ec6a18b'),
(451, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig:6', '2020-11-06 21:21:00', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig', 6, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":60,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":124,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-06 21:21:00', '2020-11-06 21:21:00', 'd98b0bd9-fd42-4147-a99d-285417009727');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(452, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig:15', '2020-11-09 14:23:06', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/home.twig', 15, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":102,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":131,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-09 14:23:06', '2020-11-09 14:23:06', 'ec28b03c-8da3-49bc-9b79-ea3ed83c6ff7'),
(1570, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:51', '2020-11-07 17:18:51', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 51, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":156,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 17:18:51', '2020-11-07 17:18:51', 'f4f883c3-637e-4714-9a62-d9e9b4f06a03'),
(1571, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:64', '2020-11-07 18:00:46', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 64, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":197,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 18:00:46', '2020-11-07 18:00:46', '6dacbda5-d139-4511-993c-c5283a9726ed'),
(1575, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:53', '2020-11-07 18:00:46', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 53, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":162,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 18:00:46', '2020-11-07 18:00:46', '25c878e0-2b96-4fe1-b723-efe0969878bd');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1576, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:66', '2020-11-07 18:22:44', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 66, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":199,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 18:22:44', '2020-11-07 18:22:44', '4cecfe2e-f854-4469-b826-85217fc6d7ff'),
(1580, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:54', '2020-11-07 17:23:25', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 54, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":166,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 17:23:25', '2020-11-07 17:23:25', '2e79a082-7177-47aa-8882-54dc083d143f'),
(1581, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:68', '2020-11-07 23:12:51', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 68, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":201,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/f5/f5bc1db1283f27c8b417e092c60e6e0332e4a36a80f6ca2930b1399b15d23a2e.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 23:12:51', '2020-11-07 23:12:51', '539518b4-2737-4a7e-940f-10c70bea12ca'),
(1607, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:77', '2020-11-07 17:28:01', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 77, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":233,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 17:28:01', '2020-11-07 17:28:01', '0d7d01ac-ee6d-4fd5-9fac-43d8536edf5e');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1625, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:80', '2020-11-07 17:31:11', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 80, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":236,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 17:31:11', '2020-11-07 17:31:11', 'de36aa85-b36d-45bd-a3e1-6fa5a00d5c62'),
(1649, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:83', '2020-11-07 18:00:46', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 83, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":236,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 18:00:46', '2020-11-07 18:00:46', '65f36e6a-0222-48fb-822e-d1b7d153b2c0'),
(1839, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:55', '2020-11-07 18:22:44', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 55, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":164,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 18:22:44', '2020-11-07 18:22:44', '7f196e51-7dca-4bf6-8931-173fe56d3c3c'),
(1841, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:85', '2020-11-07 18:22:44', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 85, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":238,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 18:22:44', '2020-11-07 18:22:44', '12d30bb9-977d-4b9b-be5d-635ffccce5df');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2311, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:57', '2020-11-07 23:12:51', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 57, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":166,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/f5/f5bc1db1283f27c8b417e092c60e6e0332e4a36a80f6ca2930b1399b15d23a2e.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 23:12:51', '2020-11-07 23:12:51', '705f2064-401d-4973-b30f-22eafaed94a0'),
(2313, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:87', '2020-11-07 23:12:51', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 87, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":240,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/f5/f5bc1db1283f27c8b417e092c60e6e0332e4a36a80f6ca2930b1399b15d23a2e.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_3cbc58ed5ca8b2106ba043ece4634f663de7cb9e158e726a5efa4aaeeb4218cc\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"general\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"general\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"contact\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-07 23:12:51', '2020-11-07 23:12:51', '209609fe-3922-4cb5-88ba-70de711f1aec'),
(4143, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:58', '2020-11-09 14:23:06', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 58, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":167,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-09 14:23:06', '2020-11-09 14:23:06', 'b42f1b89-aa2e-4105-8ed3-703e3d4ef906'),
(4144, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:69', '2020-11-09 14:23:06', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 69, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":202,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-09 14:23:06', '2020-11-09 14:23:06', 'd6e2abea-75ed-49b6-a6a7-46ab25795729');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4145, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:88', '2020-11-09 14:23:06', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 88, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":241,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/1d/1df66fcbe11b5fe683b245af71b10c307ea9d8a1d840286edfdf8f0fe0ba97ab.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_2180f8943b5c2f121255ce78a51cccde3bec312fbd555c3b456aff3c2507b1cf\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-09 14:23:06', '2020-11-09 14:23:06', '4506a4e1-854b-4493-bc62-03ed2a1188be'),
(4849, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:59', '2020-11-08 15:07:10', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 59, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":168,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/b5/b5638f1d48aee06c9fb114d57e3fbe73ecf15f135b00874c0aaf69277230409e.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-08 15:07:10', '2020-11-08 15:07:10', '68cee652-6fde-4f3d-b9b0-4b0c862822d6'),
(4850, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:70', '2020-11-08 15:07:10', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 70, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":203,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/b5/b5638f1d48aee06c9fb114d57e3fbe73ecf15f135b00874c0aaf69277230409e.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-08 15:07:10', '2020-11-08 15:07:10', '63506383-51cd-4e3c-b1ae-2ed3dba7ab39'),
(4851, 'ElementQuery::getIterator()', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig:89', '2020-11-08 15:07:10', '/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/templates/index.twig', 89, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":568,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/11/11fb7f611f9bee5d4bd501a3b1f561cb36567cdc83118d76127d42c50833f7fb.php\",\"line\":242,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_8294f04bebc2e9aac31aa897e3ccd3aa34726e7f81f995c7d74e8eace5561704\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/storage/runtime/compiled_templates/b5/b5638f1d48aee06c9fb114d57e3fbe73ecf15f135b00874c0aaf69277230409e.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_dc2114c07dddf3d2f1c615b821ce7763953b78aa9fbd58485f3c929bd5b50d76\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"casestudies/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"casestudies/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"case-studies/this-is-a-wide-container-title-stretching-two-lines\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/georgehawthorne/PhpstormProjects/mamp/craftiverse/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-11-08 15:07:10', '2020-11-08 15:07:10', '885fd456-9188-4b45-bc02-7667964a652b');

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `sourceId`, `creatorId`, `name`, `notes`, `trackChanges`, `dateLastMerged`) VALUES
(10, NULL, 1, 'First draft', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2020-11-06 16:46:00', '2020-11-06 16:46:00', NULL, 'c4e66df0-9405-4456-b14b-7aa3525c4055'),
(2, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 16:46:55', '2020-11-08 11:39:56', NULL, 'a1ed7a4e-0028-4b70-9098-dc4dc34c2ec9'),
(3, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 16:46:55', '2020-11-06 16:46:55', NULL, 'da2756d9-1c59-41d6-8703-ca54a6dff0d7'),
(4, NULL, 2, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 16:55:02', '2020-11-06 16:55:02', NULL, '4fb8bc3b-9328-4026-9c74-6e2fd05fd96f'),
(5, NULL, 3, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 16:55:42', '2020-11-06 16:55:42', NULL, '86e25867-6064-47c1-906b-e6e6ddd7d4f5'),
(6, NULL, 4, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:11:23', '2020-11-06 17:11:23', NULL, '0ea4b460-f772-429a-8a36-890e92263af7'),
(7, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-06 17:12:04', '2020-11-06 17:12:04', NULL, '85ca4338-9001-42cc-9a92-5f09de53c4b9'),
(8, NULL, 5, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:12:08', '2020-11-06 17:12:08', NULL, 'b8c13957-6a0e-4e1f-b252-673780e6f5c2'),
(9, NULL, 6, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:17:25', '2020-11-06 17:17:25', NULL, '69a659cb-81ca-4574-b437-6f6d0dc28039'),
(10, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:28:49', '2020-11-06 17:30:50', '2020-11-06 20:14:16', '9e544632-bf1f-4147-ab0a-714f2dd0aee3'),
(11, NULL, 7, 3, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:28:49', '2020-11-06 17:28:49', '2020-11-06 20:14:16', '74889c12-6c14-42c0-b91f-c70ef8c67d44'),
(12, NULL, 8, 3, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:28:50', '2020-11-06 17:28:50', '2020-11-06 20:14:16', '0a5c95fd-ff87-41e6-88b8-e600d64930d0'),
(13, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:29:11', '2020-11-06 17:31:04', '2020-11-06 20:14:23', '8309028d-9f69-4357-927c-743dd297c047'),
(14, NULL, 9, 4, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:29:11', '2020-11-06 17:29:11', '2020-11-06 20:14:23', '7552f8a2-efb5-4e09-8f56-da6e11389d4c'),
(15, NULL, 10, 3, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:30:06', '2020-11-06 17:30:06', '2020-11-06 20:14:16', 'ab904c8f-72ef-4bb2-b044-7e8db5fcc6d6'),
(16, NULL, 11, 4, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:30:18', '2020-11-06 17:30:18', '2020-11-06 20:14:23', 'b7fa1015-1253-4a3e-8110-a5d6dd486cd1'),
(17, NULL, 12, 3, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:30:50', '2020-11-06 17:30:50', '2020-11-06 20:14:16', 'a72f9460-6e1f-4fb1-a159-162f401a71ec'),
(18, NULL, 13, 4, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:31:04', '2020-11-06 17:31:04', '2020-11-06 20:14:23', '86a67eb9-4b59-4eba-a9e7-75e127fa351d'),
(19, NULL, NULL, 6, 'craft\\elements\\GlobalSet', 1, 0, '2020-11-06 17:34:01', '2020-11-07 20:49:26', NULL, '9ef9083d-8fc7-449b-9ab6-df9e49c4a489'),
(20, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 17:36:12', '2020-11-07 20:49:26', NULL, 'bdba13c6-ce37-4219-aa78-43540f6d7bea'),
(21, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 17:36:12', '2020-11-06 18:40:07', '2020-11-07 12:51:40', 'a5c47df1-78fb-4877-9195-08954d0c9aa9'),
(22, NULL, NULL, 7, 'craft\\elements\\GlobalSet', 1, 0, '2020-11-06 17:40:07', '2020-11-07 22:40:07', NULL, '861ed63f-2023-4694-874d-eabe7710d75d'),
(24, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:47:32', '2020-11-06 17:47:31', '2020-11-06 20:14:20', '77c99721-a6cd-420a-837a-597a1471971a'),
(25, NULL, 14, 8, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:47:31', '2020-11-06 17:47:31', '2020-11-06 20:14:20', 'a4c2d0c5-d218-4eca-96af-acc80f0c705f'),
(27, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:47:45', '2020-11-06 17:47:45', '2020-11-06 20:14:20', 'f996b814-9acb-4f66-a613-0e673c41fe44'),
(28, NULL, 15, 8, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:47:45', '2020-11-06 17:47:45', '2020-11-06 20:14:20', 'f1cdccef-52dc-41f7-804d-ce747c0d7bcc'),
(30, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:48:00', '2020-11-06 17:48:00', '2020-11-06 20:14:20', '4d9964b5-4aa0-44fa-a7e7-ad61fc145bc6'),
(31, NULL, 16, 8, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:48:00', '2020-11-06 17:48:00', '2020-11-06 20:14:20', '0b4e6c52-46ea-4994-a68d-25ae813220e8'),
(32, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:54:31', '2020-11-06 17:54:32', '2020-11-06 20:14:18', '4a061eb6-3368-4c9e-8e94-c19ccf74668c'),
(33, NULL, 17, 9, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:54:31', '2020-11-06 17:54:31', '2020-11-06 20:14:18', 'd396f819-a0b4-4af7-8ae8-70e7a2752cc3'),
(34, NULL, 18, 9, 'craft\\elements\\Entry', 1, 0, '2020-11-06 17:54:32', '2020-11-06 17:54:32', '2020-11-06 20:14:18', '83f7e0be-17ba-4543-bdba-f694315bc8a8'),
(35, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 17:54:54', '2020-11-06 18:40:07', '2020-11-07 12:51:40', '44885f81-4216-41b0-be47-f5a12796fefc'),
(36, NULL, 19, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 18:31:50', '2020-11-06 18:31:50', NULL, '29cf4df0-dd18-41ac-b6c7-2e62b09d36d0'),
(37, NULL, 20, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 18:32:23', '2020-11-06 18:32:23', NULL, '2505a68b-9a81-46dc-a032-4c4f02cd0a33'),
(38, NULL, 21, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 18:33:04', '2020-11-06 18:33:04', NULL, 'd31f3891-c5b9-41e1-84f9-7681800920ea'),
(39, NULL, 22, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 18:35:03', '2020-11-06 18:35:03', NULL, 'a8c6983d-ac67-4551-a3ff-f61083934b39'),
(40, NULL, 23, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 18:35:28', '2020-11-06 18:35:28', NULL, 'd3da0b71-b7e0-4892-a78b-51523e6dc33c'),
(41, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 18:40:07', '2020-11-06 18:40:07', '2020-11-07 12:51:40', 'f96d5d84-a56a-4ddd-88f6-5415d59022ef'),
(42, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 18:40:07', '2020-11-06 18:40:07', '2020-11-07 12:51:40', 'b3c3e767-210f-422c-8e35-0814f900319d'),
(43, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 18:40:07', '2020-11-07 20:49:26', NULL, '2beb128d-782b-4148-a908-529108ca2c6d'),
(44, NULL, 24, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 19:32:06', '2020-11-06 19:32:06', NULL, '58b00c1f-7a2c-4559-b5e8-9f6f56d34d22'),
(45, NULL, 25, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 19:41:07', '2020-11-06 19:41:07', NULL, '0bcf13dd-680d-45c0-a3f3-359e37f3c67f'),
(46, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-06 19:46:56', '2020-11-06 19:46:56', NULL, '25df40b7-64d8-465c-a25a-2d88939981a1'),
(47, NULL, 26, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 19:46:59', '2020-11-06 19:46:59', NULL, 'e90fe101-b090-4850-9489-05e9070ba480'),
(48, NULL, 27, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 19:47:43', '2020-11-06 19:47:43', NULL, '146b28c4-5110-4db2-8770-e7999bb03ca8'),
(49, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 19:50:36', '2020-11-06 19:50:36', NULL, '7739274e-7d8b-46ba-bea2-92e1dc2e3b61'),
(50, NULL, 28, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 19:50:36', '2020-11-06 19:50:36', NULL, 'ea1ca499-2d46-4062-8113-b8f06db7fe1b'),
(51, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 19:50:36', '2020-11-06 19:50:36', NULL, '6344088d-6851-4bfd-9e35-d8758bb34df9'),
(52, NULL, 29, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 19:57:30', '2020-11-06 19:57:30', NULL, '8452c499-374b-449d-9867-baad8bc55066'),
(53, NULL, 30, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 20:18:06', '2020-11-06 20:18:06', NULL, '1401e36a-095b-43c6-a2aa-372dbc5f6546'),
(54, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 20:18:53', '2020-11-08 11:07:15', NULL, '92e09249-79ce-44d2-8e3f-a19c65c684a5'),
(55, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 20:18:53', '2020-11-08 11:07:15', NULL, '5cc5a09f-accf-418e-b5f3-b91d73a1415f'),
(56, NULL, 31, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 20:18:53', '2020-11-06 20:18:53', NULL, '1f0e8ada-1a08-4446-bff0-de8a48e645ec'),
(57, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 20:18:53', '2020-11-06 20:18:53', NULL, '6643b009-a028-41a7-bbb5-e9f80e2fce53'),
(58, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 20:18:53', '2020-11-06 20:18:53', NULL, 'aa29fc8c-2ec5-4c3a-a04a-263cedc3da19'),
(59, NULL, 32, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 20:59:50', '2020-11-06 20:59:50', NULL, 'eca0feff-a185-46b2-abda-a81fd0388164'),
(60, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 20:59:50', '2020-11-06 20:59:50', NULL, '0f2de3a2-a9d4-474b-b487-d9eede574a82'),
(61, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 20:59:50', '2020-11-06 20:59:50', NULL, '1d7c7b5d-82ec-4d3e-90c4-9697456e1889'),
(62, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 21:07:08', '2020-11-08 11:07:15', NULL, 'de75c153-6800-4303-89ac-4a0be9dcd88b'),
(63, NULL, 33, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 21:07:08', '2020-11-06 21:07:08', NULL, '30acf01b-50fc-4ff0-92cb-8c4e5e43b92d'),
(64, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 21:07:08', '2020-11-06 21:07:08', NULL, 'f22c6392-d051-49da-9e1e-3ea3faf25f69'),
(65, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 21:07:08', '2020-11-06 21:07:08', NULL, '7f956701-7d5d-4f09-996a-a4755b4045b5'),
(66, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 21:07:08', '2020-11-06 21:07:08', NULL, '7ea60c64-86c4-48f4-9c09-20ba294236be'),
(67, NULL, 34, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 21:24:15', '2020-11-06 21:24:15', NULL, '27608669-0c24-4f56-ae08-649a0cbc73f6'),
(68, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 21:24:15', '2020-11-06 21:07:08', NULL, '071977e9-f706-4701-91b2-49e9fdb2f903'),
(69, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 21:24:15', '2020-11-06 21:07:08', NULL, '289bd140-c4dd-4f72-856a-cb8cb015873f'),
(70, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 21:24:15', '2020-11-06 21:07:08', NULL, '51ade2ea-bf61-4100-85e5-d91d843e0225'),
(71, NULL, 35, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 22:33:41', '2020-11-06 22:33:41', NULL, 'ef7f14a9-e746-4a18-838f-d147b4054cf4'),
(72, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:33:41', '2020-11-06 21:07:08', NULL, 'ce5179c8-8e92-451b-8171-4b42c14fca85'),
(73, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:33:42', '2020-11-06 21:07:08', NULL, '3d821de9-4380-40b1-88cb-32fccaf8c8cd'),
(74, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:33:42', '2020-11-06 21:07:08', NULL, '46f0862e-6f8b-4305-addf-adc1e7f85b00'),
(75, NULL, 36, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 22:33:55', '2020-11-06 22:33:55', NULL, '6753d354-abf0-4d7e-b529-ba65ca7a03cd'),
(76, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:33:55', '2020-11-06 21:07:08', NULL, 'aeb1d27c-57b1-4dc1-a625-e8be6e4cb08d'),
(77, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:33:55', '2020-11-06 21:07:08', NULL, '88664fd3-a1e3-4068-86fa-1030bf1a45d0'),
(78, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:33:55', '2020-11-06 21:07:08', NULL, '871223de-e36c-40bc-8914-48c044cb083f'),
(79, NULL, 37, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 22:43:07', '2020-11-06 22:43:07', NULL, '6d652f91-aecd-4ad5-9d18-a75a15d83e7d'),
(80, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:07', '2020-11-06 21:07:08', NULL, '2df8a5b0-c570-42c4-8340-d4484caac684'),
(81, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:07', '2020-11-06 21:07:08', NULL, '122ab4b1-40f1-402f-943c-f3295f0fdc08'),
(82, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:07', '2020-11-06 21:07:08', NULL, 'c28654c6-8525-40b0-a214-e692836591e1'),
(83, NULL, 38, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 22:43:24', '2020-11-06 22:43:24', NULL, '49427a49-1281-454a-b784-549168bd80b4'),
(84, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:24', '2020-11-06 21:07:08', NULL, '88afd964-9cbd-4903-a06d-50269fa4e6f3'),
(85, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:24', '2020-11-06 21:07:08', NULL, 'b8226197-f7c2-4ea1-b990-a96495f7a116'),
(86, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:24', '2020-11-06 21:07:08', NULL, '13b64cdd-b199-43b4-bd9e-ded434152a29'),
(87, NULL, 39, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-06 22:43:47', '2020-11-06 22:43:47', NULL, 'dcb1a000-cc4b-406d-900c-8491d81467ac'),
(88, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:47', '2020-11-06 21:07:08', NULL, '6d8c58a8-5e95-409a-a486-364a3b047b54'),
(89, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:47', '2020-11-06 21:07:08', NULL, '9ec411cb-0bbf-455b-9bc9-4e0a688c0ff9'),
(90, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-06 22:43:47', '2020-11-06 21:07:08', NULL, '7aaee284-73d2-44e8-aa7a-2f8fcb514e06'),
(92, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 09:42:48', '2020-11-07 09:43:20', '2020-11-07 10:13:55', '9666293d-4686-4143-9568-ff063233b23c'),
(93, NULL, 40, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 09:42:48', '2020-11-07 09:42:48', '2020-11-07 10:13:55', 'a35ce993-e8e2-48f9-bb6f-0709117336f1'),
(94, NULL, 41, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 09:43:20', '2020-11-07 09:43:20', '2020-11-07 10:13:55', 'af44e031-cf5f-4e40-bb62-1d1171123b72'),
(96, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 09:43:45', '2020-11-07 09:43:45', '2020-11-07 10:13:55', '82e7608a-0b3b-4056-8efb-f66ec92c9ee3'),
(97, NULL, 42, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 09:43:45', '2020-11-07 09:43:45', '2020-11-07 10:13:55', 'f7b6086f-55f0-4a26-84a9-23817e1b9ccd'),
(99, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 09:44:08', '2020-11-07 09:44:08', '2020-11-07 10:13:55', '077cc585-b3b4-4b87-b569-835c21bb0e66'),
(100, NULL, 43, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 09:44:08', '2020-11-07 09:44:08', '2020-11-07 10:13:55', 'ff71d1bf-3176-454a-89a6-e1f1d5a71bda'),
(102, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:14:34', '2020-11-07 14:37:10', NULL, 'f9e8f2df-0c4e-4c0f-97d7-ece0b1f9fb78'),
(103, NULL, 44, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:14:34', '2020-11-07 10:14:34', NULL, '1c37cb3a-afa7-4256-9525-1598e959d4e3'),
(104, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 10:23:45', '2020-11-07 10:23:45', NULL, '0d40d4e6-b07a-4ef8-a1d6-b08cd0741fba'),
(105, NULL, 45, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:23:48', '2020-11-07 10:23:48', NULL, '03cc8432-b0a2-4ea8-a183-4c45b3e09c1d'),
(106, NULL, 46, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:23:57', '2020-11-07 10:23:57', NULL, '42cf86ec-48e5-4667-92b8-154a6d62260f'),
(108, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 10:24:05', '2020-11-07 10:24:05', NULL, '20005cee-9f31-42c9-9c5c-3d27185f979e'),
(109, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:24:20', '2020-11-07 14:36:44', NULL, '359ca971-47a4-4ffa-bd48-06fe02ef0e0c'),
(110, NULL, 47, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:24:20', '2020-11-07 10:24:20', NULL, 'f288e3c5-a842-4f2f-93bc-bb04a100ff8d'),
(112, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 10:29:33', '2020-11-07 10:29:33', NULL, '68674428-23af-4ab3-9d9a-7dd847bd7187'),
(113, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:29:34', '2020-11-07 14:36:55', NULL, 'be3713da-daf8-434f-9ba7-445e71266a82'),
(114, NULL, 48, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:29:34', '2020-11-07 10:29:34', NULL, '5c508a8a-6c48-4525-b6bc-694c6065952e'),
(115, NULL, 49, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:35:06', '2020-11-07 10:35:06', NULL, '1e4b5894-3e8f-43d1-a83f-e45942a3be9a'),
(116, NULL, NULL, 13, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:50:32', '2020-11-07 12:56:05', NULL, '345cb04f-ec3c-4d66-bb56-750d637d9c85'),
(117, NULL, 50, 13, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:50:32', '2020-11-07 10:50:32', NULL, '6452dd59-efc3-4f8d-b946-b0251a3f9153'),
(118, NULL, NULL, 14, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:50:50', '2020-11-07 16:31:13', NULL, '84f17731-3ab9-49f6-b808-7443e0ed3d9e'),
(119, NULL, 51, 14, 'craft\\elements\\Entry', 1, 0, '2020-11-07 10:50:50', '2020-11-07 10:50:50', NULL, '9a1ab488-347e-468b-ab23-8415b0e5d85f'),
(120, NULL, 52, 13, 'craft\\elements\\Entry', 1, 0, '2020-11-07 12:50:35', '2020-11-07 12:50:35', NULL, '80075f03-8c56-4bf7-9810-c0ef721bd9d1'),
(121, NULL, 53, 14, 'craft\\elements\\Entry', 1, 0, '2020-11-07 12:50:45', '2020-11-07 12:50:45', NULL, '9c30496d-2c8e-45ec-8561-5c910d3794c0'),
(122, NULL, 54, 13, 'craft\\elements\\Entry', 1, 0, '2020-11-07 12:56:05', '2020-11-07 12:56:05', NULL, '15f3cba7-0428-44db-a618-c4636d9f22f5'),
(123, NULL, 55, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 12:57:16', '2020-11-07 12:57:16', NULL, 'b5b9724a-b25d-4656-a8eb-5a2891bc32d5'),
(124, NULL, 56, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 12:58:05', '2020-11-07 12:58:05', NULL, '063eab3b-f8a5-4800-a3bf-57b8ebef5bb8'),
(125, 10, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:10:50', '2020-11-07 13:10:59', NULL, '9a77e4c9-68fe-448b-948e-dabe7f1b8a71'),
(126, NULL, 57, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:11:07', '2020-11-07 13:11:07', NULL, 'c4d82917-94cc-45d9-800c-2aa4c9e48795'),
(128, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:12:11', '2020-11-07 14:01:30', NULL, '4ae4f060-cb87-4e48-9f26-9d9ee1d7645f'),
(129, NULL, 58, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:12:11', '2020-11-07 13:12:11', NULL, '20858792-06e3-4fa6-83c4-3d4e7ba8a824'),
(130, NULL, 59, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:14:29', '2020-11-07 13:14:29', NULL, '8414d1a6-089b-4545-8da1-360863115378'),
(131, NULL, 60, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:18:14', '2020-11-07 13:18:14', NULL, 'e069bd44-3376-4705-9b5a-68708dfb19e0'),
(133, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:18:32', '2020-11-07 14:01:01', NULL, '26665535-74c4-421a-9a1a-630b22903c1a'),
(134, NULL, 61, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:18:32', '2020-11-07 13:18:32', NULL, '3e737fe8-5b64-4b06-b892-2b17020f854c'),
(136, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:18:56', '2020-11-07 14:01:15', NULL, 'b577a402-873f-4e05-906e-57452e2647cf'),
(137, NULL, 62, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 13:18:56', '2020-11-07 13:18:56', NULL, '3e833083-704b-4b09-bcd8-f0e7d32d73aa'),
(138, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 14:00:35', '2020-11-07 14:00:35', NULL, 'fc3568fb-2052-4d02-b3c3-8f8cec5a0296'),
(139, NULL, 63, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:01:01', '2020-11-07 14:01:01', NULL, 'e40c7df8-ac2d-4a52-b865-0e620a75eb4a'),
(140, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 14:01:12', '2020-11-07 14:01:12', NULL, '64dcf3ec-515d-4a00-8949-2265ca9868a7'),
(141, NULL, 64, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:01:15', '2020-11-07 14:01:15', NULL, 'b4279c48-cc5e-46a7-a610-8ac69c6a29ba'),
(142, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 14:01:27', '2020-11-07 14:01:27', NULL, '4b9483e9-faca-43a0-8747-77d075dd43f4'),
(143, NULL, 65, 15, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:01:30', '2020-11-07 14:01:30', NULL, 'be7a6435-f7c2-4573-b030-9c89627cf355'),
(145, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 14:05:27', '2020-11-07 14:05:27', NULL, '0525bf45-6eab-4c3a-9d7c-ff278e5e3eb6'),
(146, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:05:54', '2020-11-07 14:36:31', NULL, 'd95b366a-eb92-471f-ac63-0b7fe393ec06'),
(147, NULL, 66, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:05:54', '2020-11-07 14:05:54', NULL, 'fff1ed62-9e6e-48a8-aaf8-e6d071178a5b'),
(149, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:06:46', '2020-11-07 14:36:20', NULL, '9067d315-f322-49ec-bd0c-646a43f3cf21'),
(150, NULL, 67, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:06:46', '2020-11-07 14:06:46', NULL, 'd41573f5-0ce7-4460-83ad-a825387f10dc'),
(151, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 14:06:59', '2020-11-07 14:06:59', NULL, '688fd78d-cea8-4cdb-a0a5-bebb832f531f'),
(152, NULL, 68, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:07:01', '2020-11-07 14:07:01', NULL, '3844c1ba-f0d9-47dd-a2cb-7adc7027ecef'),
(153, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 14:07:10', '2020-11-07 14:07:10', NULL, '69bc667e-02c3-4eec-a46e-d212ce025169'),
(154, NULL, 69, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:07:13', '2020-11-07 14:07:13', NULL, '9d5dfaea-2d57-43ea-914a-5256c7f18d68'),
(156, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 14:07:35', '2020-11-07 14:07:35', NULL, 'd0d310b6-935c-41ca-b3df-0ba2dbcd4046'),
(157, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:07:39', '2020-11-07 14:36:08', NULL, '8a1812d6-3547-4431-b003-4f5400c75978'),
(158, NULL, 70, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:07:39', '2020-11-07 14:07:39', NULL, '476d8785-6bb9-4e2e-9223-605e7f3c458f'),
(159, NULL, 71, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:36:08', '2020-11-07 14:36:08', NULL, '81001e7c-8d84-4d5e-b4bd-536f0ef95baf'),
(160, NULL, 72, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:36:20', '2020-11-07 14:36:20', NULL, '484ac0d9-8f56-4069-b4fc-332b515ae797'),
(161, NULL, 73, 16, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:36:31', '2020-11-07 14:36:31', NULL, 'df217154-8079-47e7-b32d-7860121f2cc6'),
(162, NULL, 74, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:36:44', '2020-11-07 14:36:44', NULL, '893e6bae-a0ad-4734-a774-1e5ba8d6cfee'),
(163, NULL, 75, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:36:55', '2020-11-07 14:36:55', NULL, '33b0399f-66c0-4894-b278-5489b428f0b6'),
(164, NULL, 76, 12, 'craft\\elements\\Entry', 1, 0, '2020-11-07 14:37:10', '2020-11-07 14:37:10', NULL, '7d99d548-2d33-469f-ab08-9f5dc1c1aae1'),
(165, NULL, 77, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:17:22', '2020-11-07 15:17:22', NULL, '874c6986-d414-4e47-9964-119ac5730f2a'),
(166, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:17:22', '2020-11-06 21:07:08', NULL, '81c24b65-b77a-485f-8029-df2cfc85e975'),
(167, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:17:22', '2020-11-06 21:07:08', NULL, 'bf4b21da-a635-4fc3-80c0-58a02dfb6f8e'),
(168, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:17:22', '2020-11-06 21:07:08', NULL, '46df189f-2325-4b3c-a4b9-edc5ec16226d'),
(169, NULL, 78, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:18:30', '2020-11-07 15:18:30', NULL, '0ed22f50-ab4f-47da-839d-a310e1c79f0c'),
(170, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:18:30', '2020-11-06 21:07:08', NULL, 'd83b1729-e8db-44ed-98fc-28f66428ffe3'),
(171, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:18:30', '2020-11-06 21:07:08', NULL, 'ffe1c67f-80d1-42e4-b56e-0a4a9ced7bec'),
(172, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:18:30', '2020-11-06 21:07:08', NULL, '0fb0f0d5-ba8f-48a5-8715-a741322b48a8'),
(173, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 15:19:51', '2020-11-07 15:19:51', NULL, 'fa83c91f-b5e0-448c-9fcb-2e108051e7ce'),
(174, NULL, 79, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:19:54', '2020-11-07 15:19:54', NULL, '6e10575e-8753-41d1-be9d-eead7baf49b5'),
(175, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:19:54', '2020-11-06 21:07:08', NULL, '2ba78e65-4fe4-462f-98ae-9a61319566b2'),
(176, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:19:54', '2020-11-06 21:07:08', NULL, 'a04f0517-8b37-4fe0-bf6d-add94f01f9ba'),
(177, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:19:54', '2020-11-06 21:07:08', NULL, 'a96f1d15-8970-443b-8d7a-2d7866f1c1b3'),
(178, NULL, 80, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:26:01', '2020-11-07 15:26:01', NULL, '08b24275-d3bf-4b3e-a202-41efaa412534'),
(179, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:01', '2020-11-06 21:07:08', NULL, 'dcfda886-6a07-4607-bc4b-a763e6415264'),
(180, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:01', '2020-11-06 21:07:08', NULL, 'ee43dafa-77f9-4d9a-a7de-3541e286452c'),
(181, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:01', '2020-11-06 21:07:08', NULL, '217fa5d4-58dd-4788-92ea-575dfa5c9a2b'),
(182, NULL, 81, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:26:20', '2020-11-07 15:26:20', NULL, '4f1460a6-a465-4907-b8ca-f82a19d766dd'),
(183, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:20', '2020-11-06 21:07:08', NULL, 'cd736d15-4c31-48f5-952d-68ce32550e07'),
(184, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:20', '2020-11-06 21:07:08', NULL, 'ae94fc2e-d6fb-4c3f-9694-ccaedd8dd259'),
(185, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:20', '2020-11-06 21:07:08', NULL, '0d366705-4234-4aaa-b239-d6e0c6472d6c'),
(186, NULL, 82, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:26:38', '2020-11-07 15:26:38', NULL, '96eb528b-431c-4451-a3f4-5abb3826abd5'),
(187, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:38', '2020-11-06 21:07:08', NULL, '1feed4b3-920a-4777-a1eb-87192e886bb5'),
(188, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:38', '2020-11-06 21:07:08', NULL, '5c21d774-320d-4cc6-a4bb-aed8a07f2b24'),
(189, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:26:38', '2020-11-06 21:07:08', NULL, '4267d0e0-7827-4ce9-a94d-bfaf6d460c57'),
(190, NULL, 83, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:35:13', '2020-11-07 15:35:13', NULL, 'b773e9dd-8b03-4e2e-95f4-ec59bffcb206'),
(191, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:35:13', '2020-11-06 21:07:08', NULL, '0e3c066b-232a-4ae6-9da6-4a8405f035d6'),
(192, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:35:13', '2020-11-06 21:07:08', NULL, 'd1fb7401-60a0-4f61-b62c-8a49a779fb1d'),
(193, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:35:13', '2020-11-06 21:07:08', NULL, '3c8e3639-37c5-4c47-98dd-7498e2376bc5'),
(194, NULL, 84, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:35:30', '2020-11-07 15:35:30', NULL, 'f1a87f4a-bfc4-444c-8526-2f064e5db916'),
(195, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:35:30', '2020-11-06 21:07:08', NULL, '722f7941-e04d-493d-bdb6-f1cf1d3c0fc7'),
(196, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:35:30', '2020-11-06 21:07:08', NULL, 'bdf576d8-4a04-4eac-a313-4ac7d5cdab50'),
(197, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:35:30', '2020-11-06 21:07:08', NULL, 'bf2c84f6-6890-4c23-8932-135b3774307a'),
(198, NULL, 85, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:49:37', '2020-11-07 15:49:37', NULL, '744c4978-8be1-4475-96ef-4e43b0c66655'),
(199, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:49:37', '2020-11-06 21:07:08', NULL, '6a90efae-0377-475d-b426-5e4a255ad0a3'),
(200, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:49:37', '2020-11-06 21:07:08', NULL, '0dfd0d61-bf72-4657-a5bc-856e4e4469ba'),
(201, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:49:37', '2020-11-06 21:07:08', NULL, '2d93e99b-feb9-45e3-a046-95cbc39c6120'),
(202, NULL, 86, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:51:15', '2020-11-07 15:51:15', NULL, 'cb832c43-bef8-4547-aa74-ab9416b49ce2'),
(203, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:51:15', '2020-11-06 21:07:08', NULL, '641c5982-3a5f-476a-b747-71f666f10d3e'),
(204, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:51:15', '2020-11-06 21:07:08', NULL, '5b4fe131-a9f2-421a-8409-b74b8f26ca55'),
(205, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:51:15', '2020-11-06 21:07:08', NULL, 'a2dc76c4-65f2-46ae-918d-69c5f7d667ac'),
(206, NULL, 87, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:53:21', '2020-11-07 15:53:21', NULL, 'a82f6a66-1041-447c-80fa-a7f558fe1a9d'),
(207, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:53:21', '2020-11-06 21:07:08', NULL, 'd39effa8-ca20-4cdd-a0db-56a606a8ce23'),
(208, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:53:21', '2020-11-06 21:07:08', NULL, '17ec88c7-8200-4524-82fe-596c0805d6cd'),
(209, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:53:21', '2020-11-06 21:07:08', NULL, 'f3649747-1d8c-42f6-adfa-37c6750178cb'),
(210, NULL, 88, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:53:43', '2020-11-07 15:53:43', NULL, 'abaf43c2-84e2-4f26-95ad-3b825f7a71ce'),
(211, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:53:43', '2020-11-06 21:07:08', NULL, '56bd5947-2699-4834-9ddb-6cbf9774f83a'),
(212, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:53:43', '2020-11-06 21:07:08', NULL, '0600ff6a-3be5-46e9-ac52-e3af21a81118'),
(213, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:53:43', '2020-11-06 21:07:08', NULL, '81ea5377-1bf5-4c60-bfc9-222e96809767'),
(214, NULL, 89, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:54:49', '2020-11-07 15:54:49', NULL, 'a8e7de83-b68f-4d47-8d9c-8245531e4347'),
(215, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:54:50', '2020-11-06 21:07:08', NULL, 'c192cc3e-ac1f-4347-9c60-e3d67a59837d'),
(216, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:54:50', '2020-11-06 21:07:08', NULL, '1a598a3e-27ce-4dc1-a2fe-bad71e629040'),
(217, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:54:50', '2020-11-06 21:07:08', NULL, '1177c997-516a-4bad-a97f-1f7b3e28f33a'),
(218, NULL, 90, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 15:55:01', '2020-11-07 15:55:01', NULL, '8977ff4f-7251-497d-8f36-cc3a59ca26ab'),
(219, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:55:01', '2020-11-06 21:07:08', NULL, '0f29640e-9206-4837-afaa-192af4d127bb'),
(220, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:55:01', '2020-11-06 21:07:08', NULL, '8cc29166-41fc-4519-a2ba-58d26f040bed'),
(221, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 15:55:01', '2020-11-06 21:07:08', NULL, '474ca315-513d-41e9-9ce1-f9396ab0d998'),
(222, NULL, NULL, 17, 'craft\\elements\\Entry', 1, 0, '2020-11-07 16:27:00', '2020-11-07 16:27:00', NULL, '3793cc6e-cc74-4be2-9d06-c9c267b61aa5'),
(223, NULL, 91, 17, 'craft\\elements\\Entry', 1, 0, '2020-11-07 16:27:00', '2020-11-07 16:27:00', NULL, 'd4e414bf-c0b8-4239-a33a-9f112f57ba37'),
(224, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-11-07 16:27:43', '2020-11-07 16:27:43', NULL, '96d34139-c490-48d1-8485-9aef6fa4722e'),
(225, NULL, 92, 18, 'craft\\elements\\Entry', 1, 0, '2020-11-07 16:27:43', '2020-11-07 16:27:43', NULL, 'e51f704e-69b4-4ebe-b01f-ef1ebddb8ef2'),
(226, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 16:28:40', '2020-11-07 20:49:26', NULL, '8b550861-631b-4d02-8a66-7ee1c25c7b16'),
(227, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 16:28:40', '2020-11-07 20:49:26', NULL, '9badba46-a3e2-4b24-947b-58a35ff3c7fe'),
(228, NULL, 93, 14, 'craft\\elements\\Entry', 1, 0, '2020-11-07 16:31:13', '2020-11-07 16:31:13', NULL, '6f0d5c5f-f582-4268-8f78-5388664f620a'),
(229, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 16:57:31', '2020-11-07 22:40:07', NULL, '58e7cff7-2674-4bfa-a42b-3e7725253466'),
(230, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 16:57:31', '2020-11-07 22:40:07', NULL, 'b7d65c58-e112-42c1-b249-d7d25c01fa96'),
(231, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 16:57:31', '2020-11-07 22:40:07', NULL, 'a40ee13c-f779-42d5-a73d-f7f1093a2779'),
(232, NULL, NULL, 19, 'craft\\elements\\GlobalSet', 1, 0, '2020-11-07 17:13:51', '2020-11-07 17:20:32', NULL, '12fae9eb-8e4f-4af2-8442-a673b10437d4'),
(233, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 17:15:39', '2020-11-07 17:20:32', NULL, 'ff878b6d-290c-44f7-b2d9-62901d6a00fd'),
(234, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 17:15:39', '2020-11-07 17:20:32', NULL, 'fc4b5fc7-61cf-4293-bae7-0e66a4a359c8'),
(235, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 17:15:39', '2020-11-07 17:20:32', NULL, '92b80c4f-b4fe-4411-9f57-226e5e984e30'),
(236, NULL, NULL, 20, 'craft\\elements\\GlobalSet', 1, 0, '2020-11-07 17:25:14', '2020-11-07 17:26:31', NULL, 'c6e56f9e-4a9c-45f5-9eb6-39d161de10b1'),
(237, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 17:26:31', '2020-11-07 17:26:31', NULL, '2c7f9394-af08-44e3-aab1-b5f73c1f84de'),
(238, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 17:26:31', '2020-11-07 17:26:31', NULL, 'dbffb2a2-f7be-4594-af32-7270daa73fc7'),
(239, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 17:26:31', '2020-11-07 17:26:31', NULL, 'd9280b92-ddc8-4b6d-ad19-a0506539c7d8'),
(240, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 17:44:21', '2020-11-07 20:49:26', NULL, '8c49531e-b95a-4daf-8dcd-63721ee249fa'),
(241, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 17:44:21', '2020-11-07 20:49:26', NULL, 'bbb51157-f91d-4610-bd4d-465cb54a94e8'),
(242, NULL, 94, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 22:28:27', '2020-11-07 22:28:27', NULL, 'd8fab65a-6482-40eb-af7c-b2ac41a0c5eb'),
(243, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:28:27', '2020-11-06 21:07:08', NULL, '5016437c-4be2-4f5c-9d3d-786d4bf9d879'),
(244, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:28:28', '2020-11-06 21:07:08', NULL, '888567ec-2fef-43f2-aacb-b89b8a6912ea'),
(245, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:28:28', '2020-11-06 21:07:08', NULL, 'fb8e84a6-a9ce-4e23-b76b-1f4b94b7c9c9'),
(246, NULL, 95, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 22:31:16', '2020-11-07 22:31:16', NULL, '7398002f-6454-4d77-8793-56435f75a430'),
(247, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:31:16', '2020-11-07 22:31:16', NULL, 'e5f67f68-b56f-451d-94db-8e16b5a55ec2'),
(248, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:31:16', '2020-11-07 22:31:16', NULL, 'd8d1bcbe-66fb-45f6-b58c-eb669f928098'),
(249, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:31:16', '2020-11-07 22:31:16', NULL, '27b8b71e-5d2a-479c-ac4c-05925045b249'),
(250, NULL, 96, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 22:35:48', '2020-11-07 22:35:48', NULL, '2835b7a6-d67a-4b92-953d-90849cc2668a'),
(251, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:35:48', '2020-11-07 22:35:48', NULL, '609968fc-fb34-4498-af46-40d2b46d9f1b'),
(252, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:35:48', '2020-11-07 22:35:48', NULL, 'cd74ad1a-38ae-4155-ad30-6e6f53a47bce'),
(253, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 22:35:48', '2020-11-07 22:35:48', NULL, 'ae966fea-32fa-4543-bd5a-9a32ab7da626'),
(254, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2020-11-07 23:19:43', '2020-11-07 23:19:43', NULL, '5317617e-0c06-4d3f-b234-1550be3603ad'),
(255, NULL, 97, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-07 23:19:45', '2020-11-07 23:19:45', NULL, 'b7eefb16-151c-42cb-90aa-2cca306baccd'),
(256, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 23:19:45', '2020-11-07 22:35:48', NULL, '9955dc2c-4194-4b3f-a6ff-b77e8ad6d485'),
(257, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 23:19:46', '2020-11-07 22:35:48', NULL, 'e961e82f-c954-4f22-aebd-57c97a3d388d'),
(258, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-07 23:19:46', '2020-11-07 22:35:48', NULL, 'e2f1ea9d-2568-469a-93fa-eecb9a143f53'),
(259, NULL, 98, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-08 11:07:15', '2020-11-08 11:07:15', NULL, '4c299f05-e7ee-488a-a142-371797e1d6d7'),
(260, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:07:15', '2020-11-08 11:07:15', NULL, 'abb417ff-da4e-44ea-9564-9599aa2bd00b'),
(261, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:07:15', '2020-11-08 11:07:15', NULL, 'b5666323-cfe2-4572-aa58-39b3e2ff9b5a'),
(262, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:07:16', '2020-11-08 11:07:15', NULL, 'ef3f4674-1c66-40ef-b036-707714d40995'),
(263, NULL, 99, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-08 11:29:32', '2020-11-08 11:29:32', NULL, '9905da2a-dec7-4cc5-bb93-6a458d784b88'),
(264, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:29:32', '2020-11-08 11:07:15', NULL, '135acbbc-c2b4-4fe5-a65c-d2b5cee2ad76'),
(265, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:29:32', '2020-11-08 11:07:15', NULL, '03bb1d93-1b5b-4bf1-9ede-75231bf56e9e'),
(266, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:29:32', '2020-11-08 11:07:15', NULL, '5dc62eab-a160-494f-b1b0-f679e2e7a5b9'),
(267, NULL, 100, 1, 'craft\\elements\\Entry', 1, 0, '2020-11-08 11:39:56', '2020-11-08 11:39:56', NULL, '3b369d23-2113-461c-a8bf-abafaefa18cc'),
(268, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:39:57', '2020-11-08 11:07:15', NULL, 'f3ac0364-9704-4933-93ad-5e0944046510'),
(269, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:39:57', '2020-11-08 11:07:15', NULL, 'f1a3f524-1462-4a08-96ce-138e21aad15f'),
(270, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2020-11-08 11:39:57', '2020-11-08 11:07:15', NULL, 'f1786cdf-d127-4e21-8870-b5ad7a2df33a');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2020-11-06 16:46:00', '2020-11-06 16:46:00', 'ab35b494-9436-4457-a07c-0f7016ce60d3'),
(2, 2, 1, 'home', '__home__', 1, '2020-11-06 16:46:55', '2020-11-06 16:46:55', 'c0768b80-d5f4-443b-bb2e-51ad739f59fa'),
(3, 3, 1, 'home', '__home__', 1, '2020-11-06 16:46:55', '2020-11-06 16:46:55', '516ef0cc-1b77-4b15-919d-b6e97ee8fde1'),
(4, 4, 1, 'home', '__home__', 1, '2020-11-06 16:55:02', '2020-11-06 16:55:02', 'afc4225d-aa8e-41eb-aa83-f5076ace4a44'),
(5, 5, 1, 'home', '__home__', 1, '2020-11-06 16:55:42', '2020-11-06 16:55:42', 'e03f8259-4d5d-4377-9390-57b78bff221f'),
(6, 6, 1, 'home', '__home__', 1, '2020-11-06 17:11:23', '2020-11-06 17:11:23', 'c75430e9-edde-4b0a-af0c-882d290af13b'),
(7, 7, 1, NULL, NULL, 1, '2020-11-06 17:12:04', '2020-11-06 17:12:04', 'd53a2268-ccf9-46c1-a179-e12c6eb2a2df'),
(8, 8, 1, 'home', '__home__', 1, '2020-11-06 17:12:08', '2020-11-06 17:12:08', '5e25716e-fc93-4959-ac63-928b3c6d12c9'),
(9, 9, 1, 'home', '__home__', 1, '2020-11-06 17:17:25', '2020-11-06 17:17:25', '59dffa5a-71bf-4867-86dc-ea9a8ad25c7c'),
(10, 10, 1, 'about-us', 'about-us', 1, '2020-11-06 17:28:49', '2020-11-06 17:28:49', '0eae1550-f816-46f8-98c7-87ad80fff26b'),
(11, 11, 1, 'about-us', 'about-us', 1, '2020-11-06 17:28:49', '2020-11-06 17:28:49', 'a8021b21-a905-443e-bc72-f4817c189398'),
(12, 12, 1, 'about-us', 'about-us', 1, '2020-11-06 17:28:50', '2020-11-06 17:28:50', '8b5416bc-b6ee-4e84-a6ff-6b1cef383228'),
(13, 13, 1, 'contact', 'contact', 1, '2020-11-06 17:29:11', '2020-11-06 17:29:11', 'b2009b9b-a198-4c8b-97f0-bee26e3c8456'),
(14, 14, 1, 'contact', 'contact', 1, '2020-11-06 17:29:11', '2020-11-06 17:29:11', '2f6f2da3-a7bf-442c-b47d-2042554437ab'),
(15, 15, 1, 'about-us', 'about-us', 1, '2020-11-06 17:30:06', '2020-11-06 17:30:06', '062d6690-acb5-40fd-a332-b0c101ee85ec'),
(16, 16, 1, 'contact', 'contact', 1, '2020-11-06 17:30:18', '2020-11-06 17:30:18', '01c0da41-70e6-4288-a056-c40fd187aded'),
(17, 17, 1, 'about-us', 'about-us', 1, '2020-11-06 17:30:50', '2020-11-06 17:30:50', '7b76fb03-56f7-45e2-9167-f89572b3e942'),
(18, 18, 1, 'contact', 'contact', 1, '2020-11-06 17:31:04', '2020-11-06 17:31:04', '18da0695-37a2-4837-a7fe-506d3d4a5620'),
(19, 19, 1, NULL, NULL, 1, '2020-11-06 17:34:01', '2020-11-06 17:34:01', 'a38e6369-8e58-4643-85aa-505b9927d6c8'),
(20, 20, 1, NULL, NULL, 1, '2020-11-06 17:36:12', '2020-11-06 17:36:12', '0181ea8f-162b-4410-876f-9160cd0411d2'),
(21, 21, 1, NULL, NULL, 1, '2020-11-06 17:36:12', '2020-11-06 17:36:12', '696f0b71-3acc-41df-98c5-27642c6d6212'),
(22, 22, 1, NULL, NULL, 1, '2020-11-06 17:40:07', '2020-11-06 17:40:07', 'fbe91431-a031-476c-8700-2ae0d23fca4c'),
(24, 24, 1, 'post-one', 'blog/post-one', 1, '2020-11-06 17:47:32', '2020-11-06 17:47:32', 'bd22bf07-9d08-4e31-b353-f3b620c0fd33'),
(25, 25, 1, 'post-one', 'blog/post-one', 1, '2020-11-06 17:47:32', '2020-11-06 17:47:32', 'afd114ec-433c-4a78-b429-0fc3f2868463'),
(27, 27, 1, 'post-two', 'blog/post-two', 1, '2020-11-06 17:47:45', '2020-11-06 17:47:45', '36da5611-c4ee-4594-a7eb-9c05bd18c23b'),
(28, 28, 1, 'post-two', 'blog/post-two', 1, '2020-11-06 17:47:45', '2020-11-06 17:47:45', 'ff967c50-e50f-4658-a8e5-5ad69684e2b3'),
(30, 30, 1, 'post-three', 'blog/post-three', 1, '2020-11-06 17:48:00', '2020-11-06 17:48:00', '34853a45-a6dc-4275-9999-ec4d08d5ca12'),
(31, 31, 1, 'post-three', 'blog/post-three', 1, '2020-11-06 17:48:00', '2020-11-06 17:48:00', 'b8ba00fa-7e2e-4cc0-ab20-3a8fefa5e6e7'),
(32, 32, 1, 'blog', 'blog', 1, '2020-11-06 17:54:31', '2020-11-06 17:54:31', '14b5379f-84a8-4a3b-b7a6-19f62d092e73'),
(33, 33, 1, 'blog', 'blog', 1, '2020-11-06 17:54:31', '2020-11-06 17:54:31', '3000f9fa-5be3-46ba-bbc8-f598fab4f6b1'),
(34, 34, 1, 'blog', 'blog', 1, '2020-11-06 17:54:32', '2020-11-06 17:54:32', 'f4a88139-9ca1-45cd-8a74-6201bae23a97'),
(35, 35, 1, NULL, NULL, 1, '2020-11-06 17:54:54', '2020-11-06 17:54:54', 'bfe55a7a-7a99-4cb6-a338-0998229a37fa'),
(36, 36, 1, 'home', '__home__', 1, '2020-11-06 18:31:50', '2020-11-06 18:31:50', 'fc1b5a15-f0c9-4da3-9128-c76d537d890b'),
(37, 37, 1, 'home', '__home__', 1, '2020-11-06 18:32:23', '2020-11-06 18:32:23', 'f0f8b531-bdc3-41d1-844a-3b2651280b7e'),
(38, 38, 1, 'home', '__home__', 1, '2020-11-06 18:33:04', '2020-11-06 18:33:04', 'ba896612-fd0e-4d90-9550-5631c55116e5'),
(39, 39, 1, 'home', '__home__', 1, '2020-11-06 18:35:03', '2020-11-06 18:35:03', 'ee6b5447-c25c-44e3-b7a0-cb4a67afeda7'),
(40, 40, 1, 'home', '__home__', 1, '2020-11-06 18:35:28', '2020-11-06 18:35:28', '4e6f08c9-c8c1-4a6f-b7fd-800e4cd2349c'),
(41, 41, 1, NULL, NULL, 1, '2020-11-06 18:40:07', '2020-11-06 18:40:07', '57aa1d3f-abb1-405f-bad9-3712dc9c60bc'),
(42, 42, 1, NULL, NULL, 1, '2020-11-06 18:40:07', '2020-11-06 18:40:07', 'd628bc21-5d39-4912-a47f-95b46b33f333'),
(43, 43, 1, NULL, NULL, 1, '2020-11-06 18:40:07', '2020-11-06 18:40:07', 'ea0e762d-93aa-4fb5-ae30-bc95ba66ecaa'),
(44, 44, 1, 'home', '__home__', 1, '2020-11-06 19:32:06', '2020-11-06 19:32:06', '22407059-4e32-4fb7-93be-03a9fd3bc91a'),
(45, 45, 1, 'home', '__home__', 1, '2020-11-06 19:41:07', '2020-11-06 19:41:07', '227b73d1-f474-4fad-8d29-005c39858435'),
(46, 46, 1, NULL, NULL, 1, '2020-11-06 19:46:56', '2020-11-06 19:46:56', '47efec00-24ee-4b9e-a449-ed7747c2a724'),
(47, 47, 1, 'home', '__home__', 1, '2020-11-06 19:46:59', '2020-11-06 19:46:59', '859eaf34-346f-4609-a7fe-92355eee26ef'),
(48, 48, 1, 'home', '__home__', 1, '2020-11-06 19:47:43', '2020-11-06 19:47:43', '3cd31dc6-e5b7-4d96-bfbd-eba902a0ec74'),
(49, 49, 1, NULL, NULL, 1, '2020-11-06 19:50:36', '2020-11-06 19:50:36', '7ff7e7d5-d941-4a6f-be91-d334e73d6c8f'),
(50, 50, 1, 'home', '__home__', 1, '2020-11-06 19:50:36', '2020-11-06 19:50:36', '178c55c0-676b-488e-a64a-c0d6b3c162f9'),
(51, 51, 1, NULL, NULL, 1, '2020-11-06 19:50:36', '2020-11-06 19:50:36', '3b87cb60-2890-4a13-a6e9-f54e183399c2'),
(52, 52, 1, 'home', '__home__', 1, '2020-11-06 19:57:30', '2020-11-06 19:57:30', 'eff18a48-cdb7-4b98-8f7a-6abbab2ecf3f'),
(53, 53, 1, 'home', '__home__', 1, '2020-11-06 20:18:06', '2020-11-06 20:18:06', 'ff74e390-815e-48c9-b835-9257e04e75d0'),
(54, 54, 1, NULL, NULL, 1, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '6ce91212-1e47-4ebf-8f82-87f085e9cf9a'),
(55, 55, 1, NULL, NULL, 1, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '9b1dd5ca-72b4-4a62-be62-0a72ce04b4e0'),
(56, 56, 1, 'home', '__home__', 1, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '8e2bb061-9a4c-48f9-8629-2b4f5d98202f'),
(57, 57, 1, NULL, NULL, 1, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '60677517-3ba2-4c48-b245-621ef8b75b22'),
(58, 58, 1, NULL, NULL, 1, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '88ab9a1b-ca2f-4210-be2f-f7e1b8c41d42'),
(59, 59, 1, 'home', '__home__', 1, '2020-11-06 20:59:50', '2020-11-06 20:59:50', '97e49144-692c-418f-a3f8-fa1272184cd2'),
(60, 60, 1, NULL, NULL, 1, '2020-11-06 20:59:50', '2020-11-06 20:59:50', 'a4bdc702-71a1-45d5-91e3-9f2f70338719'),
(61, 61, 1, NULL, NULL, 1, '2020-11-06 20:59:50', '2020-11-06 20:59:50', '4fd13ec1-7e8f-4b62-8c90-5080512a6691'),
(62, 62, 1, NULL, NULL, 1, '2020-11-06 21:07:08', '2020-11-06 21:07:08', 'd8aad6a7-4baf-42e3-85cb-20575f0ef4f5'),
(63, 63, 1, 'home', '__home__', 1, '2020-11-06 21:07:08', '2020-11-06 21:07:08', 'c5b91b7a-2133-4b31-8623-2535889afb50'),
(64, 64, 1, NULL, NULL, 1, '2020-11-06 21:07:08', '2020-11-06 21:07:08', '076fbc93-81af-42ef-bc59-082e501c2bda'),
(65, 65, 1, NULL, NULL, 1, '2020-11-06 21:07:08', '2020-11-06 21:07:08', 'f181b4f9-fa21-4182-93bf-45e3cace85ba'),
(66, 66, 1, NULL, NULL, 1, '2020-11-06 21:07:08', '2020-11-06 21:07:08', 'bd5f62f4-13ad-47d6-b0a5-ba0e71948dca'),
(67, 67, 1, 'home', '__home__', 1, '2020-11-06 21:24:15', '2020-11-06 21:24:15', '73b59920-1fb7-42e4-97d5-2ee017eefee0'),
(68, 68, 1, NULL, NULL, 1, '2020-11-06 21:24:15', '2020-11-06 21:24:15', '7c268c7c-0381-4271-adc6-a911e7bc2cd8'),
(69, 69, 1, NULL, NULL, 1, '2020-11-06 21:24:15', '2020-11-06 21:24:15', '6b52d4a9-bed9-4d0f-b6be-a5809e4958ce'),
(70, 70, 1, NULL, NULL, 1, '2020-11-06 21:24:15', '2020-11-06 21:24:15', 'dafcbf9b-bd06-4de1-92b8-c70b2a653b64'),
(71, 71, 1, 'home', '__home__', 1, '2020-11-06 22:33:41', '2020-11-06 22:33:41', '2b140681-a66d-4c42-8644-d66f67dfc0a5'),
(72, 72, 1, NULL, NULL, 1, '2020-11-06 22:33:41', '2020-11-06 22:33:41', '08ba9fc4-99ee-453b-bc27-752977c75ddb'),
(73, 73, 1, NULL, NULL, 1, '2020-11-06 22:33:42', '2020-11-06 22:33:42', '417b4840-4664-4e21-b6cb-b29ea9798e38'),
(74, 74, 1, NULL, NULL, 1, '2020-11-06 22:33:42', '2020-11-06 22:33:42', 'b0f7fee9-3ada-4eae-bc34-2b1d7cb8a86b'),
(75, 75, 1, 'home', '__home__', 1, '2020-11-06 22:33:55', '2020-11-06 22:33:55', 'ba30260d-f904-45ca-b3c5-599205d8fa3a'),
(76, 76, 1, NULL, NULL, 1, '2020-11-06 22:33:55', '2020-11-06 22:33:55', '3de82416-9987-4082-95af-2f5016bc72b3'),
(77, 77, 1, NULL, NULL, 1, '2020-11-06 22:33:55', '2020-11-06 22:33:55', '4172490d-860c-434e-be73-4857b9f29c9c'),
(78, 78, 1, NULL, NULL, 1, '2020-11-06 22:33:55', '2020-11-06 22:33:55', 'bed3b098-b579-485d-ba09-3f99127bd16d'),
(79, 79, 1, 'home', '__home__', 1, '2020-11-06 22:43:07', '2020-11-06 22:43:07', '3ca5c675-0ef3-46e2-bf5f-991695bc5246'),
(80, 80, 1, NULL, NULL, 1, '2020-11-06 22:43:07', '2020-11-06 22:43:07', 'd46ff6d5-a80c-40b4-a819-e8caaa46bd08'),
(81, 81, 1, NULL, NULL, 1, '2020-11-06 22:43:07', '2020-11-06 22:43:07', 'a84ee432-5937-4925-adb5-d3c97784b7c3'),
(82, 82, 1, NULL, NULL, 1, '2020-11-06 22:43:07', '2020-11-06 22:43:07', 'b2af55ff-b9ed-4fce-8572-039e51aaf566'),
(83, 83, 1, 'home', '__home__', 1, '2020-11-06 22:43:24', '2020-11-06 22:43:24', 'a8ef17c9-458f-42b1-b377-b6df2fc8f69b'),
(84, 84, 1, NULL, NULL, 1, '2020-11-06 22:43:24', '2020-11-06 22:43:24', 'd5f4ae15-82fb-432e-8c25-f21fe380a7b9'),
(85, 85, 1, NULL, NULL, 1, '2020-11-06 22:43:24', '2020-11-06 22:43:24', 'b7dee270-7a52-418d-895c-b0d98743033c'),
(86, 86, 1, NULL, NULL, 1, '2020-11-06 22:43:24', '2020-11-06 22:43:24', '6f683e52-ff08-4fe1-8a9d-03dc3d03601d'),
(87, 87, 1, 'home', '__home__', 1, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '455ca729-4413-4529-8470-419f64b94ec0'),
(88, 88, 1, NULL, NULL, 1, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '2ab40ea1-0e58-40f3-902a-0520729167c9'),
(89, 89, 1, NULL, NULL, 1, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '8195666c-08ee-490a-bf17-d5032c5d2f34'),
(90, 90, 1, NULL, NULL, 1, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '6e67052e-484c-4e3a-aa4e-ca8656eae104'),
(92, 92, 1, 'post-one', 'blog/post-one', 1, '2020-11-07 09:42:48', '2020-11-07 09:42:48', 'b388b27f-7b38-412a-bee3-554f74e29b1d'),
(93, 93, 1, 'post-one', 'blog/post-one', 1, '2020-11-07 09:42:48', '2020-11-07 09:42:48', 'a08f41fa-16cf-4720-a437-bb0c3f67288f'),
(94, 94, 1, 'post-one', 'blog/post-one', 1, '2020-11-07 09:43:20', '2020-11-07 09:43:20', 'dfa4cc23-29e2-4170-add0-8eea39446071'),
(96, 96, 1, 'post-two', 'blog/post-two', 1, '2020-11-07 09:43:45', '2020-11-07 09:43:45', 'c82d119e-4def-4342-8a13-da9e3a7794cd'),
(97, 97, 1, 'post-two', 'blog/post-two', 1, '2020-11-07 09:43:45', '2020-11-07 09:43:45', 'beba8c05-10f3-4b0b-ba50-1e92326fbfab'),
(99, 99, 1, 'post-three', 'blog/post-three', 1, '2020-11-07 09:44:08', '2020-11-07 09:44:08', '7242d1cb-93e7-4cd3-a9c1-e86ce5bf43cf'),
(100, 100, 1, 'post-three', 'blog/post-three', 1, '2020-11-07 09:44:08', '2020-11-07 09:44:08', '16778941-25af-4c55-9975-701de700a41e'),
(102, 102, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'blog/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 10:14:34', '2020-11-07 10:14:34', 'b7c8795b-a3a5-48b9-925f-43f65b81e2be'),
(103, 103, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'blog/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 10:14:34', '2020-11-07 10:14:34', '0abd677d-be36-49cd-bec3-93d2cc5d2ad7'),
(104, 104, 1, NULL, NULL, 1, '2020-11-07 10:23:45', '2020-11-07 10:23:45', '89e2dc62-efa1-4774-b5ac-7650b4fe8a05'),
(105, 105, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'blog/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 10:23:48', '2020-11-07 10:23:48', '25ec4fc5-7761-42f8-8f8a-6db33b894abc'),
(106, 106, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'blog/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 10:23:57', '2020-11-07 10:23:57', '16e8ca62-e783-4996-9204-b4c6f28c5612'),
(108, 108, 1, NULL, NULL, 1, '2020-11-07 10:24:05', '2020-11-07 10:24:05', '5c794e2d-cbfd-4323-9291-28a2f5ed20f8'),
(109, 109, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'blog/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 10:24:20', '2020-11-07 10:24:20', '3326a994-2511-4e34-a5c8-341218f5b238'),
(110, 110, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'blog/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 10:24:20', '2020-11-07 10:24:20', '064dbe4f-2d1b-45ba-8fc9-34d2bb6b435c'),
(112, 112, 1, NULL, NULL, 1, '2020-11-07 10:29:33', '2020-11-07 10:29:33', 'fe576957-db5d-4b13-b169-88c54ed63bd8'),
(113, 113, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'blog/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 10:29:34', '2020-11-07 10:29:34', '6332e999-a40f-4048-861e-0b37fd79451a'),
(114, 114, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'blog/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 10:29:34', '2020-11-07 10:29:34', '48d0fe10-ac3a-423f-b07d-5dff88251b91'),
(115, 115, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'blog/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 10:35:06', '2020-11-07 10:35:06', '159f6f76-b0a0-411c-899d-1cfc8e192e94'),
(116, 116, 1, 'about-us', 'about-us', 1, '2020-11-07 10:50:32', '2020-11-07 10:50:32', 'ca5fc18b-f585-466e-9868-3a2fb1b7a60d'),
(117, 117, 1, 'about-us', 'about-us', 1, '2020-11-07 10:50:32', '2020-11-07 10:50:32', '84750bff-7bc4-4411-a953-cd3853c9bc91'),
(118, 118, 1, 'contact', 'contact', 1, '2020-11-07 10:50:50', '2020-11-07 10:50:50', '159a352a-017a-4573-bc24-b1229344b1d4'),
(119, 119, 1, 'contact', 'contact', 1, '2020-11-07 10:50:50', '2020-11-07 10:50:50', '2917a865-1046-4085-be97-61485a1276e9'),
(120, 120, 1, 'about-us', 'about-us', 1, '2020-11-07 12:50:36', '2020-11-07 12:50:36', 'a803649c-414f-479b-8cf0-bdfd3678b379'),
(121, 121, 1, 'contact', 'contact', 1, '2020-11-07 12:50:45', '2020-11-07 12:50:45', '608182dc-daa6-4143-99fe-3916fa42b68e'),
(122, 122, 1, 'about-us', 'about-us', 1, '2020-11-07 12:56:05', '2020-11-07 12:56:05', '29896c93-2a71-47ed-b3aa-de166b20a292'),
(123, 123, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'blog/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 12:57:16', '2020-11-07 12:57:16', '16a8f7ab-0c9c-4a07-82a6-d7568a9854c5'),
(124, 124, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'blog/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 12:58:05', '2020-11-07 12:58:05', 'f1f93b6f-fbf2-4be6-82d2-48b5bc60362e'),
(125, 125, 1, '__temp_yvgeoougydxkfbhameyzjkzktmlhlmyulfki', 'services/__temp_yvgeoougydxkfbhameyzjkzktmlhlmyulfki', 1, '2020-11-07 13:10:50', '2020-11-07 13:10:59', 'dedaa608-658c-4703-a986-a9d974a2a7b3'),
(126, 126, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'blog/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 13:11:07', '2020-11-07 13:11:07', 'a92d512b-efe5-4e9a-9221-decd4fd45518'),
(128, 128, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'services/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 13:12:11', '2020-11-07 13:12:11', '0daa2853-015e-401f-9fb8-7b46ffdd3a93'),
(129, 129, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'services/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 13:12:11', '2020-11-07 13:12:11', '77952c58-a173-4f30-bc75-806d381b2bb7'),
(130, 130, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'services/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 13:14:29', '2020-11-07 13:14:29', '31bb81f9-ad70-4926-81e3-0fa0671e6437'),
(131, 131, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'services/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 13:18:14', '2020-11-07 13:18:14', '6e9bdd72-b422-4f91-a46c-aec1cec739f4'),
(133, 133, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'services/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 13:18:32', '2020-11-07 13:18:32', '1dde9b6f-299f-47ba-8600-73da95f1a39e'),
(134, 134, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'services/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 13:18:32', '2020-11-07 13:18:32', '85d9060c-b268-45d4-8dec-e3f63922d51e'),
(136, 136, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'services/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 13:18:56', '2020-11-07 13:18:56', '9123ddbb-4ecb-4735-a3dc-8bc18e7473ae'),
(137, 137, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'services/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 13:18:56', '2020-11-07 13:18:56', '641a1296-dde7-4fa1-9939-15f2896dc0d6'),
(138, 138, 1, NULL, NULL, 1, '2020-11-07 14:00:35', '2020-11-07 14:00:35', '7ee261e9-f6bc-41d7-9177-579637228e8f'),
(139, 139, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'services/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 14:01:01', '2020-11-07 14:01:01', '153f7cb7-2eb3-46b4-9db4-3b91f551513d'),
(140, 140, 1, NULL, NULL, 1, '2020-11-07 14:01:12', '2020-11-07 14:01:12', '73abd625-79a2-419f-a302-ce757b7309f2'),
(141, 141, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'services/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 14:01:15', '2020-11-07 14:01:15', '47656dbb-7985-4bba-93c7-bfdc2141558a'),
(142, 142, 1, NULL, NULL, 1, '2020-11-07 14:01:27', '2020-11-07 14:01:27', 'a3316107-d417-46b8-90a3-7618169f305c'),
(143, 143, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'services/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 14:01:30', '2020-11-07 14:01:30', '2b50b521-b7ff-4937-8e1b-7b6cf09c4064'),
(145, 145, 1, NULL, NULL, 1, '2020-11-07 14:05:27', '2020-11-07 14:05:27', '3fb4c206-4ac8-4bc8-8a03-b6f1ada522de'),
(146, 146, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'case-studies/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 14:05:54', '2020-11-07 14:05:54', 'e2317cb2-c7f4-4a82-938d-85270fc5b218'),
(147, 147, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'case-studies/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 14:05:54', '2020-11-07 14:05:54', 'dbf8ce6c-b5a9-42ab-82b1-a1ccc744978c'),
(149, 149, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'case-studies/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 14:06:46', '2020-11-07 14:06:46', '11a0c403-1a2d-432a-b57f-25253b39d480'),
(150, 150, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'case-studies/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 14:06:46', '2020-11-07 14:06:46', 'bab318a6-eb85-4462-b92b-18048755a48a'),
(151, 151, 1, NULL, NULL, 1, '2020-11-07 14:06:59', '2020-11-07 14:06:59', 'f7dd9a13-5fe9-4bef-aed7-aa2df302ef0e'),
(152, 152, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'case-studies/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 14:07:01', '2020-11-07 14:07:01', 'f7f46820-4f09-4e35-8a4b-fb7de1b25a14'),
(153, 153, 1, NULL, NULL, 1, '2020-11-07 14:07:10', '2020-11-07 14:07:10', 'ac972c71-8426-4d12-a01b-d0f18246d300'),
(154, 154, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'case-studies/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 14:07:13', '2020-11-07 14:07:13', '4858bce8-5c77-4ed0-9248-ca0e0e86d18f'),
(156, 156, 1, NULL, NULL, 1, '2020-11-07 14:07:35', '2020-11-07 14:07:35', 'f71b3281-ad9e-4f1b-be6b-3ceade5af3be'),
(157, 157, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'case-studies/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 14:07:39', '2020-11-07 14:07:39', 'c1c1aa75-9233-4e20-a806-5342e0e9a5bc'),
(158, 158, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'case-studies/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 14:07:39', '2020-11-07 14:07:39', 'f76b56a3-bca5-48e3-ad75-f0092e0e022d'),
(159, 159, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'case-studies/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 14:36:08', '2020-11-07 14:36:08', 'ccd1e489-4ef9-4531-9443-f31e2b273671'),
(160, 160, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'case-studies/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 14:36:20', '2020-11-07 14:36:20', '594023bc-648c-4309-8eef-acfdcb49a2d8'),
(161, 161, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'case-studies/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 14:36:31', '2020-11-07 14:36:31', '2e7b934c-07ab-4b30-a281-ba19d8c84345'),
(162, 162, 1, 'this-is-a-wide-container-title-stretching-two-lines-1', 'blog/this-is-a-wide-container-title-stretching-two-lines-1', 1, '2020-11-07 14:36:44', '2020-11-07 14:36:44', '9316e095-0f36-4f4f-b087-a70d1351581b'),
(163, 163, 1, 'this-is-a-wide-container-title-stretching-two-lines-2', 'blog/this-is-a-wide-container-title-stretching-two-lines-2', 1, '2020-11-07 14:36:55', '2020-11-07 14:36:55', 'b41e3e0d-e3bd-40b8-b51f-32081584ec76'),
(164, 164, 1, 'this-is-a-wide-container-title-stretching-two-lines', 'blog/this-is-a-wide-container-title-stretching-two-lines', 1, '2020-11-07 14:37:10', '2020-11-07 14:37:10', '30d61471-985e-48d3-8a52-8cace72e877b'),
(165, 165, 1, 'home', '__home__', 1, '2020-11-07 15:17:22', '2020-11-07 15:17:22', 'fcdaffb3-4983-44f3-b2ee-b9250e2b1393'),
(166, 166, 1, NULL, NULL, 1, '2020-11-07 15:17:22', '2020-11-07 15:17:22', '42f9b6c6-f600-42cc-aafa-30d676d48147'),
(167, 167, 1, NULL, NULL, 1, '2020-11-07 15:17:22', '2020-11-07 15:17:22', '01f2d4fc-1491-4232-baab-67cdcdb6a019'),
(168, 168, 1, NULL, NULL, 1, '2020-11-07 15:17:22', '2020-11-07 15:17:22', 'b550a60b-b257-42ef-8fb2-d17d6da26039'),
(169, 169, 1, 'home', '__home__', 1, '2020-11-07 15:18:30', '2020-11-07 15:18:30', 'a439176d-b5af-4d87-ba17-2d7bc48b2a75'),
(170, 170, 1, NULL, NULL, 1, '2020-11-07 15:18:30', '2020-11-07 15:18:30', '5cf4c47b-dad0-41c0-b662-c4e0f1622350'),
(171, 171, 1, NULL, NULL, 1, '2020-11-07 15:18:30', '2020-11-07 15:18:30', '27deed11-e035-47f6-afb4-4b7d86c077c5'),
(172, 172, 1, NULL, NULL, 1, '2020-11-07 15:18:30', '2020-11-07 15:18:30', 'd4015f2d-557a-41c7-8698-488254b790d9'),
(173, 173, 1, NULL, NULL, 1, '2020-11-07 15:19:51', '2020-11-07 15:19:51', '2d41862d-abee-4e07-8a45-d82d58a2c6bc'),
(174, 174, 1, 'home', '__home__', 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', 'dd065ac3-dc76-450e-9465-e681466841ad'),
(175, 175, 1, NULL, NULL, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '1724fb67-8118-407c-b7a4-67e96da1d7d3'),
(176, 176, 1, NULL, NULL, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '01e5e3ec-38fa-4cb8-b0f0-8b112e422b85'),
(177, 177, 1, NULL, NULL, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '430741a0-b50d-4f54-8a40-a331ed222c20'),
(178, 178, 1, 'home', '__home__', 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', '0c518040-9ba5-4987-a683-8b0df329fef7'),
(179, 179, 1, NULL, NULL, 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', 'e01a31df-081b-4723-b046-e415ff898a17'),
(180, 180, 1, NULL, NULL, 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', '921e110b-5e9b-4845-be74-9c2b73953711'),
(181, 181, 1, NULL, NULL, 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', 'b1d1a288-a2a7-4354-9a5b-cb0137e6bbd7'),
(182, 182, 1, 'home', '__home__', 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', 'da18db4d-9693-469d-8a8e-5c355faf730b'),
(183, 183, 1, NULL, NULL, 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', 'd6ce61f0-a891-4462-8f37-d11c95ce83c2'),
(184, 184, 1, NULL, NULL, 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', 'f3516a51-017b-42aa-a4b7-e787e03c2549'),
(185, 185, 1, NULL, NULL, 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', '960a6f81-4049-44b6-8b8e-230e57a29f9a'),
(186, 186, 1, 'home', '__home__', 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', 'd050ac5a-e67f-48d6-be40-6f4600adf998'),
(187, 187, 1, NULL, NULL, 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', 'f820cfa1-bf21-4a82-9237-397648592071'),
(188, 188, 1, NULL, NULL, 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '62ad4a6e-df4f-4efa-8c06-af4c439726d4'),
(189, 189, 1, NULL, NULL, 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', 'f9607f4f-7d5a-4980-9ef2-c21a0155bc20'),
(190, 190, 1, 'home', '__home__', 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', 'bce731b9-9612-407d-bd62-d8bf2ed5ab70'),
(191, 191, 1, NULL, NULL, 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '4f6f0ecf-515a-4291-b2ac-e711a62127f4'),
(192, 192, 1, NULL, NULL, 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', 'b0895b59-49a9-4bf5-9737-01a716d70efa'),
(193, 193, 1, NULL, NULL, 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', 'e93d8c6c-5818-4caf-80da-a75d99bcf2b7'),
(194, 194, 1, 'home', '__home__', 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '2b92ff87-9451-474d-afe9-c2b6a683723b'),
(195, 195, 1, NULL, NULL, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '2b9b6d1e-1470-4b06-a574-f9cfba019c60'),
(196, 196, 1, NULL, NULL, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '83c1d0a2-e925-4f5f-9541-00f8f5cd7a61'),
(197, 197, 1, NULL, NULL, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '28cff61c-b436-47b8-ae96-19bf8900199f'),
(198, 198, 1, 'home', '__home__', 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', 'da21e565-7524-46a5-ae9b-ed2a027f412a'),
(199, 199, 1, NULL, NULL, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', '69382d10-51da-4d2b-8b9a-33ee72242f21'),
(200, 200, 1, NULL, NULL, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', '4fbe9770-595e-4a8c-b39d-da5887d379e8'),
(201, 201, 1, NULL, NULL, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', 'cc4600fd-89f5-4388-baa9-e14ce3feb047'),
(202, 202, 1, 'home', '__home__', 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', 'baf4f6d0-336d-4a92-b9bd-8a4368ca4ce6'),
(203, 203, 1, NULL, NULL, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', '8d5088b4-dbbb-46ca-a5ad-371a1e34bf88'),
(204, 204, 1, NULL, NULL, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', 'e840b40d-75a6-4d2b-92af-82255feb2213'),
(205, 205, 1, NULL, NULL, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', '74c8cd55-9479-4bb1-aacb-a7f6c11971fb'),
(206, 206, 1, 'home', '__home__', 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', 'd49dc87a-8416-4841-b009-8ce65a412600'),
(207, 207, 1, NULL, NULL, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '7b66e6f8-13d6-44a8-85c7-418b4b8af164'),
(208, 208, 1, NULL, NULL, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '02e5f2ff-f5d6-475d-9c8b-acf39a698ad7'),
(209, 209, 1, NULL, NULL, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '214bf7e6-b665-433f-931d-512d27824f64'),
(210, 210, 1, 'home', '__home__', 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '265fcefc-5021-4ae8-91b5-3ab4cbbd41b5'),
(211, 211, 1, NULL, NULL, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '3d23a181-406a-40d3-b501-5a78d73b43ec'),
(212, 212, 1, NULL, NULL, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', 'c5261c09-5c9e-4042-9ff8-989c35595b9b'),
(213, 213, 1, NULL, NULL, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '32d211c4-b867-4321-80c5-59b0d2a4d755'),
(214, 214, 1, 'home', '__home__', 1, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '9103b790-627d-45d6-b895-012a3e462f47'),
(215, 215, 1, NULL, NULL, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', 'be28bd18-17f1-4769-8e78-44a9396e12c6'),
(216, 216, 1, NULL, NULL, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', 'a206b4d4-b48c-4b1e-9d67-823667a0ad0d'),
(217, 217, 1, NULL, NULL, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '2ada667a-9353-4b82-8641-58e4f00eb0dd'),
(218, 218, 1, 'home', '__home__', 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'fa2622fb-db1d-48e5-96ac-3d5c9ea8c085'),
(219, 219, 1, NULL, NULL, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'cbddb554-1d1d-483b-8ef5-d16f88084645'),
(220, 220, 1, NULL, NULL, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', '295a7596-8076-471b-a9dd-79977f8b92c2'),
(221, 221, 1, NULL, NULL, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'e6935695-b163-470b-a5b9-ad8854b6a3ba'),
(222, 222, 1, 'services', 'services', 1, '2020-11-07 16:27:00', '2020-11-07 16:27:00', '606bce29-c1a4-4fd2-be3d-860a654f03b9'),
(223, 223, 1, 'services', 'services', 1, '2020-11-07 16:27:00', '2020-11-07 16:27:00', 'cca5c523-4767-45ce-a32c-e63f34481af3'),
(224, 224, 1, 'case-studies', 'case-studies', 1, '2020-11-07 16:27:43', '2020-11-07 16:27:43', '4a6a1b00-1f8c-403a-9421-08912cb6346d'),
(225, 225, 1, 'case-studies', 'case-studies', 1, '2020-11-07 16:27:43', '2020-11-07 16:27:43', '156cc90e-e5cb-4acd-9d59-31c18ad721d7'),
(226, 226, 1, NULL, NULL, 1, '2020-11-07 16:28:40', '2020-11-07 16:28:40', 'cf79a9c8-d3e9-4737-a7be-138f11aa4f4c'),
(227, 227, 1, NULL, NULL, 1, '2020-11-07 16:28:40', '2020-11-07 16:28:40', '779acea6-3427-4d9b-ac07-9380a24db489'),
(228, 228, 1, 'contact', 'contact', 1, '2020-11-07 16:31:13', '2020-11-07 16:31:13', 'd43fa93a-c88d-4462-8bf5-c34b8f43de9e'),
(229, 229, 1, NULL, NULL, 1, '2020-11-07 16:57:31', '2020-11-07 16:57:31', '0b53a758-80b1-4841-a853-fa9f5276dc23'),
(230, 230, 1, NULL, NULL, 1, '2020-11-07 16:57:31', '2020-11-07 16:57:31', '65efac9c-2b43-4b92-8502-136726428277'),
(231, 231, 1, NULL, NULL, 1, '2020-11-07 16:57:31', '2020-11-07 16:57:31', 'e3a17f73-dc8a-4d5b-b4fa-2ba1fa3fa515'),
(232, 232, 1, NULL, NULL, 1, '2020-11-07 17:13:51', '2020-11-07 17:13:51', '64f9f2f6-10a4-401e-b808-03802cef6be7'),
(233, 233, 1, NULL, NULL, 1, '2020-11-07 17:15:39', '2020-11-07 17:15:39', 'dae5e120-b005-40a7-bd07-b0238a807b37'),
(234, 234, 1, NULL, NULL, 1, '2020-11-07 17:15:39', '2020-11-07 17:15:39', '97c4c3bf-97c1-42ab-acca-1d550c5ce07d'),
(235, 235, 1, NULL, NULL, 1, '2020-11-07 17:15:39', '2020-11-07 17:15:39', 'bd3ce8b9-66c3-4d98-adb7-61743d01821d'),
(236, 236, 1, NULL, NULL, 1, '2020-11-07 17:25:14', '2020-11-07 17:25:14', '78fb3a2e-2078-4fec-95a4-e48824605a0e'),
(237, 237, 1, NULL, NULL, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', '9666b0de-77b3-410a-b23f-39352b9eee99'),
(238, 238, 1, NULL, NULL, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', 'aab31c2f-4bbd-4e23-9e71-562befc5a34a'),
(239, 239, 1, NULL, NULL, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', 'b7bdbb6f-c882-47fd-b14c-16b0bc0b4f3b'),
(240, 240, 1, NULL, NULL, 1, '2020-11-07 17:44:21', '2020-11-07 17:44:21', 'eabadecc-5c23-464d-bbda-6e6e132d926d'),
(241, 241, 1, NULL, NULL, 1, '2020-11-07 17:44:21', '2020-11-07 17:44:21', '1858f48c-8533-4c60-8bce-f5d535628760'),
(242, 242, 1, 'home', '__home__', 1, '2020-11-07 22:28:27', '2020-11-07 22:28:27', 'c7b31ee4-4119-4d57-b8b7-dedd53dd1ddc'),
(243, 243, 1, NULL, NULL, 1, '2020-11-07 22:28:27', '2020-11-07 22:28:27', '3c86944f-3f75-4ce6-accd-d455d35ba35c'),
(244, 244, 1, NULL, NULL, 1, '2020-11-07 22:28:28', '2020-11-07 22:28:28', 'ee4152d5-54ab-4106-bdb0-c7d26b549fbb'),
(245, 245, 1, NULL, NULL, 1, '2020-11-07 22:28:28', '2020-11-07 22:28:28', '12939059-5d5a-4ba2-b7e7-d517c51ce374'),
(246, 246, 1, 'home', '__home__', 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '9c0191d1-d92e-4152-a075-b64f0e8bb387'),
(247, 247, 1, NULL, NULL, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '1051fcc9-b343-4692-8a6e-9512d4433b72'),
(248, 248, 1, NULL, NULL, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', 'bfaedd5e-eb16-4d92-8569-57092fc17752'),
(249, 249, 1, NULL, NULL, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '439ab3c6-b64f-4fac-812d-86dfe4065bdf'),
(250, 250, 1, 'home', '__home__', 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '1b38daa5-8979-4fe4-9b7c-a7caa7b5fe24'),
(251, 251, 1, NULL, NULL, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'f678e9e3-a484-4f3e-8c37-99786745eb6e'),
(252, 252, 1, NULL, NULL, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '34204fc4-d790-44a4-8898-5de67626d806'),
(253, 253, 1, NULL, NULL, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'b2c9b2eb-cca1-42bf-80ad-242317232c9d'),
(254, 254, 1, NULL, NULL, 1, '2020-11-07 23:19:43', '2020-11-07 23:19:43', 'af5eb54c-2e5e-44a0-9ac9-9d03d62cec24'),
(255, 255, 1, 'home', '__home__', 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', '982173cd-95bc-487b-a17e-dea16181c2f4'),
(256, 256, 1, NULL, NULL, 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', '91f6d364-fbb3-432c-97a8-46a6b96bf56e'),
(257, 257, 1, NULL, NULL, 1, '2020-11-07 23:19:46', '2020-11-07 23:19:46', '1d593e76-376f-4461-8c7f-4b965bb56372'),
(258, 258, 1, NULL, NULL, 1, '2020-11-07 23:19:46', '2020-11-07 23:19:46', '75019286-ce74-457d-b595-86ae777c4122'),
(259, 259, 1, 'home', '__home__', 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', 'b18aba0d-9da9-4c51-9a7e-a73f3667cb82'),
(260, 260, 1, NULL, NULL, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', 'b57e834b-31ac-414e-bef9-25c9dfc0906c'),
(261, 261, 1, NULL, NULL, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', 'd4d21261-94f1-421b-b7c0-e06b9b1c59e8'),
(262, 262, 1, NULL, NULL, 1, '2020-11-08 11:07:16', '2020-11-08 11:07:16', '4624e019-00e4-45ec-8d78-ef67f263a802'),
(263, 263, 1, 'home', '__home__', 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '653c2114-41a3-4a38-a4cf-c3a57c932a18'),
(264, 264, 1, NULL, NULL, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '102fbf1c-b07a-497a-9242-41223fad81e9'),
(265, 265, 1, NULL, NULL, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '20dff735-6272-443a-a673-a8e3893f46de'),
(266, 266, 1, NULL, NULL, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '2a7e9b3d-4b8d-4aae-8579-2f0cfc8697e8'),
(267, 267, 1, 'home', '__home__', 1, '2020-11-08 11:39:56', '2020-11-08 11:39:56', '84c0cc7b-d585-4163-948a-156a29212d70'),
(268, 268, 1, NULL, NULL, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', 'e2fb5d63-2603-4762-aacd-264ea51322eb'),
(269, 269, 1, NULL, NULL, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', 'eae2ea90-5030-4f36-accb-26a6a7b77739'),
(270, 270, 1, NULL, NULL, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '7f2a4f3a-5e1c-42b1-bb21-49f94ad54e9f');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 16:46:55', '2020-11-06 16:46:55', '67921c8d-324e-42ac-895a-cd3c7558b15e'),
(3, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 16:46:55', '2020-11-06 16:46:55', 'd05e1c62-642f-4153-b396-380b569d118a'),
(4, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 16:55:02', '2020-11-06 16:55:02', '626071b9-70a7-43f8-9869-9696bad55b6e'),
(5, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 16:55:42', '2020-11-06 16:55:42', 'a7e4c7d4-1142-4c71-b1ee-59ae1ada07b6'),
(6, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 17:11:23', '2020-11-06 17:11:23', 'e26c47c9-b06f-4d9e-8452-f19b226661a1'),
(8, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 17:12:08', '2020-11-06 17:12:08', '294410b2-880c-408b-842c-2f5775a9d026'),
(9, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 17:17:25', '2020-11-06 17:17:25', '034ec650-56dd-4d97-b65b-96c397487d1a'),
(10, 2, NULL, 2, NULL, '2020-11-06 17:28:00', NULL, 1, '2020-11-06 17:28:49', '2020-11-06 17:28:49', '27a421f6-7c41-407b-99bc-314de6afdc22'),
(11, 2, NULL, 2, NULL, '2020-11-06 17:28:00', NULL, NULL, '2020-11-06 17:28:49', '2020-11-06 17:28:49', 'ae27f917-4c3a-4eaf-aadd-a8a97371f2c9'),
(12, 2, NULL, 2, NULL, '2020-11-06 17:28:00', NULL, NULL, '2020-11-06 17:28:50', '2020-11-06 17:28:50', '2b21c64b-e255-430e-99e4-b78fa7208ab5'),
(13, 3, NULL, 3, NULL, '2020-11-06 17:29:00', NULL, 1, '2020-11-06 17:29:11', '2020-11-06 17:29:11', '7d50ab85-34fe-4d86-9034-1c3e5e29103f'),
(14, 3, NULL, 3, NULL, '2020-11-06 17:29:00', NULL, NULL, '2020-11-06 17:29:11', '2020-11-06 17:29:11', '27c94aac-9623-4651-94f2-2962f3dcaac1'),
(15, 2, NULL, 2, NULL, '2020-11-06 17:28:00', NULL, NULL, '2020-11-06 17:30:06', '2020-11-06 17:30:06', 'e9b2e08f-a3d5-432b-984c-3c19d51e4bb6'),
(16, 3, NULL, 3, NULL, '2020-11-06 17:29:00', NULL, NULL, '2020-11-06 17:30:18', '2020-11-06 17:30:18', '62371453-e636-4fde-8584-65ac9e536473'),
(17, 2, NULL, 2, NULL, '2020-11-06 17:28:00', NULL, NULL, '2020-11-06 17:30:50', '2020-11-06 17:30:50', 'e6ceff24-3804-4b47-a333-91a04cd25767'),
(18, 3, NULL, 3, NULL, '2020-11-06 17:29:00', NULL, NULL, '2020-11-06 17:31:04', '2020-11-06 17:31:04', '36a8d7a5-a247-404e-badf-602802f0c504'),
(24, 4, NULL, 4, 1, '2020-11-06 17:47:00', NULL, 1, '2020-11-06 17:47:32', '2020-11-06 17:47:32', 'cef50546-4412-4800-a070-b54f0d3fa90f'),
(25, 4, NULL, 4, 1, '2020-11-06 17:47:00', NULL, NULL, '2020-11-06 17:47:32', '2020-11-06 17:47:32', '0aef626a-bbcd-462e-96d1-4a9fe6b1b40a'),
(27, 4, NULL, 4, 1, '2020-11-06 17:47:00', NULL, 1, '2020-11-06 17:47:45', '2020-11-06 17:47:45', 'f67eeed0-91fe-4505-bf25-cfc983b4b0e4'),
(28, 4, NULL, 4, 1, '2020-11-06 17:47:00', NULL, NULL, '2020-11-06 17:47:45', '2020-11-06 17:47:45', 'a8b43bb7-ecf0-4d85-bed5-6ee107fbb3e9'),
(30, 4, NULL, 4, 1, '2020-11-06 17:47:00', NULL, 1, '2020-11-06 17:48:00', '2020-11-06 17:48:00', 'dea66b68-ee24-4c66-99c2-5ce5e9aedf55'),
(31, 4, NULL, 4, 1, '2020-11-06 17:47:00', NULL, NULL, '2020-11-06 17:48:00', '2020-11-06 17:48:00', '7e69fd59-8cc8-42ad-a12e-d73d1efd1baa'),
(32, 5, NULL, 5, NULL, '2020-11-06 17:54:00', NULL, 1, '2020-11-06 17:54:31', '2020-11-06 17:54:31', 'e1b7faf7-3694-43d4-91d9-f2c3365d6976'),
(33, 5, NULL, 5, NULL, '2020-11-06 17:54:00', NULL, NULL, '2020-11-06 17:54:31', '2020-11-06 17:54:31', '5efe034e-b8f5-440e-a5a2-2d01480e8078'),
(34, 5, NULL, 5, NULL, '2020-11-06 17:54:00', NULL, NULL, '2020-11-06 17:54:32', '2020-11-06 17:54:32', 'e27803d9-792a-48f5-8728-ca887821155e'),
(36, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 18:31:50', '2020-11-06 18:31:50', '42d6c354-8b66-4323-b06e-ebd31791ee16'),
(37, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 18:32:23', '2020-11-06 18:32:23', '3ea63e38-45f5-47c0-9c18-072491c42fab'),
(38, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 18:33:04', '2020-11-06 18:33:04', '22442206-72c3-42a7-aa8d-a23922d50b8f'),
(39, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 18:35:03', '2020-11-06 18:35:03', 'acbfc866-a7b2-4769-be57-21586a149489'),
(40, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 18:35:28', '2020-11-06 18:35:28', '4e0e07d7-0054-4454-8520-4c19761d286f'),
(44, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 19:32:06', '2020-11-06 19:32:06', '7c49a7bc-8d57-46b0-a836-b226921cc9f8'),
(45, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 19:41:07', '2020-11-06 19:41:07', '5cfcbd87-c292-4bb5-9314-b2853c21bd34'),
(47, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 19:46:59', '2020-11-06 19:46:59', '37ce94c5-9a3f-4d5e-9736-df2f0c88bb5e'),
(48, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 19:47:43', '2020-11-06 19:47:43', '7529758e-9851-4639-91c6-f036ac7c614b'),
(50, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 19:50:36', '2020-11-06 19:50:36', '2164f8f1-db3a-4666-be42-d9ead28bb5dc'),
(52, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 19:57:30', '2020-11-06 19:57:30', '7dd3fc0f-ee37-4d2b-81ec-ef3756fa5d70'),
(53, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 20:18:06', '2020-11-06 20:18:06', '39140049-cdba-4da2-867a-9ece33ad3c08'),
(56, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 20:18:53', '2020-11-06 20:18:53', 'd3555689-9e45-4283-ac52-727b96b9fc54'),
(59, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 20:59:50', '2020-11-06 20:59:50', '86f00a65-28f2-40b4-a695-1fb405dede88'),
(63, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 21:07:08', '2020-11-06 21:07:08', 'c63b15ef-82fe-4e95-9bb8-f89d09271a73'),
(67, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 21:24:15', '2020-11-06 21:24:15', '4bf2b6f1-424f-4049-9894-9c5edcdad32e'),
(71, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 22:33:41', '2020-11-06 22:33:41', '1c674245-0eb5-4519-845a-a6951b452fd5'),
(75, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 22:33:55', '2020-11-06 22:33:55', 'a460b149-4687-451d-b90b-cd0e1c4e6c27'),
(79, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 22:43:07', '2020-11-06 22:43:07', 'c29131d2-80ae-49a4-b698-b7e7c7cdc46d'),
(83, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 22:43:24', '2020-11-06 22:43:24', '1b7d6001-b9f6-4c63-a7b5-1ca7c9505c56'),
(87, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '2db58052-ed91-4029-ba4c-11c2ac7c8a18'),
(92, 6, NULL, 6, 1, '2020-11-07 09:42:00', NULL, 0, '2020-11-07 09:42:48', '2020-11-07 09:42:48', 'eb74f12c-afca-45c9-b230-c4fb808cf9a0'),
(93, 6, NULL, 6, 1, '2020-11-07 09:42:00', NULL, NULL, '2020-11-07 09:42:48', '2020-11-07 09:42:48', '351c4276-e7f2-4bb5-a574-7d437b8b9ee2'),
(94, 6, NULL, 6, 1, '2020-11-07 09:42:00', NULL, NULL, '2020-11-07 09:43:20', '2020-11-07 09:43:20', '470c0b1d-c5c8-439f-bb32-44d48fa36bc1'),
(96, 6, NULL, 6, 1, '2020-11-07 09:43:00', NULL, 0, '2020-11-07 09:43:45', '2020-11-07 09:43:45', '017be15b-8cfd-4d29-9f70-41840e06d54c'),
(97, 6, NULL, 6, 1, '2020-11-07 09:43:00', NULL, NULL, '2020-11-07 09:43:45', '2020-11-07 09:43:45', '3703370b-8c35-438d-b510-892d38723047'),
(99, 6, NULL, 6, 1, '2020-11-07 09:43:00', NULL, 0, '2020-11-07 09:44:08', '2020-11-07 09:44:08', '893cb9c9-bc6b-4cf6-b28f-6e7620b3dc2e'),
(100, 6, NULL, 6, 1, '2020-11-07 09:43:00', NULL, NULL, '2020-11-07 09:44:08', '2020-11-07 09:44:08', '9a3a2196-d6dc-4ead-9f59-a3ef3995ba90'),
(102, 6, NULL, 6, 1, '2020-11-07 10:13:00', NULL, NULL, '2020-11-07 10:14:34', '2020-11-07 10:14:34', 'ff516fff-e568-47be-886a-cdc1bbb046a1'),
(103, 6, NULL, 6, 1, '2020-11-07 10:13:00', NULL, NULL, '2020-11-07 10:14:34', '2020-11-07 10:14:34', 'fcb47d38-3bee-4f4b-b3c8-7ee132921d55'),
(105, 6, NULL, 6, 1, '2020-11-07 10:13:00', NULL, NULL, '2020-11-07 10:23:48', '2020-11-07 10:23:48', '68f6a679-a0ff-4b22-bfa2-dc15b0fc5265'),
(106, 6, NULL, 6, 1, '2020-11-07 10:13:00', NULL, NULL, '2020-11-07 10:23:57', '2020-11-07 10:23:57', 'ddaffb2c-3374-40ea-99d8-3fd7f0474aa6'),
(109, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 10:24:20', '2020-11-07 10:24:20', '07689a1a-288b-45eb-b49c-d97f81a15535'),
(110, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 10:24:20', '2020-11-07 10:24:20', 'da7cccf5-8cf2-4153-9ba2-34eb4207bb35'),
(113, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 10:29:34', '2020-11-07 10:29:34', '37524a03-1435-4155-b350-6eb040a19db6'),
(114, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 10:29:34', '2020-11-07 10:29:34', 'cea08aad-53b6-47fd-81dc-72e4a297715a'),
(115, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 10:35:06', '2020-11-07 10:35:06', '380177a0-e38a-4e10-86b8-bf18f7599602'),
(116, 7, NULL, 7, NULL, '2020-11-07 10:50:00', NULL, NULL, '2020-11-07 10:50:32', '2020-11-07 10:50:32', '2d3c4b05-395e-45e0-82f3-dac4e9fd8557'),
(117, 7, NULL, 7, NULL, '2020-11-07 10:50:00', NULL, NULL, '2020-11-07 10:50:32', '2020-11-07 10:50:32', '6725bfe0-0e6f-4a08-8229-91273ea86593'),
(118, 8, NULL, 8, NULL, '2020-11-07 10:50:00', NULL, NULL, '2020-11-07 10:50:50', '2020-11-07 10:50:50', '7b6a2922-60d0-4511-926a-63a8a19e6653'),
(119, 8, NULL, 8, NULL, '2020-11-07 10:50:00', NULL, NULL, '2020-11-07 10:50:50', '2020-11-07 10:50:50', '5246f2d4-3a30-4d1c-a6a1-caac863d95f0'),
(120, 7, NULL, 7, NULL, '2020-11-07 10:50:00', NULL, NULL, '2020-11-07 12:50:36', '2020-11-07 12:50:36', '3f01e997-2ee4-4ea3-a653-150ef3d167c7'),
(121, 8, NULL, 8, NULL, '2020-11-07 10:50:00', NULL, NULL, '2020-11-07 12:50:45', '2020-11-07 12:50:45', 'db4d037e-bc20-4e7f-b75d-497f39665d60'),
(122, 7, NULL, 7, NULL, '2020-11-07 10:50:00', NULL, NULL, '2020-11-07 12:56:05', '2020-11-07 12:56:05', 'dd576f71-7294-48ee-ac8d-2b872e996463'),
(123, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 12:57:16', '2020-11-07 12:57:16', 'a93a10cc-656b-42ed-a9fb-8bd56e9ff551'),
(124, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 12:58:05', '2020-11-07 12:58:05', '3f8396c4-bbfd-4665-90ee-95c74fa20748'),
(125, 9, NULL, 9, 1, '2020-11-07 13:10:00', NULL, NULL, '2020-11-07 13:10:50', '2020-11-07 13:10:50', 'af3041d4-ccd1-48fc-a5f5-e60f3e989822'),
(126, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 13:11:07', '2020-11-07 13:11:07', 'a528aaac-44c8-489a-9181-66dd57352ce3'),
(128, 9, NULL, 9, 1, '2020-11-07 13:11:00', NULL, NULL, '2020-11-07 13:12:11', '2020-11-07 13:12:11', 'e76599b0-f0ab-488d-99a1-68b950bbda21'),
(129, 9, NULL, 9, 1, '2020-11-07 13:11:00', NULL, NULL, '2020-11-07 13:12:11', '2020-11-07 13:12:11', '08de7543-6c18-4284-b913-e833e4418d36'),
(130, 9, NULL, 9, 1, '2020-11-07 13:11:00', NULL, NULL, '2020-11-07 13:14:29', '2020-11-07 13:14:29', '4378a550-5f6d-4948-a3b3-8eb08dc2f804'),
(131, 9, NULL, 9, 1, '2020-11-07 13:11:00', NULL, NULL, '2020-11-07 13:18:14', '2020-11-07 13:18:14', '0863c671-9105-48b1-8e7c-4e4a2cc4976c'),
(133, 9, NULL, 9, 1, '2020-11-07 13:18:00', NULL, NULL, '2020-11-07 13:18:32', '2020-11-07 13:18:32', 'bf7cf060-ed39-498c-9112-39f9ad2c0b1c'),
(134, 9, NULL, 9, 1, '2020-11-07 13:18:00', NULL, NULL, '2020-11-07 13:18:32', '2020-11-07 13:18:32', 'ab25f5ee-85ae-43e8-b963-a8120d46b0f1'),
(136, 9, NULL, 9, 1, '2020-11-07 13:18:00', NULL, NULL, '2020-11-07 13:18:56', '2020-11-07 13:18:56', '2bc58677-e31f-4fec-8e3a-767f08ec73d3'),
(137, 9, NULL, 9, 1, '2020-11-07 13:18:00', NULL, NULL, '2020-11-07 13:18:56', '2020-11-07 13:18:56', '0e02b495-7c29-4aa0-a5cb-919ade476975'),
(139, 9, NULL, 9, 1, '2020-11-07 13:18:00', NULL, NULL, '2020-11-07 14:01:01', '2020-11-07 14:01:01', '2164346d-2302-4871-aa10-fe994d8110b9'),
(141, 9, NULL, 9, 1, '2020-11-07 13:18:00', NULL, NULL, '2020-11-07 14:01:15', '2020-11-07 14:01:15', 'f4704a59-680e-4563-b37d-7501d5fb5012'),
(143, 9, NULL, 9, 1, '2020-11-07 13:11:00', NULL, NULL, '2020-11-07 14:01:30', '2020-11-07 14:01:30', '5165cc43-8cda-423d-b6a1-ade5a9bdf25a'),
(146, 10, NULL, 10, 1, '2020-11-07 14:04:00', NULL, NULL, '2020-11-07 14:05:54', '2020-11-07 14:05:54', 'dc543691-b924-4a03-8e95-6115fc14036a'),
(147, 10, NULL, 10, 1, '2020-11-07 14:04:00', NULL, NULL, '2020-11-07 14:05:54', '2020-11-07 14:05:54', '525a43fa-3bb0-48a1-b4a3-6e5e4de072de'),
(149, 10, NULL, 10, 1, '2020-11-07 14:05:00', NULL, NULL, '2020-11-07 14:06:46', '2020-11-07 14:06:46', '3e0bab07-7eb5-468e-9720-3de7a8d56396'),
(150, 10, NULL, 10, 1, '2020-11-07 14:05:00', NULL, NULL, '2020-11-07 14:06:46', '2020-11-07 14:06:46', '6ec28a32-8bff-48bc-be33-dd26f0b152f4'),
(152, 10, NULL, 10, 1, '2020-11-07 14:05:00', NULL, NULL, '2020-11-07 14:07:01', '2020-11-07 14:07:01', '6feb8a86-e887-4e2a-8dfa-4b6817ff4b69'),
(154, 10, NULL, 10, 1, '2020-11-07 14:05:00', NULL, NULL, '2020-11-07 14:07:13', '2020-11-07 14:07:13', '5fe3f430-e709-453e-9d9b-9a520fee2d2f'),
(157, 10, NULL, 10, 1, '2020-11-07 14:07:00', NULL, NULL, '2020-11-07 14:07:39', '2020-11-07 14:07:39', '4ff00e77-efd6-41b1-b47d-350026b70f93'),
(158, 10, NULL, 10, 1, '2020-11-07 14:07:00', NULL, NULL, '2020-11-07 14:07:39', '2020-11-07 14:07:39', '89d64949-bba1-47dd-87f9-3b53d4dbd932'),
(159, 10, NULL, 10, 1, '2020-11-07 14:07:00', NULL, NULL, '2020-11-07 14:36:08', '2020-11-07 14:36:08', 'e4aab1db-a892-42c0-94db-9324cebd2f21'),
(160, 10, NULL, 10, 1, '2020-11-07 14:05:00', NULL, NULL, '2020-11-07 14:36:20', '2020-11-07 14:36:20', 'd5945cb7-130b-4fdb-aa11-3a30938aab9f'),
(161, 10, NULL, 10, 1, '2020-11-07 14:04:00', NULL, NULL, '2020-11-07 14:36:31', '2020-11-07 14:36:31', 'e70f348f-f308-4888-a99b-27ffc6cd790f'),
(162, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 14:36:44', '2020-11-07 14:36:44', 'fc856493-ccea-45af-8eeb-f28c3cd3d7f2'),
(163, 6, NULL, 6, 1, '2020-11-07 10:24:00', NULL, NULL, '2020-11-07 14:36:55', '2020-11-07 14:36:55', '98c53caa-ff6c-45a5-9836-4afa4ef20dd3'),
(164, 6, NULL, 6, 1, '2020-11-07 10:13:00', NULL, NULL, '2020-11-07 14:37:10', '2020-11-07 14:37:10', 'ad5c07e0-0974-4e7a-9770-3e87260d9d83'),
(165, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:17:22', '2020-11-07 15:17:22', '5819ed2c-4573-433d-982e-5b20a84541ba'),
(169, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:18:30', '2020-11-07 15:18:30', '520325dd-a951-4fd7-b6a5-b89827d48d99'),
(174, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '6c0f0af7-15a8-4d83-a915-a8b46e646b6d'),
(178, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:26:01', '2020-11-07 15:26:01', '26e1e2f8-a40e-47eb-b15a-4fe32220e43f'),
(182, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:26:20', '2020-11-07 15:26:20', '55044586-27d2-49e8-97bd-6c54dcc820e0'),
(186, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '1603c286-6df7-42e1-9adc-c00fe2075996'),
(190, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '4061529f-aaa6-4fd1-b149-65a2d66c158f'),
(194, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '24c587b2-d0e5-4402-8dee-f0f716fbdb84'),
(198, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:49:37', '2020-11-07 15:49:37', '35170789-6b89-4836-b868-378e38d3804d'),
(202, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:51:15', '2020-11-07 15:51:15', 'dd9d2f2d-4223-4299-8e47-ae610773e086'),
(206, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '5ac8f867-8d16-4364-8891-aed4cec611a0'),
(210, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:53:43', '2020-11-07 15:53:43', 'a47ad112-f01b-4599-adae-4bbed664dd0b'),
(214, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '1c9eec54-174e-4c6e-9cd3-0a56f29777c0'),
(218, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'b612f7d2-1f50-4dc7-83b3-c75db91b59bc'),
(222, 11, NULL, 11, NULL, '2020-11-07 16:27:00', NULL, NULL, '2020-11-07 16:27:00', '2020-11-07 16:27:00', '3382b6a5-26a6-4c28-8b7c-00af500995ea'),
(223, 11, NULL, 11, NULL, '2020-11-07 16:27:00', NULL, NULL, '2020-11-07 16:27:00', '2020-11-07 16:27:00', '3c7c49ee-1743-46e4-9359-894a45812e25'),
(224, 12, NULL, 12, NULL, '2020-11-07 16:27:00', NULL, NULL, '2020-11-07 16:27:43', '2020-11-07 16:27:43', '911ce469-bc3d-47cd-a50a-f8778de910db'),
(225, 12, NULL, 12, NULL, '2020-11-07 16:27:00', NULL, NULL, '2020-11-07 16:27:43', '2020-11-07 16:27:43', 'b11d4f0d-e29d-4041-a1ea-77d0872d7dc6'),
(228, 8, NULL, 8, NULL, '2020-11-07 10:50:00', NULL, NULL, '2020-11-07 16:31:13', '2020-11-07 16:31:13', '76888640-66fe-483c-bf89-bf95363e7662'),
(242, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 22:28:27', '2020-11-07 22:28:27', '40c3d04d-d3e9-4fee-84f4-1fdb2e4699e7'),
(246, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '4d326299-8474-41a3-9060-b73624c71e56'),
(250, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'feee4455-f379-4e29-a3c1-23511b4dff5e'),
(255, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-07 23:19:45', '2020-11-07 23:19:45', 'c7c992b9-b2a8-4218-a3e9-c4e15e85ecb5'),
(259, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-08 11:07:15', '2020-11-08 11:07:15', 'ef3b6b37-3265-4685-b96f-c4f1702bcd66'),
(263, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-08 11:29:32', '2020-11-08 11:29:32', 'ab91a94f-7721-4152-8a25-2100dbfaf834'),
(267, 1, NULL, 1, NULL, '2020-11-06 16:46:00', NULL, NULL, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '93f24996-c17f-4a16-8053-2aa7643ef011');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Home', 'home', 0, 'site', NULL, '{section.name|raw}', 1, '2020-11-06 16:46:55', '2020-11-06 16:46:55', NULL, '4589c020-19b8-4344-9649-61d0bd202723'),
(2, 2, 3, 'About Us', 'aboutUs', 0, 'site', NULL, '{section.name|raw}', 1, '2020-11-06 17:28:49', '2020-11-06 17:28:49', '2020-11-06 20:14:16', '8260a015-edad-4c66-b7af-e45cccdfe70c'),
(3, 3, 4, 'Contact', 'contact', 0, 'site', NULL, '{section.name|raw}', 1, '2020-11-06 17:29:11', '2020-11-06 17:29:11', '2020-11-06 20:14:23', '3399721b-403d-47a5-8723-8e7716c43372'),
(4, 4, 8, 'Blog Posts', 'blogPosts', 1, 'site', NULL, NULL, 1, '2020-11-06 17:46:11', '2020-11-06 17:46:11', '2020-11-06 20:14:20', 'd2573c98-b552-46c3-a2a6-bcdc7fe62d64'),
(5, 5, 9, 'Blog', 'blog', 0, 'site', NULL, '{section.name|raw}', 1, '2020-11-06 17:54:31', '2020-11-06 17:54:31', '2020-11-06 20:14:18', '22cc17a8-543b-462b-ae7b-ec24a51eed67'),
(6, 6, 12, 'Blog Posts', 'blogPosts', 1, 'site', NULL, NULL, 1, '2020-11-07 09:40:07', '2020-11-07 09:41:43', NULL, '92239b63-bd16-418a-b7b4-a34ec5aed1b1'),
(7, 7, 13, 'About us', 'aboutUs', 0, 'site', NULL, '{section.name|raw}', 1, '2020-11-07 10:50:32', '2020-11-07 10:50:32', NULL, '8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf'),
(8, 8, 14, 'Contact', 'contact', 0, 'site', NULL, '{section.name|raw}', 1, '2020-11-07 10:50:50', '2020-11-07 10:50:50', NULL, 'd59fed57-3a07-47bb-a0b4-ea6d136b0411'),
(9, 9, 15, 'Service Posts', 'servicePosts', 1, 'site', NULL, NULL, 1, '2020-11-07 13:09:39', '2020-11-07 13:09:39', NULL, '58f57571-bf9f-4e5d-9706-5cf8a492bfcb'),
(10, 10, 16, 'Case Studies Posts', 'caseStudiesPosts', 1, 'site', NULL, NULL, 1, '2020-11-07 14:03:49', '2020-11-07 14:03:49', NULL, '52210e00-44d4-4ada-bcbe-7246fdb4dc9d'),
(11, 11, 17, 'Services', 'services', 0, 'site', NULL, '{section.name|raw}', 1, '2020-11-07 16:27:00', '2020-11-07 16:27:00', NULL, '2d5f04c3-c763-444e-9e1a-09c52eab4583'),
(12, 12, 18, 'Case Studies', 'caseStudies', 0, 'site', NULL, '{section.name|raw}', 1, '2020-11-07 16:27:43', '2020-11-07 16:27:43', NULL, '167d8937-773f-418f-97e7-d7220c321396');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Common', '2020-11-06 16:46:00', '2020-11-06 16:46:00', 'b101b2e5-3692-494a-9a88-a9054f0e26be');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 3, 7, 1, 0, 1, '2020-11-06 17:30:06', '2020-11-06 17:30:06', 'ce58f537-0aa0-4850-8c7b-967f1f066511'),
(5, 4, 8, 1, 0, 1, '2020-11-06 17:30:18', '2020-11-06 17:30:18', '7d0e6d1b-5aa8-4f71-95f2-9545412f7bc4'),
(8, 6, 10, 3, 0, 0, '2020-11-06 17:34:01', '2020-11-06 17:34:01', '3c7a8345-4402-4e0b-8f85-33a32c4a8147'),
(10, 8, 13, 1, 0, 1, '2020-11-06 17:47:10', '2020-11-06 17:47:10', '3063dda2-7b18-46f4-a8ed-bc473ad4a6d1'),
(26, 10, 21, 9, 0, 0, '2020-11-06 19:50:03', '2020-11-06 19:50:03', 'e48eb33e-fee0-41c2-8b10-3782e64f6a7f'),
(27, 10, 21, 8, 0, 1, '2020-11-06 19:50:03', '2020-11-06 19:50:03', 'be55c207-a8b8-4bc8-923e-65dd92d12e5a'),
(48, 12, 35, 1, 0, 1, '2020-11-07 10:20:50', '2020-11-07 10:20:50', '7b02808b-1d27-4301-850c-b2203d44abf9'),
(49, 12, 35, 2, 0, 2, '2020-11-07 10:20:50', '2020-11-07 10:20:50', '674b6b0c-616b-4484-8bb7-8bb42478b007'),
(50, 5, 36, 5, 1, 0, '2020-11-07 10:47:21', '2020-11-07 10:47:21', '02b43b15-20ca-49a1-99db-a36517d7f0ad'),
(51, 5, 36, 4, 1, 1, '2020-11-07 10:47:21', '2020-11-07 10:47:21', '5da74635-7563-489e-887d-e5802f695eb7'),
(52, 13, 39, 1, 0, 1, '2020-11-07 12:50:35', '2020-11-07 12:50:35', '5cde2ff4-f71d-40aa-8fbe-019a32e98b20'),
(53, 14, 40, 1, 0, 1, '2020-11-07 12:50:45', '2020-11-07 12:50:45', 'bcd88fb1-7ad4-44fa-bd95-2259a7af33c8'),
(54, 15, 42, 1, 0, 1, '2020-11-07 13:10:34', '2020-11-07 13:10:34', '2a37c1a0-8c0f-4b72-9fe8-ebc94d105093'),
(55, 15, 42, 2, 0, 2, '2020-11-07 13:10:34', '2020-11-07 13:10:34', 'f1a21dca-3e36-4947-8de9-aa6fef8eebd8'),
(56, 16, 44, 1, 0, 1, '2020-11-07 14:04:00', '2020-11-07 14:04:00', '645c9543-d8d3-4fa3-830b-42c349c035ad'),
(57, 16, 44, 2, 0, 2, '2020-11-07 14:04:00', '2020-11-07 14:04:00', '014ab7d0-602b-405c-8ef0-510ae49b4c14'),
(88, 1, 59, 2, 0, 1, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '674d43d8-987e-439b-91ad-861400660fa7'),
(89, 1, 59, 10, 0, 2, '2020-11-07 15:54:49', '2020-11-07 15:54:49', 'c6c1dd82-3a42-41a2-adbc-f6d825ec50a0'),
(90, 1, 60, 1, 0, 0, '2020-11-07 15:54:49', '2020-11-07 15:54:49', 'd238ec6b-c373-4517-b685-5848367044ce'),
(91, 1, 60, 14, 0, 1, '2020-11-07 15:54:49', '2020-11-07 15:54:49', 'c1feaea2-8e1c-43a2-9f2d-16b2cefc7dea'),
(92, 1, 61, 16, 0, 0, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '47d83f13-8b1b-4c58-9804-66d23b985ca1'),
(93, 1, 61, 18, 0, 1, '2020-11-07 15:54:49', '2020-11-07 15:54:49', 'e84e54ff-5c40-4a3d-9101-3051f35e8e4f'),
(94, 1, 61, 15, 0, 2, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '6e570390-7b28-495d-86a6-785c3c539dd7'),
(95, 1, 62, 19, 0, 0, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '73f2a1bb-a78f-4e14-bcce-f627727c4efc'),
(96, 1, 62, 21, 0, 1, '2020-11-07 15:54:49', '2020-11-07 15:54:49', 'b7fe44f4-821f-4e6a-bd41-f7a0116e94d3'),
(97, 1, 62, 20, 0, 2, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '8bedf9f4-6035-49e2-9beb-f834cc3dd132'),
(111, 7, 73, 1, 0, 0, '2020-11-07 16:56:27', '2020-11-07 16:56:27', '234e796b-c160-45ab-a982-d5f02737b123'),
(112, 7, 74, 22, 0, 0, '2020-11-07 16:56:27', '2020-11-07 16:56:27', '3d1fe0e3-c902-463a-9ad0-79d57c9fa1fa'),
(113, 7, 74, 23, 0, 1, '2020-11-07 16:56:27', '2020-11-07 16:56:27', '18eb1f08-2a4e-4e9d-8259-0bc78b97d883'),
(114, 7, 74, 17, 0, 2, '2020-11-07 16:56:27', '2020-11-07 16:56:27', '41916304-c209-40e4-9ecd-4f498bfac669'),
(115, 7, 75, 3, 0, 0, '2020-11-07 16:56:27', '2020-11-07 16:56:27', '79d5e1fb-1d35-4e4d-8892-c5acb0cae9d3'),
(117, 19, 77, 23, 0, 0, '2020-11-07 17:19:14', '2020-11-07 17:19:14', 'f68f94d1-97ea-42f4-b29c-12ea01e9603d'),
(118, 19, 77, 17, 0, 1, '2020-11-07 17:19:14', '2020-11-07 17:19:14', '9b02fa83-f1cb-4f56-8c3b-19787fc699b9'),
(119, 19, 77, 3, 0, 2, '2020-11-07 17:19:14', '2020-11-07 17:19:14', '3d8f1976-e232-431d-80d4-9e8409cfc70d'),
(120, 20, 78, 23, 0, 0, '2020-11-07 17:25:14', '2020-11-07 17:25:14', 'fb278019-f270-4325-8537-a63618dddb44'),
(121, 20, 78, 17, 0, 1, '2020-11-07 17:25:14', '2020-11-07 17:25:14', '0729cf41-f66e-4012-bbd7-e944ba6e3713'),
(122, 20, 78, 3, 0, 2, '2020-11-07 17:25:14', '2020-11-07 17:25:14', '53f1b444-793f-48a4-9dab-2d75817ac8ff'),
(123, 11, 79, 13, 0, 0, '2020-11-07 22:34:14', '2020-11-07 22:34:14', 'fec4d720-2e35-4b6e-85a9-032c5406f8ea'),
(124, 11, 79, 12, 0, 1, '2020-11-07 22:34:14', '2020-11-07 22:34:14', 'ae3852b5-184b-4e75-8206-ae356330233a'),
(125, 11, 79, 11, 0, 2, '2020-11-07 22:34:14', '2020-11-07 22:34:14', '5ae09dfd-02aa-468c-bf89-818a4b6eabdf'),
(126, 11, 79, 24, 0, 3, '2020-11-07 22:34:14', '2020-11-07 22:34:14', '7607e105-7a88-413d-98e8-e6fe119ce587');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2020-11-06 16:46:55', '2020-11-06 16:46:55', NULL, 'dd6a72de-235d-45f6-9acd-c13b6381a58e'),
(2, 'craft\\elements\\Asset', '2020-11-06 17:07:22', '2020-11-06 17:07:22', NULL, '4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0'),
(3, 'craft\\elements\\Entry', '2020-11-06 17:28:49', '2020-11-06 17:28:49', '2020-11-06 20:14:16', 'ab585be2-16a8-405b-9ad7-b557799188ef'),
(4, 'craft\\elements\\Entry', '2020-11-06 17:29:11', '2020-11-06 17:29:11', '2020-11-06 20:14:23', 'b6b4aa6c-1a99-4a6d-882c-c2482ad22b86'),
(5, 'craft\\elements\\MatrixBlock', '2020-11-06 17:33:14', '2020-11-06 17:33:14', NULL, '981ebc0e-3b8e-434f-b1d3-aefb0aca3829'),
(6, 'craft\\elements\\GlobalSet', '2020-11-06 17:34:01', '2020-11-06 17:34:01', NULL, 'c16c45e2-40ae-427c-aa4f-074241f50dd9'),
(7, 'craft\\elements\\GlobalSet', '2020-11-06 17:40:07', '2020-11-06 17:40:07', NULL, '2d682b6d-cf94-44b7-980f-ec25df38bba5'),
(8, 'craft\\elements\\Entry', '2020-11-06 17:46:11', '2020-11-06 17:46:11', '2020-11-06 20:14:20', 'b42e0c23-6319-40d0-ab3b-6edcafd2a889'),
(9, 'craft\\elements\\Entry', '2020-11-06 17:54:31', '2020-11-06 17:54:31', '2020-11-06 20:14:18', '51fd0102-11d5-4ec5-b79a-64901290d0d2'),
(10, 'craft\\elements\\MatrixBlock', '2020-11-06 19:50:03', '2020-11-06 19:50:03', NULL, 'a2422955-9a79-4f25-a39c-4a5cfd17d124'),
(11, 'craft\\elements\\MatrixBlock', '2020-11-06 20:17:46', '2020-11-06 20:17:46', NULL, '9b57adc5-ebed-44f0-92c9-1fe5a184892e'),
(12, 'craft\\elements\\Entry', '2020-11-07 09:40:07', '2020-11-07 09:40:07', NULL, 'fee33818-3d74-4b69-af9e-6e92b22dcf75'),
(13, 'craft\\elements\\Entry', '2020-11-07 10:50:32', '2020-11-07 10:50:32', NULL, '4954df90-a700-44d9-94de-18bcc925761b'),
(14, 'craft\\elements\\Entry', '2020-11-07 10:50:50', '2020-11-07 10:50:50', NULL, '6aa5d759-9f9b-490e-9869-f27ffb9acfe2'),
(15, 'craft\\elements\\Entry', '2020-11-07 13:09:39', '2020-11-07 13:09:39', NULL, '2d688e1b-dc9c-46e9-a4e6-ca8231b46174'),
(16, 'craft\\elements\\Entry', '2020-11-07 14:03:49', '2020-11-07 14:03:49', NULL, '8b177c13-97a9-4f59-aaac-cda96ee064a4'),
(17, 'craft\\elements\\Entry', '2020-11-07 16:27:00', '2020-11-07 16:27:00', NULL, '688ed6cc-71ff-4d49-b392-9b848ef69d5d'),
(18, 'craft\\elements\\Entry', '2020-11-07 16:27:43', '2020-11-07 16:27:43', NULL, '75501cf6-b813-45b3-9a6c-ad22ce9da593'),
(19, 'craft\\elements\\GlobalSet', '2020-11-07 17:13:51', '2020-11-07 17:13:51', NULL, '925a7de7-a0db-46fc-8131-323c444da7a3'),
(20, 'craft\\elements\\GlobalSet', '2020-11-07 17:25:14', '2020-11-07 17:25:14', NULL, '3f6073dc-3436-4144-8bf7-39992eb0e797');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `elements` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 2, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2020-11-06 17:07:22', '2020-11-06 17:07:22', '817e04b1-a580-4787-a289-6ea724bd7c93'),
(7, 3, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"}]', 1, '2020-11-06 17:30:06', '2020-11-06 17:30:06', '2b21ee95-8a61-4a79-b688-e825aaacb2a5'),
(8, 4, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"}]', 1, '2020-11-06 17:30:18', '2020-11-06 17:30:18', '56e1e726-01b3-4f32-9fbd-bceb11283e5a'),
(10, 6, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"}]', 1, '2020-11-06 17:34:01', '2020-11-06 17:34:01', '381d2387-a6c8-482a-8941-2b21582fdd37'),
(13, 8, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"}]', 1, '2020-11-06 17:47:10', '2020-11-06 17:47:10', 'cebe66e6-6e39-446c-b874-86ced8294845'),
(14, 9, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2020-11-06 17:54:31', '2020-11-06 17:54:31', '01831dbe-d94b-4af6-8ecc-19678a53c45d'),
(21, 10, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"39ea9498-43be-4bce-9d61-49e9fce66ad3\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"0fbfc8e7-08df-474a-880d-58e0a79fb311\"}]', 1, '2020-11-06 19:50:03', '2020-11-06 19:50:03', '6bbe7f91-b1c3-48b3-bb83-deeb5cc51881'),
(35, 12, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6cff4e3c-62dc-4ed7-89bd-976918723ab5\"}]', 1, '2020-11-07 10:20:50', '2020-11-07 10:20:50', '54932bd6-9860-4ff3-abe8-ae1bb53166e3'),
(36, 5, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"d6e7c384-54ea-4f5e-8335-e7ab1aa781c5\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"566a8986-1697-4be4-9289-01a28b915abb\"}]', 1, '2020-11-07 10:47:21', '2020-11-07 10:47:21', '44c00ae7-b2dc-4fa3-b2ed-f82b927474de'),
(39, 13, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"}]', 1, '2020-11-07 12:50:35', '2020-11-07 12:50:35', '2f8b7525-c039-41d4-af95-5ed2b3098907'),
(40, 14, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"}]', 1, '2020-11-07 12:50:45', '2020-11-07 12:50:45', '327138c0-6ef7-4318-9783-98a9c54a2155'),
(42, 15, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6cff4e3c-62dc-4ed7-89bd-976918723ab5\"}]', 1, '2020-11-07 13:10:34', '2020-11-07 13:10:34', '99a2b102-08e3-4078-b59a-3f7c2131ee36'),
(44, 16, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6cff4e3c-62dc-4ed7-89bd-976918723ab5\"}]', 1, '2020-11-07 14:04:00', '2020-11-07 14:04:00', 'c17073a4-d8bc-4633-bf68-4dcc9c10bb37'),
(59, 1, 'Hero Section', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6cff4e3c-62dc-4ed7-89bd-976918723ab5\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"afc606cf-ca53-4856-859f-a9b52222149e\"}]', 1, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '5c3a5d77-da91-4805-9cd7-90ba29514c62'),
(60, 1, 'Text Section', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"72d96ef9-05ac-4848-903c-962c8c1b0466\"}]', 2, '2020-11-07 15:54:49', '2020-11-07 15:54:49', 'c0a08222-1957-445b-bc4d-99b895bf0d05'),
(61, 1, 'CTA Section', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"41bc5b22-810f-46ea-abaf-28834eb783ca\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"8ddb6768-78a4-400e-ba9c-d3537f46662a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2\"}]', 3, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '08899bed-63f9-420f-b66f-0604f256141e'),
(62, 1, 'Location Section', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d48ff451-4766-4ecb-8947-141900ff184c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"fdba470a-7119-407a-956a-aa673e18caa8\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"064aa7a9-3143-428b-9b3f-ecc356d30ed4\"}]', 4, '2020-11-07 15:54:49', '2020-11-07 15:54:49', '8f59320a-3729-47cd-b1c9-4d5bd662fa0b'),
(63, 17, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2020-11-07 16:27:00', '2020-11-07 16:27:00', '03b0a02d-7241-4335-b7ca-e98df7dac595'),
(64, 18, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2020-11-07 16:27:43', '2020-11-07 16:27:43', '72288fb8-febf-4223-8509-6d33659bf87d'),
(73, 7, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"}]', 1, '2020-11-07 16:56:27', '2020-11-07 16:56:27', '178bf132-42c2-4110-aa01-6db3f50cc179'),
(74, 7, 'Address', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"0e557d11-fea8-4380-9bd4-56312139d927\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"246fa870-fd49-4236-9550-d4cdf6dd4ec6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c74ed7dd-1632-4d16-a71e-42bc5e35d6eb\"}]', 2, '2020-11-07 16:56:27', '2020-11-07 16:56:27', 'f9f09f09-0e06-49c6-84b5-25be2dbb9951'),
(75, 7, 'Navigation', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"}]', 3, '2020-11-07 16:56:27', '2020-11-07 16:56:27', 'e36826b5-f20f-4487-b220-3b3407f156da'),
(77, 19, 'Navigation', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"246fa870-fd49-4236-9550-d4cdf6dd4ec6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c74ed7dd-1632-4d16-a71e-42bc5e35d6eb\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"}]', 1, '2020-11-07 17:19:14', '2020-11-07 17:19:14', '3b0ad2fd-6737-493b-8999-1ac897cb6211'),
(78, 20, 'Navigation', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"246fa870-fd49-4236-9550-d4cdf6dd4ec6\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c74ed7dd-1632-4d16-a71e-42bc5e35d6eb\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"}]', 1, '2020-11-07 17:25:14', '2020-11-07 17:25:14', 'dcd40538-3b7e-4cde-bbc4-29502910bbe9'),
(79, 11, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"3be9964d-44be-462a-ab6b-ffc9f36784ab\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"0c632c03-9564-48ff-bab9-e4b82642a211\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d2000a95-20fb-47c6-9274-e83e3fab2c5c\"}]', 1, '2020-11-07 22:34:14', '2020-11-07 22:34:14', '0f483efe-8b9f-43a7-8148-39b36a22743e');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Rich Text', 'richText', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2020-11-06 16:48:42', '2020-11-06 16:54:20', '6e426b5b-d7ff-4617-9749-f54ecd209e70'),
(2, 1, 'Feature Image', 'featureImage', 'global', '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:c2774548-0ea6-402e-bf92-794a588a541d\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:c2774548-0ea6-402e-bf92-794a588a541d\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:c2774548-0ea6-402e-bf92-794a588a541d\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2020-11-06 17:11:09', '2020-11-06 17:11:09', '6cff4e3c-62dc-4ed7-89bd-976918723ab5'),
(3, 1, 'Navigation', 'navigation', 'global', '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_navigation}}\",\"maxBlocks\":\"6\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}', '2020-11-06 17:33:14', '2020-11-06 18:43:29', 'd9d86d07-b2a4-4b49-8021-c8ef13af1404'),
(4, NULL, 'Link Destination', 'linkDestination', 'matrixBlockType:dfacfa0a-f777-4d0f-afb0-879a8dc452ca', '', 0, 'site', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"limit\":\"1\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2020-11-06 17:33:14', '2020-11-07 10:47:21', '566a8986-1697-4be4-9289-01a28b915abb'),
(5, NULL, 'Link Text', 'linkText', 'matrixBlockType:dfacfa0a-f777-4d0f-afb0-879a8dc452ca', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-11-06 17:33:14', '2020-11-06 17:33:14', 'd6e7c384-54ea-4f5e-8335-e7ab1aa781c5'),
(8, NULL, 'Link Destination', 'linkDestination', 'matrixBlockType:b42a6070-743b-4806-9bac-b40727169afb', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-11-06 19:50:03', '2020-11-06 19:50:03', '0fbfc8e7-08df-474a-880d-58e0a79fb311'),
(9, NULL, 'Link Text', 'linkText', 'matrixBlockType:b42a6070-743b-4806-9bac-b40727169afb', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-11-06 19:50:03', '2020-11-06 19:50:03', '39ea9498-43be-4bce-9d61-49e9fce66ad3'),
(10, 1, 'Hero Slides', 'heroSlides', 'global', '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_heroslides}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}', '2020-11-06 20:17:46', '2020-11-06 20:17:46', 'afc606cf-ca53-4856-859f-a9b52222149e'),
(11, NULL, 'Link Text', 'linkText', 'matrixBlockType:ca5c631d-d8b5-4c26-8208-8551b511663f', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-11-06 20:17:46', '2020-11-06 20:17:46', '0c632c03-9564-48ff-bab9-e4b82642a211'),
(12, NULL, 'Slide text', 'slideText', 'matrixBlockType:ca5c631d-d8b5-4c26-8208-8551b511663f', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2020-11-06 20:17:46', '2020-11-06 20:17:46', '3be9964d-44be-462a-ab6b-ffc9f36784ab'),
(13, NULL, 'Slide Title', 'slideTitle', 'matrixBlockType:ca5c631d-d8b5-4c26-8208-8551b511663f', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-11-06 20:58:52', '2020-11-06 20:58:52', '54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0'),
(14, 1, 'Button', 'button', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-11-06 22:42:49', '2020-11-06 22:42:49', '72d96ef9-05ac-4848-903c-962c8c1b0466'),
(15, 1, 'CTA Image', 'ctaImage', 'global', '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:c2774548-0ea6-402e-bf92-794a588a541d\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:c2774548-0ea6-402e-bf92-794a588a541d\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:c2774548-0ea6-402e-bf92-794a588a541d\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2020-11-07 15:16:09', '2020-11-07 15:16:09', 'eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2'),
(16, 1, 'CTA text', 'ctaText', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2020-11-07 15:16:32', '2020-11-07 15:16:32', '41bc5b22-810f-46ea-abaf-28834eb783ca'),
(17, 1, 'Channel Link Text', 'channelLinkText', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-11-07 15:32:01', '2020-11-07 17:17:57', 'c74ed7dd-1632-4d16-a71e-42bc5e35d6eb'),
(18, 1, 'CTA Link Destination', 'ctaLinkDestination', 'global', '', 0, 'site', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"limit\":\"1\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2020-11-07 15:32:44', '2020-11-07 15:32:44', '8ddb6768-78a4-400e-ba9c-d3537f46662a'),
(19, 1, 'Location Text', 'locationText', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2020-11-07 15:49:18', '2020-11-07 15:50:22', 'd48ff451-4766-4ecb-8947-141900ff184c'),
(20, 1, 'Location Button Destination', 'locationButtonDestination', 'global', '', 0, 'site', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"limit\":\"\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2020-11-07 15:52:40', '2020-11-07 15:52:40', '064aa7a9-3143-428b-9b3f-ecc356d30ed4'),
(21, 1, 'Location Button text', 'locationButtonText', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-11-07 15:54:17', '2020-11-07 15:54:17', 'fdba470a-7119-407a-956a-aa673e18caa8'),
(22, 1, 'Address', 'address', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2020-11-07 16:35:46', '2020-11-07 16:35:46', '0e557d11-fea8-4380-9bd4-56312139d927'),
(23, 1, 'Channel Link Destination', 'channelLinkDestination', 'global', '', 0, 'site', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"limit\":\"\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2020-11-07 16:43:05', '2020-11-07 17:17:28', '246fa870-fd49-4236-9550-d4cdf6dd4ec6'),
(24, NULL, 'Link Destination', 'linkDestination', 'matrixBlockType:ca5c631d-d8b5-4c26-8208-8551b511663f', '', 0, 'site', NULL, 'craft\\fields\\Entries', '{\"allowSelfRelations\":false,\"limit\":\"1\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":true,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2020-11-07 22:34:14', '2020-11-07 22:34:14', 'd2000a95-20fb-47c6-9274-e83e3fab2c5c');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `globalsets`
--

INSERT INTO `globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(19, 'Header', 'header', 6, '2020-11-06 17:34:01', '2020-11-06 17:34:01', '9ef9083d-8fc7-449b-9ab6-df9e49c4a489'),
(22, 'Footer', 'footer', 7, '2020-11-06 17:40:07', '2020-11-06 17:40:07', '861ed63f-2023-4694-874d-eabe7710d75d'),
(232, 'Services', 'services', 19, '2020-11-07 17:13:51', '2020-11-07 17:13:51', '12fae9eb-8e4f-4af2-8442-a673b10437d4'),
(236, 'Case Studies', 'caseStudies', 20, '2020-11-07 17:25:14', '2020-11-07 17:25:14', 'c6e56f9e-4a9c-45f5-9eb6-39d161de10b1');

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` text,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.5.15.1', '3.5.13', 0, 'usobvmbkffbc', 'ygoivyxuzngf', '2020-11-06 16:46:00', '2020-11-07 22:34:14', '0d0061bb-2bf7-4e51-98fb-d9d7ed2105e8');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocks`
--

INSERT INTO `matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(20, 19, 3, 1, 1, NULL, '2020-11-06 17:36:12', '2020-11-06 17:36:12', 'ec45fa83-4f02-4bfb-8e47-57e368b43df6'),
(21, 19, 3, 1, 2, 0, '2020-11-06 17:36:12', '2020-11-06 17:36:12', '0789562a-170c-4501-9548-62d07ebc97fd'),
(35, 19, 3, 1, 3, 0, '2020-11-06 17:54:54', '2020-11-06 17:54:54', '87d1a7bb-f0c0-487e-95ff-896ca8b9fa34'),
(41, 19, 3, 1, 4, 0, '2020-11-06 18:40:07', '2020-11-06 18:40:07', '191abcbc-2529-4815-81f9-2263c8c23f70'),
(42, 19, 3, 1, 5, 0, '2020-11-06 18:40:07', '2020-11-06 18:40:07', '7d166f3e-2ace-48a7-b00a-d04bb555d751'),
(43, 19, 3, 1, 4, NULL, '2020-11-06 18:40:07', '2020-11-07 16:28:50', 'bfb3bab9-97f3-4a18-9f62-19157ecf96ca'),
(54, 2, 10, 3, 1, NULL, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '6d295968-3837-4e46-8490-d04d6edcc0ef'),
(55, 2, 10, 3, 2, NULL, '2020-11-06 20:18:53', '2020-11-06 20:18:53', 'b6ee319a-2ddd-4291-bc75-170e1ccbea9e'),
(57, 56, 10, 3, 1, NULL, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '67f756d6-9dea-4db2-b54b-c346232ca9f4'),
(58, 56, 10, 3, 2, NULL, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '09495980-61c8-4948-973f-10b54c91ea14'),
(60, 59, 10, 3, 1, NULL, '2020-11-06 20:59:50', '2020-11-06 20:59:50', 'e7f4f405-ba71-4e6b-b43f-f1310997fdfb'),
(61, 59, 10, 3, 2, NULL, '2020-11-06 20:59:50', '2020-11-06 20:59:50', 'ee2d93ad-4d7c-411a-936b-cf8a339189d2'),
(62, 2, 10, 3, 3, NULL, '2020-11-06 21:07:08', '2020-11-06 21:07:08', '7337ef96-e209-43b8-a862-69b7ca6d8b7d'),
(64, 63, 10, 3, 1, NULL, '2020-11-06 21:07:08', '2020-11-06 21:07:08', '20a06a87-22c7-4705-ad7c-ed1a8cd6d074'),
(65, 63, 10, 3, 2, NULL, '2020-11-06 21:07:08', '2020-11-06 21:07:08', '13d311c2-21e7-4f35-a49f-2f3d1fbc8b77'),
(66, 63, 10, 3, 3, NULL, '2020-11-06 21:07:08', '2020-11-06 21:07:08', '3c186839-dcc6-44ef-b6d5-c321cfe57a34'),
(68, 67, 10, 3, 1, NULL, '2020-11-06 21:24:15', '2020-11-06 21:24:15', 'e1872e52-9880-4a7e-9195-8d9355cb2464'),
(69, 67, 10, 3, 2, NULL, '2020-11-06 21:24:15', '2020-11-06 21:24:15', 'c4ddb003-2957-41d3-9ec6-2bd07f397064'),
(70, 67, 10, 3, 3, NULL, '2020-11-06 21:24:15', '2020-11-06 21:24:15', '95ff407c-0bc7-4dcb-8b6f-d476eefd1b74'),
(72, 71, 10, 3, 1, NULL, '2020-11-06 22:33:41', '2020-11-06 22:33:41', 'edfccb8c-cc61-453e-b43e-26a81b69da20'),
(73, 71, 10, 3, 2, NULL, '2020-11-06 22:33:42', '2020-11-06 22:33:42', '6c25adc0-7cc7-452b-9ff7-629daeb97185'),
(74, 71, 10, 3, 3, NULL, '2020-11-06 22:33:42', '2020-11-06 22:33:42', '1cf797c7-7d7c-4bdc-8bde-690e028fe58b'),
(76, 75, 10, 3, 1, NULL, '2020-11-06 22:33:55', '2020-11-06 22:33:55', 'a9893ff8-df56-4d9e-b1e2-040d227731d6'),
(77, 75, 10, 3, 2, NULL, '2020-11-06 22:33:55', '2020-11-06 22:33:55', '4bf2535a-5539-4eb8-ade5-7f2743c9a222'),
(78, 75, 10, 3, 3, NULL, '2020-11-06 22:33:55', '2020-11-06 22:33:55', 'f0a28c8a-f354-42e5-8f74-7deff315b678'),
(80, 79, 10, 3, 1, NULL, '2020-11-06 22:43:07', '2020-11-06 22:43:07', 'd0aaae31-003c-41d3-a556-0935bc600583'),
(81, 79, 10, 3, 2, NULL, '2020-11-06 22:43:07', '2020-11-06 22:43:07', '24794f2f-095f-4075-b26d-e1d359913c08'),
(82, 79, 10, 3, 3, NULL, '2020-11-06 22:43:07', '2020-11-06 22:43:07', '61303eba-df6d-44fd-9b3a-94798564b5e2'),
(84, 83, 10, 3, 1, NULL, '2020-11-06 22:43:24', '2020-11-06 22:43:24', '3295b98d-592c-4c68-95b5-6b9c28e67709'),
(85, 83, 10, 3, 2, NULL, '2020-11-06 22:43:24', '2020-11-06 22:43:24', '9777ea7c-615e-4071-9dab-533f8ce7887f'),
(86, 83, 10, 3, 3, NULL, '2020-11-06 22:43:24', '2020-11-06 22:43:24', '2fa417d8-d881-4132-861f-830ee62628c0'),
(88, 87, 10, 3, 1, NULL, '2020-11-06 22:43:47', '2020-11-06 22:43:47', 'add1db15-3fde-4651-889a-c4ec542de903'),
(89, 87, 10, 3, 2, NULL, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '9497c5a5-bbd4-4909-930a-deeb4ac018cd'),
(90, 87, 10, 3, 3, NULL, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '310e8df3-faa4-411c-95f3-860da77fc527'),
(166, 165, 10, 3, 1, NULL, '2020-11-07 15:17:22', '2020-11-07 15:17:22', 'c61bdc1d-5843-48a6-80cf-0fedd6ee048a'),
(167, 165, 10, 3, 2, NULL, '2020-11-07 15:17:22', '2020-11-07 15:17:22', 'd84ab4af-b37b-40c2-aea0-865861485b2c'),
(168, 165, 10, 3, 3, NULL, '2020-11-07 15:17:22', '2020-11-07 15:17:22', 'ebd6de25-837e-4cee-acb4-3daefc342452'),
(170, 169, 10, 3, 1, NULL, '2020-11-07 15:18:30', '2020-11-07 15:18:30', '19a3fad4-a47c-48cd-a860-d70a74bcc9d4'),
(171, 169, 10, 3, 2, NULL, '2020-11-07 15:18:30', '2020-11-07 15:18:30', 'dcf8994f-3fb5-4463-be23-ec748c4b6c87'),
(172, 169, 10, 3, 3, NULL, '2020-11-07 15:18:30', '2020-11-07 15:18:30', 'aeb6c207-d29a-48ae-98da-fd8378a7c1b4'),
(175, 174, 10, 3, 1, NULL, '2020-11-07 15:19:54', '2020-11-07 15:19:54', 'da9a03c3-321e-4be7-8772-8de3591f2035'),
(176, 174, 10, 3, 2, NULL, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '7d7eab09-caf7-461a-a5ab-8dce0113ef5b'),
(177, 174, 10, 3, 3, NULL, '2020-11-07 15:19:54', '2020-11-07 15:19:54', 'bcb0ae32-04d3-481f-b6c8-6fa300c57fdd'),
(179, 178, 10, 3, 1, NULL, '2020-11-07 15:26:01', '2020-11-07 15:26:01', 'f3d6c0ad-3c0f-4341-8ab5-50cbc23bf1d6'),
(180, 178, 10, 3, 2, NULL, '2020-11-07 15:26:01', '2020-11-07 15:26:01', '00667c90-0c94-4cb5-863b-d0d7ddf63570'),
(181, 178, 10, 3, 3, NULL, '2020-11-07 15:26:01', '2020-11-07 15:26:01', '6b65d095-db01-44e1-976e-e3c81ef2ba5c'),
(183, 182, 10, 3, 1, NULL, '2020-11-07 15:26:20', '2020-11-07 15:26:20', 'd5f70cf6-3fea-4a1d-b0da-ada25c8ac04c'),
(184, 182, 10, 3, 2, NULL, '2020-11-07 15:26:20', '2020-11-07 15:26:20', 'c2771b86-2cfe-450f-b042-d9559b221f5f'),
(185, 182, 10, 3, 3, NULL, '2020-11-07 15:26:20', '2020-11-07 15:26:20', 'fc278fb1-08e4-45af-9ace-35c6151b0ea4'),
(187, 186, 10, 3, 1, NULL, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '96297669-6475-487b-8ea7-237d9e98d148'),
(188, 186, 10, 3, 2, NULL, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '5dd03f03-94ba-4b75-978e-324e5a222752'),
(189, 186, 10, 3, 3, NULL, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '330f2fcb-321a-418f-90bd-2ad5a42a9694'),
(191, 190, 10, 3, 1, NULL, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '0f7b49d1-5e71-42cc-8fb3-43086f565e16'),
(192, 190, 10, 3, 2, NULL, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '625bcd86-3d9a-4714-aa6e-68e3599d6b4b'),
(193, 190, 10, 3, 3, NULL, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '7ac4b206-0258-4818-a938-7696980d83bf'),
(195, 194, 10, 3, 1, NULL, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '3f164f6d-800d-4b22-86db-d26c25ba256f'),
(196, 194, 10, 3, 2, NULL, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '2b01a9f1-4260-4c8a-9f1c-1f79075e134c'),
(197, 194, 10, 3, 3, NULL, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '600fde6b-6e69-49a3-bfb6-fcb7df5dd77b'),
(199, 198, 10, 3, 1, NULL, '2020-11-07 15:49:37', '2020-11-07 15:49:37', 'a6c694c3-9412-4ea3-8858-df033392a578'),
(200, 198, 10, 3, 2, NULL, '2020-11-07 15:49:37', '2020-11-07 15:49:37', 'b95e47b0-8047-464d-8de9-5c21e9c03619'),
(201, 198, 10, 3, 3, NULL, '2020-11-07 15:49:37', '2020-11-07 15:49:37', '6b5d2783-d399-4637-a626-277907feff57'),
(203, 202, 10, 3, 1, NULL, '2020-11-07 15:51:15', '2020-11-07 15:51:15', '37538b08-577f-4321-ac48-485c1940fe95'),
(204, 202, 10, 3, 2, NULL, '2020-11-07 15:51:15', '2020-11-07 15:51:15', 'a7a77a06-9414-495b-a15c-d846d7527e7a'),
(205, 202, 10, 3, 3, NULL, '2020-11-07 15:51:15', '2020-11-07 15:51:15', '6584ee63-b2e1-4485-b5d5-680f2d78b3c3'),
(207, 206, 10, 3, 1, NULL, '2020-11-07 15:53:21', '2020-11-07 15:53:21', 'b9756778-deb4-43cf-8c54-fd7c2416f036'),
(208, 206, 10, 3, 2, NULL, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '2e382de3-4485-4069-885b-4781c5a6bf52'),
(209, 206, 10, 3, 3, NULL, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '178ddf0b-73f3-49d4-86c3-d8e2a92f5a51'),
(211, 210, 10, 3, 1, NULL, '2020-11-07 15:53:43', '2020-11-07 15:53:43', 'c9155e46-5a55-4605-b317-31c6ed5cdc18'),
(212, 210, 10, 3, 2, NULL, '2020-11-07 15:53:43', '2020-11-07 15:53:43', 'aec511b2-0549-49e7-9752-fe22ba1e6299'),
(213, 210, 10, 3, 3, NULL, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '7c6ed1cf-aa0d-4867-8cdb-4ee31e8353f1'),
(215, 214, 10, 3, 1, NULL, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '7266ef3a-613c-4ca0-bd51-3c6151c415f9'),
(216, 214, 10, 3, 2, NULL, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '64f51a83-d1d6-4707-bbb1-4b4957e01c75'),
(217, 214, 10, 3, 3, NULL, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '6fce4ce2-db9b-410a-822b-a528b2fd9bd2'),
(219, 218, 10, 3, 1, NULL, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'e26e08f4-08a1-4a70-82b7-5cead2f9f3b0'),
(220, 218, 10, 3, 2, NULL, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'c4dbbd55-9f55-4f27-a666-e08e67cdb232'),
(221, 218, 10, 3, 3, NULL, '2020-11-07 15:55:01', '2020-11-07 15:55:01', '49429b16-1f09-449b-ab39-640a9763f1a2'),
(226, 19, 3, 1, 2, NULL, '2020-11-07 16:28:40', '2020-11-07 16:28:50', '8f605650-8fe5-43a3-9b17-106409ba5b9f'),
(227, 19, 3, 1, 3, NULL, '2020-11-07 16:28:40', '2020-11-07 16:28:50', '0892b163-1d1b-4da7-8d13-a913301bb8b4'),
(229, 22, 3, 1, 1, NULL, '2020-11-07 16:57:31', '2020-11-07 16:57:31', '6da39cc8-7606-45db-9d0a-85c7e7c04624'),
(230, 22, 3, 1, 2, NULL, '2020-11-07 16:57:31', '2020-11-07 16:57:31', 'ff295cca-d8bc-4d87-bc86-d65838be9b1d'),
(231, 22, 3, 1, 3, NULL, '2020-11-07 16:57:31', '2020-11-07 16:57:31', 'b1c83764-1515-4290-b825-e91a6027402a'),
(233, 232, 3, 1, 1, NULL, '2020-11-07 17:15:39', '2020-11-07 17:15:39', '8cd29a30-10c0-4e2e-893b-c185caf3259d'),
(234, 232, 3, 1, 2, NULL, '2020-11-07 17:15:39', '2020-11-07 17:15:39', '8c73e979-2fcd-4dd1-b561-9ef7989a0c4a'),
(235, 232, 3, 1, 3, NULL, '2020-11-07 17:15:39', '2020-11-07 17:15:39', '8a8f8e4f-a179-40a9-bc48-2e27884c99ec'),
(237, 236, 3, 1, 1, NULL, '2020-11-07 17:26:31', '2020-11-07 17:26:31', '0487f2eb-07dc-4eef-a038-ed6db529dc6d'),
(238, 236, 3, 1, 2, NULL, '2020-11-07 17:26:31', '2020-11-07 17:26:31', 'f0b03166-9a39-487f-bcdd-6c9551b8e9ef'),
(239, 236, 3, 1, 3, NULL, '2020-11-07 17:26:31', '2020-11-07 17:26:31', '5b199d42-28de-413c-a2f4-d086cb01fb77'),
(240, 19, 3, 1, 5, NULL, '2020-11-07 17:44:21', '2020-11-07 17:44:21', '259229e5-bbe3-4937-a031-ebe7f6cf0103'),
(241, 19, 3, 1, 6, NULL, '2020-11-07 17:44:21', '2020-11-07 17:44:21', '6f00655f-96fe-47ac-8aa6-8e9f08195dbf'),
(243, 242, 10, 3, 1, NULL, '2020-11-07 22:28:27', '2020-11-07 22:28:27', '5d3369df-a417-4f66-a3e1-6b69113e4526'),
(244, 242, 10, 3, 2, NULL, '2020-11-07 22:28:28', '2020-11-07 22:28:28', '1cb16856-1374-4242-a171-13b21cf103c2'),
(245, 242, 10, 3, 3, NULL, '2020-11-07 22:28:28', '2020-11-07 22:28:28', '83cd795e-0cde-4fa7-84ed-056639d87529'),
(247, 246, 10, 3, 1, NULL, '2020-11-07 22:31:16', '2020-11-07 22:31:16', 'cf9c1dc8-757e-436d-b5b5-23f5d8b15680'),
(248, 246, 10, 3, 2, NULL, '2020-11-07 22:31:16', '2020-11-07 22:31:16', 'd0faabdf-583a-44fc-9c9d-252b10842410'),
(249, 246, 10, 3, 3, NULL, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '202c1950-0103-4e46-9b1a-bf4cdf48a36d'),
(251, 250, 10, 3, 1, NULL, '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'd8db52a5-1d4a-4396-a8b8-2016c09b42e4'),
(252, 250, 10, 3, 2, NULL, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '41fe8e0d-104c-43a0-9d6a-4742c344d6b8'),
(253, 250, 10, 3, 3, NULL, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '28713ed7-ff18-41a8-9072-e99a5d4d1b8f'),
(256, 255, 10, 3, 1, NULL, '2020-11-07 23:19:45', '2020-11-07 23:19:45', '98e069c1-2529-417f-88ca-f9600d32d141'),
(257, 255, 10, 3, 2, NULL, '2020-11-07 23:19:46', '2020-11-07 23:19:46', 'be338653-3470-461f-bd7b-26de411f2900'),
(258, 255, 10, 3, 3, NULL, '2020-11-07 23:19:46', '2020-11-07 23:19:46', 'c9d4a86a-b125-4abc-ab87-f378dd120742'),
(260, 259, 10, 3, 1, NULL, '2020-11-08 11:07:15', '2020-11-08 11:07:15', '0e2f317b-17e9-4235-b392-07df17355784'),
(261, 259, 10, 3, 2, NULL, '2020-11-08 11:07:15', '2020-11-08 11:07:15', 'dd2e7ada-a024-4368-a20b-277a312fe758'),
(262, 259, 10, 3, 3, NULL, '2020-11-08 11:07:16', '2020-11-08 11:07:16', '4ee4358f-545d-4165-b3ea-f2c9c29960ff'),
(264, 263, 10, 3, 1, NULL, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '9b71200a-0dc7-4e6c-a58b-fb81eef02f74'),
(265, 263, 10, 3, 2, NULL, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '0c76443e-160c-427b-9305-912c3e2a87a2'),
(266, 263, 10, 3, 3, NULL, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '3b193ec5-41cb-4f9c-a88d-a423356b93de'),
(268, 267, 10, 3, 1, NULL, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '76378a57-8373-4560-959d-b4f90be1f55e'),
(269, 267, 10, 3, 2, NULL, '2020-11-08 11:39:57', '2020-11-08 11:39:57', 'bc97b48d-de9c-4755-b3ef-4c05948da06f'),
(270, 267, 10, 3, 3, NULL, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '5cf2e907-efcb-4811-80e8-2a783cad506d');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocktypes`
--

INSERT INTO `matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 5, 'Nav Link', 'navLink', 1, '2020-11-06 17:33:14', '2020-11-06 17:33:14', 'dfacfa0a-f777-4d0f-afb0-879a8dc452ca'),
(3, 10, 11, 'Hero Slides', 'heroSlides', 1, '2020-11-06 20:17:46', '2020-11-06 20:17:46', 'ca5c631d-d8b5-4c26-8208-8551b511663f');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_heroslides`
--

CREATE TABLE `matrixcontent_heroslides` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_heroSlides_linkText` text,
  `field_heroSlides_slideText` text,
  `field_heroSlides_slideTitle` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_heroslides`
--

INSERT INTO `matrixcontent_heroslides` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_heroSlides_linkText`, `field_heroSlides_slideText`, `field_heroSlides_slideTitle`) VALUES
(1, 54, 1, '2020-11-06 20:18:53', '2020-11-08 11:07:15', '8f0458c3-425b-4f22-9ab0-b18304901665', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Innovation Partner'),
(2, 55, 1, '2020-11-06 20:18:53', '2020-11-08 11:07:15', '9df4c1b9-b470-4b48-b9e0-23df4715a950', 'Link & Arrow', '<h1>Nostrum minima dolore ipsum.</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Top Class Team'),
(3, 57, 1, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '57a41f25-5445-4fe1-a7ea-66a22f2a087f', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', NULL),
(4, 58, 1, '2020-11-06 20:18:53', '2020-11-06 20:18:53', '1079aaab-dce9-4aed-bcc7-0e7801e0aff2', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', NULL),
(5, 60, 1, '2020-11-06 20:59:50', '2020-11-06 20:59:50', 'fc30a4e4-9f1d-4c94-b3e9-00cff44fe957', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(6, 61, 1, '2020-11-06 20:59:50', '2020-11-06 20:59:50', '6387f924-eee4-42b5-8f91-8af146732efa', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(7, 62, 1, '2020-11-06 21:07:08', '2020-11-08 11:07:15', '8ab67b35-75ef-47ad-8fd8-8c64d2a7c0f0', 'Link & Arrow', '<h1>Tempora optio reiciendis natus.</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Corporate Solutions'),
(8, 64, 1, '2020-11-06 21:07:08', '2020-11-06 21:07:08', 'f28524e0-e812-47cd-bbe0-c60db74d3ae5', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(9, 65, 1, '2020-11-06 21:07:08', '2020-11-06 21:07:08', 'dcbde5db-3d96-42e9-8301-5c848550ff38', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(10, 66, 1, '2020-11-06 21:07:08', '2020-11-06 21:07:08', '01ce138b-1965-4251-b8a1-d19c11f28af8', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(11, 68, 1, '2020-11-06 21:24:15', '2020-11-06 21:24:15', '486c5f40-a9e5-40c2-b316-823ca6f96dab', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(12, 69, 1, '2020-11-06 21:24:15', '2020-11-06 21:24:15', '3ec35fca-3f3c-4fd6-9695-c94a4f821f88', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(13, 70, 1, '2020-11-06 21:24:15', '2020-11-06 21:24:15', '4533d4f0-9cf1-4292-bd98-06b86accc8ea', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(14, 72, 1, '2020-11-06 22:33:41', '2020-11-06 22:33:41', 'dece8e60-35b8-47fe-8268-33495de6a644', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(15, 73, 1, '2020-11-06 22:33:42', '2020-11-06 22:33:42', '22dc510a-b746-44f0-a06d-7590d14f3099', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(16, 74, 1, '2020-11-06 22:33:42', '2020-11-06 22:33:42', 'dc49aadd-e9a4-4b6e-99b0-05c1eb386be4', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(17, 76, 1, '2020-11-06 22:33:55', '2020-11-06 22:33:55', '2178554f-62e5-41c7-9097-2cf5a2709396', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(18, 77, 1, '2020-11-06 22:33:55', '2020-11-06 22:33:55', '4ba07f5d-7ceb-4d37-b35c-a6e2d051db7c', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(19, 78, 1, '2020-11-06 22:33:55', '2020-11-06 22:33:55', '953de12b-75aa-4ec9-81a9-675059315da8', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(20, 80, 1, '2020-11-06 22:43:07', '2020-11-06 22:43:07', '785d2600-ba51-4fa8-a80e-8b15729e03f9', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(21, 81, 1, '2020-11-06 22:43:07', '2020-11-06 22:43:07', '524712a5-c6f2-4c25-9fa5-eb655b7a1dc2', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(22, 82, 1, '2020-11-06 22:43:07', '2020-11-06 22:43:07', '223349d8-dc87-4f84-bfbe-58837e3d4183', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(23, 84, 1, '2020-11-06 22:43:24', '2020-11-06 22:43:24', '912ec305-e874-46ac-a390-beb16dc617f9', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(24, 85, 1, '2020-11-06 22:43:24', '2020-11-06 22:43:24', 'd719db4b-04f9-4dc1-83f9-17d7f4e9d7f8', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(25, 86, 1, '2020-11-06 22:43:24', '2020-11-06 22:43:24', '9ee56b41-53d8-479a-bb94-7c123a02fa2c', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(26, 88, 1, '2020-11-06 22:43:47', '2020-11-06 22:43:47', 'a664952f-fa60-4235-8545-5f805aedc803', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(27, 89, 1, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '69e2f0f0-9896-4c75-ab09-32776c59b0ff', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(28, 90, 1, '2020-11-06 22:43:47', '2020-11-06 22:43:47', '138d302b-10f7-4ef7-9799-2960c13ff677', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(29, 166, 1, '2020-11-07 15:17:22', '2020-11-07 15:17:22', 'cd33f91f-b599-4712-9a79-aeec5123e530', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(30, 167, 1, '2020-11-07 15:17:22', '2020-11-07 15:17:22', '75bab402-70eb-43ed-a7f0-9772b463f5c1', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(31, 168, 1, '2020-11-07 15:17:22', '2020-11-07 15:17:22', '7c4705b8-cad7-4b3a-8308-c5396a3bedce', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(32, 170, 1, '2020-11-07 15:18:30', '2020-11-07 15:18:30', 'fa8c058b-a1de-49f7-b8c3-008d0861f474', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(33, 171, 1, '2020-11-07 15:18:30', '2020-11-07 15:18:30', 'e50b5d03-3147-422d-80d1-b8fac691f866', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(34, 172, 1, '2020-11-07 15:18:30', '2020-11-07 15:18:30', '0b6ca096-9bcc-403f-80ea-2d0156e118ea', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(35, 175, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '8e1ae551-747e-400a-8383-fd7176047dc3', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(36, 176, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '9cd1b2a1-f5fc-4950-83af-cd28929c6dd3', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(37, 177, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '638cbd0b-7ff1-4a4e-baea-872223cfec38', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(38, 179, 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', 'fac4308f-eca3-4c29-af02-8b10dffc3745', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(39, 180, 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', '2d316484-e159-467d-a220-dcdb103af939', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(40, 181, 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', 'e0189f13-7c3e-4e34-ba9e-d0d3a8ecd236', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(41, 183, 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', '12483638-9d8c-4925-8e61-ebff8f4afc6f', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(42, 184, 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', '7d5b703a-7752-4a78-beaf-68561d053843', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(43, 185, 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', '45b6e936-117c-41d1-8768-ad022e5e1f82', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(44, 187, 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '3a16c9a5-1b34-47f5-ba98-e043d78b9014', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(45, 188, 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '9b783f00-1ebd-46fa-ae1e-414e0ebf892f', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(46, 189, 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '6b3b3971-5ca2-4d85-8713-658e211f3dd3', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(47, 191, 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '75a35a1a-40f4-44ed-8ce3-edb77acbd26f', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(48, 192, 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '2229eccc-d6ac-4d64-bb6b-e0931e8effc3', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(49, 193, 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '9e6ea11f-3f7d-4d74-96c3-fd5304bd03a7', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(50, 195, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', 'b2d996db-da86-4e08-8801-3204445f5fa9', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(51, 196, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '078d516f-75db-493d-b648-cab319882f7e', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(52, 197, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', '16e16625-9e40-45c8-b291-500d4fc10a23', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(53, 199, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', 'f45beae5-7242-432f-9e0b-0fcb7a3674b5', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(54, 200, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', 'ebdafc9f-18db-40ab-9ea7-c22670e7f4b5', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(55, 201, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', 'e5d41173-1f53-4cf3-a88f-ff73394df786', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(56, 203, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', '91f8e3bb-ae5f-43d0-8dfe-301b6bbb7635', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(57, 204, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', 'b59862d9-4343-40a5-bd29-8e847ce50cc7', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(58, 205, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', '4c222701-9a96-4141-a6e2-c29636de99b2', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(59, 207, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '32f6c3d7-4a5d-49d9-b068-084f8a1b22f0', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(60, 208, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '2cf5857c-d908-49a7-8e2e-8931700053ae', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(61, 209, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '2ba402dc-250a-4356-ac79-1182ceeac798', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(62, 211, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', 'c4bc92d4-1f98-4d87-99ed-20a3b5addbdb', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(63, 212, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '45c13a8f-dbdf-4c77-a9e1-c66f2c89d061', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(64, 213, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '5fa32326-ddb1-4075-b8d3-7a3f801e29cb', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(65, 215, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '86dc01f6-7858-4722-98ec-0621c2532232', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(66, 216, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', 'e5b5889b-cac5-4f74-833b-70ca40e9c5d1', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(67, 217, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', 'ec6f76f8-9bec-4bac-8f51-5201b1613494', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(68, 219, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', '0def7004-1626-44ae-bd1f-7b42e3f0a24c', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(69, 220, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', '7c867d7f-b25b-45e0-80c4-7df0c8886e4f', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(70, 221, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'f81980be-1ab6-48dd-bbfb-1754d731815d', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(71, 243, 1, '2020-11-07 22:28:27', '2020-11-07 22:28:27', '9784f35b-6a78-44f6-8d51-b50480b43bd0', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>\n', 'Innovation Partner'),
(72, 244, 1, '2020-11-07 22:28:28', '2020-11-07 22:28:28', '397d98fe-f5ed-479a-ac6e-98029bdeda34', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Top Class Team'),
(73, 245, 1, '2020-11-07 22:28:28', '2020-11-07 22:28:28', '4d035d82-5371-4496-abba-7d9a4828e1f4', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk. Must evidence candidate institution religious spring partner tax.</p>', 'Corporate Solutions'),
(74, 247, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '7da4d074-4926-4b41-a442-ab7c4cdd4566', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Innovation Partner'),
(75, 248, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '08cafb48-81a7-42af-8e28-256a75757587', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Top Class Team'),
(76, 249, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', 'f6cbaab1-8a2d-4024-8a34-3386cac8c93e', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Corporate Solutions'),
(77, 251, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'f2cb0b4e-2556-47b5-b924-2454f9b63bac', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Innovation Partner'),
(78, 252, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '8449e2c0-1697-40fd-bec8-05b5fb896341', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Top Class Team'),
(79, 253, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '7a4f3ca2-c903-481a-bc6d-053c0713e3dd', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Corporate Solutions'),
(80, 256, 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', '5b5eaeda-53f9-472c-bb5d-2ca7013da515', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Innovation Partner'),
(81, 257, 1, '2020-11-07 23:19:46', '2020-11-07 23:19:46', '5e6e36a5-5ad6-4dbd-9920-f0f19d86bbb4', 'Link & Arrow', '<h1>Here we have a two line display number 2</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Top Class Team'),
(82, 258, 1, '2020-11-07 23:19:46', '2020-11-07 23:19:46', 'a7577d8c-59af-4b91-b149-5562b57b705e', 'Link & Arrow', '<h1>Here we have a two line display number 3</h1>\n<p>Provident odio suscipit blanditiis ex quia beatae repellat. Adipisci earum maxime reprehenderit vitae. Atque quo officiis dolore deleniti corporis tenetur laboriosam. Detail great talk.</p>', 'Corporate Solutions'),
(83, 260, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', '9943b098-88ad-4f53-aa38-f454a2629e9d', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Innovation Partner'),
(84, 261, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', '491b9c7a-ac45-413e-8199-4b752c8aef25', 'Link & Arrow', '<h1>Nostrum minima dolore ipsum.</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Top Class Team'),
(85, 262, 1, '2020-11-08 11:07:16', '2020-11-08 11:07:16', 'd2b81401-cbc2-48db-be1d-bd687f3ec3ac', 'Link & Arrow', '<h1>Tempora optio reiciendis natus.</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Corporate Solutions'),
(86, 264, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '48efa54c-1920-4fd7-907e-fd8ddd0d0d8e', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Innovation Partner'),
(87, 265, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '0749722a-3b0b-4905-8f07-8504ed14748e', 'Link & Arrow', '<h1>Nostrum minima dolore ipsum.</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Top Class Team'),
(88, 266, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '03cbb284-5c91-46c0-822b-7d51617d5cd0', 'Link & Arrow', '<h1>Tempora optio reiciendis natus.</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Corporate Solutions'),
(89, 268, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '74a57b97-e3b5-4557-a015-69fcbae3bc17', 'Link & Arrow', '<h1>Here we have a two line display intro</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Innovation Partner'),
(90, 269, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', 'e95ccc7e-3d23-497e-ad2c-b922af58ed3b', 'Link & Arrow', '<h1>Nostrum minima dolore ipsum.</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Top Class Team'),
(91, 270, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', 'af54b2b2-ab1c-4e7e-8d31-c829284e5976', 'Link & Arrow', '<h1>Tempora optio reiciendis natus.</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Corporate Solutions');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_navigation`
--

CREATE TABLE `matrixcontent_navigation` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_navLink_linkText` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_navigation`
--

INSERT INTO `matrixcontent_navigation` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_navLink_linkText`) VALUES
(1, 20, 1, '2020-11-06 17:36:12', '2020-11-07 20:49:26', '1a498bf1-b8df-4db5-b4b9-17cf853820a0', 'About Us'),
(2, 21, 1, '2020-11-06 17:36:12', '2020-11-06 18:40:07', '75b9c290-b274-4640-84d0-46b26ca15f0e', 'Navigation 2'),
(3, 35, 1, '2020-11-06 17:54:54', '2020-11-06 18:40:07', 'de037db4-b4b1-4d3e-840b-bfd3089b2937', 'Navigation 3'),
(4, 41, 1, '2020-11-06 18:40:07', '2020-11-06 18:40:07', 'eeb6e9a4-c85a-41ff-817a-ff6b457e2a88', 'Navigation 4'),
(5, 42, 1, '2020-11-06 18:40:07', '2020-11-06 18:40:07', '87e25d7e-573f-42b9-a25c-63ba095516d6', 'Navigation 5'),
(6, 43, 1, '2020-11-06 18:40:07', '2020-11-07 20:49:26', '5b15eb1e-ca58-4d9d-bb60-a1caaf45d729', 'Contact'),
(7, 226, 1, '2020-11-07 16:28:40', '2020-11-07 20:49:26', '27334c2c-8356-4e02-9bbf-bc87fa60c95c', 'Services'),
(8, 227, 1, '2020-11-07 16:28:40', '2020-11-07 20:49:26', '2febb643-48a4-4f84-8ebf-3796a7d016fc', 'Case Studies'),
(9, 229, 1, '2020-11-07 16:57:31', '2020-11-07 22:40:07', 'a4814557-7660-4b19-b354-f9092e2499ac', 'Cookie Policy'),
(10, 230, 1, '2020-11-07 16:57:31', '2020-11-07 22:40:07', '3a88fc73-a70c-489d-99c7-65f833fd68da', 'Privacy Policy'),
(11, 231, 1, '2020-11-07 16:57:31', '2020-11-07 22:40:07', '5d0203df-c1ef-4ad6-a81b-3007700fe944', 'Terms & Conditions'),
(12, 233, 1, '2020-11-07 17:15:39', '2020-11-07 17:20:32', '551d7663-b5bc-43de-a8d2-87dcba1c292e', 'Service One'),
(13, 234, 1, '2020-11-07 17:15:39', '2020-11-07 17:20:32', 'c5d2a436-7d34-4bb5-8f00-78ca52d98362', 'Service Two'),
(14, 235, 1, '2020-11-07 17:15:39', '2020-11-07 17:20:32', '270a7a78-d75b-411b-8180-01532b492e36', 'Service Three'),
(15, 237, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', 'eb20973b-acb9-4997-aadd-08ca4349940e', 'Case Study One'),
(16, 238, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', '255c3f6e-8323-4dad-8e7f-48148753997b', 'Case Study Two'),
(17, 239, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', '3751e246-5cd8-4844-8530-c9dc717dfe4d', 'Case Study Three'),
(18, 240, 1, '2020-11-07 17:44:21', '2020-11-07 20:49:26', '0aecbe9c-f83c-4479-b099-76fb909b17f1', 'Navigation'),
(19, 241, 1, '2020-11-07 17:44:21', '2020-11-07 20:49:26', '7d0533e0-d08b-4ad3-b9f3-8a07db0dbf25', 'Navigation');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_onpagelink`
--

CREATE TABLE `matrixcontent_onpagelink` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_link_linkDestination` text,
  `field_link_linkText` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_onpagelink`
--

INSERT INTO `matrixcontent_onpagelink` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_link_linkDestination`, `field_link_linkText`) VALUES
(1, 49, 1, '2020-11-06 19:50:36', '2020-11-06 19:50:36', '85bccc4e-be62-46cf-a4ae-8cc9928acf4a', '#one', 'Link & Arrow'),
(2, 51, 1, '2020-11-06 19:50:36', '2020-11-06 19:50:36', 'b0a85a56-4e07-4f8e-9319-0a40a1aaf37a', '#one', 'Link & Arrow');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '5016da36-79b7-4191-a766-5ebeeda0724b'),
(2, 'craft', 'm150403_183908_migrations_table_changes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a620cb95-513d-42e4-a5c2-bd97313d290f'),
(3, 'craft', 'm150403_184247_plugins_table_changes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'c0b153f5-18a5-4767-901c-0456b8d22502'),
(4, 'craft', 'm150403_184533_field_version', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a482e902-7c49-426c-a8c0-98cc37c6b1aa'),
(5, 'craft', 'm150403_184729_type_columns', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a8f7a7c2-d8e1-4b5c-aac8-4131e1abda0b'),
(6, 'craft', 'm150403_185142_volumes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'df5f6357-7495-449c-86dd-8e623824caf8'),
(7, 'craft', 'm150428_231346_userpreferences', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'c8e8375d-951e-42a7-97ee-ac78fbf841fd'),
(8, 'craft', 'm150519_150900_fieldversion_conversion', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'cfa311de-fd2c-47a2-9e72-3b30c847f4a0'),
(9, 'craft', 'm150617_213829_update_email_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '8dc4d697-4e96-4971-a1aa-97cd4bfc3968'),
(10, 'craft', 'm150721_124739_templatecachequeries', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '435c317a-07f3-420e-b0f6-16817f96e8a7'),
(11, 'craft', 'm150724_140822_adjust_quality_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '8cd8b761-bbfb-4219-8732-d338a59a3493'),
(12, 'craft', 'm150815_133521_last_login_attempt_ip', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'df6ab29b-b55a-4fb3-937a-1399111faf26'),
(13, 'craft', 'm151002_095935_volume_cache_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '5864fbe6-a967-42b7-b853-30300cfc6153'),
(14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'b747d573-0d51-446f-ae0e-06ca7844b2c1'),
(15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '48546e7d-689d-43d1-9679-90c896423ea4'),
(16, 'craft', 'm151209_000000_move_logo', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '5140e6cf-3e63-4ddd-8d48-d14f26b39804'),
(17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '20010d96-1eb9-4214-a5a2-0f7e47587067'),
(18, 'craft', 'm151215_000000_rename_asset_permissions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '49ba8cdb-6123-4a5a-a99a-3b027ba04b17'),
(19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'b5cd7e73-aaf6-4915-b4e3-e7faa57138e0'),
(20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'f119be1b-cb2e-4d34-aad8-0bcd364d6771'),
(21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'e8ed59d0-59a3-4330-95cd-5e0c888b6fed'),
(22, 'craft', 'm160727_194637_column_cleanup', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '1346feac-b61d-479a-99c3-828715b4ee39'),
(23, 'craft', 'm160804_110002_userphotos_to_assets', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '60b50ae1-a915-4f39-9539-3f63f3a2180f'),
(24, 'craft', 'm160807_144858_sites', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '132097a2-35b9-4fa1-b27a-71d7bae573f3'),
(25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '9dc57e8d-ce95-41c1-b1af-c11e42995835'),
(26, 'craft', 'm160830_000000_asset_index_uri_increase', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'c2e38596-7dfa-4fac-9ebf-f879a69d4a93'),
(27, 'craft', 'm160912_230520_require_entry_type_id', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '284621ef-9c4e-4f01-8c35-c1cdefa31699'),
(28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '3d6db9a3-29fd-49fe-963f-15bc454c5289'),
(29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '790c844f-e404-4dca-a870-35d865d7a6c7'),
(30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'd1efe59d-ade3-4ac1-b803-a29307f7a6c3'),
(31, 'craft', 'm160925_113941_route_uri_parts', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '54d926ed-b780-4642-b4d0-b2b917ea946a'),
(32, 'craft', 'm161006_205918_schemaVersion_not_null', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'cc45d419-07e7-47c7-9c6d-3bb395267f64'),
(33, 'craft', 'm161007_130653_update_email_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'b5ce4cbd-b31d-464f-ad62-cc9bcf80a58f'),
(34, 'craft', 'm161013_175052_newParentId', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '37d12ca1-cf0e-45a5-b241-94fb70b7cd10'),
(35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '8e39ae6c-e04c-43fe-8a5a-0ef51bc8f03a'),
(36, 'craft', 'm161021_182140_rename_get_help_widget', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'd01997c6-cf3c-4357-ad7d-4e0b09b57dac'),
(37, 'craft', 'm161025_000000_fix_char_columns', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '26b8716c-6941-4174-b580-2920a7e085f0'),
(38, 'craft', 'm161029_124145_email_message_languages', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4123ded5-5de0-4044-b91a-51c6fc2b1263'),
(39, 'craft', 'm161108_000000_new_version_format', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '3680b69d-8e63-47ce-90c7-418aa4d85f16'),
(40, 'craft', 'm161109_000000_index_shuffle', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4f214615-a1a1-4e99-8e46-26120c6773a2'),
(41, 'craft', 'm161122_185500_no_craft_app', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '589af2c5-137d-4124-a8a0-58da56b0ecea'),
(42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '0bd5a84e-c2ed-46e9-b152-9eaeb4d9151d'),
(43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '135693a5-3377-4e45-acb9-e9e605c0b0cd'),
(44, 'craft', 'm170114_161144_udates_permission', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '33f1022f-9a02-4ebb-b11d-1d4fce192ed0'),
(45, 'craft', 'm170120_000000_schema_cleanup', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '608654a8-fdf5-4d16-8f03-dd0189c66694'),
(46, 'craft', 'm170126_000000_assets_focal_point', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '76dccd45-01c7-4c36-8875-dd19694e09cd'),
(47, 'craft', 'm170206_142126_system_name', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'eb8c813f-0724-4537-9277-31cb61fee9e5'),
(48, 'craft', 'm170217_044740_category_branch_limits', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4c4c5154-a711-4843-9066-21b3637e52cd'),
(49, 'craft', 'm170217_120224_asset_indexing_columns', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '0481a7ae-c286-4016-af94-ad1b01c1f1c2'),
(50, 'craft', 'm170223_224012_plain_text_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '99943eb8-2a21-407d-a5db-e83857d21cdd'),
(51, 'craft', 'm170227_120814_focal_point_percentage', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '64e976d4-b9a4-4ae7-aafb-ce27e775b8ce'),
(52, 'craft', 'm170228_171113_system_messages', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '8ec42958-6d11-4e67-9461-933ce6182b7a'),
(53, 'craft', 'm170303_140500_asset_field_source_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4546f8b8-ad8a-44fa-a119-a7b2c22ca574'),
(54, 'craft', 'm170306_150500_asset_temporary_uploads', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'b80dccd8-a77e-4676-b4b6-3a07a93c70da'),
(55, 'craft', 'm170523_190652_element_field_layout_ids', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '5c0927e2-d621-4a56-a1cb-9da1cb045e2a'),
(56, 'craft', 'm170621_195237_format_plugin_handles', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '5e0a0af9-771a-4983-b832-0ac31395cf22'),
(57, 'craft', 'm170630_161027_deprecation_line_nullable', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '6341d90e-acfd-4126-93fa-6104a0a323b3'),
(58, 'craft', 'm170630_161028_deprecation_changes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'aa1fd5f8-f1ba-4c06-8cde-a07c91eb21f6'),
(59, 'craft', 'm170703_181539_plugins_table_tweaks', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'c3d6305a-2325-4cb0-a216-a5368e815fe0'),
(60, 'craft', 'm170704_134916_sites_tables', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '98fda1ae-093b-4131-a5f7-0ad4b71cdb54'),
(61, 'craft', 'm170706_183216_rename_sequences', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'f8495eb7-a1e5-43e5-b17c-29e09028ce62'),
(62, 'craft', 'm170707_094758_delete_compiled_traits', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'ecf26c8f-2243-4927-995b-dc09f4242365'),
(63, 'craft', 'm170731_190138_drop_asset_packagist', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '90fba183-9bca-49b5-9a81-2910cc4525a2'),
(64, 'craft', 'm170810_201318_create_queue_table', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'c8276af4-9a20-4b43-833b-f5974fd3689d'),
(65, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '51e0a2ed-60f5-40d3-b963-a81ea75594e7'),
(66, 'craft', 'm170914_204621_asset_cache_shuffle', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'ec26efeb-af89-4815-9bec-316b5e903380'),
(67, 'craft', 'm171011_214115_site_groups', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '51a92a71-4d3d-42e2-9a4e-c1ed17e5a582'),
(68, 'craft', 'm171012_151440_primary_site', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4f7e7daf-df32-456a-9a6b-e30049f2b0e9'),
(69, 'craft', 'm171013_142500_transform_interlace', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '6650dd47-82c0-43b5-9520-9cabec69424f'),
(70, 'craft', 'm171016_092553_drop_position_select', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '719769bf-248a-4d96-9df5-d50328ff5f40'),
(71, 'craft', 'm171016_221244_less_strict_translation_method', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '002e5544-e2e7-4cb4-b815-459981b6d888'),
(72, 'craft', 'm171107_000000_assign_group_permissions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'd5ce96e2-3adf-4d81-ad93-ec9156b3b356'),
(73, 'craft', 'm171117_000001_templatecache_index_tune', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '6ecf8473-b40c-4a64-9c3e-baeb10dd278e'),
(74, 'craft', 'm171126_105927_disabled_plugins', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'c31ac754-5001-4991-9aa9-570b879625cc'),
(75, 'craft', 'm171130_214407_craftidtokens_table', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '534abf4a-27d4-4028-993b-e27f9a332bcd'),
(76, 'craft', 'm171202_004225_update_email_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '91281674-e64a-401d-bf7a-93aacbc577fc'),
(77, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'cd97ca33-b1de-4527-86e4-408aec3f5c35'),
(78, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'bb4a721e-6e94-4399-aeae-01c951998648'),
(79, 'craft', 'm171218_143135_longtext_query_column', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'fbb93c01-b169-432e-a178-ea164d5904c2'),
(80, 'craft', 'm171231_055546_environment_variables_to_aliases', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '821b5cc6-6d64-48ca-9804-9125b748b43a'),
(81, 'craft', 'm180113_153740_drop_users_archived_column', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a0bceb91-e958-4345-b358-6153c8973774'),
(82, 'craft', 'm180122_213433_propagate_entries_setting', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4df881ba-e0aa-4e8b-838c-04cc777f4530'),
(83, 'craft', 'm180124_230459_fix_propagate_entries_values', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '228574e3-f2d7-43d9-bd40-2d3df066549d'),
(84, 'craft', 'm180128_235202_set_tag_slugs', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'fb32d5d1-c6e6-4031-af78-07ab7d492df9'),
(85, 'craft', 'm180202_185551_fix_focal_points', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'e757395d-e36e-4baf-a068-b3a571c4e062'),
(86, 'craft', 'm180217_172123_tiny_ints', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '57e51f0f-95d4-4157-8d46-3b124bf1aa9e'),
(87, 'craft', 'm180321_233505_small_ints', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'd6fdb659-0428-4cc1-ac7c-4b3cdf5fb5fb'),
(88, 'craft', 'm180328_115523_new_license_key_statuses', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '52fb7f4a-34ba-4551-a2d2-bbef1aeccf08'),
(89, 'craft', 'm180404_182320_edition_changes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '6f89ac9c-b13a-4c88-ab76-bfaf63d02ace'),
(90, 'craft', 'm180411_102218_fix_db_routes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4352948f-bbbc-4c05-bbaa-827b109a774c'),
(91, 'craft', 'm180416_205628_resourcepaths_table', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'fa9bf4f3-bf81-4e66-95bd-da3502fc26eb'),
(92, 'craft', 'm180418_205713_widget_cleanup', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'accad570-a3f5-4c6a-8ce4-0f8ed8194f3a'),
(93, 'craft', 'm180425_203349_searchable_fields', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'f6266be7-a331-4758-a9d8-165d2bdce0c3'),
(94, 'craft', 'm180516_153000_uids_in_field_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4bec36bf-10c3-4a1a-a3fe-bd01e69cc19c'),
(95, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '60161f5e-5a24-4cf0-9413-82ebe67826ea'),
(96, 'craft', 'm180518_173000_permissions_to_uid', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '986d6515-57a8-48cc-8b15-8e4ba4e77705'),
(97, 'craft', 'm180520_173000_matrix_context_to_uids', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '63081416-e307-4be0-b6d5-496cb4602f78'),
(98, 'craft', 'm180521_172900_project_config_table', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a04ec338-7c00-4677-bd75-7d96d0842f43'),
(99, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'cc8c79eb-d24d-416d-8bec-9c289b45949b'),
(100, 'craft', 'm180731_162030_soft_delete_sites', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '47ec1146-da16-45ba-af20-cb86fe4cf556'),
(101, 'craft', 'm180810_214427_soft_delete_field_layouts', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '8540582f-82d5-4aec-8f7b-c6e7785863f2'),
(102, 'craft', 'm180810_214439_soft_delete_elements', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'da219389-2f6d-46f2-96de-a77eef38d6a6'),
(103, 'craft', 'm180824_193422_case_sensitivity_fixes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'd80fb9a0-bdb2-416d-92c5-0e600f5ff8f5'),
(104, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '23295b4e-bd1b-48bb-a606-462b9bf9ada9'),
(105, 'craft', 'm180904_112109_permission_changes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'df01b44c-8ef6-49ac-b463-ff3e9fb42c21'),
(106, 'craft', 'm180910_142030_soft_delete_sitegroups', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2dc72d42-2400-4492-a54b-425547da1dd8'),
(107, 'craft', 'm181011_160000_soft_delete_asset_support', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '09bc4e6d-5d83-4ae4-94df-1370dbd29b5a'),
(108, 'craft', 'm181016_183648_set_default_user_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '61386f42-7ed6-49e6-b850-6d5990288b8a'),
(109, 'craft', 'm181017_225222_system_config_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '1200ad85-000b-4f26-832b-212fa223202a'),
(110, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'e74ce5a8-1390-413d-9b84-7762d71e6b5b'),
(111, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4195cf76-20bd-42a2-9a3d-fb586bfe8b21'),
(112, 'craft', 'm181112_203955_sequences_table', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '4ff4369c-f68c-445d-8d2b-07efae01f997'),
(113, 'craft', 'm181121_001712_cleanup_field_configs', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a4e6b84f-1eb3-4f3d-b71e-342bc67ba386'),
(114, 'craft', 'm181128_193942_fix_project_config', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '1943cf69-c78a-4796-b784-5b2c48fe0964'),
(115, 'craft', 'm181130_143040_fix_schema_version', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'b8af4f94-8326-414d-9dcd-95f84c30fbb3'),
(116, 'craft', 'm181211_143040_fix_entry_type_uids', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'dd8c6b5f-7ed7-4cb4-9b44-837de2b566df'),
(117, 'craft', 'm181217_153000_fix_structure_uids', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a85f4268-329c-41ac-bc5c-f640757a1cdf'),
(118, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'aadb9cf4-3b1a-468f-acb0-426562a362ab'),
(119, 'craft', 'm190108_110000_cleanup_project_config', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'fa8eabab-9613-4e50-83b1-32158c93c208'),
(120, 'craft', 'm190108_113000_asset_field_setting_change', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '5f5728ce-3fea-4747-98c9-de1f936d2ea1'),
(121, 'craft', 'm190109_172845_fix_colspan', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a2ad31ed-a518-42e7-b9d1-6759f4add232'),
(122, 'craft', 'm190110_150000_prune_nonexisting_sites', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '9047f071-9ef3-4128-874b-108758d30c9e'),
(123, 'craft', 'm190110_214819_soft_delete_volumes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '5f5cd825-e454-4f90-b514-3f232f72f959'),
(124, 'craft', 'm190112_124737_fix_user_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'e8b008fd-d1c7-47e7-b758-ede19afcfda4'),
(125, 'craft', 'm190112_131225_fix_field_layouts', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'aaef4ec1-bd59-4f32-a9cc-b3d353a4a958'),
(126, 'craft', 'm190112_201010_more_soft_deletes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '77efd9ca-8431-4d45-8fdf-db9b46a4de98'),
(127, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '04f969c2-44ba-4140-8907-27fa928c2346'),
(128, 'craft', 'm190121_120000_rich_text_config_setting', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'e9cb07eb-e537-431e-ba48-aaf51eebbfeb'),
(129, 'craft', 'm190125_191628_fix_email_transport_password', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'e259b530-ac31-452f-8a49-a3ff63574f63'),
(130, 'craft', 'm190128_181422_cleanup_volume_folders', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'f1334a0b-03b1-4e3d-a9e5-0f635fde6737'),
(131, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '965b1816-8ccc-4044-932b-9343206cc20f'),
(132, 'craft', 'm190218_143000_element_index_settings_uid', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '83356420-5acd-4b3a-8e8b-3ff963f13045'),
(133, 'craft', 'm190312_152740_element_revisions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'c74986b9-9849-4c02-85e9-31c37bd53d72'),
(134, 'craft', 'm190327_235137_propagation_method', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '429965d0-f0c8-4458-b655-d7aa0608eefc'),
(135, 'craft', 'm190401_223843_drop_old_indexes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a3270b71-03db-4c55-9cc3-aa8042dd1f10'),
(136, 'craft', 'm190416_014525_drop_unique_global_indexes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '6000cb59-f7a7-44af-b957-6f726694fa53'),
(137, 'craft', 'm190417_085010_add_image_editor_permissions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a4c6d6f1-5778-49b2-a678-754798153325'),
(138, 'craft', 'm190502_122019_store_default_user_group_uid', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '09fcf782-3a7a-4048-8490-7bb563ede362'),
(139, 'craft', 'm190504_150349_preview_targets', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'a6ee6eae-9a5d-4615-8f90-4a0b675b9aa0'),
(140, 'craft', 'm190516_184711_job_progress_label', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '0e019d8c-0897-4e00-b265-d9d3f61e2bf5'),
(141, 'craft', 'm190523_190303_optional_revision_creators', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '944c5fdc-3945-4d8a-b25a-34a581e8d550'),
(142, 'craft', 'm190529_204501_fix_duplicate_uids', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'aa6672b8-362d-4f18-9976-39562592468f'),
(143, 'craft', 'm190605_223807_unsaved_drafts', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '574f015e-a1fb-4e9e-8fa7-bf835141ab35'),
(144, 'craft', 'm190607_230042_entry_revision_error_tables', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '997d7206-6227-415e-a677-4c02f13c05b8'),
(145, 'craft', 'm190608_033429_drop_elements_uid_idx', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'fb7273d0-3e13-4513-9ee5-71c3e95ac578'),
(146, 'craft', 'm190617_164400_add_gqlschemas_table', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'cf134252-6f06-45ed-8493-9aeffea6320b'),
(147, 'craft', 'm190624_234204_matrix_propagation_method', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '24ac306e-2799-433b-8b6b-fa723e7c71b5'),
(148, 'craft', 'm190711_153020_drop_snapshots', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'c37fb21b-9500-4228-8f8f-a84de9281764'),
(149, 'craft', 'm190712_195914_no_draft_revisions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'fdde13b2-7999-4a49-8512-8cbecfcb0b6d'),
(150, 'craft', 'm190723_140314_fix_preview_targets_column', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '36368977-9128-4d13-8536-535df625ce49'),
(151, 'craft', 'm190820_003519_flush_compiled_templates', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '40cffac2-53b2-402e-86b0-e644d0365a81'),
(152, 'craft', 'm190823_020339_optional_draft_creators', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '12fd59c2-9c7d-4678-8c1d-51f3c058dfc6'),
(153, 'craft', 'm190913_152146_update_preview_targets', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '378b17be-7656-447b-8ba0-feff8ab82df7'),
(154, 'craft', 'm191107_122000_add_gql_project_config_support', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '84bc6fc8-0a3b-452e-8ca1-9c19e2f65797'),
(155, 'craft', 'm191204_085100_pack_savable_component_settings', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '5c7cbe8f-81c1-4dde-88a8-b1732e834ba3'),
(156, 'craft', 'm191206_001148_change_tracking', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'cc8bb5c5-ecf8-435f-bd5d-34ddf499ae32'),
(157, 'craft', 'm191216_191635_asset_upload_tracking', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'ec62f4eb-37e6-4fe9-b05b-ffd1031e883e'),
(158, 'craft', 'm191222_002848_peer_asset_permissions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '62838658-b8e6-42f6-912d-ba3147436f08'),
(159, 'craft', 'm200127_172522_queue_channels', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '3befb400-677f-47d9-989f-0338ddb93364'),
(160, 'craft', 'm200211_175048_truncate_element_query_cache', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'd2d435ac-2254-4d08-b468-f405774c35fc'),
(161, 'craft', 'm200213_172522_new_elements_index', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2de9b31b-e93f-4bbd-8532-612bb9a45669'),
(162, 'craft', 'm200228_195211_long_deprecation_messages', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '1ac114ce-880c-4380-84ac-3a11f4976d0c'),
(163, 'craft', 'm200306_054652_disabled_sites', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '0f02355b-fb75-4e8f-b382-73ffac546312'),
(164, 'craft', 'm200522_191453_clear_template_caches', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'd5baabbe-a3de-40c7-98e1-d21a061a7eee'),
(165, 'craft', 'm200606_231117_migration_tracks', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '0db5d5af-188a-44ff-930b-fc281a4db70b'),
(166, 'craft', 'm200619_215137_title_translation_method', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '99bf1b3f-ab02-4f39-9950-8134d5eec7a1'),
(167, 'craft', 'm200620_005028_user_group_descriptions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '8c4a257e-31e4-49cb-8fc5-5eaa2c36578c'),
(168, 'craft', 'm200620_230205_field_layout_changes', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '3872c180-40fc-4abe-a76d-0569332beaa6'),
(169, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '04a3f3df-31c1-4acc-938d-fd7e88f44ae0'),
(170, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '352a9276-0e9b-4c00-8d0d-c118a823cbc9'),
(171, 'craft', 'm200630_183000_drop_configmap', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '7d267c3f-0791-4c71-958a-c74d8e35a0b0'),
(172, 'craft', 'm200715_113400_transform_index_error_flag', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '85caf841-a43e-4430-bec9-5a4ccd226add'),
(173, 'craft', 'm200716_110900_replace_file_asset_permissions', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '81f41ae5-c27c-4814-938e-c22116916702'),
(174, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', 'b6dbe219-189d-4d78-b65e-e01001aadb64'),
(175, 'craft', 'm200720_175543_drop_unique_constraints', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '82063d0f-f4e8-4ccf-bb5d-b7977146052a'),
(176, 'craft', 'm200825_051217_project_config_version', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-06 16:46:01', '48734e16-e9a3-472e-888e-cb47baf9f71d'),
(177, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2020-11-06 16:53:25', '2020-11-06 16:53:25', '2020-11-06 16:53:25', '2e6d5b41-b2c5-424e-a462-76f556b9da35'),
(178, 'plugin:redactor', 'Install', '2020-11-06 16:53:25', '2020-11-06 16:53:25', '2020-11-06 16:53:25', '45de352c-883b-4d5a-93e0-07bfcad6bc21'),
(179, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2020-11-06 16:53:25', '2020-11-06 16:53:25', '2020-11-06 16:53:25', '1ea85004-45c7-45c8-9912-ef3d329a55cb');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '2.8.3', '2.3.0', 'unknown', NULL, '2020-11-06 16:53:25', '2020-11-06 16:53:25', '2020-11-08 13:34:05', 'c654b12e-a16d-4b36-9cc2-d82cd7e2e2cb');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('dateModified', '1604788454'),
('email.fromEmail', '\"bluemonkey1130@gmail.com\"'),
('email.fromName', '\"Craftiverse\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.class', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.disabled', 'false'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.id', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.instructions', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.label', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.max', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.min', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.name', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.orientation', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.readonly', 'false'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.requirable', 'false'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.size', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.step', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.tip', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.title', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.warning', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.elements.0.width', '100'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.name', '\"Content\"'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.fieldLayouts.75501cf6-b813-45b3-9a6c-ad22ce9da593.tabs.0.sortOrder', '1'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.handle', '\"caseStudies\"'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.hasTitleField', 'false'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.name', '\"Case Studies\"'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.section', '\"cdeab266-7ed4-4ddd-a06b-954cdb954037\"'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.sortOrder', '1'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.titleTranslationKeyFormat', 'null'),
('entryTypes.167d8937-773f-418f-97e7-d7220c321396.titleTranslationMethod', '\"site\"'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.class', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.disabled', 'false'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.id', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.instructions', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.label', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.max', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.min', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.name', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.orientation', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.readonly', 'false'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.requirable', 'false'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.size', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.step', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.tip', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.title', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.warning', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.elements.0.width', '100'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.name', '\"Content\"'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.fieldLayouts.688ed6cc-71ff-4d49-b392-9b848ef69d5d.tabs.0.sortOrder', '1'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.handle', '\"services\"'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.hasTitleField', 'false'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.name', '\"Services\"'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.section', '\"2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775\"'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.sortOrder', '1'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.titleTranslationKeyFormat', 'null'),
('entryTypes.2d5f04c3-c763-444e-9e1a-09c52eab4583.titleTranslationMethod', '\"site\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.class', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.disabled', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.id', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.max', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.min', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.name', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.orientation', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.readonly', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.requirable', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.size', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.step', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.title', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.0.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.1.fieldUid', '\"6cff4e3c-62dc-4ed7-89bd-976918723ab5\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.1.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.1.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.1.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.1.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.1.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.1.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.2.fieldUid', '\"afc606cf-ca53-4856-859f-a9b52222149e\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.2.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.2.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.2.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.2.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.2.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.elements.2.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.name', '\"Hero Section\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.0.sortOrder', '1'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.0.fieldUid', '\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.0.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.0.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.0.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.0.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.0.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.0.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.1.fieldUid', '\"72d96ef9-05ac-4848-903c-962c8c1b0466\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.1.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.1.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.1.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.1.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.1.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.elements.1.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.name', '\"Text Section\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.1.sortOrder', '2'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.0.fieldUid', '\"41bc5b22-810f-46ea-abaf-28834eb783ca\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.0.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.0.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.0.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.0.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.0.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.0.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.1.fieldUid', '\"8ddb6768-78a4-400e-ba9c-d3537f46662a\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.1.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.1.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.1.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.1.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.1.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.1.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.2.fieldUid', '\"eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.2.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.2.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.2.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.2.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.2.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.elements.2.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.name', '\"CTA Section\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.2.sortOrder', '3'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.0.fieldUid', '\"d48ff451-4766-4ecb-8947-141900ff184c\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.0.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.0.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.0.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.0.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.0.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.0.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.1.fieldUid', '\"fdba470a-7119-407a-956a-aa673e18caa8\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.1.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.1.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.1.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.1.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.1.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.1.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.2.fieldUid', '\"064aa7a9-3143-428b-9b3f-ecc356d30ed4\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.2.instructions', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.2.label', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.2.required', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.2.tip', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.2.warning', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.elements.2.width', '100'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.name', '\"Location Section\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.fieldLayouts.dd6a72de-235d-45f6-9acd-c13b6381a58e.tabs.3.sortOrder', '4'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.handle', '\"home\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.hasTitleField', 'false'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.name', '\"Home\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.section', '\"078152bd-07a6-48a9-bba4-f6446df31eba\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.sortOrder', '1'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.titleTranslationKeyFormat', 'null'),
('entryTypes.4589c020-19b8-4344-9649-61d0bd202723.titleTranslationMethod', '\"site\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.class', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.disabled', 'false'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.id', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.instructions', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.label', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.max', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.min', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.name', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.orientation', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.readonly', 'false'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.requirable', 'false'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.size', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.step', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.tip', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.title', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.warning', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.0.width', '100'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.1.fieldUid', '\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.1.instructions', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.1.label', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.1.required', 'false'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.1.tip', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.1.warning', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.1.width', '100'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.2.fieldUid', '\"6cff4e3c-62dc-4ed7-89bd-976918723ab5\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.2.instructions', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.2.label', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.2.required', 'false'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.2.tip', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.2.warning', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.elements.2.width', '100'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.name', '\"Content\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.fieldLayouts.8b177c13-97a9-4f59-aaac-cda96ee064a4.tabs.0.sortOrder', '1'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.handle', '\"caseStudiesPosts\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.hasTitleField', 'true'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.name', '\"Case Studies Posts\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.section', '\"2318db74-78e0-4760-b303-d2eaad36a45b\"'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.sortOrder', '1'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.titleFormat', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.titleTranslationKeyFormat', 'null'),
('entryTypes.52210e00-44d4-4ada-bcbe-7246fdb4dc9d.titleTranslationMethod', '\"site\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.class', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.disabled', 'false'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.id', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.instructions', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.label', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.max', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.min', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.name', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.orientation', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.readonly', 'false'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.requirable', 'false'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.size', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.step', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.tip', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.title', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.warning', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.0.width', '100'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.1.fieldUid', '\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.1.instructions', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.1.label', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.1.required', 'false'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.1.tip', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.1.warning', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.1.width', '100'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.2.fieldUid', '\"6cff4e3c-62dc-4ed7-89bd-976918723ab5\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.2.instructions', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.2.label', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.2.required', 'false'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.2.tip', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.2.warning', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.elements.2.width', '100'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.name', '\"Content\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.fieldLayouts.2d688e1b-dc9c-46e9-a4e6-ca8231b46174.tabs.0.sortOrder', '1'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.handle', '\"servicePosts\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.hasTitleField', 'true'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.name', '\"Service Posts\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.section', '\"2cd6b8f2-ac64-4d57-b681-fbae9316a71f\"'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.sortOrder', '1'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.titleFormat', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.titleTranslationKeyFormat', 'null'),
('entryTypes.58f57571-bf9f-4e5d-9706-5cf8a492bfcb.titleTranslationMethod', '\"site\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.class', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.disabled', 'false'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.id', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.instructions', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.label', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.max', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.min', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.name', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.orientation', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.readonly', 'false'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.requirable', 'false'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.size', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.step', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.tip', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.title', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.warning', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.0.width', '100'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.1.fieldUid', '\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.1.instructions', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.1.label', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.1.required', 'false'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.1.tip', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.1.warning', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.elements.1.width', '100'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.name', '\"Content\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.fieldLayouts.4954df90-a700-44d9-94de-18bcc925761b.tabs.0.sortOrder', '1'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.handle', '\"aboutUs\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.hasTitleField', 'false'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.name', '\"About us\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.section', '\"fadde93e-7edf-4a7c-85c8-8a153070d65a\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.sortOrder', '1'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.titleTranslationKeyFormat', 'null'),
('entryTypes.8f73b8d4-ad6a-464d-a6d8-e55bd0a63caf.titleTranslationMethod', '\"site\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.class', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.disabled', 'false'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.id', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.instructions', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.label', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.max', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.min', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.name', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.orientation', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.readonly', 'false'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.requirable', 'false'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.size', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.step', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.tip', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.title', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.warning', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.0.width', '100'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.1.fieldUid', '\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.1.instructions', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.1.label', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.1.required', 'false'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.1.tip', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.1.warning', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.1.width', '100'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.2.fieldUid', '\"6cff4e3c-62dc-4ed7-89bd-976918723ab5\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.2.instructions', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.2.label', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.2.required', 'false'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.2.tip', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.2.warning', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.elements.2.width', '100'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.name', '\"Content\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.fieldLayouts.fee33818-3d74-4b69-af9e-6e92b22dcf75.tabs.0.sortOrder', '1'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.handle', '\"blogPosts\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.hasTitleField', 'true'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.name', '\"Blog Posts\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.section', '\"7e534ac1-2a65-47a9-a5b3-de555c879e16\"'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.sortOrder', '1'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.titleFormat', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.titleTranslationKeyFormat', 'null'),
('entryTypes.92239b63-bd16-418a-b7b4-a34ec5aed1b1.titleTranslationMethod', '\"site\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.class', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.disabled', 'false'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.id', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.instructions', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.label', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.max', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.min', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.name', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.orientation', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.readonly', 'false');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.requirable', 'false'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.size', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.step', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.tip', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.title', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.warning', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.0.width', '100'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.1.fieldUid', '\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.1.instructions', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.1.label', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.1.required', 'false'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.1.tip', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.1.warning', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.elements.1.width', '100'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.name', '\"Content\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.fieldLayouts.6aa5d759-9f9b-490e-9869-f27ffb9acfe2.tabs.0.sortOrder', '1'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.handle', '\"contact\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.hasTitleField', 'false'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.name', '\"Contact\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.section', '\"9ea94e84-e58c-43f2-a311-5120ef2a3dd7\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.sortOrder', '1'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.titleTranslationKeyFormat', 'null'),
('entryTypes.d59fed57-3a07-47bb-a0b4-ea6d136b0411.titleTranslationMethod', '\"site\"'),
('fieldGroups.b101b2e5-3692-494a-9a88-a9054f0e26be.name', '\"Common\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.contentColumnType', '\"string\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.handle', '\"locationButtonDestination\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.instructions', '\"\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.name', '\"Location Button Destination\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.searchable', 'false'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.allowSelfRelations', 'false'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.limit', '\"\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.localizeRelations', 'false'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.selectionLabel', '\"\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.showSiteMenu', 'true'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.source', 'null'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.sources', '\"*\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.targetSiteId', 'null'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.validateRelatedElements', 'false'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.settings.viewMode', 'null'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.translationKeyFormat', 'null'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.translationMethod', '\"site\"'),
('fields.064aa7a9-3143-428b-9b3f-ecc356d30ed4.type', '\"craft\\\\fields\\\\Entries\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.contentColumnType', '\"text\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.handle', '\"address\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.instructions', '\"\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.name', '\"Address\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.searchable', 'false'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.availableTransforms', '\"*\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.availableVolumes', '\"*\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.cleanupHtml', 'true'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.columnType', '\"text\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.configSelectionMode', '\"choose\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.defaultTransform', '\"\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.manualConfig', '\"\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.purifierConfig', '\"\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.purifyHtml', '\"1\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.redactorConfig', '\"\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.removeEmptyTags', '\"1\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.removeInlineStyles', '\"1\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.removeNbsp', '\"1\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.showUnpermittedFiles', 'false'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.showUnpermittedVolumes', 'false'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.settings.uiMode', '\"enlarged\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.translationKeyFormat', 'null'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.translationMethod', '\"none\"'),
('fields.0e557d11-fea8-4380-9bd4-56312139d927.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.contentColumnType', '\"string\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.handle', '\"channelLinkDestination\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.instructions', '\"\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.name', '\"Channel Link Destination\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.searchable', 'false'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.allowSelfRelations', 'false'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.limit', '\"\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.localizeRelations', 'false'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.selectionLabel', '\"\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.showSiteMenu', 'true'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.source', 'null'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.sources', '\"*\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.targetSiteId', 'null'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.validateRelatedElements', 'false'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.settings.viewMode', 'null'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.translationKeyFormat', 'null'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.translationMethod', '\"site\"'),
('fields.246fa870-fd49-4236-9550-d4cdf6dd4ec6.type', '\"craft\\\\fields\\\\Entries\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.contentColumnType', '\"text\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.handle', '\"ctaText\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.instructions', '\"\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.name', '\"CTA text\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.searchable', 'false'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.availableTransforms', '\"*\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.availableVolumes', '\"*\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.cleanupHtml', 'true'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.columnType', '\"text\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.configSelectionMode', '\"choose\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.defaultTransform', '\"\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.manualConfig', '\"\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.purifierConfig', '\"\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.purifyHtml', '\"1\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.redactorConfig', '\"\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.removeEmptyTags', '\"1\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.removeInlineStyles', '\"1\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.removeNbsp', '\"1\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.showUnpermittedFiles', 'false'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.showUnpermittedVolumes', 'false'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.settings.uiMode', '\"enlarged\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.translationKeyFormat', 'null'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.translationMethod', '\"none\"'),
('fields.41bc5b22-810f-46ea-abaf-28834eb783ca.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.contentColumnType', '\"string\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.handle', '\"featureImage\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.instructions', '\"\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.name', '\"Feature Image\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.searchable', 'false'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.allowedKinds', 'null'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.allowSelfRelations', 'false'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.allowUploads', 'true'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.defaultUploadLocationSource', '\"volume:c2774548-0ea6-402e-bf92-794a588a541d\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.limit', '\"1\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.localizeRelations', 'false'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.previewMode', '\"full\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.restrictFiles', '\"\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.selectionLabel', '\"\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.showSiteMenu', 'true'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.showUnpermittedFiles', 'false'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.showUnpermittedVolumes', 'false'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.singleUploadLocationSource', '\"volume:c2774548-0ea6-402e-bf92-794a588a541d\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.singleUploadLocationSubpath', '\"\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.source', 'null'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.sources.0', '\"volume:c2774548-0ea6-402e-bf92-794a588a541d\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.targetSiteId', 'null'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.useSingleFolder', 'false'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.validateRelatedElements', 'false'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.settings.viewMode', '\"large\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.translationKeyFormat', 'null'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.translationMethod', '\"site\"'),
('fields.6cff4e3c-62dc-4ed7-89bd-976918723ab5.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.contentColumnType', '\"text\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.handle', '\"richText\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.instructions', '\"\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.name', '\"Rich Text\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.searchable', 'false'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.availableTransforms', '\"*\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.availableVolumes', '\"*\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.cleanupHtml', 'true'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.columnType', '\"text\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.configSelectionMode', '\"choose\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.defaultTransform', '\"\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.manualConfig', '\"\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.purifierConfig', '\"\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.purifyHtml', '\"1\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.redactorConfig', '\"\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.removeEmptyTags', '\"1\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.removeInlineStyles', '\"1\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.removeNbsp', '\"1\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.showUnpermittedFiles', 'false'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.showUnpermittedVolumes', 'false'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.settings.uiMode', '\"enlarged\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.translationKeyFormat', 'null'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.translationMethod', '\"none\"'),
('fields.6e426b5b-d7ff-4617-9749-f54ecd209e70.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.contentColumnType', '\"text\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.handle', '\"button\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.instructions', '\"\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.name', '\"Button\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.searchable', 'false'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.settings.byteLimit', 'null'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.settings.charLimit', 'null'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.settings.code', '\"\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.settings.columnType', 'null'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.settings.initialRows', '\"4\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.settings.multiline', '\"\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.settings.placeholder', '\"\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.settings.uiMode', '\"normal\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.translationKeyFormat', 'null'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.translationMethod', '\"none\"'),
('fields.72d96ef9-05ac-4848-903c-962c8c1b0466.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.contentColumnType', '\"string\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.handle', '\"ctaLinkDestination\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.instructions', '\"\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.name', '\"CTA Link Destination\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.searchable', 'false'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.allowSelfRelations', 'false'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.limit', '\"1\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.localizeRelations', 'false'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.selectionLabel', '\"\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.showSiteMenu', 'true'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.source', 'null'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.sources', '\"*\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.targetSiteId', 'null'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.validateRelatedElements', 'false'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.settings.viewMode', 'null'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.translationKeyFormat', 'null'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.translationMethod', '\"site\"'),
('fields.8ddb6768-78a4-400e-ba9c-d3537f46662a.type', '\"craft\\\\fields\\\\Entries\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.contentColumnType', '\"string\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.handle', '\"heroSlides\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.instructions', '\"\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.name', '\"Hero Slides\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.searchable', 'false'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.settings.contentTable', '\"{{%matrixcontent_heroslides}}\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.settings.maxBlocks', '\"\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.settings.minBlocks', '\"\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.settings.propagationMethod', '\"all\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.translationKeyFormat', 'null'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.translationMethod', '\"site\"'),
('fields.afc606cf-ca53-4856-859f-a9b52222149e.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.contentColumnType', '\"text\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.handle', '\"channelLinkText\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.instructions', '\"\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.name', '\"Channel Link Text\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.searchable', 'false'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.settings.byteLimit', 'null'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.settings.charLimit', 'null'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.settings.code', '\"\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.settings.columnType', 'null'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.settings.initialRows', '\"4\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.settings.multiline', '\"\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.settings.placeholder', '\"\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.settings.uiMode', '\"normal\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.translationKeyFormat', 'null'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.translationMethod', '\"none\"'),
('fields.c74ed7dd-1632-4d16-a71e-42bc5e35d6eb.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.contentColumnType', '\"text\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.handle', '\"locationText\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.instructions', '\"\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.name', '\"Location Text\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.searchable', 'false'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.availableTransforms', '\"*\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.availableVolumes', '\"*\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.cleanupHtml', 'true'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.columnType', '\"text\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.configSelectionMode', '\"choose\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.defaultTransform', '\"\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.manualConfig', '\"\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.purifierConfig', '\"\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.purifyHtml', '\"1\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.redactorConfig', '\"\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.removeEmptyTags', '\"1\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.removeInlineStyles', '\"1\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.removeNbsp', '\"1\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.showUnpermittedFiles', 'false'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.showUnpermittedVolumes', 'false'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.settings.uiMode', '\"enlarged\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.translationKeyFormat', 'null'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.translationMethod', '\"none\"'),
('fields.d48ff451-4766-4ecb-8947-141900ff184c.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.contentColumnType', '\"string\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.handle', '\"navigation\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.instructions', '\"\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.name', '\"Navigation\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.searchable', 'false'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.settings.contentTable', '\"{{%matrixcontent_navigation}}\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.settings.maxBlocks', '\"6\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.settings.minBlocks', '\"\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.settings.propagationMethod', '\"all\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.translationKeyFormat', 'null'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.translationMethod', '\"site\"'),
('fields.d9d86d07-b2a4-4b49-8021-c8ef13af1404.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.contentColumnType', '\"string\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.handle', '\"ctaImage\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.instructions', '\"\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.name', '\"CTA Image\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.searchable', 'false'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.allowedKinds', 'null'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.allowSelfRelations', 'false'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.allowUploads', 'true'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.defaultUploadLocationSource', '\"volume:c2774548-0ea6-402e-bf92-794a588a541d\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.limit', '\"1\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.localizeRelations', 'false'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.previewMode', '\"full\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.restrictFiles', '\"\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.selectionLabel', '\"\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.showSiteMenu', 'true'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.showUnpermittedFiles', 'false'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.showUnpermittedVolumes', 'false'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.singleUploadLocationSource', '\"volume:c2774548-0ea6-402e-bf92-794a588a541d\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.singleUploadLocationSubpath', '\"\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.source', 'null'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.sources.0', '\"volume:c2774548-0ea6-402e-bf92-794a588a541d\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.targetSiteId', 'null'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.useSingleFolder', 'false'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.validateRelatedElements', 'false'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.settings.viewMode', '\"list\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.translationKeyFormat', 'null'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.translationMethod', '\"site\"'),
('fields.eb7fb4cf-2ae4-46cf-adb1-9bde43797eb2.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.contentColumnType', '\"text\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.fieldGroup', '\"b101b2e5-3692-494a-9a88-a9054f0e26be\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.handle', '\"locationButtonText\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.instructions', '\"\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.name', '\"Location Button text\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.searchable', 'false'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.settings.byteLimit', 'null'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.settings.charLimit', 'null'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.settings.code', '\"\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.settings.columnType', 'null'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.settings.initialRows', '\"4\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.settings.multiline', '\"\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.settings.placeholder', '\"\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.settings.uiMode', '\"normal\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.translationKeyFormat', 'null'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.translationMethod', '\"none\"'),
('fields.fdba470a-7119-407a-956a-aa673e18caa8.type', '\"craft\\\\fields\\\\PlainText\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.0.fieldUid', '\"246fa870-fd49-4236-9550-d4cdf6dd4ec6\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.0.instructions', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.0.label', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.0.required', 'false'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.0.tip', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.0.warning', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.0.width', '100'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.1.fieldUid', '\"c74ed7dd-1632-4d16-a71e-42bc5e35d6eb\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.1.instructions', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.1.label', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.1.required', 'false'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.1.tip', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.1.warning', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.1.width', '100'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.2.fieldUid', '\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.2.instructions', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.2.label', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.2.required', 'false'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.2.tip', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.2.warning', 'null'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.elements.2.width', '100'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.name', '\"Navigation\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.fieldLayouts.925a7de7-a0db-46fc-8131-323c444da7a3.tabs.0.sortOrder', '1'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.handle', '\"services\"'),
('globalSets.12fae9eb-8e4f-4af2-8442-a673b10437d4.name', '\"Services\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.elements.0.fieldUid', '\"6e426b5b-d7ff-4617-9749-f54ecd209e70\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.elements.0.instructions', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.elements.0.label', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.elements.0.required', 'false'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.elements.0.tip', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.elements.0.warning', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.elements.0.width', '100'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.name', '\"Content\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.0.sortOrder', '1'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.0.fieldUid', '\"0e557d11-fea8-4380-9bd4-56312139d927\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.0.instructions', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.0.label', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.0.required', 'false'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.0.tip', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.0.warning', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.0.width', '100'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.1.fieldUid', '\"246fa870-fd49-4236-9550-d4cdf6dd4ec6\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.1.instructions', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.1.label', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.1.required', 'false'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.1.tip', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.1.warning', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.1.width', '100'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.2.fieldUid', '\"c74ed7dd-1632-4d16-a71e-42bc5e35d6eb\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.2.instructions', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.2.label', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.2.required', 'false'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.2.tip', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.2.warning', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.elements.2.width', '100'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.name', '\"Address\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.1.sortOrder', '2'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.elements.0.fieldUid', '\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.elements.0.instructions', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.elements.0.label', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.elements.0.required', 'false'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.elements.0.tip', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.elements.0.warning', 'null'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.elements.0.width', '100'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.name', '\"Navigation\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.fieldLayouts.2d682b6d-cf94-44b7-980f-ec25df38bba5.tabs.2.sortOrder', '3'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.handle', '\"footer\"'),
('globalSets.861ed63f-2023-4694-874d-eabe7710d75d.name', '\"Footer\"'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.elements.0.fieldUid', '\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.elements.0.instructions', 'null'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.elements.0.label', 'null'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.elements.0.required', 'false'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.elements.0.tip', 'null'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.elements.0.warning', 'null'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.elements.0.width', '100'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.name', '\"Content\"'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.fieldLayouts.c16c45e2-40ae-427c-aa4f-074241f50dd9.tabs.0.sortOrder', '1'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.handle', '\"header\"'),
('globalSets.9ef9083d-8fc7-449b-9ab6-df9e49c4a489.name', '\"Header\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.0.fieldUid', '\"246fa870-fd49-4236-9550-d4cdf6dd4ec6\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.0.instructions', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.0.label', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.0.required', 'false'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.0.tip', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.0.warning', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.0.width', '100'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.1.fieldUid', '\"c74ed7dd-1632-4d16-a71e-42bc5e35d6eb\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.1.instructions', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.1.label', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.1.required', 'false'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.1.tip', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.1.warning', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.1.width', '100'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.2.fieldUid', '\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.2.instructions', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.2.label', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.2.required', 'false'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.2.tip', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.2.warning', 'null'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.elements.2.width', '100'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.name', '\"Navigation\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.fieldLayouts.3f6073dc-3436-4144-8bf7-39992eb0e797.tabs.0.sortOrder', '1'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.handle', '\"caseStudies\"'),
('globalSets.c6e56f9e-4a9c-45f5-9eb6-39d161de10b1.name', '\"Case Studies\"'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.format', 'null'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.handle', '\"medium\"'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.height', '500'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.interlace', '\"none\"'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.mode', '\"fit\"'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.name', '\"Medium\"'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.position', '\"center-center\"'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.quality', 'null'),
('imageTransforms.2b421359-679c-4f05-8c95-c4844287a432.width', '700'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.format', 'null'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.handle', '\"hero\"'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.height', '720'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.interlace', '\"none\"'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.mode', '\"crop\"'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.name', '\"Hero\"'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.position', '\"center-center\"'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.quality', 'null'),
('imageTransforms.5ea3ef76-498d-400a-bfa4-16a0a1ca9f8c.width', '1280'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.format', 'null'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.handle', '\"large\"'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.height', '1080'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.interlace', '\"none\"'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.mode', '\"crop\"'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.name', '\"Large\"'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.position', '\"center-center\"'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.quality', 'null'),
('imageTransforms.c081fd4e-748e-4425-a2d1-da4f75efb0da.width', '1920'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.format', 'null'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.handle', '\"fourthree\"'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.height', '450'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.interlace', '\"none\"'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.mode', '\"crop\"'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.name', '\"FourThree\"'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.position', '\"center-center\"'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.quality', 'null'),
('imageTransforms.ef2d295f-82f4-4bbb-bca6-52b90d546884.width', '600'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.field', '\"8c5c07ee-9011-4a56-849f-a916168f3451\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.0.fieldUid', '\"39ea9498-43be-4bce-9d61-49e9fce66ad3\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.1.fieldUid', '\"0fbfc8e7-08df-474a-880d-58e0a79fb311\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fieldLayouts.a2422955-9a79-4f25-a39c-4a5cfd17d124.tabs.0.sortOrder', '1'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.contentColumnType', '\"text\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.fieldGroup', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.handle', '\"linkDestination\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.instructions', '\"\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.name', '\"Link Destination\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.searchable', 'false'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.settings.byteLimit', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.settings.charLimit', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.settings.code', '\"\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.settings.columnType', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.settings.initialRows', '\"4\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.settings.multiline', '\"\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.settings.placeholder', '\"\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.translationKeyFormat', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.translationMethod', '\"none\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.0fbfc8e7-08df-474a-880d-58e0a79fb311.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.contentColumnType', '\"text\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.fieldGroup', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.handle', '\"linkText\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.instructions', '\"\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.name', '\"Link Text\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.searchable', 'false'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.settings.byteLimit', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.settings.charLimit', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.settings.code', '\"\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.settings.columnType', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.settings.initialRows', '\"4\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.settings.multiline', '\"\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.settings.placeholder', '\"\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.translationKeyFormat', 'null'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.translationMethod', '\"none\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.fields.39ea9498-43be-4bce-9d61-49e9fce66ad3.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.handle', '\"link\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.name', '\"Link\"'),
('matrixBlockTypes.b42a6070-743b-4806-9bac-b40727169afb.sortOrder', '1'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.field', '\"afc606cf-ca53-4856-859f-a9b52222149e\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.0.fieldUid', '\"54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.1.fieldUid', '\"3be9964d-44be-462a-ab6b-ffc9f36784ab\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.2.fieldUid', '\"0c632c03-9564-48ff-bab9-e4b82642a211\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.2.instructions', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.2.label', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.2.required', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.2.tip', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.2.warning', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.2.width', '100'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.3.fieldUid', '\"d2000a95-20fb-47c6-9274-e83e3fab2c5c\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.3.instructions', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.3.label', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.3.required', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.3.tip', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.3.warning', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.elements.3.width', '100'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fieldLayouts.9b57adc5-ebed-44f0-92c9-1fe5a184892e.tabs.0.sortOrder', '1'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.contentColumnType', '\"text\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.fieldGroup', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.handle', '\"linkText\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.instructions', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.name', '\"Link Text\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.searchable', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.settings.byteLimit', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.settings.charLimit', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.settings.code', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.settings.columnType', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.settings.initialRows', '\"4\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.settings.multiline', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.settings.placeholder', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.translationKeyFormat', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.translationMethod', '\"none\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.0c632c03-9564-48ff-bab9-e4b82642a211.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.contentColumnType', '\"text\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.fieldGroup', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.handle', '\"slideText\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.instructions', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.name', '\"Slide text\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.searchable', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.availableTransforms', '\"*\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.availableVolumes', '\"*\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.cleanupHtml', 'true'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.columnType', '\"text\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.configSelectionMode', '\"choose\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.manualConfig', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.purifierConfig', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.purifyHtml', '\"1\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.redactorConfig', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.removeEmptyTags', '\"1\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.removeInlineStyles', '\"1\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.removeNbsp', '\"1\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.showHtmlButtonForNonAdmins', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.translationKeyFormat', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.translationMethod', '\"none\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.3be9964d-44be-462a-ab6b-ffc9f36784ab.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.contentColumnType', '\"text\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.fieldGroup', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.handle', '\"slideTitle\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.instructions', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.name', '\"Slide Title\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.searchable', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.settings.byteLimit', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.settings.charLimit', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.settings.code', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.settings.columnType', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.settings.initialRows', '\"4\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.settings.multiline', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.settings.placeholder', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.translationKeyFormat', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.translationMethod', '\"none\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.54f65b80-aae8-4bf4-8aa1-5d05bec4c1b0.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.contentColumnType', '\"string\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.fieldGroup', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.handle', '\"linkDestination\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.instructions', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.name', '\"Link Destination\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.searchable', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.limit', '\"1\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.localizeRelations', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.selectionLabel', '\"\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.showSiteMenu', 'true'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.source', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.sources', '\"*\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.targetSiteId', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.settings.viewMode', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.translationKeyFormat', 'null'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.translationMethod', '\"site\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.fields.d2000a95-20fb-47c6-9274-e83e3fab2c5c.type', '\"craft\\\\fields\\\\Entries\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.handle', '\"heroSlides\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.name', '\"Hero Slides\"'),
('matrixBlockTypes.ca5c631d-d8b5-4c26-8208-8551b511663f.sortOrder', '1'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.field', '\"d9d86d07-b2a4-4b49-8021-c8ef13af1404\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.0.fieldUid', '\"d6e7c384-54ea-4f5e-8335-e7ab1aa781c5\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.1.fieldUid', '\"566a8986-1697-4be4-9289-01a28b915abb\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.1.required', 'true'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fieldLayouts.981ebc0e-3b8e-434f-b1d3-aefb0aca3829.tabs.0.sortOrder', '1'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.contentColumnType', '\"string\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.fieldGroup', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.handle', '\"linkDestination\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.instructions', '\"\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.name', '\"Link Destination\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.searchable', 'false'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.limit', '\"1\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.localizeRelations', 'false'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.selectionLabel', '\"\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.showSiteMenu', 'true'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.source', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.sources', '\"*\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.targetSiteId', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.settings.viewMode', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.translationKeyFormat', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.translationMethod', '\"site\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.566a8986-1697-4be4-9289-01a28b915abb.type', '\"craft\\\\fields\\\\Entries\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.contentColumnType', '\"text\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.fieldGroup', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.handle', '\"linkText\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.instructions', '\"\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.name', '\"Link Text\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.searchable', 'false'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.settings.byteLimit', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.settings.charLimit', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.settings.code', '\"\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.settings.columnType', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.settings.initialRows', '\"4\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.settings.multiline', '\"\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.settings.placeholder', '\"\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.translationKeyFormat', 'null'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.translationMethod', '\"none\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.fields.d6e7c384-54ea-4f5e-8335-e7ab1aa781c5.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.handle', '\"navLink\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.name', '\"Nav Link\"'),
('matrixBlockTypes.dfacfa0a-f777-4d0f-afb0-879a8dc452ca.sortOrder', '1'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.enableVersioning', 'true'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.handle', '\"home\"'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.name', '\"Home\"'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.propagationMethod', '\"all\"'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.siteSettings.a444331c-5954-495c-be67-635a384e66c6.enabledByDefault', 'true'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.siteSettings.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.siteSettings.a444331c-5954-495c-be67-635a384e66c6.template', '\"home\"'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.siteSettings.a444331c-5954-495c-be67-635a384e66c6.uriFormat', '\"__home__\"'),
('sections.078152bd-07a6-48a9-bba4-f6446df31eba.type', '\"single\"'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.enableVersioning', 'true'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.handle', '\"caseStudiesPosts\"'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.name', '\"Case Studies Posts\"'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.propagationMethod', '\"all\"'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.siteSettings.a444331c-5954-495c-be67-635a384e66c6.enabledByDefault', 'true'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.siteSettings.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.siteSettings.a444331c-5954-495c-be67-635a384e66c6.template', '\"casestudies/_entry\"'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.siteSettings.a444331c-5954-495c-be67-635a384e66c6.uriFormat', '\"case-studies/{slug}\"'),
('sections.2318db74-78e0-4760-b303-d2eaad36a45b.type', '\"channel\"'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.enableVersioning', 'true'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.handle', '\"servicePosts\"'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.name', '\"Service Posts\"'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.propagationMethod', '\"all\"'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.siteSettings.a444331c-5954-495c-be67-635a384e66c6.enabledByDefault', 'true'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.siteSettings.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.siteSettings.a444331c-5954-495c-be67-635a384e66c6.template', '\"services/_entry\"'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.siteSettings.a444331c-5954-495c-be67-635a384e66c6.uriFormat', '\"services/{slug}\"'),
('sections.2cd6b8f2-ac64-4d57-b681-fbae9316a71f.type', '\"channel\"'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.enableVersioning', 'true'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.handle', '\"services\"'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.name', '\"Services\"'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.propagationMethod', '\"all\"'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.siteSettings.a444331c-5954-495c-be67-635a384e66c6.enabledByDefault', 'true'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.siteSettings.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.siteSettings.a444331c-5954-495c-be67-635a384e66c6.template', '\"services/index\"'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.siteSettings.a444331c-5954-495c-be67-635a384e66c6.uriFormat', '\"services\"'),
('sections.2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775.type', '\"single\"'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.enableVersioning', 'true'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.handle', '\"blogPosts\"'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.name', '\"Blog Posts\"'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.propagationMethod', '\"all\"'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.siteSettings.a444331c-5954-495c-be67-635a384e66c6.enabledByDefault', 'true'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.siteSettings.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.siteSettings.a444331c-5954-495c-be67-635a384e66c6.template', '\"blog/_entry\"'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.siteSettings.a444331c-5954-495c-be67-635a384e66c6.uriFormat', '\"blog/{slug}\"'),
('sections.7e534ac1-2a65-47a9-a5b3-de555c879e16.type', '\"channel\"'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.enableVersioning', 'true'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.handle', '\"contact\"'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.name', '\"Contact\"'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.propagationMethod', '\"all\"'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.siteSettings.a444331c-5954-495c-be67-635a384e66c6.enabledByDefault', 'true'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.siteSettings.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.siteSettings.a444331c-5954-495c-be67-635a384e66c6.template', '\"general\"'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.siteSettings.a444331c-5954-495c-be67-635a384e66c6.uriFormat', '\"contact\"'),
('sections.9ea94e84-e58c-43f2-a311-5120ef2a3dd7.type', '\"single\"'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.enableVersioning', 'true'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.handle', '\"caseStudies\"'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.name', '\"Case Studies\"'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.propagationMethod', '\"all\"'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.siteSettings.a444331c-5954-495c-be67-635a384e66c6.enabledByDefault', 'true'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.siteSettings.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.siteSettings.a444331c-5954-495c-be67-635a384e66c6.template', '\"casestudies/index\"'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.siteSettings.a444331c-5954-495c-be67-635a384e66c6.uriFormat', '\"case-studies\"'),
('sections.cdeab266-7ed4-4ddd-a06b-954cdb954037.type', '\"single\"'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.enableVersioning', 'true'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.handle', '\"aboutUs\"'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.name', '\"About us\"'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.propagationMethod', '\"all\"'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.siteSettings.a444331c-5954-495c-be67-635a384e66c6.enabledByDefault', 'true'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.siteSettings.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.siteSettings.a444331c-5954-495c-be67-635a384e66c6.template', '\"general\"'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.siteSettings.a444331c-5954-495c-be67-635a384e66c6.uriFormat', '\"about-us\"'),
('sections.fadde93e-7edf-4a7c-85c8-8a153070d65a.type', '\"single\"'),
('siteGroups.6b6971ce-a03d-4845-bda2-d93f3efb5d3a.name', '\"Craftiverse\"'),
('sites.a444331c-5954-495c-be67-635a384e66c6.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.a444331c-5954-495c-be67-635a384e66c6.handle', '\"default\"'),
('sites.a444331c-5954-495c-be67-635a384e66c6.hasUrls', 'true'),
('sites.a444331c-5954-495c-be67-635a384e66c6.language', '\"en-US\"'),
('sites.a444331c-5954-495c-be67-635a384e66c6.name', '\"Craftiverse\"'),
('sites.a444331c-5954-495c-be67-635a384e66c6.primary', 'true'),
('sites.a444331c-5954-495c-be67-635a384e66c6.siteGroup', '\"6b6971ce-a03d-4845-bda2-d93f3efb5d3a\"'),
('sites.a444331c-5954-495c-be67-635a384e66c6.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Craftiverse\"'),
('system.schemaVersion', '\"3.5.13\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.autocomplete', 'false'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.autocorrect', 'true'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.class', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.disabled', 'false'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.id', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.instructions', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.label', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.max', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.min', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.name', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.orientation', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.placeholder', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.readonly', 'false'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.requirable', 'false'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.size', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.step', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.tip', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.title', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.warning', 'null'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.elements.0.width', '100'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.name', '\"Content\"'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.fieldLayouts.4681b585-b3ea-40c9-8c4a-0c1dd60e8ec0.tabs.0.sortOrder', '1'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.handle', '\"uploads\"'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.hasUrls', 'true'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.name', '\"Uploads\"'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.settings.path', '\"@webroot/uploads\"'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.sortOrder', '1'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.c2774548-0ea6-402e-bf92-794a588a541d.url', '\"@web/uploads\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 2, 8, NULL, 7, 1, '2020-11-06 17:12:08', '2020-11-06 17:12:08', 'daeb2b64-b033-42b4-aef6-c766548bd098'),
(3, 2, 9, NULL, 7, 1, '2020-11-06 17:17:25', '2020-11-06 17:17:25', '74db0b93-5faa-4a73-905a-1724e84fd182'),
(5, 4, 21, NULL, 13, 1, '2020-11-06 17:36:12', '2020-11-06 17:36:12', 'c50d3ca2-5126-43e3-bb80-905ad6d9783f'),
(6, 4, 35, NULL, 32, 1, '2020-11-06 17:54:54', '2020-11-06 17:54:54', '1544173d-9070-4ff6-8e6b-d4bf45a8599b'),
(7, 2, 36, NULL, 7, 1, '2020-11-06 18:31:50', '2020-11-06 18:31:50', '1b733f1e-4d51-4533-82e6-1b3f34b1bc5a'),
(8, 2, 37, NULL, 7, 1, '2020-11-06 18:32:23', '2020-11-06 18:32:23', '1b2aa69f-886e-43fd-a495-c386562eafc1'),
(9, 2, 38, NULL, 7, 1, '2020-11-06 18:33:04', '2020-11-06 18:33:04', '786e7304-4000-4dc9-b72c-c9ea42e40a37'),
(10, 2, 39, NULL, 7, 1, '2020-11-06 18:35:03', '2020-11-06 18:35:03', '3de6d705-889f-4112-bdbd-14fa5cc73ec0'),
(11, 2, 40, NULL, 7, 1, '2020-11-06 18:35:28', '2020-11-06 18:35:28', '1e2a4c16-5517-4627-8c52-e9762e0dce74'),
(12, 2, 44, NULL, 7, 1, '2020-11-06 19:32:06', '2020-11-06 19:32:06', 'ed52c05f-d25b-41f3-9a3e-6d620fb127e0'),
(13, 2, 45, NULL, 7, 1, '2020-11-06 19:41:07', '2020-11-06 19:41:07', '79477dd6-2769-49c7-a3c6-1ea7063ef4e9'),
(15, 2, 47, NULL, 46, 1, '2020-11-06 19:46:59', '2020-11-06 19:46:59', 'f190f61a-e20f-4882-bf5d-b295e561bf1a'),
(16, 2, 48, NULL, 46, 1, '2020-11-06 19:47:43', '2020-11-06 19:47:43', '4ea6189b-1658-4f13-aebb-fb0a6b9e6c68'),
(17, 2, 50, NULL, 46, 1, '2020-11-06 19:50:36', '2020-11-06 19:50:36', 'de8a7ee1-7787-4abb-b8b2-1cbc0643ced2'),
(18, 2, 52, NULL, 46, 1, '2020-11-06 19:57:30', '2020-11-06 19:57:30', '8a227214-9eba-4882-b230-bff04604e37c'),
(19, 2, 67, NULL, 46, 1, '2020-11-06 21:24:15', '2020-11-06 21:24:15', 'f75cb47c-7d30-477a-8ec7-dbc2582a0fbe'),
(20, 2, 71, NULL, 46, 1, '2020-11-06 22:33:41', '2020-11-06 22:33:41', '2f4f5ca1-6245-469c-bb27-5630de5787d1'),
(21, 2, 75, NULL, 46, 1, '2020-11-06 22:33:55', '2020-11-06 22:33:55', '0ab2464b-1ebf-4fae-a1dc-022ec0d2e179'),
(22, 2, 79, NULL, 46, 1, '2020-11-06 22:43:07', '2020-11-06 22:43:07', '7c16db94-5b3b-452c-8c8c-02f74f33bbd5'),
(23, 2, 83, NULL, 46, 1, '2020-11-06 22:43:24', '2020-11-06 22:43:24', '7bddc35c-8628-4d2e-9233-f2db71b5a1b9'),
(24, 2, 87, NULL, 46, 1, '2020-11-06 22:43:47', '2020-11-06 22:43:47', 'b546a6a0-d0e5-43e7-882c-71201aaa3229'),
(26, 2, 105, NULL, 104, 1, '2020-11-07 10:23:48', '2020-11-07 10:23:48', 'ee26534a-0822-4d6a-83c8-f6384a33760b'),
(27, 2, 106, NULL, 104, 1, '2020-11-07 10:23:57', '2020-11-07 10:23:57', 'd96b930b-e2bc-4f43-9cb9-3faf929aeefd'),
(30, 2, 110, NULL, 108, 1, '2020-11-07 10:24:20', '2020-11-07 10:24:20', '273daee3-9112-4ffc-ad51-56968f28108f'),
(33, 2, 114, NULL, 112, 1, '2020-11-07 10:29:34', '2020-11-07 10:29:34', '39c69829-ce1b-4b52-ad9a-d4abbb48839b'),
(34, 2, 115, NULL, 108, 1, '2020-11-07 10:35:06', '2020-11-07 10:35:06', '7d36b3f3-9ad2-4010-95f4-021d434ce4e8'),
(35, 4, 20, NULL, 116, 1, '2020-11-07 12:51:40', '2020-11-07 12:51:40', '79213994-e031-4609-8598-e46301f2558c'),
(36, 4, 43, NULL, 118, 1, '2020-11-07 12:51:40', '2020-11-07 12:51:40', '1174162e-27cf-4f61-954d-52db2fff96af'),
(37, 2, 123, NULL, 108, 1, '2020-11-07 12:57:16', '2020-11-07 12:57:16', '9d305dd6-b44a-4b20-bbe0-6eaf3af2108e'),
(38, 2, 124, NULL, 108, 1, '2020-11-07 12:58:05', '2020-11-07 12:58:05', '43c9124c-8d63-4feb-8e4c-a4ec57214de0'),
(39, 2, 126, NULL, 108, 1, '2020-11-07 13:11:07', '2020-11-07 13:11:07', '2c53c77f-faa0-40ca-a1e0-9e31f6053f9f'),
(42, 2, 129, NULL, 104, 1, '2020-11-07 13:12:11', '2020-11-07 13:12:11', 'aa4354f9-1ac1-418e-a3d4-4672f215e491'),
(43, 2, 130, NULL, 104, 1, '2020-11-07 13:14:29', '2020-11-07 13:14:29', 'b6ed5157-437a-49fe-acbc-2831e8d75602'),
(44, 2, 131, NULL, 104, 1, '2020-11-07 13:18:14', '2020-11-07 13:18:14', 'a1186c29-97ea-407e-a43b-fdf41db272f1'),
(47, 2, 134, NULL, 108, 1, '2020-11-07 13:18:32', '2020-11-07 13:18:32', 'cb4a1310-be27-4f33-9068-bb1547f16b5a'),
(50, 2, 137, NULL, 112, 1, '2020-11-07 13:18:56', '2020-11-07 13:18:56', '28520933-4fef-430c-9eab-98a0644e7221'),
(51, 2, 133, NULL, 138, 1, '2020-11-07 14:01:01', '2020-11-07 14:01:01', 'b667d408-64fc-4bf9-a668-0a3a8ba0b347'),
(52, 2, 139, NULL, 138, 1, '2020-11-07 14:01:01', '2020-11-07 14:01:01', '8914df95-ee88-4fd7-a160-be9ef76048ef'),
(53, 2, 136, NULL, 140, 1, '2020-11-07 14:01:15', '2020-11-07 14:01:15', 'aaa859ba-198e-44ea-8d1c-40a65b374945'),
(54, 2, 141, NULL, 140, 1, '2020-11-07 14:01:15', '2020-11-07 14:01:15', '73eddcf5-a993-4faf-970e-645bc2f8bb1f'),
(55, 2, 128, NULL, 142, 1, '2020-11-07 14:01:30', '2020-11-07 14:01:30', '851add1f-70fc-41e1-a7d4-048d314b3f6f'),
(56, 2, 143, NULL, 142, 1, '2020-11-07 14:01:30', '2020-11-07 14:01:30', '37b9945b-8ae1-4049-906d-b4052ce35804'),
(59, 2, 147, NULL, 145, 1, '2020-11-07 14:05:54', '2020-11-07 14:05:54', '3a6691ca-26ff-4130-b695-fddfc9723482'),
(61, 2, 154, NULL, 153, 1, '2020-11-07 14:07:13', '2020-11-07 14:07:13', '53de2411-25c6-4515-9612-48a7f74f0d6c'),
(64, 2, 158, NULL, 156, 1, '2020-11-07 14:07:39', '2020-11-07 14:07:39', '08950073-cf9a-4d3d-8240-c2c819354460'),
(65, 2, 157, NULL, 104, 1, '2020-11-07 14:36:08', '2020-11-07 14:36:08', '35fcd3ab-b362-4ec7-8978-27641a855842'),
(66, 2, 159, NULL, 104, 1, '2020-11-07 14:36:08', '2020-11-07 14:36:08', '8927dbc5-40aa-4604-9ac7-2af1d9dfae92'),
(67, 2, 149, NULL, 108, 1, '2020-11-07 14:36:20', '2020-11-07 14:36:20', 'c20187da-02cc-47a2-bfe5-cd5d901bcbde'),
(68, 2, 160, NULL, 108, 1, '2020-11-07 14:36:20', '2020-11-07 14:36:20', '1da8b79a-7e8b-4fa9-b323-bc47acbbcb71'),
(69, 2, 146, NULL, 112, 1, '2020-11-07 14:36:31', '2020-11-07 14:36:31', '9637d9dd-cd3e-4076-b9a6-c321b53dc961'),
(70, 2, 161, NULL, 112, 1, '2020-11-07 14:36:31', '2020-11-07 14:36:31', 'c4030c03-85a6-4fa0-b396-3e7d24e2c0b5'),
(71, 2, 109, NULL, 156, 1, '2020-11-07 14:36:44', '2020-11-07 14:36:44', '82154640-54e1-44d5-b2ba-2ee2f5872049'),
(72, 2, 162, NULL, 156, 1, '2020-11-07 14:36:44', '2020-11-07 14:36:44', 'd8b4f301-e4c3-4a9b-b3c6-41411729afc5'),
(73, 2, 113, NULL, 145, 1, '2020-11-07 14:36:55', '2020-11-07 14:36:55', '3dc8d9c8-6f99-44f5-a543-ca350298f3b0'),
(74, 2, 163, NULL, 145, 1, '2020-11-07 14:36:55', '2020-11-07 14:36:55', 'bc2d8b72-bace-4541-a812-00e0a1dba7f7'),
(75, 2, 102, NULL, 142, 1, '2020-11-07 14:37:10', '2020-11-07 14:37:10', 'd35e4c1f-72f5-4978-bdbb-d7070f963344'),
(76, 2, 164, NULL, 142, 1, '2020-11-07 14:37:10', '2020-11-07 14:37:10', '6b842e5c-d5b7-4cd4-a3a1-ea6a9e371947'),
(77, 2, 165, NULL, 46, 1, '2020-11-07 15:17:22', '2020-11-07 15:17:22', '783b4f76-c3c8-4c03-b410-cc9b80eabaa3'),
(78, 2, 169, NULL, 46, 1, '2020-11-07 15:18:30', '2020-11-07 15:18:30', '40e3d614-4661-4d05-bde9-33269daba91f'),
(79, 15, 2, NULL, 173, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '8d843cf3-dccb-4ae3-9696-79547f45ab8e'),
(80, 2, 174, NULL, 46, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '0a9d3f1a-c42f-448e-a226-e0231830e00c'),
(81, 15, 174, NULL, 173, 1, '2020-11-07 15:19:54', '2020-11-07 15:19:54', '710b5409-8ce0-4a3a-afee-1580817f7759'),
(82, 2, 178, NULL, 46, 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', '27155899-abbf-4171-adac-2ae061f8e3d3'),
(83, 15, 178, NULL, 173, 1, '2020-11-07 15:26:01', '2020-11-07 15:26:01', '9f21fc18-06ce-4733-8a22-6c06b1a535df'),
(84, 2, 182, NULL, 46, 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', '5a46220b-4eea-4516-9778-293cd8360eee'),
(85, 15, 182, NULL, 173, 1, '2020-11-07 15:26:20', '2020-11-07 15:26:20', '4819dbc0-78c6-4474-97ea-6a974f9ba20b'),
(86, 2, 186, NULL, 46, 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '2c64108d-da20-48d0-a409-3bf17bb211f9'),
(87, 15, 186, NULL, 173, 1, '2020-11-07 15:26:38', '2020-11-07 15:26:38', '60ad3401-477b-46aa-9c13-0838cec57995'),
(88, 2, 190, NULL, 46, 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', 'f50fc738-0500-42c2-9b4b-a97995256fb7'),
(89, 15, 190, NULL, 173, 1, '2020-11-07 15:35:13', '2020-11-07 15:35:13', '2c511392-0a7a-4a67-85dc-f0cbee8ffa88'),
(90, 18, 2, NULL, 116, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', 'dc8ef9e5-5887-4850-bbf7-961600acbc81'),
(91, 2, 194, NULL, 46, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', 'f67b9cac-a1cd-4acb-a615-ea29b638cd67'),
(92, 18, 194, NULL, 116, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', 'bd4cc09b-38be-4497-83e0-2b6d9d15c75d'),
(93, 15, 194, NULL, 173, 1, '2020-11-07 15:35:30', '2020-11-07 15:35:30', 'd8f1fc2e-3aa3-4b3c-a680-6f0b3d928f39'),
(94, 2, 198, NULL, 46, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', '0cb21bfc-aa37-49c7-9221-5466bff9d047'),
(95, 18, 198, NULL, 116, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', 'ff708adc-480f-4979-ad2d-a5199317df82'),
(96, 15, 198, NULL, 173, 1, '2020-11-07 15:49:37', '2020-11-07 15:49:37', '45bfdce3-73b8-41bd-af49-ed375e427745'),
(97, 2, 202, NULL, 46, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', '9ee7e2ad-a574-44cb-90af-3e04a836a16b'),
(98, 18, 202, NULL, 116, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', 'f0bfe38f-9570-4d04-8c7a-4caa18111c15'),
(99, 15, 202, NULL, 173, 1, '2020-11-07 15:51:15', '2020-11-07 15:51:15', 'd4f450b5-a739-4197-b8f4-0d8623dd1166'),
(100, 2, 206, NULL, 46, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '773e0cc7-ee05-4dc8-8cc2-ff45da204f1c'),
(101, 18, 206, NULL, 116, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '4265fac7-7f56-4c8b-9d8a-6c77438a2299'),
(102, 15, 206, NULL, 173, 1, '2020-11-07 15:53:21', '2020-11-07 15:53:21', '261f8b1a-fe60-466a-91e5-56a073278191'),
(103, 20, 2, NULL, 113, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '71900e45-bb88-4ec6-a6ce-789df60f4c1d'),
(104, 2, 210, NULL, 46, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '4f08a054-7478-4bcb-b1c1-49b5c5689433'),
(105, 18, 210, NULL, 116, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', '402ddaf6-f42c-40af-98a7-c9766dce71ec'),
(106, 15, 210, NULL, 173, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', 'b5e4510a-0ace-4daf-a7fc-09d183714234'),
(107, 20, 210, NULL, 113, 1, '2020-11-07 15:53:43', '2020-11-07 15:53:43', 'ee9a98b7-7365-4874-a1c7-96a3e942d081'),
(108, 2, 214, NULL, 46, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '20734ecb-7d53-4fff-9762-7e05d4fdfd07'),
(109, 18, 214, NULL, 116, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '6a1ddc9a-c10b-4404-b63a-f35609ce6723'),
(110, 15, 214, NULL, 173, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', '351cae3e-a65b-47c8-83f2-a66ceef7fada'),
(111, 20, 214, NULL, 113, 1, '2020-11-07 15:54:50', '2020-11-07 15:54:50', 'c1575a3f-4307-427b-ab37-7c82ae7ccc73'),
(112, 2, 218, NULL, 46, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'e4ebd45a-1ad8-4d20-8992-03b556f9fc4e'),
(113, 18, 218, NULL, 116, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'f859be26-531d-4e46-a62a-b034abd77940'),
(114, 15, 218, NULL, 173, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', '656ffd96-75f2-4e30-a191-7c7e04244171'),
(115, 20, 218, NULL, 113, 1, '2020-11-07 15:55:01', '2020-11-07 15:55:01', 'd2058229-be32-4a2c-a230-4b960f5cbbed'),
(116, 4, 226, NULL, 222, 1, '2020-11-07 16:28:40', '2020-11-07 16:28:40', '3f262242-8b49-49e1-aa1d-231ceffbd1ac'),
(117, 4, 227, NULL, 224, 1, '2020-11-07 16:28:40', '2020-11-07 16:28:40', 'c1e4da56-66d5-4bdf-b216-821984eddd7b'),
(118, 23, 22, NULL, 118, 1, '2020-11-07 16:50:14', '2020-11-07 16:50:14', '57b6e5f7-52da-425c-8670-c08b759a0130'),
(119, 4, 229, NULL, 116, 1, '2020-11-07 16:57:31', '2020-11-07 16:57:31', '2d86e9d5-ef60-4ba2-9075-7a3041529de4'),
(120, 4, 230, NULL, 116, 1, '2020-11-07 16:57:31', '2020-11-07 16:57:31', '19469e00-ae58-4e9d-9251-37696c89781f'),
(121, 4, 231, NULL, 116, 1, '2020-11-07 16:57:31', '2020-11-07 16:57:31', 'f7417d1e-8868-4629-a0de-051c5ce40ccf'),
(122, 4, 233, NULL, 133, 1, '2020-11-07 17:15:39', '2020-11-07 17:15:39', '36c34c82-b069-4db1-bf6d-c44f940d3291'),
(123, 4, 234, NULL, 136, 1, '2020-11-07 17:15:39', '2020-11-07 17:15:39', 'e4c8d207-8d7c-43ca-a4de-90a1f00c9df3'),
(124, 4, 235, NULL, 128, 1, '2020-11-07 17:15:39', '2020-11-07 17:15:39', 'd6784281-5df6-4aef-8138-c42b485eb679'),
(125, 23, 232, NULL, 222, 1, '2020-11-07 17:20:32', '2020-11-07 17:20:32', '25f68fac-9798-4902-9117-01a3d5104076'),
(126, 23, 236, NULL, 224, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', 'b22cb37b-91ac-446e-995a-500795ca64c9'),
(127, 4, 237, NULL, 157, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', 'e79da117-1e83-4a02-bdfa-4e637ec80c85'),
(128, 4, 238, NULL, 149, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', '42382b37-0839-4c0a-81a3-bed3b6e6a90d'),
(129, 4, 239, NULL, 146, 1, '2020-11-07 17:26:31', '2020-11-07 17:26:31', '15a8f31c-ebbb-4507-ab92-8783efc0bdfc'),
(130, 4, 240, NULL, 109, 1, '2020-11-07 17:44:21', '2020-11-07 17:44:21', '97398b80-0107-4b67-a409-42846d75512c'),
(131, 4, 241, NULL, 113, 1, '2020-11-07 17:44:21', '2020-11-07 17:44:21', 'ee96a9e3-7596-44aa-b842-3dc162cdab71'),
(132, 2, 242, NULL, 46, 1, '2020-11-07 22:28:27', '2020-11-07 22:28:27', '924321ee-c506-474c-81f4-109f23c7f78c'),
(133, 18, 242, NULL, 116, 1, '2020-11-07 22:28:27', '2020-11-07 22:28:27', 'a54da8a0-be3c-46b5-aa0b-e2fbb064f892'),
(134, 15, 242, NULL, 173, 1, '2020-11-07 22:28:27', '2020-11-07 22:28:27', 'f040b111-83e3-4647-8be3-40164e494d21'),
(135, 20, 242, NULL, 113, 1, '2020-11-07 22:28:27', '2020-11-07 22:28:27', '97918d0b-2205-48b4-b8b4-2d02829b1192'),
(136, 2, 246, NULL, 46, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '40872b45-ebf0-4421-861c-a4469bc97959'),
(137, 18, 246, NULL, 116, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', 'ddcf2497-e63a-496e-8ff1-70c95d2b4703'),
(138, 15, 246, NULL, 173, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', '9661f814-a613-4e10-9eb2-94b9c34e25ae'),
(139, 20, 246, NULL, 113, 1, '2020-11-07 22:31:16', '2020-11-07 22:31:16', 'f35d3824-2686-4227-b542-0f9b0f663bf5'),
(140, 24, 54, NULL, 222, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '89538b77-ade5-4521-ac64-536523924c3f'),
(141, 24, 55, NULL, 116, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '73af0304-3284-4256-92d8-7ec4f353632e'),
(142, 24, 62, NULL, 118, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '04b5bd7d-e4f1-49cf-b198-0ee8aba04e91'),
(143, 2, 250, NULL, 46, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '7a1c2d89-85bd-4239-a326-f038f501d454'),
(144, 18, 250, NULL, 116, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'd69a428b-30ee-4b0f-9f48-29b980c2bb4f'),
(145, 15, 250, NULL, 173, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '11895346-de44-418f-9944-c89c55e40d5c'),
(146, 20, 250, NULL, 113, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'a446ed7f-ecd4-46b0-8838-1f467dfa108a'),
(147, 24, 251, NULL, 222, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '30dcd27d-34bc-4264-a2de-ae31baf752a5'),
(148, 24, 252, NULL, 116, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', 'cfbd7ffe-c144-4811-a02a-47eb52d7779f'),
(149, 24, 253, NULL, 118, 1, '2020-11-07 22:35:48', '2020-11-07 22:35:48', '57cd1862-e19e-4ac2-80e8-e9e7db404cbf'),
(150, 2, 2, NULL, 254, 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', 'cac48bd3-2399-45a8-85e4-5804f0d5112e'),
(151, 2, 255, NULL, 254, 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', '8f44c3ae-7021-4b2c-9fd4-251f4a47dbf0'),
(152, 18, 255, NULL, 116, 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', 'd5038c35-f936-43c7-8050-eb2673caed3a'),
(153, 15, 255, NULL, 173, 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', 'feb20e0e-c540-4a7a-ac3c-d2b41050b1ee'),
(154, 20, 255, NULL, 113, 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', '90369fe2-0b9f-497b-99e5-6973d752b302'),
(155, 24, 256, NULL, 222, 1, '2020-11-07 23:19:45', '2020-11-07 23:19:45', 'e7543dae-4f0b-473a-8014-dc42a2416fb7'),
(156, 24, 257, NULL, 116, 1, '2020-11-07 23:19:46', '2020-11-07 23:19:46', '11bedff8-030b-47af-b6e8-8eab5f1d3db8'),
(157, 24, 258, NULL, 118, 1, '2020-11-07 23:19:46', '2020-11-07 23:19:46', 'be23ad78-b398-4ede-9c5e-630fc4e226c9'),
(158, 2, 259, NULL, 254, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', '72cbc1b4-9101-4d27-96c5-031153af8d5a'),
(159, 18, 259, NULL, 116, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', '68a1f0c7-4559-4bce-8876-7f7a9cd4e8cf'),
(160, 15, 259, NULL, 173, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', 'c31416ae-bae7-42f8-a6d6-2c7c72c718f0'),
(161, 20, 259, NULL, 113, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', '8edde301-a6d7-42c8-a138-eaffb2c50b3a'),
(162, 24, 260, NULL, 222, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', '0e0bd580-eecb-4cc3-b854-208032b7bd90'),
(163, 24, 261, NULL, 116, 1, '2020-11-08 11:07:15', '2020-11-08 11:07:15', 'f21a1a78-1a58-4794-aa54-9dead34f3999'),
(164, 24, 262, NULL, 118, 1, '2020-11-08 11:07:16', '2020-11-08 11:07:16', '797a5f64-3271-44aa-9d3e-ae247c3df8dd'),
(165, 2, 263, NULL, 254, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '67531b37-f2d0-45ae-b6f5-68efc9a4debe'),
(166, 18, 263, NULL, 116, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '4dc2f649-e439-4c8e-975f-cee8919184ea'),
(167, 15, 263, NULL, 173, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', 'b5676a49-a08b-4783-b76f-2bc8e1c61d25'),
(168, 20, 263, NULL, 113, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '84d65615-e0cd-48cc-b7c4-7deed7c4ee48'),
(169, 24, 264, NULL, 222, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '5e1bd1a0-d9bb-4299-93d6-db494e55118e'),
(170, 24, 265, NULL, 116, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', 'd714f812-ced2-4228-a83f-7bf59b7fa754'),
(171, 24, 266, NULL, 118, 1, '2020-11-08 11:29:32', '2020-11-08 11:29:32', '38b204b7-08f0-46a4-b7c8-9c2177f512d9'),
(172, 2, 267, NULL, 254, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '490e0cf8-91da-43a4-99de-2c7546093464'),
(173, 18, 267, NULL, 116, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '2fd1d637-7821-4780-ad50-b712f8791cae'),
(174, 15, 267, NULL, 173, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '965accf4-e1e2-4099-b7c5-4ba93dc20785'),
(175, 20, 267, NULL, 113, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '1654f923-ce07-48a8-8ea1-90afbc6f8820'),
(176, 24, 268, NULL, 222, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', '33b8de54-e4f1-47ac-9a19-4fd1c3ccffe7'),
(177, 24, 269, NULL, 116, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', 'c956bbc3-6204-4cac-b6a1-fdfddcd935b2'),
(178, 24, 270, NULL, 118, 1, '2020-11-08 11:39:57', '2020-11-08 11:39:57', 'c8edde2d-9f21-4e67-a0d3-4d55c8e0795b');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('1761cf91', '@craft/web/assets/admintable/dist'),
('1e4f3744', '@craft/web/assets/fields/dist'),
('1e8afea9', '@lib/fabric'),
('206f196b', '@craft/redactor/assets/redactor-plugins/dist/video'),
('20afbf64', '@craft/web/assets/sites/dist'),
('223a0ac8', '@craft/redactor/assets/redactor/dist'),
('229f23a9', '@lib/iframe-resizer'),
('2cc70d95', '@simplemapimages'),
('2e3c1cbe', '@lib/fileupload'),
('31702182', '@lib/jquery-touch-events'),
('33f62b0b', '@lib/prismjs'),
('36acf93e', '@craft/web/assets/matrix/dist'),
('36d41d40', '@lib/picturefill'),
('38713d11', '@lib/d3'),
('3e772d47', '@craft/web/assets/utilities/dist'),
('40418e72', '@craft/web/assets/recententries/dist'),
('4982c82d', '@craft/web/assets/updater/dist'),
('57392c3b', '@lib/timepicker'),
('5f33e87f', '@app/web/assets/plugins/dist'),
('62aa30c4', '@lib/selectize'),
('6485158d', '@craft/web/assets/cp/dist'),
('68c6744e', '@lib/xregexp'),
('69f94e5b', '@craft/web/assets/installer/dist'),
('6dfe25f0', '@craft/web/assets/pluginstore/dist'),
('73b8ef45', '@craft/web/assets/fieldsettings/dist'),
('77d49847', '@craft/web/assets/generalsettings/dist'),
('7b0997d8', '@lib/datepicker-i18n'),
('7efbcc1c', '@craft/web/assets/updateswidget/dist'),
('80cbc2f6', '@craft/web/assets/matrixsettings/dist'),
('8fbe4682', '@craft/redactor/assets/redactor-plugins/dist/fullscreen'),
('95ee8a32', '@lib/element-resize-detector'),
('9f01219a', '@craft/web/assets/dashboard/dist'),
('a082cf66', '@craft/web/assets/deprecationerrors/dist'),
('abf1d6ba', '@lib/velocity'),
('b7362151', '@craft/redactor/assets/field/dist'),
('b7d67952', '@lib/jquery.payment'),
('ba7e21c7', '@bower/jquery/dist'),
('bc8ea9b1', '@app/web/assets/utilities/dist'),
('bcc2a97', '@lib/garnishjs'),
('bfa7e39a', '@craft/web/assets/editentry/dist'),
('c264ae23', '@lib/vue'),
('c5cda60b', '@app/web/assets/pluginstore/dist'),
('d1518dd8', '@craft/web/assets/login/dist'),
('d9573a15', '@craft/web/assets/craftsupport/dist'),
('def5eb20', '@app/web/assets/cp/dist'),
('e5584d1f', '@lib/jquery-ui'),
('e6420751', '@craft/web/assets/feed/dist'),
('e64de4ea', '@craft/web/assets/edittransform/dist'),
('ef8f0d56', '@lib/axios'),
('fbe6fcae', '@craft/web/assets/plugins/dist'),
('fd3fa0bc', '@craft/web/assets/editsection/dist');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 2, 1, 2, NULL),
(3, 2, 1, 3, ''),
(4, 2, 1, 4, NULL),
(5, 2, 1, 5, ''),
(6, 2, 1, 6, NULL),
(7, 10, 1, 1, NULL),
(8, 10, 1, 2, NULL),
(9, 13, 1, 1, NULL),
(10, 10, 1, 3, NULL),
(11, 13, 1, 2, NULL),
(12, 10, 1, 4, ''),
(13, 13, 1, 3, ''),
(14, 24, 1, 1, NULL),
(15, 27, 1, 1, NULL),
(16, 30, 1, 1, NULL),
(17, 32, 1, 1, NULL),
(18, 32, 1, 2, NULL),
(19, 2, 1, 7, NULL),
(20, 2, 1, 8, NULL),
(21, 2, 1, 9, NULL),
(22, 2, 1, 10, NULL),
(23, 2, 1, 11, ''),
(24, 2, 1, 12, ''),
(25, 2, 1, 13, ''),
(26, 2, 1, 14, ''),
(27, 2, 1, 15, ''),
(28, 2, 1, 16, ''),
(29, 2, 1, 17, ''),
(30, 2, 1, 18, NULL),
(31, 2, 1, 19, ''),
(32, 2, 1, 20, ''),
(33, 2, 1, 21, ''),
(34, 2, 1, 22, NULL),
(35, 2, 1, 23, NULL),
(36, 2, 1, 24, ''),
(37, 2, 1, 25, NULL),
(38, 2, 1, 26, ''),
(39, 2, 1, 27, NULL),
(40, 92, 1, 1, NULL),
(41, 92, 1, 2, ''),
(42, 96, 1, 1, NULL),
(43, 99, 1, 1, NULL),
(44, 102, 1, 1, NULL),
(45, 102, 1, 2, ''),
(46, 102, 1, 3, ''),
(47, 109, 1, 1, NULL),
(48, 113, 1, 1, NULL),
(49, 109, 1, 2, ''),
(50, 116, 1, 1, NULL),
(51, 118, 1, 1, NULL),
(52, 116, 1, 2, NULL),
(53, 118, 1, 2, NULL),
(54, 116, 1, 3, ''),
(55, 109, 1, 3, ''),
(56, 109, 1, 4, ''),
(57, 109, 1, 5, ''),
(58, 128, 1, 1, NULL),
(59, 128, 1, 2, ''),
(60, 128, 1, 3, ''),
(61, 133, 1, 1, NULL),
(62, 136, 1, 1, NULL),
(63, 133, 1, 2, ''),
(64, 136, 1, 2, ''),
(65, 128, 1, 4, ''),
(66, 146, 1, 1, NULL),
(67, 149, 1, 1, NULL),
(68, 149, 1, 2, ''),
(69, 149, 1, 3, ''),
(70, 157, 1, 1, NULL),
(71, 157, 1, 2, ''),
(72, 149, 1, 4, ''),
(73, 146, 1, 2, ''),
(74, 109, 1, 6, ''),
(75, 113, 1, 2, ''),
(76, 102, 1, 4, ''),
(77, 2, 1, 28, NULL),
(78, 2, 1, 29, ''),
(79, 2, 1, 30, ''),
(80, 2, 1, 31, ''),
(81, 2, 1, 32, ''),
(82, 2, 1, 33, ''),
(83, 2, 1, 34, NULL),
(84, 2, 1, 35, ''),
(85, 2, 1, 36, NULL),
(86, 2, 1, 37, ''),
(87, 2, 1, 38, NULL),
(88, 2, 1, 39, ''),
(89, 2, 1, 40, NULL),
(90, 2, 1, 41, ''),
(91, 222, 1, 1, NULL),
(92, 224, 1, 1, NULL),
(93, 118, 1, 3, ''),
(94, 2, 1, 42, ''),
(95, 2, 1, 43, ''),
(96, 2, 1, 44, ''),
(97, 2, 1, 45, ''),
(98, 2, 1, 46, ''),
(99, 2, 1, 47, ''),
(100, 2, 1, 48, '');

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin '),
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' bluemonkey1130 gmail com '),
(1, 'slug', 0, 1, ''),
(2, 'title', 0, 1, ' home '),
(2, 'slug', 0, 1, ' home '),
(7, 'filename', 0, 1, ' bulksplash yoitsthejourney l4erqcy9iua jpg '),
(7, 'extension', 0, 1, ' jpg '),
(7, 'kind', 0, 1, ' image '),
(7, 'slug', 0, 1, ''),
(7, 'title', 0, 1, ' bulksplash yoitsthejourney l4er qcy9iu a '),
(10, 'title', 0, 1, ' about us '),
(13, 'title', 0, 1, ' contact '),
(19, 'slug', 0, 1, ''),
(10, 'slug', 0, 1, ' about us '),
(13, 'slug', 0, 1, ' contact '),
(20, 'slug', 0, 1, ''),
(21, 'slug', 0, 1, ''),
(22, 'slug', 0, 1, ''),
(24, 'slug', 0, 1, ' post one '),
(24, 'title', 0, 1, ' post one '),
(27, 'slug', 0, 1, ' post two '),
(27, 'title', 0, 1, ' post two '),
(30, 'slug', 0, 1, ' post three '),
(30, 'title', 0, 1, ' post three '),
(32, 'title', 0, 1, ' blog '),
(32, 'slug', 0, 1, ' blog '),
(35, 'slug', 0, 1, ''),
(41, 'slug', 0, 1, ''),
(42, 'slug', 0, 1, ''),
(43, 'slug', 0, 1, ''),
(46, 'filename', 0, 1, ' matthew henry nvfpb mmrj8 unsplash 1 jpg '),
(46, 'extension', 0, 1, ' jpg '),
(46, 'kind', 0, 1, ' image '),
(46, 'slug', 0, 1, ''),
(46, 'title', 0, 1, ' matthew henry nv fpb mm rj8 unsplash 1 '),
(49, 'slug', 0, 1, ''),
(54, 'slug', 0, 1, ''),
(55, 'slug', 0, 1, ''),
(62, 'slug', 0, 1, ''),
(92, 'title', 0, 1, ' post one '),
(92, 'slug', 0, 1, ' post one '),
(96, 'slug', 0, 1, ' post two '),
(96, 'title', 0, 1, ' post two '),
(99, 'slug', 0, 1, ' post three '),
(99, 'title', 0, 1, ' post three '),
(102, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(104, 'filename', 0, 1, ' maarten deckers t5nxyxcf50i unsplash jpg '),
(104, 'extension', 0, 1, ' jpg '),
(104, 'kind', 0, 1, ' image '),
(104, 'slug', 0, 1, ''),
(104, 'title', 0, 1, ' maarten deckers t5n xyx cf50 i unsplash '),
(173, 'filename', 0, 1, ' screenshot 2020 11 07 at 15 18 58 png '),
(102, 'slug', 0, 1, ' this is a wide container title stretching two lines '),
(108, 'filename', 0, 1, ' pattern photography architecture jpg '),
(108, 'extension', 0, 1, ' jpg '),
(108, 'kind', 0, 1, ' image '),
(108, 'slug', 0, 1, ''),
(108, 'title', 0, 1, ' pattern photography architecture '),
(109, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(112, 'filename', 0, 1, ' rock and roll 530x640 jpeg '),
(112, 'extension', 0, 1, ' jpeg '),
(112, 'kind', 0, 1, ' image '),
(112, 'slug', 0, 1, ''),
(112, 'title', 0, 1, ' rock and roll 530x640 '),
(113, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(113, 'slug', 0, 1, ' this is a wide container title stretching two lines 2 '),
(116, 'title', 0, 1, ' about us '),
(118, 'title', 0, 1, ' contact '),
(229, 'slug', 0, 1, ''),
(116, 'slug', 0, 1, ' about us '),
(118, 'slug', 0, 1, ' contact '),
(109, 'slug', 0, 1, ' this is a wide container title stretching two lines 1 '),
(128, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(128, 'slug', 0, 1, ' this is a wide container title stretching two lines '),
(133, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(133, 'slug', 0, 1, ' this is a wide container title stretching two lines 1 '),
(136, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(136, 'slug', 0, 1, ' this is a wide container title stretching two lines 2 '),
(138, 'filename', 0, 1, ' robert bye t0pen8uym5i unsplash jpg '),
(138, 'extension', 0, 1, ' jpg '),
(138, 'kind', 0, 1, ' image '),
(138, 'slug', 0, 1, ''),
(138, 'title', 0, 1, ' robert bye t0 pen8 uy m5 i unsplash '),
(140, 'filename', 0, 1, ' david maunsell ybjorqwb09s unsplash jpg '),
(140, 'extension', 0, 1, ' jpg '),
(140, 'kind', 0, 1, ' image '),
(140, 'slug', 0, 1, ''),
(140, 'title', 0, 1, ' david maunsell y bjorq wb09s unsplash '),
(142, 'filename', 0, 1, ' drohysmer garcia nm4erckscok unsplash jpg '),
(142, 'extension', 0, 1, ' jpg '),
(142, 'kind', 0, 1, ' image '),
(142, 'slug', 0, 1, ''),
(142, 'title', 0, 1, ' drohysmer garcia nm4 er ck sc ok unsplash '),
(145, 'filename', 0, 1, ' robert bye t0pen8uym5i unsplash 1 jpg '),
(145, 'extension', 0, 1, ' jpg '),
(145, 'kind', 0, 1, ' image '),
(145, 'slug', 0, 1, ''),
(145, 'title', 0, 1, ' robert bye t0 pen8 uy m5 i unsplash 1 '),
(146, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(146, 'slug', 0, 1, ' this is a wide container title stretching two lines '),
(149, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(151, 'filename', 0, 1, ' john macdonald i6v9qwwh93g unsplash jpg '),
(151, 'extension', 0, 1, ' jpg '),
(151, 'kind', 0, 1, ' image '),
(151, 'slug', 0, 1, ''),
(151, 'title', 0, 1, ' john macdonald i6v9 qwwh93g unsplash '),
(153, 'filename', 0, 1, ' john macdonald i6v9qwwh93g unsplash 2020 11 07 140710 jpg '),
(153, 'extension', 0, 1, ' jpg '),
(153, 'kind', 0, 1, ' image '),
(153, 'slug', 0, 1, ''),
(153, 'title', 0, 1, ' john macdonald i6v9 qwwh93g unsplash '),
(149, 'slug', 0, 1, ' this is a wide container title stretching two lines 1 '),
(156, 'filename', 0, 1, ' drahomir posteby mach dj52knpz5sc unsplash jpg '),
(156, 'extension', 0, 1, ' jpg '),
(156, 'kind', 0, 1, ' image '),
(156, 'slug', 0, 1, ''),
(156, 'title', 0, 1, ' drahomir posteby mach dj52 k np z5 sc unsplash '),
(157, 'title', 0, 1, ' this is a wide container title stretching two lines '),
(157, 'slug', 0, 1, ' this is a wide container title stretching two lines 2 '),
(173, 'extension', 0, 1, ' png '),
(173, 'kind', 0, 1, ' image '),
(173, 'slug', 0, 1, ''),
(173, 'title', 0, 1, ' screenshot 2020 11 07 at 15 18 58 '),
(222, 'title', 0, 1, ' services '),
(222, 'slug', 0, 1, ' services '),
(224, 'title', 0, 1, ' case studies '),
(224, 'slug', 0, 1, ' case studies '),
(226, 'slug', 0, 1, ''),
(227, 'slug', 0, 1, ''),
(230, 'slug', 0, 1, ''),
(231, 'slug', 0, 1, ''),
(232, 'slug', 0, 1, ''),
(233, 'slug', 0, 1, ''),
(234, 'slug', 0, 1, ''),
(235, 'slug', 0, 1, ''),
(236, 'slug', 0, 1, ''),
(237, 'slug', 0, 1, ''),
(238, 'slug', 0, 1, ''),
(239, 'slug', 0, 1, ''),
(240, 'slug', 0, 1, ''),
(241, 'slug', 0, 1, ''),
(254, 'filename', 0, 1, ' ezgif com gif maker gif '),
(254, 'extension', 0, 1, ' gif '),
(254, 'kind', 0, 1, ' image '),
(254, 'slug', 0, 1, ''),
(254, 'title', 0, 1, ' ezgif com gif maker ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home', 'home', 'single', 1, 'all', NULL, '2020-11-06 16:46:55', '2020-11-06 16:46:55', NULL, '078152bd-07a6-48a9-bba4-f6446df31eba'),
(2, NULL, 'About Us', 'aboutUs', 'single', 1, 'all', NULL, '2020-11-06 17:28:49', '2020-11-06 17:28:49', '2020-11-06 20:14:16', '0c005934-84d0-46fa-afca-f2e4b99ced49'),
(3, NULL, 'Contact', 'contact', 'single', 1, 'all', NULL, '2020-11-06 17:29:11', '2020-11-06 17:29:11', '2020-11-06 20:14:23', '2c7e12f0-7ee5-4c4b-b192-a3a78226e0ec'),
(4, NULL, 'Blog Posts', 'blogPosts', 'channel', 1, 'all', NULL, '2020-11-06 17:46:11', '2020-11-06 17:46:11', '2020-11-06 20:14:20', '45125cdf-1641-4bfa-a680-94a621c07c25'),
(5, NULL, 'Blog', 'blog', 'single', 1, 'all', NULL, '2020-11-06 17:54:31', '2020-11-06 17:54:31', '2020-11-06 20:14:18', '302b31f7-d938-4f68-9ea8-5a8b1dcd5584'),
(6, NULL, 'Blog Posts', 'blogPosts', 'channel', 1, 'all', NULL, '2020-11-07 09:40:07', '2020-11-07 09:58:13', NULL, '7e534ac1-2a65-47a9-a5b3-de555c879e16'),
(7, NULL, 'About us', 'aboutUs', 'single', 1, 'all', NULL, '2020-11-07 10:50:32', '2020-11-07 10:50:32', NULL, 'fadde93e-7edf-4a7c-85c8-8a153070d65a'),
(8, NULL, 'Contact', 'contact', 'single', 1, 'all', NULL, '2020-11-07 10:50:50', '2020-11-07 10:50:50', NULL, '9ea94e84-e58c-43f2-a311-5120ef2a3dd7'),
(9, NULL, 'Service Posts', 'servicePosts', 'channel', 1, 'all', NULL, '2020-11-07 13:09:39', '2020-11-07 13:09:39', NULL, '2cd6b8f2-ac64-4d57-b681-fbae9316a71f'),
(10, NULL, 'Case Studies Posts', 'caseStudiesPosts', 'channel', 1, 'all', NULL, '2020-11-07 14:03:49', '2020-11-07 14:03:49', NULL, '2318db74-78e0-4760-b303-d2eaad36a45b'),
(11, NULL, 'Services', 'services', 'single', 1, 'all', NULL, '2020-11-07 16:27:00', '2020-11-07 16:27:00', NULL, '2e8d9dd6-bd7d-45f2-9e1e-cb1c72030775'),
(12, NULL, 'Case Studies', 'caseStudies', 'single', 1, 'all', NULL, '2020-11-07 16:27:43', '2020-11-07 16:27:43', NULL, 'cdeab266-7ed4-4ddd-a06b-954cdb954037');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'home', 1, '2020-11-06 16:46:55', '2020-11-06 17:17:25', '1f5643bd-2cff-408a-b19d-9d8e1556bdce'),
(2, 2, 1, 1, 'about-us', 'general', 1, '2020-11-06 17:28:49', '2020-11-06 17:28:49', 'bfabb22f-3542-4a6b-b3d5-e7bb78e56802'),
(3, 3, 1, 1, 'contact', 'general', 1, '2020-11-06 17:29:11', '2020-11-06 17:29:11', 'fadd480a-8f7a-4b5a-ba99-bc60be82f247'),
(4, 4, 1, 1, 'blog/{slug}', 'blog/_entry', 1, '2020-11-06 17:46:11', '2020-11-06 17:46:11', '14c6b390-fe6e-40d0-9235-9ac8e64f620c'),
(5, 5, 1, 1, 'blog', 'blog/index', 1, '2020-11-06 17:54:31', '2020-11-06 17:54:31', '734f4319-fc0f-4079-954e-a8bdcf7ff6ef'),
(6, 6, 1, 1, 'blog/{slug}', 'blog/_entry', 1, '2020-11-07 09:40:07', '2020-11-07 09:42:12', '833fa765-709c-4893-ae37-8572d2d740b8'),
(7, 7, 1, 1, 'about-us', 'general', 1, '2020-11-07 10:50:32', '2020-11-07 10:50:32', 'c4cd01dc-937c-473e-9a34-1b6c02109153'),
(8, 8, 1, 1, 'contact', 'general', 1, '2020-11-07 10:50:50', '2020-11-07 10:50:50', '9d2489c0-c6a7-4132-a46f-969ba846596b'),
(9, 9, 1, 1, 'services/{slug}', 'services/_entry', 1, '2020-11-07 13:09:39', '2020-11-07 13:09:59', '81c0dd28-393a-4f19-a933-d522386a8e23'),
(10, 10, 1, 1, 'case-studies/{slug}', 'casestudies/_entry', 1, '2020-11-07 14:03:49', '2020-11-07 14:03:49', '48c7cf60-85e3-44aa-8639-c3069e724b28'),
(11, 11, 1, 1, 'services', 'services/index', 1, '2020-11-07 16:27:00', '2020-11-07 16:27:00', 'ddd84309-b463-4ecd-b06e-722ac7b975db'),
(12, 12, 1, 1, 'case-studies', 'casestudies/index', 1, '2020-11-07 16:27:43', '2020-11-07 16:27:43', 'f4fae17a-66e2-4174-8b19-8d0fc7d9f0f6');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Craftiverse', '2020-11-06 16:46:00', '2020-11-06 16:46:00', NULL, '6b6971ce-a03d-4845-bda2-d93f3efb5d3a');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'Craftiverse', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2020-11-06 16:46:00', '2020-11-06 16:46:00', NULL, 'a444331c-5954-495c-be67-635a384e66c6');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecacheelements`
--

CREATE TABLE `templatecacheelements` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecachequeries`
--

CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecaches`
--

CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, NULL, NULL, 'bluemonkey1130@gmail.com', '$2y$13$ckD23t4ROFew3EgS1ctUNOGVBUbrIcKgz.IFI8Vj.YZasUVttn3i6', 1, 0, 0, 0, '2020-11-09 13:08:31', NULL, NULL, NULL, '2020-11-08 09:58:00', NULL, 1, NULL, NULL, NULL, 0, '2020-11-06 16:46:01', '2020-11-06 16:46:01', '2020-11-09 13:08:31', '49a2b83a-8f42-479a-b97a-8daccae1b6fc');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Uploads', '', '2020-11-06 17:07:22', '2020-11-06 17:07:22', '0fb95ec7-03b5-48e7-8654-87b8c6b54a4d'),
(2, NULL, NULL, 'Temporary source', NULL, '2020-11-06 19:46:29', '2020-11-06 19:46:29', '34ab44df-7e32-4134-925e-4116671d68f3'),
(3, 2, NULL, 'user_1', 'user_1/', '2020-11-06 19:46:29', '2020-11-06 19:46:29', 'aea44a54-6cce-44ea-9c52-acbe4dbc47b0');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, 'Uploads', 'uploads', 'craft\\volumes\\Local', 1, '@web/uploads', '{\"path\":\"@webroot/uploads\"}', 1, '2020-11-06 17:07:22', '2020-11-06 17:07:22', NULL, 'c2774548-0ea6-402e-bf92-794a588a541d');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2020-11-06 16:46:26', '2020-11-06 16:46:26', '9b432521-78bc-46a7-a31c-8b407abf5ef1'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2020-11-06 16:46:26', '2020-11-06 16:46:26', '5cc72c82-cb71-4455-9082-23ddcfd802fd'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2020-11-06 16:46:26', '2020-11-06 16:46:26', 'd1f94928-a485-44d9-981b-774265dda9a0'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2020-11-06 16:46:26', '2020-11-06 16:46:26', 'fe5649cf-9676-4a69-af65-1a440bce7f9a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  ADD KEY `assetindexdata_volumeId_idx` (`volumeId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_filename_folderId_idx` (`filename`,`folderId`),
  ADD KEY `assets_folderId_idx` (`folderId`),
  ADD KEY `assets_volumeId_idx` (`volumeId`),
  ADD KEY `assets_uploaderId_fk` (`uploaderId`);

--
-- Indexes for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `assettransforms`
--
ALTER TABLE `assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assettransforms_name_idx` (`name`),
  ADD KEY `assettransforms_handle_idx` (`handle`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_groupId_idx` (`groupId`),
  ADD KEY `categories_parentId_fk` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorygroups_name_idx` (`name`),
  ADD KEY `categorygroups_handle_idx` (`handle`),
  ADD KEY `categorygroups_structureId_idx` (`structureId`),
  ADD KEY `categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `categorygroups_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  ADD KEY `categorygroups_sites_siteId_idx` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `changedattributes_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `changedattributes_siteId_fk` (`siteId`),
  ADD KEY `changedattributes_userId_fk` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `changedfields_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `changedfields_siteId_fk` (`siteId`),
  ADD KEY `changedfields_fieldId_fk` (`fieldId`),
  ADD KEY `changedfields_userId_fk` (`userId`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `content_siteId_idx` (`siteId`),
  ADD KEY `content_title_idx` (`title`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craftidtokens_userId_fk` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drafts_creatorId_fk` (`creatorId`),
  ADD KEY `drafts_sourceId_fk` (`sourceId`);

--
-- Indexes for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elements_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `elements_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `elements_type_idx` (`type`),
  ADD KEY `elements_enabled_idx` (`enabled`),
  ADD KEY `elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  ADD KEY `elements_archived_dateDeleted_draftId_revisionId_idx` (`archived`,`dateDeleted`,`draftId`,`revisionId`),
  ADD KEY `elements_draftId_fk` (`draftId`),
  ADD KEY `elements_revisionId_fk` (`revisionId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `elements_sites_siteId_idx` (`siteId`),
  ADD KEY `elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  ADD KEY `elements_sites_enabled_idx` (`enabled`),
  ADD KEY `elements_sites_uri_siteId_idx` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entries_postDate_idx` (`postDate`),
  ADD KEY `entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `entries_authorId_idx` (`authorId`),
  ADD KEY `entries_sectionId_idx` (`sectionId`),
  ADD KEY `entries_typeId_idx` (`typeId`),
  ADD KEY `entries_parentId_fk` (`parentId`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  ADD KEY `entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  ADD KEY `entrytypes_sectionId_idx` (`sectionId`),
  ADD KEY `entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `entrytypes_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldgroups_name_idx` (`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayoutfields_tabId_idx` (`tabId`),
  ADD KEY `fieldlayoutfields_fieldId_idx` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayouttabs_layoutId_idx` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fields_handle_context_idx` (`handle`,`context`),
  ADD KEY `fields_groupId_idx` (`groupId`),
  ADD KEY `fields_context_idx` (`context`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globalsets_name_idx` (`name`),
  ADD KEY `globalsets_handle_idx` (`handle`),
  ADD KEY `globalsets_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gqltokens_accessToken_unq_idx` (`accessToken`),
  ADD UNIQUE KEY `gqltokens_name_unq_idx` (`name`),
  ADD KEY `gqltokens_schemaId_fk` (`schemaId`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `matrixblocks_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixblocktypes_name_fieldId_idx` (`name`,`fieldId`),
  ADD KEY `matrixblocktypes_handle_fieldId_idx` (`handle`,`fieldId`),
  ADD KEY `matrixblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `matrixcontent_heroslides`
--
ALTER TABLE `matrixcontent_heroslides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_heroslides_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_heroslides_siteId_fk` (`siteId`);

--
-- Indexes for table `matrixcontent_navigation`
--
ALTER TABLE `matrixcontent_navigation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_navigation_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_navigation_siteId_fk` (`siteId`);

--
-- Indexes for table `matrixcontent_onpagelink`
--
ALTER TABLE `matrixcontent_onpagelink`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_onpagelink_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_onpagelink_siteId_fk` (`siteId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `migrations_track_name_unq_idx` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugins_handle_unq_idx` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_channel_fail_timeUpdated_timePushed_idx` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `queue_channel_fail_timeUpdated_delay_idx` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `relations_sourceId_idx` (`sourceId`),
  ADD KEY `relations_targetId_idx` (`targetId`),
  ADD KEY `relations_sourceSiteId_idx` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  ADD KEY `revisions_creatorId_fk` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_handle_idx` (`handle`),
  ADD KEY `sections_name_idx` (`name`),
  ADD KEY `sections_structureId_idx` (`structureId`),
  ADD KEY `sections_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  ADD KEY `sections_sites_siteId_idx` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_uid_idx` (`uid`),
  ADD KEY `sessions_token_idx` (`token`),
  ADD KEY `sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `sessions_userId_idx` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sitegroups_name_idx` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sites_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `sites_handle_idx` (`handle`),
  ADD KEY `sites_sortOrder_idx` (`sortOrder`),
  ADD KEY `sites_groupId_fk` (`groupId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `structureelements_root_idx` (`root`),
  ADD KEY `structureelements_lft_idx` (`lft`),
  ADD KEY `structureelements_rgt_idx` (`rgt`),
  ADD KEY `structureelements_level_idx` (`level`),
  ADD KEY `structureelements_elementId_idx` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `structures_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `systemmessages_key_language_unq_idx` (`key`,`language`),
  ADD KEY `systemmessages_language_idx` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggroups_name_idx` (`name`),
  ADD KEY `taggroups_handle_idx` (`handle`),
  ADD KEY `taggroups_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_groupId_idx` (`groupId`);

--
-- Indexes for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecacheelements_cacheId_idx` (`cacheId`),
  ADD KEY `templatecacheelements_elementId_idx` (`elementId`);

--
-- Indexes for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecachequeries_cacheId_idx` (`cacheId`),
  ADD KEY `templatecachequeries_type_idx` (`type`);

--
-- Indexes for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `templatecaches_siteId_idx` (`siteId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unq_idx` (`token`),
  ADD KEY `tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usergroups_handle_idx` (`handle`),
  ADD KEY `usergroups_name_idx` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `usergroups_users_userId_idx` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `userpermissions_usergroups_groupId_idx` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `userpermissions_users_userId_idx` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_uid_idx` (`uid`),
  ADD KEY `users_verificationCode_idx` (`verificationCode`),
  ADD KEY `users_email_idx` (`email`),
  ADD KEY `users_username_idx` (`username`),
  ADD KEY `users_photoId_fk` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  ADD KEY `volumefolders_parentId_idx` (`parentId`),
  ADD KEY `volumefolders_volumeId_idx` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volumes_name_idx` (`name`),
  ADD KEY `volumes_handle_idx` (`handle`),
  ADD KEY `volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `volumes_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widgets_userId_idx` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `assettransforms`
--
ALTER TABLE `assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8124;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matrixcontent_heroslides`
--
ALTER TABLE `matrixcontent_heroslides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `matrixcontent_navigation`
--
ALTER TABLE `matrixcontent_navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `matrixcontent_onpagelink`
--
ALTER TABLE `matrixcontent_onpagelink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecaches`
--
ALTER TABLE `templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_uploaderId_fk` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `changedattributes_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedattributes_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedattributes_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `changedfields_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `gqltokens_schemaId_fk` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixcontent_heroslides`
--
ALTER TABLE `matrixcontent_heroslides`
  ADD CONSTRAINT `matrixcontent_heroslides_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_heroslides_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matrixcontent_navigation`
--
ALTER TABLE `matrixcontent_navigation`
  ADD CONSTRAINT `matrixcontent_navigation_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_navigation_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matrixcontent_onpagelink`
--
ALTER TABLE `matrixcontent_onpagelink`
  ADD CONSTRAINT `matrixcontent_onpagelink_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_onpagelink_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD CONSTRAINT `templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
