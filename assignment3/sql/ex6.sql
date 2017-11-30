UPDATE teacher SET fac_id = 2 WHERE teacher_name = 'Ashton Borrell';

UPDATE teacher SET fac_id = 2 WHERE teacher_name LIKE 'A%';

INSERT INTO faculty SELECT teacher_id, fac_id, teacher_name FROM teacher WHERE teacher_id = 10;
