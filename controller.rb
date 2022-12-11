require "sqlite3"
require_relative "view"

class Controller
  def initialize(db = "db.db")
    @db = SQLite3::Database.new(db)
    @view = View.new
  end
  def display_options
    @view.display_options
  end
  def display
    @db.execute("SELECT * FROM people")
  end

  def add

    name = @view.ask_for("name")
    date_of_birth = @view.ask_for("date of birth")
    defunction_date = @view.ask_for("defunction date")
    description = @view.ask_for("description")
    query = ("INSERT INTO people (name, birth, death, description) VALUES (?, ?, ?, ?)")
    @db.execute(query, name, date_of_birth, defunction_date, description)

  end

end
