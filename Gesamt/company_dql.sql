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
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetRoleById(
    p_Role_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetDepartmentById(
    p_Department_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetLocationById(
    p_Location_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetTicketById(
    p_Ticket_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetJobById(
    p_Job_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetRoomById(
    p_Room_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetAppointmentById(
    p_Appointment_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetTaskById(
    p_Task_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

  FUNCTION GetCourseById(
    p_Course_ID IN NUMBER
  ) RETURN SYS_REFCURSOR;

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

CREATE OR REPLACE PROCEDURE CreateRole(
    p_Role IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Roles (Role)
    VALUES (p_Role);
END;

CREATE OR REPLACE PROCEDURE CreateMemberRole(
    p_Member_ID IN NUMBER,
    p_Role_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO MemberRoles (Member_ID, Role_ID)
    VALUES (p_Member_ID, p_Role_ID);
END;

CREATE OR REPLACE PROCEDURE CreateDepartment(
    p_DepartmentName IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Department (DepartmentName)
    VALUES (p_DepartmentName);
END;

CREATE OR REPLACE PROCEDURE CreateDepartmentsFederalState(
    p_Department_ID IN NUMBER,
    p_Location_ID IN NUMBER
)
AS
BEGIN
    INSERT INTO DepartmentsFederalState (Department_ID, Location_ID)
    VALUES (p_Department_ID, p_Location_ID);
END;



