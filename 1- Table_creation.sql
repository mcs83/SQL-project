CREATE SCHEMA `university_schema` ;
USE university_schema;
#Student table
CREATE TABLE `university_schema`.`students` (
  `students_id` INT NOT NULL AUTO_INCREMENT,
  `students_name` VARCHAR(30) NOT NULL,
  UNIQUE INDEX `students_id_UNIQUE` (`students_id` ASC) VISIBLE,
  PRIMARY KEY (`students_id`));

#Grades table
CREATE TABLE `university_schema`.`grades` (
  `grades_id` INT NOT NULL AUTO_INCREMENT,
  `grades_result` DECIMAL(4,2) NOT NULL,
  `grades_students_id` INT NOT NULL,
  `grades_courses_id` INT NOT NULL,
  UNIQUE INDEX `grades_id_UNIQUE` (`grades_id` ASC) VISIBLE,
  PRIMARY KEY (`grades_id`));

#Courses table
CREATE TABLE `university_schema`.`courses` (
  `courses_id` INT NOT NULL AUTO_INCREMENT,
  `courses_name` VARCHAR(30) NOT NULL,
  `courses_professors_id` INT NOT NULL,
  UNIQUE INDEX `courses_id_UNIQUE` (`courses_id` ASC) VISIBLE,
  PRIMARY KEY (`courses_id`));
#Professors table
CREATE TABLE `university_schema`.`professors` (
  `professors_id` INT NOT NULL AUTO_INCREMENT,
  `professors_name` VARCHAR(30) NOT NULL,
  UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE,
  PRIMARY KEY (`professors_id`));
