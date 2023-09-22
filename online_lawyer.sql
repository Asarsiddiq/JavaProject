-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2023 at 06:38 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_lawyer`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` varchar(500) NOT NULL,
  `cat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `cat`) VALUES
('1', 'family lawyer');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer`
--

CREATE TABLE `lawyer` (
  `id` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `cat` varchar(500) NOT NULL,
  `fees` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lawyer`
--

INSERT INTO `lawyer` (`id`, `name`, `cat`, `fees`, `contact`, `email`, `gender`, `address`, `pass`, `status`) VALUES
('1', 'siddiq', 'family lawyer', '4500', '7395889223', 'asarsiddiq08@gmail.com', 'male', 'trichy', '123', '0');

-- --------------------------------------------------------

--
-- Table structure for table `req`
--

CREATE TABLE `req` (
  `id` varchar(500) NOT NULL,
  `lid` varchar(500) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `cat` varchar(500) NOT NULL,
  `fees` varchar(500) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `uname` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req`
--

INSERT INTO `req` (`id`, `lid`, `lname`, `cat`, `fees`, `uid`, `uname`, `contact`, `email`, `status`) VALUES
('1', '1', 'siddiq', 'family lawyer', '4500', '1', 'siddiq', '7395889223', 'asarsiddiq08@gmail.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `name`, `contact`, `email`, `gender`, `address`, `pass`, `status`) VALUES
('1', 'siddiq', '7395889223', 'asarsiddiq08@gmail.com', 'male', 'trichy', '123', '0');
