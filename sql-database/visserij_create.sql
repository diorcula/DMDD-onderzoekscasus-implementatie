/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2014                    */
/* Created on:     10/6/2022 8:50:02 AM                         */
/*==============================================================*/

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BEDRIJF') and o.name = 'FK_BEDRIJF_EIGENAAR__BEDRIJF')
alter table BEDRIJF
   drop constraint FK_BEDRIJF_EIGENAAR__BEDRIJF
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BEDRIJF') and o.name = 'FK_BEDRIJF_GEVESTIGD_LAND')
alter table BEDRIJF
   drop constraint FK_BEDRIJF_GEVESTIGD_LAND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SCHEEPSVLAG') and o.name = 'FK_SCHEEPSV_VAART_OND_SCHIP')
alter table SCHEEPSVLAG
   drop constraint FK_SCHEEPSV_VAART_OND_SCHIP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SCHEEPSVLAG') and o.name = 'FK_SCHEEPSV_VLAG_VAN_LAND')
alter table SCHEEPSVLAG
   drop constraint FK_SCHEEPSV_VLAG_VAN_LAND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SCHIP') and o.name = 'FK_SCHIP_EIGENDOM__BEDRIJF')
alter table SCHIP
   drop constraint FK_SCHIP_EIGENDOM__BEDRIJF
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VANGST') and o.name = 'FK_VANGST_REGISTREE_LAND')
alter table VANGST
   drop constraint FK_VANGST_REGISTREE_LAND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VANGST') and o.name = 'FK_VANGST_VANGT_SCHIP')
alter table VANGST
   drop constraint FK_VANGST_VANGT_SCHIP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VISLICENTIE') and o.name = 'FK_VISLICEN_GEEFT_UIT_LAND')
alter table VISLICENTIE
   drop constraint FK_VISLICEN_GEEFT_UIT_LAND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VISLICENTIE') and o.name = 'FK_VISLICEN_HEEFT_LIC_SCHIP')
alter table VISLICENTIE
   drop constraint FK_VISLICEN_HEEFT_LIC_SCHIP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BEDRIJF')
            and   name  = 'EIGENAAR_VAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index BEDRIJF.EIGENAAR_VAN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BEDRIJF')
            and   name  = 'GEVESTIGD_IN_FK'
            and   indid > 0
            and   indid < 255)
   drop index BEDRIJF.GEVESTIGD_IN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BEDRIJF')
            and   type = 'U')
   drop table BEDRIJF
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LAND')
            and   type = 'U')
   drop table LAND
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SCHEEPSVLAG')
            and   name  = 'VLAG_VAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index SCHEEPSVLAG.VLAG_VAN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SCHEEPSVLAG')
            and   name  = 'VAART_ONDER_FK'
            and   indid > 0
            and   indid < 255)
   drop index SCHEEPSVLAG.VAART_ONDER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SCHEEPSVLAG')
            and   type = 'U')
   drop table SCHEEPSVLAG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SCHIP')
            and   name  = 'EIGENDOM_VAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index SCHIP.EIGENDOM_VAN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SCHIP')
            and   type = 'U')
   drop table SCHIP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VANGST')
            and   name  = 'REGISTREERT_FK'
            and   indid > 0
            and   indid < 255)
   drop index VANGST.REGISTREERT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VANGST')
            and   name  = 'VANGT_FK'
            and   indid > 0
            and   indid < 255)
   drop index VANGST.VANGT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VANGST')
            and   type = 'U')
   drop table VANGST
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VISLICENTIE')
            and   name  = 'GEEFT_UIT_FK'
            and   indid > 0
            and   indid < 255)
   drop index VISLICENTIE.GEEFT_UIT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VISLICENTIE')
            and   name  = 'HEEFT_LICENTIE_FK'
            and   indid > 0
            and   indid < 255)
   drop index VISLICENTIE.HEEFT_LICENTIE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VISLICENTIE')
            and   type = 'U')
   drop table VISLICENTIE
go

/*==============================================================*/
/* Table: BEDRIJF                                               */
/*==============================================================*/
create table BEDRIJF (
   BEDRIJFSNAAM         varchar(255)         not null,
   EIGENAAR             varchar(255)         null,
   LANDNAAM             varchar(255)         not null,
   constraint PK_BEDRIJF primary key (BEDRIJFSNAAM)
)
go

/*==============================================================*/
/* Index: GEVESTIGD_IN_FK                                       */
/*==============================================================*/




create nonclustered index GEVESTIGD_IN_FK on BEDRIJF (LANDNAAM ASC)
go

/*==============================================================*/
/* Index: EIGENAAR_VAN_FK                                       */
/*==============================================================*/




create nonclustered index EIGENAAR_VAN_FK on BEDRIJF (EIGENAAR ASC)
go

/*==============================================================*/
/* Table: LAND                                                  */
/*==============================================================*/
create table LAND (
   LANDNAAM             varchar(255)         not null,
   constraint PK_LAND primary key (LANDNAAM)
)
go

/*==============================================================*/
/* Table: SCHEEPSVLAG                                           */
/*==============================================================*/
create table SCHEEPSVLAG (
   SCHEEPSNAAM          varchar(255)         not null,
   LANDNAAM             varchar(255)         not null,
   VLAG_VANAF           datetime             not null,
   VLAG_TM              datetime             null,
   constraint PK_SCHEEPSVLAG primary key (SCHEEPSNAAM, LANDNAAM, VLAG_VANAF)
)
go

/*==============================================================*/
/* Index: VAART_ONDER_FK                                        */
/*==============================================================*/




create nonclustered index VAART_ONDER_FK on SCHEEPSVLAG (SCHEEPSNAAM ASC)
go

/*==============================================================*/
/* Index: VLAG_VAN_FK                                           */
/*==============================================================*/




create nonclustered index VLAG_VAN_FK on SCHEEPSVLAG (LANDNAAM ASC)
go

/*==============================================================*/
/* Table: SCHIP                                                 */
/*==============================================================*/
create table SCHIP (
   SCHEEPSNAAM          varchar(255)         not null,
   BEDRIJFSNAAM         varchar(255)         not null,
   constraint PK_SCHIP primary key (SCHEEPSNAAM)
)
go

/*==============================================================*/
/* Index: EIGENDOM_VAN_FK                                       */
/*==============================================================*/




create nonclustered index EIGENDOM_VAN_FK on SCHIP (BEDRIJFSNAAM ASC)
go

/*==============================================================*/
/* Table: VANGST                                                */
/*==============================================================*/
create table VANGST (
   SCHEEPSNAAM          varchar(255)         not null,
   LANDNAAM             varchar(255)         not null,
   DATUM                datetime             not null,
   VISSOORT_GEVANGEN    varchar(255)         not null,
   HOEVEELHEID          bigint               not null,
   constraint PK_VANGST primary key (SCHEEPSNAAM, LANDNAAM, DATUM, VISSOORT_GEVANGEN)
)
go

/*==============================================================*/
/* Index: VANGT_FK                                              */
/*==============================================================*/




create nonclustered index VANGT_FK on VANGST (SCHEEPSNAAM ASC)
go

/*==============================================================*/
/* Index: REGISTREERT_FK                                        */
/*==============================================================*/




create nonclustered index REGISTREERT_FK on VANGST (LANDNAAM ASC)
go

/*==============================================================*/
/* Table: VISLICENTIE                                           */
/*==============================================================*/
create table VISLICENTIE (
   SCHEEPSNAAM          varchar(255)         not null,
   LANDNAAM             varchar(255)         not null,
   L_VANAF              datetime             not null,
   VISSOORT_LICENTIE    varchar(255)         not null,
   L_TM                 datetime             null,
   QUOTUM               bigint               not null,
   constraint PK_VISLICENTIE primary key (SCHEEPSNAAM, LANDNAAM, L_VANAF, VISSOORT_LICENTIE)
)
go

/*==============================================================*/
/* Index: HEEFT_LICENTIE_FK                                     */
/*==============================================================*/




create nonclustered index HEEFT_LICENTIE_FK on VISLICENTIE (SCHEEPSNAAM ASC)
go

/*==============================================================*/
/* Index: GEEFT_UIT_FK                                          */
/*==============================================================*/




create nonclustered index GEEFT_UIT_FK on VISLICENTIE (LANDNAAM ASC)
go

alter table BEDRIJF
   add constraint FK_BEDRIJF_EIGENAAR__BEDRIJF foreign key (EIGENAAR)
      references BEDRIJF (BEDRIJFSNAAM)
go

alter table BEDRIJF
   add constraint FK_BEDRIJF_GEVESTIGD_LAND foreign key (LANDNAAM)
      references LAND (LANDNAAM)
go

alter table SCHEEPSVLAG
   add constraint FK_SCHEEPSV_VAART_OND_SCHIP foreign key (SCHEEPSNAAM)
      references SCHIP (SCHEEPSNAAM)
go

alter table SCHEEPSVLAG
   add constraint FK_SCHEEPSV_VLAG_VAN_LAND foreign key (LANDNAAM)
      references LAND (LANDNAAM)
go

alter table SCHIP
   add constraint FK_SCHIP_EIGENDOM__BEDRIJF foreign key (BEDRIJFSNAAM)
      references BEDRIJF (BEDRIJFSNAAM)
go

alter table VANGST
   add constraint FK_VANGST_REGISTREE_LAND foreign key (LANDNAAM)
      references LAND (LANDNAAM)
go

alter table VANGST
   add constraint FK_VANGST_VANGT_SCHIP foreign key (SCHEEPSNAAM)
      references SCHIP (SCHEEPSNAAM)
go

alter table VISLICENTIE
   add constraint FK_VISLICEN_GEEFT_UIT_LAND foreign key (LANDNAAM)
      references LAND (LANDNAAM)
go

alter table VISLICENTIE
   add constraint FK_VISLICEN_HEEFT_LIC_SCHIP foreign key (SCHEEPSNAAM)
      references SCHIP (SCHEEPSNAAM)
go

