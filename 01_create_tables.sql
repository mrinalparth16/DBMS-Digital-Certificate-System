-- =======================================================
-- 01. TABLE CREATION
-- =======================================================

-- NOTE: If using MySQL, uncomment the next two lines:
-- CREATE DATABASE IF NOT EXISTS CertificateDB;
-- USE CertificateDB;

-- Students Table: Stores basic information about the students.
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrollment_date DATE
);

-- Courses Table: Stores information about the courses offered.
CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_weeks INTEGER
);

-- Certificates Table: Stores the issuance details, linking students to courses.
CREATE TABLE Certificates (
    certificate_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    issue_date DATE NOT NULL,
    certificate_code VARCHAR(50) UNIQUE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
