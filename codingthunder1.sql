-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 03:32 PM
-- Server version: 10.3.15-MariaDB
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
-- Database: `codingthunder1`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'phela post', '9013235589', 'phela message', '2019-06-24 17:24:21', 'phela@gmail.com'),
(7, 'sneh', '9013235589', 'mera dusra message', '2019-06-24 20:32:09', 'snehsingh2020@gmail.com'),
(8, 'sneh', '9013235589', 'mera tisra message', '2019-06-24 20:33:58', 'snehsingh2020@gmail.com'),
(9, 'sneh', '9013235589', 'mera tisra message', '2019-06-24 20:42:17', 'snehsingh2020@gmail.com'),
(10, 'sneh', '9013235589', 'mera tisra message', '2019-06-24 20:43:07', 'snehsingh2020@gmail.com'),
(11, 'sneh', '1234567890', 'hi iam sneh', '2019-06-26 18:27:37', 'noaharc19@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'first post', 'this is first post', 'ninth-post', 'Computer programming is the Process of Designing and building an executable computer program for accomplishing a specific computing task. Programming involves tasks such as: analysis, generating algorithms, profiling algorithms\' accuracy and resource consumption, and the implementation of algorithms in a chosen programming language (commonly referred to as coding)[1][2]. The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system) on a computer, often for solving a given problem. The process of programming thus often requires expertise in several different subjects, including knowledge of the application domain, specialized algorithms, and formal logic.', 'post-bg.jpg', '2019-06-26 13:38:55'),
(2, 'Computer programming', 'this is second post', 'second-post', 'Tasks accompanying and related to programming include: testing, debugging, source code maintenance, implementation of build systems, and management of derived artifacts, such as the machine code of computer programs. These might be considered part of the programming process, but often the term software development is used for this larger process with the term programming, implementation, or coding reserved for the actual writing of code. Software engineering combines engineering techniques with software development practices. Reverse engineering is the opposite process. A hacker is any skilled computer expert that uses their technical knowledge to overcome a problem, but it can also mean a security hacker in common language.', 'post-bg.jpg', '2019-06-25 17:43:47'),
(3, 'Variables', 'Template variables are defined by the context dictionary passed to the template.', 'third-post', 'ou can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.\r\n\r\nYou can use a dot (.) to access attributes of a variable in addition to the standard Python __getitem__ “subscript” syntax ([]).\r\n\r\nThe following lines do the same thing:\r\n\r\n{{ foo.bar }}\r\n{{ foo[\'bar\'] }}\r\nIt’s important to know that the outer double-curly braces are not part of the variable, but the print statement. If you access variables inside tags don’t put the braces around them.\r\n\r\nIf a variable or attribute does not exist, you will get back an undefined value. What you can do with that kind of value depends on the application configuration: the default behavior is to evaluate to an empty string if printed or iterated over, and to fail for every other operation.', 'post-bg.jpg', '2019-06-25 17:54:40'),
(4, 'Filters', 'Variables can be modified by filters.', 'fourth-post', 'Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.\r\n\r\nFor example, {{ name|striptags|title }} will remove all HTML Tags from variable name and title-case the output (title(striptags(name))).\r\n\r\nFilters that accept arguments have parentheses around the arguments, just like a function call. For example: {{ listx|join(\', \') }} will join a list with commas (str.join(\', \', listx)).\r\n\r\nThe List of Builtin Filters below describes all the builtin filters.\r\n\r\n', 'post-bg.jpg', '2019-06-25 17:56:47'),
(5, 'Tests', 'Beside filters, there are also so-called “tests” available', 'fifth-post', 'Tests can be used to test a variable against a common expression. To test a variable or expression, you add is plus the name of the test after the variable. For example, to find out if a variable is defined, you can do name is defined, which will then return true or false depending on whether name is defined in the current template context.\r\n\r\nTests can accept arguments, too. If the test only takes one argument, you can leave out the parentheses. For example, the following two expressions do the same thing:\r\n\r\n{% if loop.index is divisibleby 3 %}\r\n{% if loop.index is divisibleby(3) %}', 'post-bg.jpg', '2019-06-25 17:58:10'),
(6, 'Whitespace Control', 'a single trailing newline is stripped if present\r\nother whitespace (spaces, tabs, newlines etc.) is returned unchanged', 'sixth-post', 'If an application configures Jinja to trim_blocks, the first newline after a template tag is removed automatically (like in PHP). The lstrip_blocks option can also be set to strip tabs and spaces from the beginning of a line to the start of a block. (Nothing will be stripped if there are other characters before the start of the block.)\r\n\r\nWith both trim_blocks and lstrip_blocks enabled, you can put block tags on their own lines, and the entire block line will be removed when rendered, preserving the whitespace of the contents. For example, without the trim_blocks and lstrip_blocks options, this template:\r\n\r\n<div>\r\n    {% if True %}\r\n        yay\r\n    {% endif %}\r\n</div>\r\ngets rendered with blank lines inside the div:\r\n\r\n<div>\r\n\r\n        yay\r\n\r\n</div>\r\nBut with both trim_blocks and lstrip_blocks enabled, the template block lines are removed and other whitespace is preserved:\r\n\r\n<div>\r\n        yay\r\n</div>\r\nYou can manually disable the lstrip_blocks behavior by putting a plus sign (+) at the start of a block:\r\n\r\n<div>\r\n        {%+ if something %}yay{% endif %}\r\n</div>\r\nYou can also strip whitespace in templates by hand. If you add a minus sign (-) to the start or end of a block (e.g. a For tag), a comment, or a variable expression, the whitespaces before or after that block will be removed:\r\n\r\n{% for item in seq -%}\r\n    {{ item }}\r\n{%- endfor %}\r\nThis will yield all elements without whitespace between them. If seq was a list of numbers from 1 to 9, the output would be 123456789.\r\n\r\nIf Line Statements are enabled, they strip leading whitespace automatically up to the beginning of the line.\r\n\r\nBy default, Jinja2 also removes trailing newlines. To keep single trailing newlines, configure Jinja to keep_trailing_newline.\r\n\r\nNote\r\nYou must not add whitespace between the tag and the minus sign.\r\n\r\nvalid:\r\n\r\n{%- if foo -%}...{% endif %}\r\ninvalid:\r\n\r\n{% - if foo - %}...{% endif %}', 'post-bg.jpg', '2019-06-25 18:01:05'),
(7, 'Google Docs', 'Google Docs is a word processor included as part of a free, web-based software office suite offered by Google within its Google Drive service', 'google-docs', 'Google Docs is a word processor included as part of a free, web-based software office suite offered by Google within its Google Drive service. This service also includes Google Sheets and Google Slides, a spreadsheet and presentation program respectively. Google Docs is available as a web application, mobile app for Android, iOS, Windows, BlackBerry, and as a desktop application on Google\'s ChromeOS. The app is compatible with Microsoft Office file formats.[2] The application allows users to create and edit files online while collaborating with other users in real-time. Edits are tracked by user with a revision history presenting changes. An editor\'s position is highlighted with an editor-specific color and cursor. A permissions system regulates what users can do. Updates have introduced features using machine learning, including \"Explore\", offering search results based on the contents of a document, and \"Action items\", allowing users to assign tasks to other users.', 'post_bg.jpg', '2019-06-26 13:16:24'),
(8, 'Google Docs', 'Google Docs is a word processor included as part of a free, web-based software office suite offered by Google within its Google Drive service', 'google-docs', 'Google Docs is a word processor included as part of a free, web-based software office suite offered by Google within its Google Drive service. This service also includes Google Sheets and Google Slides, a spreadsheet and presentation program respectively. Google Docs is available as a web application, mobile app for Android, iOS, Windows, BlackBerry, and as a desktop application on Google\'s ChromeOS. The app is compatible with Microsoft Office file formats.[2] The application allows users to create and edit files online while collaborating with other users in real-time. Edits are tracked by user with a revision history presenting changes. An editor\'s position is highlighted with an editor-specific color and cursor. A permissions system regulates what users can do. Updates have introduced features using machine learning, including \"Explore\", offering search results based on the contents of a document, and \"Action items\", allowing users to assign tasks to other users.', 'post_bg.jpg', '2019-06-26 13:16:35'),
(10, 'Chrome OS', 'Chrome OS is a Linux kernel-based operating system designed by Google. It is derived from the free software Chromium OS and uses the Google Chrome web browser as its principal user interface. As a result, Chrome OS primarily supports web applications.', 'chrome-os', 'Google announced the project in July 2009, conceiving it as an operating system in which both applications and user data reside in the cloud: hence Chrome OS primarily runs web applications. Source code and a public demo came that November. The first Chrome OS laptop, known as a Chromebook, arrived in May 2011. Initial Chromebook shipments from Samsung and Acer occurred in July 2011.\r\n\r\nChrome OS has an integrated media player and file manager. It supports Chrome Apps, which resemble native applications, as well as remote access to the desktop. Android applications started to become available for the operating system in 2014, and in 2016, access to Android apps in the entire Google Play Store was introduced on supported Chrome OS devices. Reception was initially skeptical, with some observers arguing that a browser running on any operating system was functionally equivalent. As more Chrome OS machines have entered the market, the operating system is now seldom evaluated apart from the hardware that runs it.\r\n\r\nChrome OS is only available pre-installed on hardware from Google manufacturing partners, but there are unofficial methods that allow it to be installed in other equipment.[10][11] An open source equivalent, Chromium OS, can be compiled from downloaded source code. Early on, Google provided design goals for Chrome OS, but has not otherwise released a technical description.', 'post_bg.jpg', '2019-06-26 13:23:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
