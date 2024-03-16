CREATE TABLE courses (
    course_id INT primary key,
    course_name VARCHAR(100),
    course_fees int
);

Insert into courses values (110, 'python',1000);
Insert into courses values(111, 'c++',7000);
Insert into courses values(112, 'java',9000);
Insert into courses values(113, 'windows',5000);
Insert into courses values(114, 'linux',3000);
Insert into courses values(115, 'web',8000);
Insert into courses values(116, 'css',11000);
Insert into courses values(117, 'uiux',12000);
Insert into courses values(118, 'sql',18000);
Insert into courses values(119, 'photoshop',1500);
Insert into courses values(120, 'datascience',1800);
Insert into courses values(121, 'dataengineer',1900);
Insert into courses values(122, 'machinelearning',10000);
Insert into courses values(123, 'cybersecurity',1400);
Insert into courses values(124, 'tableau',13000);
Insert into courses values(125, 'Blockchain',1200);
Insert into courses values(126, 'Backend Development',1400);
Insert into courses values(127, 'iOS App',1500);
Insert into courses values(128, 'NLP',1020);
Insert into courses values(129, 'GraphQL API',2200);
Insert into courses values(130, 'DevOps',3400);
Insert into courses values(131, 'Ethical Hacking',5600);
Insert into courses values(132, 'Frontend',5760);
Insert into courses values(133, 'Cryptocurrency',8900);
Insert into courses values(134, 'ITIL',78000);
Insert into courses values(135, 'Angular.js',2000);
Insert into courses values(136, 'Network Design',34000);
Insert into courses values(137, 'SDLC',7600);
Insert into courses values(138, 'MDM',5900);
Insert into courses values(139, 'SIEM',2000);
Insert into courses values(140, 'Next.js',2300);
Insert into courses values(141, 'powerbi',3400);
Insert into courses values(142, 'Cloud Migration',6100);
select *from courses;

CREATE TABLE students (
    student_id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    course_id int,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO students (first_name, last_name, course_id) 
VALUES 
('Jason', 'Joy', 110),
('Albert', 'William', 111),
('Adam', 'Smith', Null),
('Kevin', 'Owens', 113),
('James', 'Andreson', 114),
('Ryan', 'Walker', 115),
('Tara', 'Price', 116),
('Benjamin', 'Butler', 117),
('Samantha', 'Simmons', 118),
('Tyler', 'Foster', 119),
('Michelle', 'Barnes', 120),
('Christopher', 'Long', 121),
('Courtney', 'Ramirez', 122),
('Emily', 'Lopez', 123),
('Justin', 'Thompson', 124),
('Amanda', 'Scott', Null),
('Eric', 'Carter', 126),
('Rachel', 'Phillips', 127),
('Laura', 'Martinez', 128),
('Brian', 'Rodriguez', 129),
('Kimberly', 'Evans', 130),
('Patrick', 'Murphy', 131),
('Lauren', 'Rivera', 132),
('Timothy', 'Reed', Null),
('Heather', 'Flores', 134),
('Nathan', 'Cook', 135),
('Brittany', 'Ward', 136),
('Gregory', 'Sanchez', 137),
('Angela', 'Patel', 138),
('Jeremy', 'Ross', 139);
select *from students;


CREATE TABLE enrollment (
    enrollment_id INT auto_increment PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollment (student_id, course_id)
VALUES 
(1, 110),
(2, 111),
(3, null),
(4, 113),
(4, 114),
(6, 115),
(7, 116),
(8, 117),
(9, 118),
(9, 119),
(11, 120),
(12, 121),
(13, 122),
(14, 123),
(15, 124),
(16, null),
(17, 126),
(18, 127),
(19, 128),
(19, 129),
(19, 130),
(22, 131),
(23, 132),
(24, null),
(25, 134),
(26, 135),
(27, 136),
(28, 137),
(28, 138),
(30, 139);
select *from enrollment;

CREATE TABLE instructors (
    instructor_id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO instructors (first_name, last_name, email)
VALUES 
('Justin', 'Thompson', 'justin.thompson@example.com'),
('Amanda', 'Scott', 'amanda.scott@example.com'),
('Eric', 'Carter', 'eric.carter@example.com'),
('Rachel', 'Phillips', 'rachel.phillips@example.com'),
('Kevin', 'Wright', 'kevin.wright@example.com'),
('Laura', 'Martinez', 'laura.martinez@example.com'),
('Brian', 'Rodriguez', 'brian.rodriguez@example.com'),
('Kimberly', 'Evans', 'kimberly.evans@example.com'),
('Patrick', 'Murphy', 'patrick.murphy@example.com'),
('Lauren', 'Rivera', 'lauren.rivera@example.com'),
('Timothy', 'Reed', 'timothy.reed@example.com'),
('Heather', 'Flores', 'heather.flores@example.com'),
('Nathan', 'Cook', 'nathan.cook@example.com'),
('Brittany', 'Ward', 'brittany.ward@example.com'),
('Gregory', 'Sanchez', 'gregory.sanchez@example.com'),
('Angela', 'Patel', 'angela.patel@example.com'),
('Jeremy', 'Ross', 'jeremy.ross@example.com'),
('Melissa', 'Bennett', 'melissa.bennett@example.com'),
('Alexander', 'Bailey', 'alexander.bailey@example.com'),
('Christina', 'Diaz', 'christina.diaz@example.com'),
('Sean', 'Barnes', 'sean.barnes@example.com'),
('Tara', 'Price', 'tara.price@example.com'),
('Benjamin', 'Butler', 'benjamin.butler@example.com'),
('Samantha', 'Simmons', 'samantha.simmons@example.com'),
('Tyler', 'Foster', 'tyler.foster@example.com'),
('Michelle', 'Barnes', 'michelle.barnes@example.com'),
('Christopher', 'Long', 'christopher.long@example.com'),
('Courtney', 'Ramirez', 'courtney.ramirez@example.com'),
('Ryan', 'Foster', 'ryan.foster@example.com'),
('Emily', 'Lopez', 'emily.lopez@example.com');
select *from instructors;

select count(distinct student_id) as unique_enrollment_count
from enrollment;

SELECT c.course_name
FROM courses c
LEFT JOIN enrollment e ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

select student_id,first_name,course_id from students;

SELECT student_id, COUNT(course_id) AS num_courses_purchased
FROM enrollment
GROUP BY student_id
HAVING COUNT(course_id) = (
    SELECT MIN(num_courses)
    FROM (
        SELECT COUNT(course_id) AS num_courses
        FROM enrollment
        GROUP BY student_id
    ) AS min_courses
);

select a.*,
rank()over(order by course_fees) as course_rank
from courses a;