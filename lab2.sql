create table Department (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100),
  office_location VARCHAR(100)
);

CREATE TABLE Faculty (
  faculty_id INT PRIMARY KEY,
  name VARCHAR(100),
  designation VARCHAR(100),
  email VARCHAR(100),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Course (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(100),
  credits INT,
  department_id INT,
  faculty_id INT,
  FOREIGN KEY (department_id) REFERENCES Department(department_id),
  FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

CREATE TABLE Student (
  student_id INT PRIMARY KEY,
  name VARCHAR(100),
  dob DATE,
  gender VARCHAR(10),
  contact VARCHAR(15),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

CREATE TABLE Enrollment (
  student_id INT,
  course_id INT,
  semester VARCHAR(20),
  grade VARCHAR(5),
  PRIMARY KEY (student_id, course_id),
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

