SELECT StudentID AS Roll_No,
       Name AS Student_Name,
       DepartmentID AS Dept_ID,
       Gender AS Gender,
       DOB AS Date_of_Birth
FROM Student;

SELECT StudentID AS Roll_No,
       Name AS Student_Name,
       DepartmentID AS Dept_ID
FROM Student;

SELECT FacultyID AS Faculty_ID,
       Name AS Faculty_Name,
       Designation AS Job_Title,
       Email AS Email_Address
FROM Faculty;

SELECT CourseID AS Course_ID,
       CourseName AS Course_Name,
       Credits AS Course_Credits
FROM Course;

SELECT EnrollmentID AS Enroll_ID,
       StudentID AS Roll_No,
       CourseID AS Course_ID,
       Semester AS Semester_No,
       Grade AS Grade
FROM Enrollment;

SELECT * FROM Student WHERE DepartmentID = 'D101';
SELECT * FROM Student WHERE Gender = 'Female';
SELECT * FROM Faculty WHERE Designation = 'Assistant Professor';
SELECT * FROM Faculty WHERE DepartmentID = 'D102';
SELECT * FROM Course WHERE Credits >= 4;
SELECT * FROM Student WHERE DOB > DATE '2003-01-01';
SELECT * FROM Enrollment WHERE Semester = 4;

SELECT * FROM Student ORDER BY Name ASC;
SELECT * FROM Student ORDER BY DOB DESC;
SELECT * FROM Faculty ORDER BY Designation ASC;
SELECT * FROM Course ORDER BY Credits DESC;

SELECT * FROM Student FETCH FIRST 3 ROWS ONLY;
SELECT * FROM Course FETCH FIRST 5 ROWS ONLY;

SELECT Name,
       FLOOR(MONTHS_BETWEEN(SYSDATE, DOB)/12) AS Age
FROM Student;

SELECT CourseName,
       Credits + 1 AS Updated_Credits
FROM Course;

SELECT EnrollmentID,
       StudentID,
       CourseID,
       Semester,
       Grade AS Final_Grade
FROM Enrollment;

SELECT Name,
       EXTRACT(YEAR FROM DOB) AS Birth_Year
FROM Student;

SELECT Name,
       SUBSTR(Email, INSTR(Email, '@')+1) AS Email_Domain
FROM Faculty;
