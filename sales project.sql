CREATE TABLE Sale (
    UserID VARCHAR(20),
    EmployeeCode VARCHAR(20),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Gender VARCHAR(20),
    DepartmentID VARCHAR(20),
    RoleID VARCHAR(20),
    City VARCHAR(100),
	state VARCHAR(100),
    Country VARCHAR(100),
    Email VARCHAR(255),
	Phone VARCHAR(20),
    DateOfJoining DATE,
    EmploymentType VARCHAR(50),
    Status VARCHAR(50)
);


SELECT *
FROM sale;

SELECT UserID, FirstName, LastName, City, Status
FROM sale
WHERE City = 'Chennai';

SELECT Status, COUNT(*) AS EmployeeCount
FROM sale
GROUP BY Status
ORDER BY EmployeeCount DESC;

SELECT Gender, COUNT(*) AS EmployeeCount
FROM sale
GROUP BY Gender;

SELECT UserID, FirstName, LastName, DepartmentID, City
FROM sale
WHERE Status = 'Active';


SELECT UserID, FirstName, LastName, DateOfJoining, Status
FROM sale
ORDER BY DateOfJoining
LIMIT 10;
