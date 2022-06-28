require_relative 'data_base'
require_relative 'queries'

DataBase.execute Queries::CREATE_TABLE_PARENTS
DataBase.execute Queries::CREATE_TABLE_STUDENTS

id = 1
while id != 6
  DataBase.execute Queries::INSERT_PARENT, [id, "name_#{id}", DateTime.now.to_s]
  DataBase.execute Queries::INSERT_STUDENT, [id, "name_#{id}", DateTime.now.to_s, id]
  id += 1
end

DataBase.execute Queries::INSERT_STUDENT, [id, "name_#{id}", DateTime.now.to_s, nil]

DataBase.execute Queries::INSERT_PARENT, [id, "Марина", DateTime.now.to_s]
DataBase.execute Queries::INSERT_STUDENT, [id+1, "name_#{id+1}", DateTime.now.to_s, id]


result = DataBase.execute Queries::NUMBER_OF_STUDENTS_WITH_PARENTS
result.each do |hash|
  puts hash['number_of_students_with_parents']
end

result = DataBase.execute Queries::NUMBER_OF_STUDENTS_WITH_PARENT_NAME, "Марина"
result.each do |hash|
  puts hash['number_of_students_with_parent_name']
end

result = DataBase.execute Queries::NUMBER_OF_STUDENTS_WITHOUT_PARENTS
result.each do |hash|
  puts hash['number_of_students_without_parent']
end

DataBase.db.close if DataBase.db
