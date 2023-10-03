# AA-DBI-WH-3.Jg

## Vom ERD zum Trigger

### Fachdomäne
Wir sind ein Dienstleistungsunternhemen eines Handwerkerunternhemens, dass das einen groben Teil vom der Datenverwaltung der Mitarbeiter managed. Die Mitarbeiter müssen mit Vor- & Nachname, Geburtsdatum eingetragen werden. Jeder Mitarbeiter hat naturlich einen Standort von dem Unternehmen, wo er arbeitet. Weil das Unternehmen sehr ausgeprägt ist. Es gibt Standorte in den verschiedensten Bundesländern Österreichs. 

Da auch die Mitarbeiter nicht nur rumstehen und nichts tun gibt es ein Ticket System in unserem Unternehmen. Das Ticketsystem ist wie eine Log-History. Man hat immer den überblick, was gerade im Unternhemen abgeht. Wann ein Ticket erstellt worden ist und wann es geschlossen wird. Ein Ticket kann mehrere Task beinhalten oder garkeine. Genau ist es auch bei einen Termin/Meeting. Sie gehören auch zu dem Ticketsystem dabei können im Ticket auch mehrere Meetings/Termine oder keine haben. Ein Meeting hat einen Raum über eine ID gebucht, da können mehrere Mitflieder Teilnehmen. Ein Task hat auch eine Deadline, da soll der Task spätestens fertig sein. Wenn man mit einem Task fertig ist und ihn abschließt, hat man dazu ein extra Datum, wo man kennzeichnet, wann der Task fertig gemacht wurde. Die Deadline kann man auch nach hinten verschieben, wenn man es nicht rechtzeitig fertig machen kann. 

Jedes Mitglied hat natürlich einen anderen Job mit einem anderen Gehalt. Ein Mitglied kann nur einen Job haben, aber mehrere Mitglieder können denselber Job gelehrt haben. Jeder Mitarbeiter hat auch einen Vorgesetzten (Abteilungsleiter, Manager) die über eine ID gekennzeichnet wird. Eine Ausnahme ist, der CEO, weil er keinen Vorgesetzten hat.

### Relevante Queries

    •	Gib mir alle Tickets eines jeweiligen Mitarbeiter aus
    •	Gib mir alle Standorte aus, wo ein Mitarbeiter arbeitet, der mehr als 2500€ Netto verdient. 
    •	Gib mir alle Termine die zwischen einem Zeitraum sind.
    •	Gib mir alle verfügbaren Räume zur verfügung (bestimmter Zeitraum).
    •	Gib mir alle Mitglieder aus und wie viele Tickets sie derzeit haben.

### ERD
![Alt text](ERD.png)
### UML Code
```
@startuml

entity "Members" {
  + Member_ID<PK>: NUMBER
  --
  FirstName: VARCHAR(200)
  LastName: VARCHAR(200)
  Birthdate: DATE
  Role<FK>: NUMBER
  Ticket<FK>: NUMBER
  Department<FK>: NUMBER
  Courses<FK>: NUMBER
}

entity "Roles" {
  + Role_ID<PK>: NUMBER
  --
  Role: VARCHAR(200)
  Manager_ID<FK>: NUMBER
  Member<FK>:NUMBER
}

entity "Department" {
  + Department_ID<PK>: NUMBER
  --
  DepartmentName: VARCHAR(200)
  Location<FK>: NUMBER
}

entity "Location"{
  + Location_ID<PK>: NUMBER
  --
  LocationName: VARCHAR(200)
  Department<FK>: NUMBER
}

entity "Ticket" {
  + Ticket_ID<PK>: NUMBER
  --
  Member<FK>: NUMBER
  Appointment<FK>: NUMBER(Nullable)
  Task<FK>: NUMBER(Nullable)
}

entity "Room"{
  + Room_ID<PK>: NUMBER
  --
  Appointment<FK>: NUMBER
  RoomName: VARCHAR(200)
}

entity "Appointments" {
  + Appointment_ID<PK>: NUMBER
  --
  Reason: VARCHAR(200)
  Book_Start: DATE
  Book_End: DATE
  Ticket<FK>: NUMBER
  Room<FK>: NUMBER
}

entity "Tasks" {
  + Task_ID<PK>: NUMBER
  --
  Deadline: DATE
  Message: VARCHAR(200)
  Member<FK>: NUMBER
  FinishDate: DATE
  Ticket<FK>: NUMBER
}

entity "Courses" {
  + Course_ID<PK>: NUMBER
  --
  Participant<FK>: NUMBER
  Instructor<FK>: NUMBER
  Date: DATE
  Topic: VARCHAR(200)
}

Members ||--o{ Roles
Members ||--o{ Department
Members }o--o{ Ticket 
Members }o--o{ Courses 

Department ||--|| Location

Ticket }o--o{ Appointments
Ticket }o--o{ Tasks

Appointments ||--o{ Room

@enduml
```

### Definition der PL/SQL API

```
CREATE OR REPLACE PACKAGE ServiceCompany AS

    -- CRUD for Members
    PROCEDURE AddMember(firstname IN VARCHAR2, lastname IN VARCHAR2, birthdate IN DATE, role IN NUMBER, department IN NUMBER);
    PROCEDURE UpdateMember(id IN NUMBER, firstname IN VARCHAR2, lastname IN VARCHAR2, birthdate IN DATE, role IN NUMBER, department IN NUMBER);
    PROCEDURE DeleteMember(id IN NUMBER);
    FUNCTION GetMember(id IN NUMBER) RETURN SYS_REFCURSOR;
    
    -- CRUD for Roles
    PROCEDURE AddRole(role IN VARCHAR2, manager_id IN NUMBER);
    PROCEDURE UpdateRole(id IN NUMBER, role IN VARCHAR2, manager_id IN NUMBER);
    PROCEDURE DeleteRole(id IN NUMBER);
    
    -- CRUD for Department
    PROCEDURE AddDepartment(name IN VARCHAR2, head IN NUMBER);
    PROCEDURE UpdateDepartment(id IN NUMBER, name IN VARCHAR2, head IN NUMBER);
    PROCEDURE DeleteDepartment(id IN NUMBER);
    
    -- CRUD for Appointments
    PROCEDURE AddAppointment(time IN TIMESTAMP, reason IN VARCHAR2, date IN DATE, member_id IN NUMBER);
    PROCEDURE UpdateAppointment(id IN NUMBER, time IN TIMESTAMP, reason IN VARCHAR2, date IN DATE, member_id IN NUMBER);
    PROCEDURE DeleteAppointment(id IN NUMBER);
    
    -- CRUD for Tasks
    PROCEDURE AddTask(deadline IN DATE, message IN VARCHAR2, responsible IN NUMBER, finishdate IN DATE := NULL);
    PROCEDURE UpdateTask(id IN NUMBER, deadline IN DATE, message IN VARCHAR2, responsible IN NUMBER, finishdate IN DATE := NULL);

    PROCEDURE DeleteTask(id IN NUMBER);
    
    -- CRUD for Courses
    PROCEDURE AddCourse(instructor IN VARCHAR2, date IN TIMESTAMP, topic IN VARCHAR2);
    PROCEDURE UpdateCourse(id IN NUMBER, instructor IN VARCHAR2, date IN TIMESTAMP, topic IN VARCHAR2);
    PROCEDURE DeleteCourse(id IN NUMBER);
    
    -- CRUD for Courses_Members
    PROCEDURE AddCourseMember(course_id IN NUMBER, member_id IN NUMBER);
    PROCEDURE DeleteCourseMember(course_id IN NUMBER, member_id IN NUMBER);
    
END ServiceCompany;
```

### DDL

```  
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
```

### Testdata

```
INSERT INTO Appointments (Appointment_ID, Reason, Book_Start, Book_End, Ticket, Room)
VALUES (1, 'Meeting', TO_DATE('2023-10-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-10-05 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, NULL);

INSERT INTO Tasks (Task_ID, Deadline, Message, Member, FinishDate, Ticket)
VALUES (1, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 'Complete report', 1, NULL, NULL);

INSERT INTO Courses (Course_ID, Participant, Instructor, Date, Topic)
VALUES (1, 1, 2, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'Database Management');
```
