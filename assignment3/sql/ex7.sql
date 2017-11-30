CREATE VIEW technical_electives_after_year1 AS SELECT prog_id, course_id FROM course_list WHERE course_type='TECH' AND year_taken>1;

CREATE VIEW course_taught_by AS SELECT course.course_id, course.teacher_id,course.dep_id FROM course INNER JOIN TEACHER ON course.teacher_id=teacher.teacher_name;

CREATE VIEW admin_view AS SELECT f.fac_name, f.fac_admin_email, d.dep_name, d.dep_admin_email, p.prog_name FROM faculty f INNER JOIN department d ON f.fac_id=d.fac_id INNER JOIN program p ON d.dep_id=p.dep_id;
