INSERT INTO faculty VALUES(
    0,
    'Science',
    'science@uwo.ca'
);

INSERT INTO teacher VALUES(
    3,
    0,
    'Temp'
);

INSERT INTO faculty SELECT teacher_id, fac_id, teacher_name FROM teacher WHERE teacher_id = 3;

INSERT INTO teacher(teacher_id,fac_id,teacher_name) VALUES (3,0,'Temp') ON DUPLICATE KEY UPDATE teacher_id = teacher_id + 1;
