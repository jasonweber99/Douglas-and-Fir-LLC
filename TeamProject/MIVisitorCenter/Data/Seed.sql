INSERT INTO [Category](Name) VALUES ('Hiking');
INSERT INTO [Category](Name) VALUES ('Cycling');
INSERT INTO [Category](Name) VALUES ('Birding');
INSERT INTO [Category](Name) VALUES ('Fishing');
INSERT INTO [Category](Name) VALUES ('Golf');
INSERT INTO [Category](Name) VALUES ('Disc Golf');
INSERT INTO [Category](Name) VALUES ('Skating');
INSERT INTO [Category](Name) VALUES ('Historic Sites & Museums');
INSERT INTO [Category](Name) VALUES ('Art Galleries');
INSERT INTO [Category](Name) VALUES ('Festivals & Events');
INSERT INTO [Category](Name) VALUES ('Cinemas & Performing Arts');
INSERT INTO [Category](Name) VALUES ('Restaurants');
INSERT INTO [Category](Name) VALUES ('Wineries');
INSERT INTO [Category](Name) VALUES ('Coffee');
INSERT INTO [Category](Name) VALUES ('Bars');


-- Development Address Seed
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('123 NE Main St.', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('456 NW Main St.', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('789 SE Main St.', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('983 W Bridge St.',  'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('654 SW Marion St.', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('987 NE Smith St.',  'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('312 N Horton St.',  'Monmouth',     97361, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('534 E Reigh Ln.',   'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('978 NW Martin St.', 'Monmouth',     97361, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('637 E Lunar Ln.',   'Monmouth',     97361, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('283 NW Market St.', 'Monmouth',     97361, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('106 SE Poll St.',   'Independence', 97351, 'OR');


-- Development Bar Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Monmouth Bar #1', 'A newly-renovated local bar', '123-456-7890', 'monbar.com',1);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Monmouth Bar #2', 'Another newly-renovated local bar', '123-456-7810', 'monbar2.com',2);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Monmouth Bar #3', 'A third local bar', '123-555-7890', 'monbar3.com',3);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (1,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (2,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (3,15);

-- Development Coffee Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Independence Coffee #1', 'A local coffeehouse', '123-456-0282', 'indcof.com',4);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Caffee', 'Another local coffeehouse', '123-555-1890', 'indcof2.com',5);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Starbucks', 'Local franshise SB', '321-456-7890', 'indcof3.com',6);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (4,14);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (5,14);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (6,14);

-- Development Winery Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Monmouth Wine', 'Official Mon. winery', '333-456-7890', 'monwine.com',7);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Independence Winery', 'Official Ind. winery', '444-456-7890', 'indwine.com',8);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Avry', 'locally owned winery', '123-654-7890', 'avry.com',9);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (7,13);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (8,13);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (9,13);

-- Development Restaurant Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Restaurant #1', 'Family-owned restaurant', '253-456-3253', 'restaurant.com',10);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Restaurant #2', 'Formal restaurant', '123-456-0000', 'restaurant2.com',11);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Fast Food #1', 'Local fast-food chain', '363-863-247', 'fastfood.com',12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (10,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (11,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (12,12);