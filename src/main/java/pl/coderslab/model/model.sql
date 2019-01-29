create SCHEMA garage
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

use garage;

CREATE TABLE customers
(
  customer_id   INT auto_increment PRIMARY KEY,
  first_name    VARCHAR(255) NOT NULL,
  last_name     VARCHAR(255) NOT NULL,
  date_of_birth date         NULL
);

insert into customers (customer_id, first_name, last_name, date_of_birth) values (1, 'Toddie', 'Belle', '1978-08-14');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (2, 'Wolfie', 'Gehringer', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (3, 'Kirsti', 'Henstone', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (4, 'Friedrick', 'Hellwig', '1976-01-21');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (5, 'Hillary', 'Caldero', '1978-07-29');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (6, 'Odessa', 'Sollam', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (7, 'Nilson', 'Gilks', '1990-01-15');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (8, 'Teresa', 'Bahls', '1960-11-19');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (9, 'Ruthy', 'Gommery', '1983-09-11');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (10, 'Marrissa', 'Moorerud', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (11, 'Benjamin', 'Chapleo', '1986-12-03');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (12, 'Vladamir', 'Bonicelli', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (13, 'Doloritas', 'Colten', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (14, 'Matthaeus', 'Wollers', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (15, 'Davidde', 'Brabben', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (16, 'Adolphus', 'Hembery', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (17, 'Gard', 'Plumbley', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (18, 'Dorey', 'Snoxill', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (19, 'Josephine', 'Lody', '1979-01-16');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (20, 'Murry', 'Schwieso', '1986-02-01');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (21, 'Hunt', 'Archley', '2003-10-31');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (22, 'Caleb', 'Skinley', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (23, 'Dicky', 'Siddele', '1963-04-21');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (24, 'Jill', 'Kock', '1976-03-18');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (25, 'Nissa', 'McVicker', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (26, 'Nikolia', 'Brigdale', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (27, 'Karlyn', 'Chadwen', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (28, 'Arni', 'Karczinski', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (29, 'Jeremiah', 'Maeer', '1982-05-04');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (30, 'Abe', 'Murty', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (31, 'Davie', 'Guite', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (32, 'Dylan', 'Bruno', '1991-08-02');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (33, 'Parnell', 'Hyder', '1964-08-04');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (34, 'Renaldo', 'Hance', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (35, 'Lily', 'Rojahn', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (36, 'Gillie', 'Stollsteiner', '1959-03-08');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (37, 'Tricia', 'Viner', '2013-12-24');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (38, 'Charissa', 'Comfort', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (39, 'Joyce', 'Tilzey', '2009-11-03');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (40, 'Sybyl', 'Birtonshaw', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (41, 'Ronald', 'Flook', '1986-09-17');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (42, 'Amalea', 'Branson', '2008-06-22');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (43, 'Sonny', 'Laurenty', '2015-11-12');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (44, 'Mathe', 'Peperell', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (45, 'Ambrose', 'Randal', '1979-11-12');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (46, 'Verile', 'Pauly', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (47, 'Winfield', 'Spurrior', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (48, 'Marissa', 'Toal', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (49, 'Marjory', 'Delete', '2004-03-12');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (50, 'Ema', 'Tavener', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (51, 'Wheeler', 'Melmore', '1964-03-08');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (52, 'Melissa', 'Scawen', '2018-02-03');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (53, 'Henderson', 'Gronous', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (54, 'Tova', 'Thurlow', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (55, 'Jobye', 'Slane', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (56, 'Godfry', 'Shanklin', '1969-08-08');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (57, 'Anett', 'Innwood', '2005-10-24');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (58, 'Marilee', 'Ricards', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (59, 'Tally', 'Pennycock', '1965-05-26');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (60, 'Jarib', 'Murra', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (61, 'Ashly', 'Barnwille', '2000-10-09');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (62, 'Egbert', 'Benoy', '1991-01-03');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (63, 'Vaclav', 'Scriver', '1965-09-03');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (64, 'Brittney', 'Rutley', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (65, 'Peggi', 'Corish', '1980-08-28');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (66, 'Jannelle', 'Petrello', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (67, 'Nathanil', 'Kubelka', '1958-04-16');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (68, 'Andrea', 'Breckenridge', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (69, 'Clarabelle', 'Baser', '1961-09-03');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (70, 'Audra', 'Speeks', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (71, 'Krisha', 'Nassie', '1985-07-29');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (72, 'Brinna', 'Whaley', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (73, 'Janenna', 'Stringfellow', '1976-02-02');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (74, 'Hernando', 'Yair', '1969-05-25');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (75, 'Matteo', 'Kenen', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (76, 'Sadye', 'Cason', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (77, 'Franchot', 'Langdridge', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (78, 'Adelina', 'Sandeman', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (79, 'Auberta', 'Josuweit', '2013-11-15');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (80, 'Hall', 'Elfe', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (81, 'Shawna', 'Everex', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (82, 'Mitch', 'Corkill', '1980-08-13');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (83, 'Serene', 'Golbourn', '2009-12-27');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (84, 'Lynsey', 'Duffitt', '1987-08-06');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (85, 'Regine', 'Gathwaite', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (86, 'Gun', 'Dansie', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (87, 'Aubree', 'Lawdham', '1980-08-05');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (88, 'Kerr', 'Pickervance', '1957-06-30');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (89, 'Flore', 'Kiln', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (90, 'Lazare', 'Penzer', '1998-09-28');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (91, 'Kissie', 'Abrahmovici', '1963-07-25');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (92, 'Guenna', 'Rideout', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (93, 'Zachery', 'Dampier', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (94, 'Egan', 'Muddle', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (95, 'Barbabra', 'Crone', '1960-10-17');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (96, 'Ronna', 'Thomelin', '1986-09-17');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (97, 'Silvana', 'Tracy', '1971-11-07');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (98, 'Tabitha', 'Browning', '2006-06-14');
insert into customers (customer_id, first_name, last_name, date_of_birth) values (99, 'Veda', 'Merrall', null);
insert into customers (customer_id, first_name, last_name, date_of_birth) values (100, 'Tracey', 'Smitton', null);