#is seed.rb meant to set the schema?
require 'sqlite3'
db = SQLite3::Database.new("db.db")
db.execute("DROP TABLE `people`")
db.execute("DROP TABLE `works`")
db.execute("DROP TABLE `work_types`")



db.execute("CREATE TABLE `people` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `birthplace` TEXT,
  `birth` DATE,
  `death` DATE,
  `description` TEXT
);")
db.execute("INSERT INTO people (name, birth, birthplace, description)
  VALUES ('Lluís Llach', '1948', 'Girona',
    'Músic, cantautor, escriptor i polític català. És precís entendre la seva oposició al règim franquista en relació a la seva orientació homosexual.')")

    db.execute("INSERT INTO people (name, birth, birthplace, description)
    VALUES ('Lluís Llach', '1948', 'Girona',
      'Músic, cantautor, escriptor i polític català. És precís entendre la seva oposició al règim franquista en relació a la seva orientació homosexual.')")

  db.execute("CREATE TABLE `works` (
    `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
    `name` TEXT,
    `birth` DATE,
    `death` DATE,
    `description` TEXT
  );")

  db.execute("CREATE TABLE `work_types` (
    `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
    `name` TEXT,
    `description` TEXT
  );")

  db.execute("INSERT INTO works (name, birth, description)
  VALUES ('Gabriela', '1996-11-13', 'sóc jo')
  ")

  db.execute("INSERT INTO work_types (name, description)
  VALUES ('Visual arts', 'Painting, sculpture, cinema, performance...'),
  ('Literature', 'Books, articles, narrative, essay...'), ('Asociation', '.') ")
