CREATE TABLE Courses(
    sectionNo VARCHAR(255) PRIMARY KEY NOT NULL,
    courseName VARCHAR(255) NOT NULL
);

CREATE TABLE Tutors(
    tutorNo VARCHAR(255) PRIMARY KEY NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR (255),
    street VARCHAR (255),
    city VARCHAR (255),
    zipcode INTEGER,
    telephoneNum VARCHAR(15) NOT NULL,
    UNIQUE (telephoneNum)
);

CREATE TABLE Offerings(
    registrationNo VARCHAR(255) PRIMARY KEY NOT NULL,
    tuitionFee INTEGER NOT NULL,
    termsOffered VARCHAR(255),
    timeOfDayOffered VARCHAR(255),
    numOfPlaces INTEGER,
    tutorNo VARCHAR(255),
    sectionNo VARCHAR(255) NOT NULL,
    UNIQUE(sectionNo),
    FOREIGN KEY (tutorNo) REFERENCES Tutors(tutorNo) ON DELETE SET NULL,
    FOREIGN KEY (sectionNo) REFERENCES Courses(sectionNo) ON DELETE CASCADE
);

CREATE TABLE Students(
    studentID INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR (255),
    street VARCHAR (255),
    city VARCHAR (255),
    zipcode INTEGER,
    telephoneNum VARCHAR(15) NOT NULL,
    registrationNo VARCHAR(255),
    UNIQUE (telephoneNum),
    FOREIGN KEY (registrationNo) REFERENCES Offerings(registrationNo) ON DELETE SET NULL
);
