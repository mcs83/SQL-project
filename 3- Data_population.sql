#Seed script to populate database

INSERT INTO students(students_name)
VALUES ('Jorge Cano');
INSERT INTO students(students_name)
VALUES ('Maider Gusa');
INSERT INTO students(students_name)
VALUES ('David Gallarta');
INSERT INTO students(students_name)
VALUES ('Ana Gallur');
INSERT INTO students(students_name)
VALUES ('Roberto Dacal');
INSERT INTO students(students_name)
VALUES ('Sara Cádiz');

INSERT INTO professors(professors_name)
VALUES ('Lola Fernández');
INSERT INTO professors(professors_name)
VALUES ('Ernesto Alterio');
INSERT INTO professors(professors_name)
VALUES ('Luis Fonseca');
INSERT INTO professors(professors_name)
VALUES ('Dolores Ruiz');
INSERT INTO professors(professors_name)
VALUES ('Iker Jiménez');

INSERT INTO courses(courses_name, courses_professors_id)
VALUES ('Computer science',1 );
INSERT INTO courses(courses_name, courses_professors_id)
VALUES ('Multimedia',1 );
INSERT INTO courses(courses_name, courses_professors_id)
VALUES ('Forensic science',2 );
INSERT INTO courses(courses_name, courses_professors_id)
VALUES ('Mathematics',2 );
INSERT INTO courses(courses_name, courses_professors_id)
VALUES ('Sports science',3 );
INSERT INTO courses(courses_name, courses_professors_id)
VALUES ('Life sciences',4 );
INSERT INTO courses(courses_name, courses_professors_id)
VALUES ('Farm management',5 );

INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (9.6,1,1);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (8,2,1);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (8.6,5,1);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (5,5,2);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (4,6,2);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (6,3,3);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (7.9,4,3);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (3.4,4,4);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (5.5,2,5);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (5,6,5);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (4,3,6);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (3.4,2,6);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (2.5,4,7);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (10,1,7);
INSERT INTO grades(grades_result,grades_students_id,grades_courses_id)
VALUES (9.6,5,7);


