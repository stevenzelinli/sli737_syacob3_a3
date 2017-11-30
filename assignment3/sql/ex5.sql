USE uwocoursesched;

SELECT course_number, course_suffix FROM course WHERE lab_hours < 1.5;

SELECT DISTINCT teacher_id FROM course WHERE lect_hours > 3;

SELECT course_number FROM course WHERE lab_hours < 1.5 LIMIT 4;

SELECT course_number, teacher.teacher_name FROM course INNER JOIN teacher ON course.teacher_id = teacher.teacher_id LIMIT 10;

SELECT MIN(course_number) FROM course WHERE course.lab_hours < 1.5;

SELECT teacher_name FROM teacher WHERE teacher_name LIKE 'A%';


