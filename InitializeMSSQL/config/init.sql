CREATE LOGIN twadmin WITH PASSWORD = '$(SQL_TWX_PASSWD)';
GO

-- Get DPM ready just in case
CREATE LOGIN dpmadmin WITH PASSWORD = '$(SQL_DPM_PASSWD)';
GO

CREATE DATABASE dpmdb COLLATE SQL_Latin1_General_CP1_CI_AS;
ALTER DATABASE dpmdb SET READ_COMMITTED_SNAPSHOT ON;
ALTER DATABASE dpmdb SET ALLOW_SNAPSHOT_ISOLATION ON;
ALTER DATABASE dpmdb SET ARITHABORT ON;
GO

USE dpmdb;
CREATE USER dpmadmin FOR LOGIN dpmadmin;
ALTER ROLE [db_owner] ADD MEMBER dpmadmin;
GO