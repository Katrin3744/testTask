class Queries
  NUMBER_OF_STUDENTS = "SELECT COUNT(*) AS number_of_students FROM students"
  NUMBER_OF_STUDENTS_WITH_NAME = "SELECT COUNT(*) AS number_of_students_with_name FROM students WHERE name =?"
  NUMBER_OF_STUDENTS_AFTER_DATE = "SELECT COUNT(*) AS number_of_students_after_date FROM students WHERE created_at >?"
end
