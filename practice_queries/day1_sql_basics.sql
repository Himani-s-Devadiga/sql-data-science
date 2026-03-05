-- DAY 1 SQL BASICS
-- Himani SQL Learning Journey

-- 1️⃣ CREATE TABLE: Department

CREATE TABLE department(
  dept_id INTEGER PRIMARY KEY,
  dept_name TEXT
);

-- Insert department data

INSERT INTO department VALUES
(1,'DataScience'),
(2,'AIML');

-- 2️⃣ CREATE TABLE: Employees

CREATE TABLE employees(
  emp_id INTEGER PRIMARY KEY,
  name TEXT,
  dept_id INTEGER,
  FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

-- Insert employee data

INSERT INTO employees VALUES
(101,'Himani',1),
(102,'Inchara',2),
(103,'Manya',1);

-- View employees table

SELECT * FROM employees;

-- 3️⃣ CREATE TABLE: Students

CREATE TABLE students(
  id INTEGER PRIMARY KEY,
  name TEXT,
  course TEXT,
  marks INTEGER
);

-- Insert students

INSERT INTO students VALUES
(1,'Arun','English',85),
(2,'Varun','Hindi',90),
(3,'Rohit','Social',79);

-- 4️⃣ CONSTRAINTS EXAMPLE

CREATE TABLE users(
  user_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  age INTEGER CHECK(age >= 18),
  country TEXT DEFAULT 'India'
);

-- Insert sample users

INSERT INTO users (name,email,age)
VALUES
('Himani','himani@gmail.com',21),
('Inchara','inchara@gmail.com',22);

-- View users table

SELECT * FROM users;

-- View students

SELECT * FROM students;
