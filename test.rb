require_relative 'database'
db = SQLite3::Database.new("db.db")

p db.execute("SELECT * FROM people, work").flatten
