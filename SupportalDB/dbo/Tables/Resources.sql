CREATE TABLE [dbo].[Resources]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NCHAR(10) NULL, 
    [ResourceTypeId] NCHAR(10) NULL, 
    [Location] NCHAR(10) NULL
)
