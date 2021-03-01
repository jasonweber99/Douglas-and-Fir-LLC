CREATE TABLE [Business] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(64) NOT NULL,
  [Description] text,
  [Phone] nvarchar(32),
  [Website] nvarchar(128),
  [PictureFileName] nvarchar(256),
  [AddressID] int
)
GO

CREATE TABLE [OperatingHours] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Day] nvarchar(16),
  [Open] time,
  [Close] time,
  [BusinessID] int
)
GO

CREATE TABLE [BusinessCategory] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [BusinessID] int,
  [CategoryID] int
)
GO

CREATE TABLE [Category] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(32) NOT NULL
)
GO

CREATE TABLE [Event] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(128) NOT NULL,
  [Description] text,
  [StartDate] datetime NOT NULL,
  [EndDate] datetime
)
GO

CREATE TABLE [BusinessEvent] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [BusinessID] int,
  [EventID] int
)
GO

CREATE TABLE [Address] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [StreetAddress] nvarchar(256) NOT NULL,
  [City] nvarchar(32) NOT NULL,
  [Zip] int NOT NULL,
  [State] nvarchar(2) NOT NULL
)
GO

CREATE TABLE [EventAddress] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [EventID] int,
  [AddressID] int
)
GO

CREATE TABLE [Lodging] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [BusinessID] int NOT NULL,
  [Price] int NOT NULL,
  [Rating] int
)
GO

CREATE TABLE [LodgingAmenities] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [LodgingID] int,
  [AmenitiesID] int
)
GO

CREATE TABLE [Amenities] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(64) NOT NULL
)
GO

ALTER TABLE [Business]
ADD CONSTRAINT FK_AddressBusiness
FOREIGN KEY ([AddressID]) REFERENCES [Address] ([ID])
GO

ALTER TABLE [OperatingHours]
ADD CONSTRAINT FK_BusinessOperatingHours
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
GO

ALTER TABLE [BusinessCategory]
ADD CONSTRAINT FK_BusinessBusinessCategory
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
GO

ALTER TABLE [BusinessCategory]
ADD CONSTRAINT FK_CategoryBusinessCategory
FOREIGN KEY ([CategoryID]) REFERENCES [Category] ([ID])
GO

ALTER TABLE [BusinessEvent]
ADD CONSTRAINT FK_BusinessBusinessEvent
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
GO

ALTER TABLE [BusinessEvent]
ADD CONSTRAINT FK_EventBusinessEvent
FOREIGN KEY ([EventID]) REFERENCES [Event] ([ID])
GO

ALTER TABLE [EventAddress]
ADD CONSTRAINT FK_EventEventAddress
FOREIGN KEY ([EventID]) REFERENCES [Event] ([ID])
GO

ALTER TABLE [EventAddress]
ADD CONSTRAINT FK_AddressEventAddress
FOREIGN KEY ([AddressID]) REFERENCES [Address] ([ID])
GO

ALTER TABLE [Lodging]
ADD CONSTRAINT FK_BusinessLodging
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID])
GO

ALTER TABLE [LodgingAmenities]
ADD CONSTRAINT FK_LodgingLodgingAmenities
FOREIGN KEY ([LodgingID]) REFERENCES [Lodging] ([ID])
GO

ALTER TABLE [LodgingAmenities]
ADD CONSTRAINT FK_AmenitiesLodgingAmenities
FOREIGN KEY ([AmenitiesID]) REFERENCES [Amenities] ([ID])
GO