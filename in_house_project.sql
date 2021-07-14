-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 06:26 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `in_house_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE department (
  DEPARTMENT_ID varchar(20) NOT NULL,
  DEPARTMENT_NAME varchar(100) NOT NULL
) 

--
-- Dumping data for table `department`
--

INSERT INTO department (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES
('DEPTMBA', 'MASTERS IN BUSINESS ADMINISTRATION'),
('DEPTMCA', 'MASTERS IN COMPUTER APPLICATIONS'),
('DEPTMCOM', 'MASTERS IN COMMERCE'),
('DEPTMSC', 'MASTERS IN SCIENCE'),
('DEPTMTECH', 'MASTERS IN TECHNOLOGY');

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE description (
  PHOTO_ID varchar(20) NOT NULL,
  DESCRIPTION_KEYWORD varchar(100) DEFAULT '-',
  STATUS_APPROVAL varchar(10) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `description`
--

INSERT INTO description (PHOTO_ID, DESCRIPTION_KEYWORD, STATUS_APPROVAL) VALUES
('001', 'LIGHTING OF LAMP', 'PENDING'),
('001', 'DIRECTOR LIGHTING THE LAMP', 'PENDING'),
('001', 'GUEST LIGHTING THE LAMP', 'PENDING'),
('002', 'DEPARTMENT VIDEO', 'PENDING'),
('005', 'KUSHMETHA', 'PENDING'),
('005', 'JEENA', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `event_activities`
--

CREATE TABLE event_activities (
  EVENT_ID varchar(20) NOT NULL,
  EVENT_TITLE varchar(100) NOT NULL,
  EVENT_DESCRIPTION varchar(300) DEFAULT '-',
  EVENT_OBJECTIVE varchar(300) NOT NULL,
  DEPARTMENT_ID varchar(20) NOT NULL,
  EVENT_TYPE varchar(50) NOT NULL,
  EVENT_MODE varchar(50) NOT NULL,
  EVENT_CATEGORY varchar(300) NOT NULL DEFAULT 'COLLEGE LEVEL',
  EVENT_START_DATE date NOT NULL,
  EVENT_END_DATE date NOT NULL,
  EVENT_FEES varchar(50) DEFAULT '-',
  STATUS_APPROVAL varchar(10) NOT NULL DEFAULT 'PENDING',
  TARGET_GROUP varchar(100) DEFAULT '-',
  BROCHURE varchar(100) DEFAULT '-',
  BROCHURE_FILE_EXTENSION varchar(50) DEFAULT '-',
  CERTIFICATE varchar(100) DEFAULT '-',
  CERTIFICATE_FILE_EXTENSION varchar(50) DEFAULT '-',
  REPORT_NAME varchar(100) NOT NULL,
  REPORT_DOCUMENT varchar(100) NOT NULL DEFAULT '-',
  REPORT_FILE_EXTENSION varchar(50) DEFAULT '-',
  OUTCOME varchar(100) DEFAULT '-',
  REMARKS varchar(300) DEFAULT '-'
) 
--
-- Dumping data for table `event_activities`
--

INSERT INTO event_activities (EVENT_ID, EVENT_TITLE, EVENT_DESCRIPTION, EVENT_OBJECTIVE, DEPARTMENT_ID, EVENT_TYPE, EVENT_MODE, EVENT_CATEGORY, EVENT_START_DATE, EVENT_END_DATE, EVENT_FEES, STATUS_APPROVAL, TARGET_GROUP, BROCHURE, BROCHURE_FILE_EXTENSION, CERTIFICATE, CERTIFICATE_FILE_EXTENSION, REPORT_NAME, REPORT_DOCUMENT, REPORT_FILE_EXTENSION, OUTCOME, REMARKS) VALUES
('17MBACE02', 'CORPORATE EXPO', 'THE EVENT HELD FOR ALL THE STUDENTS OF ANY STREAMS', 'THE OBJECTIVE IS TO EDUCATE AND CONDUCT A COMPETITION ON THE BASES OF THE CORPORATE WORLD AND ITS WAY OF FUNCTIONING', 'DEPTMBA', 'FEST', 'OFFLINE', 'COLLEGE LEVEL', '2019-12-22', '2019-12-22', 'FREE', 'PENDING', 'ALL YEAR STUDENTS', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'EXPO_CORP', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'THE COMPETITION HAD A WELL REMARK ON THE STUDENTS', 'VERY SATISFACTORY SESSION'),
('18MBABM01', 'BUSINESS MANAGEMENT', 'THE EVENT HELD FOR ALL THE STUDENTS OF MBA', 'THE OBJECTIVE IS TO EDUCATE THE STUDENTS OF MBA ON WHAT BUSINESS MANAGEMENT IS AND VARIOUS TYPES OF BUSINESSES', 'DEPTMBA', 'SEMINAR', 'OFFLINE', 'COLLEGE LEVEL', '2019-08-20', '2019-08-20', 'FREE', 'PENDING', 'ALL STUDENTS OF MBA', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'BM_MBA_19', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'THE SESSION HAD A WELL REMARK ON THE STUDENTS', 'SATISFACTORY SESSION'),
('18MCACC01', 'CORPORATE TO CAMPUS', 'THE EVENT HELD FOR ALL THE STUDENTS OF ANY STREAMS', 'THE OBJECTIVE IS TO END THE GAP BETWEEN THE CORPORATE WORLD AND THE CAMPUS', 'DEPTMCA', 'SEMINAR', 'OFFLINE', 'COLLEGE LEVEL', '2019-10-04', '2019-10-04', 'FREE', 'PENDING', 'FINAL YEAR STUDENTS', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'CTOC', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'THE SESSION HAD A WELL REMARK ON THE STUDENTS', 'SATISFACTORY SESSION'),
('18MCANOSQL05', 'SEMINAR ON NOSQL', 'THE EVENT HELD FOR ALL THE STUDENTS OF MCA STREAMS', 'THE OBJECTIVE IS TO EDUCATE THE STUDENTS ON THE NO SQL DATABASE', 'DEPTMCA', 'WORKSHOP', 'OFFLINE', 'REGIONAL LEVEL', '2019-01-13', '2019-01-13', 'FREE', 'PENDING', 'ALL YEAR STUDENTS', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'NOSQL_18', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'THE SESSION HAD A WELL REMARK ON THE STUDENTS', 'SATISFACTORY SESSION'),
('19MCACC01', 'CORPORATE TO CAMPUS', 'THE EVENT HELD FOR ALL THE STUDENTS OF ANY STREAMS', 'THE OBJECTIVE IS TO END THE GAP BETWEEN THE CORPORATE WORLD AND THE CAMPUS', 'DEPTMCA', 'SEMINAR', 'OFFLINE', 'COLLEGE LEVEL', '2020-07-04', '2020-07-04', 'FREE', 'PENDING', 'FINAL YEAR STUDENTS', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'CTOC_20', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'THE SESSION HAD A WELL REMARK ON THE STUDENTS', 'SATISFACTORY SESSION');

-- --------------------------------------------------------

--
-- Table structure for table `event_session`
--

CREATE TABLE event_session (
  SESSION_ID varchar(20) NOT NULL,
  EVENT_ID varchar(20) NOT NULL,
  SESSION_DATE date NOT NULL,
  SESSION_START_TIME time NOT NULL,
  SESSION_END_TIME time NOT NULL,
  TOPICS_COVERED varchar(300) NOT NULL DEFAULT '-',
  STATUS_APPROVAL varchar(10) NOT NULL DEFAULT 'PENDING'
) 

--
-- Dumping data for table `event_session`
--

INSERT INTO event_session (SESSION_ID, EVENT_ID, SESSION_DATE, SESSION_START_TIME, SESSION_END_TIME, TOPICS_COVERED, STATUS_APPROVAL) VALUES
('001CC', '18MCACC01', '2019-10-04', '10:00:00', '12:00:00', 'LATEST TECHNOLOGY LIKE PYTHON,RUBY,REACT ETC', 'PENDING'),
('002BM', '18MBABM01', '2019-08-20', '13:00:00', '15:00:00', 'BASICS TO DEPTH IN BUSINESS MANAGEMENT', 'PENDING'),
('003CC', '19MCACC01', '2020-07-04', '10:00:00', '12:00:00', 'LATEST TECHNOLOGY LIKE PYTHON,RUBY,REACT ETC', 'PENDING'),
('004CE', '17MBACE02', '2019-12-22', '10:00:00', '12:00:00', 'COMPETITION ON CORPORATE EXPO WITH AN OBJECTIVE TO EDUCATE THE STUDENTS', 'PENDING'),
('005NOSQL', '18MCANOSQL05', '2019-01-13', '10:00:00', '12:00:00', 'HANDS ON EXPERIENCE ON NOSQL FROM BASICS TO ADVANCE LEVEL', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE feedback (
  EVENT_ID varchar(20) NOT NULL,
  EMAIL_ID varchar(100) NOT NULL,
  QUESTION_1 varchar(300) DEFAULT '-',
  QUESTION_2 varchar(300) DEFAULT '-',
  QUESTION_3 varchar(300) DEFAULT '-',
  QUESTION_4 varchar(300) DEFAULT '-',
  QUESTION_5 varchar(300) DEFAULT '-',
  REMARKS_SUGGESTIONS varchar(300) DEFAULT '-',
  STATUS_APPROVAL varchar(10) NOT NULL DEFAULT 'PENDING'
) 

--
-- Dumping data for table `feedback`
--

INSERT INTO feedback (EVENT_ID, EMAIL_ID, QUESTION_1, QUESTION_2, QUESTION_3, QUESTION_4, QUESTION_5, REMARKS_SUGGESTIONS, STATUS_APPROVAL) VALUES
('18MCACC01', 'KARAN@YAHOO.IN', 'VERY SATISFACTORY', 'SATISFIED', 'VERY GOOD', '5 RATING', 'VERY GOOD', 'NO REMARKS', 'PENDING'),
('18MCACC01', 'KARISHMA@YAHOO.IN', 'VERY SATISFACTORY', 'SATISFIED', 'VERY GOOD', '5 RATING', 'VERY GOOD', 'NO REMARKS', 'PENDING'),
('18MCACC01', 'ROHIT82@YAHOO.IN', 'VERY SATISFACTORY', 'SATISFIED', 'VERY GOOD', '5 RATING', 'VERY GOOD', 'NO REMARKS', 'PENDING'),
('18MCACC01', 'SIMRAN@GMAIL.IN', 'VERY SATISFACTORY', 'SATISFIED', 'VERY GOOD', '5 RATING', 'VERY GOOD', 'NO REMARKS', 'PENDING'),
('18MCANOSQL05', 'KARAN@YAHOO.IN', 'VERY SATISFACTORY', 'SATISFIED', 'VERY GOOD', '5 RATING', 'VERY GOOD', 'NO REMARKS', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `in_house_participant`
--

CREATE TABLE in_house_participant (
  EVENT_ID varchar(20) NOT NULL,
  SESSION_ID varchar(20) NOT NULL,
  STUDENT_ID varchar(20) NOT NULL,
  STATUS_APPROVAL varchar(10) NOT NULL DEFAULT 'PENDING'
) 

--
-- Dumping data for table `in_house_participant`
--

INSERT INTO in_house_participant (EVENT_ID, SESSION_ID, STUDENT_ID, STATUS_APPROVAL) VALUES
('17MBACE02', '004CE', '17MBA25', 'PENDING'),
('18MBABM01', '002BM', '18MBA05', 'PENDING'),
('18MCACC01', '001CC', '18MCA01', 'PENDING'),
('18MCANOSQL05', '005NOSQL', '18MCA10', 'PENDING'),
('19MCACC01', '003CC', '19MCA01', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE participant (
  EVENT_ID varchar(20) NOT NULL,
  SESSION_ID varchar(20) NOT NULL,
  EMAIL_ID varchar(100) NOT NULL,
  PARTICIPANT_NAME varchar(100) NOT NULL,
  COLLEGE_NAME varchar(100) NOT NULL,
  DESIGNATION varchar(100) NOT NULL,
  COURSE_COMBINATION varchar(100) NOT NULL,
  SEMESTER varchar(20) NOT NULL,
  CONTACT_NUMBER decimal(10,0) NOT NULL,
  ADDRESS varchar(300) DEFAULT 'NIL',
  STATUS_APPROVAL varchar(10) NOT NULL DEFAULT 'PENDING'
) 

--
-- Dumping data for table `participant`
--

INSERT INTO participant (EVENT_ID, SESSION_ID, EMAIL_ID, PARTICIPANT_NAME, COLLEGE_NAME, DESIGNATION, COURSE_COMBINATION, SEMESTER, CONTACT_NUMBER, ADDRESS, STATUS_APPROVAL) VALUES
('18MBABM01', '002BM', 'KARISHMA@YAHOO.IN', 'KARISHMA', 'JYOTI NIVAS COLLEGE', 'STUDENT', 'MBA', '5TH SEMESTER', '7789954233', 'KORMANGALA BANGALORE', 'PENDING'),
('18MCACC01', '001CC', 'KARAN@YAHOO.IN', 'KARAN', 'KRISTU JAYANTHI COLLEGE', 'STUDENT', 'MCA', '5TH SEMESTER', '9994573632', 'KOTHANUR BANGALORE', 'PENDING'),
('18MCACC01', '001CC', 'KARISHMA@YAHOO.IN', 'KARISHMA', 'JYOTI NIVAS COLLEGE', 'STUDENT', 'MBA', '5TH SEMESTER', '7789954233', 'KORMANGALA BANGALORE', 'PENDING'),
('18MCACC01', '001CC', 'ROHIT82@YAHOO.IN', 'ROHIT KUMAR S', 'OXFORD COLLEGE OF ENGINEERING', 'STUDENT', 'MCA', '4TH SEMESTER', '7998744372', 'HSR LAYOUT BANGALORE', 'PENDING'),
('18MCANOSQL05', '005NOSQL', 'KARAN@YAHOO.IN', 'KARAN', 'KRISTU JAYANTHI COLLEGE', 'STUDENT', 'MCA', '5TH SEMESTER', '9994573632', 'KOTHANUR BANGALORE', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `photograph`
--

CREATE TABLE photograph (
  PHOTO_ID varchar(20) NOT NULL,
  EVENT_ID varchar(20) NOT NULL,
  PHOTO_NAME varchar(100) NOT NULL,
  PHOTO_PATH varchar(300) DEFAULT '-',
  PHOTO_EXTENSION varchar(50) DEFAULT '-',
  STATUS_APPROVAL varchar(10) NOT NULL DEFAULT 'PENDING'
) 

--
-- Dumping data for table `photograph`
--

INSERT INTO photograph (PHOTO_ID, EVENT_ID, PHOTO_NAME, PHOTO_PATH, PHOTO_EXTENSION, STATUS_APPROVAL) VALUES
('001', '18MCACC01', 'INAUGRATION', 'C:\\Users\\user\\Documents\\DOCUMENT.JPG', 'JPG', 'PENDING'),
('002', '18MCACC01', 'INAUGRATION', 'C:\\Users\\user\\Documents\\DOCUMENT.JPG', 'JPG', 'PENDING'),
('003', '18MCACC01', 'PARTICIPANTS', 'C:\\Users\\user\\Documents\\DOCUMENT.JPG', 'JPG', 'PENDING'),
('004', '18MCACC01', 'GUEST', 'C:\\Users\\user\\Documents\\DOCUMENT.JPG', 'JPG', 'PENDING'),
('005', '18MCACC01', 'HOST', 'C:\\Users\\user\\Documents\\DOCUMENT.JPG', 'JPG', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `resource_person`
--

CREATE TABLE resource_person (
  EVENT_ID varchar(20) NOT NULL,
  SESSION_ID varchar(20) NOT NULL,
  EMAIL_ID varchar(100) NOT NULL,
  RESOURCE_PERSON_NAME varchar(100) NOT NULL,
  DESIGNATION varchar(100) NOT NULL,
  ORGANIZATION_NAME varchar(100) NOT NULL,
  CONTACT_NUMBER decimal(10,0) NOT NULL,
  PROFILE varchar(100) DEFAULT '-',
  PROFILE_EXTENSION varchar(50) DEFAULT '-',
  DOCUMENTATION_FILE varchar(100) DEFAULT '-',
  STATUS_APPROVAL varchar(10) NOT NULL DEFAULT 'PENDING'
) 

--
-- Dumping data for table `resource_person`
--

INSERT INTO resource_person (EVENT_ID, SESSION_ID, EMAIL_ID, RESOURCE_PERSON_NAME, DESIGNATION, ORGANIZATION_NAME, CONTACT_NUMBER, PROFILE, PROFILE_EXTENSION, DOCUMENTATION_FILE, STATUS_APPROVAL) VALUES
('19MCACC01', '003CC', 'NOMITHA@GMAIL.COM', 'NOMITHA KUMARI', 'DEVELOPER SENIOR MANAGER', 'INFOSYS', '7083425637', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PENDING'),
('17MBACE02', '004CE', 'RAJESH@GMAIL.COM', 'RAJESH KUMAR', 'CEO', 'ORACLE', '7342423574', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PENDING'),
('18MCACC01', '001CC', 'SIMRAN@GMAIL.COM', 'SIMRAN R', 'DEVELOPER MANAGER', 'CISCO', '7342516770', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PENDING'),
('18MCANOSQL05', '005NOSQL', 'NARASIMHARAO@GMAIL.COM', 'NARASIMHA RAO', 'DEVELOPER MANAGER', 'ORACLE', '9876354402', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PENDING'),
('18MBABM01', '002BM', 'NIMBRA@GMAIL.COM', 'NIMBRA KHAN', 'BUSINESS SENIOR MANAGER', 'GOLDMAN SACHS', '9975463300', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PDF', 'C:\\Users\\user\\Documents\\DOCUMENT.PDF', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE student (
  STUDENT_ID varchar(20) NOT NULL,
  STUDENT_NAME varchar(100) NOT NULL,
  COURSE varchar(100) NOT NULL,
  EMAIL_ID varchar(100) NOT NULL,
  CONTACT_NUMBER decimal(10,0) NOT NULL,
  COUNTRY_STATE_CODE varchar(4) DEFAULT '+91',
  JOINING_YEAR varchar(4) NOT NULL,
  DEPARTMENT_ID varchar(20) NOT NULL
) 

--
-- Dumping data for table `student`
--

INSERT INTO student (STUDENT_ID, STUDENT_NAME, COURSE, EMAIL_ID, CONTACT_NUMBER, COUNTRY_STATE_CODE, JOINING_YEAR, DEPARTMENT_ID) VALUES
('17MBA25', 'AMBIKA', 'MASTERS IN BUSINESS ADMINISTRATION', 'AMBIKA@GMAIL.COM', '9866453643', '+91', 2017, 'DEPTMBA'),
('17MCA07', 'DIVYA', 'MASTERS IN COMPUTER SCIENCE', 'DIVYA@GMAIL.COM', '7745362855', '+91', 2017, 'DEPTMCA'),
('17MSC01', 'ANU', 'MASTERS IN SCIENCE', 'ANUBARAT@GMAIL.COM', '9945362270', '+91', 2017, 'DEPTMSC'),
('18MBA05', 'VEENA KUMARI', 'MASTERS IN BUSINESS ADMINISTRATION', 'VEENAKUMARI@GMAIL.COM', '9008768543', '+91', 2018, 'DEPTMBA'),
('18MCA01', 'AISHWARIYA', 'MASTERS IN COMPUTER SCIENCE', 'AISHWARIYA@GMAIL.COM', '9876543210', '+91', 2018, 'DEPTMCA'),
('18MCA02', 'POORNIMA', 'MASTERS IN COMPUTER APPLICATIONS', 'POORNIMA_A@GMAIL.COM', '7689500432', '+91', 2018, 'DEPTMCA'),
('18MCA10', 'KUSHMETHA', 'MASTERS IN COMPUTER APPLICATIONS', 'KUSHMETHA@GMAIL.COM', '9113328534', '+91', 2018, 'DEPTMCA'),
('19MBA01', 'BEENA', 'MASTERS IN BUSINESS APPLICATIONS', 'BEENA@JYOTINIVAS.ORG', '9435216706', '+91', 2019, 'DEPTMBA'),
('19MBA02', 'JEENA', 'MASTERS IN BUSINESS APPLICATIONS', 'JEENA19@JYOTINIVAS.ORG', '9988736254', '+91', 2019, 'DEPTMBA'),
('19MBA05', 'MONISHA', 'MASTERS IN BUSINESS ADMINISTRATION', 'MONISHAA@GMAIL.COM', '7006546372', '+91', 2019, 'DEPTMBA'),
('19MBA06', 'BRINDA', 'MASTERS IN BUSINESS ADMINISTRATION', 'BRINDA@GMAIL.COM', '7773425154', '+91', 2019, 'DEPTMBA'),
('19MCA01', 'JEENI', 'MASTERS IN COMPUTER SCIENCE', 'JEENI@GMAIL.COM', '7663458290', '+91', 2019, 'DEPTMCA'),
('19MCA05', 'MEENA', 'MASTERS IN COMPUTER APPLICATIONS', 'MEENA@GMAIL.COM', '9556473265', '+91', 2019, 'DEPTMCA'),
('19MCA06', 'BHANU', 'MASTERS IN COMPUTER APPLICATIONS', 'BHANU@GMAIL.COM', '9556473774', '+91', 2019, 'DEPTMCA'),
('19MCA07', 'VEENA', 'MASTERSS IN COMPUTER APPLICATIONS', 'VEENA@GMAIL.COM', '7338263993', '+91', 2019, 'DEPTMCA'),
('19MCA08', 'MONIKA', 'MASTERS IN COMPUTER APPLICATIONS', 'MONIKA_RANI@GMAIL.COM', '9007654111', '+91', 2019, 'DEPTMCA'),
('19MCOM01', 'KANCHANA', 'MASTERS IN COMMERCE', 'KANCHANAMARY@GMAIL.COM', '9967547732', '+91', 2019, 'DEPTMCOM'),
('19MCOM04', 'MARIA', 'MASTERS IN COMMERCE', 'MARIA@GMAIL.COM', '6342567824', '+91', 2019, 'DEPTMCOM'),
('19MCOM05', 'AMEENA', 'MASTERS IN COMMERCE', 'AMEENA@GMAIL.COM', '9987668540', '+91', 2019, 'DEPTMCOM'),
('19MCOM07', 'MEENA.R', 'MASTERS IN COMMERCE', 'MEENA_R@GMAIL.COM', '7993325432', '+91', 2019, 'DEPTMCOM'),
('19MCOMO2', 'SHREYA', 'MASTERS IN COMMERCE', 'SHREYA@GMAIL.COM', '9756483209', '+91', 2019, 'DEPTMCOM'),
('19MSC02', 'REENA', 'MASTERS IN SCIENCE', 'REEN@GMAIL.COM', '7744335627', '+91', 2019, 'DEPTMSC'),
('19MTECH04', 'JYOTHI', 'MASTERS IN TECHNOLOGY', 'JYOTHI@GMAIL.COM', '7323452237', '+91', 2019, 'DEPTMTECH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE department
  ADD PRIMARY KEY (DEPARTMENT_ID);

--
-- Indexes for table `event_activities`
--
ALTER TABLE event_activities
  ADD PRIMARY KEY (EVENT_ID),
  ADD KEY DEPARTMENT_ID (DEPARTMENT_ID);

--
-- Indexes for table `event_session`
--
ALTER TABLE event_session
  ADD UNIQUE KEY EVENT_SESSION_ID (SESSION_ID,EVENT_ID);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD UNIQUE KEY `FEEDBACK_ID` (`EVENT_ID`,`EMAIL_ID`);

--
-- Indexes for table `in_house_participant`
--
ALTER TABLE `in_house_participant`
  ADD UNIQUE KEY `SESSION_STUDENT_ID` (`EVENT_ID`,`SESSION_ID`,`STUDENT_ID`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD UNIQUE KEY `SESSION_PARTICIPANT_ID` (`EVENT_ID`,`SESSION_ID`,`EMAIL_ID`);

--
-- Indexes for table `photograph`
--
ALTER TABLE `photograph`
  ADD UNIQUE KEY `EVENT_PHOTO_ID` (`EVENT_ID`,`PHOTO_ID`);

--
-- Indexes for table `resource_person`
--
ALTER TABLE `resource_person`
  ADD UNIQUE KEY `CONTACT_NUMBER` (`CONTACT_NUMBER`),
  ADD UNIQUE KEY `SESSION_RESOURCEPERSON_ID` (`EVENT_ID`,`SESSION_ID`,`EMAIL_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_ID`),
  ADD UNIQUE KEY `EMAIL_ID` (`EMAIL_ID`),
  ADD UNIQUE KEY `CONTACT_NUMBER` (`CONTACT_NUMBER`),
  ADD KEY `DEPARTMENT_ID` (`DEPARTMENT_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_activities`
--
ALTER TABLE `event_activities`
  ADD CONSTRAINT `event_activities_ibfk_1` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `department` (`DEPARTMENT_ID`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `department` (`DEPARTMENT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
