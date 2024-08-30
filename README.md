
# Student Exam Semester Database Design

## Overview
This document outlines the database design for managing student exams within a semester. The database is structured to efficiently store and retrieve information related to students, courses, exams, and results.

## Database Schema

### Entities
1. **Students**
   - **student_id** (Primary Key): Unique identifier for each student.
   - **first_name**: Student's first name.
   - **last_name**: Student's last name.
   - **email**: Student's email address.
   - **enrollment_date**: Date the student enrolled.

2. **Courses**
   - **course_id** (Primary Key): Unique identifier for each course.
   - **course_name**: Name of the course.
   - **course_code**: Code assigned to the course.
   - **credits**: Number of credits for the course.

3. **Exams**
   - **exam_id** (Primary Key): Unique identifier for each exam.
   - **course_id** (Foreign Key): Identifier for the associated course.
   - **exam_date**: Date of the exam.
   - **duration**: Duration of the exam in minutes.

4. **Results**
   - **result_id** (Primary Key): Unique identifier for each result entry.
   - **exam_id** (Foreign Key): Identifier for the associated exam.
   - **student_id** (Foreign Key): Identifier for the student.
   - **score**: Score obtained by the student in the exam.

### Relationships
- A **student** can enroll in multiple **courses**.
- A **course** can have multiple **exams**.
- An **exam** can have multiple **students** taking it, and each student can have multiple **results** for different exams.

## Implementation
The database can be implemented using SQL with the following commands:

```sql
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    enrollment_date DATE
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_code VARCHAR(10),
    credits INT
);

CREATE TABLE Exams (
    exam_id INT PRIMARY KEY,
    course_id INT,
    exam_date DATE,
    duration INT,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Results (
    result_id INT PRIMARY KEY,
    exam_id INT,
    student_id INT,
    score DECIMAL(5, 2),
    FOREIGN KEY (exam_id) REFERENCES Exams(exam_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
```

## Usage
This database design allows for efficient management of student exams, enabling functionalities such as:
- Adding new students and courses.
- Scheduling exams and recording results.
- Generating reports on student performance.

## Conclusion
This database design provides a robust framework for managing student exams in a semester, ensuring data integrity and ease of access for educational institutions.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
