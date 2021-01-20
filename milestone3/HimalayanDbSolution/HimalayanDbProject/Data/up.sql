CREATE TABLE [Peak] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(30) NOT NULL,
  [Height] int NOT NULL,
  [ClimbingStatus] bit NOT NULL,
  [FirstAscentYear] int
)
GO

CREATE TABLE [Expedition] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Season] nvarchar(10),
  [Year] int,
  [StartDate] date,
  [TerminationReason] nvarchar(80),
  [OxygenUsed] bit,
  [PeakID] int,
  [TrekkingAgencyID] int,
  [CreatorID] int
)
GO

CREATE TABLE [TrekkingAgency] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(100)
)
GO

CREATE TABLE [Nationality] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(30)
)
GO

CREATE TABLE [Member] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [FirstName] nvarchar(30) NOT NULL,
  [LastName] nvarchar(30) NOT NULL,
  [NationalityID] int,
  [BirthDate] date
)
GO

CREATE TABLE [Role] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(10)
)
GO

CREATE TABLE [ExpeditionMember] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [ExpeditionID] int,
  [MemberID] int,
  [RoleID] int,
  [HighPointMeters] double,
  [OxygenUsed] bit
)
GO

CREATE TABLE [BlogPost] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Title] nvarchar(100),
  [AuthorID] int,
  [DatePosted] date,
  [DateEdited] date,
  [Content] text
)
GO

CREATE TABLE [User] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [FirstName] nvarchar(30) NOT NULL,
  [LastName] nvarchar(30) NOT NULL,
  [BirthDate] date
)
GO

ALTER TABLE [Expedition] ADD FOREIGN KEY ([PeakID]) REFERENCES [Peak] ([ID])
GO

ALTER TABLE [Expedition] ADD FOREIGN KEY ([TrekkingAgencyID]) REFERENCES [TrekkingAgency] ([ID])
GO

ALTER TABLE [Expedition] ADD FOREIGN KEY ([CreatorID]) REFERENCES [User] ([ID])
GO

ALTER TABLE [Member] ADD FOREIGN KEY ([NationalityID]) REFERENCES [Nationality] ([ID])
GO

ALTER TABLE [ExpeditionMember] ADD FOREIGN KEY ([ExpeditionID]) REFERENCES [Expedition] ([ID])
GO

ALTER TABLE [ExpeditionMember] ADD FOREIGN KEY ([MemberID]) REFERENCES [Member] ([ID])
GO

ALTER TABLE [ExpeditionMember] ADD FOREIGN KEY ([RoleID]) REFERENCES [Role] ([ID])
GO

ALTER TABLE [BlogPost] ADD FOREIGN KEY ([AuthorID]) REFERENCES [User] ([ID])
GO