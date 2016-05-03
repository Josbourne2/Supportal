CREATE TABLE [dbo].[Executables]
(
	[Id] INT NOT NULL , 
    [ExecutableType] INT NULL, 
    [Name] VARCHAR(50) NULL, 
    [Value] VARBINARY(MAX) NULL, 
    CONSTRAINT [PK_Executables] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Executables_To_ExecutableTypes] FOREIGN KEY ([Id]) REFERENCES [ExecutableTypes]([Id])
)
