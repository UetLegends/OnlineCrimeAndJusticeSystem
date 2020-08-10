CREATE TABLE [Act And Section] (
  ComplaintID        int NOT NULL, 
  Act                int NOT NULL, 
  ActDescription     varchar(255) NOT NULL, 
  Section            int NOT NULL, 
  SectionDescription varchar(255) NOT NULL, 
  Grave              tinyint NOT NULL, 
  Punishable         tinyint NOT NULL);
CREATE TABLE [Arrested People] (
  ComplaintID int NOT NULL, 
  Name        varchar(100) NOT NULL, 
  FatherName  varchar(100) NOT NULL, 
  CNIC        int NOT NULL, 
  imagePath   varchar(255) NOT NULL);
CREATE TABLE Complainer (
  id           int IDENTITY NOT NULL, 
  Name         int NOT NULL, 
  FatherName   varchar(50) NOT NULL, 
  [Full Name]  varchar(255) NOT NULL, 
  CNIC         int NOT NULL, 
  imagePath    varchar(255) NOT NULL, 
  MobileNumber varchar(12) NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE Complaint (
  id                                 int IDENTITY NOT NULL, 
  ComplainerId                       int NOT NULL, 
  Status                             bit DEFAULT 0 NOT NULL, 
  [Investigation OfficerBelt Number] varchar(50) NOT NULL, 
  [Incharge OfficerBelt Number]      varchar(50) NOT NULL, 
  [Reporting Time]                   datetime NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE [Court Information] (
  id                  int IDENTITY NOT NULL, 
  [Court Room Number] int NOT NULL, 
  Type                varchar(30) NOT NULL, 
  LocationID          int NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE [Court Procedure] (
  id                 int NOT NULL, 
  Firid              int NOT NULL, 
  CourtInformationId int NOT NULL, 
  Judgeid            int NOT NULL, 
  PRIMARY KEY (id, 
  CourtInformationId, 
  Judgeid));
CREATE TABLE Evidence (
  complaintID int NOT NULL, 
  filePath    varchar(255) NOT NULL);
CREATE TABLE [Incharge Officer] (
  id            int NOT NULL, 
  Name          varbinary(50) NOT NULL, 
  FatherName    varchar(50) NOT NULL, 
  CNIC          int NOT NULL, 
  imagePath     varchar(255) NOT NULL, 
  Password      varchar(50) NOT NULL, 
  [Belt Number] varchar(50) NOT NULL, 
  Rank          varchar(255) NOT NULL, 
  PRIMARY KEY ([Belt Number]));
CREATE TABLE [Investigation Officer] (
  id            int NOT NULL, 
  Name          varbinary(50) NOT NULL, 
  FatherName    varchar(50) NOT NULL, 
  CNIC          int NOT NULL, 
  imagePath     varchar(255) NOT NULL, 
  Password      varchar(50) NOT NULL, 
  [Belt Number] varchar(50) NOT NULL, 
  Rank          varchar(255) NOT NULL, 
  OfficerRank   int NOT NULL, 
  PRIMARY KEY ([Belt Number]));
CREATE TABLE Judge (
  ServiceNumber int IDENTITY NOT NULL, 
  Name          varchar(100) NOT NULL, 
  FatherName    varchar(100) NOT NULL, 
  CNIC          int NOT NULL, 
  PRIMARY KEY (ServiceNumber));
CREATE TABLE [Known Accused Person] (
  ComplaintID   int NOT NULL, 
  [First Name]  varchar(255) NOT NULL, 
  [Father Name] varchar(255) NOT NULL, 
  Cast          varchar(20) NOT NULL, 
  AddressId     int NOT NULL);
CREATE TABLE Location (
  id         int IDENTITY NOT NULL, 
  State      varchar(20) NOT NULL, 
  District   varchar(50) NOT NULL, 
  Street     varchar(50) NOT NULL, 
  PostalCode int NOT NULL, 
  PRIMARY KEY (id));
CREATE TABLE [Murdered People] (
  complaintid      int NOT NULL, 
  FirstName        varchar(100) NOT NULL, 
  FatherName       varchar(100) NULL, 
  CNIC             int NULL, 
  DateofMurder     datetime NOT NULL, 
  MurderLocationId int NOT NULL, 
  PRIMARY KEY (MurderLocationId));
CREATE TABLE OccurrenceofOffecne (
  ComplaintID        int NOT NULL, 
  DataFrom           varchar(255) NOT NULL, 
  DateTo             int NOT NULL, 
  PlaceofOffenceID   int NOT NULL, 
  OffenceDescription varchar(255) NOT NULL, 
  PRIMARY KEY (ComplaintID));
CREATE TABLE [Property Details] (
  ComplaintID     int NOT NULL, 
  PropertyDetails varchar(255) NOT NULL, 
  Wealth          int NOT NULL, 
  LocationID      int NOT NULL);
CREATE TABLE [Unknown Accused Person] (
  compaintid       int NOT NULL, 
  height           int NOT NULL, 
  Color            varchar(20) NOT NULL, 
  [Body Language]  varchar(30) NOT NULL, 
  [Way of Talking] varchar(100) NOT NULL, 
  Language         varchar(20) NOT NULL);
CREATE TABLE Witness (
  complaintID  int NOT NULL, 
  Name         varchar(50) NOT NULL, 
  FatherName   varchar(15) NOT NULL, 
  CNIC         int NOT NULL, 
  MobileNumber int NOT NULL, 
  Statement    varchar(255) NOT NULL);
ALTER TABLE OccurrenceofOffecne ADD CONSTRAINT FKOccurrence386737 FOREIGN KEY (PlaceofOffenceID) REFERENCES Location (id);
ALTER TABLE [Property Details] ADD CONSTRAINT [FKProperty D816530] FOREIGN KEY (LocationID) REFERENCES Location (id);
ALTER TABLE Witness ADD CONSTRAINT FKWitness43207 FOREIGN KEY (complaintID) REFERENCES Complaint (id);
ALTER TABLE [Known Accused Person] ADD CONSTRAINT [FKKnown Accu363631] FOREIGN KEY (AddressId) REFERENCES Location (id);
ALTER TABLE [Known Accused Person] ADD CONSTRAINT [FKKnown Accu220587] FOREIGN KEY (ComplaintID) REFERENCES Complaint (id);
ALTER TABLE [Unknown Accused Person] ADD CONSTRAINT [FKUnknown Ac89516] FOREIGN KEY (compaintid) REFERENCES Complaint (id);
ALTER TABLE [Court Procedure] ADD CONSTRAINT [FKCourt Proc575799] FOREIGN KEY (Firid) REFERENCES Complaint (id);
ALTER TABLE [Court Information] ADD CONSTRAINT [FKCourt Info293007] FOREIGN KEY (LocationID) REFERENCES Location (id);
ALTER TABLE [Court Procedure] ADD CONSTRAINT [FKCourt Proc949332] FOREIGN KEY (CourtInformationId) REFERENCES [Court Information] (id);
ALTER TABLE [Murdered People] ADD CONSTRAINT [FKMurdered P680766] FOREIGN KEY (MurderLocationId) REFERENCES Location (id);
ALTER TABLE Evidence ADD CONSTRAINT FKEvidence561361 FOREIGN KEY (complaintID) REFERENCES Complaint (id);
ALTER TABLE Complaint ADD CONSTRAINT FKComplaint217810 FOREIGN KEY ([Investigation OfficerBelt Number]) REFERENCES [Investigation Officer] ([Belt Number]);
ALTER TABLE [Murdered People] ADD CONSTRAINT [FKMurdered P948084] FOREIGN KEY (complaintid) REFERENCES Complaint (id);
ALTER TABLE [Court Procedure] ADD CONSTRAINT [FKCourt Proc910198] FOREIGN KEY (Judgeid) REFERENCES Judge (ServiceNumber);
ALTER TABLE Complaint ADD CONSTRAINT FKComplaint624298 FOREIGN KEY ([Incharge OfficerBelt Number]) REFERENCES [Incharge Officer] ([Belt Number]);
ALTER TABLE Complaint ADD CONSTRAINT [can add] FOREIGN KEY (ComplainerId) REFERENCES Complainer (id);
ALTER TABLE [Arrested People] ADD CONSTRAINT [contains one or No Arrested People] FOREIGN KEY (ComplaintID) REFERENCES Complaint (id);
ALTER TABLE OccurrenceofOffecne ADD CONSTRAINT Have FOREIGN KEY (ComplaintID) REFERENCES Complaint (id);
ALTER TABLE [Act And Section] ADD CONSTRAINT [Have Many] FOREIGN KEY (ComplaintID) REFERENCES Complaint (id);
ALTER TABLE [Property Details] ADD CONSTRAINT [May Have] FOREIGN KEY (ComplaintID) REFERENCES Complaint (id);
