DROP TABLE IF EXISTS milestones;
DROP TABLE IF EXISTS initiatives;

CREATE TABLE initiatives (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  due_date DATE
);

CREATE TABLE milestones (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  initiative_id INTEGER REFERENCES initiatives(id),
  summary TEXT NOT NULL,
  state TEXT NOT NULL
);

INSERT INTO initiatives (title, due_date) VALUES ('Курсовая работа', '2025-10-15');
INSERT INTO milestones (initiative_id, summary, state) VALUES (1, 'Собрать литературу', 'finished'), (1, 'Написать введение', 'doing');