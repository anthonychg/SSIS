--RESTORE FULL DATABASE ON STANDBY
--SSIS Expression:
/*
"RESTORE DATABASE " +  @[User::strDB] + " FROM DISK= N" +  "'" + @[User::strDBFullPathLocal] + "'" + " 
WITH FILE = 1, "  + " 
MOVE N"  + "'" +  "pdenvcu_Data" + "' TO N" + "'" +  @[User::strDBDataFolder] + "\\" + @[User::strDB] + "_Data.mdf" + "' , " + "
MOVE N" + "'" +  "pdenvcu_Log" + "' TO N" + "'" +  @[User::strDBLogFolder] + "\\" + 
@[User::strDB] + "_Log.ldf" + "', 
REPLACE, STANDBY = N" + "'" + @[User::strDBDataFolder] + "\\" + @[User::strDB] + "_STANDBY_" + @[User::strDWLastFullDate] + ".bak" + "', NOUNLOAD, STATS = 10"
*/

--SSIS Expression Value:
RESTORE DATABASE ODS_WB FROM DISK= N'H:\DataLoadingStaging\ODS_WB\iWBDatabaseFullBackup_AftOvn_20160416.bak' 
WITH FILE = 1,  
MOVE N'pdenvcu_Data' TO N'H:\Data\ODS_WB_Data.mdf' , 
MOVE N'pdenvcu_Log' TO N'L:\Logs\ODS_WB_Log.ldf', 
REPLACE, STANDBY = N'H:\Data\ODS_WB_STANDBY_20160416.bak', NOUNLOAD, STATS = 10


--RESTORE DIFFERENTIAL DATABASE ON STANDBY
--SSIS Expression:
/*
"RESTORE DATABASE " +  @[User::strDB] + " FROM DISK= N" +  "'" + @[User::strDBDiffPathLocal] +  @[User::strDBDate] +  ".bak"  +   "'" + " 
WITH FILE = 1, "  + "
MOVE N"  + "'" +  "pdenvcu_Data" + "' TO N" + "'" +  @[User::strDBDataFolder] + "\\" + @[User::strDB] + "_Data.mdf" + "' , " + "
MOVE N" + "'" +  "pdenvcu_Log" + "' TO N" + "'" +  @[User::strDBLogFolder] + "\\" + 
@[User::strDB] + "_Log.ldf" + "',
REPLACE, STANDBY = N" + "'" + @[User::strDBDataFolder] + "\\" + @[User::strDB] + "_STANDBY_" + @[User::strDBDate] + ".bak" + "', NOUNLOAD, STATS = 10"
*/

--SSIS Expression Value:
RESTORE DATABASE ODS_WB FROM DISK= N'H:\DataLoadingStaging\ODS_WB\iWBDatabaseDifferentialBackup_EOD_20130101.bak' 
WITH FILE = 1, 
MOVE N'pdenvcu_Data' TO N'H:\Data\ODS_WB_Data.mdf' , 
MOVE N'pdenvcu_Log' TO N'L:\Logs\ODS_WB_Log.ldf',
REPLACE, STANDBY = N'H:\Data\ODS_WB_STANDBY_20130101.bak', NOUNLOAD, STATS = 10


--RESTORE LOG ON STANDBY
--SSIS Expression:
/*
"RESTORE LOG " +  @[User::strDB] + " FROM DISK= N" +  "'" + @[User::strDBLogPathLocal] +   "'" + " 
WITH FILE = 1, "  + "
REPLACE, STANDBY = N" + "'" + @[User::strDBDataFolder] + "\\" + @[User::strDB] + "_STANDBY_" +  RIGHT( @[User::strDBLog] ,LEN( @[User::strDBLog])- FINDSTRING( @[User::strDBLog] , "_", 1)) + "', NOUNLOAD, STATS = 10"
*/

--SSIS Expression Value:
RESTORE LOG ODS_WB FROM DISK= N'H:\DataLoadingStaging\ODS_WB\iWBLogBackup_INCR_20130101.bak' 
WITH FILE = 1, 
REPLACE, STANDBY = N'H:\Data\ODS_WB_STANDBY_INCR_20130101.bak', NOUNLOAD, STATS = 10
