-- Part 3 Hotel schema 

USE Hotel;

INSERT INTO Guest (GuestId, FirstName,LastName,Street,City,State,ZIP,Phone) 
VALUES
	('1','Safaa', 'Abukar', 'crazy st', 'London', 'LN', '5','07902429064'),
    ('2', 'Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '(291)-553-0508'),
    ('3', 'Bettyann', 'Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK', '51501','(478) 277-9632'),
    ('4','Duane', 'Cullison',	'9662 Foxrun Lane',	'Harlingen'	,'TX',	'78552','(308) 494-0198'),
    ('5','Karie', 'Yang','9378 W. Augusta Ave.',	'West Deptford',	'NJ',	'08096','(214) 730-0298'),
    ('6','Aurore', 'Lipton',	'762 Wild Rose Street',	'Saginaw',	'MI',	'48601', '(377) 507-0974'),
    ('7','Zachery', 'Luechtefeld',	'7 Poplar Dr.',	'Arvada',	'CO',	'80003', '(814) 485-2615'),
    ('8','Jeremiah', 'Pendergrass',	'70 Oakwood St.', 'Zion',	'IL',	'60099', '(279) 491-0960'),
    ('9','Walter' ,'Holaway','7556 Arrowhead St.',	'Cumberland',	'RI',	'02864', '(446) 396-6785'),
    ('10','Wilfred', 'Vise', '77 West Surrey Street',	'Oswego',	'NY',	'13126', '(834) 727-1001'),
    ('11','Maritza', 'Tilton',	'939 Linda Rd.', 'Burke',	'VA',	'22015', '(446) 351-6860'),
    ('12','Joleen', 'Tison', '87 Queen St.',	'Drexel Hill',	'PA', '19026', '(231) 893-2755');


INSERT INTO Reservation (ReservationId, GuestId, NumberAdults,NumberChildren,StartDate,EndDate, RoomNumber)
VALUES
    
    ('1', '2', '1', NULL, '2023/2/2', '2023/2/4', '308'),
    ('2', '3', '2', '1', '2023/2/5', '2023/2/10', '203'), 
    ('3', '4', '2', NULL, '2023/2/22', '2023/2/24', '305'),
    ('4', '5', '2', '2', '2023/3/6', '2023/3/7', '201'),
    ('5', '1', '1', '1', '2022/2/20', '2022/5/1', '307'),
    ('6', '6', '3', NULL, '2023/3/18', '2023/3/23', '302'),
    ('7', '7', '2 ', '2 ', '2023/3/29', '2023/3/31', '202'),
    ('8', '8', '2', NULL, '2023/3/31', '2023/4/5', '304'),
    ('9','9','1 ', NULL, '2023/4/9', '2023/4/13', '301'),
    ('10','10','1', '1 ', '2023/4/23', '2023/4/24', '207'),
    ('11', '11','2 ', '4 ', '2023/5/30', '2023/6/2', '401'),
    ('12', '12','2 ', NULL, '2023/6/10', '2023/6/14', '206'),
    ('13', '12','1 ', NULL, '2023/6/10', '2023/6/14', '208'),
    ('14', '6', '3', NULL, '2023/6/17', '2023/6/18', '304'),
    ('15', '1', '2 ', NULL, '2023/6/28', '2023/7/2', '205'),
    ('16', '9', '3 ', '1 ', '2023/7/13', '2023/7/14', '204'),
    ('17', '10','4 ', '2 ', '2023/7/18', '2023/7/21', '401'),
    ('18', '3', '2 ', '1 ', '2023/7/28', '2023/7/29', '303'),
    ('19', '3','1 ',NULL, '2023/8/30', '2023/9/1', '305'),
    ('20', '2','2 ', NULL, '2023/9/16', '2023/9/17', '208'),
    ('21', '5','2 ', '2 ', '2023/9/13', '2023/9/15', '203'),
    ('22', '4','2 ', '2 ', '2023/11/22', '2023/11/25','401'),
    ('23', '2', '2', NULL, '2023/11/22', '2023/11/25', '206'),
    ('24', '2', '2', '2', '2023/11/22', '2023/11/25','301'),
    ('25', '11', '2', NULL, '2023/12/24', '2023/12/28', '302');


INSERT INTO Room (RoomNumber,RoomType,ADAaccessible, MaxOccupancy, StandardOccupancy, BasePrice, PricePerAdult, Microwave, Refrigerator, Oven, Jacuzzi)
VALUES
    ('201', 'Double', 'No', '4', '2', '$174.99', '$10', 'Yes', 'No','No', 'Yes'),
    ('202', 'Double', 'Yes', '4', '2', '$174.99', '$10', 'No', 'Yes', 'No', 'No'),
    ('203', 'Double', 'No', '4', '2', '$174.99', '$10', 'Yes', 'No', 'No', 'Yes'),
    ('204', 'Double', 'Yes', '4', '2', '$174.99', '$10', 'No', 'Yes', 'No', 'No'),
    ('205', 'Single', 'No', '2', '2', '$149.99', NULL, 'Yes', 'Yes', 'No', 'Yes'),
    ('206', 'Single', 'Yes', '2', '2', '$149.99', NULL, 'Yes','Yes', 'No', 'No'),
    ('207', 'Single', 'No', '2', '2', '$149.99', NULL, 'Yes','Yes', 'No', 'Yes'),
    ('208', 'Single', 'Yes', '2', '2', '$149.99', NULL, 'Yes','Yes', 'No', 'No'),
    ('301', 'Double', 'No', '4', '2', '$174.99','$10', 'Yes', 'No', 'No', 'Yes'),
    ('302', 'Double', 'Yes', '4', '2', '$174.99','$10', 'No', 'Yes', 'No', 'No'),
    ('303', 'Double', 'No', '4', '2', '$174.99','$10', 'Yes', 'No', 'No ', 'Yes'),
    ('304', 'Double', 'Yes', '4', '2', '$174.99','$10', 'No', 'Yes', 'No', 'No'),
    ('305', 'Single', 'No', '2', '2', '$149.99', NULL, 'Yes','Yes', 'No', 'Yes'),
    ('306', 'Single', 'Yes', '2', '2', '$149.99', NULL, 'Yes','Yes', 'No', 'No'), 
    ('307', 'Single', 'No', '2', '2', '$149.99', NULL, 'Yes','Yes', 'No', 'Yes'), 
    ('308', 'Single', 'Yes', '2', '2', '$149.99', NULL, 'Yes','Yes', 'No', 'No'), 
    ('401', 'Suite', 'Yes', '8', '3', '$399.99', '$20', 'Yes','Yes', 'Yes', 'No'), 
    ('402', 'Suite', 'Yes', '8', '3', '$399.99', '$20', 'Yes','Yes', 'Yes', 'No');

DELETE FROM Guest
WHERE (FirstName= 'Jeremiah') 
      AND (LastName= 'Pendergrass');

DELETE FROM Reservation 
WHERE GuestId = '8';
