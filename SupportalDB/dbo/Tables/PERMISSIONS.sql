CREATE TABLE [dbo].[PERMISSIONS] (
    [Permission_Id]         INT           IDENTITY (1, 1) NOT NULL,
    [PermissionDescription] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_PERMISSIONS] PRIMARY KEY CLUSTERED ([Permission_Id] ASC)
);

