CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    dob DATE
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'F')),

    FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);