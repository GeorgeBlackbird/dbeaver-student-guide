DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS projects;

CREATE TABLE projects (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  deadline DATE
);

CREATE TABLE tasks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  project_id INTEGER REFERENCES projects(id),
  description TEXT NOT NULL,
  status TEXT NOT NULL
);

INSERT INTO projects (name, deadline) VALUES ('Методичка по DBeaver', '2025-09-01');
INSERT INTO tasks (project_id, description, status) VALUES (1, 'Написать главу 1', 'done'), (1, 'Создать БД', 'in_progress');