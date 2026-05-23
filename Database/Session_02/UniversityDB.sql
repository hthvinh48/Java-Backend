-- university.courses definition

-- Drop table

-- DROP TABLE university.courses;

CREATE TABLE university.courses (
	course_id serial4 NOT NULL,
	course_name varchar(100) NOT NULL,
	credits int4 NULL,
	CONSTRAINT courses_pkey PRIMARY KEY (course_id)
);


-- university.students definition

-- Drop table

-- DROP TABLE university.students;

CREATE TABLE university.students (
	student_id serial4 NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	birth_date date NULL,
	email varchar(50) NOT NULL,
	CONSTRAINT students_birth_date_check null,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (student_id)
);


-- university.enrollments definition

-- Drop table

-- DROP TABLE university.enrollments;

CREATE TABLE university.enrollments (
	enrollment_id serial4 NOT NULL,
	enroll_date date NULL,
	student_id int4 NULL,
	course_id int4 NULL,
	CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id),
	CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES university.courses(course_id),
	CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES university.students(student_id)
);

drop table university.enrollments;
drop table university.courses;
drop table university.students;  