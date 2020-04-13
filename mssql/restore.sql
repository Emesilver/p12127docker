--ALTER DATABASE [dadosadv] SET OFFLINE WITH ROLLBACK IMMEDIATE
USE [master] RESTORE DATABASE [dadosadv] FROM  DISK = '/tmp/p12127.bak' WITH  FILE = 1,  
    --MOVE N'P12127_Data' TO N'/var/opt/mssql/data/dadosadv.mdf',  
    --MOVE N'P12127_Log' TO N'/var/opt/mssql/data/dadosadv_log.ldf',  
    NOUNLOAD,  REPLACE,  STATS = 5
USE [dadosadv] exec sp_changedbowner siga
--USE [master] ALTER DATABASE [dadosadv] SET RECOVERY SIMPLE WITH NO_WAIT
--USE [dadosadv] DBCC SHRINKFILE (N'DADOSLLXMR_Log' , 0, TRUNCATEONLY)





