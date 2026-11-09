
-- ==========================================
-- WEEK 1 MYSQL DATABASE ASSIGNMENT
-- Project: School Management System
-- Author: Chengun Kier
-- ==========================================

-- Step 1: Create the database
CREATE DATABASE school_management;

-- Step 2: Display available databases
SHOW DATABASES;

-- Step 3: Select the database
USE school_management;

-- Step 4: Create Students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE,
    gender VARCHAR(10)
);

-- Step 5: Create Teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    specialization VARCHAR(100)
);

-- Step 6: Create Courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Step 7: Create Enrolments table
CREATE TABLE enrolments (
    enrolment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrolment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Step 8: Display all tables
SHOW TABLES;

-- Step 9: Display Students table structure
DESCRIBE students;

-- Step 10: Display Teachers table structure
DESCRIBE teachers;

-- Step 11: Display Courses table structure
DESCRIBE courses;

-- Step 12: Display Enrolments table structure
DESCRIBE enrolments;
