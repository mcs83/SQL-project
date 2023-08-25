#The average grade that is given by each professor
SELECT AVG(g.grades_result) AS 'Average grade',p.professors_name AS 'Given by professor',  p.professors_id
FROM grades g
JOIN courses c
ON c.courses_id = g.grades_courses_id
JOIN professors p
ON p.professors_id=c.courses_professors_id
GROUP BY p.professors_name, p.professors_id;

#The top grades for each student
SELECT MAX(g.grades_result) AS 'Top grade',s.students_name AS 'Student'
FROM grades g
JOIN students s
ON g.grades_students_id = s.students_id
GROUP BY g.grades_students_id;

#Sort students by the courses that they are enrolled in 
SELECT c.courses_name,s.students_name 
FROM students s
JOIN grades g
ON s.students_id = g.grades_students_id
JOIN courses c
ON g.grades_courses_id = c.courses_id
ORDER BY c.courses_name;

#Summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course
SELECT AVG(g.grades_result) AS 'Average grade',c.courses_name AS 'Course',  c.courses_id
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
GROUP BY c.courses_name,c.courses_id
ORDER BY AVG(g.grades_result) ASC;

#Finding which student and professor have the most courses in common

SELECT COUNT(p.professors_id),s.students_name, p.professors_name 
FROM students s
JOIN grades g
ON s.students_id = g.grades_students_id
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN professors p
ON p.professors_id=c.courses_professors_id
GROUP BY s.students_name, p.professors_name 
HAVING COUNT(p.professors_id) >1
ORDER BY COUNT(p.professors_id) DESC;



