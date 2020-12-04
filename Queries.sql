--Query 1
--List every offering that has a cost greater than 1500 and their corresponding course name. 
--Display the registrationNo, tuitionFee, sectionNo, and courseName.

SELECT registrationNo, tuitionFee, o.sectionNo, courseName
FROM Courses r, Offerings o
WHERE r.sectionNo = o.sectionNo AND tuitionFee > 1500;

--Query 2
--Find the name of the course that every student is taking and at what time of day it takes place. 
--Display the studentID, first_name, last_name, courseName, sectionNo, and timeOfDayOffered.

SELECT studentID, first_name, last_name, courseName, o.sectionNo, timeOfDayOffered
FROM Students s, Offerings o, Courses r
WHERE s.registrationNo = o.registrationNo AND o.sectionNo = r.sectionNo;

--Query 3
--List all offerings that are 25 weeks long. Display all the information available 
--for each offering. 

SELECT *
FROM Offerings
WHERE termsOffered LIKE '25 weeks%';

--Query 4
--Show the number of classes that each tutor is teaching at the Adult Education Department. 
--Display their tutorNo and the number of courses they are teaching.

SELECT t.tutorNo, COUNT(sectionNo) AS numCourses
FROM Tutors t, Offerings o
WHERE t.tutorNo = o.tutorNo
GROUP BY o.tutorNo;

--Query 5
--Find all the tutors that are teaching classes on Mondays or Wednesdays. 
--Display their tutorNo, first_name, last_name, sectionNo, and timeOfDayOffered.

SELECT t.tutorNo, first_name, last_name, sectionNo, timeOFDayOffered
FROM Tutors t, Offerings o
WHERE t.tutorNo = o.tutorNo AND (timeOfDayOffered LIKE 'Monday%' OR timeOfDayOffered LIKE 'Wednesday%');
