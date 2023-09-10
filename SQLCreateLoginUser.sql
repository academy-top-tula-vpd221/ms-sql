CREATE LOGIN [test_login] 
	WITH PASSWORD='qwerty',
	DEFAULT_DATABASE=[aero]
GO

EXEC sp_addsrvrolemember 
	@loginame='test_login',
	@rolename='sysadmin'
GO

CREATE USER test_user FOR LOGIN test_login
GO

EXEC sp_addrolemember 'db_owner', 'test_user'
GO

