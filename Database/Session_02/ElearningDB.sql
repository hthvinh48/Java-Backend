CREATE TABLE elearning.students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE elearning.instructors (
    instructor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE elearning.courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    instructor_id INT NOT NULL,

    FOREIGN KEY (instructor_id)
        REFERENCES elearning.instructors(instructor_id)
);

CREATE TABLE elearning.enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enroll_date DATE NOT NULL,

    FOREIGN KEY (student_id)
        REFERENCES elearning.students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES elearning.courses(course_id)
);

CREATE TABLE elearning.assignments (
    assignment_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    due_date DATE NOT NULL,

    FOREIGN KEY (course_id)
        REFERENCES elearning.courses(course_id)
);

CREATE TABLE elearning.submissions (
    submission_id SERIAL PRIMARY KEY,
    assignment_id INT NOT NULL,
    student_id INT NOT NULL,
    submission_date DATE NOT NULL,
    grade NUMERIC(5,2) CHECK (grade >= 0 AND grade <= 100),

    FOREIGN KEY (assignment_id)
        REFERENCES elearning.assignments(assignment_id),

    FOREIGN KEY (student_id)
        REFERENCES elearning.students(student_id)
);