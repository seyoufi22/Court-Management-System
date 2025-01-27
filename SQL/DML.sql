-- I asked ChatGPT for this data -- 

-- Inserting 10 Lawyers
INSERT INTO Lawyer (Lawyer_ID, FirstName, LastName, city, street, apartment)
VALUES
	(1, 'John', 'Doe', 'New York', '5th Avenue', 101),
	(2, 'Jane', 'Smith', 'Los Angeles', 'Sunset Blvd', 202),
	(3, 'Michael', 'Johnson', 'Chicago', 'Michigan Ave', 303),
	(4, 'Emily', 'Davis', 'Houston', 'Main St', 404),
	(5, 'David', 'Martinez', 'Phoenix', 'Central Ave', 505),
	(6, 'Sarah', 'Garcia', 'Philadelphia', 'Market St', 606),
	(7, 'James', 'Wilson', 'San Antonio', 'Broadway St', 707),
	(8, 'Linda', 'Moore', 'San Diego', 'Ocean Blvd', 808),
	(9, 'Robert', 'Taylor', 'Dallas', 'Elm St', 909),
	(10, 'Mary', 'Anderson', 'San Jose', 'Santa Clara St', 1010);
 
-- Inserting 10 Lawyer Phones 
INSERT INTO Lawyer_Phone (Lawyer_ID, Phone)
VALUES
	(1, '+1234567891'),
	(2, '+2345678901'),
	(3, '+3456789012'),
	(4, '+4567890123'),
	(5, '+5678901234'),
	(6, '+6789012345'),
	(7, '+7890123456'),
	(8, '+8901234567'),
	(9, '+9012345678'),
	(10, '+0123456789');
 
-- Inserting 10 Defendants
INSERT INTO Defendant (Defendant_ID, FirstName, LastName, Birth_Date, city, street, apartment)
VALUES
	(1, 'John', 'Doe', '12-12-1990', 'New York', '5th Avenue', 101),
	(2, 'Jane', 'Smith', '1975-03-22', 'Los Angeles', 'Sunset Blvd', 202),
	(3, 'Michael', 'Johnson', '1982-07-30', 'Chicago', 'Michigan Ave', 303),
	(4, 'Emily', 'Davis', '1990-11-05', 'Houston', 'Main St', 404),
	(5, 'David', 'Martinez', '1988-09-12', 'Phoenix', 'Central Ave', 505),
	(6, 'Sarah', 'Garcia', '1995-02-28', 'Philadelphia', 'Market St', 606),
	(7, 'James', 'Wilson', '1983-06-17', 'San Antonio', 'Broadway St', 707),
	(8, 'Linda', 'Moore', '1992-12-25', 'San Diego', 'Ocean Blvd', 808),
	(9, 'Robert', 'Taylor', '1981-04-10', 'Dallas', 'Elm St', 909),
	(10, 'Mary', 'Anderson', '1987-08-22', 'San Jose', 'Santa Clara St', 1010);
 
-- Inserting 10 Defendant Phones
INSERT INTO Defedant_Phone (Defendant_ID, phone)
VALUES
    (1, '+1239876543'),
	(1, '+1239876544'),
	(2, '+2348765432'),
	(3, '+3457654321'),
	(4, '+4566543210'),
	(5, '+5675432109'),
	(6, '+6784321098'),
	(7, '+7893210987'),
	(8, '+8902109876'),
	(9, '+9011098765');
 
-- Inserting 10 Plaintiffs 
INSERT INTO Plaintiff (Plaintiff_Id, FirstName, LastName, Birth_Date, City, Street, Apartment)
VALUES
	(1, 'Alice', 'Williams', '1985-03-10', 'Boston', 'Beacon St', 111),
	(2, 'Brian', 'Jones', '1990-06-25', 'Seattle', 'Pine St', 222),
	(3, 'Catherine', 'Brown', '1982-09-15', 'Denver', 'Colfax Ave', 333),
	(4, 'Daniel', 'Davis', '1988-12-05', 'Miami', 'Ocean Dr', 444),
	(5, 'Eva', 'Miller', '1993-04-20', 'Atlanta', 'Peachtree St', 555),
	(6, 'Frank', 'Wilson', '1980-07-30', 'Dallas', 'Main St', 666),
	(7, 'Grace', 'Moore', '1987-11-10', 'San Francisco', 'Market St', 777),
	(8, 'Henry', 'Taylor', '1992-02-28', 'Austin', 'Congress Ave', 888),
	(9, 'Isabel', 'Anderson', '1984-08-22', 'Portland', 'Burnside St', 999),
	(10, 'Jack', 'Thomas', '1991-05-05', 'Chicago', 'State St', 1010);
 
-- Inserting Plaintiff Phones 
INSERT INTO Plaintiff_Phone (Id_Plaintiff, Phone)
VALUES
    (1, '+1-555-123-4567'),
	(2, '+1-555-234-5678'),
	(3, '+1-555-345-6789'),
	(4, '+1-555-456-7890'),
	(5, '+1-555-567-8901'),
	(6, '+1-555-678-9012'),
	(7, '+1-555-789-0123'),
	(8, '+1-555-890-1234'),
	(9, '+1-555-901-2345'),
	(10, '+1-555-012-3456');
 
-- Inserting 10 Judges
INSERT INTO Judge (Judge_Id, FirstName, LastName, Birth_Date, Salary, City, Street, Apartment)
VALUES
	(1, 'John', 'Doe', '1985-03-15', 75000, 'New York', '5th Avenue', 101),
	(2, 'Jane', 'Smith', '1990-07-22', 68000, 'Los Angeles', 'Sunset Blvd', 202),
	(3, 'Michael', 'Johnson', '1978-11-05', 92000, 'Chicago', 'Michigan Ave', 303),
	(4, 'Emily', 'Brown', '1989-09-12', 81000, 'Houston', 'Main Street', 404),
	(5, 'David', 'Williams', '1995-02-28', 65000, 'Phoenix', 'Central Ave', 505),
	(6, 'Sarah', 'Jones', '1982-06-18', 74000, 'Philadelphia', 'Broad Street', 606),
	(7, 'James', 'Garcia', '1991-04-25', 88000, 'San Antonio', 'Alamo Street', 707),
	(8, 'Linda', 'Martinez', '1987-08-30', 79000, 'San Diego', 'Harbor Drive', 808),
	(9, 'Robert', 'Davis', '1980-12-10', 95000, 'Dallas', 'Commerce Street', 909),
	(10, 'Mary', 'Rodriguez', '1993-01-20', 72000, 'San Jose', '1st Street', 1010);
 
-- Inserting 10 Judge Phones 
INSERT INTO Judge_Phone (Judge_Id, Phone)
VALUES
	(1, '+1-555-123-4567'),
	(2, '+1-555-234-5678'),
	(3, '+1-555-345-6789'),
	(4, '+1-555-456-7890'),
	(5, '+1-555-567-8901'),
	(6, '+1-555-678-9012'),
	(7, '+1-555-789-0123'),
	(8, '+1-555-890-1234'),
	(9, '+1-555-901-2345'),
	(10, '+1-555-012-3456');
 
-- Inserting 5 Court Room
INSERT INTO Court_Room (Room_Name, Capacity, Room_Location)
VALUES
    ('Room A', 50, 'First Floor'),
    ('Room B', 40, 'Second Floor'),
    ('Room C', 60, 'Third Floor'),
    ('Room D', 45, 'Fourth Floor'),
    ('Room E', 55, 'Fifth Floor');
 
-- Inserting 10 Cases
INSERT INTO [Case] (Case_Id, Type_case, Decision, Description_case, Case_Date, Judge_Id)
VALUES
    (101, 'Civil', 'Pending', 'Property Dispute', '2024-01-01', 1),
    (102, 'Criminal', 'Closed', 'Robbery', '2024-02-01', 2),
    (103, 'Family', 'Ongoing', 'Child Custody', '2024-03-01', 3),
    (104, 'Civil', 'Closed', 'Contract Breach', '2024-04-01', 4),
    (105, 'Criminal', 'Pending', 'Assault', '2024-05-01', 5),
    (106, 'Family', 'Ongoing', 'Divorce', '2024-06-01', 6),
    (107, 'Civil', 'Closed', 'Landlord-Tenant Dispute', '2024-07-01', 7),
    (108, 'Criminal', 'Closed', 'Drug Possession', '2024-08-01', 8),
    (109, 'Family', 'Pending', 'Adoption', '2024-09-01', 9),
    (111, 'Civil', 'Ongoing', 'Personal Injury', '2024-10-01', 10);
 
-- Inserting 10 Lawyer-Case-Plaintiff
INSERT INTO Lawyer_Case_Plaintiff (Lawyer_Id, Case_Id, Plaintiff_Id)
VALUES
    (1,101, 1),
    (2, 102, 2),
    (3, 103, 3),
    (4, 104, 4),
    (5, 105, 5),
    (6, 106, 6),
    (7, 107, 7),
    (8, 108, 8),
    (9, 109, 9),
    (10, 111, 10);

-- Inserting 10 Lawyer-Case-Defendant 
INSERT INTO Lawyer_Case_Defendant (Lawyer_Id, Case_Id, Defendant_Id)
VALUES
     (1,101, 1),
    (2, 102, 2),
    (3, 103, 3),
    (4, 104, 4),
    (5, 105, 5),
    (6, 106, 6),
    (7, 107, 7),
    (8, 108, 8),
    (9, 109, 9),
    (10, 111, 10);
 
-- Inserting 10 Court clerks 
INSERT INTO Court_Clerk (Court_Clerk_Id, FirstName, LastName, Birth_Date, Salary, city, street, Apartment)
VALUES
	(1, 'Alice', 'Johnson', '1990-05-15', 55000.00, 'Springfield', 'Main St.', 101),
	(2, 'Bob', 'Smith', '1985-09-20', 60000.00, 'Evergreen', 'Elm Rd.', 202),
	(3, 'Charlie', 'Brown', '1992-11-05', 45000.00, 'Rivertown', 'River St.', 303),
	(4, 'David', 'Williams', '1988-02-28', 70000.00, 'Hilltop', 'Oak Ave.', 404),
	(5, 'Emily', 'Davis', '1993-07-12', 48000.00, 'Lakeside', 'Lakeview Dr.', 505),
	(6, 'Frank', 'Miller', '1995-03-22', 52000.00, 'Meadowville', 'Pine St.', 606),
	(7, 'Grace', 'Wilson', '1987-10-14', 65000.00, 'Mapleton', 'Maple Ave.', 707),
	(8, 'Hannah', 'Moore', '1994-01-09', 47000.00, 'Brookfield', 'Cedar Ln.', 808),
	(9, 'Isaac', 'Taylor', '1983-12-25', 75000.00, 'Sunnyvale', 'Sunset Blvd.', 909),
	(10, 'Jack', 'Anderson', '1991-04-17', 49000.00, 'Riverwood', 'Willow St.', 1010);

-- Inserting 10 Court Crack Phones 
INSERT INTO CourtClerk_Phone (Court_Clerk_Id, Clerk_Phone)
VALUES
	(1, '+1-555-123-4567'),
	(2, '+1-555-234-5678'),
	(3, '+1-555-345-6789'),
	(4, '+1-555-456-7890'),
	(5, '+1-555-567-8901'),
	(6, '+1-555-678-9012'),
	(7, '+1-555-789-0123'),
	(8, '+1-555-890-1234'),
	(9, '+1-555-901-2345'),
	(10, '+1-555-012-3456');

-- Inserting 5 Session
INSERT INTO [Session] (Session_Number, Session_Date , Session_Time, Court_Clerk_Id, Room_Name)
VALUES 
(1, '2022-05-23' , '10:00:00' , 1 , 'Room A'),
(2, '2022-08-20' , '11:30:00' , 2 , 'Room B'),
(3, '2023-06-18' , '13:00:00' , 3 , 'Room C'),
(4, '2020-11-27' , '14:30:00' , 4 , 'Room D'),
(5, '2021-03-09' , '16:00:00' , 5 , 'Room E');

 
update [Session]
set Court_Clerk_Id = 509
where Session_Number in( 2006 , 2007 )
 
update [Session]
set Room_Name = 'Room A'
where Room_Name is NULL
 
-- Inserting 10 Case_Session
INSERT INTO Case_Session (Case_Id, Session_Number)
VALUES 
(101, 1),
(102, 2),
(103, 3),
(104, 4),
(105, 5),
(101, 2),
(105, 2),
(101, 4),
(111, 5),
(109, 2);