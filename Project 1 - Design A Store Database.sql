/*
For this project I created a drum shop that has 60 items ranging from drum sets, snare drums, cymbals, drumsticks, and drum head.
The prices were matched with actual prices found online from memphisdrumshop.com, guitarcenter.com, musiciansfriend.com, and sweetwater.com.
You can view this "Spin-off" at the following link
https://www.khanacademy.org/computer-programming/spin-off-of-project-design-a-store-database-ar-drum-shop/5680654364491776
*/

/*
I used the following commands and queries:
- SELECT
- WHERE
- ORDER BY
- LIMIT
- Operators =, >, < >=
- AND
*/


/*
-Create drum store
-Sell 5 brands of drums and drum sets - Pearl, Yamaha, Gretsch, DW Drums, Tama
-Sell 5 brands of snare drums - same as above
-Sell 2 brands of cymbals - Zildjian & Sabian
-Sell 2 brands of sticks - Vic Firth & Pro-Mark
-Sell 3 brands of drumheads - Remo & Evans
*/

CREATE TABLE ar_drum_shop (id INTEGER PRIMARY KEY, brand TEXT, prod_name TEXT, department TEXT, quantity INTEGER, price INTEGER);


INSERT INTO ar_drum_shop VALUES (01, "Pearl", "Export New Fusion 5-Piece", "Drum Set", 2, 929.00);
INSERT INTO ar_drum_shop VALUES (02, "Pearl", "Reference Pure 4-Piece", "Drum Set", 1, 5100.00);
INSERT INTO ar_drum_shop VALUES (03, "Pearl", "Roadshow 4-Piece Jazz", "Drum Set", 2, 559.99);
INSERT INTO ar_drum_shop VALUES (04, "Yamaha", "Tour Custom Maple 4-Piece", "Drum Set", 2, 1359.99);
INSERT INTO ar_drum_shop VALUES (05, "Yamaha", "Recording Custom 4-Piece", "Drum Set", 1, 4219.99);
INSERT INTO ar_drum_shop VALUES (06, "Yamaha", "Stage Custom Birch 3-Piece Bop", "Drum Set", 2, 579.99);
INSERT INTO ar_drum_shop VALUES (07, "Gretsch", "Energy 5-Piece", "Drum Set", 2, 549.00);
INSERT INTO ar_drum_shop VALUES (08, "Gretsch", "Brooklyn 4-Piece", "Drum Set", 1, 3139.00);
INSERT INTO ar_drum_shop VALUES (09, "Gretsch", "Catalina Club Jazz 4-Piece", "Drum Set", 1, 899.00);
INSERT INTO ar_drum_shop VALUES (10, "DW", "Design Series Frequent Flyer Maple 4-Piece", "Drum Set", 2, 1439.99);
INSERT INTO ar_drum_shop VALUES (11, "DW", "Collector Series Pure Oak 5-Piece", "Drum Set", 1, 5398.10);
INSERT INTO ar_drum_shop VALUES (12, "DW", "Performance Series 3-Piece Jazz", "Drum Set", 1, 2185.00);
INSERT INTO ar_drum_shop VALUES (13, "Tama", "Imperialstar 5-Piece", "Drum Set", 2, 899.99);
INSERT INTO ar_drum_shop VALUES (14, "Tama", "Starclassic Maple 4-Piece", "Drum Set", 0, 3299.99);
INSERT INTO ar_drum_shop VALUES (15, "Tama", "Club-JAM Flyer 4-Piece", "Drum Set", 1, 479.99);
INSERT INTO ar_drum_shop VALUES (16, "Pearl", "13x6.5 Joey Jordison Signature", "Snare Drum", 1, 479.99);
INSERT INTO ar_drum_shop VALUES (17, "Yamaha", "14x5.5 Limited Edition Steve Gadd Signature", "Snare Drum", 1, 999.00);
INSERT INTO ar_drum_shop VALUES (18, "Gretsch", "14x5 USA Custom Solid Steel", "Snare Drum", 3, 829.00);
INSERT INTO ar_drum_shop VALUES (19, "DW", "14x6.5 Collector's Series Bell Brass", "Snare Drum", 2, 749.00);
INSERT INTO ar_drum_shop VALUES (20, "Tama", "14x6 Starphonic Bubinga", "Snare Drum", 3, 649.99);
INSERT INTO ar_drum_shop VALUES (21, "Zildjian", "22 inch K Custom High Definition Ride", "Cymbal", 1, 529.95);
INSERT INTO ar_drum_shop VALUES (22, "Zildjian", "14 inch A New Beat Hi-Hat", "Cymbal", 1, 429.95);
INSERT INTO ar_drum_shop VALUES (23, "Zildjian", "18 inch K Dark Medium Thin Crash", "Cymbal", 2, 379.95);
INSERT INTO ar_drum_shop VALUES (24, "Zildjian", "A Custom Cymbal Box Set + Free 18 inch Crash Cymbal", "Cymbal", 0, 1069.95);
INSERT INTO ar_drum_shop VALUES (25, "Zildjian", "Planet Z Complete Cymbal Pack", "Cymbal", 3, 279.96);
INSERT INTO ar_drum_shop VALUES (26, "Sabian", "21 inch HH Raw Bell Dry Ride", "Cymbal", 1, 589.99);
INSERT INTO ar_drum_shop VALUES (27, "Sabian", "14 inch AAX Thin Hi-Hats", "Cymbal", 1, 469.99);
INSERT INTO ar_drum_shop VALUES (28, "Sabian", "18 inch HHX X-Treme Crash", "Cymbal", 2, 424.99);
INSERT INTO ar_drum_shop VALUES (29, "Sabian", "HHX Super Cymbal Set", "Cymbal", 1, 1649.99);
INSERT INTO ar_drum_shop VALUES (30, "Sabian", "SBR Performance Set", "Cymbal", 2, 223.00);
INSERT INTO ar_drum_shop VALUES (31, "Vic Firth", "American Classic Hickory Wood 5B", "Drum Sticks", 21, 14.99);
INSERT INTO ar_drum_shop VALUES (32, "Vic Firth", "SD4 American Custom Combo", "Drum Sticks", 17, 14.99);
INSERT INTO ar_drum_shop VALUES (33, "Vic Firth", "Buddy Rich Signature", "Drum Sticks", 0, 14.99);
INSERT INTO ar_drum_shop VALUES (34, "Vic Firth", "Steve Gadd Signtature", "Drum Sticks", 9, 14.99);
INSERT INTO ar_drum_shop VALUES (35, "Vic Firth", "Dave Weckl Signature", "Drum Sticks", 13, 14.99);
INSERT INTO ar_drum_shop VALUES (36, "Promark", "American Hickory Wood 5B", "Drum Sticks", 12, 14.99);
INSERT INTO ar_drum_shop VALUES (37, "Promark", "American Hickory Nylon 5A", "Drum Sticks", 8, 15.99);
INSERT INTO ar_drum_shop VALUES (38, "Promark", "Rebound Balance ActiveGrip Acorn Tip 5A Wood", "Drum Sticks", 6, 16.99);
INSERT INTO ar_drum_shop VALUES (39, "Promark", "Tommy Aldridge Signature", "Drum Sticks", 5, 20.99);
INSERT INTO ar_drum_shop VALUES (40, "Promark", "Neal Peart Signature", "Drum Sticks", 11, 16.99);
INSERT INTO ar_drum_shop VALUES (41, "Remo", "14 inch Ambassador X Coated", "Drumhead", 0, 22.99);
INSERT INTO ar_drum_shop VALUES (42, "Remo", "10 inch Weather King Ambassador  Coated", "Drumhead", 4, 18.95);
INSERT INTO ar_drum_shop VALUES (43, "Remo", "12 inch Weather King Ambassador  Coated", "Drumhead", 4, 19.95);
INSERT INTO ar_drum_shop VALUES (44, "Remo", "14 inch Weather King Ambassador  Coated", "Drumhead", 5, 21.95);
INSERT INTO ar_drum_shop VALUES (45, "Remo", "16 inch Weather King Ambassador  Coated", "Drumhead", 4, 24.45);
INSERT INTO ar_drum_shop VALUES (46, "Remo", "10 inch Clear Emperor", "Drumhead", 5, 18.95);
INSERT INTO ar_drum_shop VALUES (47, "Remo", "12 inch Clear Emperor", "Drumhead", 5, 19.95);
INSERT INTO ar_drum_shop VALUES (48, "Remo", "14 inch Clear Emperor", "Drumhead", 5, 21.95);
INSERT INTO ar_drum_shop VALUES (49, "Remo", "16 inch Clear Emperor", "Drumhead", 6, 24.45);
INSERT INTO ar_drum_shop VALUES (50, "Remo", "22 inch Powerstroke 3 Clear With Impact Patch", "Drumhead", 2, 52.95);
INSERT INTO ar_drum_shop VALUES (51, "Remo", "22 inch Ebony Powerstroke 3 Resonant", "Drumhead", 2, 62.95);
INSERT INTO ar_drum_shop VALUES (52, "Remo", "4-Piece Clear Pinstripe Fusion Pro Pack with Free 14 inch Coated Ambassador Snare Drum Head", "Drumhead", 1, 118.99);
INSERT INTO ar_drum_shop VALUES (53, "Evans", "14 inch Genera HD Dry Coated", "Drumhead", 5, 22.99);
INSERT INTO ar_drum_shop VALUES (54, "Evans", "10 inch EC2 SST Clear", "Drumhead", 2, 21.99);
INSERT INTO ar_drum_shop VALUES (55, "Evans", "12 inch EC2 SST Clear", "Drumhead", 2, 22.99);
INSERT INTO ar_drum_shop VALUES (56, "Evans", "14 inch EC2 SST Clear", "Drumhead", 2, 24.99);
INSERT INTO ar_drum_shop VALUES (57, "Evans", "16 inch EC2 SST Clear", "Drumhead", 3, 26.99);
INSERT INTO ar_drum_shop VALUES (58, "Evans", "22 inch EMAD 2 Clear Batter", "Drumhead", 2, 54.99);
INSERT INTO ar_drum_shop VALUES (59, "Evans", "22 inch EMAD Resonant", "Drumhead", 2, 54.99);
INSERT INTO ar_drum_shop VALUES (60, "Evans", "G2 Coated Drum Head Pack - Rock", "Drumhead", 0, 50.99);


/*
Preview all the data in this table.
*/
SELECT * FROM ar_drum_shop;


/*
Do we have any drum sets that are under $500?
*/
SELECT id, brand, prod_name, department, price FROM ar_drum_shop WHERE department = "Drum Set" AND price < "500.00";


/*
Do we have any cymbals that are less than $500?
Since this shows only Cymbals over $500, we could market a deal where customers who spend over $500 get a free T-shirt and pair of drum sticks of their choice.
*/
SELECT id, brand, prod_name, department, price FROM ar_drum_shop WHERE department = "Cymbal" AND price > "500.00";


/*
Do we have any items that we are currently out of stock? Show id, brand, name, department, quantity, and price. Sort by price.
*/
SELECT id, brand, prod_name, department, quantity, price FROM ar_drum_shop WHERE quantity = 0 ORDER BY price;


/*
What itmes do we have at least 10 of in our inventory?
We could use this information to run a short BOGO ½ off sale on drum sticks or mark all sticks down $2-5 for Labor Day/4th of July/Memorial Day/etc.
*/
SELECT id, brand, prod_name, department, quantity, price FROM ar_drum_shop WHERE quantity >= 10 ORDER BY price DESC;


/*
What is our most expensive item we sell?
This could be great to know to see what our highest priced item is in store and if we could have a raffle or competition to give away/get more people into the store. Could have a raffle where customers must buy at least $100 worth to qualify for a raffle from Black Friday until December 21st. Winner will be chosen on December 22nd as a Christmas Give-Away.
*/
SELECT id, brand, prod_name, department, quantity, price FROM ar_drum_shop WHERE price >= 5000.00 ORDER BY price DESC LIMIT 1;


/*
We just found out that a Remo sponsored artist will be performing nearby next week and will need a replacement snare head for his gig. They use the Remo 14 inch Ambassador X Coated. We need to check how many we have on hand for this artist and our other customers. 
How many 14" Ambassador X Coated heads do we currently have in stock?
We need to order at least 5 of these drumheads ASAP to provide this artist with at least one and have them for our other customers. 
*/
SELECT id, brand, prod_name department, quantity FROM ar_drum_shop WHERE prod_name = "14 inch Ambassador X Coated";


/*
Drum sets are quite large and we are looking at rearranging our store in the near future. It’s important to know how many we have so we can work with our space much easier and more efficiently.
How many drum sets do we sell?
*/
SELECT SUM(quantity), department FROM ar_drum_shop WHERE department = "Drum Set";
