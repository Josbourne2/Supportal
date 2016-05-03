CREATE TABLE [dbo].[ExecutableTypes]
(
	[Id] INT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [ExecutableTypeId] INT NULL, 
    CONSTRAINT [PK_ExecutableTypes] PRIMARY KEY ([Id])
)
