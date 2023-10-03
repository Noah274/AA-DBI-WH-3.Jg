CREATE TABLE Members (
    Member_ID NUMBER PRIMARY KEY,
    FirstName VARCHAR(200),
    LastName VARCHAR(200),
    Birthdate DATE,
    Role NUMBER,
    Ticket NUMBER,
    Department NUMBER,
    Courses NUMBER,
    FOREIGN KEY (Role) REFERENCES Roles (Role_ID),
    FOREIGN KEY (Ticket) REFERENCES Ticket (Ticket_ID),
    FOREIGN KEY (Department) REFERENCES Department (Department_ID),
    FOREIGN KEY (Courses) REFERENCES Courses (Course_ID)
);

CREATE TABLE Roles (
    Role_ID NUMBER PRIMARY KEY,
    Role VARCHAR(200),
    Manager_ID NUMBER,
    Member NUMBER,
    FOREIGN KEY (Manager_ID) REFERENCES Roles (Role_ID),
    FOREIGN KEY (Member) REFERENCES Members (Member_ID)
);

CREATE TABLE Department (
    Department_ID NUMBER PRIMARY KEY,
    DepartmentName VARCHAR(200),
    Location NUMBER,
    FOREIGN KEY (Location) REFERENCES Location (Location_ID)
);

CREATE TABLE Location (
    Location_ID NUMBER PRIMARY KEY,
    LocationName VARCHAR(200),
    Department NUMBER,
    FOREIGN KEY (Department) REFERENCES Department (Department_ID)
);

CREATE TABLE Ticket (
    Ticket_ID NUMBER PRIMARY KEY,
    Member NUMBER,
    Appointment NUMBER,
    Task NUMBER,
    FOREIGN KEY (Member) REFERENCES Members (Member_ID),
    FOREIGN KEY (Appointment) REFERENCES Appointments (Appointment_ID),
    FOREIGN KEY (Task) REFERENCES Tasks (Task_ID)
);

CREATE TABLE Room (
    Room_ID NUMBER PRIMARY KEY,
    Appointment NUMBER,
    RoomName VARCHAR(200),
    FOREIGN KEY (Appointment) REFERENCES Appointments (Appointment_ID)
);

CREATE TABLE Appointments (
    Appointment_ID NUMBER PRIMARY KEY,
    Reason VARCHAR(200),
    Book_Start DATE,
    Book_End DATE,
    Ticket NUMBER,
    Room NUMBER,
    FOREIGN KEY (Ticket) REFERENCES Ticket (Ticket_ID),
    FOREIGN KEY (Room) REFERENCES Room (Room_ID)
);

CREATE TABLE Tasks (
    Task_ID NUMBER PRIMARY KEY,
    Deadline DATE,
    Message VARCHAR(200),
    Member NUMBER,
    FinishDate DATE,
    Ticket NUMBER,
    FOREIGN KEY (Member) REFERENCES Members (Member_ID),
    FOREIGN KEY (Ticket) REFERENCES Ticket (Ticket_ID)
);

CREATE TABLE Courses (
    Course_ID NUMBER PRIMARY KEY,
    Participant NUMBER,
    Instructor NUMBER,
    Date DATE,
    Topic VARCHAR(200),
    FOREIGN KEY (Participant) REFERENCES Members (Member_ID),
    FOREIGN KEY (Instructor) REFERENCES Members (Member_ID)
);



INSERT INTO Appointments (Appointment_ID, Reason, Book_Start, Book_End, Ticket, Room)
VALUES (1, 'Meeting', TO_DATE('2023-10-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-05 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, NULL);

INSERT INTO Tasks (Task_ID, Deadline, Message, Member, FinishDate, Ticket)
VALUES (1, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 'Complete report', 1, NULL, NULL);

INSERT INTO Courses (Course_ID, Participant, Instructor, Date, Topic)
VALUES (1, 1, 2, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'Database Management');