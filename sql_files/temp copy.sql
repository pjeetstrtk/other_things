--------------------------------------------------------delete for jony------------------------------------------------------------------------
013,015,027,032,034,037,039,047,048,050,051,053,055,057,060,066,071,078,082,085,091,093,101,108,110,115,116,126,137,138,139,
147,151,155,159,168,174,182,193,211,213,214,221,226,237,239,247,251,254,268,269,270,271,272,273,274,275,276,277,279,285,
286,289,315,316,318,319,330,334,343,344,362,365,367,368,369,371,372,374,376,378,379,381,382,384,385,387,388,390,391,392,
393,394,395,404,405,406,410,411,414,425,428,429,430,435,440,441,453,461,462,463,465,466,467,468,469,470,471,472,473,
474,477,480,481,482,490,491,492,493,496,497,499,507,508,510,511,512,515,516,524,527,529,538,539,540,541,543,545,547,554,
555,558,561,569,572,573,575,577,582,583,584,585,591,594,598,599,604,606,607,610,618,621,622,623,626,628,630,631,632,633,635,
636,637,639,642,648,654,655,656,657,660,670,673,675,680,681,682,683,684,685,690,691,692,693,694,695,696,697,711,712,
713,714,715,716,717,888,024,113,281,340,242,546,560,624



SELECT * FROM tbl_meter_reading_dtl WHERE book_code=640 AND account_num=4793 --cust_id=7344406
SELECT * FROM tbl_meter_reading_dtl WHERE book_code=054 AND account_num=4756 --cust_id=7365966
SELECT * FROM tbl_meter_reading_dtl WHERE book_code=029 AND account_num=2932 --cust_id=7315564



SELECT book_code,account_num FROM tbl_meter_reading_dtl WHERE cust_id=7344406
SELECT book_code,account_num FROM tbl_meter_reading_dtl WHERE cust_id=7365966
SELECT book_code,account_num FROM tbl_meter_reading_dtl WHERE cust_id=7315564


640-4793/440-1242
054-4756/051-4756
029-2932/367-2520


SELECT * FROM tbl_acc_trans WHERE cust_id=7344406
SELECT * FROM tbl_acc_trans WHERE cust_id=7365966
SELECT * FROM tbl_acc_trans WHERE cust_id=7315564

DROP TABLE TBL_BILL CASCADE CONSTRAINTS ; 

CREATE TABLE TBL_BILL ( 
  BILL_ID                      NUMBER        NOT NULL, 
  OFFICE_CODE                  VARCHAR2 (2)  NOT NULL, 
  ELAKA_CODE                   VARCHAR2 (2)  NOT NULL, 
  BOOK_CODE                    VARCHAR2 (5)  NOT NULL, 
  ACCOUNT_NUM                  NUMBER        NOT NULL, 
  CUST_ID                      NUMBER        NOT NULL, 
  BILL_NUM                     NUMBER (20)   NOT NULL, 
  BILL_PERIOD                  NUMBER (10)   NOT NULL, 
  BILL_ISSUE_DATE              DATE, 
  BILL_LPC1_DATE               DATE, 
  BILL_DISCON_DATE             DATE, 
  BILL_LPC2_DATE               DATE, 
  TARIFF_CODE                  NUMBER (4)    NOT NULL, 
  METER_ID                     NUMBER, 
  PARENT_METER_ID              NUMBER, 
  SANCTIONED_LOAD              NUMBER, 
  CONNECTED_LOAD               NUMBER, 
  READING_ID                   NUMBER, 
  PREV_READING_DATE            DATE, 
  CUR_READING_DATE             DATE, 
  PREV_READING_OFPK            NUMBER, 
  CUR_READING_OFPK             NUMBER, 
  ADV_READING_OFPK             NUMBER, 
  PREV_READING_PK              NUMBER, 
  CUR_READING_PK               NUMBER, 
  ADV_READING_PK               NUMBER, 
  ADV_READING_OTH              NUMBER, 
  DEMAND_READING               NUMBER, 
  MF                           NUMBER, 
  PF                           NUMBER, 
  SCA_ADJ                      NUMBER, 
  IS_EST                       VARCHAR2 (1), 
  IS_FLAT_RATE                 VARCHAR2 (1), 
  EST_UNIT                     NUMBER, 
  SUB_UNIT_OFPK                NUMBER, 
  SUB_UNIT_PK                  NUMBER, 
  SUB_UNIT_OTH                 NUMBER, 
  SUB_UNIT_TTL                 NUMBER        DEFAULT 0 NOT NULL, 
  OLD_UNIT_OFPK                NUMBER, 
  OLD_UNIT_PK                  NUMBER, 
  OLD_UNIT_OTH                 NUMBER, 
  OLD_UNIT_TTL                 NUMBER        DEFAULT 0 NOT NULL, 
  REBATE_UNIT_OFPK             NUMBER, 
  REBATE_UNIT_PK               NUMBER, 
  REBATE_UNIT_OTH              NUMBER, 
  REBATE_UNIT_TTL              NUMBER        DEFAULT 0 NOT NULL, 
  SUBSIDY_UNIT_OFPK            NUMBER, 
  SUBSIDY_UNIT_PK              NUMBER, 
  SUBSIDY_UNIT_OTH             NUMBER, 
  SUBSIDY_UNIT_TTL             NUMBER        DEFAULT 0 NOT NULL, 
  BUTTA_UNIT_OFPK              NUMBER, 
  BUTTA_UNIT_PK                NUMBER, 
  BUTTA_UNIT_OTH               NUMBER, 
  BUTTA_UNIT_TTL               NUMBER        DEFAULT 0 NOT NULL, 
  XFORMER_UNIT_OFPK            NUMBER, 
  XFORMER_UNIT_PK              NUMBER, 
  XFORMER_UNIT_OTH             NUMBER, 
  XFORMER_UNIT_TTL             NUMBER        DEFAULT 0 NOT NULL, 
  PF_UNIT_OFPK                 NUMBER, 
  PF_UNIT_PK                   NUMBER, 
  PF_UNIT_OTH                  NUMBER, 
  PF_UNIT_TTL                  NUMBER        DEFAULT 0 NOT NULL, 
  BILLED_UNIT_OFPK             NUMBER, 
  BILLED_UNIT_PK               NUMBER, 
  BILLED_UNIT_OTH              NUMBER, 
  BILLED_UNIT_TTL              NUMBER        DEFAULT 0 NOT NULL, 
  NET_UNIT_OFPK                NUMBER, 
  NET_UNIT_PK                  NUMBER, 
  NET_UNIT_OTH                 NUMBER, 
  NET_UNIT_TTL                 NUMBER        DEFAULT 0 NOT NULL, 
  TTL_NOF_BILL_MONTH           INTEGER, 
  CARRY_UNIT_OFPK              NUMBER, 
  CARRY_UNIT_PK                NUMBER, 
  CARRY_UNIT_OTH               NUMBER, 
  CARRY_UNIT_TTL               NUMBER, 
  ENG_CHRG_OFPK                NUMBER (16,2), 
  ENG_CHRG_PK                  NUMBER (16,2), 
  ENG_CHRG_OTH                 NUMBER (16,2), 
  ENG_CHRG_TTL                 NUMBER (16,2) DEFAULT 0 NOT NULL, 
  ENG_CHRG_MIN                 NUMBER (16,2) DEFAULT 0 NOT NULL, 
  REBATE_CHRG_OFPK             NUMBER (16,2), 
  REBATE_CHRG_PK               NUMBER (16,2), 
  REBATE_CHRG_OTH              NUMBER (16,2), 
  REBATE_CHRG_TTL              NUMBER (16,2) DEFAULT 0 NOT NULL, 
  REBATE_ENERGY_AMT            NUMBER (16,2) DEFAULT 0 NOT NULL, 
  SERVICE_CHRG                 NUMBER (16,2) DEFAULT 0 NOT NULL, 
  DEMAND_CHRG                  NUMBER (16,2) DEFAULT 0 NOT NULL, 
  PENALTY_DEMAND_CHRG          NUMBER (16,2) DEFAULT 0 NOT NULL, 
  PF_CORRECTION                NUMBER (7,4)  DEFAULT 0, 
  PF_CHRG_OFPK                 NUMBER (16,2), 
  PF_CHRG_PK                   NUMBER (16,2), 
  PF_CHRG_OTH                  NUMBER (16,2), 
  PF_CHRG_TTL                  NUMBER (16,2) DEFAULT 0 NOT NULL, 
  OTHERS_CHRG                  NUMBER (16,2), 
  ACTUAL_SALES_AMT             NUMBER (16,2) DEFAULT 0 NOT NULL, 
  REBATE_ACTSALES_AMT          NUMBER (16,2) DEFAULT 0, 
  BUTTA_CHRG_OFPK              NUMBER (16,2), 
  BUTTA_CHRG_PK                NUMBER (16,2), 
  BUTTA_CHRG_OTH               NUMBER (16,2), 
  BUTTA_CHRG_TTL               NUMBER (16,2) DEFAULT 0, 
  BUTTA_AMT_SALES              NUMBER (16,2) DEFAULT 0, 
  MIN_SALES_AMT                NUMBER (16,2) DEFAULT 0, 
  SALES_AMT                    NUMBER (16,2) DEFAULT 0 NOT NULL, 
  SUBSIDY_AMT_OFPK             NUMBER (16,2), 
  SUBSIDY_AMT_PK               NUMBER (16,2), 
  SUBSIDY_AMT_OTH              NUMBER (16,2), 
  SUBSIDY_AMT_TTL              NUMBER (16,2) DEFAULT 0, 
  SUBSIDY_SALSE_AMT            NUMBER (16,2), 
  NET_BILL_AMT                 NUMBER (16,2) DEFAULT 0 NOT NULL, 
  VAT_PERCENT                  VARCHAR2 (3)  DEFAULT 0 NOT NULL, 
  VAT_AMT                      NUMBER (16,2) DEFAULT 0 NOT NULL, 
  METER_RENT_AMT               NUMBER (16,2) DEFAULT 0, 
  METER_PRICE                  NUMBER (16,2) DEFAULT 0, 
  METER_RENT_TEXT              VARCHAR2 (100), 
  TTL_METER_RENT_AMT           NUMBER (16,2) DEFAULT 0 NOT NULL, 
  XRENT_AMT                    NUMBER (16,2) DEFAULT 0, 
  PENALTY_CHARGE               NUMBER (16,2) DEFAULT 0, 
  MISC_AMT                     NUMBER (16,2) DEFAULT 0, 
  MISC_TEXT                    VARCHAR2 (100), 
  DUP_FEE_AMT                  NUMBER (16,2) DEFAULT 0, 
  INSTL_AMT                    NUMBER (16,2) DEFAULT 0, 
  TOTAL_BILL_AMT               NUMBER (16,2) DEFAULT 0 NOT NULL, 
  LPC_1_PERCENT                VARCHAR2 (3)  DEFAULT 0, 
  LPC_1_AMT                    NUMBER (16,2) DEFAULT 0, 
  TTL_BILL_LPC_1_AMT           NUMBER (16,2) DEFAULT 0, 
  LPC_2_PERCENT                VARCHAR2 (3)  DEFAULT 0, 
  LPC_2_AMT                    NUMBER (16,2) DEFAULT 0, 
  TTL_BILL_LPC_2_AMT           NUMBER (16,2) DEFAULT 0, 
  XLOSS_AMT                    NUMBER (16,2) DEFAULT 0, 
  XLOSS_CHRG_OFPK              NUMBER (16,2), 
  XLOSS_CHRG_PK                NUMBER (16,2), 
  XLOSS_CHRG_OTH               NUMBER (16,2), 
  XLOSS_CHRG_TTL               NUMBER (16,2) DEFAULT 0, 
  DCRC_PERCENT                 VARCHAR2 (3)  DEFAULT 0, 
  DCRC_FEE                     NUMBER (16,2) DEFAULT 0, 
  TTL_BILL_DCRC_AMT            NUMBER (16,2) DEFAULT 0, 
  TTL_ARR_AMT                  NUMBER (16,2) DEFAULT 0, 
  TTL_ADJ_AMT                  NUMBER (16,2) DEFAULT 0, 
  BUTTA_DMCM_AMT               NUMBER (16,2) DEFAULT 0, 
  REBATE_DMCM_AMT              NUMBER (16,2) DEFAULT 0, 
  SUBSIDY_DMCM_AMT             NUMBER (16,2) DEFAULT 0, 
  FIRST_MONTH_UNIT             NUMBER (16,2) DEFAULT 0, 
  PF_STANDARD                  NUMBER (16,2) DEFAULT .95, 
  REC_STATUS                   VARCHAR2 (1)  DEFAULT 'C', 
  CREATE_DATE                  DATE          DEFAULT SYSDATE, 
  CREATE_BY                    VARCHAR2 (10)  DEFAULT 'DATACONV', 
  METER_NUM                    VARCHAR2 (100), 
  METER_SEAL_NUM               VARCHAR2 (200), 
  METER_TYPE_CODE              VARCHAR2 (2), 
  METER_DIGIT                  NUMBER, 
  TRF_ID                       NUMBER, 
  EQUIP_ID                     NUMBER, 
  METER_SPL_CODE               INTEGER, 
  SPL_TYPE_DESCR_B             VARCHAR2 (30), 
  CUSTOMER_STATUS_CODE         INTEGER       DEFAULT 1 NOT NULL, 
  CHARGE_BASE_ID               NUMBER, 
  BOOK_EMP_CODE                NUMBER        NOT NULL, 
  BOOK_EMP_NAME_B              VARCHAR2 (50), 
  BOOK_EMP_PHONE               VARCHAR2 (30), 
  DESIG_CODE                   NUMBER        NOT NULL, 
  DESIG_NAME_B                 VARCHAR2 (30), 
  CUSTOMER_NAME_B              VARCHAR2 (200)  NOT NULL, 
  F_H_NAME_B                   VARCHAR2 (200), 
  REL_DESCR_B                  VARCHAR2 (50), 
  MOTHER_NAME_B                VARCHAR2 (200), 
  DOB                          DATE, 
  G_DIV_NAME_B                 VARCHAR2 (200), 
  G_DIST_NAME_B                VARCHAR2 (200), 
  G_SD_NAME_B                  VARCHAR2 (200), 
  G_UNION_NAME_B               VARCHAR2 (200), 
  G_VILL_NAME_B                VARCHAR2 (200), 
  G_PO_NAME_B                  VARCHAR2 (100), 
  G_PO_POSTAL_CODE             VARCHAR2 (50), 
  G_VILL_FULL_DESCR_B          VARCHAR2 (500), 
  CUSTOMER_ADDR_B              VARCHAR2 (500), 
  MBR_SHIP_NO                  VARCHAR2 (50), 
  CUST_MISC_ID                 NUMBER, 
  WI_ID                        NUMBER, 
  SUB_STATION_CODE             INTEGER, 
  SUB_STATION_NAME_B           VARCHAR2 (50), 
  FEEDER_CODE                  VARCHAR2 (10), 
  MIN_OWNER_CODE               VARCHAR2 (2), 
  MIN_OWNER_DESCR_B            VARCHAR2 (300), 
  MIN_CODE                     VARCHAR2 (2), 
  MIN_NAME_B                   VARCHAR2 (50), 
  MIN_ORG_CODE                 VARCHAR2 (4), 
  MIN_ORG_NAME_B               VARCHAR2 (50), 
  TARIFF_GRP_CODE              INTEGER, 
  TARIFF_GRP_NAME_B            VARCHAR2 (200), 
  TARIFF_SRT_NAME_B            VARCHAR2 (200)  NOT NULL, 
  TARIFF_BILL_NAME_B           VARCHAR2 (200)  NOT NULL, 
  TARIFF_RATE_DESCR_B          VARCHAR2 (300)  NOT NULL, 
  METER_TEXT                   VARCHAR2 (500), 
  BILL_TYPE                    NUMBER        DEFAULT 1 NOT NULL, 
  CONNECTION_DATE              DATE, 
  UPDATE_BY                    VARCHAR2 (10), 
  UPDATE_DATE                  DATE, 
  SPECIAL_CHRG                 NUMBER, 
  PENALTY_CHRG_REMARKS         VARCHAR2 (500), 
  PDB_AMT                      NUMBER, 
  PDB_AMT_REMARKS              VARCHAR2 (500), 
  XPRICE_AMT                   NUMBER, 
  XRENT_AMT_TTL                NUMBER, 
  SPECIAL_CHRG_REMARKS         VARCHAR2 (500), 
  AVG_UNIT                     NUMBER        DEFAULT 0, 
  DEMAND_UNIT                  NUMBER, 
  BOOK_COMPLAIN_PHONE_NO       VARCHAR2 (100), 
  BILL_MONTH_B                 VARCHAR2 (50), 
  ADJ_REBATE_CHRG              NUMBER (16,2) DEFAULT 0, 
  ADJ_SUBSIDY_AMT              NUMBER (16,2) DEFAULT 0, 
  ADJ_NET_BILL_AMT             NUMBER (16,2) DEFAULT 0, 
  ADJ_VAT_AMT                  NUMBER (16,2) DEFAULT 0, 
  ADJ_METER_RENT_AMT           NUMBER (16,2) DEFAULT 0, 
  ADJ_METER_PRICE_AMT          NUMBER (16,2) DEFAULT 0, 
  ADJ_XRENT_AMT                NUMBER (16,2) DEFAULT 0, 
  ADJ_XPRICE_AMT               NUMBER (16,2) DEFAULT 0, 
  ADJ_PENALTY_CHRG             NUMBER (16,2) DEFAULT 0, 
  ADJ_MISC_AMT                 NUMBER (16,2) DEFAULT 0, 
  ADJ_DUP_FEE_AMT              NUMBER (16,2) DEFAULT 0, 
  ADJ_INSTL                    NUMBER (16,2) DEFAULT 0, 
  ADJ_OTHERS_CHRG              NUMBER (16,2) DEFAULT 0, 
  ADJ_XLOSS_AMT                NUMBER (16,2) DEFAULT 0, 
  ADJ_LPC_1_AMT                NUMBER (16,2) DEFAULT 0, 
  ADJ_LPC_2_AMT                NUMBER (16,2) DEFAULT 0, 
  ADJ_DCRC_FEE                 NUMBER (16,2) DEFAULT 0, 
  ADJ_UNIT_OFPK                NUMBER, 
  ADJ_UNIT_PK                  NUMBER, 
  ADJ_UNIT_TTL                 NUMBER, 
  BILL_MESSAGE                 VARCHAR2 (100), 
  PREV_READING_OFPK_OLD        NUMBER, 
  CUR_READING_OFPK_OLD         NUMBER, 
  PREV_READING_PK_OLD          NUMBER, 
  CUR_READING_PK_OLD           NUMBER, 
  IS_ADJ_IRRIBILL              INTEGER, 
  REBATE_OTH_SALES_AMT         NUMBER, 
  REBATE_VAT_AMT               NUMBER, 
  REBATE_METER_RENT_AMT        NUMBER, 
  PENALTY_CHRG_NORMAL          NUMBER, 
  PENALTY_CHRG_NORMAL_REMARKS  VARCHAR2 (500), 
  XFORMER_RENT_AMT             NUMBER, 
  XFORMER_RENT_REMARKS         VARCHAR2 (500), 
  XFORMER_PRICE_REMARKS        VARCHAR2 (500), 
  XFORMER_REPAIR_AMT           NUMBER, 
  XFORMER_REPAIR_REMARKS       VARCHAR2 (500), 
  METER_PRICE_REMARKS          VARCHAR2 (500), 
  METER_PRICE_AMT              NUMBER, 
  SECU_DEPOSIT_AMT             NUMBER, 
  SECU_DEPOSIT_REMARKS         VARCHAR2 (500), 
  IRI_ADVANCE_AMT              NUMBER, 
  IRI_ADVANCE_REMARKS          VARCHAR2 (500), 
  METER_RENT                   NUMBER, 
  METER_RENT_REMARKS           VARCHAR2 (500), 
  LPC_AMT                      NUMBER, 
  LPC_REMARKS                  VARCHAR2 (500), 
  NET_BILL_INSTL_AMT           NUMBER, 
  NET_BILL_INSTL_REMARKS       VARCHAR2 (500), 
  VAT_INSTL_AMT                NUMBER, 
  VAT_INSTL_REMARKS            VARCHAR2 (500), 
  SD_PRICE                     NUMBER, 
  SD_REMARKS                   VARCHAR2 (500), 
  DCRC_AMT                     NUMBER, 
  DCRC_REMARKS                 VARCHAR2 (500), 
  FBS_AMT                      NUMBER, 
  FBS_REMARKS                  VARCHAR2 (500), 
  METER_RENUVATION_AMT         NUMBER, 
  METER_RENUVATION_REMARKS     VARCHAR2 (200), 
  CONSTRAINT BILL_ID_UK
    UNIQUE (BILL_ID)    USING INDEX 
     TABLESPACE USERS PCTFREE 10
     STORAGE ( INITIAL 56320K NEXT K ), 
  CONSTRAINT TBL_BILL_NUM_PK
  PRIMARY KEY ( BILL_NUM ) 
    USING INDEX 
     TABLESPACE USERS PCTFREE 10
     STORAGE ( INITIAL 83886080 ))
   TABLESPACE USERS
   PCTFREE 10
   INITRANS 1
   MAXTRANS 255
  STORAGE ( 
   INITIAL 4294967296
   MINEXTENTS 1
   MAXEXTENTS 2147483645
 )
   NOCACHE; 

DROP TABLE DEL_BY_BOOK CASCADE CONSTRAINTS ; 

CREATE TABLE DEL_BY_BOOK ( 
  BILL_ID                      NUMBER        NOT NULL, 
  OFFICE_CODE                  VARCHAR2 (2)  NOT NULL, 
  ELAKA_CODE                   VARCHAR2 (2)  NOT NULL, 
  BOOK_CODE                    VARCHAR2 (5)  NOT NULL, 
  ACCOUNT_NUM                  NUMBER        NOT NULL, 
  CUST_ID                      NUMBER        NOT NULL, 
  BILL_NUM                     NUMBER (20)   NOT NULL, 
  BILL_PERIOD                  NUMBER (10)   NOT NULL, 
  BILL_ISSUE_DATE              DATE, 
  BILL_LPC1_DATE               DATE, 
  BILL_DISCON_DATE             DATE, 
  BILL_LPC2_DATE               DATE, 
  TARIFF_CODE                  NUMBER (4)    NOT NULL, 
  METER_ID                     NUMBER, 
  PARENT_METER_ID              NUMBER, 
  SANCTIONED_LOAD              NUMBER, 
  CONNECTED_LOAD               NUMBER, 
  READING_ID                   NUMBER, 
  PREV_READING_DATE            DATE, 
  CUR_READING_DATE             DATE, 
  PREV_READING_OFPK            NUMBER, 
  CUR_READING_OFPK             NUMBER, 
  ADV_READING_OFPK             NUMBER, 
  PREV_READING_PK              NUMBER, 
  CUR_READING_PK               NUMBER, 
  ADV_READING_PK               NUMBER, 
  ADV_READING_OTH              NUMBER, 
  DEMAND_READING               NUMBER, 
  MF                           NUMBER, 
  PF                           NUMBER, 
  SCA_ADJ                      NUMBER, 
  IS_EST                       VARCHAR2 (1), 
  IS_FLAT_RATE                 VARCHAR2 (1), 
  EST_UNIT                     NUMBER, 
  SUB_UNIT_OFPK                NUMBER, 
  SUB_UNIT_PK                  NUMBER, 
  SUB_UNIT_OTH                 NUMBER, 
  SUB_UNIT_TTL                 NUMBER        NOT NULL, 
  OLD_UNIT_OFPK                NUMBER, 
  OLD_UNIT_PK                  NUMBER, 
  OLD_UNIT_OTH                 NUMBER, 
  OLD_UNIT_TTL                 NUMBER        NOT NULL, 
  REBATE_UNIT_OFPK             NUMBER, 
  REBATE_UNIT_PK               NUMBER, 
  REBATE_UNIT_OTH              NUMBER, 
  REBATE_UNIT_TTL              NUMBER        NOT NULL, 
  SUBSIDY_UNIT_OFPK            NUMBER, 
  SUBSIDY_UNIT_PK              NUMBER, 
  SUBSIDY_UNIT_OTH             NUMBER, 
  SUBSIDY_UNIT_TTL             NUMBER        NOT NULL, 
  BUTTA_UNIT_OFPK              NUMBER, 
  BUTTA_UNIT_PK                NUMBER, 
  BUTTA_UNIT_OTH               NUMBER, 
  BUTTA_UNIT_TTL               NUMBER        NOT NULL, 
  XFORMER_UNIT_OFPK            NUMBER, 
  XFORMER_UNIT_PK              NUMBER, 
  XFORMER_UNIT_OTH             NUMBER, 
  XFORMER_UNIT_TTL             NUMBER        NOT NULL, 
  PF_UNIT_OFPK                 NUMBER, 
  PF_UNIT_PK                   NUMBER, 
  PF_UNIT_OTH                  NUMBER, 
  PF_UNIT_TTL                  NUMBER        NOT NULL, 
  BILLED_UNIT_OFPK             NUMBER, 
  BILLED_UNIT_PK               NUMBER, 
  BILLED_UNIT_OTH              NUMBER, 
  BILLED_UNIT_TTL              NUMBER        NOT NULL, 
  NET_UNIT_OFPK                NUMBER, 
  NET_UNIT_PK                  NUMBER, 
  NET_UNIT_OTH                 NUMBER, 
  NET_UNIT_TTL                 NUMBER        NOT NULL, 
  TTL_NOF_BILL_MONTH           INTEGER, 
  CARRY_UNIT_OFPK              NUMBER, 
  CARRY_UNIT_PK                NUMBER, 
  CARRY_UNIT_OTH               NUMBER, 
  CARRY_UNIT_TTL               NUMBER, 
  ENG_CHRG_OFPK                NUMBER (16,2), 
  ENG_CHRG_PK                  NUMBER (16,2), 
  ENG_CHRG_OTH                 NUMBER (16,2), 
  ENG_CHRG_TTL                 NUMBER (16,2) NOT NULL, 
  ENG_CHRG_MIN                 NUMBER (16,2) NOT NULL, 
  REBATE_CHRG_OFPK             NUMBER (16,2), 
  REBATE_CHRG_PK               NUMBER (16,2), 
  REBATE_CHRG_OTH              NUMBER (16,2), 
  REBATE_CHRG_TTL              NUMBER (16,2) NOT NULL, 
  REBATE_ENERGY_AMT            NUMBER (16,2) NOT NULL, 
  SERVICE_CHRG                 NUMBER (16,2) NOT NULL, 
  DEMAND_CHRG                  NUMBER (16,2) NOT NULL, 
  PENALTY_DEMAND_CHRG          NUMBER (16,2) NOT NULL, 
  PF_CORRECTION                NUMBER (7,4), 
  PF_CHRG_OFPK                 NUMBER (16,2), 
  PF_CHRG_PK                   NUMBER (16,2), 
  PF_CHRG_OTH                  NUMBER (16,2), 
  PF_CHRG_TTL                  NUMBER (16,2) NOT NULL, 
  OTHERS_CHRG                  NUMBER (16,2), 
  ACTUAL_SALES_AMT             NUMBER (16,2) NOT NULL, 
  REBATE_ACTSALES_AMT          NUMBER (16,2), 
  BUTTA_CHRG_OFPK              NUMBER (16,2), 
  BUTTA_CHRG_PK                NUMBER (16,2), 
  BUTTA_CHRG_OTH               NUMBER (16,2), 
  BUTTA_CHRG_TTL               NUMBER (16,2), 
  BUTTA_AMT_SALES              NUMBER (16,2), 
  MIN_SALES_AMT                NUMBER (16,2), 
  SALES_AMT                    NUMBER (16,2) NOT NULL, 
  SUBSIDY_AMT_OFPK             NUMBER (16,2), 
  SUBSIDY_AMT_PK               NUMBER (16,2), 
  SUBSIDY_AMT_OTH              NUMBER (16,2), 
  SUBSIDY_AMT_TTL              NUMBER (16,2), 
  SUBSIDY_SALSE_AMT            NUMBER (16,2), 
  NET_BILL_AMT                 NUMBER (16,2) NOT NULL, 
  VAT_PERCENT                  VARCHAR2 (3)  NOT NULL, 
  VAT_AMT                      NUMBER (16,2) NOT NULL, 
  METER_RENT_AMT               NUMBER (16,2), 
  METER_PRICE                  NUMBER (16,2), 
  METER_RENT_TEXT              VARCHAR2 (100), 
  TTL_METER_RENT_AMT           NUMBER (16,2) NOT NULL, 
  XRENT_AMT                    NUMBER (16,2), 
  PENALTY_CHARGE               NUMBER (16,2), 
  MISC_AMT                     NUMBER (16,2), 
  MISC_TEXT                    VARCHAR2 (100), 
  DUP_FEE_AMT                  NUMBER (16,2), 
  INSTL_AMT                    NUMBER (16,2), 
  TOTAL_BILL_AMT               NUMBER (16,2) NOT NULL, 
  LPC_1_PERCENT                VARCHAR2 (3), 
  LPC_1_AMT                    NUMBER (16,2), 
  TTL_BILL_LPC_1_AMT           NUMBER (16,2), 
  LPC_2_PERCENT                VARCHAR2 (3), 
  LPC_2_AMT                    NUMBER (16,2), 
  TTL_BILL_LPC_2_AMT           NUMBER (16,2), 
  XLOSS_AMT                    NUMBER (16,2), 
  XLOSS_CHRG_OFPK              NUMBER (16,2), 
  XLOSS_CHRG_PK                NUMBER (16,2), 
  XLOSS_CHRG_OTH               NUMBER (16,2), 
  XLOSS_CHRG_TTL               NUMBER (16,2), 
  DCRC_PERCENT                 VARCHAR2 (3), 
  DCRC_FEE                     NUMBER (16,2), 
  TTL_BILL_DCRC_AMT            NUMBER (16,2), 
  TTL_ARR_AMT                  NUMBER (16,2), 
  TTL_ADJ_AMT                  NUMBER (16,2), 
  BUTTA_DMCM_AMT               NUMBER (16,2), 
  REBATE_DMCM_AMT              NUMBER (16,2), 
  SUBSIDY_DMCM_AMT             NUMBER (16,2), 
  FIRST_MONTH_UNIT             NUMBER (16,2), 
  PF_STANDARD                  NUMBER (16,2), 
  REC_STATUS                   VARCHAR2 (1), 
  CREATE_DATE                  DATE, 
  CREATE_BY                    VARCHAR2 (10), 
  METER_NUM                    VARCHAR2 (100), 
  METER_SEAL_NUM               VARCHAR2 (200), 
  METER_TYPE_CODE              VARCHAR2 (2), 
  METER_DIGIT                  NUMBER, 
  TRF_ID                       NUMBER, 
  EQUIP_ID                     NUMBER, 
  METER_SPL_CODE               INTEGER, 
  SPL_TYPE_DESCR_B             VARCHAR2 (30), 
  CUSTOMER_STATUS_CODE         INTEGER       NOT NULL, 
  CHARGE_BASE_ID               NUMBER, 
  BOOK_EMP_CODE                NUMBER        NOT NULL, 
  BOOK_EMP_NAME_B              VARCHAR2 (50), 
  BOOK_EMP_PHONE               VARCHAR2 (30), 
  DESIG_CODE                   NUMBER        NOT NULL, 
  DESIG_NAME_B                 VARCHAR2 (30), 
  CUSTOMER_NAME_B              VARCHAR2 (200)  NOT NULL, 
  F_H_NAME_B                   VARCHAR2 (200), 
  REL_DESCR_B                  VARCHAR2 (50), 
  MOTHER_NAME_B                VARCHAR2 (200), 
  DOB                          DATE, 
  G_DIV_NAME_B                 VARCHAR2 (200), 
  G_DIST_NAME_B                VARCHAR2 (200), 
  G_SD_NAME_B                  VARCHAR2 (200), 
  G_UNION_NAME_B               VARCHAR2 (200), 
  G_VILL_NAME_B                VARCHAR2 (200), 
  G_PO_NAME_B                  VARCHAR2 (100), 
  G_PO_POSTAL_CODE             VARCHAR2 (50), 
  G_VILL_FULL_DESCR_B          VARCHAR2 (500), 
  CUSTOMER_ADDR_B              VARCHAR2 (500), 
  MBR_SHIP_NO                  VARCHAR2 (50), 
  CUST_MISC_ID                 NUMBER, 
  WI_ID                        NUMBER, 
  SUB_STATION_CODE             INTEGER, 
  SUB_STATION_NAME_B           VARCHAR2 (50), 
  FEEDER_CODE                  VARCHAR2 (50), 
  MIN_OWNER_CODE               VARCHAR2 (2), 
  MIN_OWNER_DESCR_B            VARCHAR2 (500), 
  MIN_CODE                     VARCHAR2 (2), 
  MIN_NAME_B                   VARCHAR2 (50), 
  MIN_ORG_CODE                 VARCHAR2 (4), 
  MIN_ORG_NAME_B               VARCHAR2 (50), 
  TARIFF_GRP_CODE              INTEGER, 
  TARIFF_GRP_NAME_B            VARCHAR2 (200), 
  TARIFF_SRT_NAME_B            VARCHAR2 (200)  NOT NULL, 
  TARIFF_BILL_NAME_B           VARCHAR2 (200)  NOT NULL, 
  TARIFF_RATE_DESCR_B          VARCHAR2 (300)  NOT NULL, 
  METER_TEXT                   VARCHAR2 (500), 
  BILL_TYPE                    NUMBER        NOT NULL, 
  CONNECTION_DATE              DATE, 
  UPDATE_BY                    VARCHAR2 (10), 
  UPDATE_DATE                  DATE, 
  SPECIAL_CHRG                 NUMBER, 
  PENALTY_CHRG_REMARKS         VARCHAR2 (500), 
  PDB_AMT                      NUMBER, 
  PDB_AMT_REMARKS              VARCHAR2 (500), 
  XPRICE_AMT                   NUMBER, 
  XRENT_AMT_TTL                NUMBER, 
  SPECIAL_CHRG_REMARKS         VARCHAR2 (500), 
  AVG_UNIT                     NUMBER, 
  DEMAND_UNIT                  NUMBER, 
  BOOK_COMPLAIN_PHONE_NO       VARCHAR2 (100), 
  BILL_MONTH_B                 VARCHAR2 (50), 
  ADJ_REBATE_CHRG              NUMBER (16,2), 
  ADJ_SUBSIDY_AMT              NUMBER (16,2), 
  ADJ_NET_BILL_AMT             NUMBER (16,2), 
  ADJ_VAT_AMT                  NUMBER (16,2), 
  ADJ_METER_RENT_AMT           NUMBER (16,2), 
  ADJ_METER_PRICE_AMT          NUMBER (16,2), 
  ADJ_XRENT_AMT                NUMBER (16,2), 
  ADJ_XPRICE_AMT               NUMBER (16,2), 
  ADJ_PENALTY_CHRG             NUMBER (16,2), 
  ADJ_MISC_AMT                 NUMBER (16,2), 
  ADJ_DUP_FEE_AMT              NUMBER (16,2), 
  ADJ_INSTL                    NUMBER (16,2), 
  ADJ_OTHERS_CHRG              NUMBER (16,2), 
  ADJ_XLOSS_AMT                NUMBER (16,2), 
  ADJ_LPC_1_AMT                NUMBER (16,2), 
  ADJ_LPC_2_AMT                NUMBER (16,2), 
  ADJ_DCRC_FEE                 NUMBER (16,2), 
  ADJ_UNIT_OFPK                NUMBER, 
  ADJ_UNIT_PK                  NUMBER, 
  ADJ_UNIT_TTL                 NUMBER, 
  BILL_MESSAGE                 VARCHAR2 (100), 
  PREV_READING_OFPK_OLD        NUMBER, 
  CUR_READING_OFPK_OLD         NUMBER, 
  PREV_READING_PK_OLD          NUMBER, 
  CUR_READING_PK_OLD           NUMBER, 
  IS_ADJ_IRRIBILL              INTEGER, 
  REBATE_OTH_SALES_AMT         NUMBER, 
  REBATE_VAT_AMT               NUMBER, 
  REBATE_METER_RENT_AMT        NUMBER, 
  PENALTY_CHRG_NORMAL          NUMBER, 
  PENALTY_CHRG_NORMAL_REMARKS  VARCHAR2 (500), 
  XFORMER_RENT_AMT             NUMBER, 
  XFORMER_RENT_REMARKS         VARCHAR2 (500), 
  XFORMER_PRICE_REMARKS        VARCHAR2 (500), 
  XFORMER_REPAIR_AMT           NUMBER, 
  XFORMER_REPAIR_REMARKS       VARCHAR2 (500), 
  METER_PRICE_REMARKS          VARCHAR2 (500), 
  METER_PRICE_AMT              NUMBER, 
  SECU_DEPOSIT_AMT             NUMBER, 
  SECU_DEPOSIT_REMARKS         VARCHAR2 (500), 
  IRI_ADVANCE_AMT              NUMBER, 
  IRI_ADVANCE_REMARKS          VARCHAR2 (500), 
  METER_RENT                   NUMBER, 
  METER_RENT_REMARKS           VARCHAR2 (500), 
  LPC_AMT                      NUMBER, 
  LPC_REMARKS                  VARCHAR2 (500), 
  NET_BILL_INSTL_AMT           NUMBER, 
  NET_BILL_INSTL_REMARKS       VARCHAR2 (500), 
  VAT_INSTL_AMT                NUMBER, 
  VAT_INSTL_REMARKS            VARCHAR2 (500), 
  SD_PRICE                     NUMBER, 
  SD_REMARKS                   VARCHAR2 (500), 
  DCRC_AMT                     NUMBER, 
  DCRC_REMARKS                 VARCHAR2 (500), 
  FBS_AMT                      NUMBER, 
  FBS_REMARKS                  VARCHAR2 (500), 
  METER_RENUVATION_AMT         NUMBER, 
  METER_RENUVATION_REMARKS     VARCHAR2 (200))
   TABLESPACE USERS
   PCTFREE 10
   INITRANS 1
   MAXTRANS 255
  STORAGE ( 
   INITIAL 65536
   MINEXTENTS 1
   MAXEXTENTS 2147483645
 )
   NOCACHE; 