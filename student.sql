-- QUESTION 1: CREATE THE STUDENT TABLE

CREATE TABLE IF NOT EXISTS student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);


-- QUESTION 2: INSERT THREE STUDENT RECORDS

INSERT INTO student (id, fullName, age)
VALUES
    (1, 'zamzam jirow', 19),
    (2, 'salma ibrahim', 20),
    (3, 'ahmed', 22)
ON DUPLICATE KEY UPDATE
    fullName = VALUES(fullName),
    age = VALUES(age);


-- QUESTION 3: UPDATE THE AGE OF THE STUDENT WITH ID 2 TO 20

UPDATE student
SET age = 20
WHERE id = 2;


-- VERIFY THE RESULTS

SELECT * FROM student;