CREATE TABLE [Business] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(64) NOT NULL,
  [Description] nvarchar(1024),
  [Phone] nvarchar(32),
  [Website] nvarchar(128),
  [PictureFileName] varbinary(max),
  [AddressID] int
);

CREATE TABLE [PhotoCollection] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [BusinessID] int,
  [Photo] varbinary(max)
);

CREATE TABLE [OperatingHours] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Day] int,
  [Open] datetime,
  [Close] datetime,
  [BusinessID] int
);

CREATE TABLE [BusinessCategory] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [BusinessID] int,
  [CategoryID] int
);

CREATE TABLE [Category] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(32) NOT NULL
);

CREATE TABLE [Event] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(128) NOT NULL,
  [Description] text,
  [StartDate] datetime NOT NULL,
  [EndDate] datetime
);

CREATE TABLE [BusinessEvent] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [BusinessID] int,
  [EventID] int
);

CREATE TABLE [Address] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [StreetAddress] nvarchar(256) NOT NULL,
  [City] nvarchar(32) NOT NULL,
  [Zip] int NOT NULL,
  [State] nvarchar(2) NOT NULL,
  [Latitude] float,
  [Longitude] float
);

CREATE TABLE [EventAddress] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [EventID] int,
  [AddressID] int
);

CREATE TABLE [Lodging] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [BusinessID] int NOT NULL,
  [Price] int NOT NULL,
  [Rating] int
);

CREATE TABLE [LodgingAmenities] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [LodgingID] int,
  [AmenitiesID] int
);

CREATE TABLE [Amenities] (
  [ID] int PRIMARY KEY IDENTITY(1, 1),
  [Name] nvarchar(64) NOT NULL
);

ALTER TABLE [Business]
ADD CONSTRAINT FK_AddressBusiness
FOREIGN KEY ([AddressID]) REFERENCES [Address] ([ID]);

ALTER TABLE [OperatingHours]
ADD CONSTRAINT FK_BusinessOperatingHours
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);

ALTER TABLE [BusinessCategory]
ADD CONSTRAINT FK_BusinessBusinessCategory
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);

ALTER TABLE [BusinessCategory]
ADD CONSTRAINT FK_CategoryBusinessCategory
FOREIGN KEY ([CategoryID]) REFERENCES [Category] ([ID]);

ALTER TABLE [BusinessEvent]
ADD CONSTRAINT FK_BusinessBusinessEvent
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);

ALTER TABLE [BusinessEvent]
ADD CONSTRAINT FK_EventBusinessEvent
FOREIGN KEY ([EventID]) REFERENCES [Event] ([ID]);

ALTER TABLE [EventAddress]
ADD CONSTRAINT FK_EventEventAddress
FOREIGN KEY ([EventID]) REFERENCES [Event] ([ID]);

ALTER TABLE [EventAddress]
ADD CONSTRAINT FK_AddressEventAddress
FOREIGN KEY ([AddressID]) REFERENCES [Address] ([ID]);

ALTER TABLE [Lodging]
ADD CONSTRAINT FK_BusinessLodging
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);

ALTER TABLE [LodgingAmenities]
ADD CONSTRAINT FK_LodgingLodgingAmenities
FOREIGN KEY ([LodgingID]) REFERENCES [Lodging] ([ID]);

ALTER TABLE [LodgingAmenities]
ADD CONSTRAINT FK_AmenitiesLodgingAmenities
FOREIGN KEY ([AmenitiesID]) REFERENCES [Amenities] ([ID]);

ALTER TABLE [PhotoCollection] 
ADD CONSTRAINT FK_BusinessPhotoCollection
FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]);