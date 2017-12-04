--
-- You must execute this SQL statement on 
-- (local).SMSPATRA ((local).SMSPATRA scripted Δευτέρα, 21 Απρίλιος 2008, 15:41:15)
-- to make it the same as 
-- PC-PEP.SMS (PC-PEP.SMS scripted Δευτέρα, 21 Απρίλιος 2008, 15:37:44)
--
-- You are advised to check the script manually and run it bit by bit.
-- Also, BACK UP YOUR DATABASE before running this script
--

IF EXISTS (SELECT * FROM tempdb..sysobjects WHERE id=OBJECT_ID('tempdb..#tmpErrors')) DROP TABLE #tmpErrors
GO
CREATE TABLE #tmpErrors (Error int)
GO
SET XACT_ABORT ON
GO


BEGIN TRANSACTION
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO


--
-- Script for dbo.BARTICL
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.BARTICL'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
ALTER TABLE [dbo].[BARTICL]
DROP
  CONSTRAINT [DF__BARTICL__COMPANY__2CDF35F4],
  CONSTRAINT [DF__BARTICL__BRANCH___2DD35A2D],
  CONSTRAINT [DF__BARTICL__YEAR_YE__2EC77E66],
  CONSTRAINT [DF__BARTICL__BTYPKIN__2FBBA29F],
  CONSTRAINT [DF__BARTICL__BARTICL__30AFC6D8],
  CONSTRAINT [DF__BARTICL__BARTICL__31A3EB11],
  CONSTRAINT [DF__BARTICL__BARTICL__32980F4A],
  CONSTRAINT [DF__BARTICL__BTYPKIN__338C3383],
  CONSTRAINT [DF__BARTICL__BARTICL__348057BC],
  CONSTRAINT [DF__BARTICL__BARTICL__35747BF5]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
CREATE TABLE [dbo].[tmp_sc_BARTICL]
    (
  [RECNUM] [decimal] (8, 0) NOT NULL IDENTITY (1, 1) ,
  [COMPANY_CODE] [varchar] (10) NOT NULL ,
  [BRANCH_CODE] [varchar] (10) NOT NULL ,
  [YEAR_YEAR] [decimal] (4, 0) NOT NULL ,
  [BTYPKIN_CODE] [decimal] (6, 0) NOT NULL ,
  [BARTICL_HMNIA] [datetime] NOT NULL ,
  [BARTICL_NO] [decimal] (14, 0) NOT NULL ,
  [BARTICL_REC0] [decimal] (14, 0) NULL ,
  [BARTICL_RECR] [varchar] (12) NOT NULL ,
  [BTYPKIN_RECR] [varchar] (12) NOT NULL ,
  [BARTICL_CODE1] [varchar] (20) NOT NULL ,
  [BARTICL_EPON1] [varchar] (60) NOT NULL ,
  [BARTICL_CODE2] [varchar] (20) NULL ,
  [BARTICL_EPON2] [varchar] (60) NULL ,
  [BARTICL_AITIOL] [varchar] (60) NULL ,
  [BARTICL_SV2] [decimal] (22, 8) NULL ,
  [BARTICL_SV0] [decimal] (22, 8) NULL ,
  [BARTICL_SV00] [decimal] (22, 8) NULL ,
  [BARTICL_SVR] [decimal] (22, 8) NULL ,
  [BARTICL_LINES] [decimal] (14, 0) NULL ,
  [BARTICL_BMOVELA] [decimal] (6, 0) NULL ,
  [BARTICL_M_CODE] [varchar] (10) NULL ,
  [GARTICL_REC0] [decimal] (14, 0) NULL ,
  [CARTICL_REC0] [decimal] (14, 0) NULL ,
  [VARTICL_REC0] [decimal] (14, 0) NULL ,
  [GMOVE_MREC0] [decimal] (14, 0) NULL ,
  [GPLAN_MREC0] [decimal] (14, 0) NULL ,
  [CLIENT_MRECR] [varchar] (20) NULL ,
  [BARTICL_EKLEISE] [varchar] (1) NULL ,
  [CMOVES_RECR] [varchar] (12) NULL ,
  [ISOTIMIA] [decimal] (22, 8) NULL ,
  [CN_CODE] [varchar] (20) NULL ,
  [CN_DESCR] [varchar] (60) NULL ,
  [CN_RECR] [varchar] (12) NULL ,
  [SLS_ID] [varchar] (20) NULL ,
  [CNT_ID] [varchar] (20) NULL ,
  [PRESP_ID] [varchar] (20) NULL ,
  [SE_LOGIK] [decimal] (2, 0) NULL ,
  [SXOLIA1] [varchar] (60) NULL ,
  [SXOLIA2] [varchar] (60) NULL ,
  [PARTL_AKYR_RECR] [varchar] (12) NULL ,
  [EKKREMES] [decimal] (2, 0) NOT NULL ,
  [ARITH_ORIST] [decimal] (14, 0) NOT NULL ,
  [HMNIA_ORIST] [datetime] NULL ,
  [PAE_ARITHM] [decimal] (14, 0) NULL ,
  [PAE_HMNIA] [datetime] NULL 
)

GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='COMPANY_CODE' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[COMPANY_CODE]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='BRANCH_CODE' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[BRANCH_CODE]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='YEAR_YEAR' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[YEAR_YEAR]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='BTYPKIN_CODE' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[BTYPKIN_CODE]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='BARTICL_HMNIA' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[BARTICL_HMNIA]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='BARTICL_NO' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[BARTICL_NO]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='BARTICL_RECR' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[BARTICL_RECR]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='BTYPKIN_RECR' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[BTYPKIN_RECR]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='BARTICL_CODE1' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[BARTICL_CODE1]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='BARTICL_EPON1' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[BARTICL_EPON1]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='EKKREMES' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[EKKREMES]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_BARTICL]') and name='ARITH_ORIST' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_BARTICL].[ARITH_ORIST]''')

ALTER TABLE [dbo].[tmp_sc_BARTICL] WITH NOCHECK
ADD
 CONSTRAINT [DF__BARTICL__COMPANY__2CDF35F4] DEFAULT (' ') FOR [COMPANY_CODE],
 CONSTRAINT [DF__BARTICL__BRANCH___2DD35A2D] DEFAULT (' ') FOR [BRANCH_CODE],
 CONSTRAINT [DF__BARTICL__YEAR_YE__2EC77E66] DEFAULT (0) FOR [YEAR_YEAR],
 CONSTRAINT [DF__BARTICL__BTYPKIN__2FBBA29F] DEFAULT (0) FOR [BTYPKIN_CODE],
 CONSTRAINT [DF__BARTICL__BARTICL__30AFC6D8] DEFAULT ('01/01/1753') FOR [BARTICL_HMNIA],
 CONSTRAINT [DF__BARTICL__BARTICL__31A3EB11] DEFAULT (0) FOR [BARTICL_NO],
 CONSTRAINT [DF__BARTICL__BARTICL__32980F4A] DEFAULT (' ') FOR [BARTICL_RECR],
 CONSTRAINT [DF__BARTICL__BTYPKIN__338C3383] DEFAULT (' ') FOR [BTYPKIN_RECR],
 CONSTRAINT [DF__BARTICL__BARTICL__348057BC] DEFAULT (' ') FOR [BARTICL_CODE1],
 CONSTRAINT [DF__BARTICL__BARTICL__35747BF5] DEFAULT (' ') FOR [BARTICL_EPON1],
 CONSTRAINT [DF__BARTICL__EKKREME__5285BBEF] DEFAULT (0) FOR [EKKREMES],
 CONSTRAINT [DF__BARTICL__ARITH_O__21AD7A6A] DEFAULT (0) FOR [ARITH_ORIST]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET IDENTITY_INSERT [dbo].[tmp_sc_BARTICL] ON
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
INSERT INTO [dbo].[tmp_sc_BARTICL] ([RECNUM], [COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [BTYPKIN_CODE], [BARTICL_HMNIA], [BARTICL_NO], [BARTICL_REC0], [BARTICL_RECR], [BTYPKIN_RECR], [BARTICL_CODE1], [BARTICL_EPON1], [BARTICL_CODE2], [BARTICL_EPON2], [BARTICL_AITIOL], [BARTICL_SV2], [BARTICL_SV0], [BARTICL_SV00], [BARTICL_SVR], [BARTICL_LINES], [BARTICL_BMOVELA], [BARTICL_M_CODE], [GARTICL_REC0], [CARTICL_REC0], [VARTICL_REC0], [GMOVE_MREC0], [GPLAN_MREC0], [CLIENT_MRECR], [BARTICL_EKLEISE], [CMOVES_RECR], [ISOTIMIA], [CN_CODE], [CN_DESCR], [CN_RECR], [SLS_ID], [CNT_ID], [PRESP_ID], [SE_LOGIK], [SXOLIA1], [SXOLIA2], [PARTL_AKYR_RECR]) SELECT [RECNUM], [COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [BTYPKIN_CODE], [BARTICL_HMNIA], [BARTICL_NO], [BARTICL_REC0], [BARTICL_RECR], [BTYPKIN_RECR], [BARTICL_CODE1], [BARTICL_EPON1], [BARTICL_CODE2], [BARTICL_EPON2], [BARTICL_AITIOL], [BARTICL_SV2], [BARTICL_SV0], [BARTICL_SV00], [BARTICL_SVR], [BARTICL_LINES], [BARTICL_BMOVELA], [BARTICL_M_CODE], [GARTICL_REC0], [CARTICL_REC0], [VARTICL_REC0], [GMOVE_MREC0], [GPLAN_MREC0], [CLIENT_MRECR], [BARTICL_EKLEISE], [CMOVES_RECR], [ISOTIMIA], [CN_CODE], [CN_DESCR], [CN_RECR], [SLS_ID], [CNT_ID], [PRESP_ID], [SE_LOGIK], [SXOLIA1], [SXOLIA2], [PARTL_AKYR_RECR] FROM [dbo].[BARTICL]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET IDENTITY_INSERT [dbo].[tmp_sc_BARTICL] OFF
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

if exists (select * from sysobjects where id=object_id('[dbo].[BARTICL]') and OBJECTPROPERTY(id, 'IsUserTable')=1)
  drop table [dbo].[BARTICL]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


sp_rename 'dbo.tmp_sc_BARTICL', 'BARTICL'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

 CREATE  UNIQUE  INDEX [BARTICL_INDEX0] ON [dbo].[BARTICL]([RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX2] ON [dbo].[BARTICL]([BARTICL_RECR]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX3] ON [dbo].[BARTICL]([BTYPKIN_RECR], [BARTICL_RECR]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX4] ON [dbo].[BARTICL]([BARTICL_HMNIA], [BARTICL_EPON1], [BARTICL_NO], [BTYPKIN_CODE], [RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX5] ON [dbo].[BARTICL]([BARTICL_CODE1], [BARTICL_HMNIA], [BARTICL_NO], [BTYPKIN_CODE], [RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX6] ON [dbo].[BARTICL]([BTYPKIN_CODE], [BARTICL_EPON1], [BARTICL_HMNIA], [BARTICL_NO], [RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX7] ON [dbo].[BARTICL]([COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [BARTICL_NO], [RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX8] ON [dbo].[BARTICL]([COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [BTYPKIN_CODE], [BARTICL_EPON1], [BARTICL_HMNIA], [RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX9] ON [dbo].[BARTICL]([COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [BARTICL_HMNIA], [BARTICL_EPON1], [RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX10] ON [dbo].[BARTICL]([COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [BARTICL_EPON1], [BARTICL_HMNIA], [RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX11] ON [dbo].[BARTICL]([COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [BTYPKIN_CODE], [BARTICL_HMNIA], [BARTICL_EPON1], [RECNUM]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX12] ON [dbo].[BARTICL]([COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [EKKREMES], [BARTICL_HMNIA], [BTYPKIN_CODE], [BARTICL_RECR]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


 CREATE  UNIQUE  INDEX [BARTICL_INDEX13] ON [dbo].[BARTICL]([ARITH_ORIST], [BARTICL_RECR]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO



ALTER TABLE [dbo].[BARTICL] WITH NOCHECK ADD  CONSTRAINT [BARTICL_INDEX1] PRIMARY KEY CLUSTERED ([COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [BTYPKIN_CODE], [BARTICL_HMNIA], [BARTICL_NO]) 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


--
-- Script for dbo.BARTLNO
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.BARTLNO'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
CREATE TABLE [dbo].[BARTLNO]
    (
  [RECNUM] [decimal] (8, 0) NOT NULL IDENTITY (1, 1) ,
  [BTYPKIN_CODE] [decimal] (6, 0) NOT NULL ,
  [COMPANY_CODE] [varchar] (3) NOT NULL ,
  [LAST_NO] [decimal] (14, 0) NULL 
)



ALTER TABLE [dbo].[BARTLNO] ADD CONSTRAINT [DF__BARTLNO__BTYPKIN__2395C2DC] DEFAULT (0) FOR [BTYPKIN_CODE]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

ALTER TABLE [dbo].[BARTLNO] ADD CONSTRAINT [DF__BARTLNO__COMPANY__2489E715] DEFAULT (' ') FOR [COMPANY_CODE]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

 CREATE  UNIQUE  INDEX [BARTLNO_INDEX1] ON [dbo].[BARTLNO]([COMPANY_CODE], [BTYPKIN_CODE]) ON [PRIMARY]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO




--
-- Script for dbo.BRANCH
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.BRANCH'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

ALTER TABLE [dbo].[BRANCH]
ADD
  [DATE_LOCKED] [datetime] NULL 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO







--
-- Script for dbo.BTYPKIN
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.BTYPKIN'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

ALTER TABLE [dbo].[BTYPKIN]
ADD
  [LOCKED] [decimal] (2, 0) NULL ,
  [LOCKED_DATE] [datetime] NULL 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO







--
-- Script for dbo.GMOVE
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.GMOVE'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
ALTER TABLE [dbo].[GMOVE]
DROP
  CONSTRAINT [DF__GMOVE__COMPANY_C__3BA25697],
  CONSTRAINT [DF__GMOVE__BRANCH_CO__3C967AD0],
  CONSTRAINT [DF__GMOVE__YEAR_YEAR__3D8A9F09],
  CONSTRAINT [DF__GMOVE__GTYPKIN_C__3E7EC342],
  CONSTRAINT [DF__GMOVE__GARTICL_H__3F72E77B],
  CONSTRAINT [DF__GMOVE__GARTICL_N__40670BB4],
  CONSTRAINT [DF__GMOVE__GARTICL_R__415B2FED],
  CONSTRAINT [DF__GMOVE__GPLAN_REC__424F5426],
  CONSTRAINT [DF__GMOVE__GMOVE_REC__4343785F],
  CONSTRAINT [DF__GMOVE__GPLAN_COD__44379C98],
  CONSTRAINT [DF__GMOVE__GTHHMGIO___452BC0D1],
  CONSTRAINT [DF__GMOVE__GMOVE_AA__461FE50A],
  CONSTRAINT [DF__GMOVE__GTHHMGIO___47140943]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
CREATE TABLE [dbo].[tmp_sc_GMOVE]
    (
  [RECNUM] [decimal] (8, 0) NOT NULL IDENTITY (1, 1) ,
  [COMPANY_CODE] [varchar] (10) NOT NULL ,
  [BRANCH_CODE] [varchar] (10) NOT NULL ,
  [YEAR_YEAR] [decimal] (4, 0) NOT NULL ,
  [GTYPKIN_CODE] [decimal] (6, 0) NOT NULL ,
  [GARTICL_HMNIA] [datetime] NOT NULL ,
  [GARTICL_NO] [decimal] (14, 0) NOT NULL ,
  [GARTICL_RECR] [varchar] (12) NOT NULL ,
  [GPLAN_RECR] [varchar] (12) NOT NULL ,
  [GMOVE_REC0] [decimal] (14, 0) NOT NULL ,
  [GMOVE_RECR] [varchar] (12) NOT NULL ,
  [GPLAN_CODE] [varchar] (20) NULL ,
  [GMOVE_AITIOL] [varchar] (60) NULL ,
  [GMOVE_A_CODE] [varchar] (10) NULL ,
  [YEAR_RECR] [varchar] (7) NULL ,
  [PMS_RECR] [varchar] (12) NULL ,
  [PARTL_RECR] [varchar] (12) NULL ,
  [BARTL_RECR] [varchar] (12) NULL ,
  [BMOVE_RECR] [varchar] (12) NULL ,
  [MODULE] [varchar] (2) NOT NULL ,
  [LOGIN_ID] [varchar] (15) NOT NULL ,
  [HMNIA_METABOLHS] [datetime] NOT NULL ,
  [ORA_METABOLHS] [varchar] (10) NOT NULL ,
  [EIDOS_METABOLHS] [varchar] (1) NULL ,
  [PREV_ID] [varchar] (20) NULL ,
  [CUR_ID] [varchar] (20) NULL ,
  [PREV_NAME] [varchar] (80) NULL ,
  [CUR_NAME] [varchar] (80) NULL ,
  [PREV_AFM] [varchar] (20) NULL ,
  [CUR_AFM] [varchar] (20) NULL ,
  [PREV_DOY] [varchar] (20) NULL ,
  [CUR_DOY] [varchar] (20) NULL ,
  [PREV_STOXOS1] [decimal] (18, 4) NULL ,
  [CUR_STOXOS1] [decimal] (18, 4) NULL ,
  [PREV_STOXOS2] [decimal] (18, 4) NULL ,
  [CUR_STOXOS2] [decimal] (18, 4) NULL ,
  [PREV_ZONH] [varchar] (10) NULL ,
  [CUR_ZONH] [varchar] (10) NULL ,
  [PREV_OXHMA] [varchar] (20) NULL ,
  [CUR_OXHMA] [varchar] (20) NULL ,
  [PREV_OX_APOBARO] [decimal] (18, 4) NULL ,
  [CUR_OX_APOBARO] [decimal] (18, 4) NULL ,
  [PREV_ANTLIA] [varchar] (20) NULL ,
  [CUR_ANTLIA] [varchar] (20) NULL ,
  [PREV_ANT_MIN_M3] [decimal] (18, 4) NULL ,
  [CUR_ANT_MIN_M3] [decimal] (18, 4) NULL ,
  [PREV_QUAL] [varchar] (10) NULL ,
  [CUR_QUAL] [varchar] (10) NULL ,
  [PREV_M3] [decimal] (18, 4) NULL ,
  [CUR_M3] [decimal] (18, 4) NULL ,
  [PREV_UNITPRICE] [decimal] (18, 4) NULL ,
  [CUR_UNITPRICE] [decimal] (18, 4) NULL ,
  [PREV_ITEM] [varchar] (20) NULL ,
  [CUR_ITEM] [varchar] (20) NULL ,
  [PREV_CN] [varchar] (20) NULL ,
  [CUR_CN] [varchar] (20) NULL ,
  [PREV_CN_ADDR] [varchar] (60) NULL ,
  [CUR_CN_ADDR] [varchar] (60) NULL ,
  [PREV_CN_PROSTH] [varchar] (10) NULL ,
  [CUR_CN_PROSTH] [varchar] (10) NULL ,
  [RECR1] [varchar] (15) NULL ,
  [RECR2] [varchar] (15) NULL ,
  [RECR3] [varchar] (15) NULL ,
  [RECR4] [varchar] (15) NULL ,
  [TXT1] [varchar] (40) NULL ,
  [TXT2] [varchar] (40) NULL ,
  [TXT3] [varchar] (40) NULL ,
  [TXT4] [varchar] (40) NULL ,
  [LABEL1] [varchar] (80) NULL ,
  [LABEL2] [varchar] (80) NULL ,
  [LABEL3] [varchar] (80) NULL ,
  [FLAGN1] [decimal] (2, 0) NULL ,
  [FLAGN2] [decimal] (2, 0) NULL ,
  [FLAGN3] [decimal] (2, 0) NULL ,
  [FLAGA1] [varchar] (1) NULL ,
  [FLAGA2] [varchar] (1) NULL ,
  [FLAGA3] [varchar] (1) NULL ,
  [NUM1] [decimal] (18, 4) NULL ,
  [NUM2] [decimal] (18, 4) NULL ,
  [NUM3] [decimal] (18, 4) NULL ,
  [NUM4] [decimal] (18, 4) NULL ,
  [NUM5] [decimal] (18, 4) NULL ,
  [DATE1] [datetime] NULL ,
  [DATE2] [datetime] NULL ,
  [DATE3] [datetime] NULL ,
  [DATE4] [datetime] NULL ,
  [TIME1] [decimal] (4, 2) NULL ,
  [TIME2] [decimal] (4, 2) NULL ,
  [TIME3] [decimal] (4, 2) NULL ,
  [TIME4] [decimal] (4, 2) NULL ,
  [DESCR1] [varchar] (100) NULL ,
  [DESCR2] [varchar] (100) NULL ,
  [DESCR3] [varchar] (100) NULL ,
  [SMALLTXT1] [varchar] (4) NULL ,
  [SMALLTXT2] [varchar] (4) NULL ,
  [SMALLTXT3] [varchar] (4) NULL ,
  [PREV_PARAST] [varchar] (5) NULL ,
  [CUR_PARAST] [varchar] (5) NULL ,
  [PREV_SEIRA] [varchar] (5) NULL ,
  [CUR_SEIRA] [varchar] (5) NULL ,
  [PREV_HMNIA] [datetime] NULL ,
  [CUR_HMNIA] [datetime] NULL ,
  [PREV_NO] [decimal] (14, 0) NULL ,
  [CUR_NO] [decimal] (14, 0) NULL ,
  [PREV_AA_DEOP] [varchar] (25) NULL ,
  [CUR_AA_DEOP] [varchar] (25) NULL ,
  [PREV_VPRICE] [decimal] (18, 4) NULL ,
  [CUR_VPRICE] [decimal] (18, 4) NULL ,
  [PREV_PAGIAXRM3] [decimal] (18, 4) NULL ,
  [CUR_PAGIAXRM3] [decimal] (18, 4) NULL ,
  [PREV_ELEIPH] [decimal] (16, 2) NULL ,
  [CUR_ELEIPH] [decimal] (16, 2) NULL 
)

GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='COMPANY_CODE' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[COMPANY_CODE]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='BRANCH_CODE' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[BRANCH_CODE]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='YEAR_YEAR' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[YEAR_YEAR]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='GTYPKIN_CODE' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[GTYPKIN_CODE]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='GARTICL_HMNIA' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[GARTICL_HMNIA]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='GARTICL_NO' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[GARTICL_NO]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='GARTICL_RECR' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[GARTICL_RECR]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='GPLAN_RECR' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[GPLAN_RECR]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='GMOVE_REC0' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[GMOVE_REC0]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='GMOVE_RECR' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[GMOVE_RECR]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='MODULE' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[MODULE]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='LOGIN_ID' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[LOGIN_ID]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='HMNIA_METABOLHS' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[HMNIA_METABOLHS]''')
if exists (select * from syscolumns where id=OBJECT_ID('[dbo].[tmp_sc_GMOVE]') and name='ORA_METABOLHS' and cdefault>0) EXEC ('sp_unbindefault ''[dbo].[tmp_sc_GMOVE].[ORA_METABOLHS]''')

ALTER TABLE [dbo].[tmp_sc_GMOVE] WITH NOCHECK
ADD
 CONSTRAINT [DF__GMOVE__COMPANY_C__7A93AD49] DEFAULT (' ') FOR [COMPANY_CODE],
 CONSTRAINT [DF__GMOVE__BRANCH_CO__7B87D182] DEFAULT (' ') FOR [BRANCH_CODE],
 CONSTRAINT [DF__GMOVE__YEAR_YEAR__7C7BF5BB] DEFAULT (0) FOR [YEAR_YEAR],
 CONSTRAINT [DF__GMOVE__GTYPKIN_C__7D7019F4] DEFAULT (0) FOR [GTYPKIN_CODE],
 CONSTRAINT [DF__GMOVE__GARTICL_H__7E643E2D] DEFAULT ('01/01/1753') FOR [GARTICL_HMNIA],
 CONSTRAINT [DF__GMOVE__GARTICL_N__7F586266] DEFAULT (0) FOR [GARTICL_NO],
 CONSTRAINT [DF__GMOVE__GARTICL_R__004C869F] DEFAULT (' ') FOR [GARTICL_RECR],
 CONSTRAINT [DF__GMOVE__GPLAN_REC__0140AAD8] DEFAULT (' ') FOR [GPLAN_RECR],
 CONSTRAINT [DF__GMOVE__GMOVE_REC__0234CF11] DEFAULT (0) FOR [GMOVE_REC0],
 CONSTRAINT [DF__GMOVE__GMOVE_REC__0328F34A] DEFAULT (' ') FOR [GMOVE_RECR],
 CONSTRAINT [DF__GMOVE__MODULE__041D1783] DEFAULT (' ') FOR [MODULE],
 CONSTRAINT [DF__GMOVE__LOGIN_ID__05113BBC] DEFAULT (' ') FOR [LOGIN_ID],
 CONSTRAINT [DF__GMOVE__HMNIA_MET__06055FF5] DEFAULT ('01/01/1753') FOR [HMNIA_METABOLHS],
 CONSTRAINT [DF__GMOVE__ORA_METAB__06F9842E] DEFAULT (' ') FOR [ORA_METABOLHS]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET IDENTITY_INSERT [dbo].[tmp_sc_GMOVE] ON
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
INSERT INTO [dbo].[tmp_sc_GMOVE] ([RECNUM], [COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [GTYPKIN_CODE], [GARTICL_HMNIA], [GARTICL_NO], [GARTICL_RECR], [GPLAN_RECR], [GMOVE_REC0], [GMOVE_RECR], [GPLAN_CODE], [GMOVE_AITIOL], [GMOVE_A_CODE], [YEAR_RECR]) SELECT [RECNUM], [COMPANY_CODE], [BRANCH_CODE], [YEAR_YEAR], [GTYPKIN_CODE], [GARTICL_HMNIA], [GARTICL_NO], [GARTICL_RECR], [GPLAN_RECR], [GMOVE_REC0], ISNULL([GMOVE_RECR],(' ')), [GPLAN_CODE], [GMOVE_AITIOL], [GMOVE_A_CODE], [YEAR_RECR] FROM [dbo].[GMOVE]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET IDENTITY_INSERT [dbo].[tmp_sc_GMOVE] OFF
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

if exists (select * from sysobjects where id=object_id('[dbo].[GMOVE]') and OBJECTPROPERTY(id, 'IsUserTable')=1)
  drop table [dbo].[GMOVE]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


sp_rename 'dbo.tmp_sc_GMOVE', 'GMOVE'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO




--
-- Script for dbo.SYSFILE
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.SYSFILE'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

ALTER TABLE [dbo].[SYSFILE]
ADD
  [USE_AUDIT] [decimal] (2, 0) NULL 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO







--
-- Script for dbo.SYSRECG
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.SYSRECG'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
CREATE TABLE [dbo].[tmp_sc_SYSRECG]
    (
  [RECNUM] [decimal] (8, 0) NOT NULL IDENTITY (1, 1) ,
  [PAGKAT_REC0] [decimal] (14, 0) NULL ,
  [PAGKIN_REC0] [decimal] (14, 0) NULL ,
  [PAGKINMV_REC0] [decimal] (14, 0) NULL ,
  [PAGMOVES_NO] [decimal] (14, 0) NULL ,
  [PAGMOVES_REC0] [decimal] (14, 0) NULL ,
  [FIELD6] [decimal] (14, 0) NULL ,
  [FIELD7] [decimal] (14, 0) NULL ,
  [FIELD8] [decimal] (14, 0) NULL ,
  [FIELD9] [decimal] (14, 0) NULL ,
  [FIELD10] [decimal] (14, 0) NULL ,
  [FIELD11] [decimal] (14, 0) NULL ,
  [FIELD12] [decimal] (14, 0) NULL ,
  [FIELD13] [decimal] (14, 0) NULL ,
  [FIELD14] [decimal] (14, 0) NULL ,
  [FIELD15] [decimal] (14, 0) NULL ,
  [FIELD16] [decimal] (14, 0) NULL ,
  [FIELD17] [decimal] (14, 0) NULL ,
  [FIELD18] [decimal] (14, 0) NULL ,
  [FIELD19] [decimal] (14, 0) NULL ,
  [FIELD20] [decimal] (14, 0) NULL ,
  [FIELD21] [decimal] (14, 0) NULL ,
  [FIELD22] [decimal] (14, 0) NULL ,
  [FIELD23] [decimal] (14, 0) NULL ,
  [FIELD24] [decimal] (14, 0) NULL ,
  [FIELD25] [decimal] (14, 0) NULL ,
  [FIELD26] [decimal] (14, 0) NULL ,
  [FIELD27] [decimal] (14, 0) NULL ,
  [FIELD28] [decimal] (14, 0) NULL ,
  [FIELD29] [decimal] (14, 0) NULL ,
  [FIELD30] [decimal] (14, 0) NULL ,
  [FIELD31] [decimal] (14, 0) NULL ,
  [FIELD32] [decimal] (14, 0) NULL ,
  [FIELD33] [decimal] (14, 0) NULL ,
  [FIELD34] [decimal] (14, 0) NULL ,
  [FIELD35] [decimal] (14, 0) NULL ,
  [FIELD36] [decimal] (14, 0) NULL ,
  [FIELD37] [decimal] (14, 0) NULL ,
  [FIELD38] [decimal] (14, 0) NULL ,
  [FIELD39] [decimal] (14, 0) NULL ,
  [FIELD40] [decimal] (14, 0) NULL ,
  [FIELD41] [decimal] (14, 0) NULL ,
  [FIELD42] [decimal] (14, 0) NULL ,
  [FIELD43] [decimal] (14, 0) NULL ,
  [FIELD44] [decimal] (14, 0) NULL ,
  [FIELD45] [decimal] (14, 0) NULL ,
  [FIELD46] [decimal] (14, 0) NULL ,
  [FIELD47] [decimal] (14, 0) NULL ,
  [FIELD48] [decimal] (14, 0) NULL ,
  [FIELD49] [decimal] (14, 0) NULL ,
  [FIELD50] [decimal] (14, 0) NULL ,
  [COMPANY_REC0] [decimal] (14, 0) NULL ,
  [BRANCH_REC0] [decimal] (14, 0) NULL ,
  [YEAR_REC0] [decimal] (14, 0) NULL ,
  [GTHHMGIO_REC0] [decimal] (14, 0) NULL ,
  [GTYPKIN_REC0] [decimal] (14, 0) NULL ,
  [GPLAN_REC0] [decimal] (14, 0) NULL ,
  [GARTICLE_REC0] [decimal] (14, 0) NULL ,
  [GMOVE_REC0] [decimal] (14, 0) NULL ,
  [GMHNES_REC0] [decimal] (14, 0) NULL ,
  [GHMNIES_REC0] [decimal] (14, 0) NULL ,
  [GFLAGKIN_REC0] [decimal] (14, 0) NULL ,
  [GFORMAT_REC0] [decimal] (14, 0) NULL ,
  [GTHAA_REC0] [decimal] (14, 0) NULL ,
  [GPARTICL_REC0] [decimal] (14, 0) NULL ,
  [GPMOVES_REC0] [decimal] (14, 0) NULL ,
  [GPLANMOD_REC0] [decimal] (14, 0) NULL ,
  [ALIAS_GMOVESA] [decimal] (14, 0) NULL ,
  [GOPEN_REC0] [decimal] (14, 0) NULL ,
  [GBRIDGEH_REC0] [decimal] (14, 0) NULL ,
  [GBRIDGED_REC0] [decimal] (14, 0) NULL ,
  [FIELD71] [decimal] (14, 0) NULL ,
  [FIELD72] [decimal] (14, 0) NULL ,
  [FIELD73] [decimal] (14, 0) NULL ,
  [FIELD74] [decimal] (14, 0) NULL ,
  [FIELD75] [decimal] (14, 0) NULL ,
  [FIELD76] [decimal] (14, 0) NULL ,
  [FIELD77] [decimal] (14, 0) NULL ,
  [FIELD78] [decimal] (14, 0) NULL ,
  [FIELD79] [decimal] (14, 0) NULL ,
  [FIELD80] [decimal] (14, 0) NULL ,
  [FIELD81] [decimal] (14, 0) NULL ,
  [FIELD82] [decimal] (14, 0) NULL ,
  [FIELD83] [decimal] (14, 0) NULL ,
  [FIELD84] [decimal] (14, 0) NULL ,
  [FIELD85] [decimal] (14, 0) NULL ,
  [FIELD86] [decimal] (14, 0) NULL ,
  [FIELD87] [decimal] (14, 0) NULL ,
  [FIELD88] [decimal] (14, 0) NULL ,
  [FIELD89] [decimal] (14, 0) NULL ,
  [FIELD90] [decimal] (14, 0) NULL ,
  [FIELD91] [decimal] (14, 0) NULL ,
  [FIELD92] [decimal] (14, 0) NULL ,
  [FIELD93] [decimal] (14, 0) NULL ,
  [FIELD94] [decimal] (14, 0) NULL ,
  [FIELD95] [decimal] (14, 0) NULL ,
  [FIELD96] [decimal] (14, 0) NULL ,
  [FIELD97] [decimal] (14, 0) NULL ,
  [CURRENCY_REC0] [decimal] (14, 0) NULL ,
  [RATES_REC0] [decimal] (14, 0) NULL ,
  [FIELD100] [decimal] (14, 0) NULL ,
  [FIELD101] [decimal] (14, 0) NULL ,
  [FIELD102] [decimal] (14, 0) NULL ,
  [FIELD103] [decimal] (14, 0) NULL ,
  [FIELD104] [decimal] (14, 0) NULL ,
  [FIELD105] [decimal] (14, 0) NULL ,
  [FIELD106] [decimal] (14, 0) NULL ,
  [FIELD107] [decimal] (14, 0) NULL ,
  [FIELD108] [decimal] (14, 0) NULL ,
  [FIELD109] [decimal] (14, 0) NULL ,
  [FIELD110] [decimal] (14, 0) NULL ,
  [FIELD111] [decimal] (14, 0) NULL ,
  [FIELD112] [decimal] (14, 0) NULL ,
  [FIELD113] [decimal] (14, 0) NULL ,
  [FIELD114] [decimal] (14, 0) NULL ,
  [FIELD115] [decimal] (14, 0) NULL ,
  [FIELD116] [decimal] (14, 0) NULL ,
  [FIELD117] [decimal] (14, 0) NULL ,
  [FIELD118] [decimal] (14, 0) NULL ,
  [FIELD119] [decimal] (14, 0) NULL ,
  [FIELD120] [decimal] (14, 0) NULL ,
  [FIELD121] [decimal] (14, 0) NULL ,
  [FIELD122] [decimal] (14, 0) NULL ,
  [FIELD123] [decimal] (14, 0) NULL ,
  [FIELD124] [decimal] (14, 0) NULL ,
  [FIELD125] [decimal] (14, 0) NULL ,
  [FIELD126] [decimal] (14, 0) NULL ,
  [FIELD127] [decimal] (14, 0) NULL ,
  [FIELD128] [decimal] (14, 0) NULL ,
  [FIELD129] [decimal] (14, 0) NULL ,
  [FIELD130] [decimal] (14, 0) NULL ,
  [FIELD131] [decimal] (14, 0) NULL ,
  [FIELD132] [decimal] (14, 0) NULL ,
  [FIELD133] [decimal] (14, 0) NULL ,
  [FIELD134] [decimal] (14, 0) NULL ,
  [FIELD135] [decimal] (14, 0) NULL ,
  [FIELD136] [decimal] (14, 0) NULL ,
  [FIELD137] [decimal] (14, 0) NULL ,
  [FIELD138] [decimal] (14, 0) NULL ,
  [FIELD139] [decimal] (14, 0) NULL ,
  [FIELD140] [decimal] (14, 0) NULL ,
  [FIELD141] [decimal] (14, 0) NULL ,
  [FIELD142] [decimal] (14, 0) NULL ,
  [FIELD143] [decimal] (14, 0) NULL ,
  [FIELD144] [decimal] (14, 0) NULL ,
  [FIELD145] [decimal] (14, 0) NULL ,
  [FIELD146] [decimal] (14, 0) NULL ,
  [FIELD147] [decimal] (14, 0) NULL ,
  [FIELD148] [decimal] (14, 0) NULL ,
  [FIELD149] [decimal] (14, 0) NULL ,
  [FIELD150] [decimal] (14, 0) NULL ,
  [FIELD151] [decimal] (14, 0) NULL ,
  [FIELD152] [decimal] (14, 0) NULL ,
  [FIELD153] [decimal] (14, 0) NULL ,
  [FIELD154] [decimal] (14, 0) NULL ,
  [FIELD155] [decimal] (14, 0) NULL ,
  [FIELD156] [decimal] (14, 0) NULL ,
  [FIELD157] [decimal] (14, 0) NULL ,
  [FIELD158] [decimal] (14, 0) NULL ,
  [FIELD159] [decimal] (14, 0) NULL ,
  [FIELD160] [decimal] (14, 0) NULL ,
  [FIELD161] [decimal] (14, 0) NULL ,
  [FIELD162] [decimal] (14, 0) NULL ,
  [FIELD163] [decimal] (14, 0) NULL ,
  [FIELD164] [decimal] (14, 0) NULL ,
  [FIELD165] [decimal] (14, 0) NULL ,
  [FIELD166] [decimal] (14, 0) NULL ,
  [FIELD167] [decimal] (14, 0) NULL ,
  [FIELD168] [decimal] (14, 0) NULL ,
  [FIELD169] [decimal] (14, 0) NULL ,
  [FIELD170] [decimal] (14, 0) NULL ,
  [FIELD171] [decimal] (14, 0) NULL ,
  [FIELD172] [decimal] (14, 0) NULL ,
  [FIELD173] [decimal] (14, 0) NULL ,
  [FIELD174] [decimal] (14, 0) NULL ,
  [FIELD175] [decimal] (14, 0) NULL ,
  [FIELD176] [decimal] (14, 0) NULL ,
  [FIELD177] [decimal] (14, 0) NULL ,
  [FIELD178] [decimal] (14, 0) NULL ,
  [FIELD179] [decimal] (14, 0) NULL ,
  [FIELD180] [decimal] (14, 0) NULL ,
  [FIELD181] [decimal] (14, 0) NULL ,
  [FIELD182] [decimal] (14, 0) NULL ,
  [FIELD183] [decimal] (14, 0) NULL ,
  [FIELD184] [decimal] (14, 0) NULL ,
  [FIELD185] [decimal] (14, 0) NULL ,
  [FIELD186] [decimal] (14, 0) NULL ,
  [FIELD187] [decimal] (14, 0) NULL ,
  [FIELD188] [decimal] (14, 0) NULL ,
  [FIELD189] [decimal] (14, 0) NULL ,
  [FIELD190] [decimal] (14, 0) NULL ,
  [FIELD191] [decimal] (14, 0) NULL ,
  [FIELD192] [decimal] (14, 0) NULL ,
  [FIELD193] [decimal] (14, 0) NULL ,
  [FIELD194] [decimal] (14, 0) NULL ,
  [FIELD195] [decimal] (14, 0) NULL ,
  [FIELD196] [decimal] (14, 0) NULL ,
  [FIELD197] [decimal] (14, 0) NULL ,
  [FIELD198] [decimal] (14, 0) NULL ,
  [FIELD199] [decimal] (14, 0) NULL ,
  [FIELD200] [decimal] (14, 0) NULL ,
  [FIELD201] [decimal] (14, 0) NULL ,
  [FIELD202] [decimal] (14, 0) NULL ,
  [FIELD203] [decimal] (14, 0) NULL ,
  [FIELD204] [decimal] (14, 0) NULL ,
  [FIELD205] [decimal] (14, 0) NULL ,
  [FIELD206] [decimal] (14, 0) NULL ,
  [FIELD207] [decimal] (14, 0) NULL ,
  [FIELD208] [decimal] (14, 0) NULL ,
  [FIELD209] [decimal] (14, 0) NULL ,
  [FIELD210] [decimal] (14, 0) NULL ,
  [FIELD211] [decimal] (14, 0) NULL ,
  [FIELD212] [decimal] (14, 0) NULL ,
  [FIELD213] [decimal] (14, 0) NULL ,
  [FIELD214] [decimal] (14, 0) NULL ,
  [FIELD215] [decimal] (14, 0) NULL ,
  [FIELD216] [decimal] (14, 0) NULL ,
  [FIELD217] [decimal] (14, 0) NULL ,
  [FIELD218] [decimal] (14, 0) NULL ,
  [FIELD219] [decimal] (14, 0) NULL ,
  [FIELD220] [decimal] (14, 0) NULL ,
  [FIELD221] [decimal] (14, 0) NULL ,
  [FIELD222] [decimal] (14, 0) NULL ,
  [FIELD223] [decimal] (14, 0) NULL ,
  [FIELD224] [decimal] (14, 0) NULL ,
  [FIELD225] [decimal] (14, 0) NULL ,
  [FIELD226] [decimal] (14, 0) NULL ,
  [FIELD227] [decimal] (14, 0) NULL ,
  [FIELD228] [decimal] (14, 0) NULL ,
  [FIELD229] [decimal] (14, 0) NULL ,
  [FIELD230] [decimal] (14, 0) NULL ,
  [FIELD231] [decimal] (14, 0) NULL ,
  [FIELD232] [decimal] (14, 0) NULL ,
  [FIELD233] [decimal] (14, 0) NULL ,
  [FIELD234] [decimal] (14, 0) NULL ,
  [FIELD235] [decimal] (14, 0) NULL ,
  [FIELD236] [decimal] (14, 0) NULL ,
  [FIELD237] [decimal] (14, 0) NULL ,
  [FIELD238] [decimal] (14, 0) NULL ,
  [FIELD239] [decimal] (14, 0) NULL ,
  [FIELD240] [decimal] (14, 0) NULL ,
  [FIELD241] [decimal] (14, 0) NULL ,
  [FIELD242] [decimal] (14, 0) NULL ,
  [FIELD243] [decimal] (14, 0) NULL ,
  [FIELD244] [decimal] (14, 0) NULL ,
  [FIELD245] [decimal] (14, 0) NULL ,
  [FIELD246] [decimal] (14, 0) NULL ,
  [FIELD247] [decimal] (14, 0) NULL ,
  [FIELD248] [decimal] (14, 0) NULL ,
  [FIELD249] [decimal] (14, 0) NULL ,
  [FIELD250] [decimal] (14, 0) NULL ,
  [FIELD251] [decimal] (14, 0) NULL ,
  [FIELD252] [decimal] (14, 0) NULL ,
  [FIELD253] [decimal] (14, 0) NULL ,
  [FIELD254] [decimal] (14, 0) NULL ,
  [FIELD255] [decimal] (14, 0) NULL 
)

GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET IDENTITY_INSERT [dbo].[tmp_sc_SYSRECG] ON
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
INSERT INTO [dbo].[tmp_sc_SYSRECG] ([RECNUM], [PAGKAT_REC0], [PAGKIN_REC0], [PAGKINMV_REC0], [PAGMOVES_NO], [PAGMOVES_REC0], [COMPANY_REC0], [BRANCH_REC0], [YEAR_REC0]) SELECT [RECNUM], [PAGKAT_REC0], [PAGKIN_REC0], [PAGKINMV_REC0], [PAGMOVES_NO], [PAGMOVES_REC0], [COMPANY_REC0], [BRANCH_REC0], [YEAR_REC0] FROM [dbo].[SYSRECG]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET IDENTITY_INSERT [dbo].[tmp_sc_SYSRECG] OFF
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

if exists (select * from sysobjects where id=object_id('[dbo].[SYSRECG]') and OBJECTPROPERTY(id, 'IsUserTable')=1)
  drop table [dbo].[SYSRECG]
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO


sp_rename 'dbo.tmp_sc_SYSRECG', 'SYSRECG'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO




--
-- Script for dbo.QDOY
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.QDOY'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET QUOTED_IDENTIFIER ON 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET ANSI_NULLS ON 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

CREATE VIEW dbo.QDOY
AS
SELECT     CODE, TYPE, DESCRIPTION
FROM         dbo.CODEMAST
WHERE     (TYPE = 'DOY')

GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET QUOTED_IDENTIFIER OFF 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET ANSI_NULLS ON 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO




--
-- Script for dbo.QJOB
-- Foreign keys etc. will appear at the end
--

PRINT 'Updating dbo.QJOB'
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET QUOTED_IDENTIFIER ON 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET ANSI_NULLS ON 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

CREATE VIEW dbo.QJOB
AS
SELECT     CODE, TYPE, DESCRIPTION
FROM         dbo.CODEMAST
WHERE     (TYPE = 'JOB')

GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET QUOTED_IDENTIFIER OFF 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO
SET ANSI_NULLS ON 
GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO






GO
IF @@ERROR<>0 AND @@TRANCOUNT>0 ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT=0 BEGIN INSERT INTO #tmpErrors (Error) SELECT 1 BEGIN TRANSACTION END
GO

IF EXISTS (SELECT * FROM #tmpErrors) ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT>0 BEGIN
PRINT 'The database update succeeded'
COMMIT TRANSACTION
END
ELSE PRINT 'The database update failed'
GO
DROP TABLE #tmpErrors
GO




