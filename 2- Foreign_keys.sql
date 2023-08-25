#Foreign keys

ALTER TABLE `university_schema`.`grades` 
ADD INDEX `grades_students_id_idx` (`grades_students_id` ASC) VISIBLE,
ADD INDEX `grades_courses_id_idx` (`grades_courses_id` ASC) VISIBLE;
;
ALTER TABLE `university_schema`.`grades` 
ADD CONSTRAINT `grades_students_id`
  FOREIGN KEY (`grades_students_id`)
  REFERENCES `university_schema`.`students` (`students_id`)
  ON DELETE CASCADE
  ON UPDATE RESTRICT,
ADD CONSTRAINT `grades_courses_id`
  FOREIGN KEY (`grades_courses_id`)
  REFERENCES `university_schema`.`courses` (`courses_id`)
  ON DELETE CASCADE
  ON UPDATE RESTRICT;

ALTER TABLE `university_schema`.`courses` 
ADD INDEX `courses_professors_id_idx` (`courses_professors_id` ASC) VISIBLE;
;
ALTER TABLE `university_schema`.`courses` 
ADD CONSTRAINT `courses_professors_id`
  FOREIGN KEY (`courses_professors_id`)
  REFERENCES `university_schema`.`professors` (`professors_id`)
  ON DELETE CASCADE
  ON UPDATE RESTRICT;