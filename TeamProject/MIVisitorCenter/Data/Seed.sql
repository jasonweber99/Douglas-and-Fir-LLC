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
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('5372 Hoggle Drive', 'Monmouth', '97361', 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('18 Main Street', 'Monmouth', '97361', 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('902 9th Street', 'Independence', '97351', 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('2380 Bucket Avenue', 'Monmouth', '97361', 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('1403 Thompson Way', 'Independence', '97351', 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('332 Independence Street', 'Monmouth', '97361', 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('80230 Ford Street', 'Monmouth', '97361', 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('57324 La Croix Boulevard', 'Independence', '97351', 'OR');


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

-- Development Museum Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Ye Olde Honeybucket', 'This 120 year old port-a-john is a local favorite for date nights and celebrating with your special someone.', '971-555-7448', 'www.oldpoophouse.com', '1');
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Museum of Modern Tart', 'Come see the largest collection of modern pastries in Oregon!', '971-555-8436', 'www.moderntart.org', '2');
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (13, 8);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (14, 8);

-- Development Art Gallery Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('The Brush', 'The premier art gallery in Monmouth. Filled with a rotating collection of pieces from local and national artists, we have something for everyone.', '971-555-5375', 'www.monmouthbrush.com', '4');
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Kilned in Action', 'The only war-themed pottery gallery in Polk county! Stop by to see our extensive collection of weapon and ammunition-based clay art!', '971-555-5333', 'www.kilnedorbekilned.com', '3');
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (15, 9);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (16, 9);


-- Development Event Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Hazelnut Days', 'Independence is home to the annual Hazelnut Days, a three-day celebration of all things filbert! Come try a taste of our hazelnut-flavored ice cream, chocolate-covered hazelnuts, and of course (the local favorite) tripe with hazelnuts!', '971-555-5632', 'www.hazelnutdays.org', '5');
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Battle of the Bands', 'Have you ever listened to a terrible local band practice in a garage three houses down and thought, "Man, I could really go for more of this, but only louder and in the middle of the park!"? Well then do we have an event for you.', '971-555-7200', 'www.bobands.com', '6');
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (17, 10);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (18, 10);

-- Development Entertainment Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Monmouth Cinema 32', 'The newest entertainment destination in Polk county, the Monmouth Cinema 32 houses almost 33 screens showing all of the newest blockbuster hits, indie flick favorites, and two that show Armageddon (1998) 24/7!', '971-555-3495', 'www.cinema32.com', '7');
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Independence Little Theater', 'See the stars of local community theater on our 16 square foot stage!', '971-555-8501', 'www.ourstageissmall.com', '8');
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (19, 11);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (20, 11);