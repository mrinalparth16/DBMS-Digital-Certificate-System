-- =======================================================
-- 02. INSERTING SAMPLE DATA
-- =======================================================

-- Insert 3 students
INSERT INTO Students (student_id, name, email, enrollment_date) VALUES
(1, 'Alice Johnson', 'alice@example.com', '2023-01-15'),
(2, 'Bob Smith', 'bob@example.com', '2023-02-20'),
(3, 'Charlie Brown', 'charlie@example.com', '2023-03-10');

-- Insert 3 courses
INSERT INTO Courses (course_id, course_name, duration_weeks) VALUES
(101, 'Introduction to Python', 6),
(102, 'Database Management Systems', 8),
(103, 'Web Development Bootcamp', 12);

-- Insert 3 certificates (Alice gets 2, Bob gets 1, Charlie gets 0)
INSERT INTO Certificates (certificate_id, student_id, course_id, issue_date, certificate_code) VALUES
(1001, 1, 101, '2023-03-01', 'CERT-PY-A101'),
(1002, 1, 102, '2023-05-15', 'CERT-DB-A102'),
(1003, 2, 103, '2023-06-20', 'CERT-WD-B103');
