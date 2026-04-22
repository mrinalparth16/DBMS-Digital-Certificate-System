-- =======================================================
-- 03. IMPORTANT QUERIES
-- =======================================================

-- Query A: View all certificates
SELECT * FROM Certificates;

-- Query B: Join query to show student name, course name, and certificate details
SELECT 
    s.name AS Student_Name, 
    c.course_name AS Course_Name, 
    cert.issue_date, 
    cert.certificate_code
FROM Certificates cert
JOIN Students s ON cert.student_id = s.student_id
JOIN Courses c ON cert.course_id = c.course_id;

-- Query C: Certificate verification using certificate_code
-- Simulates someone typing in a code on a website to verify its authenticity
SELECT 
    s.name AS Issued_To, 
    c.course_name AS For_Course, 
    cert.issue_date
FROM Certificates cert
JOIN Students s ON cert.student_id = s.student_id
JOIN Courses c ON cert.course_id = c.course_id
WHERE cert.certificate_code = 'CERT-PY-A101';

-- Query D: Count certificates per student
SELECT 
    s.name, 
    COUNT(cert.certificate_id) AS Total_Certificates
FROM Students s
LEFT JOIN Certificates cert ON s.student_id = cert.student_id
GROUP BY s.student_id, s.name;

-- Query E: Students without certificates
SELECT 
    s.name, 
    s.email
FROM Students s
LEFT JOIN Certificates cert ON s.student_id = cert.student_id
WHERE cert.certificate_id IS NULL;
