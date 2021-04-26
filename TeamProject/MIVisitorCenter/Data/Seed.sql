SET QUOTED_IDENTIFIER OFF;
SET ANSI_NULLS ON;

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
INSERT INTO [Category](Name) VALUES ('WaterTrailRestaurants');
INSERT INTO [Category](Name) VALUES ('WaterTrailLodging');
INSERT INTO [Category](Name) VALUES ('Lodging');



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
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('201 Osprey Lane', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('8175 Buena Vista Rd.', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('301 S. Main St.', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('240 Monmouth St.', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('370 Main St.', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('226 S. Main St.', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('296 S. Main St.', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('1320 Edgewater Dr.', 'Salem', 97304, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('211 Main St.', 'Independence', 97351, 'OR');
INSERT INTO [Address](StreetAddress, City, Zip, State) VALUES ('576 Patterson St. NW', 'Salem', 97304, 'OR');


SET IDENTITY_INSERT Address ON;

-- Development Lodging Address Seed
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('300', '270 Pacific Ave S', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('301', '201 Osprey Lane', 'Independence', 97351, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('302', '212 Knox Street N', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('303', '14810 Airlie Road', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES ('304', '50 C Street', 'Independence', 97351, 'OR');

-- Development Recreation Address Seed
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (200, '10995 Highway 22', 'Dallas', 97338, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (201, '29555 Camp Adair Road', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (202, '50 C Street', 'Independence', 97351, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (203, 'Fort Yamhill State Heritage Area', 'Grand Ronde', 97347, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (204, 'Buena Vista Rd NW', 'Albany', 97321, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (205, '120 Main St E', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (206, '11545 Helmick Rd', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (207, 'Mill Creek Rd', 'Sheridan', 97378, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (208, '520 Pacific Ave S', 'Rickreall', 97371, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (209, 'Halls Ferry Rd', 'Independence', 97351, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (210, '13935 Hwy 22', 'Dallas', 97338, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (211, '11875 Orrs Corner Rd', 'Dallas', 97338, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (212, '6335 Hwy 22', 'Independence', 97351, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (213, '401 SW Levens St', 'Dallas', 97338, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (214, 'Stadium Drive', 'Monmouth', 97361, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (215, '1005 LaCreole Dr SE', 'Dallas', 97338, 'OR');
INSERT INTO [Address](ID, StreetAddress, City, Zip, State) VALUES (216, '410 Hogan Rd', 'Monmouth', 97361, 'OR');

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

-- Water Trail Restaurant Seed
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Territory Restaurant', 'Inspired by the bounty of the Pacific Northwest, we specialize in fine artisan cuisine made with fresh, local ingredients. Join us for a unique fine dining experience on the banks of the beautiful Willamette River.', '503-837-0200', 'territoryrestaurant.com', 21);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Redgate Vineyards and Winery', 'Redgate Vineyard is a small, family owned winery crafting small lot, artisan wines reflecting the terroir of Redgate Estate and located just 1 mile from the Willamette River and 12 miles SW of the State Capitol, Salem, Oregon.', '503-428-7115', 'redgatewinery.com', 22);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('The Valkyrie Wine Tavern', 'Wine and Dine! Tavern style cuisine, large wine selection, beer and liquor too. Bottle shop as well. Open late.', '503-837-0505', 'facebook.com/thevalkyriewinetavern/', 23);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Parallel 45 Brewing', 'Independence Oregons own craft brewery.', '503-479-5905', 'p45brewing.square.site', 24);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Gilgamesh Brewing The River', 'The RIVER in Downtown Independence, OR serves hand tossed pizzas, sandwiches on handmade bread, and your favorite Gilgamesh Brewing craft beers. ', '503-559-0330', 'gilgameshbrewing.com/theriver', 25);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Independent Ice Cream Shop', 'Old Fashioned Ice Cream Shop located in historic downtown Independence, Oregon located in the Little Mall on Main. Unique gift shop and tea house included!', '503-877-7590', 'facebook.com/independenticecreamshop', 26);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Jubilee Champagne and Dessert Bar', 'Treat yourself to the tasty pairings we’re serving up at Jubilee Champagne and Dessert Bar, Independence, ORs favorite specialty establishment. Bring your friends for an enjoyable girls night out or stop by after work for one of our scrumptious sweets or baked goods to enjoy on your way home.', '503-837-0888', 'jubileechampagneanddessertbar.com', 27);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Brew Coffee and Taphouse - West Salem', 'Serves Java Crew brand espresso drinks and has the best local beer, wine & ciders as well as great food! Come enjoy our indoor seating or our beautiful outdoor patio seating - overlooking the park and river.', '503-370-2739', 'brewandcoffeetaphouse.com', 28);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Brew Coffee and Taphouse - Independence', 'Serves Java Crew brand espresso drinks and has the best local beer, wine & ciders as well as great food! Come enjoy our indoor seating or our beautiful outdoor patio seating - overlooking the park and river.', '503-837-0279', 'brewandcoffeetaphouse.com', 29);
INSERT INTO [Business](Name, Description, Phone, Website, AddressID) VALUES ('Xicha Brewing', 'Xicha Brewing is the Pacific Northwests only Latinx brewery located in West Salem, Oregon. We aim to offer an inclusive, family-friendly cultural environment by creating community around high quality, fresh Latin American food and house-brewed European ales and lagers.', '503-990-8292', 'xichabrewing.com', 30);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (21, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (22, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (23, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (24, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (25, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (26, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (27, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (28, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (29, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (30, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (21, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (22, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (23, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (24, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (25, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (26, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (27, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (29, 12);

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

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (300, 18);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (301, 18);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (302, 18);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (303, 18);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (304, 18);

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (300, 17);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (301, 17);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (302, 17);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (304, 17);


-- Development Hiking Seed
SET IDENTITY_INSERT Business ON;

INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES(200, 'Baskett Slough Wildlife Refuge', 'Baskett Slough National Wildlife Refuge provides habitat for a wide variety of wildlife and plants. Populations of several endangered and threatened animal and plant species can be found on the refuge, and wildlife/wildlands observation, photography, hiking, and environmental education and interpretation are some of the visitor activities allowed on the Refuge.', '503-623-2749', 'https://www.fws.gov/refuge/baskett_slough/', 200);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES(201, 'E.E. Wilson Wildlife Area', 'The E.E. Wilson Wildlife Area came into existence in 1950 when the U.S. Government gave quitclaim title to the property to the Oregon Department of Fish and Wildlife. The wildlife area covers approximately 1,788 acres, is located on Highway 99W about 10 miles north of Corvallis and is situated on the Willamette Valley floor.', '541-745-5334', 'https://myodfw.com/e-e-wilson-wildlife-area-visitors-guide', 201);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (202, 'Willamette River Trail', 'In 2012, the City opened the Willamette River Trail, a 5k soft surface trail loop that runs from the Riverview Park Amphitheater to the North Riverfront Ballfield Complex and back.  The trail passes in and out of the Willamette River''s riparian zone offering excellent birdwatching and nature viewing opportunities, and also passes the Independence Dog Park.  Primary access for the trail is from the north side of Riverview Park where a pedestrian bridge crosses Ash Creek.', '503-838-1212', 'https://www.ci.independence.or.us/recreation/running-trails-and-walking-paths', 202);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (203, 'Fort Yamhill State Heritage Park', 'Built in 1856 to regulate the eastern border of the Grand Ronde Indian Reservation, Fort Yamhill represented a time of transition for the people of the Northwest. The fort served to ease tension between settlers and natives, protect both populations and control traffic between them. Fort Yamhill is one of the best archaeologically preserved forts in the Northwest from the mid 19th century.', '503-879-5814', 'https://stateparks.oregon.gov/index.cfm?do=park.profile&parkId=185', 203);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (204, 'Luckiamute Landing State Natural Area', 'The Luckiamute River meanders through the 615-acre north tract, flowing into the Willamette River from the west and just a stone''s throw from the Santiam River confluence from the east. Travelers paddling the Willamette Water Trail can camp at the boater-access-only site. Hikers can park at the North Trailhead and take the 3-mile trail along a meadow and through a riparian hardwood forest of Oregon ash and bigleaf maple.', '800-551-6949', 'https://stateparks.oregon.gov/index.cfm?do=park.profile&parkId=192', 204);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (200, 1);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (201, 1);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (202, 1);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (203, 1);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (204, 1);

-- Cycling Seed
SET IDENTITY_INSERT Business ON;

INSERT INTO [Business](ID, Name, Description, Website, AddressID) VALUES (205, 'Western Valley: Hops, Crops, and Winery Stops', 'As the name implies, this easy, relatively flat ride loops through the scenic farmland, hop fields, vineyards, and historic small towns of south Polk County. Wineries, breweries, and wildlife areas along the way make it easy to turn this into an all-day ride.', 'https://ridewithgps.com/ambassador_routes/99-western-valley-hops-crops-and-winery-sto', 205);
INSERT INTO [Business](ID, Name, Description, Website, AddressID) VALUES (206, 'Western Valley: Ritner Creek Covered Bridge', 'A beautiful ride with a mildly-challenging start takes you by one of the few remaining covered bridges in Oregon, past world-class wineries, and into the warm and welcoming communities of Monmouth and Independence.', 'https://ridewithgps.com/ambassador_routes/101-western-valley-ritner-creek-covered-brid', 205);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (205, 2);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (206, 2);

-- Birding Seed
SET IDENTITY_INSERT Business ON;

INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (207, 'Sarah Helmick State Park', 'Sarah Helmick is located six miles south of Monmouth off Highway 99W. The small, shady park is situated along the Luckiamute River. Two picnic areas for groups up to 150 people each can be reserved. Electricity, water and picnic tables are provided at each site. Big leaf maples provide ample shade. Visitors can take a walk along the trails that border the Luckiamute River, with plenty of birds and native plant life to investigate.', '541-924-8492', 'https://stateparks.oregon.gov/index.cfm?do=park.profile&parkId=98', 206);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (208, 'Riverview Park', 'Completed in 2005, the Riverview Park Amphitheater is the centerpiece of Riverview Park. In 2008, a sparkling fountain was added to the Plaza Level, welcoming visitors to Independence.  The amphitheater hosts numerous events including the 8 week River''s Edge summer movie and concert series. Riverview Park is also the starting point for the Willamette River Trail, a 5k soft-surface path that loops north along the Willamette River providing excellent river views and birdwatching. In 2014 a disc golf course was installed in Riverview Park. In 2015, the Independence Biker/Boater Campground opened.', '503-838-1212', 'https://www.ci.independence.or.us/recreation/riverview-park', 202);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (200, 3);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (201, 3);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (204, 3);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (207, 3);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (208, 3);

-- Fishing Seed
SET IDENTITY_INSERT Business ON;

INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (209, 'Buell Park', 'Buell Park has the following facilities: Picnic Tables, Playground Equipment, Full-Service Mens/Womens Restroom, Fire Pits, Horseshoe Pits, Fishing, and Scenic Trails', '503-623-8172', 'https://www.co.polk.or.us/ms/buell-park', 207);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (210, 'Nesmith Park', 'The Polk County Parks and Recreation Commission and the Polk County Fair Board joined forces in 1969 to acquire 21.5 acres of land adjacent to the Polk County Fairgounds for a Park. It was their desire to recognize the burial site of Polk County Pioneer, James Nesmith, and to provide joint use of the property for Park and Fairgrounds.', '503-623-8172', 'https://www.co.polk.or.us/ms/nesmith-park', 208);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (211, 'Social Security Hole', 'Social Security Hole has the following facilities: Picnic Tables, ADA Restroom (No Running Water), and Fishing', '503-623-8172', 'https://www.co.polk.or.us/ms/social-security-hole', 209);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (209, 4);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (210, 4);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (211, 4);

-- Golf Seed
SET IDENTITY_INSERT Business ON;

INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (212, 'Cross Creek Golf Course', 'One of the top 10 most beautiful Oregon golf courses. Our unique layout combines traditional and links style golf, creating a challenging course in the midst of the beautiful Mid Willamette Valley.', '503-623-6666', 'https://crosscreekgc.com/', 210);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (213, 'Dallas Golf Club', 'Dallas Golf Club is a 2250 yard, 9-hole executive golf course with 5 par 3''s and 4 par 4''s. The course is a challenge to the most polished golfer yet enjoyable to the beginner! We also have a driving range.', '503-623-6832', 'https://dallasgolfclub.wixsite.com/dallasgolfclub', 211);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (214, 'Oak Knoll Golf Course', 'Is work getting to you? Come into Oak Knoll and take your stress out on our beautiful course and driving range.', '503-378-0344', 'https://oakknollgolfclub.com/', 212);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (212, 5);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (213, 5);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (214, 5);

-- Disc Golf Seed
SET IDENTITY_INSERT Business ON;

INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (215, 'Dallas Disc Golf Course', 'The Dallas Disc Golf Course is located in the the Brandvold (new) section of the park. Access via the entrance located at 401 Southwest Levens Street and head east at Brandvold Drive.', '503-623-2338', 'https://www.ci.dallas.or.us/383/Disc-Golf', 213);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (216, 'Western Oregon University Disc Golf Course', 'The 9-Hole (par 27) Disc Golf Course is open to Western Oregon University students, faculty and staff and the surrounding community. The course is located north of the Campus Recreation Turf Field. A course map and rules are located next to Hole #1. There is no charge to use the course. Players may use their own discs or check out a set at the Peter Courtney Health and Wellness Center´s front desk. The course is open from dusk to dawn and is closed during Cross Country home meets.', '503-838-9530', 'https://wou.edu/campusrec/facilities/disc-golf/', 214);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (215, 6);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (208, 6);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (216, 6);

-- Skating Seed
SET IDENTITY_INSERT Business ON;

INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (217, 'Dallas Skate Park', 'Dallas Skate Park has the following facilities: Water fountain, bathroom, adjacent fields and parking lot lights.', '503-623-2338', 'https://www.westcoastskateparks.com/skateparks/dallas-skatepark-dallas-oregon', 215);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (218, 'Monmouth City Skate Park', 'In-Line Skates or Skate Boards only (NO Bicycles, or motorized vehicles). Facility is open one hour before sunrise until one hour after sunset. This facility is unsupervised, USE AT YOUR OWN RISK.', '503-838-0722', 'https://www.ci.monmouth.or.us/pView.aspx?id=4827&catid=552', 216);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (217, 7);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (218, 7);

