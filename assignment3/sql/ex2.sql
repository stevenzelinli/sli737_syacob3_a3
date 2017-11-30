CREATE DATABASE uwocoursesched;

USE uwocoursesched;

CREATE TABLE faculty
(
    fac_id INT NOT NULL,
    fac_name VARCHAR(100) NOT NULL,
    fac_admin_email VARCHAR(100),
    PRIMARY KEY (fac_id)
);

CREATE TABLE teacher
(
    teacher_id INT NOT NULL,
    fac_id INT NOT NULL,
    teacher_name VARCHAR(100) NOT NULL,
    PRIMARY KEY(teacher_id),
    FOREIGN KEY (fac_id) REFERENCES faculty(fac_id)
);

CREATE TABLE department(
    dep_id INT NOT NULL,
    fac_id INT NOT NULL,
    dep_name VARCHAR(100) NOT NULL,
    dep_admin_email VARCHAR(100),
    PRIMARY KEY(dep_id),
    FOREIGN KEY (fac_id) REFERENCES faculty(fac_id)
);

CREATE TABLE course(
    course_id INT NOT NULL,
    dep_id INT NOT NULL,
    teacher_id INT,
    course_number INT NOT NULL,
    course_suffix CHAR NOT NULL,
    course_max_cap INT NOT NULL,
    lect_hours INT NOT NULL,
    lab_hours INT NOT NULL,
    tut_hours INT NOT NULL,
    PRIMARY KEY(course_id),
    FOREIGN KEY (dep_id) REFERENCES department(dep_id),
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);

CREATE TABLE program(
    prog_id INT NOT NULL,
    dep_id INT NOT NULL,
    prog_name VARCHAR(100) NOT NULL,
    PRIMARY KEY(prog_id),
    FOREIGN KEY (dep_id) REFERENCES department(dep_id)
);

CREATE TABLE course_slot(
    course_id INT NOT NULL,
    slot_type CHAR(3) NOT NULL, 
    location VARCHAR(100),
    day_of_week VARCHAR(50) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE course_list(
    prog_id INT NOT NULL,
    course_id INT NOT NULL, 
    course_type CHAR(4) NOT NULL,
    year_taken INT NOT NULL,
    FOREIGN KEY (prog_id) REFERENCES program(prog_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);
