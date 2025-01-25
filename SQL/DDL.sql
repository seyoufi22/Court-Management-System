create table Lawyer(
	Lawyer_ID int primary key,
	FirstName varchar( 15 ) not null,
	LastName varchar(15) not null,
	city varchar( 50 ) not null,
	street varchar( 50 ) not null,
	apartment int not null
)
 
create table Lawyer_Phone
(
	Lawyer_ID int,
	Phone varchar(15) not null,
	FOREIGN KEY (Lawyer_ID) REFERENCES Lawyer(Lawyer_ID),
	CONSTRAINT PK_Lawyer_Phone PRIMARY KEY (Lawyer_ID,Phone)
)
 
create table Defendant(
	Defendant_ID int primary key,
	FirstName varchar( 15 ) not null,
	LastName varchar(15) not null,
	Birth_Date date not null,
	city varchar( 50 ) not null,
	street varchar( 50 ) not null,
	apartment int not null
)
 
create table Defedant_Phone
(
	Defendant_ID int,
	phone varchar(15) not null,
	FOREIGN KEY (Defendant_ID) REFERENCES Defendant(Defendant_ID),
	CONSTRAINT PK_Defedant_Phone PRIMARY KEY (Defendant_ID,Phone)
)
 
create table Court_Room
(
	Room_Name varchar( 50 ) primary key,
	Capacity int not null,
	Room_Location varchar( 50 ) not null
)
 
create table Judge
(
	Judge_Id int primary key,
	FirstName varchar( 15 ) not null,
	LastName varchar(15) not null,
	Salary int,
	Birth_Date date not null,
	Apartment int not null,
	Street varchar(50) not null,
	City varchar(50) not null,
)
 
Create table Judge_Phone
(
	Judge_Id int ,
	Phone varchar(15),
	FOREIGN KEY (Judge_Id) REFERENCES Judge(Judge_Id),
	CONSTRAINT PK_Person PRIMARY KEY (Judge_Id,Phone)
)
 
create table [Case](
	Case_Id int primary key,
	Type_case varchar( 50 ) not null,
	Decision varchar( 50 ) not null,
	Description_case varchar( 100 ) not null,
	Case_Date date default getdate(),
	Judge_Id int,
	FOREIGN KEY (Judge_Id) REFERENCES Judge(Judge_Id)
)
 
create table Court_Clerk
(
	Court_Clerk_Id int primary key,
	Cname varchar(30) not null,
	Salary int,
	Birth_Date date not null,
	Apartment int not null,
	Street int not null,
	City varchar(30) not null
)
 
Create table CourtClerk_Phone
(
	Court_Clerk_Id int,
	Clerk_Phone varchar(15),
	FOREIGN KEY (Court_Clerk_Id ) REFERENCES Court_Clerk (Court_Clerk_Id ),
	CONSTRAINT PK_CourtClerk_Phone PRIMARY KEY (Court_Clerk_Id,Clerk_Phone)
)
 
create table Plaintiff
(
	Plaintiff_Id int primary key,
	Name_Plaintiff varchar(50) not null,
	Birth_Date date not null,
	Apartment int not null,
	Street varchar(50) not null,
	City varchar(50) not null,
) 
 
Create table Plaintiff_Phone
(
	Id_Plaintiff int,
	Phone varchar(15),
	FOREIGN KEY (Id_Plaintiff) REFERENCES Plaintiff(Plaintiff_Id),
	CONSTRAINT PK_Plaintiff_Phone PRIMARY KEY (Id_Plaintiff,Phone)
)
 
create table Lawyer_Case_Plaintiff
(
	Plaintiff_id int,
	Lawyer_Id int,
	Case_Id int,
	CONSTRAINT PK_Lawyer_Case_Plaintiff PRIMARY KEY (Lawyer_Id,Plaintiff_id,Case_Id),
	FOREIGN KEY (Case_Id) REFERENCES [Case](Case_Id),
	FOREIGN KEY (Lawyer_Id) REFERENCES Lawyer(Lawyer_Id),
	FOREIGN KEY (Plaintiff_id) REFERENCES Plaintiff(Plaintiff_id)
)
 
create table Lawyer_Case_Defendant
(
	Lawyer_Id int,
	Defendant_Id int,
	Case_Id int,
	CONSTRAINT PK_Lawyer_Case_Plaintiff_ PRIMARY KEY (Lawyer_Id,Defendant_Id,Case_Id),
	FOREIGN KEY (Case_Id) REFERENCES [Case](Case_Id),
	FOREIGN KEY (Lawyer_Id) REFERENCES Lawyer(Lawyer_Id),
	FOREIGN KEY (Defendant_Id) REFERENCES Defendant(Defendant_Id)
)
 
create table [Session]
(
	Session_Number int primary key,
	Session_Date date default getdate(),
	Session_Time time not null,
	Court_Clerk_Id int,
	Room_Name varchar( 50 ),
	FOREIGN KEY (Court_Clerk_Id) REFERENCES Court_Clerk(Court_Clerk_Id),
	FOREIGN KEY (Room_Name) REFERENCES Court_Room(Room_Name),
)
 
create table Case_Session(
	Case_Id int,
	Session_Number int,
	CONSTRAINT PK_Case_Session PRIMARY KEY (Case_Id,Session_Number),
	FOREIGN KEY (Case_Id) REFERENCES [Case](Case_Id),
	FOREIGN KEY (Session_Number) REFERENCES [Session](Session_Number)
)