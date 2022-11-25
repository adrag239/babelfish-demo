-- SSMS
use [master]
CREATE LOGIN dms_user WITH PASSWORD = 'SuperSecretDMSPassword##123'
GO


USE [Northwind]
GO
CREATE USER dms_user FOR LOGIN dms_user;
GO


USE [Northwind]
GO
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[customercustomerdemo] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[customerdemographics] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[employeeterritories] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[order details] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[orders] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[customers] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[products] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[shippers] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[suppliers] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[territories] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[categories] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[region] TO dms_user;
GRANT SELECT, DELETE, INSERT, REFERENCES, UPDATE ON [dbo].[employees] TO dms_user;


-- DBeaver
ALTER ROLE dms_user SET session_replication_role = 'replica';

-- back to default
ALTER ROLE dms_user SET session_replication_role = 'origin';
