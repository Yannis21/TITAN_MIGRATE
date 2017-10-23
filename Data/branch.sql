SET QUOTED_IDENTIFIER ON
DROP TABLE "pubs".dbo."BRANCH"

CREATE TABLE "pubs".dbo."BRANCH" (
          RECNUM DECIMAL(8,0) NOT NULL IDENTITY(1,1), 
          "COMPANY_CODE" VARCHAR(3) DEFAULT ' ' NOT NULL , 
          "BRANCH_CODE" VARCHAR(3) DEFAULT ' ' NOT NULL , 
          "BRANCH_REC0" NUMERIC(14,0) NULL , 
          "BRANCH_RECR" VARCHAR(6) DEFAULT ' ' NOT NULL , 
          "BRANCH_NAME" VARCHAR(60) DEFAULT ' ' NOT NULL , 
          "BRANCH_AFM" VARCHAR(20) NULL , 
          "BRANCH_ADDR" VARCHAR(50) NULL , 
          "BRANCH_TK" VARCHAR(10) NULL , 
          "BRANCH_POLI" VARCHAR(30) NULL , 
          "BRANCH_DOY" DECIMAL(6,0) NULL , 
          "BRANCH_J_CODE" VARCHAR(10) NULL , 
          "BRANCH_C_CODE0" VARCHAR(10) NULL , 
          "BRANCH_C_CODE00" VARCHAR(10) NULL , 
          "BRANCH_C_CODER" VARCHAR(10) NULL , 
          "BRANCH_TEL" VARCHAR(60) NULL , 
          "BRANCH_FAX" VARCHAR(60) NULL , 
          "BRANCH_EMAIL" VARCHAR(80) NULL , 
          "BRANCH_RESP" VARCHAR(60) NULL , 
          "BRANCH_BITMAP" VARCHAR(80) NULL , 
          "BRANCH_SITE" VARCHAR(5) NULL , 
          "BRANCH_APOTH" VARCHAR(5) NULL , 
          "BETO_SITE" VARCHAR(7) NULL 
          )
ALTER TABLE "pubs".dbo."BRANCH" ADD CONSTRAINT BRANCH_INDEX1 PRIMARY KEY CLUSTERED ("COMPANY_CODE", "BRANCH_CODE")
CREATE UNIQUE INDEX BRANCH_INDEX0 ON "pubs".dbo."BRANCH" ("RECNUM")

CREATE UNIQUE INDEX BRANCH_INDEX2 ON "pubs".dbo."BRANCH" ("BRANCH_RECR")

CREATE UNIQUE INDEX BRANCH_INDEX3 ON "pubs".dbo."BRANCH" ("BRANCH_NAME","BRANCH_RECR")