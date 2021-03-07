 SET QUOTED_IDENTIFIER OFF
 SET ANSI_NULLS ON 

-- Category Seed
INSERT INTO [Category](Name) VALUES ('Hiking'); -- ID 1
INSERT INTO [Category](Name) VALUES ('Cycling');
INSERT INTO [Category](Name) VALUES ('Birding');
INSERT INTO [Category](Name) VALUES ('Fishing');
INSERT INTO [Category](Name) VALUES ('Golf'); -- ID 5
INSERT INTO [Category](Name) VALUES ('Disc Golf');
INSERT INTO [Category](Name) VALUES ('Skating');
INSERT INTO [Category](Name) VALUES ('Historic Sites & Museums');
INSERT INTO [Category](Name) VALUES ('Art Galleries');
INSERT INTO [Category](Name) VALUES ('Festivals & Events'); -- ID 10
INSERT INTO [Category](Name) VALUES ('Cinemas & Performing Arts');
INSERT INTO [Category](Name) VALUES ('Restaurants');
INSERT INTO [Category](Name) VALUES ('Wineries');
INSERT INTO [Category](Name) VALUES ('Coffee');
INSERT INTO [Category](Name) VALUES ('Bars'); -- ID 15


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


SET IDENTITY_INSERT Address ON;

INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('300', '270 Pacific Ave S', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('301', '201 Osprey Lane', 'Independence', 97351, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('302', '212 Knox Street N', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('303', '14810 Airlie Road', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('304', '50 C Street', 'Independence', 97351, 'OR');

INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (200, '10995 Highway 22', 'Dallas', 97338, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (201, '29555 Camp Adair Road', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (202, '50 C Street', 'Independence', 97351, 'OR');

SET IDENTITY_INSERT Address OFF;


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

-- Development Amenities Seed
INSERT INTO [Amenities](Name) VALUES ('Free Wi-Fi');
INSERT INTO [Amenities](Name) VALUES ('Free Parking');
INSERT INTO [Amenities](Name) VALUES ('Handicap Accessible');
INSERT INTO [Amenities](Name) VALUES ('Air Conditioning');
INSERT INTO [Amenities](Name) VALUES ('Business Center');
INSERT INTO [Amenities](Name) VALUES ('Pet-friendly');
INSERT INTO [Amenities](Name) VALUES ('Microwave and Fridge');
INSERT INTO [Amenities](Name) VALUES ('Smoke-free');
INSERT INTO [Amenities](Name) VALUES ('Free Breakfast');
INSERT INTO [Amenities](Name) VALUES ('Fitness Center');
INSERT INTO [Amenities](Name) VALUES ('Electric Car Charging');
INSERT INTO [Amenities](Name) VALUES ('Meeting Rooms');
INSERT INTO [Amenities](Name) VALUES ('Horse Boarding');
INSERT INTO [Amenities](Name) VALUES ('Bike Repair Station');
INSERT INTO [Amenities](Name) VALUES ('Bike Storage');
INSERT INTO [Amenities](Name) VALUES ('Campground');
INSERT INTO [Amenities](Name) VALUES ('Bed & Breakfast');


--Development Lodging Seed
SET IDENTITY_INSERT Business ON;

INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES ('300', 'College Inn Monmouth', "Welcome to College Inn, a great place to stay that's within walking distance of Western Oregon University in Monmouth, Oregon. Use our convenient, quiet and affordable hotel as your gateway to Salem, just 15 miles away. There's also plenty to see and do here in town, including many local businesses, restaurants and shopping destinations. Plus, some of the state's best vineyards and wineries are close at hand as well. You might also enjoy the Jensen Arctic Museum. We're pleased to bring you the best hotel experience in the area because we combine the consistency, cleanliness and service you expect from a well-regarded chain hotel with the down-home friendliness and affordability that only an independent hotel can provide.", '(503) 838-4438', 'www.hotelcollegeinn.com', 300);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES ('301', 'The Independence Hotel', "As Oregon’s only boutique hotel on the Willamette River, we welcome you to come and experience what made Independence so special to Oregon’s early pioneers. Located in the heart of the Willamette Valley, The Independence Hotel is situated in the heart of Oregon Wine Country. Whether you are visiting us for the wine, a river adventure, a bike ride along the Willamette Valley Scenic Bikeway or just getting away for the weekend, we are waiting to help you create amazing memories and provide a fantastic experience. Breathtaking views of the Willamette River and Riverview Park serve as the perfect backdrop for the nature-inspired decor of our uniquely styled rooms. Each room features a microwave and fridge, in-room bike storage, Keurig coffee makers, 49 inch 4k HDTV's, luxury robes, locally made bath products by Sojourn Beauty, and local artwork.", '(503) 837-0200', 'www.theindependencehotel.com', 301);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES ('302', "MaMere's Guest House", "Located in the heart of the Willamette Valley near the intersecting Highways of 99W and 22, MaMere’s is surrounded by some of the best wineries in the state (and, yes, we do have our favorites to recommend). An hour away from both the Pacific Ocean and the Cascade Mountains, MaMere’s is in downtown Monmouth, Oregon, the proud home of Western Oregon University. Located close to the scenic Willamette Valley Bike Route and TransAmerica Bike route, we are happy to lock your bike up if you are a two wheeled nomad. We are also only 10 minutes from sister city Independence, Oregon. From our dining room, you can view the activity of Main Street Park as you enjoy a delicious breakfast. You’ll hear the bands playing as you lounge in the gazebo during our Music in the Park series all summer long. Hit the bike trail or mosey over to neighboring eateries and shops. Or, you can always opt to do not much of anything here at MaMere’s.", '(503) 917-8745', 'www.mameresguesthouse.com', 302);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES ('303', 'Airlie Farm Bed & Breakfast', "Airlie Farm Bed and Breakfast is a great getaway located on 226 spectacular, scenic acres in Oregon's Willamette Valley beautiful horse and farm country. Rolling hills and lovely peaceful views surround this old fashioned Inn. Owners Nancy and Joe Petterson have made this inn a place to remember. The bed and breakfast inn is part of their working Quarter Horse farm nestled in the heart of Willamette Valley Wine Country, perfect for an overnight or several day vacation. There are lots of things to do in the area as it is located between Corvallis, Monmouth, Independence and Albany.", '(503) 838-1500', 'www.airliefarminn.com', 303);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES ('304', 'Bicycle Boater Campground', "Independence's Riverview Park is home to a biker/boater campground for travelers on the Willamette River Water Trail and the Willamette Valley Scenic Bikeway.  Nestled along the beautiful Willamette River and is 1 block away from a bustling downtown district with local food, drink, and entertainment, this basic camping area has five sites, each with a picnic table and bike rack.  A (cold) shower is located at the west end of the area in a white fenced enclosure. Solar showers have been installed for a warm shower on sunny days.  A water tap and bike repair station are located at the entrance to the camping area. A camp host is present during the summer to assist campers and provide information about the area.  WiFi is also available in the campground with a code provided by the Camp Host.  A camp site costs $10 per night and is first come first served.", '(503) 848-1212', 'www.ci.independence.or.us/recreation/bicycle-boater-campground', 304);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [Lodging](BusinessID, Price, Rating) VALUES (300, 1, 2);
INSERT INTO [Lodging](BusinessID, Price, Rating) VALUES (301, 3, 3);
INSERT INTO [Lodging](BusinessID, Price, Rating) VALUES (302, 2, 2);
INSERT INTO [Lodging](BusinessID, Price, Rating) VALUES (303, 2, 2);
INSERT INTO [Lodging](BusinessID, Price, Rating) VALUES (304, 1, 2);

INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (1, 1);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (1, 2);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (1, 3);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (1, 4);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (1, 5);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (1, 6);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (1, 7);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (1, 8);

INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 1);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 2);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 4);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 7);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 8);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 9);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 10);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 11);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 12);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (2, 15);

INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (3, 1);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (3, 2);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (3, 4);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (3, 8);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (3, 9);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (3, 15);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (3, 17);

INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (4, 1);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (4, 2);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (4, 9);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (4, 13);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (4, 17);

INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (5, 1);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (5, 14);
INSERT INTO [LodgingAmenities](LodgingID, AmenitiesID) VALUES (5, 16);

-- Development Hiking Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES('Baskett Slough Wildlife Refuge', 'Baskett Slough National Wildlife Refuge provides habitat for a wide variety of wildlife and plants. Populations of several endangered and threatened animal and plant species can be found on the refuge, and wildlife/wildlands observation, photography, hiking, and environmental education and interpretation are some of the visitor activities allowed on the Refuge.', '503-623-2749', 'https://www.fws.gov/refuge/baskett_slough/', 21);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES('E.E. Wilson Wildlife Area', 'The E.E. Wilson Wildlife Area came into existence in 1950 when the U.S. Government gave quitclaim title to the property to the Oregon Department of Fish and Wildlife. The wildlife area covers approximately 1,788 acres, is located on Highway 99W about 10 miles north of Corvallis and is situated on the Willamette Valley floor.', '541-745-5334', 'https://myodfw.com/e-e-wilson-wildlife-area-visitors-guide', 22);


SET IDENTITY_INSERT Business ON;
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (23, 'Willamette River Trail', 'In 2012, the City opened the Willamette River Trail, a 5k soft surface trail loop that runs from the Riverview Park Amphitheater to the North Riverfront Ballfield Complex and back.  The trail passes in and out of the Willamette River''s riparian zone offering excellent birdwatching and nature viewing opportunities, and also passes the Independence Dog Park.  Primary access for the trail is from the north side of Riverview Park where a pedestrian bridge crosses Ash Creek.', '503-838-1212', 'https://www.ci.independence.or.us/recreation/running-trails-and-walking-paths', 23);
SET IDENTITY_INSERT Business OFF;


INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (21, 1);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (22, 1);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (23, 1);

-- Cycling Seed


-- Birding Seed


-- Fishing Seed


-- Golf Seed


-- Disc Golf Seed


-- Skating Seed