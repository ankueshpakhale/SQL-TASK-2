
-- Create the Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    EnrollmentDate DATE,
	category varchar (50),
	obtainedmarks int
);

-- Insert values into Students table
INSERT INTO Students (StudentID, FirstName, LastName, EnrollmentDate,category,obtainedmarks) 
VALUES
(1,'simran', ' chandra', '2022-09-01','sc',670),
(2,'himanshu', 'linga', '2023-01-15','open',800),
(3,'pralay', 'yesankar', '2021-08-23','sbc',768),
(4,'kishan','tiwari','2021-07-15','obc',852);

select * from Students

-- Create the Courses table
create table courses(
	course_id int primary key,
	course_name varchar,
	course_duration int,
	course_fees int,
	credits int
);


-- Insert values into Courses table
INSERT INTO Courses (course_id,course_name,course_duration,course_fees,Credits) 
VALUES
(101, 'Mathematics',2,50000,40),
(102, 'Biology',3,40000,30),
(103, 'Computer Science',4,135000,50);

select * from Courses 

-- Create the Enrollments table
CREATE TABLE Enrollments (
    enrollment_id int primary key,
	enrollment_mode varchar,
	StudentID int,
	course_id int,
	enrollment_date date,
	foreign key (StudentID) references students(StudentID ),
	foreign key (course_id) references courses (course_id )

);
	
-- Insert values into Enrollments table
INSERT INTO Enrollments (enrollment_id,enrollment_mode,StudentID, Course_id,enrollment_date )
VALUES
(111,'online',1, 101, '2022-09-02'),
(222,'offline', 2, 103, '2022-09-02'),
(333,'offline', 3, 102, '2023-01-16'),
(444,'online', 4, 101, '2021-08-24');

select * from Enrollments 