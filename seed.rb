#is seed.rb meant to set the schema?
require 'sqlite3'
db = SQLite3::Database.new("db.db")
db.execute("DROP TABLE `people`")
 db.execute("DROP TABLE `work`")

db.execute("CREATE TABLE `people` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `birth` DATE,
  `death` DATE,
  `description` TEXT
);")
db.execute("INSERT INTO people (name, birth, description)
  VALUES ('Gabriel', '1996-11-13', 'sóc jo')
  ")

  db.execute("CREATE TABLE `work` (
    `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
    `name` TEXT,
    `birth` DATE,
    `death` DATE,
    `description` TEXT
  );")
  db.execute("INSERT INTO work (name, birth, description)
  VALUES ('Gabriela', '1996-11-13', 'sóc jo')
  ")
