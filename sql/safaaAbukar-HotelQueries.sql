-- 1
SELECT
    g.GuestId, r.RoomNumber, r.StartDate, r.EndDate 
FROM Reservation r 
INNER JOIN Guest g 
    ON r.GuestID = g.GuestID 
WHERE EndDate > "2023-06-30" AND EndDate < "2023-08-01";

-- 2
SELECT
    g.GuestId, r.RoomNumber, r.StartDate, r.EndDate
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestID = g.GuestID
INNER JOIN Room room
	ON r.RoomNumber = room.RoomNumber
WHERE room.Amenity2 = "Jacuzzi" OR room.Amenity3 = "Jacuzzi";

--3, returning rooms I have reserved 
SELECT
	g.GuestId , r.RoomNumber, r.StartDate, r.EndDate, (r.NumberAdults + r.NumberChildren) AS TotalGuests
FROM Reservation r
INNER JOIN Guest g
	ON r.GuestID = g.GuestID
WHERE r.GuestID = 1;

--4 
SELECT
	r.ReservationID, room.RoomNumber, room.BasePrice, r.TotalCost
FROM Room room
LEFT JOIN Reservation r
	ON R.RoomNumber = room.RoomNumber;

--5
SELECT
	RoomNumber, StartDate, EndDate, (NumberAdults + NumberChildren) AS TotalGuests 
FROM Reservation
WHERE ((NumberAdults + NumberChildren) >= 3 and (NumberAdults + NumberChildren) >= 1)
AND (Month(StartDate) = 4 OR MONTH(EndDate) = 4);

--6
SELECT 
	concat(g.FirstName,' ',g.LastName) GuestName,
    IFNUll(count(rg.GuestID),'[None]') ReservationCount
FROM Guest g
LEFT OUTER JOIN Reservation rg ON g.GuestID = rg.GuestID
GROUP BY GuestName
ORDER BY ReservationCount DESC, g.LastName;

--7 
SELECT 
    g.FirstName, g.LastName, Phone 
FROM Guest 
WHERE Phone= '07902429064'; 