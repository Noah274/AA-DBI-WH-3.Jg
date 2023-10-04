-- Members
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (1, 'John', 'Doe', to_date('1980-01-1', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (2, 'Jane', 'Doe', to_date('1985-02-01', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (3, 'Alice', 'Smith', to_date('1990-03-01', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (4, 'Eva', 'Brown', to_date('1992-04-12', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (5, 'Tom', 'Williams', to_date('1979-11-30', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (6, 'Sarah', 'Johnson', to_date('1988-06-15', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (7, 'Michael', 'Clark', to_date('1983-09-23', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (8, 'Sophia', 'Garcia', to_date('1995-11-08', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (9, 'Liam', 'Wilson', to_date('1987-04-20', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (10, 'Olivia', 'Lee', to_date('1991-12-03', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (11, 'Ethan', 'Thomas', to_date('1994-08-17', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (12, 'Emma', 'White', to_date('1986-07-10', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (13, 'William', 'Jones', to_date('1993-05-25', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (14, 'Oliver', 'Davis', to_date('1990-12-19', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (15, 'Charlotte', 'Anderson', to_date('1985-10-04', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (16, 'Mia', 'Martinez', to_date('1989-09-02', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (17, 'Lucas', 'Harris', to_date('1983-04-08', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (18, 'Sophie', 'Jackson', to_date('1997-03-14', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (19, 'Benjamin', 'Wilson', to_date('1984-02-27', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (20, 'Amelia', 'Thompson', to_date('1996-11-22', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (21, 'Alexander', 'Garcia', to_date('1981-08-16', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (22, 'Harper', 'Martin', to_date('1982-07-09', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (23, 'Daniel', 'Robinson', to_date('1988-06-15', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (24, 'Lily', 'Clark', to_date('1992-05-24', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (25, 'Matthew', 'Rodriguez', to_date('1995-04-21', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (26, 'Emily', 'Lewis', to_date('1989-03-13', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (27, 'Aiden', 'Lee', to_date('1993-02-26', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (28, 'Madison', 'Walker', to_date('1984-01-28', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (29, 'Henry', 'Hall', to_date('1990-12-18', 'YYYY-MM-DD'));
INSERT INTO Members (Member_ID, FirstName, LastName, Birthdate) VALUES (30, 'Ava', 'Allen', to_date('1985-11-21', 'YYYY-MM-DD'));

-- Roles
INSERT INTO Roles (Role_ID, Role) VALUES (1, 'Admin');
INSERT INTO Roles (Role_ID, Role) VALUES (2, 'User');
INSERT INTO Roles (Role_ID, Role) VALUES (3, 'Guest');

-- MemberRoles
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (1, 1);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (2, 1);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (3, 1);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (4, 1);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (5, 1);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (6, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (7, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (8, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (9, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (10, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (11, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (12, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (13, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (14, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (15, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (16, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (17, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (18, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (19, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (20, 2);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (21, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (22, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (23, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (24, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (25, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (26, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (27, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (28, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (29, 3);
INSERT INTO MemberRoles (Member_ID, Role_ID) VALUES (30, 3);

-- Department
INSERT INTO Department (Department_ID, DepartmentName) VALUES (1, 'HR');
INSERT INTO Department (Department_ID, DepartmentName) VALUES (2, 'Finance');
INSERT INTO Department (Department_ID, DepartmentName) VALUES (3, 'IT');
INSERT INTO Department (Department_ID, DepartmentName) VALUES (4, 'Marketing');
INSERT INTO Department (Department_ID, DepartmentName) VALUES (5, 'Sales');

-- FederalState
INSERT INTO FederalState (Location_ID, LocationName) VALUES (1, 'Upper Austria');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (2, 'Lower Austria');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (3, 'Vienna');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (4, 'Carinthia');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (5, 'Salzburg');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (6, 'Styria');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (7, 'Tyrol');
INSERT INTO FederalState (Location_ID, LocationName) VALUES (8, 'Vorarlberg');

-- DepartmentsFederalState
INSERT INTO DepartmentsFederalState (Department_ID, Location_ID) VALUES (1, 1);
INSERT INTO DepartmentsFederalState (Department_ID, Location_ID) VALUES (2, 1);
INSERT INTO DepartmentsFederalState (Department_ID, Location_ID) VALUES (3, 1);
INSERT INTO DepartmentsFederalState (Department_ID, Location_ID) VALUES (4, 3);
INSERT INTO DepartmentsFederalState (Department_ID, Location_ID) VALUES (5, 3);

-- Ticket
INSERT INTO Ticket (Ticket_ID) VALUES (1);
INSERT INTO Ticket (Ticket_ID) VALUES (2);
INSERT INTO Ticket (Ticket_ID) VALUES (3);
INSERT INTO Ticket (Ticket_ID) VALUES (4);
INSERT INTO Ticket (Ticket_ID) VALUES (5);

-- MemberTickets
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (1, 1);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (2, 2);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (3, 3);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (4, 4);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (5, 5);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (6, 1);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (7, 2);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (8, 3);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (9, 4);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (10, 5);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (11, 1);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (12, 2);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (13, 3);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (14, 4);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (15, 5);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (16, 1);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (17, 2);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (18, 3);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (19, 4);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (20, 5);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (21, 1);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (22, 2);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (23, 3);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (24, 4);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (25, 5);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (26, 1);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (27, 2);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (28, 3);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (29, 4);
INSERT INTO MemberTickets (Member_ID, Ticket_ID) VALUES (30, 5);



-- Job
INSERT INTO Job (Job_ID, JobType) VALUES (1, 'Engineer');
INSERT INTO Job (Job_ID, JobType) VALUES (2, 'Analyst');
INSERT INTO Job (Job_ID, JobType) VALUES (3, 'Facility Worker');
INSERT INTO Job (Job_ID, JobType) VALUES (4, 'Designer');
INSERT INTO Job (Job_ID, JobType) VALUES (5, 'Manager');

-- MemberJob
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (1, 5);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (2, 5);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (3, 5);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (4, 5);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (5, 5);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (6, 1);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (7, 1);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (8, 1);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (9, 1);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (10, 1);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (11, 2);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (12, 2);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (13, 2);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (14, 2);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (15, 2);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (16, 3);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (17, 3);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (18, 3);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (19, 3);
INSERT INTO MemberJob (Member_ID, Job_ID) VALUES (20, 3);


-- Room
INSERT INTO Room (Room_ID, RoomName) VALUES (1, 'Meeting Room A');
INSERT INTO Room (Room_ID, RoomName) VALUES (2, 'Meeting Room B');
INSERT INTO Room (Room_ID, RoomName) VALUES (3, 'Meeting Room C');
INSERT INTO Room (Room_ID, RoomName) VALUES (4, 'Conference Room');

-- Appointments
INSERT INTO Appointments (Appointment_ID, Reason, Book_Start, Book_End) VALUES (1, 'Team Meeting', TO_DATE('2023-11-01 8:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-11-01 9:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Appointments (Appointment_ID, Reason, Book_Start, Book_End) VALUES (2, 'Project Review', TO_DATE('2023-11-15 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-11-15 15:30:00', 'YYYY-MM-DD HH24:MI:SS'));

-- MembersDepartment
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (1, 1);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (2, 2);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (3, 3);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (4, 4);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (5, 5);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (6, 1);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (7, 2);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (8, 3);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (9, 4);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (10, 5);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (11, 1);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (12, 2);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (13, 3);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (14, 4);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (15, 5);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (16, 1);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (17, 2);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (18, 3);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (19, 4);
INSERT INTO MembersDepartment (Member_ID, Department_ID) VALUES (20, 5);

-- Tasks
INSERT INTO Tasks (Task_ID, Deadline, Message, FinishDate) VALUES (1, TO_DATE('2023-11-10', 'YYYY-MM-DD'), 'Finish Report', NULL);
INSERT INTO Tasks (Task_ID, Deadline, Message, FinishDate) VALUES (2, TO_DATE('2023-12-05', 'YYYY-MM-DD'), 'Submit Proposal', NULL);
INSERT INTO Tasks (Task_ID, Deadline, Message, FinishDate) VALUES (3, TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Finish Project', NULL);
INSERT INTO Tasks (Task_ID, Deadline, Message, FinishDate) VALUES (4, TO_DATE('2023-12-20', 'YYYY-MM-DD'), 'Sell', NULL);
INSERT INTO Tasks (Task_ID, Deadline, Message, FinishDate) VALUES (5, TO_DATE('2023-12-25', 'YYYY-MM-DD'), 'Finish Project', NULL);

-- MemberTasks
INSERT INTO MemberTasks (Member_ID, Task_ID) VALUES (1, 1);
INSERT INTO MemberTasks (Member_ID, Task_ID) VALUES (2, 2);
INSERT INTO MemberTasks (Member_ID, Task_ID) VALUES (3, 3);
INSERT INTO MemberTasks (Member_ID, Task_ID) VALUES (4, 4);
INSERT INTO MemberTasks (Member_ID, Task_ID) VALUES (5, 5);



-- Courses
INSERT INTO Courses (Course_ID, CourseDate, Topic) VALUES (1, TO_DATE('2023-12-10', 'YYYY-MM-DD'), 'Managment Basics');
INSERT INTO Courses (Course_ID, CourseDate, Topic) VALUES (2, TO_DATE('2023-12-20', 'YYYY-MM-DD'), 'Basic Workplace Security');
INSERT INTO COURSES (COURSE_ID, COURSEDATE, TOPIC) VALUES (3, TO_DATE('2023-12-30', 'YYYY-MM-DD'), 'Advanced Workplace Security');


-- CourseParticipants
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (1,1);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (1,2);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (1,3);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (1,4);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (1,5);

INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,1);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,2);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,3);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,4);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,5);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,6);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,7);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,8);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,9);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,10);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,11);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,12);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,13);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,14);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,15);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,16);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,17);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,18);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,19);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,20);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,21);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,22);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,23);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,24);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,25);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,26);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,27);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,28);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,29);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (2,30);

INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,1);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,2);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,3);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,4);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,5);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,6);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,7);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,8);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,9);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,10);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,11);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,12);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,13);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,14);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,15);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,16);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,17);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,18);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,19);
INSERT INTO CourseParticipants (Course_ID, Member_ID) VALUES (3,20);



COMMIT;
