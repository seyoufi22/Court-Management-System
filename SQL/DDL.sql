create table Lawyer(
	Id_Lawyer int primary key,
	Name_Lawyer varchar( 50 ) not null,
	city varchar( 50 ) not null,
	street varchar( 50 ) not null,
	apartment int not null
)
 
create table Lawyer_Phone
(
	Id_Lawyer int,
	Phone varchar(15) not null,
	FOREIGN KEY (Id_Lawyer) REFERENCES Lawyer(Id_Lawyer),
	CONSTRAINT PK_Lawyer_Phone PRIMARY KEY (Id_Lawyer,Phone)
)
 
create table Defendant(
	Id_Defendant int primary key,
	Name_Defendant varchar( 50 ) not null,
	Birth_Date date not null,
	city varchar( 50 ) not null,
	street varchar( 50 ) not null,
	apartment int not null
)
 
create table Defedant_Phone
(
	Id_Defedant int,
	phone varchar(15) not null,
	FOREIGN KEY (Id_Defedant) REFERENCES Defendant(Id_Defendant),
	CONSTRAINT PK_Defedant_Phone PRIMARY KEY (Id_Defedant,Phone)
)
 
create table Court_Room
(
	Room_Name varchar( 50 ) primary key,
	Capacity int not null,
	Room_Location varchar( 50 ) not null
)
 
create table Judge
(
	Id_Judge int primary key,
	Name_Judge varchar(50) not null,
	Salary int,
	Birth_Date date not null,
	Apartment int not null,
	Street varchar(50) not null,
	City varchar(50) not null,
)
 
Create table Judge_Phone
(
	Id_Judge int ,
	Phone varchar(15),
	FOREIGN KEY (Id_Judge) REFERENCES Judge(Id_Judge),
	CONSTRAINT PK_Person PRIMARY KEY (Id_Judge,Phone)
)
 
create table [Case](
	Id_case int primary key,
	Type_case varchar( 50 ) not null,
	Decision varchar( 50 ) not null,
	Description_case varchar( 100 ) not null,
	Case_Date date default getdate(),
	Id_Judge int,
	FOREIGN KEY (Id_Judge) REFERENCES Judge(Id_Judge)
)
 
create table Court_Clerk
(
	Id_Court_Clerk int primary key,
	Cname varchar(30) not null,
	Salary int,
	Birth_Date date not null,
	Apartment int not null,
	Street int not null,
	City varchar(30) not null
)
 
Create table CourtClerk_Phone
(
	Id_Court_Clerk int,
	Clerk_Phone varchar(15),
	FOREIGN KEY (Id_Court_Clerk ) REFERENCES Court_Clerk (Id_Court_Clerk ),
	CONSTRAINT PK_CourtClerk_Phone PRIMARY KEY (Id_Court_Clerk,Clerk_Phone)
)
 
create table Plaintiff
(
	Id_Plaintiff int primary key,
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
	FOREIGN KEY (Id_Plaintiff) REFERENCES Plaintiff(Id_Plaintiff),
	CONSTRAINT PK_Plaintiff_Phone PRIMARY KEY (Id_Plaintiff,Phone)
)
 
create table Lawyer_Case_Plaintiff
(
	Id_Lawyer int,
	Id_Plaintiff int,
	Id_Case int,
	CONSTRAINT PK_Lawyer_Case_Plaintiff PRIMARY KEY (Id_Lawyer,Id_Plaintiff,Id_Case),
	FOREIGN KEY (Id_Case) REFERENCES [Case](Id_case),
	FOREIGN KEY (Id_Lawyer) REFERENCES Lawyer(Id_Lawyer),
	FOREIGN KEY (Id_Plaintiff) REFERENCES Plaintiff(Id_Plaintiff)
)
 
create table Lawyer_Case_Defendant
(
	Id_Lawyer int,
	Id_Defedant int,
	Id_Case int,
	CONSTRAINT PK_Lawyer_Case_Plaintiff_ PRIMARY KEY (Id_Lawyer,Id_Defedant,Id_Case),
	FOREIGN KEY (Id_Case) REFERENCES [Case](Id_case),
	FOREIGN KEY (Id_Lawyer) REFERENCES Lawyer(Id_Lawyer),
	FOREIGN KEY (Id_Defedant) REFERENCES Defendant(Id_Defendant)
)
 
create table [Session]
(
	Session_Number int primary key,
	Session_Date date default getdate(),
	Session_Time time not null,
	Id_Court_Clerk int,
	Room_Name varchar( 50 ),
	FOREIGN KEY (Id_Court_Clerk) REFERENCES Court_Clerk(Id_Court_Clerk),
	FOREIGN KEY (Room_Name) REFERENCES Court_Room(Room_Name),
)
 
create table Case_Session(
	Case_Id int,
	Session_Number int,
	CONSTRAINT PK_Case_Session PRIMARY KEY (Case_Id,Session_Number),
	FOREIGN KEY (Case_Id) REFERENCES [Case](Id_case),
	FOREIGN KEY (Session_Number) REFERENCES [Session](Session_Number)
)

