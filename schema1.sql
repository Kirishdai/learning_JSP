-- =======================================================
-- Database Schema: aliens
-- Purpose: Stores student login info (username, password, phone number)
-- Created on: 2025-06-15
-- MySQL Version: 8.0.36
-- =======================================================

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS `aliens`
    DEFAULT CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci;

-- Switch to the aliens database
USE `aliens`;

-- ===========================
-- Table structure for `student`
-- ===========================

-- Drop the table if it already exists (safe for redeploys)
DROP TABLE IF EXISTS `student`;

-- Create the student table
CREATE TABLE `student` (
                           `username` VARCHAR(50) DEFAULT NULL,         -- student's username
                           `password` VARCHAR(50) DEFAULT NULL,         -- student's password
                           `phoneNumber` VARCHAR(50) DEFAULT NULL       -- student's phone number
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_0900_ai_ci;

-- ===========================
-- Sample Data for Testing
-- ===========================

-- Insert sample rows
INSERT INTO `student` (`username`, `password`, `phoneNumber`) VALUES
                                                                  ('KrishKarki',    'KarkiKrish1',   '7692800731'),
                                                                  ('TarbiPyakurel', 'PyakurelTarbi2','7692800732'),
                                                                  ('OmNepal',       'NepalOm3',      '7692800733'),
                                                                  ('AaronKarki',    'KarkiAaron4',   '7692800734'),
                                                                  ('BruceWayne',    'WayneBruce1',   '7692800736');

-- End of schema
