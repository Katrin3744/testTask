require 'sqlite3'
require_relative 'queries'

db = SQLite3::Database.open 'test.db'
db.results_as_hash = true
db.execute "CREATE TABLE IF NOT EXISTS students(id INT, name TEXT, created_at TEXT, parent_id INT)"
id = 1
while id != 6
  db.execute "INSERT INTO students(id, name, created_at, parent_id) VALUES (?, ?, ?, ?)", id, "name_#{id}", DateTime.now.to_s, id
  id+=1
end

db.execute "INSERT INTO students(id, name, created_at, parent_id) VALUES (?, ?, ?, ?)", id, "Иван", DateTime.now.to_s, id
db.execute "INSERT INTO students(id, name, created_at, parent_id) VALUES (?, ?, ?, ?)", id+1, "Иван", DateTime.new(2019,8,1).to_s, id

db.execute Queries::NUMBER_OF_STUDENTS do |row|
  puts row['number_of_students']
end

db.execute Queries::NUMBER_OF_STUDENTS_WITH_NAME, 'Иван' do |row|
  puts row['number_of_students_with_name']
end

db.execute Queries::NUMBER_OF_STUDENTS_AFTER_DATE, DateTime.new(2020,9,1).to_s do |row|
  puts row['number_of_students_after_date']
end

db.execute "DROP TABLE students"

db.close if db
