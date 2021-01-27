ALTER TABLE [BlogPost]
DROP CONSTRAINT FK_UserBlogPost
GO

ALTER TABLE [ExpeditionMember]
DROP CONSTRAINT FK_RoleExpeditionMember
GO

ALTER TABLE [ExpeditionMember]
DROP CONSTRAINT FK_MemberExpeditionMember
GO

ALTER TABLE [ExpeditionMember]
DROP CONSTRAINT FK_ExpeditionExpeditionMember
GO

ALTER TABLE [Member]
DROP CONSTRAINT FK_NationalityMember
GO

ALTER TABLE [Expedition]
DROP CONSTRAINT FK_UserExpedition
GO

ALTER TABLE [Expedition]
DROP CONSTRAINT FK_TrekkingAgencyExpedition
GO

ALTER TABLE [Expedition]
DROP CONSTRAINT FK_PeakExpedition
GO

DROP TABLE [User]
GO

DROP TABLE [BlogPost]
GO

DROP TABLE [ExpeditionMember]
GO

DROP TABLE [Role]
GO

DROP TABLE [Member]
GO

DROP TABLE [Nationality]
GO

DROP TABLE [TrekkingAgency]
GO

DROP TABLE [Expedition]
GO

DROP TABLE [Peak]
GO