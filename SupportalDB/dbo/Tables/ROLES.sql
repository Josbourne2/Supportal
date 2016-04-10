CREATE TABLE [dbo].[ROLES] (
    [Role_Id]         INT            IDENTITY (1, 1) NOT NULL,
    [RoleName]        NVARCHAR (50)  NOT NULL,
    [RoleDescription] NVARCHAR (250) NULL,
    [IsSysAdmin]      BIT            CONSTRAINT [DF_ROLES_IsSysAdmin] DEFAULT ((0)) NULL,
    [LastModified]    DATETIME       CONSTRAINT [DF_ROLES_LastModified] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_tbl_Roles] PRIMARY KEY CLUSTERED ([Role_Id] ASC)
);


GO

CREATE UNIQUE INDEX [UQ_ROLES_RoleName] ON [dbo].[ROLES] ([RoleName])
