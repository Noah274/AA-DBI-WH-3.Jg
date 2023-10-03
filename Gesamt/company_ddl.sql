DROP TABLE CourseParticipants;
DROP TABLE Courses;
DROP TABLE MemberTasks;
DROP TABLE Tasks;
DROP TABLE AppointmentRooms;
DROP TABLE Appointments;
DROP TABLE Room;
DROP TABLE MemberTickets;
DROP TABLE Ticket;
DROP TABLE Department;
DROP TABLE MemberRoles;
DROP TABLE Roles;
DROP TABLE Members;
DROP TABLE DepartmentsFederalState;
DROP TABLE FederalState;
DROP TABLE MemberJob;
DROP TABLE Job;


CREATE TABLE Members (
    Member_ID NUMBER,
    FirstName VARCHAR(200),
    LastName VARCHAR(200),
    Birthdate DATE,
    CONSTRAINT PK_Members PRIMARY KEY (Member_ID)
);

CREATE TABLE Roles (
    Role_ID NUMBER,
    Role VARCHAR(200),
    CONSTRAINT PK_Roles PRIMARY KEY (Role_ID)
);

CREATE TABLE MemberRoles (
    Member_ID NUMBER,
    Role_ID NUMBER,
    CONSTRAINT PK_MemberRoles PRIMARY KEY (Member_ID, Role_ID),
    CONSTRAINT FK_MemberRoles_Members FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    CONSTRAINT FK_MemberRoles_Roles FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)
);

CREATE TABLE Department (
    Department_ID NUMBER,
    DepartmentName VARCHAR(200),
    CONSTRAINT PK_Department PRIMARY KEY (Department_ID)
);

CREATE TABLE FederalState (
    Location_ID NUMBER,
    LocationName VARCHAR(200),
    CONSTRAINT PK_FederalState PRIMARY KEY (Location_ID)
);

CREATE TABLE DepartmentsFederalState (
    Department_ID NUMBER,
    Location_ID NUMBER,
    CONSTRAINT PK_DepartmentsFederalState PRIMARY KEY (Department_ID, Location_ID),
    CONSTRAINT FK_DepartmentsFederalState_Department FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
    CONSTRAINT FK_DepartmentsFederalState_Location FOREIGN KEY (Location_ID) REFERENCES FederalState(Location_ID)
);

CREATE TABLE Ticket (
    Ticket_ID NUMBER,
    CONSTRAINT PK_Ticket PRIMARY KEY (Ticket_ID)
);

CREATE TABLE MemberTickets (
    Member_ID NUMBER,
    Ticket_ID NUMBER,
    CONSTRAINT PK_MemberTickets PRIMARY KEY (Member_ID, Ticket_ID),
    CONSTRAINT FK_MemberTickets_Members FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    CONSTRAINT FK_MemberTickets_Tickets FOREIGN KEY (Ticket_ID) REFERENCES Ticket(Ticket_ID)
);

CREATE TABLE Job (
    Job_ID NUMBER,
    JobType VARCHAR(200),
    CONSTRAINT PK_Job PRIMARY KEY (Job_ID)
);

CREATE TABLE MemberJob(
    Member_ID NUMBER,
    Job_ID NUMBER,
    CONSTRAINT PK_MemberJob PRIMARY KEY (Member_ID, Job_ID),
    CONSTRAINT FK_MemberJob_Members FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    CONSTRAINT FK_MemberJob_Job FOREIGN KEY (Job_ID) REFERENCES Job(Job_ID)
);

CREATE TABLE Room (
    Room_ID NUMBER,
    RoomName VARCHAR(200),
    CONSTRAINT PK_Room PRIMARY KEY (Room_ID)
);

CREATE TABLE Appointments (
    Appointment_ID NUMBER,
    Reason VARCHAR(200),
    Book_Start DATE,
    Book_End DATE,
    CONSTRAINT PK_Appointments PRIMARY KEY (Appointment_ID)
);

CREATE TABLE MembersDepartment(
    Member_ID NUMBER,
    Department_ID NUMBER,
    CONSTRAINT PK_MembersDepartment PRIMARY KEY (Member_ID, Department_ID),
    CONSTRAINT FK_MembersDepartment_Members FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    CONSTRAINT FK_MembersDepartment_Department FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

CREATE TABLE AppointmentTickets (
    Appointment_ID NUMBER,
    Ticket_ID NUMBER,
    CONSTRAINT PK_AppointmentTickets PRIMARY KEY (Appointment_ID, Ticket_ID),
    CONSTRAINT FK_AppointmentTickets_Appointments FOREIGN KEY (Appointment_ID) REFERENCES Appointments(Appointment_ID),
    CONSTRAINT FK_AppointmentTickets_Tickets FOREIGN KEY (Ticket_ID) REFERENCES Ticket(Ticket_ID)
);

CREATE TABLE AppointmentRooms (
    Appointment_ID NUMBER,
    Room_ID NUMBER,
    CONSTRAINT PK_AppointmentRooms PRIMARY KEY (Appointment_ID, Room_ID),
    CONSTRAINT FK_AppointmentRooms_Appointments FOREIGN KEY (Appointment_ID) REFERENCES Appointments(Appointment_ID),
    CONSTRAINT FK_AppointmentRooms_Room FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);

CREATE TABLE Tasks (
    Task_ID NUMBER,
    Deadline DATE,
    Message VARCHAR(200),
    FinishDate DATE,
    CONSTRAINT PK_Tasks PRIMARY KEY (Task_ID)
);

CREATE TABLE MemberTasks (
    Member_ID NUMBER,
    Task_ID NUMBER,
    CONSTRAINT PK_MemberTasks PRIMARY KEY (Member_ID, Task_ID),
    CONSTRAINT FK_MemberTasks_Members FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    CONSTRAINT FK_MemberTasks_Tasks FOREIGN KEY (Task_ID) REFERENCES Tasks(Task_ID)
);

CREATE TABLE Courses (
    Course_ID NUMBER,
    CourseDate DATE,
    Topic VARCHAR(200),
    CONSTRAINT PK_Courses PRIMARY KEY (Course_ID)
);

CREATE TABLE CourseParticipants (
    Course_ID NUMBER,
    Member_ID NUMBER,
    CONSTRAINT PK_CourseParticipants PRIMARY KEY (Course_ID, Member_ID),
    CONSTRAINT FK_CourseParticipants_Courses FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID),
    CONSTRAINT FK_CourseParticipants_Members FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);
