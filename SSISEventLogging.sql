USE		DataIntegrationEngine
GO

SELECT			COUNT(1)
FROM			SSISEventLog
-- 4,266,849
SELECT	TOP 100	EventType,
				PackageName,
				SourceName,
				EventDescription,
				EventDateTime
--SELECT TOP 100 *
FROM			DataIntegrationEngine.dbo.SSISEventLog (NOLOCK)
WHERE			EventType = 'OnError'
ORDER BY		EventDateTime DESC
--
USE		DataIntegrationEngine
GO
--SalesTracking_Daily_VF_90.dtsx


SELECT			PackageName,
				COUNT(1),
				MIN(EventDateTime),
				MAX(EventDateTime)

FROM			SSISEventLog
WHERE			PackageName LIKE '%SalesTracking%'
GROUP BY		PackageName
ORDER BY		PackageName

GO

USE DataIntegrationEngine
GO

SELECT TOP 200	EventID,
				EventType,
				PackageName,
				SourceName,
				EventDescription,
				EventDateTime
--SELECT			MIN(EventDateTime), MAX(EventDateTime)
FROM			DataIntegrationEngine.dbo.SSISEventLog (NOLOCK)
WHERE		PackageName ='WBISFullDiffLogRefresh'
--AND				SourceName  = 'SQL - Create Index'
--WHERE		PackageName ='FirstWestTopNotchV5'
ORDER BY		EventID DESC
--WHERE		PackageName ='WBVFFullDiffLogRefresh'
--AND				SourceName  = 'SQL - Create Index'
--WHERE			PackageName = 'WBIST9'
--WHERE			PackageName = 'FirstWestTopNotchV5'
--WHERE			PackageName = 'WBSchemaAutoCompare'
--WHERE			PackageName = 'ReferralPerkFFDownload'
--AND				EventDateTime < '08/08/2019'
--WHERE			PackageName = 'SalesBeyondSIP'
--\SSISDB\Referral Perk\SSIS\ReferralPerkFFDownload.dtsx
--WHERE			PackageName = 'WBcprofile'
--WHERE			PackageName = 'ODS_QTrade'
--WHERE			PackageName = 'WBT9CatchUp'
--WHERE			PackageName = 'WBVFT9CatchUp'
--WHERE			PackageName = 'BlackLine'
--WHERE			PackageName = 'WBFullDiffLogRefresh'
--AND				EventDateTime > '04/09/2019'

--WHERE			PackageName = 'GoFTP'
--WHERE			PackageName = 'BlackLineC1UB'
--WHERE			PackageName = 'InsuranceICBCAutolink'
--WHERE			PackageName = 'SalesTracking_Daily_EN_90'
--WHERE			PackageName = 'RevAuto'
--WHERE			PackageName = 'CreateExtracts'
--WHERE			PackageName = 'FirstWestTopNotchV5'
--WHERE			PackageName = 'SmartPayEpicVF'
--WHERE			PackageName = 'WBISDiffExtract'
--WHERE			PackageName = 'WBVFFullDiffLogRefresh'
--WHERE			PackageName = 'ACERefreshDaily'
--WHERE			PackageName = 'WBVFT9'
--WHERE			PackageName = 'WBIST9ME'
--WHERE			PackageName = 'Mortgage Renewal'
--WHERE			PackageName = 'ODS_Qtrade_VF'
--WHERE			PackageName = 'WBISFullExtract'
--WHERE			PackageName = 'StagingAddress'
--WHERE			PackageName = 'BlackLineC1Bank'
--WHERE			PackageName = 'WBT9ME'
--WHERE			PackageName LIKE 'Validate%'
--WHERE			PackageName = 'DimEmployeePS'
--WHERE			PackageName = 'BlackLine'
--WHERE			PackageName = 'RevAutoMaster'
--WHERE			PackageName = 'WBIST9'
--WHERE			PackageName = 'SalesBeyondSIP'
--WHERE			PackageName = 'WBIST9DailyExtract'
--WHERE			PackageName = 'ACECust'
--WHERE			PackageName LIKE '%AccuMatch%'
--WHERE			PackageName = 'DW_Master_Part_00'--LIKE 'SD_Banking_Master%'--_witoutAddress'
--WHERE			PackageName = 'WBVFT9'

Executing the query "
BACKUP DATABASE BankWealthviewIslandDailyExtra9Lo..." failed with the following error: 
"BACKUP DATABASE is terminating abnormally.". Possible failure reasons: Problems with the query, 
"ResultSet" property not set correctly, parameters not set correctly, or connection not established correctly.


--WHERE			PackageName = 'DW_Master_Part_00'--LIKE 'SD_Banking_Master%'--_witoutAddress'
--WHERE			PackageName = 'WBVFT9'
--ORDER BY		EventID DESC
--WHERE			PackageName = 'EPICDailyExtract'
--WHERE			PackageName = 'WBISDesignerDailyExtract'

--WHERE			PackageName = 'WBSchemaAutoCompare'
--WHERE			PackageName = 'Collabria'
--WHERE			PackageName = 'TopNotchFlag'
--WHERE			PackageName = 'SalesBeyondSIP'
--WHERE			PackageName = 'WBVFT9'
--WHERE			PackageName = 'EcifExtractMain'
--WHERE			PackageName = 'WBIST9DailyExtract'
--WHERE			PackageName = 'RewardStream'
--WHERE			PackageName = 'ACELeadsSelfServeMarketing'
--WHERE			PackageName = 'BlackLineC1ETXN'
--WHERE			PackageName = 'ACECust'
--WHERE			PackageName = 'LeaseComplete'
--WHERE			PackageName = 'BlackLine'

--ORDER BY		EventDateTime DESC
--WHERE			PackageName = 'ICBCDailyExtract'
--AND				EventDescription LIKE '%Error%'
--WHERE			PackageName = 'CityPenticton'
--WHERE			PackageName = 'WBSchemaAutoCompare'
--AND				CHARINDEX('WB_Ecif', SourceName) = 0
--WHERE			PackageName = 'BeyondCUMISNameMatch'
--WHERE			PackageName = 'IS_VPN_FTP'
--WHERE			PackageName = 'GoFTP'

--WHERE			PackageName = 'SalesTracking_Daily_EN_90'
--WHERE			PackageName = 'BlackLine'
--WHERE			PackageName = 'FirstWestTopNotchV3'
--WHERE			EventDescription LIKE '%Synonym%'
--WHERE			PackageName = 'WBFullDiffLogRefresh'
--WHERE			PackageName = 'SD_EndBalance_FromBanking_2New'
--AND				CAST(CONVERT(VARCHAR(10),EventDateTime,112) AS DATETIME) = '06/05/2017'
--ORDER BY		EventID DESC
--ORDER BY		EventDateTime DESC
--WHERE			PackageName = 'WBISDailyExtract'
--WHERE			PackageName = 'WBT9'
--
--WHERE			PackageName = 'ACECust'
--WHERE			PackageName LIKE '%SD_Banking_Master%'
--WHERE			PackageName = 'SalesTracking_Daily_VF'
--WHERE			PackageName = 'BusinessRiskVF'
--WHERE			PackageName = 'SalesTracking'
--WHERE			PackageName = 'WBIST9DailyExtract'
--WHERE			PackageName = 'DW_dimUCID'
--WHERE			PackageName = 'PopulateExecutionLog'
--WHERE			PackageName = 'CUETSDailyMaster'
--WHERE			PackageName = 'FirstWestTopNotchV3'
--WHERE			PackageName = 'CUETSDailyMaster'
--AND				CAST(CONVERT(VARCHAR(10),EventDateTime,112) AS DATETIME) = '02/23/2017'
--AND				EventType = 'OnPostExecute'
--AND				EventDescription LIKE '%Error%'
ORDER BY		EventDateTime DESC
--

SELECT	TOP 2000	EventType,
				PackageName,
				SourceName,
				EventDescription,
				EventDateTime

FROM			DataIntegrationEngine.dbo.SSISEventLog (NOLOCK)
WHERE			PackageName = 'DW_Master_Part_01_daily'
AND				CAST(CONVERT(VARCHAR(10),EventDateTime,112) AS DATETIME) = '05/23/2016'
--AND				EventDescription LIKE '%Error%'
ORDER BY		EventDateTime DESC
--




SELECT			EventType,
				PackageName,
				SourceName,
				EventDescription,
				EventDateTime

FROM			DataIntegrationEngine.dbo.SSISEventLog (NOLOCK)
WHERE			PackageName = 'SalesTracking'
--AND				SourceName = 'SQL - Start WB Month End Job'
--AND				CAST(CONVERT(VARCHAR(10),EventDateTime,112) AS DATETIME) = '12/01/2015'
ORDER BY		EventDateTime DESC

--


SELECT	TOP 1000	EventType,
				PackageName,
				SourceName,
				EventDescription,
				EventDateTime

FROM			DataIntegrationEngine.dbo.SSISEventLog (NOLOCK)
WHERE			PackageName = 'CityPenticton'
--AND				SourceName = 'SQL - Start WB Month End Job'
--AND				CAST(CONVERT(VARCHAR(10),EventDateTime,112) AS DATETIME) = '12/01/2015'
ORDER BY		EventDateTime DESC

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

USE [DataIntegrationEngine]
GO

/****** Object:  Table [dbo].[SSISEventLog]    Script Date: 11/12/2014 10:02:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SSISEventLog](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventType] [varchar](20) NOT NULL,
	[ExecutionID] [uniqueidentifier] NULL,
	[PackageName] [varchar](100) NOT NULL,
	[PackageID] [uniqueidentifier] NULL,
	[VersionGUID] [uniqueidentifier] NULL,
	[VersionBuild] [int] NULL,
	[VersionMajor] [int] NULL,
	[VersionMinor] [int] NULL,
	[SourceName] [varchar](200) NOT NULL,
	[EventDescription] [varchar](1000) NULL,
	[EventDateTime] [datetime] NULL,
	[EventDate] [date] NULL CONSTRAINT [DF_SSISEventLog_EventDate_GetDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_EventID] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


