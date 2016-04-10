CREATE TABLE [dbo].[USERS] (
    [User_Id]      INT            IDENTITY (1, 1) NOT NULL,
    [Username]     NVARCHAR (30)  NOT NULL,
    [LastModified] DATETIME       NULL,
    [Inactive]     BIT            CONSTRAINT [DF_USERS_Inactive] DEFAULT ((0)) NULL,
    [Firstname]    NVARCHAR (50)  NULL,
    [Lastname]     NVARCHAR (50)  NULL,
    [Title]        NVARCHAR (30)  NULL,
    [Initial]      NVARCHAR (3)   NULL,
    [EMail]        NVARCHAR (100) NULL,
    CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED ([User_Id] ASC)
);
GO
CREATE UNIQUE NONCLUSTERED INDEX [UQ_USERS_Username] ON [dbo].[USERS]
(
	[Username] ASC
)
