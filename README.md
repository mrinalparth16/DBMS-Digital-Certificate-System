# DBMS-Digital-Certificate-System
Digital Certificate Issuance System (DBMS) A robust SQL-based system for managing and authenticating academic certifications. Features include 3NF normalized schema design, unique verification codes for authenticity checks, and complex multi-table joins for student progress reporting
## Project Goal & Overview
The goal of this project is to build a minimal, fully functional relational database for a **Digital Certificate Issuance System**. It demonstrates core DBMS concepts such as table normalization, primary/foreign key relationships, constraints (unique keys), and multi-table joins. 

The system allows an institution to manage **Students**, **Courses**, and securely issue verifiable **Certificates** to students upon course completion.

Project Features

- **Student Management:** Keep track of enrolled students securely.
- **Course Catalog:** Manage available courses and their durations.
- **Certificate Issuance:** Generate verifiable certificates linked to specific students and courses.
- **Authenticity Verification:** Every certificate gets a unique `certificate_code` that employers/third-parties can query to verify its legitimacy.

---

## Database Schema & Entity-Relationship

The database is built using 3 essential tables in **3rd Normal Form (3NF)**.

### Table Breakdown
1. **`Students`**: Stores `student_id` (PK), `name`, `email` (UNIQUE), and `enrollment_date`.
2. **`Courses`**: Stores `course_id` (PK), `course_name`, and `duration_weeks`.
3. **`Certificates`**: A junction/transaction table storing `certificate_id` (PK), foreign keys for the student and course, `issue_date`, and a `certificate_code` (UNIQUE).

## Getting Started

This project is written in standard SQL and is fully compatible with **MySQL** and **SQLite**. For better organization, the code is split into three scripts.

### 1. Execute the Scripts
Run the files in the following order in your SQL terminal/client:

1. **`01_create_tables.sql`**: Sets up the database schema, tables, and constraints.
2. **`02_insert_data.sql`**: Populates the tables with sample data (students, courses, and certificates).
3. **`03_run_queries.sql`**: Contains practical queries including JOINs, aggregation, and verification checks.

### Example: Running in SQLite (Terminal)
If you have SQLite installed, simply open your terminal in the project folder and run:
```bash
sqlite3 certificate_db.sqlite ".read 01_create_tables.sql"
sqlite3 certificate_db.sqlite ".read 02_insert_data.sql"
sqlite3 certificate_db.sqlite ".read 03_run_queries.sql"
```
## Key Queries Included

The `03_run_queries.sql` script demonstrates various capabilities:
- **Join Queries:** Replacing raw IDs with human-readable student and course names.
- **Verification Search:** Looking up a specific `certificate_code` to verify who it belongs to.
- **Aggregations:** Counting how many certificates each student has earned using `COUNT()` and `GROUP BY`.
- **Finding Nulls:** Identifying students who have not completed any courses using `LEFT JOIN` and `IS NULL`.
