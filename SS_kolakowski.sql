-- phpMyAdmin SQL Dump
-- version 3.3.7deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2011 at 08:47 AM
-- Server version: 5.1.49
-- PHP Version: 5.3.3-1ubuntu9.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SS_kolakowski`
--

-- --------------------------------------------------------

--
-- Table structure for table `ArchiveWidget`
--

CREATE TABLE IF NOT EXISTS `ArchiveWidget` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DisplayMode` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ArchiveWidget`
--

INSERT INTO `ArchiveWidget` (`ID`, `DisplayMode`) VALUES
(3, 'month');

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry`
--

CREATE TABLE IF NOT EXISTS `BlogEntry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `Tags` mediumtext CHARACTER SET utf8,
  `PhotoCaption` mediumtext CHARACTER SET utf8,
  `TitleImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `TitleImageID` (`TitleImageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `BlogEntry`
--

INSERT INTO `BlogEntry` (`ID`, `Date`, `Author`, `Tags`, `PhotoCaption`, `TitleImageID`) VALUES
(7, '2011-05-15 12:03:47', 'R.K.', 'silverstripe, blog', NULL, 8),
(8, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_Live`
--

CREATE TABLE IF NOT EXISTS `BlogEntry_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `Tags` mediumtext CHARACTER SET utf8,
  `PhotoCaption` mediumtext CHARACTER SET utf8,
  `TitleImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `TitleImageID` (`TitleImageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `BlogEntry_Live`
--

INSERT INTO `BlogEntry_Live` (`ID`, `Date`, `Author`, `Tags`, `PhotoCaption`, `TitleImageID`) VALUES
(7, '2011-05-15 12:03:47', 'R.K.', 'silverstripe, blog', NULL, 8),
(8, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_versions`
--

CREATE TABLE IF NOT EXISTS `BlogEntry_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext CHARACTER SET utf8,
  `Tags` mediumtext CHARACTER SET utf8,
  `PhotoCaption` mediumtext CHARACTER SET utf8,
  `TitleImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `TitleImageID` (`TitleImageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `BlogEntry_versions`
--

INSERT INTO `BlogEntry_versions` (`ID`, `RecordID`, `Version`, `Date`, `Author`, `Tags`, `PhotoCaption`, `TitleImageID`) VALUES
(1, 7, 1, '2011-05-15 12:03:47', NULL, 'silverstripe, blog', NULL, 0),
(2, 7, 2, '2011-05-15 12:03:47', 'R.K.', 'silverstripe, blog', NULL, 0),
(3, 8, 1, '2011-05-15 13:04:36', NULL, NULL, NULL, 0),
(4, 8, 2, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 0),
(5, 8, 3, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 0),
(6, 8, 4, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 5),
(7, 8, 5, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 6),
(8, 8, 6, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 7),
(9, 8, 7, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 8),
(10, 7, 3, '2011-05-15 12:03:47', 'R.K.', 'silverstripe, blog', NULL, 8),
(11, 8, 8, '2011-05-15 13:04:36', 'R.K.', NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder`
--

CREATE TABLE IF NOT EXISTS `BlogHolder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `BlogHolder`
--

INSERT INTO `BlogHolder` (`ID`, `TrackBacksEnabled`, `AllowCustomAuthors`, `OwnerID`) VALUES
(6, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_Live`
--

CREATE TABLE IF NOT EXISTS `BlogHolder_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `BlogHolder_Live`
--

INSERT INTO `BlogHolder_Live` (`ID`, `TrackBacksEnabled`, `AllowCustomAuthors`, `OwnerID`) VALUES
(6, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_versions`
--

CREATE TABLE IF NOT EXISTS `BlogHolder_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `TrackBacksEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `BlogHolder_versions`
--

INSERT INTO `BlogHolder_versions` (`ID`, `RecordID`, `Version`, `TrackBacksEnabled`, `AllowCustomAuthors`, `OwnerID`) VALUES
(1, 6, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree`
--

CREATE TABLE IF NOT EXISTS `BlogTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `InheritSideBar` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `LandingPageFreshness` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SideBarID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `BlogTree`
--

INSERT INTO `BlogTree` (`ID`, `Name`, `InheritSideBar`, `LandingPageFreshness`, `SideBarID`) VALUES
(6, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_Live`
--

CREATE TABLE IF NOT EXISTS `BlogTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `InheritSideBar` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `LandingPageFreshness` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SideBarID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `BlogTree_Live`
--

INSERT INTO `BlogTree_Live` (`ID`, `Name`, `InheritSideBar`, `LandingPageFreshness`, `SideBarID`) VALUES
(6, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_versions`
--

CREATE TABLE IF NOT EXISTS `BlogTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `InheritSideBar` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `LandingPageFreshness` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SideBarID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `SideBarID` (`SideBarID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `BlogTree_versions`
--

INSERT INTO `BlogTree_versions` (`ID`, `RecordID`, `Version`, `Name`, `InheritSideBar`, `LandingPageFreshness`, `SideBarID`) VALUES
(1, 6, 1, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage`
--

CREATE TABLE IF NOT EXISTS `ContactPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ContactPage`
--

INSERT INTO `ContactPage` (`ID`, `Mailto`, `SubmitText`) VALUES
(3, 'k.olszewski@o2.pl', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage_Live`
--

CREATE TABLE IF NOT EXISTS `ContactPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ContactPage_Live`
--

INSERT INTO `ContactPage_Live` (`ID`, `Mailto`, `SubmitText`) VALUES
(3, 'k.olszewski@o2.pl', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage_versions`
--

CREATE TABLE IF NOT EXISTS `ContactPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ContactPage_versions`
--

INSERT INTO `ContactPage_versions` (`ID`, `RecordID`, `Version`, `Mailto`, `SubmitText`) VALUES
(1, 3, 2, NULL, NULL),
(2, 3, 3, NULL, NULL),
(3, 3, 4, NULL, NULL),
(4, 3, 5, NULL, NULL),
(5, 3, 6, 'k.olszewski@o2.pl', NULL),
(6, 3, 7, 'k.olszewski@o2.pl', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Email_BounceRecord`
--

CREATE TABLE IF NOT EXISTS `Email_BounceRecord` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Email_BounceRecord') CHARACTER SET utf8 DEFAULT 'Email_BounceRecord',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `BounceEmail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `BounceTime` datetime DEFAULT NULL,
  `BounceMessage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Email_BounceRecord`
--


-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE IF NOT EXISTS `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE IF NOT EXISTS `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','FLV','MP3','Image','Folder','ImageGalleryImage','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `Sort`, `ParentID`, `OwnerID`, `SortOrder`) VALUES
(1, 'Folder', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 0, 0, 0, 0),
(2, 'Image', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 0, 1, 0, 0),
(3, 'File', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 0, 0, 0, 0),
(4, 'File', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'error-500.html', 'error-500.html', 'assets/error-500.html', NULL, 0, 0, 0, 0),
(5, 'Image', '2011-05-15 13:08:39', '2011-05-15 13:08:39', 'apache.jpg', 'apache.jpg', 'assets/Uploads/apache.jpg', NULL, 0, 1, 1, 0),
(6, 'Image', '2011-05-15 13:19:33', '2011-05-15 13:19:33', 'apache2.jpg', 'apache2', 'assets/Uploads/apache2.jpg', NULL, 0, 1, 1, 0),
(7, 'Image', '2011-05-15 15:00:23', '2011-05-15 15:00:23', 'pis.jpg', 'pis', 'assets/Uploads/pis.jpg', NULL, 0, 1, 1, 0),
(8, 'Image', '2011-05-15 15:02:49', '2011-05-15 15:02:49', 'pis2.jpg', 'pis2', 'assets/Uploads/pis2.jpg', NULL, 0, 1, 1, 0),
(9, 'Folder', '2011-05-15 15:46:14', '2011-05-15 15:46:14', 'image-gallery', 'Image Gallery', 'assets/image-gallery/', NULL, 0, 0, 0, 2),
(10, 'Folder', '2011-05-15 15:46:14', '2011-05-15 15:46:14', 'NowyImageGalleryPage', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage/', NULL, 0, 9, 0, 3),
(11, 'Folder', '2011-05-15 15:46:14', '2011-05-15 15:46:14', 'Default-Album', 'Default Album', 'assets/image-gallery/NowyImageGalleryPage/Default-Album/', NULL, 0, 10, 0, 4),
(12, 'Folder', '2011-05-15 15:46:32', '2011-05-15 15:54:38', 'NowyImageGalleryPage-2', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-2/', NULL, 0, 9, 0, 5),
(13, 'Folder', '2011-05-15 15:46:38', '2011-05-15 15:46:38', 'NowyImageGalleryPage-4', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-4/', NULL, 0, 9, 0, 6),
(14, 'Folder', '2011-05-15 15:46:46', '2011-05-15 15:46:46', 'NowyImageGalleryPage-5', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-5/', NULL, 0, 9, 0, 7),
(15, 'Folder', '2011-05-15 15:46:57', '2011-05-15 15:46:57', 'NowyImageGalleryPage-6', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-6/', NULL, 0, 9, 0, 8),
(16, 'Folder', '2011-05-15 15:47:10', '2011-05-15 15:47:10', 'NowyImageGalleryPage-7', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-7/', NULL, 0, 9, 0, 9),
(17, 'Folder', '2011-05-15 15:57:07', '2011-05-15 16:04:52', 'NowyImageGalleryPage-8', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-8/', NULL, 0, 9, 0, 10),
(18, 'Folder', '2011-05-15 15:59:29', '2011-05-15 15:59:29', 'dzien-zolnierzy', 'dzien-zolnierzy', 'assets/image-gallery/NowyImageGalleryPage-3/dzien-zolnierzy/', NULL, 0, 17, 0, 11),
(19, 'ImageGalleryImage', '2011-05-15 16:00:23', '2011-05-15 16:00:23', 'pis.jpg', NULL, 'assets/image-gallery/NowyImageGalleryPage-3/dzien-zolnierzy/pis.jpg', NULL, 0, 18, 0, 0),
(20, 'Folder', '2011-05-15 16:08:05', '2011-05-15 16:08:05', 'NowyImageGalleryPage-9', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-9/', NULL, 0, 9, 0, 12),
(21, 'Folder', '2011-05-15 16:09:23', '2011-05-15 16:09:23', 'dzien-zolnierzy', 'dzien-zolnierzy', 'assets/image-gallery/NowyImageGalleryPage-9/dzien-zolnierzy/', NULL, 0, 20, 0, 13),
(22, 'ImageGalleryImage', '2011-05-15 16:09:55', '2011-05-15 16:09:55', 'pis2.jpg', NULL, 'assets/image-gallery/NowyImageGalleryPage-9/dzien-zolnierzy/pis2.jpg', NULL, 0, 21, 0, 2),
(23, 'Folder', '2011-05-15 16:15:28', '2011-05-15 16:16:12', 'NowyImageGalleryPage-3', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-3/', NULL, 0, 9, 0, 14),
(24, 'Folder', '2011-05-15 16:17:39', '2011-05-15 16:17:48', 'NowyImageGalleryPage-10', 'NowyImageGalleryPage', 'assets/image-gallery/NowyImageGalleryPage-10/', NULL, 0, 9, 0, 15),
(25, 'Folder', '2011-05-15 16:19:54', '2011-05-15 17:01:25', 'Galeria', 'Galeria', 'assets/image-gallery/Galeria/', NULL, 0, 9, 0, 16),
(26, 'Folder', '2011-05-15 17:06:21', '2011-05-15 17:06:21', 'dzien-zolnierzy', 'dzien-zolnierzy', 'assets/image-gallery/Galeria/dzien-zolnierzy/', NULL, 0, 25, 0, 17),
(27, 'ImageGalleryImage', '2011-05-15 17:06:52', '2011-05-15 17:06:52', 'pis.jpg', NULL, 'assets/image-gallery/Galeria/dzien-zolnierzy/pis.jpg', NULL, 0, 26, 0, 3),
(28, 'Folder', '2011-05-15 17:34:53', '2011-05-15 17:34:53', 'archiwum', 'archiwum', 'assets/image-gallery/Galeria/archiwum/', NULL, 0, 25, 0, 18),
(29, 'ImageGalleryImage', '2011-05-15 17:35:33', '2011-05-15 17:35:33', 'apache.jpg', NULL, 'assets/image-gallery/Galeria/archiwum/apache.jpg', NULL, 0, 28, 0, 4),
(30, 'ImageGalleryImage', '2011-05-15 17:55:42', '2011-05-15 17:55:42', 'SilverStripeLogo.png', NULL, 'assets/image-gallery/Galeria/dzien-zolnierzy/SilverStripeLogo.png', NULL, 0, 26, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE IF NOT EXISTS `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `IPRestrictions` mediumtext CHARACTER SET utf8,
  `HtmlEditorConfig` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `IPRestrictions`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2011-05-14 08:50:55', '2011-05-14 08:50:55', 'Autor treści', NULL, 'content-authors', 0, 1, NULL, NULL, 0),
(2, 'Group', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'Administratorzy', NULL, 'administrators', 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE IF NOT EXISTS `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE IF NOT EXISTS `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Group_Roles`
--


-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryAlbum`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryAlbum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ImageGalleryAlbum') CHARACTER SET utf8 DEFAULT 'ImageGalleryAlbum',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `AlbumName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `CoverImageID` int(11) NOT NULL DEFAULT '0',
  `ImageGalleryPageID` int(11) NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CoverImageID` (`CoverImageID`),
  KEY `ImageGalleryPageID` (`ImageGalleryPageID`),
  KEY `FolderID` (`FolderID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ImageGalleryAlbum`
--

INSERT INTO `ImageGalleryAlbum` (`ID`, `ClassName`, `Created`, `LastEdited`, `AlbumName`, `Description`, `SortOrder`, `CoverImageID`, `ImageGalleryPageID`, `FolderID`) VALUES
(1, 'ImageGalleryAlbum', '2011-05-15 17:06:21', '2011-05-15 17:38:25', 'Dzien Zolnierzy', NULL, 0, 8, 20, 26),
(2, 'ImageGalleryAlbum', '2011-05-15 17:34:53', '2011-05-15 17:34:53', 'Archiwum', NULL, 2, 0, 20, 28);

-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryItem`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryItem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ImageGalleryItem') CHARACTER SET utf8 DEFAULT 'ImageGalleryItem',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Caption` mediumtext CHARACTER SET utf8,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ImageGalleryPageID` int(11) NOT NULL DEFAULT '0',
  `AlbumID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageGalleryPageID` (`ImageGalleryPageID`),
  KEY `AlbumID` (`AlbumID`),
  KEY `ImageID` (`ImageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ImageGalleryItem`
--

INSERT INTO `ImageGalleryItem` (`ID`, `ClassName`, `Created`, `LastEdited`, `Caption`, `SortOrder`, `ImageGalleryPageID`, `AlbumID`, `ImageID`) VALUES
(1, 'ImageGalleryItem', '2011-05-15 17:06:52', '2011-05-15 17:06:52', NULL, 0, 20, 1, 27),
(2, 'ImageGalleryItem', '2011-05-15 17:35:33', '2011-05-15 17:35:33', NULL, 2, 20, 2, 29),
(3, 'ImageGalleryItem', '2011-05-15 17:55:42', '2011-05-15 17:55:42', NULL, 3, 20, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryPage`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SortBy` enum('Title','UploadDateASC','UploadDateDESC','SortASC') CHARACTER SET utf8 DEFAULT 'SortASC',
  `GalleryUI` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CoverImageWidth` int(11) NOT NULL DEFAULT '0',
  `CoverImageHeight` int(11) NOT NULL DEFAULT '0',
  `ThumbnailSize` int(11) NOT NULL DEFAULT '0',
  `MediumSize` int(11) NOT NULL DEFAULT '0',
  `Square` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NormalSize` int(11) NOT NULL DEFAULT '0',
  `NormalHeight` int(11) NOT NULL DEFAULT '0',
  `MediaPerPage` int(11) NOT NULL DEFAULT '0',
  `UploadLimit` int(11) NOT NULL DEFAULT '0',
  `RootFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RootFolderID` (`RootFolderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `ImageGalleryPage`
--

INSERT INTO `ImageGalleryPage` (`ID`, `SortBy`, `GalleryUI`, `CoverImageWidth`, `CoverImageHeight`, `ThumbnailSize`, `MediumSize`, `Square`, `NormalSize`, `NormalHeight`, `MediaPerPage`, `UploadLimit`, `RootFolderID`) VALUES
(20, 'SortASC', 'NyroModal', 128, 128, 128, 400, 1, 600, 0, 30, 20, 25);

-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryPage_Live`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SortBy` enum('Title','UploadDateASC','UploadDateDESC','SortASC') CHARACTER SET utf8 DEFAULT 'SortASC',
  `GalleryUI` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CoverImageWidth` int(11) NOT NULL DEFAULT '0',
  `CoverImageHeight` int(11) NOT NULL DEFAULT '0',
  `ThumbnailSize` int(11) NOT NULL DEFAULT '0',
  `MediumSize` int(11) NOT NULL DEFAULT '0',
  `Square` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NormalSize` int(11) NOT NULL DEFAULT '0',
  `NormalHeight` int(11) NOT NULL DEFAULT '0',
  `MediaPerPage` int(11) NOT NULL DEFAULT '0',
  `UploadLimit` int(11) NOT NULL DEFAULT '0',
  `RootFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RootFolderID` (`RootFolderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `ImageGalleryPage_Live`
--

INSERT INTO `ImageGalleryPage_Live` (`ID`, `SortBy`, `GalleryUI`, `CoverImageWidth`, `CoverImageHeight`, `ThumbnailSize`, `MediumSize`, `Square`, `NormalSize`, `NormalHeight`, `MediaPerPage`, `UploadLimit`, `RootFolderID`) VALUES
(20, 'SortASC', 'NyroModal', 128, 128, 128, 400, 1, 600, 0, 30, 20, 25);

-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryPage_versions`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SortBy` enum('Title','UploadDateASC','UploadDateDESC','SortASC') CHARACTER SET utf8 DEFAULT 'SortASC',
  `GalleryUI` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CoverImageWidth` int(11) NOT NULL DEFAULT '0',
  `CoverImageHeight` int(11) NOT NULL DEFAULT '0',
  `ThumbnailSize` int(11) NOT NULL DEFAULT '0',
  `MediumSize` int(11) NOT NULL DEFAULT '0',
  `Square` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NormalSize` int(11) NOT NULL DEFAULT '0',
  `NormalHeight` int(11) NOT NULL DEFAULT '0',
  `MediaPerPage` int(11) NOT NULL DEFAULT '0',
  `UploadLimit` int(11) NOT NULL DEFAULT '0',
  `RootFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `RootFolderID` (`RootFolderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ImageGalleryPage_versions`
--

INSERT INTO `ImageGalleryPage_versions` (`ID`, `RecordID`, `Version`, `SortBy`, `GalleryUI`, `CoverImageWidth`, `CoverImageHeight`, `ThumbnailSize`, `MediumSize`, `Square`, `NormalSize`, `NormalHeight`, `MediaPerPage`, `UploadLimit`, `RootFolderID`) VALUES
(1, 18, 1, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 0),
(2, 19, 1, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 0),
(3, 20, 1, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 0),
(4, 20, 2, 'SortASC', 'NyroModal', 128, 128, 128, 400, 1, 600, 0, 30, 20, 25),
(5, 20, 3, 'SortASC', 'NyroModal', 128, 128, 128, 400, 1, 600, 0, 30, 20, 25),
(6, 20, 4, 'SortASC', 'NyroModal', 128, 128, 128, 400, 1, 600, 0, 30, 20, 25);

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE IF NOT EXISTS `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `LoginAttempt`
--


-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `Bounced` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AutoLoginHash` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `Bounced`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2011-05-14 08:50:56', '2011-05-16 11:09:17', 'Domyślny administrator', NULL, 'admin', '9b9b6c6cd30bdc7ebba75c33f35542d7479dbdce', NULL, 4, '2011-05-16 14:06:21', 0, NULL, NULL, 'sha1_v2.4', '9a36848b57432840a9e70275e0be7df5eacc3656', NULL, NULL, 'pl_PL', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE IF NOT EXISTS `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2011-05-14 08:50:56', '2011-05-14 08:50:56', '9b9b6c6cd30bdc7ebba75c33f35542d7479dbdce', '9a36848b57432840a9e70275e0be7df5eacc3656', 'sha1_v2.4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageComment`
--

CREATE TABLE IF NOT EXISTS `PageComment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PageComment') CHARACTER SET utf8 DEFAULT 'PageComment',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8,
  `IsSpam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NeedsModeration` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CommenterURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SessionID` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PageComment`
--


-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2011-05-14 08:50:55', '2011-05-14 08:50:55', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2011-05-14 08:50:55', '2011-05-14 08:50:55', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2011-05-14 08:50:55', '2011-05-14 08:50:55', 'CMS_ACCESS_CommentAdmin', 0, 1, 1),
(4, 'Permission', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(5, 'Permission', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'SITETREE_REORGANISE', 0, 1, 1),
(6, 'Permission', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE IF NOT EXISTS `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PermissionRole`
--


-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PermissionRoleCode`
--


-- --------------------------------------------------------

--
-- Table structure for table `QueuedEmail`
--

CREATE TABLE IF NOT EXISTS `QueuedEmail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('QueuedEmail') CHARACTER SET utf8 DEFAULT 'QueuedEmail',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Send` datetime DEFAULT NULL,
  `Subject` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `From` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `ToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ToID` (`ToID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `QueuedEmail`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `RSSWidget`
--

CREATE TABLE IF NOT EXISTS `RSSWidget` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RSSTitle` mediumtext CHARACTER SET utf8,
  `RssUrl` mediumtext CHARACTER SET utf8,
  `NumberToShow` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RSSWidget`
--


-- --------------------------------------------------------

--
-- Table structure for table `S3File`
--

CREATE TABLE IF NOT EXISTS `S3File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('S3File') CHARACTER SET utf8 DEFAULT 'S3File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Bucket` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `URL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `S3File`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE IF NOT EXISTS `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`) VALUES
(1, 'SiteConfig', '2011-05-14 08:50:55', '2011-05-15 12:25:55', 'Witryna Posła na Sejm RP  Roberta Kołakowskiego', 'Szanowni Państwo ... ....', 'apsilesia', 'Anyone', 'LoggedInUsers', 'LoggedInUsers');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteConfig_CreateTopLevelGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteConfig_EditorGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteConfig_ViewerGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE IF NOT EXISTS `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','ImageGalleryPage','ContactPage','HomePage','ErrorPage','RedirectorPage','VirtualPage','BlogEntry','BlogTree','BlogHolder') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Version`, `Priority`, `ParentID`) VALUES
(1, 'HomePage', '2011-05-14 08:50:55', '2011-05-15 11:01:40', 'home', 'Strona Domowa', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, '1.0', 0),
(2, 'Page', '2011-05-14 08:50:55', '2011-05-15 15:37:12', 'biografia', 'Biografia', NULL, '<p style="text-align: justify;"><strong>Robert Kołakowski,</strong> historyk, Poseł na Sejm RP V i VI kadencji, członek Komisji Kultury i Środków Przekazu, współorganizator polsko-szwajcarskiej grupy parlamentarnej i obecnie jej przewodniczący.</p>\n<p style="text-align: justify;">W latach 1985—1989 przewodnik w Muzeum Romantyzmu w Opinogórze, później redaktor graficzny kilku czasopism i współwłaściciel agencji reklamowo-wydawniczej. Od roku 2003 z-ca dyrektora Departamentu Organizacji i Nadzoru Urzędu Marszałkowskiego Województwa Mazowieckiego, dyrektor Delegatury UMWM w Ciechanowie.</p>\n<p style="text-align: justify;">Od 2005 r. poseł na Sejm RP. Wydawca wielu książek o tematyce regionalnej i autor artykułów historycznych opublikowanych w lokalnej prasie. Od 2001r. członek Prawa i Sprawiedliwości , członek Rady Politycznej PiS, Zarządu Okręgowego PiS oraz pełnomocnik Komitetu Powiatowego PiS w Ciechanowie.</p>\n<p style="text-align: justify;">Zaangażowany w działalność społeczną: członek Rady Społecznej Specjalistycznego Szpitala Wojewódzkiego w Ciechanowie, sekretarz Zarządu Ciechanowskiego Oddziału Polskiego Towarzystwa Ludoznawczego, członek Towarzystwa Miłośników Opinogóry, w 2005 r. Przewodniczący Społecznego Komitetu Budowy Krzyża Katyńskiego w Ciechanowie, a od 2009 Przewodniczący Ciechanowskiego Stowarzyszenia Pamięci Zbrodni Katyńskiej.</p>\n<p style="text-align: justify;">W chwilach wolnych interesuje się historią średniowiecznego Mazowsza, sztukami plastycznymi, polityką, etnologią i motoryzacją.</p>', 'Biografia', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, '1.0', 0),
(3, 'ContactPage', '2011-05-14 08:50:55', '2011-05-15 17:44:13', 'kontakt', 'Kontakt', NULL, '<p>Komitet Prawo i Sprawiedliwość<br/> ul. Pułtuska 9<br/> 06-400 Ciechanów<br/> tel.:23 673 51 57</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 7, '1.0', 0),
(4, 'ErrorPage', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'nie-znaleziono-strony', 'Nie znaleziono strony', NULL, '<p>Niestety, próbujesz wejść na stronę, która nie istnieje.</p><p>Sprawdź pisownię adresu URL i spróbuj ponownie.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0),
(5, 'ErrorPage', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0),
(6, 'BlogHolder', '2011-05-15 12:03:47', '2011-05-15 12:03:47', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0),
(7, 'BlogEntry', '2011-05-15 12:03:47', '2011-05-15 15:07:09', 'sample-blog-entry', 'Blog SilverStripe został poprawnie zainstalowany.', NULL, '<p>Gratulacje, moduł bloga SilverStripe został poprawnie zainstalowany. Możesz spokojnie usunąć ten wpis. Możesz skonfigurować różne części swojego bloga (takie jak widgety, wyświetlane z boku) w [url=admin]CMSie[/url].</p>', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '0.9', 6),
(8, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-16 10:50:33', 'wpis', 'Wpis', NULL, '<p><strong><img class="left" src="assets/Uploads/apache.jpg" width="150" height="183" alt="" title=""/>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 8, '0.9', 6),
(20, 'ImageGalleryPage', '2011-05-15 16:19:54', '2011-05-15 18:00:33', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Anyone', 'OnlyTheseUsers', NULL, 4, '1.0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_EditorGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

INSERT INTO `SiteTree_ImageTracking` (`ID`, `SiteTreeID`, `FileID`, `FieldName`) VALUES
(33, 8, 5, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_LinkTracking`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','ImageGalleryPage','ContactPage','HomePage','ErrorPage','RedirectorPage','VirtualPage','BlogEntry','BlogTree','BlogHolder') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Version`, `Priority`, `ParentID`) VALUES
(1, 'HomePage', '2011-05-14 08:50:55', '2011-05-15 11:01:40', 'home', 'Strona Domowa', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, '1.0', 0),
(2, 'Page', '2011-05-14 08:50:55', '2011-05-15 15:37:12', 'biografia', 'Biografia', NULL, '<p style="text-align: justify;"><strong>Robert Kołakowski,</strong> historyk, Poseł na Sejm RP V i VI kadencji, członek Komisji Kultury i Środków Przekazu, współorganizator polsko-szwajcarskiej grupy parlamentarnej i obecnie jej przewodniczący.</p>\n<p style="text-align: justify;">W latach 1985—1989 przewodnik w Muzeum Romantyzmu w Opinogórze, później redaktor graficzny kilku czasopism i współwłaściciel agencji reklamowo-wydawniczej. Od roku 2003 z-ca dyrektora Departamentu Organizacji i Nadzoru Urzędu Marszałkowskiego Województwa Mazowieckiego, dyrektor Delegatury UMWM w Ciechanowie.</p>\n<p style="text-align: justify;">Od 2005 r. poseł na Sejm RP. Wydawca wielu książek o tematyce regionalnej i autor artykułów historycznych opublikowanych w lokalnej prasie. Od 2001r. członek Prawa i Sprawiedliwości , członek Rady Politycznej PiS, Zarządu Okręgowego PiS oraz pełnomocnik Komitetu Powiatowego PiS w Ciechanowie.</p>\n<p style="text-align: justify;">Zaangażowany w działalność społeczną: członek Rady Społecznej Specjalistycznego Szpitala Wojewódzkiego w Ciechanowie, sekretarz Zarządu Ciechanowskiego Oddziału Polskiego Towarzystwa Ludoznawczego, członek Towarzystwa Miłośników Opinogóry, w 2005 r. Przewodniczący Społecznego Komitetu Budowy Krzyża Katyńskiego w Ciechanowie, a od 2009 Przewodniczący Ciechanowskiego Stowarzyszenia Pamięci Zbrodni Katyńskiej.</p>\n<p style="text-align: justify;">W chwilach wolnych interesuje się historią średniowiecznego Mazowsza, sztukami plastycznymi, polityką, etnologią i motoryzacją.</p>', 'Biografia', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, '1.0', 0),
(3, 'ContactPage', '2011-05-14 08:50:55', '2011-05-15 17:44:13', 'kontakt', 'Kontakt', NULL, '<p>Komitet Prawo i Sprawiedliwość<br/> ul. Pułtuska 9<br/> 06-400 Ciechanów<br/> tel.:23 673 51 57</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 7, '1.0', 0),
(4, 'ErrorPage', '2011-05-14 08:50:56', '2011-05-14 08:50:59', 'nie-znaleziono-strony', 'Nie znaleziono strony', NULL, '<p>Niestety, próbujesz wejść na stronę, która nie istnieje.</p><p>Sprawdź pisownię adresu URL i spróbuj ponownie.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0),
(5, 'ErrorPage', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0),
(6, 'BlogHolder', '2011-05-15 12:03:47', '2011-05-15 12:03:47', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0),
(7, 'BlogEntry', '2011-05-15 12:03:47', '2011-05-15 15:07:09', 'sample-blog-entry', 'Blog SilverStripe został poprawnie zainstalowany.', NULL, '<p>Gratulacje, moduł bloga SilverStripe został poprawnie zainstalowany. Możesz spokojnie usunąć ten wpis. Możesz skonfigurować różne części swojego bloga (takie jak widgety, wyświetlane z boku) w [url=admin]CMSie[/url].</p>', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '0.9', 6),
(8, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-16 10:50:33', 'wpis', 'Wpis', NULL, '<p><strong><img class="left" src="assets/Uploads/apache.jpg" width="150" height="183" alt="" title=""/>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 8, '0.9', 6),
(20, 'ImageGalleryPage', '2011-05-15 16:19:54', '2011-05-15 18:00:33', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Anyone', 'OnlyTheseUsers', NULL, 4, '1.0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','ImageGalleryPage','ContactPage','HomePage','ErrorPage','RedirectorPage','VirtualPage','BlogEntry','BlogTree','BlogHolder') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Priority`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2011-05-14 08:50:55', '2011-05-14 08:50:55', 'home', 'Strona Domowa', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(2, 2, 1, 1, 0, 0, 'Page', '2011-05-14 08:50:55', '2011-05-14 08:50:55', 'o-nas', 'O nas', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.<br/></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(3, 3, 1, 1, 0, 0, 'Page', '2011-05-14 08:50:55', '2011-05-14 08:50:55', 'kontakt', 'Kontakt', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.<br/></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'nie-znaleziono-strony', 'Nie znaleziono strony', NULL, '<p>Niestety, próbujesz wejść na stronę, która nie istnieje.</p><p>Sprawdź pisownię adresu URL i spróbuj ponownie.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2011-05-14 08:50:56', '2011-05-14 08:50:56', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 5, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(6, 1, 2, 1, 1, 1, 'HomePage', '2011-05-14 08:50:55', '2011-05-15 11:01:40', 'home', 'Strona Domowa', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(7, 6, 1, 1, 1, 1, 'BlogHolder', '2011-05-15 12:03:47', '2011-05-15 12:03:47', 'blog', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(8, 7, 1, 1, 1, 1, 'BlogEntry', '2011-05-15 12:03:47', '2011-05-15 12:03:47', 'sample-blog-entry', 'Blog SilverStripe został poprawnie zainstalowany.', NULL, 'Gratulacje, moduł bloga SilverStripe został poprawnie zainstalowany. Możesz spokojnie usunąć ten wpis. Możesz skonfigurować różne części swojego bloga (takie jak widgety, wyświetlane z boku) w [url=admin]CMSie[/url].', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 0, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, NULL, 6),
(9, 7, 2, 1, 1, 1, 'BlogEntry', '2011-05-15 12:03:47', '2011-05-15 12:27:09', 'sample-blog-entry', 'Blog SilverStripe został poprawnie zainstalowany.', NULL, '<p>Gratulacje, moduł bloga SilverStripe został poprawnie zainstalowany. Możesz spokojnie usunąć ten wpis. Możesz skonfigurować różne części swojego bloga (takie jak widgety, wyświetlane z boku) w [url=admin]CMSie[/url].</p>', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6),
(10, 8, 1, 0, 1, 0, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-15 13:04:36', 'new-blogentry', 'NowyBlogEntry', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 6),
(11, 8, 2, 1, 1, 1, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-15 13:05:53', 'wpis', 'Wpis', NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 1, 3, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6),
(12, 8, 3, 1, 1, 1, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-15 13:08:47', 'wpis', 'Wpis', NULL, '<p><strong><img class="left" src="assets/Uploads/apache.jpg" width="150" height="183" alt="" title=""/>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 1, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6),
(13, 8, 4, 1, 1, 1, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-15 13:17:06', 'wpis', 'Wpis', NULL, '<p><strong><img class="left" src="assets/Uploads/apache.jpg" width="150" height="183" alt="" title=""/>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 1, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6),
(14, 8, 5, 1, 1, 1, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-15 13:19:33', 'wpis', 'Wpis', NULL, '<p><strong><img class="left" src="assets/Uploads/apache.jpg" width="150" height="183" alt="" title=""/>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 1, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6),
(15, 8, 6, 1, 1, 1, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-15 15:00:23', 'wpis', 'Wpis', NULL, '<p><strong><img class="left" src="assets/Uploads/apache.jpg" width="150" height="183" alt="" title=""/>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 1, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6),
(16, 8, 7, 1, 1, 1, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-15 15:02:49', 'wpis', 'Wpis', NULL, '<p><strong><img class="left" src="assets/Uploads/apache.jpg" width="150" height="183" alt="" title=""/>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 1, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6),
(17, 7, 3, 1, 1, 1, 'BlogEntry', '2011-05-15 12:03:47', '2011-05-15 15:07:06', 'sample-blog-entry', 'Blog SilverStripe został poprawnie zainstalowany.', NULL, '<p>Gratulacje, moduł bloga SilverStripe został poprawnie zainstalowany. Możesz spokojnie usunąć ten wpis. Możesz skonfigurować różne części swojego bloga (takie jak widgety, wyświetlane z boku) w [url=admin]CMSie[/url].</p>', NULL, NULL, NULL, NULL, 0, 1, NULL, 1, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6),
(18, 3, 2, 1, 1, 1, 'ContactPage', '2011-05-14 08:50:55', '2011-05-15 15:29:54', 'kontakt', 'Kontakt', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(19, 3, 3, 0, 1, 0, 'ContactPage', '2011-05-14 08:50:55', '2011-05-15 15:30:13', 'kontakt', 'Kontakt', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(20, 3, 4, 1, 1, 1, 'ContactPage', '2011-05-14 08:50:55', '2011-05-15 15:30:25', 'kontakt', 'Kontakt', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(21, 2, 2, 1, 1, 1, 'Page', '2011-05-14 08:50:55', '2011-05-15 15:31:14', 'biografia', 'Biografia', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.</p>', 'Biografia', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(22, 2, 3, 1, 1, 1, 'Page', '2011-05-14 08:50:55', '2011-05-15 15:32:42', 'biografia', 'Biografia', NULL, '<p>Robert Kołakowski, historyk, Poseł na Sejm RP V i VI kadencji, członek Komisji Kultury i Środków Przekazu, współorganizator polsko-szwajcarskiej grupy parlamentarnej i obecnie jej przewodniczący. <br/>W latach 1985—1989 przewodnik w Muzeum Romantyzmu w Opinogórze, później redaktor graficzny kilku czasopism i współwłaściciel agencji reklamowo-wydawniczej. Od roku 2003 z-ca dyrektora Departamentu Organizacji i Nadzoru Urzędu Marszałkowskiego Województwa Mazowieckiego, dyrektor Delegatury UMWM w Ciechanowie. Od 2005 r. poseł na Sejm RP. Wydawca wielu książek o tematyce regionalnej i autor artykułów historycznych opublikowanych w lokalnej prasie. Od 2001r. członek Prawa i Sprawiedliwości , członek Rady Politycznej PiS, Zarządu Okręgowego PiS oraz pełnomocnik Komitetu Powiatowego PiS w Ciechanowie. Zaangażowany w działalność społeczną: członek Rady Społecznej Specjalistycznego Szpitala Wojewódzkiego w Ciechanowie, sekretarz Zarządu Ciechanowskiego Oddziału Polskiego Towarzystwa Ludoznawczego, członek Towarzystwa Miłośników Opinogóry, w 2005 r. Przewodniczący Społecznego Komitetu Budowy Krzyża Katyńskiego w Ciechanowie, a od 2009 Przewodniczący Ciechanowskiego Stowarzyszenia Pamięci Zbrodni Katyńskiej. W chwilach wolnych interesuje się historią średniowiecznego Mazowsza, sztukami plastycznymi, polityką, etnologią i motoryzacją.</p>', 'Biografia', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(23, 2, 4, 1, 1, 1, 'Page', '2011-05-14 08:50:55', '2011-05-15 15:36:00', 'biografia', 'Biografia', NULL, '<p style="text-align: justify;"><strong>Robert Kołakowski,</strong> historyk, Poseł na Sejm RP V i VI kadencji, członek Komisji Kultury i Środków Przekazu, współorganizator polsko-szwajcarskiej grupy parlamentarnej i obecnie jej przewodniczący.</p>\n<p style="text-align: justify;">W latach 1985—1989 przewodnik w Muzeum Romantyzmu w Opinogórze, później redaktor graficzny kilku czasopism i współwłaściciel agencji reklamowo-wydawniczej. Od roku 2003 z-ca dyrektora Departamentu Organizacji i Nadzoru Urzędu Marszałkowskiego Województwa Mazowieckiego, dyrektor Delegatury UMWM w Ciechanowie. Od 2005 r. poseł na Sejm RP. Wydawca wielu książek o tematyce regionalnej i autor artykułów historycznych opublikowanych w lokalnej prasie. Od 2001r. członek Prawa i Sprawiedliwości , członek Rady Politycznej PiS, Zarządu Okręgowego PiS oraz pełnomocnik Komitetu Powiatowego PiS w Ciechanowie. Zaangażowany w działalność społeczną: członek Rady Społecznej Specjalistycznego Szpitala Wojewódzkiego w Ciechanowie, sekretarz Zarządu Ciechanowskiego Oddziału Polskiego Towarzystwa Ludoznawczego, członek Towarzystwa Miłośników Opinogóry, w 2005 r. Przewodniczący Społecznego Komitetu Budowy Krzyża Katyńskiego w Ciechanowie, a od 2009 Przewodniczący Ciechanowskiego Stowarzyszenia Pamięci Zbrodni Katyńskiej. W chwilach wolnych interesuje się historią średniowiecznego Mazowsza, sztukami plastycznymi, polityką, etnologią i motoryzacją.</p>', 'Biografia', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(24, 2, 5, 1, 1, 1, 'Page', '2011-05-14 08:50:55', '2011-05-15 15:37:12', 'biografia', 'Biografia', NULL, '<p style="text-align: justify;"><strong>Robert Kołakowski,</strong> historyk, Poseł na Sejm RP V i VI kadencji, członek Komisji Kultury i Środków Przekazu, współorganizator polsko-szwajcarskiej grupy parlamentarnej i obecnie jej przewodniczący.</p>\n<p style="text-align: justify;">W latach 1985—1989 przewodnik w Muzeum Romantyzmu w Opinogórze, później redaktor graficzny kilku czasopism i współwłaściciel agencji reklamowo-wydawniczej. Od roku 2003 z-ca dyrektora Departamentu Organizacji i Nadzoru Urzędu Marszałkowskiego Województwa Mazowieckiego, dyrektor Delegatury UMWM w Ciechanowie.</p>\n<p style="text-align: justify;">Od 2005 r. poseł na Sejm RP. Wydawca wielu książek o tematyce regionalnej i autor artykułów historycznych opublikowanych w lokalnej prasie. Od 2001r. członek Prawa i Sprawiedliwości , członek Rady Politycznej PiS, Zarządu Okręgowego PiS oraz pełnomocnik Komitetu Powiatowego PiS w Ciechanowie.</p>\n<p style="text-align: justify;">Zaangażowany w działalność społeczną: członek Rady Społecznej Specjalistycznego Szpitala Wojewódzkiego w Ciechanowie, sekretarz Zarządu Ciechanowskiego Oddziału Polskiego Towarzystwa Ludoznawczego, członek Towarzystwa Miłośników Opinogóry, w 2005 r. Przewodniczący Społecznego Komitetu Budowy Krzyża Katyńskiego w Ciechanowie, a od 2009 Przewodniczący Ciechanowskiego Stowarzyszenia Pamięci Zbrodni Katyńskiej.</p>\n<p style="text-align: justify;">W chwilach wolnych interesuje się historią średniowiecznego Mazowsza, sztukami plastycznymi, polityką, etnologią i motoryzacją.</p>', 'Biografia', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(25, 9, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 15:46:14', '2011-05-15 15:46:14', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 2),
(26, 10, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 15:46:32', '2011-05-15 15:46:32', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(27, 11, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 15:46:38', '2011-05-15 15:46:38', 'new-imagegallerypage-2', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(28, 12, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 15:46:46', '2011-05-15 15:46:46', 'new-imagegallerypage-3', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(29, 13, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 15:46:57', '2011-05-15 15:46:57', 'new-imagegallerypage-4', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(30, 14, 1, 0, 1, 0, 'Page', '2011-05-15 15:47:01', '2011-05-15 15:47:01', 'nowypage', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 11, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(31, 15, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 15:47:10', '2011-05-15 15:47:10', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 14),
(32, 16, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 15:57:07', '2011-05-15 15:57:07', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(33, 16, 2, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 15:57:07', '2011-05-15 16:04:52', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(34, 17, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 16:08:05', '2011-05-15 16:08:05', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(35, 18, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 16:15:28', '2011-05-15 16:15:28', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(36, 19, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 16:17:39', '2011-05-15 16:17:39', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(37, 20, 1, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 16:19:54', '2011-05-15 16:19:54', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0),
(38, 20, 2, 0, 1, 0, 'ImageGalleryPage', '2011-05-15 16:19:54', '2011-05-15 17:00:27', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (new)', NULL, 'LoggedInUsers', 'OnlyTheseUsers', NULL, '1.0', 0),
(39, 20, 3, 1, 1, 1, 'ImageGalleryPage', '2011-05-15 16:19:54', '2011-05-15 17:01:25', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (new)', NULL, 'LoggedInUsers', 'OnlyTheseUsers', NULL, '1.0', 0),
(40, 20, 4, 1, 1, 1, 'ImageGalleryPage', '2011-05-15 16:19:54', '2011-05-15 17:16:05', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Anyone', 'OnlyTheseUsers', NULL, '1.0', 0),
(41, 3, 5, 1, 1, 1, 'ContactPage', '2011-05-14 08:50:55', '2011-05-15 17:43:15', 'kontakt', 'Kontakt', NULL, '<p>Komitet Prawo i Sprawiedliwość<br/> ul. Pułtuska 9<br/> 06-400 Ciechanów<br/> tel.:23 673 51 57</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(42, 3, 6, 1, 1, 1, 'ContactPage', '2011-05-14 08:50:55', '2011-05-15 17:43:42', 'kontakt', 'Kontakt', NULL, '<p>Komitet Prawo i Sprawiedliwość<br/> ul. Pułtuska 9<br/> 06-400 Ciechanów<br/> tel.:23 673 51 57</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(43, 3, 7, 1, 1, 1, 'ContactPage', '2011-05-14 08:50:55', '2011-05-15 17:43:53', 'kontakt', 'Kontakt', NULL, '<p>Komitet Prawo i Sprawiedliwość<br/> ul. Pułtuska 9<br/> 06-400 Ciechanów<br/> tel.:23 673 51 57</p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0),
(44, 8, 8, 1, 1, 1, 'BlogEntry', '2011-05-15 13:04:36', '2011-05-16 10:50:33', 'wpis', 'Wpis', NULL, '<p><strong><img class="left" src="assets/Uploads/apache.jpg" width="150" height="183" alt="" title=""/>Lorem Ipsum</strong> is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry''s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book. It has survived not  only five centuries, but also the leap into electronic typesetting,  remaining essentially unchanged. It was popularised in the 1960s with  the release of Letraset sheets containing Lorem Ipsum passages, and more  recently with desktop publishing software like Aldus PageMaker  including versions of Lorem Ipsum.</p>', 'Wpis', NULL, NULL, NULL, 0, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 6);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `TagCloudWidget`
--

CREATE TABLE IF NOT EXISTS `TagCloudWidget` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Limit` int(11) NOT NULL DEFAULT '0',
  `Sortby` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `TagCloudWidget`
--

INSERT INTO `TagCloudWidget` (`ID`, `Title`, `Limit`, `Sortby`) VALUES
(2, 'Chmura tagów', 0, 'alphabet');

-- --------------------------------------------------------

--
-- Table structure for table `TrackBackPing`
--

CREATE TABLE IF NOT EXISTS `TrackBackPing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('TrackBackPing') CHARACTER SET utf8 DEFAULT 'TrackBackPing',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Excerpt` mediumtext CHARACTER SET utf8,
  `Url` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `BlogName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PageID` (`PageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `TrackBackPing`
--


-- --------------------------------------------------------

--
-- Table structure for table `TrackBackURL`
--

CREATE TABLE IF NOT EXISTS `TrackBackURL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('TrackBackURL') CHARACTER SET utf8 DEFAULT 'TrackBackURL',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URL` varchar(2048) CHARACTER SET utf8 DEFAULT NULL,
  `Pung` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `BlogEntryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogEntryID` (`BlogEntryID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `TrackBackURL`
--


-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE IF NOT EXISTS `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `Widget`
--

CREATE TABLE IF NOT EXISTS `Widget` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Widget','ArchiveWidget','BlogManagementWidget','RSSWidget','SubscribeRSSWidget','TagCloudWidget') CHARACTER SET utf8 DEFAULT 'Widget',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Widget`
--

INSERT INTO `Widget` (`ID`, `ClassName`, `Created`, `LastEdited`, `Sort`, `Enabled`, `ParentID`) VALUES
(1, 'BlogManagementWidget', '2011-05-15 12:03:47', '2011-05-15 12:03:47', 0, 1, 1),
(2, 'TagCloudWidget', '2011-05-15 12:03:47', '2011-05-15 12:03:47', 0, 1, 1),
(3, 'ArchiveWidget', '2011-05-15 12:03:47', '2011-05-15 12:03:47', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `WidgetArea`
--

CREATE TABLE IF NOT EXISTS `WidgetArea` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('WidgetArea') CHARACTER SET utf8 DEFAULT 'WidgetArea',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `WidgetArea`
--

INSERT INTO `WidgetArea` (`ID`, `ClassName`, `Created`, `LastEdited`) VALUES
(1, 'WidgetArea', '2011-05-15 12:03:47', '2011-05-15 12:03:47');
