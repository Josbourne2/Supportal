/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/



--Create an 'Administrator' Role setting IsSystemRole=1
INSERT INTO ROLES(RoleName, RoleDescription, IsSysAdmin) VALUES('Administrator', 'Administrator can access all areas of the application by default.', 1)

--Create a 'Standard User' Role setting IsSystemRole=0
INSERT INTO ROLES(RoleName, RoleDescription, IsSysAdmin) VALUES('Standard User', 'Users of the application should be granted this role who are not permitted to undertake administrator duties.  This role must have individual permissions assigned unlike the Administrator role.', 0)

--Create an Application Permission for the action method 'Create' 
--defined in the 'Admin' controller (ie 'admin-create')
INSERT INTO PERMISSIONS(PermissionDescription) VALUES('admin-create')

--Associate the Application Permission 'admin-create' with the
--'Administrator' Role
INSERT INTO LNK_ROLE_PERMISSION VALUES(
	(SELECT Role_Id FROM ROLES WHERE RoleName = 'Administrator'),
	(SELECT Permission_Id FROM PERMISSIONS WHERE PermissionDescription = 'admin-create'))

--Create the user 'swloch'
INSERT INTO USERS(Username, LastModified, Inactive) VALUES('DESKTOP-70R61C0\Jos', GetDate(), 0) 

 INSERT INTO LNK_USER_ROLE(User_Id, Role_Id) VALUES((SELECT User_Id FROM USERS WHERE Username='DESKTOP-70R61C0\Jos'),(SELECT Role_Id FROM ROLES WHERE RoleName='Administrator')) 
