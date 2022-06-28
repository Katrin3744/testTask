require 'sqlite3'

class DataBase
  @@db = SQLite3::Database.open 'test.db'
  @@db.results_as_hash = true

  def self.db
    @@db
  end

  def self.execute(query, params = nil)
   @@db.execute query, *params
  end
end
