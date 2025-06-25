DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  group_name VARCHAR(20)
);

CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  teacher_id INT REFERENCES teachers(id)
);

CREATE TABLE enrollments (
  student_id INT REFERENCES students(id),
  course_id INT REFERENCES courses(id),
  grade NUMERIC(3, 1),
  PRIMARY KEY (student_id, course_id)
);

INSERT INTO teachers (first_name, last_name, email) VALUES
('Иван', 'Петров', 'i.petrov@college.com'),
('Мария', 'Сидорова', 'm.sidorova@college.com'),
('Алексей', 'Иванов', 'a.ivanov@college.com');

INSERT INTO students (first_name, last_name, group_name) VALUES
('Ольга', 'Кузнецова', 'ИСП-21'),
('Дмитрий', 'Васильев', 'ИСП-21'),
('Елена', 'Михайлова', 'ИСП-22'),
('Артем', 'Соколов', 'ИСП-22');

INSERT INTO courses (name, description, teacher_id) VALUES
('Основы баз данных', 'Введение в реляционное СУБД', 1),
('Алгоритмы и структуры данных', 'Базовые алгоритмы сортировки и поиска', 2),
('Веб-разработка', 'Создание сайтов с использованием HTML, CSS, JS', 3);

INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 4.5),
(1, 2, 5.0),
(2, 1, 4.0),
(3, 2, 3.5),
(3, 3, 5.0),
(4, 1, 4.0),
(4, 3, 4.5);