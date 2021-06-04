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

-- Dining Subcategory Seed
INSERT INTO [DiningSubcategory](Name) VALUES ('Bar & Grill'); -- ID 1
INSERT INTO [DiningSubcategory](Name) VALUES ('BBQ');
INSERT INTO [DiningSubcategory](Name) VALUES ('Burgers');
INSERT INTO [DiningSubcategory](Name) VALUES ('Fast Food');
INSERT INTO [DiningSubcategory](Name) VALUES ('Mexican'); -- ID 5
INSERT INTO [DiningSubcategory](Name) VALUES ('Desserts');
INSERT INTO [DiningSubcategory](Name) VALUES ('Pizza');
INSERT INTO [DiningSubcategory](Name) VALUES ('Chinese');
INSERT INTO [DiningSubcategory](Name) VALUES ('Chicken');
INSERT INTO [DiningSubcategory](Name) VALUES ('Italian'); -- ID 10
INSERT INTO [DiningSubcategory](Name) VALUES ('Sushi');
INSERT INTO [DiningSubcategory](Name) VALUES ('Bakery');
INSERT INTO [DiningSubcategory](Name) VALUES ('Diner');
INSERT INTO [DiningSubcategory](Name) VALUES ('Sandwiches');
INSERT INTO [DiningSubcategory](Name) VALUES ('Teriyaki'); -- ID 15
INSERT INTO [DiningSubcategory](Name) VALUES ('Food Truck');

SET IDENTITY_INSERT Address ON;

-- Actual Eat & Drink Address Seed
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(1, '174 S Main Street', 'Independence', 97351, 'OR', 44.852346, -123.184761);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(2, '189 Pacific Avenue S', 'Monmouth', 97361, 'OR', 44.8481047, -123.2293256);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(3, '615 E Main Street', 'Monmouth', 97361, 'OR', 44.8482767, -123.228890725509);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(4, '834 N Main Street', 'Independence', 97351, 'OR', 44.860899, -123.185068);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(5, '564 Powell Street East', 'Monmouth', 97361, 'OR', 44.850976, -123.229781);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(6, '1083 Monmouth Street', 'Independence', 97351, 'OR', 44.850934, -123.200105);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(7, '105 E Main Street', 'Monmouth', 97361, 'OR', 44.8485111, -123.2290732);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(8, '320 Pacific Ave S', 'Monmouth', 97361, 'OR', 44.8481047, -123.2293256);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(9, '1321 Monmouth Street', 'Independence', 97351, 'OR', 44.850805, -123.204694);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(10, '1389 Monmouth Street', 'Independence', 97351, 'OR', 44.850133, -123.205958);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(11, '423 Main Street E', 'Monmouth', 97361, 'OR', 44.848022, -123.231284);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(12, '101 Polk Street', 'Independence', 97351, 'OR', 44.8603972501, -123.18519746);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(13, '1450 Monmouth Street', 'Independence', 97351, 'OR', 44.851564, -123.207739);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(14, '380 Pacific Avenue S', 'Monmouth', 97361, 'OR', 44.8481047, -123.2293256);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(15, '159 Monmouth Ave N', 'Monmouth', 97361, 'OR', 44.84933099, -123.237080936);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(16, '405 Main Street E', 'Monmouth', 97361, 'OR', 44.848261116, -123.23080437);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(17, '1349 Monmouth Street', 'Independence', 97351, 'OR', 44.85025, -123.204953);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(18, '109 Main Street E', 'Monmouth', 97361, 'OR', 44.848378, -123.235548);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(19, '114 S Main Street', 'Independence', 97351, 'OR', 44.852667, -123.184749);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(20, '1315 Monmouth Street', 'Independence', 97351, 'OR', 44.850961, -123.205646);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(21, '1695 Monmouth Street', 'Independence', 97351, 'OR', 44.850886, -123.213282);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(22, '183 Main Street W', 'Monmouth', 97361, 'OR', 44.8485824, -123.2429225);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(23, '601 Clay Street E', 'Monmouth', 97361, 'OR', 44.847098, -123.228887);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(24, '227 S Main Street', 'Independence', 97351, 'OR', 44.851738, -123.184258);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(25, '6335 OR-22', 'Independence', 97351, 'OR', 44.933583806, -123.15984536);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(26, '215 S Main Street', 'Independence', 97351, 'OR', 44.851845, -123.184263);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(27, '1473 Monmouth Independence Hwy', 'Monmouth', 97361, 'OR', 44.85068467, -123.21894392);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(28, '242 D Street', 'Independence', 97351, 'OR', 44.85043, -123.186631);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(29, '123 Main Street E', 'Monmouth', 97361, 'OR', 44.84841, -123.235361);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(30, '641 Clay Street E', 'Monmouth', 97361, 'OR', 44.846803, -123.228572);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(31, '1311 Monmouth Street', 'Independence', 97361, 'OR', 44.851029964, -123.2043001);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(32, '198 Main Street W', 'Monmouth', 97361, 'OR', 44.848747, -123.237113);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(33, '4705 Airport Road', 'Independence', 97351, 'OR', 44.865922, -123.196981);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(34, '1379 Monmouth Street', 'Independence', 97351, 'OR', 44.850069, -123.205886);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(35, '113 E Main Street', 'Monmouth', 97361, 'OR', 44.84838535, -123.23553991);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(36, '211 S Main Street', 'Independence', 97351, 'OR', 44.851919, -123.184263);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(37, '145 Monmouth Avenue N', 'Monmouth', 97361, 'OR', 44.849058175, -123.23660156);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(38, '140 Monmouth Avenue N', 'Monmouth', 97361, 'OR', 44.848981856, -123.237706398);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(39, '167 Main Street W', 'Monmouth', 97361, 'OR', 44.848435, -123.23684);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(40, '191 Monmouth Avenue N', 'Monmouth', 97361, 'OR', 44.8494227595, -123.236832536);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(41, '310 Main Street E', 'Monmouth', 97361, 'OR', 44.848752, -123.232684);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(42, '220 Pacific Avenue S', 'Monmouth', 97361, 'OR', 44.8496830731, -123.229632866);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(43, '87 S Main Street', 'Independence', 97351, 'OR', 44.853261, -123.184248);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(44, '131 Pacific Highway W N', 'Monmouth', 97361, 'OR', 44.8489522639, -123.228848013);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(45, '169 Main Street W', 'Monmouth', 97361, 'OR', 44.8484467181, -123.23695112);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(46, '152 Main Street W', 'Monmouth', 97361, 'OR', 44.848788, -123.236517);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(47, '201 Osprey Lane', 'Independence', 97351, 'OR', 44.851640846, -123.182892001);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(48, '8175 Buena Vista Road', 'Independence', 97351, 'OR', 44.815318536, -123.158744629);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(49, '301 S Main Street', 'Independence', 97351, 'OR', 44.851156, -123.18413);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(50, '240 Monmouth Street', 'Independence', 97351, 'OR', 44.851421, -123.1864);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(51, '370 S Main Street', 'Independence', 97351, 'OR', 44.850579, -123.184987);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(52, '226 S Main Street', 'Independence', 97351, 'OR', 44.851826, -123.184829);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(53, '296 S Main Street', 'Independence', 97351, 'OR', 44.851279, -123.184858);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(54, '1320 Edgewater Street NW', 'Salem', 97304, 'OR', 44.939439, -123.060465);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(55, '576 Patterson Street NW Suite 140', 'Salem', 97304, 'OR', 44.946475, -123.054994);

-- Actual Winery Address Seed
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(56, '3250 S Pacific Highway', 'Independence', 97351, 'OR', 44.88665366, -123.227348224);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(57, '8175 Buena Vista Road', 'Independence', 97351, 'OR', 44.815318536, -123.158744629);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(58, '15305 Dunn Forest Road', 'Monmouth', 97361, 'OR', 44.727530713, -123.3444682);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES(59, '11665 Airlie Road', 'Monmouth', 97361, 'OR', 44.74311435778, -123.26926374);

SET IDENTITY_INSERT Address OFF;
SET IDENTITY_INSERT Business ON;

-- Actual Eat & Drink Seed
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (1, 'Arena Sports Bar & Grill', 'Locally owned and operated sports bar featuring pool tables, live sports, and wings', '503-838-0054', 'http://www.arenasportsbar174.com', 1);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (2, 'BG''s Bar-B-Que', 'Kansas City-style BBQ offering dine-in or catering', '503-420-4143', 'http://bgdeli54.wixsite.com', 2);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (3, 'Burgerville', 'Fast-food chain using local, sustainable ingredients in its burgers, salads, & shakes', '503-838-6096', 'http://www.burgerville.com', 3); 
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (4, 'Mi Casita Market', 'Carniceria and grocery store', '503-838-0114', '-', 4);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (5, 'Casa Burrito', 'Bienvenidos a Casa Burrito, Taqueria donde encontrar?s deliciosos burritos, tortas, quesadillas y tacos. Y Restaurante con aut?entica comida Mexicana.', '503-837-0615', 'http://www.facebook.com/casaburritorestaurant', 5);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (5, 'Casa Burrito', 'Bienvenidos a Casa Burrito, Taqueria donde encontrares deliciosos burritos, tortas, quesadillas y tacos. Y Restaurante con autentica comida Mexicana.', '503-837-0615', 'www.facebook.com/casaburritorestaurant', 5);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (6, 'Chase Bar & Grill', 'Relaxed bar and grill featuring a heated patio', '503-838-5664', '-', 6);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (7, 'Crush Wine Bar & Tasting Room', 'An intimate setting to explore local wines and local foods with friendly and knowledgeable service.', '503-838-0399', 'http://www.crushonmain.com', 7);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (8, 'Dairy Queen', 'Soft-serve ice cream & signature shakes top the menu at this classic burger & fries fast-food chain', '503-838-4500', 'http://www.dairyqueen.com', 8);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (9, 'Figaro''s Pizza', 'Simple, counter-serve chain furnishing build-your-own & specialty pizza with a choice of crusts', '503-838-6459', 'http://www.figaros.com', 9);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (10, 'Fro-Zone Frozen Yogurt', 'Locally-owned frozen yogurt specialists', '503-937-1376', 'http://www.fro-zone.com', 10);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (11, 'The Gym Bar & Grill', 'A place where our atmosphere means athletics and class!', '503-838-4284', 'http://www.facebook.com/tgbandg', 11);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (12, 'Lucky Dragon', 'Local staple for Chinese cuisine serving high quality and fresh ingredients', '503-538-4325', 'http://www.luckydragonor.com', 12);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (13, 'Jade Terrace', 'Chinese restaurant featuring large portions and a lounge area', '503-606-4092', '-', 13);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (14, 'KFC/A&W', 'Combination fast food serving fried chicken, burgers, and namesake root beer', '503-838-4266', 'http://www.kfc.com', 14);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (15, 'Koyote''s Tacos', 'Local favorite for tacos and traditional Mexican cuisine offering dine-in or catering', '503-838-1801', 'http://www.facebook.com/Koyotes-Tacos-497547736979724/', 15);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (16, 'Little Caesars Pizza', 'Carry-out chain featuring chicken wings, signature breadsticks and pizza tossed from housemade dough', '503-606-3773', 'http://www.littlecaesars.com', 16);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (17, 'Los Dos Amigos Hacienda', 'Eatery serving heaping plates of Mexican classics and frozen margaritas in a vibrant atmosphere', '503-838-0223', 'http://www.losdosamigosoregon.com', 17);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (18, 'Main Street Ice Cream Parlor', 'Locally-owned ice cream parlor featuring a wide variety of toppings and candy', '503-838-1485', 'http://www.facebook.com/MainSt.IceCream', 18);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (19, 'Mangiare Italian Restaurant', 'Family-owned and operated eatery offering home-cooked Italian classics, wine, and cocktails', '503-838-0566', 'http://mangiareindependence.weebly.com', 19);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (20, 'McDonald''s', 'Classic, long-running fast-food chain known for its burgers, fries, and shakes', '503-838-3337', 'http://mcdonalds.com', 20);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (21, 'Mendi''s Pizza Parlor', 'Local pizzeria serving from-scratch pizzas, pastas, and sandwiches since 1977', '503-838-5413', 'http://mendispizza.com', 21);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (22, 'Momiji Sushi Bar & Restaurant', 'Oregon-based chain serving fresh sushi rolls, bento boxes, and Japanese entrees', '503-837-0111', 'http://momijiinc.com', 22);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (23, 'Muchas', 'Local chain offering fresh and authentic Mexican cuisine', '503-837-0400', 'http://muchas-fresh.com', 23);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (24, 'The Naughty Noodle', 'Locally-owned restaurant featuring hand-made pasta', '503-837-0834', 'http://naughtynoodle.com', 24);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (25, 'Oak Tree Inn Restaurant', 'Quaint restaurant located on the Oak Knoll Golf Course', '503-378-7550', 'http://oakknollgolfcourse.com', 25);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (26, 'Ovenbird Bakery', 'Warm and friendly bakery offering coffee, lunch, fresh-baked breads and pastries, and catering', '503-837-0109', 'http://ovenbirdbakery.com', 26);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (27, 'Papa Murphy''s', 'Chain outlet offering build-your-own takeaway pizzas', '503-838-4111', 'http://papamurphys.com', 27);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (28, 'Pink House Cafe', 'Charming cafe serving home-cooked meals and treats', '503-837-0900', 'http://facebook.com/IndependencePinkHouseCafe', 28);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (29, 'Rick''s Place', 'Legendary local diner featuring great coffee and atmosphere', '503-838-4912', '-', 29);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (30, 'Rookies Sports Tap', 'Monmouth''s first bar with 40 taps, full menu, and video poker', '503-838-4806', 'http://rookiestap.com', 30);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (31, 'San Antonio Mexican Restaurant', 'Colorful restaurant offering Tex-Mex cuisine with excellent service', '503-838-1304', 'http://san-antonio-mexican-restaurant-mexican-restaurant.business.site', 31);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (32, 'Sing Fay Restaurant', 'Local staple for Chinese food with generous portions', '503-838-3723', 'http://singfaytogo.com', 32);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (33, 'Starduster Cafe', 'A small family owned and operated cafe that was established in 2006', '503-838-1791', 'http://facebook.com/Starduster-Cafe-Inc-117197471631894', 33);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (34, 'Subway of Independence', 'Casual counter-service chain for build-your-own sandwiches and salads', '503-838-5732', 'http://subway.com', 34);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (35, 'Subway of Monmouth', 'Casual counter-service chain for build-your-own sandwiches and salads', '503-837-0960', 'http://subway.com', 35);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (36, 'Brew Coffee & Tap House - Independence', 'Family-owned coffe and tap house with patio seating', '503-837-0279', 'http://brewcoffeeandtaphouse.com', 36);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (37, 'Urban Deli Mexican Food', 'Casual counter-service Mexican restaurant serving affordable cuisine', '503-837-0383', 'http://order.online/store/UrbanDeliMexicanfood-632405', 37);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (38, 'Yang''s Teriyaki Plus', 'A family business dedicated to providing fresh food and ensuring fast, friendly service', '503-838-2330', 'http://yangsteriyaki.com', 38);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (39, 'Yeasty Beasty', 'Local favorite for pizza and beer featuring fresh-made dough daily and 26 taps of craft brews', '503-837-1222', 'http://yeastybeasty.com', 39);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (40, 'The Donut Bar', 'Food truck offering gourmet donuts and pastries', '503-798-1328', 'http://facebook.com/Thedonutbarinmonmouth', 40);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (41, 'Domino''s Pizza', 'Delivery/carryout chain offering a wide range of pizzas', '503-836-9500', 'http://dominos.com', 41);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (42, 'Grain Station Brew Works', 'Brewery and brewpub offering craft beers and serving breakfast, lunch, and dinner', '503-838-1730', 'http://grainstation.com', 42);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (43, 'The Tap Station', 'Tap house featuring a patio with lawn games, 16 rotating craft beers, and daily specials', '541-953-2747', 'http://thetapstation.net', 43);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (44, 'Carl''s Jr.', 'Fast-food chain serving huge burgers and chicken sandwiches', '503-917-4100', 'http://carlsjr.com', 44);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (45, 'The Sippery', 'Local gathering place serving coffee, sandwiches, and beer', '503-837-0168', 'http://thesipperyoregon.com', 45);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (46, 'Lonney''s Lunch Wagon', 'Food truck serving Hawaiian and Korean cuisine', '-', 'http://facebook.com/Lonneyslunchwagon', 46); 

-- Actual Winery Seed
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (56, 'Namaste Vineyards', 'We at NamastÃ© Vineyards believe the finest wines come from the finest grapes. Our vineyards were established decades ago between 1980 and 1983 and produce complex and mature fruit. Our vineyard property is located just 15 minutes west of Salem, in the heart of Oregon''s renowned Willamette Valley. We grow Chardonnay, Riesling, GewÃ¼rztraminer, and multiple Pinot Noirs.', '503-365-8859', 'namastevinyards.com', 56);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (57, 'Redgate Vineyards', 'Redgate Vineyard is a small, family owned winery crafting small lot, artisan wines reflecting the terroir of Redgate Estate and located just 1 mile from the Willamette River and 12 miles SW of the State Capitol, Salem, Oregon.', '503-428-7115', 'redgatewinery.com', 57);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (58, 'Airlie Winery', 'A destination winery nestled in the heart of the Willamette Valley boasting an inviting atmosphere and nine varietals of wine!', '503-838-6013', 'airliewinery.com', 58);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (59, 'Emerson Vineyards', 'A family owned and operated winery with a daily tasting room on 127 acres.', '503-838-0944', 'emersonvineyards.com', 59);


SET IDENTITY_INSERT Business OFF;

-- Actual Restaurant Category Seed
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (1,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (1,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (2,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (3,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (4,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (5,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (6,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (6,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (7,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (7,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (8,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (9,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (10,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (11,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (11,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (12,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (13,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (14,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (15,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (16,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (17,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (18,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (19,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (20,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (21,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (22,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (23,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (24,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (25,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (26,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (26,14);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (27,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (28,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (28,14);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (29,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (29,14);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (30,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (30,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (31,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (32,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (33,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (34,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (35,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (36,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (36,14);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (36,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (37,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (38,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (39,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (40,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (41,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (42,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (42,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (43,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (43,15);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (44,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (45,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (45,14);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (46,12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (56,13);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (57,13);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (58,13);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (59,13);

-- Restaurant Subcategory Seed
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (1,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (2,2);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (3,3);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (3,4);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (4,5);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (5,5);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (6,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (7,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (8,4);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (8,6);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (9,7);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (10,6);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (11,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (12,8);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (13,8);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (14,3);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (14,4);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (14,9);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (15,5);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (16,7);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (17,5);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (18,6);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (19,10);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (20,3);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (20,4);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (21,7);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (22,11);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (23,4);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (23,5);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (24,11);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (25,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (26,12);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (27,7);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (28,13);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (29,13);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (30,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (31,5);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (32,8);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (33,13);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (34,14);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (35,14);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (36,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (37,5);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (38,15);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (39,7);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (40,6);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (40,16);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (41,7);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (42,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (43,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (44,3);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (44,4);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (45,1);
INSERT INTO [RestaurantDiningSubcategory](BusinessID, DiningSubcategoryID) VALUES (46,16);

SET IDENTITY_INSERT Business ON;

-- Water Trail Restaurant Seed
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (47, 'Territory Restaurant', 'Inspired by the bounty of the Pacific Northwest, we specialize in fine artisan cuisine made with fresh, local ingredients. Join us for a unique fine dining experience on the banks of the beautiful Willamette River.', '503-837-0200', 'http://territoryrestaurant.com', 47);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (48, 'Redgate Vineyards and Winery', 'Redgate Vineyard is a small, family owned winery crafting small lot, artisan wines reflecting the terroir of Redgate Estate and located just 1 mile from the Willamette River and 12 miles SW of the State Capitol, Salem, Oregon.', '503-428-7115', 'http://redgatewinery.com', 48);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (49, 'The Valkyrie Wine Tavern', 'Wine and Dine! Tavern style cuisine, large wine selection, beer and liquor too. Bottle shop as well. Open late.', '503-837-0505', 'http://facebook.com/thevalkyriewinetavern/', 49);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (50, 'Parallel 45 Brewing', 'Independence Oregons own craft brewery.', '503-479-5905', 'http://p45brewing.square.site', 50);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (51, 'Gilgamesh Brewing The River', 'The RIVER in Downtown Independence, OR serves hand tossed pizzas, sandwiches on handmade bread, and your favorite Gilgamesh Brewing craft beers. ', '503-559-0330', 'http://gilgameshbrewing.com/theriver', 51);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (52, 'Independent Ice Cream Shop', 'Old Fashioned Ice Cream Shop located in historic downtown Independence, Oregon located in the Little Mall on Main. Unique gift shop and tea house included!', '503-877-7590', 'http://facebook.com/independenticecreamshop', 52);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (53, 'Jubilee Champagne and Dessert Bar', 'Treat yourself to the tasty pairings we?re serving up at Jubilee Champagne and Dessert Bar, Independence, ORs favorite specialty establishment. Bring your friends for an enjoyable girls night out or stop by after work for one of our scrumptious sweets or baked goods to enjoy on your way home.', '503-837-0888', 'http://jubileechampagneanddessertbar.com', 53);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (54, 'Brew Coffee and Taphouse - West Salem', 'Serves Java Crew brand espresso drinks and has the best local beer, wine & ciders as well as great food! Come enjoy our indoor seating or our beautiful outdoor patio seating - overlooking the park and river.', '503-370-2739', 'http://brewandcoffeetaphouse.com', 54);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (55, 'Xicha Brewing', 'Xicha Brewing is the Pacific Northwests only Latinx brewery located in West Salem, Oregon. We aim to offer an inclusive, family-friendly cultural environment by creating community around high quality, fresh Latin American food and house-brewed European ales and lagers.', '503-990-8292', 'http://xichabrewing.com', 55);

SET IDENTITY_INSERT Business OFF;

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (47, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (48, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (49, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (50, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (51, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (52, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (53, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (54, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (36, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (55, 16);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (47, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (48, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (49, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (50, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (51, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (52, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (53, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (54, 12);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (55, 12);

SET IDENTITY_INSERT Business OFF;

SET IDENTITY_INSERT Address ON;

-- Development Lodging Address Seed
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (300, '270 Pacific Ave S', 'Monmouth', 97361, 'OR', 44.846885445, -123.229691229);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (301, '201 Osprey Lane', 'Independence', 97351, 'OR', 44.8516560584, -123.182902729);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (302, '212 Knox Street N', 'Monmouth', 97361, 'OR', 44.849851, -123.234546);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (303, '14810 Airlie Road', 'Monmouth', 97361, 'OR', 44.751848046, -123.33809423);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (304, '50 C Street', 'Independence', 97351, 'OR', 44.852523, -123.183195);

-- Development Recreation Address Seed
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (200, '10995 OR-22', 'Dallas', 97338, 'OR', 44.9478023916, -123.250353168);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (201, '29555 Camp Adair Road', 'Monmouth', 97361, 'OR', 44.7009344065, -123.208276029);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (203, 'Fort Yamhill State Heritage Area', 'Grand Ronde', 97347, 'OR', 45.0705088042, -123.5699767299);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (204, '13770 Buena Vista Rd', 'Independence', 97351, 'OR', 44.7338919175, -123.163769348);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (205, '120 Main St E', 'Monmouth', 97361, 'OR', 44.848808, -123.235353);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (206, '11545 Helmick Rd', 'Monmouth', 97361, 'OR', 44.781674156, -123.237045498);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (207, 'Mill Creek Rd', 'Sheridan', 97378, 'OR', 45.022225, -123.420359);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (208, '520 S Pacific Highway W', 'Rickreall', 97371, 'OR', 44.9258518939, -123.22813858);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (209, 'Halls Ferry Rd', 'Independence', 97351, 'OR', 44.8867761569, -123.139788329);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (210, '13935 Hwy 22', 'Dallas', 97338, 'OR', 44.9833490569, -123.313464671);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (211, '11875 Orrs Corner Rd', 'Dallas', 97338, 'OR', 44.920058764, 123.275876729);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (212, '6335 Hwy 22', 'Independence', 97351, 'OR', 44.93364456775, -123.159823901);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (213, '401 SW Levens St', 'Dallas', 97338, 'OR', 44.925684465, -123.319789529);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (214, 'Stadium Drive', 'Monmouth', 97361, 'OR', 44.85675614226, -123.24434393);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (215, '1005 LaCreole Dr SE', 'Dallas', 97338, 'OR', 44.91898236102, -123.3007089007);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (216, '410 Hogan Rd', 'Monmouth', 97361, 'OR', 44.852418, -123.220701);

-- Development Art and Culture Address Seed
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (101, '184 Main St', 'Independence', 97351, 'OR', 44.8522688464, -123.1849848299);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (102, '200 Monmouth Ave N', 'Monmouth', 97361, 'OR', 44.85121950188, -123.237300883);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (103, '9615 Grand Ronde Rd', 'Grand Ronde', 97347, 'OR', 45.074382, -123.617022);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (105, '112 3rd St S', 'Independence', 97351, 'OR', 44.85279304638, -123.187845101);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (106, '855 Monmouth Ave N', 'Monmouth', 97361, 'OR', 44.85679385302, -123.236572929);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (107, '560 S Pacific Hwy W', 'Rickreall', 97371, 'OR', 44.925097061, -123.228442);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (108, 'Ritner Creek Bridge', 'Monmouth', 97361, 'OR', 44.728122514, -123.441949687);
INSERT INTO [Address](ID, StreetAddress, City, Zip, State, Latitude, Longitude) VALUES (109, '450 S 2nd St', 'Independence', 97351, 'OR', 44.849759, -123.187028);

SET IDENTITY_INSERT Address OFF;

SET IDENTITY_INSERT Business ON;

-- Development Festival and Event Seed
INSERT INTO [Business](ID, Name, Description, Website, AddressID) VALUES (100, 'Hop & Heritage Block Party', 'Independence''s celebration of hops and heritage is back this year with the Hop and Heritage Block Party! Concentrated in the streets and businesses of Downtown Independence, the Hop and Heritage Block Party will showcase Independence''s unique heritage and vibrant community. Sample local brews and ciders with our Block Party Passport- commemorative glass and tastings included! You can look forward to craft beer, music, hop history, and more!', 'https://www.downtownindependence.com/hops', 304);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (101, 'Monmouth July 4th Festival', 'The City of Monmouth sponsors a July 4th Festival The festival is held in Main Street Park. The festival emphasizes the arts including music, dance and theater.', '503-751-0145', 'https://www.ci.monmouth.or.us/pview.aspx?id=26838', 205);
INSERT INTO [Business](ID, Name, Description, Website, AddressID) VALUES (102, 'Independence Days', 'Enjoy fun activities for all ages as our community comes together to celebrate the birth of our great nation. Not only is this traditionally a giant community-wide annual homecoming of family and friends, it also serves as an opportunity for us to welcome visitors and create new friendships as you explore the bounty that Independence has to offer. Hopefully, this glorious celebration of the Fourth of July will become a new tradition for your family, as well. What better way to celebrate our nation?s Independence Day than under a canopy of carnival lights and fireworks in Independence Oregon?', 'https://independencedaysorg.wordpress.com/', 304);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (103, 'Music in the Park Series', 'Free concerts are offered every Wednesday from second week of July through the end of August in the Main Street Park Amphitheater.  All concerts begin at 6:30 p.m.  The Series features a wide variety of music genres.  Food,beer and wine are available in the park.  Bring your blanket or lawn chair and enjoy a summer full of music!  Please leave your pets at home.', '503.838.0722', 'https://www.ci.monmouth.or.us/pView.aspx?id=5008&catid=554', 205);
INSERT INTO [Business](ID, Name, Description, Website, AddressID) VALUES (104, 'River''s Edge Summer Series', 'The River''s Edge Summer Series provides FREE movies and concerts throughout the months of July and August. Movies are Thursday nights starting at dusk. There is lawn seating and concessions that open at 8:00 pm. Friday evenings there is free live music with concessions and a beer garden opening at 5:30 pm, and bands starting at 6:30 pm.', 'http://www.independenceamphitheater.com/', 304);
INSERT INTO [Business](ID, Name, Description, Website, AddressID) VALUES (105, 'Community Fiesta', 'Join IM Community at Riverview Park in downtown Independence and experience The Community Fiesta in August. This two day celebration will have delicious food vendors, live music, cultural dances including baile folkorico, a soccer tournament, the crowning of the fiesta queen on Friday night and fireworks Saturday night! Don''t miss this fun and exciting summer Fiesta.', 'https://www.ci.independence.or.us/ed/page/festival-events', 304);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (106, 'Polk County Fair', 'A genuine old fashion County Fair, fun for the whole family.', '(503) 623-3048', 'https://www.co.polk.or.us/fair/annual-fair-2', 208);

-- Development Art Gallery Seed
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (107, 'River Gallery', 'Our gallery believes that art should be a part of everyday life, shared with everyone. Visit us at the gallery during our open hours and browse through our artists and events', '(503) 838-6171', 'https://www.rivergalleryart.com/', 101);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (108, 'The Cannon Gallery of Art', 'The Cannon Gallery of Art is located in the heart of Western Oregon University?s campus in the beautifully renovated Campbell Hall. Campbell Hall was built in 1871 and is the oldest building still in use the Oregon University System. The gallery has approximately 700 square feet of exhibition space and holds seven exhibitions during each academic year. Thematic and media-specific exhibits by regional and nationally acclaimed artists are included in each annual schedule.', '503-838-8607', 'https://wou.edu/art-and-design/cannon-gallery-of-art/', 102);

-- Development Historic Site and Museum Seed
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (109, 'Chachalu Tribal Museum & Cultural Center', 'This vision of the Museum is to tell the story of the resiliency of the land and of the people who have lived here since time immemorial. The land, once devastated by fire, is now revitalized with healthy forests and abundant wildlife. Our salmon have once again returned to our streams; the Grand Ronde people, once uprooted from their various homelands and then Terminated by the federal government, are renewed through Restoration. This is a center for cultural activity where the Tribe?s stories, history, and culture continue to be practiced and shared.', '(503) 879-2268', 'https://www.grandronde.org/history-culture/culture/chachalu-museum-and-cultural-center/', 103);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (110, 'Fort Yamhill State Heritage Area', 'Built in 1856 to regulate the eastern border of the Grand Ronde Indian Reservation, Fort Yamhill represented a time of transition for the people of the Northwest. The fort served to ease tension between settlers and natives, protect both populations and control traffic between them. Fort Yamhill is one of the best archaeologically preserved forts in the Northwest from the mid 19th century.', '(503) 879-5814', 'https://stateparks.oregon.gov/index.cfm?do=park.profile&parkId=185', 203);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (111, 'Heritage Museum', 'The mission of the Heritage Museum is to collect and share the natural history and diverse cultural heritage of the river community of Independence. Visit us in the heart of the Independence National Historic District, at the corner of 3rd and B Streets where we are telling stories, inspiring memories, and preserving local history.', '(503) 838-4989', 'https://orheritage.org/', 105);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (112, 'Historic Gentle House', 'Historic Gentle House is an event center, garden, and museum. The house is an important landmark for both the community and Western Oregon University.', '(503) 838-8673', 'https://wou.edu/gentlehouse/', 106);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (113, 'Polk County Museum', 'The Polk County Historical Society is a public-benefit, non-profit corporation managed by a Board of Directors consisting of the President, the Vice-President, the Secretary, the Treasurer, nine Directors and the immediate Past President. Board members are elected at the Annual Membership Meeting held each January. The volunteer Board of Directors meets monthly to implement the pronouncements comprising the PCHS Mission Statement.', '(503) 623-6251', 'http://www.polkcountyhistoricalsociety.org/', 107);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (114, 'Ritner Creek Covered Bridge', 'Ritner Creek Bridge, one of the covered bridges remaining in Oregon west of the Cascades, almost became a memory in 1974. Declared structurally unsafe, it was scheduled for removal. The children of Pedee School along with the citizens in the Pedee area rallied to its support with a "Save our Bridge" campaign. The County commissioners met with the state highway department and as a result the issue was placed on the ballot May 28, 1974. The measure passed and the covered bridge was moved to an adjacent site. The new bridge on Highway 223 parallels it.', '(503) 623-8172', 'https://www.co.polk.or.us/ms/ritner-creek-bridge', 108);

-- Development Entertainment Seed
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (115, 'Independence Cinema', 'Independence Cinema 8 is a state of the art, first run Movie Theater located in Independence, Oregon. The theatre features luxury reclining seats, exceptional concessions, NEC Digital Projection & Dolby Digital Surround Sound.', '(503) 606-3003', 'http://www.independencecinema8.com/', 109);

SET IDENTITY_INSERT Business OFF;

-- Development Art&Culture/Category seed
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (100, 10);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (101, 10);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (102, 10);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (103, 10);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (104, 10);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (105, 10);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (106, 10);

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (107, 9);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (108, 9);

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (109, 8);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (110, 8);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (111, 8);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (112, 8);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (113, 8);
INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (114, 8);

INSERT INTO [BusinessCategory](BusinessID, CategoryID) VALUES (115, 11);

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


INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (300, 'College Inn Monmouth', 'Welcome to College Inn, a great place to stay that''s within walking distance of Western Oregon University in Monmouth, Oregon. Use our convenient, quiet and affordable hotel as your gateway to Salem, just 15 miles away. There''s also plenty to see and do here in town, including many local businesses, restaurants and shopping destinations. Plus, some of the state''s best vineyards and wineries are close at hand as well. You might also enjoy the Jensen Arctic Museum. We''re pleased to bring you the best hotel experience in the area because we combine the consistency, cleanliness and service you expect from a well-regarded chain hotel with the down-home friendliness and affordability that only an independent hotel can provide.', '(503) 838-4438', 'www.hotelcollegeinn.com', 300);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (301, 'The Independence Hotel', 'As Oregon''s only boutique hotel on the Willamette River, we welcome you to come and experience what made Independence so special to Oregon''s early pioneers. Located in the heart of the Willamette Valley, The Independence Hotel is situated in the heart of Oregon Wine Country. Whether you are visiting us for the wine, a river adventure, a bike ride along the Willamette Valley Scenic Bikeway or just getting away for the weekend, we are waiting to help you create amazing memories and provide a fantastic experience. Breathtaking views of the Willamette River and Riverview Park serve as the perfect backdrop for the nature-inspired decor of our uniquely styled rooms. Each room features a microwave and fridge, in-room bike storage, Keurig coffee makers, 49 inch 4k HDTV''s, luxury robes, locally made bath products by Sojourn Beauty, and local artwork.', '(503) 837-0200', 'www.theindependencehotel.com', 301);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (302, 'MaMere''s Guest House', 'Located in the heart of the Willamette Valley near the intersecting Highways of 99W and 22, MaMere''s is surrounded by some of the best wineries in the state (and, yes, we do have our favorites to recommend). An hour away from both the Pacific Ocean and the Cascade Mountains, MaMere''s is in downtown Monmouth, Oregon, the proud home of Western Oregon University. Located close to the scenic Willamette Valley Bike Route and TransAmerica Bike route, we are happy to lock your bike up if you are a two wheeled nomad. We are also only 10 minutes from sister city Independence, Oregon. From our dining room, you can view the activity of Main Street Park as you enjoy a delicious breakfast. You''ll hear the bands playing as you lounge in the gazebo during our Music in the Park series all summer long. Hit the bike trail or mosey over to neighboring eateries and shops. Or, you can always opt to do not much of anything here at MaMere''s.', '(503) 917-8745', 'www.mameresguesthouse.com', 302);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (303, 'Airlie Farm Bed & Breakfast', 'Airlie Farm Bed and Breakfast is a great getaway located on 226 spectacular, scenic acres in Oregon''s Willamette Valley beautiful horse and farm country. Rolling hills and lovely peaceful views surround this old fashioned Inn. Owners Nancy and Joe Petterson have made this inn a place to remember. The bed and breakfast inn is part of their working Quarter Horse farm nestled in the heart of Willamette Valley Wine Country, perfect for an overnight or several day vacation. There are lots of things to do in the area as it is located between Corvallis, Monmouth, Independence and Albany.', '(503) 838-1500', 'www.airliefarminn.com', 303);
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (304, 'Bicycle Boater Campground', 'Independence''s Riverview Park is home to a biker/boater campground for travelers on the Willamette River Water Trail and the Willamette Valley Scenic Bikeway.  Nestled along the beautiful Willamette River and is 1 block away from a bustling downtown district with local food, drink, and entertainment, this basic camping area has five sites, each with a picnic table and bike rack.  A (cold) shower is located at the west end of the area in a white fenced enclosure. Solar showers have been installed for a warm shower on sunny days.  A water tap and bike repair station are located at the entrance to the camping area. A camp host is present during the summer to assist campers and provide information about the area.  WiFi is also available in the campground with a code provided by the Camp Host.  A camp site costs $10 per night and is first come first served.', '(503) 848-1212', 'www.ci.independence.or.us/recreation/bicycle-boater-campground', 304);


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
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (202, 'Willamette River Trail', 'In 2012, the City opened the Willamette River Trail, a 5k soft surface trail loop that runs from the Riverview Park Amphitheater to the North Riverfront Ballfield Complex and back.  The trail passes in and out of the Willamette River''s riparian zone offering excellent birdwatching and nature viewing opportunities, and also passes the Independence Dog Park.  Primary access for the trail is from the north side of Riverview Park where a pedestrian bridge crosses Ash Creek.', '503-838-1212', 'https://www.ci.independence.or.us/recreation/running-trails-and-walking-paths', 304);
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
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (208, 'Riverview Park', 'Completed in 2005, the Riverview Park Amphitheater is the centerpiece of Riverview Park. In 2008, a sparkling fountain was added to the Plaza Level, welcoming visitors to Independence.  The amphitheater hosts numerous events including the 8 week River''s Edge summer movie and concert series. Riverview Park is also the starting point for the Willamette River Trail, a 5k soft-surface path that loops north along the Willamette River providing excellent river views and birdwatching. In 2014 a disc golf course was installed in Riverview Park. In 2015, the Independence Biker/Boater Campground opened.', '503-838-1212', 'https://www.ci.independence.or.us/recreation/riverview-park', 304);

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
INSERT INTO [Business](ID, Name, Description, Phone, Website, AddressID) VALUES (216, 'Western Oregon University Disc Golf Course', 'The 9-Hole (par 27) Disc Golf Course is open to Western Oregon University students, faculty and staff and the surrounding community. The course is located north of the Campus Recreation Turf Field. A course map and rules are located next to Hole #1. There is no charge to use the course. Players may use their own discs or check out a set at the Peter Courtney Health and Wellness Center?s front desk. The course is open from dusk to dawn and is closed during Cross Country home meets.', '503-838-9530', 'https://wou.edu/campusrec/facilities/disc-golf/', 214);

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


-- Administrator Components Seed
INSERT INTO [Page](Name, NormalizedName) VALUES ('Index', 'Index');
INSERT INTO [Page](Name, NormalizedName) VALUES ('Willamette River Trail', 'WillametteRiverTrail');
INSERT INTO [Page](Name, NormalizedName) VALUES ('Great Oaks Food Trail', 'GreatOaksFoodTrail');

SET IDENTITY_INSERT Component ON;
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (1, 1, 'Main Text Box', 'Text', 'This is the main text box that is presented when a visitor first views the website.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (2, 1, 'Homepage Carousel', 'Gallery', 'This is the homepage carousel that is presented when a visitor first views the website. Note: If there are no images uploaded, then a static image will be displayed.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (3, 2, 'About Content', 'Text', 'This is the content that is located in the ''About'' section on the Willamette River Trail.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (4, 2, 'Water Craft Rentals Content', 'Text', 'This is the content that is located in the ''Water Craft Rentals'' section on the Willamette River Trail.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (5, 2, 'Before You Go Content', 'Text', 'This is the content that is located in the ''Before You Go'' section on the Willamette River Trail.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (6, 2, 'Where to Start / Lodging Content', 'Text', 'This is the content that is located in the ''Where to Start / Lodging'' section on the Willamette River Trail.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (7, 3, 'Travel Tips Content', 'Text', 'This is the content that is located in the ''Travel Tips'' section on the Great Oaks Food Trail.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (8, 3, 'Dallas to Monmouth Content', 'Text', 'This is the content that is located in the ''Dallas to Monmouth'' section on the Great Oaks Food Trail.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (9, 3, 'West Salem to Amity Content', 'Text', 'This is the content that is located in the ''West Salem to Amity'' section on the Great Oaks Food Trail.');
INSERT INTO [Component](ID, PageID, Name, Type, Description) VALUES (10, 3, 'Dallas to Independence Content', 'Text', 'This is the content that is located in the ''Dallas to Independence'' section on the Great Oaks Food Trail.');

SET IDENTITY_INSERT Component OFF;

INSERT INTO [ComponentText](ComponentID, Text) VALUES (1, 'A hub of information to keep updated on local events and attractions, find places to dine and stay overnight, discover outdoor recreation, and create detailed itineraries.');
INSERT INTO [ComponentText](ComponentID, Text) VALUES (3, '<p>It&rsquo;s not an exaggeration to say that without the Willamette River, the valley that shares its name would look far different today. It was the river&rsquo;s fertile farmlands and floodplains, after all, that made it such an appealing home for generations of Native Americans and Oregon Trail emigrants. And easy river access has long made it possible to travel around Eugene, Albany, Independence, and Salem&mdash;all cities through which the Willamette River flows today.</p><p>The Willamette River isn&rsquo;t the shipping channel it once was&mdash;but crops grown in the surrounding valley continue to reach consumers around the world today. And, not for nothing, but the river is a vibrant source of recreation for countless locals and visitors all year long.</p><p>Fed by mountain tributaries south of Eugene, the Willamette River flows northward for nearly 200 miles before emptying into the Columbia River near Portland. Along the way, it passes through cities large and small, boasts dramatic wildlife viewing opportunities, offers all manner of outdoor recreation, and showcases the natural beauty of the iconic Willamette Valley.</p><p>And you can see it all along the Willamette Water Trail, which covers 187 miles of wonder along the mainstem Willamette River, as well as the Coast Fork Willamette, Middle Fork Willamette, and the McKenzie rivers.&nbsp;</p><p>So what is the Willamette Water Trail, anyway? Think of it as, well, a hiking trail&mdash;but on water. Instead of walking all those miles, you can paddle or float as much or as little of the Willamette River as you&rsquo;d like; in-town landings and roughly 50 riverside campsites make it easy to plan a leisurely afternoon on the water or a fascinating multi-day adventure&mdash;whatever sounds fun and doable.</p><p>Before you hit the water, here&rsquo;s a bit about what to expect, how to stay safe, and how to get started.</p>');
INSERT INTO [ComponentText](ComponentID, Text) VALUES (4, '<p>Please consult the official&nbsp;<a href="https://willamettewatertrail.org/">Willamette Water Trail website</a>, which lists gear essentials; showcases an interactive map full of campsites, restrooms, docks, and other resources; and offers tips for getting started (like understanding your options for a shuttle).</p><p>For anything more than an afternoon float, you may want to rent gear from a local outfitter or arrange for a guide. Here&rsquo;s a quick rundown of outfitters and guides in Polk County:</p><p><strong><a href="https://www.woodwardsurfco.com/">Woodward Surf Company</a></strong><br />Serving the heart of Salem, Woodward Surf Company rents kayaks and stand-up paddleboards&mdash;and offers limited shuttle service options for renters.</p><p><strong><a href="https://www.salemkayakrentals.com/">Salem Kayak Rentals LLC</a></strong><br />Also based in Salem, Salem Kayak Rentals LLC rents kayaks and stand up paddleboards. Tours and shuttle services are available.</p>');
INSERT INTO [ComponentText](ComponentID, Text) VALUES (5, '<p>Whether relaxing with an afternoon paddle or starting a multi-day trip, you&rsquo;ll want to know the basics before getting started. Here&rsquo;s a quick rundown of what to know:</p><p><strong>Safety first, wear a lifejacket:</strong>Personal floatation devices (PFDs or lifejackets) are not required for adults&mdash;but are nevertheless strongly encouraged whenever you&rsquo;re on the water. Children 12 and younger are required to wear a U.S. Coast Guard-approved life jacket whenever the boat is underway. (The&nbsp;&nbsp;<a href="https://www.oregon.gov/osmb/boater-info/Pages/Life-Jackets.aspx">Oregon State Marine Board</a>hosts a website on various lifejacket styles and how to choose the right PFD for your preferred activity.)</p><p><strong>Keep your distance:</strong>Try to avoid crowded boat ramps, and maintain at least six feet of physical distance (roughly the length of a kayak paddle) from others whenever possible&mdash;even on the water; if it is not possible to keep that distance, you are required to wear a face-covering in public places (indoors or out) throughout Oregon.</p><p><strong>Ensure you have the proper permit:</strong>All paddle craft 10 feet and longer are required to carry an&nbsp;<a href="https://www.oregon.gov/osmb/boater-info/Pages/AIS-FAQs.aspx">Oregon State Marine Board Waterway Access Permit</a>&nbsp;($7 for a seven-day pass, $17 for an annual pass, $30 for a two-year pass). These permits help fund the aquatic invasive species prevention program and grants to develop or improve paddling access for boating facility providers, and paddling without a permit may lead to a $115 fine.&nbsp;</p><p><strong>Respect Private Property:</strong>Private property borders much of the Willamette Water Trail; assume that property, unless otherwise noted on a sign or map, is private&mdash;and take care to respect all signs that warn against trespassing or hunting.</p><p><strong>Share the water:</strong>Listen for the occasional motorboat, and paddle closer together in groups when you hear a motorboat approaching. Motorboats need deeper water to safely operate and pass.</p><p><strong>Leave No Trace:</strong>Please abide by the&nbsp;<a href="https://lnt.org/why/7-principles/">Seven Principles of Leave No Trace</a>; those principles include remembering to plan ahead and prepare, dispose of waste properly, and respect wildlife. (And while you&rsquo;re outdoors, remember to&nbsp;<a href="https://traveloregon.com/things-to-do/outdoor-recreation/take-care-out-there/">Take Care Out There</a>.)</p>');
INSERT INTO [ComponentText](ComponentID, Text) VALUES (6, '<p>A popular Polk County route starts by putting in at Buena Vista Park (for a 10 river mile paddle), and ending right at Riverview Park in Independence(for a 10 river mile paddle) or Wallace Marine Park in West Salem. You will see an abundance of wildlife, passing through forested land and past islands. Stop by businesses along the way for a cold beer or an overnight stay. One of the most popular river access points is the Buena Vista Ferry. If you choose to ride the ferry, remember to bring cash. Price depends on vehicle size.</p>');
INSERT INTO [ComponentText](ComponentID, Text) VALUES (7, '<p>This year-round, self-guided food trail is designed to be explored at your own pace  you are welcome to start and finish wherever you like. <strong>We encourage you to inquire at individual businesses about seasonality and hours of operation before visiting.</strong></p><p>High season varies per business but is typically <strong>June-September</strong>. Seasonality of key products is listed below:</p><ul><li>Cherries: June-August</li><li>Hop harvest: July-October</li><li>Blueberries: June-August</li><li>Apples: August-October</li><li>Cider pressing: September-October</li><li>Wine grape harvest: Fall</li></ul><p>The working farms along this trail provide some of the most unique and engaging experiences. We ask that you respect the invitation to enter each property and be cautious around farm animals and equipment. Children must be supervised at all times and you should be prepared to follow all site-specific rules. For your safety and comfort, be prepared with appropriate footwear, sun protection and water.</p><p>Interested in a guided farm, orchard or beverage tour? The following operators offer tours to select trail stops and can build custom itineraries:</p><ul><li>Crush Wine Tours | <strong>crushonmain.com</strong></li><li>Prestige Wine Tours | <strong>prestigewinetours.com</strong></li><li>Farm 2 Fork Tours | <strong>farm2forktours.com</strong></li><li>Oregon Traveling Tours | <strong>oregontravelingtours.com</strong></li></ul><p>Your experience along the Great Oaks Food Trail should not end when you leave the area. We encourage you to bring a taste of your journey back home to share with friends and family as a reminder of the bounty available in the greater Polk County area.</p>');
INSERT INTO [ComponentText](ComponentID, Text) VALUES (8, '<h3>Rooted in Tradition</h3><p><em>Explore local landmarks celebrating history, wildlife and wine.</em></p><p>Begin your day in nature at <strong>Baskett Slough National Wildlife Refuge</strong>, where you can wander through the expansive wetlands and oak savanna while observing an array of wildlife all year round. From here, take your best pick of blueberries, cherries, peaches or apples (depending on the season) at <strong>Perryhill Farm</strong>.</p><p>Take a lunch break at <strong>Left Coast Estate</strong>, known for sustainable winemaking, where you can enjoy a tasting flight paired with charcuterie, panini or wood-fired pizza on weekends. Next head to the <strong>Polk County Museum</strong> to learn about the early pioneer heritage of the area. Continue your Polk County history lesson as you make your way to one of Oregons oldest and largest wineries, <strong>Eola Hills Wine Cellars</strong>.</p><p>Head to the quaint town of Monmouth, where you can choose one of three self-guided walking tours featuring the historic downtown, Western Oregon University Campus and Eastern Main Street Historic Neighborhood. Once youve walked up an appetite, wind down your day at <strong>Crush Wine Bar & Tasting Room</strong>, a locals favorite with an evolving menu, fun ambiance and large selection of Oregon craft beverages.</p><p>Relax with an overnight stay at the historic <strong>Mameres Guest House</strong>, originally built in 1891. Family owned and operated, the house is warm and welcoming with each room artistically decorated. In the morning, enjoy a delectable breakfast you will not forget.</p>');
INSERT INTO [ComponentText](ComponentID, Text) VALUES (9, '<h3>Scenic Sips & Local Bounty</h3><p><em>Tour farms and restaurants along a picturesque countryside.</em></p><p>Jumpstart your morning at <strong>Brew Coffee & Tap House</strong>, serving locally roasted coffee and bites during the day and craft cocktails by night. Take your coffee to go as you walk through the <strong>West Salem Farmers Market</strong>, open Thursdays from May to mid-September, where youll find fresh produce and handmade products. Dont forget to grab an artisan pie at <strong>Bountiful Pies</strong> just a few steps away.</p><p>Continue to the picturesque Eola-Amity Hills and <strong>Bjornson Vineyard</strong>, where you can bring your own picnic to enjoy alfresco near the propertys 20-foot waterfall. If youre in the mood for craft beer, stick to West Salems <strong>Xicha Brewing</strong> to indulge your senses in Latin American flavors and culture.</p><p>Make your way to Amity to <strong>Blue Raeven Farmstand</strong>, a must-stop for handmade seasonal pies and local goods. Next, take a scenic drive out to <strong>Brooks Winery</strong> to sample award-winning sustainable wines in a rustic tasting room. Then visit <strong>Keeler Estate Vineyard</strong> to savor the fruits of natural winemaking. Round out your afternoon with smiles at <strong>Wings & A Prayer Alpacas</strong>, where you can meet alpacas or shop for the softest socks and scarves youll ever own.</p><p>Finish your day at <strong>The Blue Goat</strong>, an Amity favorite, and order dishes cooked with time-honored techniques  hearth breads, oak-smoked meats and fire-roasted entrees. Walk across the street to your top-floor flat for an overnight stay at <strong>Amity Flats</strong>, a restored historic Masonic Lodge, and sleep easy.</p>');
INSERT INTO [ComponentText](ComponentID, Text) VALUES (10, '<h3>Paddle, Parks, & Pints</h3><p><em>Relish in river views and small towns with big flavors.</em></p><p>Awaken your senses at <strong>Karma Coffee Bar & Bakery</strong>, located in a cute house in downtown Dallas. From there head to <strong>Roger Jordan Community Park</strong>, where you can stroll with your coffee around the creekside walking path.</p><p>Make your way to Monmouth for fresh pizza and a pint at <strong>Yeasty Beasty</strong>, boasting 26 rotating taps. Nearby in Independence, enjoy a leisurely afternoon at <strong>Riverview Park</strong> either birdwatching along the Willamette River Trail or taking a mellow kayak adventure with rentals and shuttle service through <strong>Woodward Surf Co.</strong> Toast to your adventure at <strong>Rogue Farms</strong> with a pint and tour of the hop farm.</p><p>Next treat yourself to something sweet on Main Street. Family-owned and -operated <strong>Melting Pot Candy</strong> has crafted toffees, truffles and caramels for generations. <strong>Independent Ice Cream Shop</strong> serves childhood memories in the form of cones, banana splits and homemade ice cream sandwiches.</p><p>Unwind and check in at the boutique <strong>Independence Hotel</strong>, where you can relax amongst nature-inspired décor and views of the Willamette River. Grab a small bite or glass of wine at the hotels restaurant, <strong>Territory</strong>.</p><p>When dinner calls, consider Creole- and Southern-inspired cuisine at <strong>The Valkyrie Wine Tavern</strong> or tasty eats paired with craft brews at Gilgamesh Brewerys newest location, <strong>The River</strong>. Save room for dessert and bubbly at <strong>Jubilee Champagne and Dessert Bar</strong>.</p><p>Before you leave town, stop by <strong>Ovenbird Bakery</strong> for homebrewed coffee and pastries to go.</p>');