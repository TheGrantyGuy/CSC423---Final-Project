INSERT INTO Courses (sectionNo, courseName) VALUES ('SL10', 'Spanish Level 1');
INSERT INTO Courses (sectionNo, courseName) VALUES ('FL20', 'French Level 1');
INSERT INTO Courses (sectionNo, courseName) VALUES ('DA30', 'Introduction to Digging Up Your Ancestors');
INSERT INTO Courses (sectionNo, courseName) VALUES ('MC40', 'Calculus 2');
INSERT INTO Courses (sectionNo, courseName) VALUES ('DA20', 'Introduction to Digging Up Your Ancestors');

INSERT INTO Tutors (tutorNo, first_name, last_name, street, city, zipcode, telephoneNum) VALUES ('T1', 'Bob', 'Jefferson', '115th PL', 'Everett', 98201, '360-445-9275');
INSERT INTO Tutors (tutorNo, first_name, last_name, street, city, zipcode, telephoneNum) VALUES ('T2', 'George', 'Lindberg', 'Broadway Ave', 'Everett', 98201, '360-121-5577');
INSERT INTO Tutors (tutorNo, first_name, last_name, street, city, zipcode, telephoneNum) VALUES ('T3', 'Tiffany', 'Allaway', 'Green St.', 'Bothell', 98202, '425-781-5545');
INSERT INTO Tutors (tutorNo, first_name, last_name, street, city, zipcode, telephoneNum) VALUES ('T4', 'Alice', 'Jennings', '45th Ave SE', 'Woodinville', 98204, '425-123-6789');
INSERT INTO Tutors (tutorNo, first_name, last_name, street, city, zipcode, telephoneNum) VALUES ('T5', 'Rachel', 'Newman', 'Colby Way', 'Everett', 98201, '360-778-9498');

INSERT INTO Offerings(registrationNo, tuitionFee, termsOffered, timeOfDayOffered, numOfPlaces, tutorNo, sectionNo) VALUES ('R1', 3000, '25 weeks/Oct-Mar', 'Monday Evenings', 20, 'T3', 'SL10');
INSERT INTO Offerings(registrationNo, tuitionFee, termsOffered, timeOfDayOffered, numOfPlaces, tutorNo, sectionNo) VALUES ('R2', 1200, '8 weeks/Jan-Mar', 'Tuesday Evenings', 30, 'T1', 'FL20');
INSERT INTO Offerings(registrationNo, tuitionFee, termsOffered, timeOfDayOffered, numOfPlaces, tutorNo, sectionNo) VALUES ('R3', 2000, '12 weeks/Sept-Dec', 'Wednesday Mornings', 25, 'T2', 'DA30');
INSERT INTO Offerings(registrationNo, tuitionFee, termsOffered, timeOfDayOffered, numOfPlaces, tutorNo, sectionNo) VALUES ('R4', 1200, '8 weeks/Oct-Dec', 'Thursday Evenings', 15, 'T4', 'MC40');
INSERT INTO Offerings(registrationNo, tuitionFee, termsOffered, timeOfDayOffered, numOfPlaces, tutorNo, sectionNo) VALUES ('R5', 2000, '12 weeks Jan-Apr', 'Friday Mornings', 19, 'T5', 'DA20');

INSERT INTO Students (studentID, first_name, last_name, street, city, zipcode, telephoneNum, registrationNo) VALUES (905952, 'Mary', 'Lamb', '145th Dr.', 'Snohomish', 98218, '425-570-8232', 'R1');
INSERT INTO Students (studentID, first_name, last_name, street, city, zipcode, telephoneNum, registrationNo) VALUES (914235, 'Gregory', 'Reed', 'Admiralty Way', 'Everett', 98217, '360-444-5670', 'R2');
INSERT INTO Students (studentID, first_name, last_name, street, city, zipcode, telephoneNum, registrationNo) VALUES (989735, 'Timothy', 'Yip', 'Lowell St.', 'Snohomish', 98218, '425-433-3214', 'R3');
INSERT INTO Students (studentID, first_name, last_name, street, city, zipcode, telephoneNum, registrationNo) VALUES (926272, 'Jade', 'Gardner', '347th PL', 'Bothell', 98202, '425-773-9232', 'R4');
INSERT INTO Students (studentID, first_name, last_name, street, city, zipcode, telephoneNum, registrationNo) VALUES (918744, 'Bill', 'Werther', 'Freedom Ln.', 'Everett', 98201, '360-777-9988', 
