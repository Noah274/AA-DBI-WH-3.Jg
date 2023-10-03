CREATE OR REPLACE PACKAGE ServiceCompany AS
  -- Create operations
  PROCEDURE CreateMember(
    p_FirstName IN VARCHAR2,
    p_LastName IN VARCHAR2,
    p_Birthdate IN DATE
  );

  PROCEDURE CreateRole(
    p_Role IN VARCHAR2
  );

  PROCEDURE CreateMemberRole(
    p_Member_ID IN NUMBER,
    p_Role_ID IN NUMBER
  );

  PROCEDURE CreateDepartment(
    p_DepartmentName IN VARCHAR2
  );

  PROCEDURE CreateDepartmentsFederalState(
    p_Department_ID IN NUMBER,
    p_Location_ID IN NUMBER
  );

  PROCEDURE CreateTicket;

  PROCEDURE CreateMemberTicket(
    p_Member_ID IN NUMBER,
    p_Ticket_ID IN NUMBER
  );

  PROCEDURE CreateJob(
    p_JobType IN VARCHAR2
  );

  PROCEDURE CreateMemberJob(
    p_Member_ID IN NUMBER,
    p_Job_ID IN NUMBER
  );

  PROCEDURE CreateRoom(
    p_RoomName IN VARCHAR2
  );

  PROCEDURE CreateAppointment(
    p_Reason IN VARCHAR2,
    p_Book_Start IN DATE,
    p_Book_End IN DATE
  );

  PROCEDURE CreateMembersDepartment(
    p_Member_ID IN NUMBER,
    p_Department_ID IN NUMBER
  );

  PROCEDURE CreateAppointmentTicket(
    p_Appointment_ID IN NUMBER,
    p_Ticket_ID IN NUMBER
  );

  PROCEDURE CreateAppointmentRoom(
    p_Appointment_ID IN NUMBER,
    p_Room_ID IN NUMBER
  );

  PROCEDURE CreateTask(
    p_Deadline IN DATE,
    p_Message IN VARCHAR2,
    p_FinishDate IN DATE
  );

  PROCEDURE CreateMemberTask(
    p_Member_ID IN NUMBER,
    p_Task_ID IN NUMBER
  );

  PROCEDURE CreateCourse(
    p_CourseDate IN DATE,
    p_Topic IN VARCHAR2
  );

  PROCEDURE CreateCourseParticipant(
    p_Course_ID IN NUMBER,
    p_Member_ID IN NUMBER
  );

  -- Read operations
  FUNCTION GetMemberById(
    p_Member_ID IN NUMBER
  ) RETURN Members%ROWTYPE;

  FUNCTION GetRoleById(
    p_Role_ID IN NUMBER
  ) RETURN Roles%ROWTYPE;

  FUNCTION GetDepartmentById(
    p_Department_ID IN NUMBER
  ) RETURN Department%ROWTYPE;

  FUNCTION GetLocationById(
    p_Location_ID IN NUMBER
  ) RETURN FederalState%ROWTYPE;

  FUNCTION GetTicketById(
    p_Ticket_ID IN NUMBER
  ) RETURN Ticket%ROWTYPE;

  FUNCTION GetJobById(
    p_Job_ID IN NUMBER
  ) RETURN Job%ROWTYPE;

  FUNCTION GetRoomById(
    p_Room_ID IN NUMBER
  ) RETURN Room%ROWTYPE;

  FUNCTION GetAppointmentById(
    p_Appointment_ID IN NUMBER
  ) RETURN Appointments%ROWTYPE;

  FUNCTION GetTaskById(
    p_Task_ID IN NUMBER
  ) RETURN Tasks%ROWTYPE;

  FUNCTION GetCourseById(
    p_Course_ID IN NUMBER
  ) RETURN Courses%ROWTYPE;


  -- Update operations
  PROCEDURE UpdateMember(
    p_Member_ID IN NUMBER,
    p_FirstName IN VARCHAR2,
    p_LastName IN VARCHAR2,
    p_Birthdate IN DATE
  );

  PROCEDURE UpdateRole(
    p_Role_ID IN NUMBER,
    p_Role IN VARCHAR2
  );

  PROCEDURE UpdateDepartment(
    p_Department_ID IN NUMBER,
    p_DepartmentName IN VARCHAR2
  );

  PROCEDURE UpdateLocation(
    p_Location_ID IN NUMBER,
    p_LocationName IN VARCHAR2
  );

  PROCEDURE UpdateTicket(
    p_Ticket_ID IN NUMBER
  );

  PROCEDURE UpdateJob(
    p_Job_ID IN NUMBER,
    p_JobType IN VARCHAR2
  );

  PROCEDURE UpdateRoom(
    p_Room_ID IN NUMBER,
    p_RoomName IN VARCHAR2
  );

  PROCEDURE UpdateAppointment(
    p_Appointment_ID IN NUMBER,
    p_Reason IN VARCHAR2,
    p_Book_Start IN DATE,
    p_Book_End IN DATE
  );

  PROCEDURE UpdateTask(
    p_Task_ID IN NUMBER,
    p_Deadline IN DATE,
    p_Message IN VARCHAR2,
    p_FinishDate IN DATE
  );

  PROCEDURE UpdateCourse(
    p_Course_ID IN NUMBER,
    p_CourseDate IN DATE,
    p_Topic IN VARCHAR2
  );

  -- Delete operations
  PROCEDURE DeleteMember(
    p_Member_ID IN NUMBER
  );

  PROCEDURE DeleteRole(
    p_Role_ID IN NUMBER
  );

  PROCEDURE DeleteDepartment(
    p_Department_ID IN NUMBER
  );

  PROCEDURE DeleteLocation(
    p_Location_ID IN NUMBER
  );

  PROCEDURE DeleteTicket(
    p_Ticket_ID IN NUMBER
  );

  PROCEDURE DeleteJob(
    p_Job_ID IN NUMBER
  );

  PROCEDURE DeleteRoom(
    p_Room_ID IN NUMBER
  );

  PROCEDURE DeleteAppointment(
    p_Appointment_ID IN NUMBER
  );

  PROCEDURE DeleteTask(
    p_Task_ID IN NUMBER
  );

  PROCEDURE DeleteCourse(
    p_Course_ID IN NUMBER
  );
END ServiceCompany;
/

------------------------------------------------------------------------------------------------------------------------
--CREATE

CREATE OR REPLACE PROCEDURE CreateMember(
    p_FirstName IN VARCHAR2,
    p_LastName IN VARCHAR2,
    p_Birthdate IN DATE
)
AS
BEGIN
    -- Insert a new member into the database table
    INSERT INTO Members (FirstName, LastName, Birthdate)
    VALUES (p_FirstName, p_LastName, p_Birthdate);
END;
/

-- Create Role table
CREATE OR REPLACE PROCEDURE CreateRole(
    p_Role IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Roles (Role)
    VALUES (p_Role);
END;

-- Create MemberRole table
CREATE OR REPLACE PROCEDURE CreateMemberRole(
    p_Member_ID IN NUMBER,
    p_Role_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO MemberRoles (Member_ID, Role_ID)
    VALUES (p_Member_ID, p_Role_ID);
END;

-- Create Department table
CREATE OR REPLACE PROCEDURE CreateDepartment(
    p_DepartmentName IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Department (DepartmentName)
    VALUES (p_DepartmentName);
END;

-- Create FederalState table
CREATE OR REPLACE PROCEDURE CreateFederalState(
    p_LocationName IN VARCHAR2
)
AS
BEGIN
    INSERT INTO FederalState (LocationName)
    VALUES (p_LocationName);
END;

-- Create DepartmentsFederalState table
CREATE OR REPLACE PROCEDURE CreateDepartmentsFederalState(
    p_Department_ID IN NUMBER,
    p_Location_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO DepartmentsFederalState (Department_ID, Location_ID)
    VALUES (p_Department_ID, p_Location_ID);
END;

-- Create Ticket table
CREATE OR REPLACE PROCEDURE CreateTicket
AS
BEGIN
    INSERT INTO Ticket (Ticket_ID)
    VALUES (NULL);
END;

-- Create MemberTicket table
CREATE OR REPLACE PROCEDURE CreateMemberTicket(
    p_Member_ID IN NUMBER,
    p_Ticket_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO MemberTickets (Member_ID, Ticket_ID)
    VALUES (p_Member_ID, p_Ticket_ID);
END;

-- Create Job table
CREATE OR REPLACE PROCEDURE CreateJob(
    p_JobType IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Job (JobType)
    VALUES (p_JobType);
END;

-- Create MemberJob table
CREATE OR REPLACE PROCEDURE CreateMemberJob(
    p_Member_ID IN NUMBER,
    p_Job_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO MemberJob (Member_ID, Job_ID)
    VALUES (p_Member_ID, p_Job_ID);
END;

-- Create Room table
CREATE OR REPLACE PROCEDURE CreateRoom(
    p_RoomName IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Room (RoomName)
    VALUES (p_RoomName);
END;

-- Create Appointment table
CREATE OR REPLACE PROCEDURE CreateAppointment(
    p_Reason IN VARCHAR2,
    p_Book_Start IN DATE,
    p_Book_End IN DATE
)
AS
BEGIN
    INSERT INTO Appointments (Reason, Book_Start, Book_End)
    VALUES (p_Reason, p_Book_Start, p_Book_End);
END;

-- Create MembersDepartment table
CREATE OR REPLACE PROCEDURE CreateMembersDepartment(
    p_Member_ID IN NUMBER,
    p_Department_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO MembersDepartment (Member_ID, Department_ID)
    VALUES (p_Member_ID, p_Department_ID);
END;

-- Create AppointmentTicket table
CREATE OR REPLACE PROCEDURE CreateAppointmentTicket(
    p_Appointment_ID IN NUMBER,
    p_Ticket_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO AppointmentTickets (Appointment_ID, Ticket_ID)
    VALUES (p_Appointment_ID, p_Ticket_ID);
END;

-- Create AppointmentRoom table
CREATE OR REPLACE PROCEDURE CreateAppointmentRoom(
    p_Appointment_ID IN NUMBER,
    p_Room_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO AppointmentRooms (Appointment_ID, Room_ID)
    VALUES (p_Appointment_ID, p_Room_ID);
END;

-- Create Task table
CREATE OR REPLACE PROCEDURE CreateTask(
    p_Deadline IN DATE,
    p_Message IN VARCHAR2,
    p_FinishDate IN DATE
)
AS
BEGIN
    INSERT INTO Tasks (Deadline, Message, FinishDate)
    VALUES (p_Deadline, p_Message, p_FinishDate);
END;

-- Create MemberTask table
CREATE OR REPLACE PROCEDURE CreateMemberTask(
    p_Member_ID IN NUMBER,
    p_Task_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO MemberTasks (Member_ID, Task_ID)
    VALUES (p_Member_ID, p_Task_ID);
END;

-- Create Course table
CREATE OR REPLACE PROCEDURE CreateCourse(
    p_CourseDate IN DATE,
    p_Topic IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Courses (CourseDate, Topic)
    VALUES (p_CourseDate, p_Topic);
END;

-- Create CourseParticipant table
CREATE OR REPLACE PROCEDURE CreateCourseParticipant(
    p_Course_ID IN NUMBER,
    p_Member_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO CourseParticipants (Course_ID, Member_ID)
    VALUES (p_Course_ID, p_Member_ID);
END;

------------------------------------------------------------------------------------------------------------------------
-- READ

-- Get a member by ID
CREATE OR REPLACE FUNCTION GetMemberById(
    p_Member_ID IN NUMBER
) RETURN Members%ROWTYPE
AS
    v_member Members%ROWTYPE;
BEGIN
    SELECT * INTO v_member
    FROM Members
    WHERE Member_ID = p_Member_ID;

    RETURN v_member;
END;

-- Get a role by ID
CREATE OR REPLACE FUNCTION GetRoleById(
    p_Role_ID IN NUMBER
) RETURN Roles%ROWTYPE
AS
    v_role Roles%ROWTYPE;
BEGIN
    SELECT * INTO v_role
    FROM Roles
    WHERE Role_ID = p_Role_ID;

    RETURN v_role;
END;

-- Get a department by ID
CREATE OR REPLACE FUNCTION GetDepartmentById(
    p_Department_ID IN NUMBER
) RETURN Department%ROWTYPE
AS
    v_department Department%ROWTYPE;
BEGIN
    SELECT * INTO v_department
    FROM Department
    WHERE Department_ID = p_Department_ID;

    RETURN v_department;
END;

-- Get a location (FederalState) by ID
CREATE OR REPLACE FUNCTION GetLocationById(
    p_Location_ID IN NUMBER
) RETURN FederalState%ROWTYPE
AS
    v_location FederalState%ROWTYPE;
BEGIN
    SELECT * INTO v_location
    FROM FederalState
    WHERE Location_ID = p_Location_ID;

    RETURN v_location;
END;

-- Get a ticket by ID
CREATE OR REPLACE FUNCTION GetTicketById(
    p_Ticket_ID IN NUMBER
) RETURN Ticket%ROWTYPE
AS
    v_ticket Ticket%ROWTYPE;
BEGIN
    SELECT * INTO v_ticket
    FROM Ticket
    WHERE Ticket_ID = p_Ticket_ID;

    RETURN v_ticket;
END;

-- Get a job by ID
CREATE OR REPLACE FUNCTION GetJobById(
    p_Job_ID IN NUMBER
) RETURN Job%ROWTYPE
AS
    v_job Job%ROWTYPE;
BEGIN
    SELECT * INTO v_job
    FROM Job
    WHERE Job_ID = p_Job_ID;

    RETURN v_job;
END;

-- Get a room by ID
CREATE OR REPLACE FUNCTION GetRoomById(
    p_Room_ID IN NUMBER
) RETURN Room%ROWTYPE
AS
    v_room Room%ROWTYPE;
BEGIN
    SELECT * INTO v_room
    FROM Room
    WHERE Room_ID = p_Room_ID;

    RETURN v_room;
END;

-- Get an appointment by ID
CREATE OR REPLACE FUNCTION GetAppointmentById(
    p_Appointment_ID IN NUMBER
) RETURN Appointments%ROWTYPE
AS
    v_appointment Appointments%ROWTYPE;
BEGIN
    SELECT * INTO v_appointment
    FROM Appointments
    WHERE Appointment_ID = p_Appointment_ID;

    RETURN v_appointment;
END;

-- Get a task by ID
CREATE OR REPLACE FUNCTION GetTaskById(
    p_Task_ID IN NUMBER
) RETURN Tasks%ROWTYPE
AS
    v_task Tasks%ROWTYPE;
BEGIN
    SELECT * INTO v_task
    FROM Tasks
    WHERE Task_ID = p_Task_ID;

    RETURN v_task;
END;

-- Get a course by ID
CREATE OR REPLACE FUNCTION GetCourseById(
    p_Course_ID IN NUMBER
) RETURN Courses%ROWTYPE
AS
    v_course Courses%ROWTYPE;
BEGIN
    SELECT * INTO v_course
    FROM Courses
    WHERE Course_ID = p_Course_ID;

    RETURN v_course;
END;


------------------------------------------------------------------------------------------------------------------------
-- UPDATE

-- Update member information
CREATE OR REPLACE PROCEDURE UpdateMember(
    p_Member_ID IN NUMBER,
    p_FirstName IN VARCHAR2,
    p_LastName IN VARCHAR2,
    p_Birthdate IN DATE
)
AS
BEGIN
    UPDATE Members
    SET FirstName = p_FirstName,
        LastName = p_LastName,
        Birthdate = p_Birthdate
    WHERE Member_ID = p_Member_ID;
END;

-- Update role information
CREATE OR REPLACE PROCEDURE UpdateRole(
    p_Role_ID IN NUMBER,
    p_Role IN VARCHAR2
)
AS
BEGIN
    UPDATE Roles
    SET Role = p_Role
    WHERE Role_ID = p_Role_ID;
END;

-- Update department information
CREATE OR REPLACE PROCEDURE UpdateDepartment(
    p_Department_ID IN NUMBER,
    p_DepartmentName IN VARCHAR2
)
AS
BEGIN
    UPDATE Department
    SET DepartmentName = p_DepartmentName
    WHERE Department_ID = p_Department_ID;
END;

-- Update location (FederalState) information
CREATE OR REPLACE PROCEDURE UpdateLocation(
    p_Location_ID IN NUMBER,
    p_LocationName IN VARCHAR2
)
AS
BEGIN
    UPDATE FederalState
    SET LocationName = p_LocationName
    WHERE Location_ID = p_Location_ID;
END;

-- Update ticket information
CREATE OR REPLACE PROCEDURE UpdateTicket(
    p_Ticket_ID IN NUMBER
)
AS
BEGIN
      --TODO
END;

-- Update job information
CREATE OR REPLACE PROCEDURE UpdateJob(
    p_Job_ID IN NUMBER,
    p_JobType IN VARCHAR2
)
AS
BEGIN
    UPDATE Job
    SET JobType = p_JobType
    WHERE Job_ID = p_Job_ID;
END;

-- Update room information
CREATE OR REPLACE PROCEDURE UpdateRoom(
    p_Room_ID IN NUMBER,
    p_RoomName IN VARCHAR2
)
AS
BEGIN
    UPDATE Room
    SET RoomName = p_RoomName
    WHERE Room_ID = p_Room_ID;
END;

-- Update appointment information
CREATE OR REPLACE PROCEDURE UpdateAppointment(
    p_Appointment_ID IN NUMBER,
    p_Reason IN VARCHAR2,
    p_Book_Start IN DATE,
    p_Book_End IN DATE
)
AS
BEGIN
    UPDATE Appointments
    SET Reason = p_Reason,
        Book_Start = p_Book_Start,
        Book_End = p_Book_End
    WHERE Appointment_ID = p_Appointment_ID;
END;

-- Update task information
CREATE OR REPLACE PROCEDURE UpdateTask(
    p_Task_ID IN NUMBER,
    p_Deadline IN DATE,
    p_Message IN VARCHAR2,
    p_FinishDate IN DATE
)
AS
BEGIN
    UPDATE Tasks
    SET Deadline = p_Deadline,
        Message = p_Message,
        FinishDate = p_FinishDate
    WHERE Task_ID = p_Task_ID;
END;

-- Update course information
CREATE OR REPLACE PROCEDURE UpdateCourse(
    p_Course_ID IN NUMBER,
    p_CourseDate IN DATE,
    p_Topic IN VARCHAR2
)
AS
BEGIN
    UPDATE Courses
    SET CourseDate = p_CourseDate,
        Topic = p_Topic
    WHERE Course_ID = p_Course_ID;
END;

------------------------------------------------------------------------------------------------------------------------
-- DELETE

-- Delete a member by ID
CREATE OR REPLACE PROCEDURE DeleteMember(
    p_Member_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Members
    WHERE Member_ID = p_Member_ID;
END;

-- Delete a role by ID
CREATE OR REPLACE PROCEDURE DeleteRole(
    p_Role_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Roles
    WHERE Role_ID = p_Role_ID;
END;

-- Delete a department by ID
CREATE OR REPLACE PROCEDURE DeleteDepartment(
    p_Department_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Department
    WHERE Department_ID = p_Department_ID;
END;

-- Delete a location (FederalState) by ID
CREATE OR REPLACE PROCEDURE DeleteLocation(
    p_Location_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM FederalState
    WHERE Location_ID = p_Location_ID;
END;

-- Delete a ticket by ID
CREATE OR REPLACE PROCEDURE DeleteTicket(
    p_Ticket_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Ticket
    WHERE Ticket_ID = p_Ticket_ID;
END;

-- Delete a job by ID
CREATE OR REPLACE PROCEDURE DeleteJob(
    p_Job_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Job
    WHERE Job_ID = p_Job_ID;
END;

-- Delete a room by ID
CREATE OR REPLACE PROCEDURE DeleteRoom(
    p_Room_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Room
    WHERE Room_ID = p_Room_ID;
END;

-- Delete an appointment by ID
CREATE OR REPLACE PROCEDURE DeleteAppointment(
    p_Appointment_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Appointments
    WHERE Appointment_ID = p_Appointment_ID;
END;

-- Delete a task by ID
CREATE OR REPLACE PROCEDURE DeleteTask(
    p_Task_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Tasks
    WHERE Task_ID = p_Task_ID;
END;

-- Delete a course by ID
CREATE OR REPLACE PROCEDURE DeleteCourse(
    p_Course_ID IN NUMBER
)
AS
BEGIN
    DELETE FROM Courses
    WHERE Course_ID = p_Course_ID;
END;
/