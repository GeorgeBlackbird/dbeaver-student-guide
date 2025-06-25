DROP TABLE IF EXISTS marks;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS learners;
DROP TABLE IF EXISTS lecturers;

CREATE TABLE lecturers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  contact_email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE learners (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  study_group VARCHAR(20)
);

CREATE TABLE marks (
  learner_id INT REFERENCES learners(id),
  subject_id INT REFERENCES subjects(id),
  score NUMERIC(3, 1),
  PRIMARY KEY (learner_id, subject_id)
);

INSERT INTO lecturers (name, surname, contact_email) VALUES
('Петр', 'Иванов', 'p.ivanov@university.com'),
('Светлана', 'Петрова', 's.petrova@university.com'),
('Михаил', 'Сидоров', 'm.sidorov@university.com');

INSERT INTO learners (name, surname, study_group) VALUES
('Анна', 'Смирнова', 'ПИ-11'),
('Сергей', 'Волков', 'ПИ-11'),
('Ирина', 'Лебедева', 'ПИ-12'),
('Андрей', 'Попов', 'ПИ-12');

INSERT INTO subjects (title, summary, lecturer_id) VALUES
('Введение в SQL', 'Основы языка структурированных запросов', 1),
('Теория графов', 'Изучение графов и их применение', 2);
('Frontend-разработка', 'Клиентская веб-разработка', 3);

INSERT INTO marks (learner_id, subject_id, score) VALUES
(1, 1, 5.0),
(1, 2, 4.0),
(2, 1, 4.5),
(3, 2, 4.0),
(3, 3, 5.0),
(4, 1, 3.5),
(4, 3, 4.0);