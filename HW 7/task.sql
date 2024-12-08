--1
CREATE VIEW samsBills AS
SELECT waiter.first_name, waiter.surname, bill.bill_date, bill.cust_name, bill.bill_total
FROM waiter
JOIN bill ON waiter.waiter_id = bill.waiter_id
WHERE waiter.first_name = 'Sam' AND waiter.surname = 'Pitt';

--2
SELECT *
FROM samsBills
WHERE bill_total > 400;

--3
CREATE VIEW roomTotals AS
SELECT room.room_name, SUM(bill.bill_total) AS total_sum
FROM room
JOIN bill ON room.room_id = bill.room_id
GROUP BY room.room_name;

--4
CREATE VIEW teamTotals AS
SELECT 
    CONCAT(waiter.first_name, ' ', waiter.surname) AS headwaiter_name,
    SUM(bill.bill_total) AS total_sum
FROM waiter
JOIN bill ON waiter.waiter_id = bill.waiter_id
GROUP BY headwaiter_name;
