class Queries
  CREATE_TABLE_PARENTS = "CREATE TABLE IF NOT EXISTS parents(id INT, name TEXT, created_at TEXT)"
  INSERT_PARENT = "INSERT INTO parents(id, name, created_at) VALUES (?, ?, ?)"
  CREATE_TABLE_STUDENTS = "CREATE TABLE IF NOT EXISTS students(id INT, name TEXT, created_at TEXT, parent_id INT, FOREIGN KEY(parent_id) REFERENCES parents(id))"
  INSERT_STUDENT = "INSERT INTO students(id, name, created_at, parent_id) VALUES (?, ?, ?, ?)"
  NUMBER_OF_STUDENTS_WITH_PARENTS = "SELECT COUNT(*) AS number_of_students_with_parents FROM students INNER JOIN parents ON students.parent_id = parents.id"
  NUMBER_OF_STUDENTS_WITH_PARENT_NAME = "SELECT COUNT(*) AS number_of_students_with_parent_name FROM students INNER JOIN parents ON students.parent_id = parents.id WHERE parents.name = ?"
  NUMBER_OF_STUDENTS_WITHOUT_PARENTS = "SELECT COUNT(*) AS number_of_students_without_parent FROM students WHERE parent_id IS NULL"
end
