CREATE DATABASE EmpDB
USE EmpDB

CREATE TABLE dbo.City(
	CityID int IDENTITY(1,1) PRIMARY KEY,
	CityNameArabic nvarchar(250) NULL,
	CityNameEnglish varchar(250) NOT NULL,
)

CREATE TABLE dbo.Department(
	DepartmentID int IDENTITY(1,1) PRIMARY KEY,
	DepartmentNameEnglish nvarchar(250) NULL,
	DepartmentAbbr varchar(250) NOT NULL,
)

CREATE TABLE dbo.Employee(
	EmployeeID int IDENTITY(1,1) PRIMARY KEY,
	EmployeeNameArabic nvarchar(250) Not NULL,
	EmployeeNameEnglish varchar(250) NOT NULL,
	DOB date NOT NULL,
	HiringDate date NOT NULL,
	Salary decimal(12,2) NOT NULL,
	CityID int,
	DepartmentID int,
	FOREIGN KEY (CityID) REFERENCES City(CityID),
	FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
)