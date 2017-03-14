CREATE TABLE [Customers].[Table]
(
	[CustomerID] INT NOT NULL PRIMARY KEY, 
    [FirstName] TEXT NULL, 
    [LastName] TEXT NULL, 
    [Login] NVARCHAR(50) NULL, 
    [StreetAddress] TEXT NULL, 
    [City] TEXT NULL, 
    [State] TEXT NULL, 
    [Zip] NUMERIC NULL, 
    [FirstOrderDate] DATE NULL, 
    [Email] TEXT NULL, 
    [Phone] NUMERIC NULL
)
