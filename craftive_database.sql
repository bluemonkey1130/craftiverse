-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2020 at 01:10 PM
-- Server version: 5.7.31-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craftive_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetfiles`
--

CREATE TABLE `assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetfolders`
--

CREATE TABLE `assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetsources`
--

CREATE TABLE `assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assettransformindex`
--

CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assettransforms`
--

CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_i18n`
--

CREATE TABLE `categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `locale`, `title`, `field_body`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_gb', NULL, NULL, '2020-11-08 12:53:01', '2020-11-08 12:53:01', '50f8f952-9d8a-40a1-b1df-dbeaf1cfe44c'),
(2, 2, 'en_gb', 'Homepage', NULL, '2020-11-08 12:53:05', '2020-11-08 12:53:05', 'e19242dc-3325-49b4-8677-2ba550957f86');

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2020-11-08 12:53:01', '2020-11-08 12:53:01', '33591d4c-c8ee-4d89-a810-a6c10629bfa7'),
(2, 'Entry', 1, 0, '2020-11-08 12:53:05', '2020-11-08 12:53:05', '69a89557-9fee-492e-bf91-d2978236ae15');

-- --------------------------------------------------------

--
-- Table structure for table `elements_i18n`
--

CREATE TABLE `elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elements_i18n`
--

INSERT INTO `elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_gb', '', NULL, 1, '2020-11-08 12:53:02', '2020-11-08 12:53:02', 'bd85a4c6-6819-4369-98ee-bafd76d77ebb'),
(2, 2, 'en_gb', 'homepage', '__home__', 1, '2020-11-08 12:53:05', '2020-11-08 12:53:05', '3d32d357-d4a4-4e2a-983e-d41f373c93f0');

-- --------------------------------------------------------

--
-- Table structure for table `emailmessages`
--

CREATE TABLE `emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, NULL, '2020-11-08 12:53:05', NULL, '2020-11-08 12:53:05', '2020-11-08 12:53:05', '664ca149-a477-4428-b6b1-21329a5fcc65');

-- --------------------------------------------------------

--
-- Table structure for table `entrydrafts`
--

CREATE TABLE `entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 3, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2020-11-08 12:53:05', '2020-11-08 12:53:05', '8797906d-eb52-4a0f-8e12-6ded3f9c21a2');

-- --------------------------------------------------------

--
-- Table structure for table `entryversions`
--

CREATE TABLE `entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) UNSIGNED NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entryversions`
--

INSERT INTO `entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'en_gb', 1, NULL, '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1604839985,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}', '2020-11-08 12:53:05', '2020-11-08 12:53:05', '8344695b-8393-4e64-b8f7-59574063c4d0');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2020-11-08 12:53:05', '2020-11-08 12:53:05', '23b1f811-0ef2-42e0-931d-3a74ffb2249f');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 1, 1, 1, 1, '2020-11-08 12:53:05', '2020-11-08 12:53:05', '63c57182-96f4-456f-ae6a-4ac72174c014');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2020-11-08 12:53:05', '2020-11-08 12:53:05', '3fc77409-5f2b-44c0-9f1a-c99cac824ce4'),
(3, 'Entry', '2020-11-08 12:53:05', '2020-11-08 12:53:05', '2fe9384b-8f66-4c7f-85f1-78a530d71ad3');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 'Content', 1, '2020-11-08 12:53:05', '2020-11-08 12:53:05', '2365ef5a-c46c-43f5-8c93-4a33f8ba16b8');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{\"configFile\":\"Standard.json\",\"columnType\":\"text\"}', '2020-11-08 12:53:05', '2020-11-08 12:53:05', '4c9506fa-eedf-47ef-a296-3acfc598ce78'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{\"source\":\"taggroup:1\"}', '2020-11-08 12:53:05', '2020-11-08 12:53:05', 'b6fe2918-525c-418c-ad05-2380bedb6351');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.9.2', '2.6.14', 0, 'Craftiverse Georgehawthorne Co', 'http://craftiverse.georgehawthorne.co.uk', 'UTC', 1, 0, '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'e1cd13ac-285f-4678-a8e4-1a217b755ba2');

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

CREATE TABLE `locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en_gb', 1, '2020-11-08 12:52:59', '2020-11-08 12:52:59', '55760730-23f9-4790-a596-d33c8923c7c3');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'b1de92e2-0950-4ac1-a7e9-56d82a39a959'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'fe7a5075-720e-44f5-9f7e-ac1b26ed20c2'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '4f86bbf8-9857-4c62-b09b-78be2dd34cf6'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'e51d86c5-174d-4280-8aa7-60207393fd55'),
(5, NULL, 'm140829_000001_single_title_formats', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2d5db4f5-cd54-4bcb-9b51-2e524ff4d7c3'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'b9db46f8-b5a5-4a09-9c77-4b30175b437b'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '8ed4e78d-8419-422a-af1c-1f09a3500de0'),
(8, NULL, 'm141008_000001_elements_index_tune', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '8ee8c220-0c86-4c7a-9288-f11480af28d6'),
(9, NULL, 'm141009_000001_assets_source_handle', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '93fb5291-a641-4fbf-bf63-3a427331993f'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '8310119c-7415-4cfd-bf84-a00ef84106de'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'f255b38b-9ae2-4b3e-b364-9a4135aa211b'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'f9913a3c-ae3d-48e3-bf7f-0d7ccafb8c41'),
(13, NULL, 'm141103_000001_tag_titles', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '91faab2c-a7bc-43cc-9528-4f2ea76adf0f'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'c77b519f-fb7a-40a4-b160-45d774120318'),
(15, NULL, 'm141126_000001_user_week_start_day', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'bde50755-a5c9-4370-873c-ae3655a80ece'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'd423ff00-d3fe-4084-a24d-1d516a851a25'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '1440fd4a-46dd-46e5-87b5-a048f5e5d7b2'),
(18, NULL, 'm150827_000000_element_index_settings', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'cc952274-b65f-4d78-92fe-7cb366f1127e'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '5046732e-734e-46b8-8604-53f9b1b32710'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'f3fd3174-b609-4343-a694-7fa77697ff25'),
(21, NULL, 'm151109_000000_text_url_formats', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '1cf5b035-71d2-43f9-949b-d34684a1e14f'),
(22, NULL, 'm151110_000000_move_logo', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '0dc1bffa-d99f-48ba-8768-e2cd655afbd8'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '7102d1a3-465f-40ac-a4f1-969cc43c4afa'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '253b0040-a247-4395-9735-df095d7cb8ee'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '8e668a3f-1720-4aae-b3e4-4aeb12bb8680'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '88733b36-e3be-4bf2-b1b8-7adee5eb104f'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2412ff50-cd40-4bc3-8bf3-46eb9b50688e'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '1469fb9e-5ce3-4cd4-a6da-43be276bd0fa'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'b5c664e8-42b8-4285-804d-f21ee029a869'),
(30, NULL, 'm160304_000000_client_permissions', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '5cb572c6-1bf1-4e69-b375-6b26c91a224b'),
(31, NULL, 'm160322_000000_asset_filesize', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '9762d9c4-e901-4b3f-8b17-2048844a6f9e'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'a52edd43-5950-4901-8af3-e46567bab0b1'),
(33, NULL, 'm160510_000000_tasksettings', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'bb442b18-61c3-4b01-9998-559a6ac00786'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '8106dd0f-629b-4954-a9a4-1bfd04879d30'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '150b5839-d3b8-415b-8a01-1b65a694ccf2'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'cf1244c0-1db4-4654-a7f8-2a280afffe0b'),
(37, NULL, 'm161108_000000_new_version_format', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '9fb0435a-1563-40ae-a9a6-0641ceef9efd'),
(38, NULL, 'm161109_000000_index_shuffle', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '4a1f2795-df98-4809-a10d-2cbc6ffd3e51'),
(39, NULL, 'm170612_000000_route_index_shuffle', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '5aaf0526-37e9-4192-8a75-4c296322224d'),
(40, NULL, 'm171107_000000_assign_group_permissions', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'ab22b1aa-babb-4873-8539-d9e14df86dac'),
(41, NULL, 'm171117_000001_templatecache_index_tune', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '3a4b3549-5cf9-4876-b708-8f9d08914e70'),
(42, NULL, 'm171204_000001_templatecache_index_tune_deux', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', 'df2e36f1-0b83-4055-b237-19afeb75117d'),
(43, NULL, 'm180406_000000_pro_upgrade', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2020-11-08 12:52:59', '2ef51ba3-458c-4384-aa39-7e29f2d03a0f');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rackspaceaccess`
--

CREATE TABLE `rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'en_gb', ' admin '),
(1, 'firstname', 0, 'en_gb', ''),
(1, 'lastname', 0, 'en_gb', ''),
(1, 'fullname', 0, 'en_gb', ''),
(1, 'email', 0, 'en_gb', ' bluemonkey1130 gmail com '),
(1, 'slug', 0, 'en_gb', ''),
(2, 'slug', 0, 'en_gb', ' homepage '),
(2, 'title', 0, 'en_gb', ' homepage ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2020-11-08 12:53:05', '2020-11-08 12:53:05', 'd67179ce-a32f-4d77-8884-c2dac6e025ae');

-- --------------------------------------------------------

--
-- Table structure for table `sections_i18n`
--

CREATE TABLE `sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections_i18n`
--

INSERT INTO `sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_gb', 1, '__home__', NULL, '2020-11-08 12:53:05', '2020-11-08 12:53:05', 'ed4234a4-3071-47af-b776-cf088aee6238');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'fd03545574a2ea76d621b889615835262a8a53daczozMjoiflNzV0RVUXlwVUg4XzY4c29kSUJGV0FVRDhZWUlkYk0iOw==', '2020-11-08 12:53:05', '2020-11-08 12:53:05', 'e5dadd7e-7c85-47cc-bd32-0d4cb8d24d32');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemsettings`
--

CREATE TABLE `systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `systemsettings`
--

INSERT INTO `systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{\"protocol\":\"php\",\"emailAddress\":\"bluemonkey1130@gmail.com\",\"senderName\":\"Craftiverse Georgehawthorne Co\"}', '2020-11-08 12:53:05', '2020-11-08 12:53:05', 'd87b9cb3-bdf1-450d-8877-8ed67a005d71');

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taggroups`
--

INSERT INTO `taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2020-11-08 12:53:05', '2020-11-08 12:53:05', '27724477-d1df-4153-aff5-84eeb1343b8b');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `currentStep` int(11) UNSIGNED DEFAULT NULL,
  `totalSteps` int(11) UNSIGNED DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecachecriteria`
--

CREATE TABLE `templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecacheelements`
--

CREATE TABLE `templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatecaches`
--

CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `client` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `suspended` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, NULL, NULL, 'bluemonkey1130@gmail.com', '$2y$13$fumUimCA2P3fv.g8gjh7VuZ9Wnnt.T/Vz4mu8m8NrTTaVMJkZUuqG', NULL, 0, 1, 0, 0, 0, 0, 0, '2020-11-08 12:53:05', '92.8.121.36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-08 12:53:01', '2020-11-08 12:53:02', '2020-11-08 12:53:05', 'b5b4df1d-8bd0-44d4-af75-85a5c13b4c43');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(4) UNSIGNED DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2020-11-08 12:58:51', '2020-11-08 12:58:51', 'abea15f5-73ff-480b-b309-a36b189462b2'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2020-11-08 12:58:51', '2020-11-08 12:58:51', '3c1cc2c0-5ef8-4740-822c-74651a90f0af'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2020-11-08 12:58:51', '2020-11-08 12:58:51', '01689c8a-a88b-429a-b87f-6d9c6e9826a7'),
(4, 1, 'Feed', 4, NULL, '{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}', 1, '2020-11-08 12:58:51', '2020-11-08 12:58:51', '23ab538c-0591-402d-a04e-a14fe3d30277');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assetfiles`
--
ALTER TABLE `assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `assetfiles_folderId_fk` (`folderId`);

--
-- Indexes for table `assetfolders`
--
ALTER TABLE `assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `assetfolders_parentId_fk` (`parentId`),
  ADD KEY `assetfolders_sourceId_fk` (`sourceId`);

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `assetindexdata_sourceId_fk` (`sourceId`);

--
-- Indexes for table `assetsources`
--
ALTER TABLE `assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `assetsources_handle_unq_idx` (`handle`),
  ADD KEY `assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Indexes for table `assettransforms`
--
ALTER TABLE `assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `assettransforms_handle_unq_idx` (`handle`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_groupId_fk` (`groupId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `categorygroups_structureId_fk` (`structureId`),
  ADD KEY `categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `categorygroups_i18n`
--
ALTER TABLE `categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `categorygroups_i18n_locale_fk` (`locale`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `content_title_idx` (`title`),
  ADD KEY `content_locale_fk` (`locale`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

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
  ADD KEY `elements_type_idx` (`type`),
  ADD KEY `elements_enabled_idx` (`enabled`),
  ADD KEY `elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Indexes for table `elements_i18n`
--
ALTER TABLE `elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `elements_i18n_locale_fk` (`locale`);

--
-- Indexes for table `emailmessages`
--
ALTER TABLE `emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `emailmessages_locale_fk` (`locale`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entries_sectionId_idx` (`sectionId`),
  ADD KEY `entries_typeId_idx` (`typeId`),
  ADD KEY `entries_postDate_idx` (`postDate`),
  ADD KEY `entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `entries_authorId_fk` (`authorId`);

--
-- Indexes for table `entrydrafts`
--
ALTER TABLE `entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `entrydrafts_locale_fk` (`locale`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `entryversions`
--
ALTER TABLE `entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `entryversions_locale_fk` (`locale`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fieldgroups_name_unq_idx` (`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `fields_context_idx` (`context`),
  ADD KEY `fields_groupId_fk` (`groupId`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `globalsets_handle_unq_idx` (`handle`),
  ADD KEY `globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `locales_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `migrations_version_unq_idx` (`version`),
  ADD KEY `migrations_pluginId_fk` (`pluginId`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rackspaceaccess`
--
ALTER TABLE `rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `relations_sourceId_fk` (`sourceId`),
  ADD KEY `relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `relations_targetId_fk` (`targetId`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routes_locale_idx` (`locale`),
  ADD KEY `routes_urlPattern_idx` (`urlPattern`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `sections_handle_unq_idx` (`handle`),
  ADD KEY `sections_structureId_fk` (`structureId`);

--
-- Indexes for table `sections_i18n`
--
ALTER TABLE `sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `sections_i18n_locale_fk` (`locale`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_uid_idx` (`uid`),
  ADD KEY `sessions_token_idx` (`token`),
  ADD KEY `sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `sessions_userId_fk` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

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
  ADD KEY `structureelements_elementId_fk` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systemsettings`
--
ALTER TABLE `systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `systemsettings_category_unq_idx` (`category`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `taggroups_handle_unq_idx` (`handle`),
  ADD KEY `taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_groupId_fk` (`groupId`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_root_idx` (`root`),
  ADD KEY `tasks_lft_idx` (`lft`),
  ADD KEY `tasks_rgt_idx` (`rgt`),
  ADD KEY `tasks_level_idx` (`level`);

--
-- Indexes for table `templatecachecriteria`
--
ALTER TABLE `templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `templatecachecriteria_type_idx` (`type`);

--
-- Indexes for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD KEY `templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `templatecacheelements_elementId_fk` (`elementId`);

--
-- Indexes for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecaches_cacheKey_locale_expiryDate_path_idx` (`cacheKey`,`locale`,`expiryDate`,`path`),
  ADD KEY `templatecaches_cacheKey_locale_expiryDate_idx` (`cacheKey`,`locale`,`expiryDate`),
  ADD KEY `templatecaches_locale_fk` (`locale`);

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
  ADD UNIQUE KEY `usergroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `usergroups_handle_unq_idx` (`handle`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `usergroups_users_userId_fk` (`userId`);

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
  ADD KEY `userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `userpermissions_users_userId_fk` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `users_email_unq_idx` (`email`),
  ADD KEY `users_verificationCode_idx` (`verificationCode`),
  ADD KEY `users_uid_idx` (`uid`),
  ADD KEY `users_preferredLocale_fk` (`preferredLocale`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assetfolders`
--
ALTER TABLE `assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetsources`
--
ALTER TABLE `assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransforms`
--
ALTER TABLE `assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups_i18n`
--
ALTER TABLE `categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `elements_i18n`
--
ALTER TABLE `elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emailmessages`
--
ALTER TABLE `emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrydrafts`
--
ALTER TABLE `entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entryversions`
--
ALTER TABLE `entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rackspaceaccess`
--
ALTER TABLE `rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections_i18n`
--
ALTER TABLE `sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `systemsettings`
--
ALTER TABLE `systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `templatecachecriteria`
--
ALTER TABLE `templatecachecriteria`
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
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assetfiles`
--
ALTER TABLE `assetfiles`
  ADD CONSTRAINT `assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetfolders`
--
ALTER TABLE `assetfolders`
  ADD CONSTRAINT `assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetsources`
--
ALTER TABLE `assetsources`
  ADD CONSTRAINT `assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_i18n`
--
ALTER TABLE `categorygroups_i18n`
  ADD CONSTRAINT `categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `elements_i18n`
--
ALTER TABLE `elements_i18n`
  ADD CONSTRAINT `elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emailmessages`
--
ALTER TABLE `emailmessages`
  ADD CONSTRAINT `emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrydrafts`
--
ALTER TABLE `entrydrafts`
  ADD CONSTRAINT `entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entryversions`
--
ALTER TABLE `entryversions`
  ADD CONSTRAINT `entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `migrations`
--
ALTER TABLE `migrations`
  ADD CONSTRAINT `migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_i18n`
--
ALTER TABLE `sections_i18n`
  ADD CONSTRAINT `sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `templatecachecriteria`
--
ALTER TABLE `templatecachecriteria`
  ADD CONSTRAINT `templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
