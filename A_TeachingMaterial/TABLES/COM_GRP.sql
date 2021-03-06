--------------------------------------------------------
--  DDL for Table COM_GRP
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."COM_GRP" 
   (	"COM_CODE_GRP" VARCHAR2(2 BYTE), 
	"COM_CODE_GRP_NAME" VARCHAR2(50 BYTE), 
	"COM_CODE_GRP_DESC" VARCHAR2(100 BYTE), 
	"COM_CODE_GRP_DEL" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."COM_GRP"."COM_CODE_GRP" IS '공통 코드 그룹';
   COMMENT ON COLUMN "TEAM4_202011F"."COM_GRP"."COM_CODE_GRP_NAME" IS '공통 코드 그룹 명';
   COMMENT ON COLUMN "TEAM4_202011F"."COM_GRP"."COM_CODE_GRP_DESC" IS '공통 코드 그룹 설명';
   COMMENT ON COLUMN "TEAM4_202011F"."COM_GRP"."COM_CODE_GRP_DEL" IS '공통 코드 그룹 삭제 여부';
   COMMENT ON TABLE "TEAM4_202011F"."COM_GRP"  IS '공통코드그룹';
