INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (1, 'John', 'Doe', to_date('1980-01-1', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (2, 'Jane', 'Doe', to_date('1985-02-01', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (3, 'Alice', 'Smith', to_date('1990-03-01', 'YYYY-MM-DD'));

INSERT INTO Roles (Role_ID, Role) VALUES (1, 'Admin');
INSERT INTO Roles (Role_ID, Role) VALUES (2, 'User');

INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (1, 1);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (2, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (3, 2);

INSERT INTO Department (Department_ID, DepartmentName) VALUES (1, 'HR');
INSERT INTO Department (Department_ID, DepartmentName) VALUES (2, 'Finance');
INSERT INTO Department (Department_ID, DepartmentName) VALUES (3, 'IT');

INSERT INTO FederalState (Location_ID, LocationName) VALUES (1, 'Upper Austria');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (2, 'Lower Austria');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (3, 'Vienna');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (4, 'Carinthia');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (5, 'Salzburg');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (6, 'Styria');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (7, 'Tyrol');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (8, 'Vorarlberg');

INSERT INTO DepartmentsFederalState (Department_ID, Location_ID) VALUES (1, 1);
INSERT INTO DepartmentsFederalState (Department_ID, Location_ID) VALUES (2, 2);
INSERT INTO DepartmentsFederalState (Department_ID, Location_ID) VALUES (3, 3);

INSERT INTO Ticket (Ticket_ID) VALUES (1);
INSERT INTO Ticket (Ticket_ID) VALUES (2);
INSERT INTO Ticket (Ticket_ID) VALUES (3);

INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (1, 1);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (2, 2);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (3, 3);

INSERT INTO Job (Job_ID, JobType) VALUES (1, 'Engineer');
INSERT INTO Job (Job_ID, JobType) VALUES (2, 'Analyst');
INSERT INTO Job (Job_ID, JobType) VALUES (3, 'Facility Worker');

INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (1, 1);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (2, 2);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (3, 3);

INSERT INTO Room (Room_ID, RoomName) VALUES (1, 'Meeting Room A');
INSERT INTO Room (Room_ID, RoomName) VALUES (2, 'Meeting Room B');
INSERT INTO Room (Room_ID, RoomName) VALUES (3, 'Meeting Room C');

INSERT INTO Appointments (Appointment_ID, Reason, Book_Start, Book_End) VALUES (1, 'Team Meeting', TO_DATE('2023-11-01 8:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-11-01 9:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (1, 1);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (2, 2);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (3, 3);

INSERT INTO AppointmentTickets (Appointment_ID, Ticket_ID) VALUES (1, 1);

INSERT INTO AppointmentRooms (Appointment_ID, Room_ID) VALUES (1, 1);

INSERT INTO Tasks (Task_ID, Deadline, Message, FinishDate) VALUES (1, TO_DATE('2023-11-10', 'YYYY-MM-DD'), 'Finish Report', NULL);

INSERT INTO MemberTasks (Member_ID, Task_ID) VALUES (1, 1);

INSERT INTO Courses (Course_ID, CourseDate, Topic) VALUES (1, TO_DATE('2023-12-10', 'YYYY-MM-DD'), 'SQL Basics');

INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (1, 1);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (1, 2);

COMMIT;