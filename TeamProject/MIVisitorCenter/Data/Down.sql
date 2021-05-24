ALTER TABLE [LodgingAmenities]
DROP CONSTRAINT FK_AmenitiesLodgingAmenities
GO

ALTER TABLE [LodgingAmenities]
DROP CONSTRAINT FK_LodgingLodgingAmenities
GO

ALTER TABLE [Lodging]
DROP CONSTRAINT FK_BusinessLodging
GO

ALTER TABLE [EventAddress]
DROP CONSTRAINT FK_AddressEventAddress
GO

ALTER TABLE [EventAddress]
DROP CONSTRAINT FK_EventEventAddress
GO

ALTER TABLE [BusinessEvent]
DROP CONSTRAINT FK_EventBusinessEvent
GO

ALTER TABLE [BusinessEvent]
DROP CONSTRAINT FK_BusinessBusinessEvent
GO

ALTER TABLE [BusinessCategory]
DROP CONSTRAINT FK_CategoryBusinessCategory
GO

ALTER TABLE [BusinessCategory]
DROP CONSTRAINT FK_BusinessBusinessCategory
GO

ALTER TABLE [OperatingHours]
DROP CONSTRAINT FK_BusinessOperatingHours
GO

ALTER TABLE [Business]
DROP CONSTRAINT FK_AddressBusiness
GO

ALTER TABLE [PhotoCollection]
DROP CONSTRAINT FK_BusinessPhotoCollection
GO

ALTER TABLE [Component]
DROP CONSTRAINT FK_PageComponent
GO

ALTER TABLE [ComponentImages]
DROP CONSTRAINT FK_ComponentComponentImages
GO

ALTER TABLE [ComponentText]
DROP CONSTRAINT FK_ComponentComponentText
GO

DROP TABLE [Page]
GO

DROP TABLE [Component]
GO

DROP TABLE [ComponentImages]
GO

DROP TABLE [ComponentText]
GO

DROP TABLE [Amenities]
GO

DROP TABLE [LodgingAmenities]
GO

DROP TABLE [Lodging]
GO

DROP TABLE [EventAddress]
GO

DROP TABLE [Address]
GO

DROP TABLE [BusinessEvent]
GO

DROP TABLE [Event]
GO

DROP TABLE [Category]
GO

DROP TABLE [BusinessCategory]
GO

DROP TABLE [OperatingHours]
GO

DROP TABLE [Business]
GO

DROP TABLE [PhotoCollection]
GO